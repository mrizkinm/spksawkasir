<div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Calon</h1>
                    <div class="row">
                        <div class="col-md-12">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Tambah Calon</h6>
                        </div>
                        <div class="card-body">
                            <form id="form" action="home/add_calon_process" method="post">
                                <div class="form-group">
                                    <label for="nama">Nama Calon</label>
                                    <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Calon" required>
                                </div>
                                <?php
                                    foreach($kriteria as $c) {
                                ?>
                                <div class="form-group">
                                    <input type='hidden' value="<?php echo $c['id_kriteria'] ?>" name="kriteria[]">
                                    <label for="<?php echo $c['nama'] ?>"><?php echo $c['nama'] ?></label>
                                    <select class="form-control" id="nilai" name="nilai[]" required>
                                        <option value="">Pilih <?php echo $c['nama'] ?></option>
                                        <?php
                                            foreach($c['list_nilai'] as $lc) {
                                        ?>
                                        <option value="<?php echo $lc['id_nilaikriteria'] ?>"><?php echo $lc['keterangan'] ?></option>
                                        <?php
                                            }
                                        ?>
                                    </select>
                                </div>
                                <?php
                                    }
                                ?>
                                <div class="form-group">
                                    <button type="submit" id="submit" class="btn btn-primary">Simpan</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>