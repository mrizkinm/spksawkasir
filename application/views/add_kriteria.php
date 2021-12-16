<div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Kriteria</h1>
                    <div class="row">
                        <div class="col-md-12">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Tambah Kriteria</h6>
                        </div>
                        <div class="card-body">
                            <form id="form" action="home/add_kriteria_process" method="post">
                                <div class="form-group">
                                    <label for="nama">Nama Kriteria</label>
                                    <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Kriteria" required>
                                </div>
                                <div class="form-group">
                                    <label for="sifat">Sifat</label>
                                    <select class="form-control" id="sifat" name="sifat" required>
                                        <option value="">Pilih Sifat</option>
                                        <option value="BENEFIT">BENEFIT</option>
                                        <option value="COST">COST</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <button type="submit" id="submit" class="btn btn-primary">Simpan</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>