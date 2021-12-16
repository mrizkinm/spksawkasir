<div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Bobot Penilaian</h1>
                    <div class="row">
                        <div class="col-md-12">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">List Kriteria</h6>
                        </div>
                        <?php
                        $listWeight=array(
                            array("nama"=>"0 - Sangat Rendah","nilai"=>0),
                            array("nama"=>"0.25 - Rendah","nilai"=>0.25),
                            array("nama"=>"0.5 - Tengah","nilai"=>0.5),
                            array("nama"=>"0.75 - Tinggi","nilai"=>0.75),
                            array("nama"=>"1 - Sangat Tinggi","nilai"=>1),
                        );
                        ?>
                        <div class="card-body">
                            <form id="form" action="home/update_param" method="post">
                                <?php
                                    foreach($kriteria as $c) {
                                ?>
                                <div class="form-group">
                                    <input type='hidden' value="<?php echo $c['id_kriteria'] ?>" name="id[]">
                                    <label for="<?php echo $c['nama'] ?>"><?php echo $c['nama'] ?> (%)</label>
                                    <!-- <select class="form-control" id="<?php //echo $c['nama'] ?>" name="bobot[]" required>
                                        <option value="">Pilih <?php //echo $c['nama'] ?></option>
                                        <?php
                                            //foreach($c['list_nilai'] as $lc) {
                                        ?>
                                        <option value="<?php //echo $lc['nilai'] ?>" <?php //if($lc['nilai']==$c['bobot']) echo 'selected'; ?>><?php //echo $lc['keterangan'] ?></option>
                                        <?php
                                            //}
                                        ?>
                                    </select> -->
                                    <input type="number" min="0" max="100" class="form-control" value="<?php echo $c['bobot']*100 ?>" id="<?php echo $c['nama'] ?>" placeholder="<?php echo $c['nama'] ?>" name="bobot[]" required>
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