<?php

namespace App\Http\Controllers;

use PDF;
use PhpOffice\PhpWord\PhpWord;
use PhpOffice\PhpWord\IOFactory;
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

     public function edit($id)
     {
         $data = Surat::where('id',$id)->first();
         return response()->json(['result'=>$data]);
     }
     public function update(Request $request, $id)
{
    // Validasi
    $request->validate([
        'jenis_surat' => 'required',
        'nomor_surat' => 'required',
        'tanggal_surat' => 'required|date',
        'perihal' => 'required',
        'isi_surat' => 'required',
        'sifat_surat' => 'required',
        'berkas_surat' => 'nullable|array|max:5',
        'berkas_surat.*' => 'file|mimes:pdf,doc,docx,xls,xlsx,jpeg,png,jpg|max:5120',
    ]);

    $surat = Surat::findOrFail($id);

    // Update data dasar
    $surat->update($request->except('berkas_surat', '_method', '_token'));

    // Handle lampiran baru
    if ($request->hasFile('berkas_surat')) {
        $filenames = [];
        foreach ($request->file('berkas_surat') as $file) {
            $filename = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path('lemari'), $filename);
            $filenames[] = $filename;
        }
        $surat->berkas_surat = json_encode($filenames);
        $surat->save();
    }

    return response()->json(['success' => true, 'message' => 'Surat berhasil diperbarui!']);
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

    //downloadsuratPDF
    public function downloadPdf($id)
    {
        $surat = Surat::findOrFail($id);
        $pdf = PDF::loadView('surat._pdf_template', compact('surat'));
        return $pdf->download("Surat_{$surat->nomor_surat}.pdf");
    }

    //downloadsuratword
    public function downloadWord($id)
    {
        $surat = Surat::findOrFail($id);

        $phpWord = new PhpWord();
        $section = $phpWord->addSection();

        // Header
        $section->addText("Nomor: {$surat->nomor_surat}", ['bold' => true, 'size' => 12]);
        $section->addText("Perihal: {$surat->perihal}", ['bold' => true, 'size' => 12]);
        $section->addTextBreak();

        // Isi surat
        $isi = str_replace("\n", "\n\n", $surat->isi_surat); // format paragraf
        $section->addText($isi, ['name' => 'Times New Roman', 'size' => 12]);

        // Footer
        $section->addTextBreak(2);
        $section->addText("{$surat->tempat_pembuatan}, " . \Carbon\Carbon::parse($surat->tanggal_surat)->format('d F Y'));
        $section->addText($surat->jabatan_pembuat);

        $filename = "Surat_{$surat->nomor_surat}.docx";
        $tempFile = storage_path("app/temp/{$filename}");

        // Pastikan folder ada
        if (!is_dir(storage_path('app/temp'))) {
            mkdir(storage_path('app/temp'), 0775, true);
        }

        $objWriter = IOFactory::createWriter($phpWord, 'Word2007');
        $objWriter->save($tempFile);

        return response()->download($tempFile)->deleteFileAfterSend(true);
    }     
}
