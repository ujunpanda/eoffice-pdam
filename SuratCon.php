<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\User;
use App\Models\Surat;
use Illuminate\Http\Request;
use Yajra\DataTables\Html\Column;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\HtmlString;
use Carbon\Carbon;

class SuratCon extends Controller
{
    public function index()
    {
       
         $coba=User::all();
        return view('surat.index',compact('coba'));
    }
     public function tampil(Request $request)
    {
         if ($request->ajax()) {
    $data = DB::table('surat_masuk as dn')
        ->leftJoin('users as dna', 'dna.id', '=', 'dn.user_id')
        ->select([
            'dn.id',
            'dn.nomor_surat',
            'dn.tanggal_surat',
            'dn.perihal',
            'dn.letter_type',
            'dn.isi_surat',
            'dn.berkas_surat as bs',
            'dn.sifat_surat',
            'dn.klasifikasi_surat',
            'dn.derajat_keamanan',
            'dn.tempat_pembuatan',
            'dn.jabatan_pembuat',
            'dn.catatan_tambahan',
            'dn.user_id',
            'dna.nama_lengkap as nama_lengkap'
        ]);
            return Datatables::of($data)
                    ->addIndexColumn()
                    ->addColumn('aksi',function($data){
                        return view('surat._tombol')->with('data',$data);
                    })
                    ->addColumn('berkas_surat',function($data){
                        // return '<img src="'.asset('lemari/'.$data->berkas_surat).'" />';
                        $urlFile = asset('lemari/' . $data->bs);
                        $fileExtension = pathinfo($data->bs, PATHINFO_EXTENSION);
                            if (strtolower($fileExtension) === 'pdf') {
                                // Menampilkan PDF di modal dengan iFrame
                                return '<a href="#" onclick="showPdf(\'' . $urlFile . '\')"><i class="fa fa-eye"></i> Lihat PDF</a>';
                            } elseif (in_array(strtolower($fileExtension), ['docx', 'doc'])) {
                                // Menggunakan Office Online Viewer
                                $viewerLink = 'https://view.officeapps.live.com/op/view.aspx?src=' . urlencode($urlFile);
                                return '<a href="' . $viewerLink . '" target="_blank"><i class="fa fa-eye"></i> Lihat Word</a>';
                            } else {
                                return '<a href="' . $urlFile . '" download><i class="fa fa-download"></i> Unduh</a>';
                            } 
                    })
                    ->rawColumns(['berkas_surat'])
                    ->make(true);
        }
        return view('surat._surat_masuk');
    }
         //---------------------------------editData---------------------
     public function edit($id)
     {
         $data = Surat::where('id',$id)->first();
         return response()->json(['result'=>$data]);
     }
     public function update(Request $request, $id)
     {

     }

    public function store(Request $request)
    {
        $request->validate([
            'jenis_surat' => 'required|in:Surat Edaran,Surat Undangan,Surat Pengumuman,Surat Tugas,Surat Keputusan,Surat Pemberitahuan',
            'tanggal_surat' => 'required|date',
            'perihal' => 'required',
            'isi_surat' => 'required',
        ]);

        // Ambil tanggal surat
        $tanggalSurat = Carbon::parse($request->tanggal_surat);
        $bulan = $tanggalSurat->format('m');
        $tahun = $tanggalSurat->format('Y');

        // Tentukan prefix
        $prefix = match($request->jenis_surat) {
            'Surat Undangan' => 'SU',
            'Surat Edaran' => 'SE',
            default => 'SM'
        };

        // Hitung nomor urut
        $lastNumber = Surat::where('jenis_surat', $request->jenis_surat)
            ->whereRaw('MONTH(tanggal_surat) = ?', [$bulan])
            ->whereRaw('YEAR(tanggal_surat) = ?', [$tahun])
            ->count();

        $nomorUrut = str_pad($lastNumber + 1, 3, '0', STR_PAD_LEFT);
        $nomorSurat = "{$prefix}/{$nomorUrut}/{$bulan}/{$tahun}";

        // Simpan data
        $data = $request->except('nomor_surat'); // abaikan input manual
        $data['nomor_surat'] = $nomorSurat;

        $surat = Surat::create($data);

        // Simpan berkas
        if ($request->file('berkas_surat')) {
            $file = $request->file('berkas_surat');
            $filename = $file->getClientOriginalName();
            $file->move('lemari/', $filename);
            $surat->berkas_surat = $filename;
            $surat->save();
        }

        return redirect()->back()->with('success', 'Surat berhasil ditambahkan!');
    }
     public function getTemplate(Request $request)
    {
         $jenisSurat = $request->input('jenis');
        $isiSurat = '';

        switch ($jenisSurat) {
            case 'undangan_rapat':
                $isiSurat = "Yth. Bapak/Ibu/Sdr/i,\n\nDengan hormat,\n\nSehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:\n\nHari/Tanggal: [Hari/Tanggal]\nWaktu: [Waktu]\nTempat: [Tempat]\n\nAtas perhatian dan kehadirannya, kami ucapkan terima kasih.\n\nHormat kami,\n[Nama Penanggung Jawab]";
                break;
            case 'permohonan_izin':
                $isiSurat = "Hal: Permohonan Izin\n\nKepada Yth. [Nama Pihak Tertuju],\nDi tempat\n\nDengan hormat,\n\nSaya yang bertanda tangan di bawah ini:\nNama: [Nama Anda]\nJabatan: [Jabatan Anda]\n\nDengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].\n\nDemikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.\n\nHormat saya,\n\n[Nama Anda]";
                break;
            case 'pemberitahuan':
                $isiSurat = "Nomor: [Nomor Surat]\nPerihal: Pemberitahuan\n\nKepada Yth. [Pihak Penerima],\n\nBersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].\n\nDemikian untuk diketahui dan dilaksanakan.\n\n[Kota], [Tanggal]\n[Jabatan],\n\n[Nama Pejabat]";
                break;
            default:
                $isiSurat = "Pilih jenis surat untuk memuat templat.";
                break;
        }
        return response()->json([
            'isi_surat' => $isiSurat
        ]);
    }
    public function previewAjax(Request $request)
    {
        // Tangkap data dari request AJAX
        $dataSurat = [
            'penerima' => $request->input('penerima'),
            'perihal' => $request->input('perihal'),
            'isi_surat' => $request->input('isi_surat'),
        ];
        // Mengembalikan tampilan pratinjau dalam bentuk HTML
        return view('surat._preview_template', compact('dataSurat'))->render();
    }
    
}
