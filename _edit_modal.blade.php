<!-- Modal Edit Surat -->
<div class="modal fade" id="editSuratModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Surat Masuk</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="editSuratForm" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <input type="hidden" id="edit_id" name="id">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label>Jenis Surat <span class="text-danger">*</span></label>
                            <select class="form-control" name="jenis_surat" required>
                                <option value="Surat Edaran">Surat Edaran</option>
                                <option value="Surat Undangan">Surat Undangan</option>
                                <option value="Surat Pengumuman">Surat Pengumuman</option>
                                <option value="Surat Tugas">Surat Tugas</option>
                                <option value="Surat Keputusan">Surat Keputusan</option>
                                <option value="Surat Pemberitahuan">Surat Pemberitahuan</option>
                            </select>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Nomor Surat <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="nomor_surat" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label>Tanggal Surat <span class="text-danger">*</span></label>
                            <input type="date" class="form-control" name="tanggal_surat" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Perihal <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="perihal" required>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label>Isi Surat <span class="text-danger">*</span></label>
                        <textarea class="form-control" name="isi_surat" rows="6" required></textarea>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label>Lampiran</label>
                            <input type="file" class="form-control" name="berkas_surat[]" multiple>
                            <small class="form-text text-muted">Biarkan kosong jika tidak ingin mengganti lampiran</small>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Sifat Surat <span class="text-danger">*</span></label>
                            <select class="form-control" name="sifat_surat" required>
                                <option value="biasa">Biasa</option>
                                <option value="penting">Penting</option>
                                <option value="rahasia">Rahasia</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label>Klasifikasi Surat</label>
                            <select class="form-control" name="klasifikasi_surat">
                                <option value="umum">Umum</option>
                                <option value="penting">Penting</option>
                                <option value="rahasia">Rahasia</option>
                                <option value="sangat_rahasia">Sangat Rahasia</option>
                            </select>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Derajat Keamanan</label>
                            <select class="form-control" name="derajat_keamanan">
                                <option value="terbuka">Terbuka</option>
                                <option value="terbatas">Terbatas</option>
                                <option value="rahasia">Rahasia</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label>Tempat Pembuatan</label>
                            <input type="text" class="form-control" name="tempat_pembuatan">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Jabatan Pembuat</label>
                            <input type="text" class="form-control" name="jabatan_pembuat">
                        </div>
                    </div>
                    <div class="mb-3">
                        <label>Catatan Tambahan</label>
                        <textarea class="form-control" name="catatan_tambahan" rows="2"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                </div>
            </form>
        </div>
    </div>
</div>