<div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Kriteria</h1>
                    <div class="row">
                        <div class="col-md-12">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Tambah Sub Kriteria</h6>
                        </div>
                        <div class="card-body">
                            <form id="form" action="home/add_sub_kriteria_process" method="post">
                                <div class="form-group">
                                    <label for="id_kriteria">Kriteria</label>
                                    <select class="form-control" id="id_kriteria" name="id_kriteria" required>
                                        <option value="">Pilih Kriteria</option>
                                        <?php foreach($kriteria as $k) { ?>
                                        <option value="<?php echo $k->id ?>"><?php echo $k->nama ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="nilai">Nilai</label>
                                    <input type="number" class="form-control" id="nilai" name="nilai" min="0" step="0.1" placeholder="Nilai" required>
                                </div>
                                <div class="form-group">
                                    <label for="keterangan">Keterangan</label>
                                    <input type="text" class="form-control" id="keterangan" name="keterangan" placeholder="Keterangan" required>
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