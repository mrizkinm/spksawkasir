<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">Hasil Penilaian</h1>
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">List Calon</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%">
                            <thead>
                                <tr>
                                    <th rowspan="2">No.</th>
                                    <th rowspan="2">Nama</th>
                                    <th colspan="<?php echo count($kriteria) ?>">Kriteria</th>
                                </tr>
                                <tr>
                                    <?php
                                    foreach($kriteria as $c) {
                                    ?>
                                    <th><?php echo $c->nama ?></th>
                                    <?php
                                    }
                                    ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $no = 1;
                                    foreach($calon as $h) {
                                ?>
                                <tr>
                                    <td><?php echo $no ?></td>
                                    <td><?php echo $h['nama'] ?></td>
                                    <?php
                                    foreach($kriteria as $c) {
                                    ?>
                                    <td><?php echo $h[$c->id] ?></td>
                                    <?php
                                    }
                                    ?>
                                </tr>
                                <?php
                                    $no++;
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Normalisasi</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable2" width="100%">
                            <thead>
                                <tr>
                                <th rowspan="2">No.</th>
                                    <th rowspan="2">Nama</th>
                                    <th colspan="<?php echo count($kriteria) ?>">Kriteria</th>
                                </tr>
                                <tr>
                                    <?php
                                    foreach($kriteria as $c) {
                                    ?>
                                    <th><?php echo $c->nama ?></th>
                                    <?php
                                    }
                                    ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $no = 1;
                                    foreach($normal as $h) {
                                    ?>
                                <tr>
                                    <td><?php echo $no ?></td>
                                    <td><?php echo $h['nama'] ?></td>
                                    <?php
                                    foreach($kriteria as $c) {
                                    ?>
                                    <td><?php echo $h[$c->id] ?></td>
                                    <?php
                                    }
                                    ?>
                                </tr>
                                    <?php
                                    $no++;
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Perankingan</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable3" width="100%">
                            <thead>
                                <tr>
                                <th rowspan="2">No.</th>
                                    <th rowspan="2">Nama</th>
                                    <th colspan="<?php echo count($kriteria) ?>">Kriteria</th>
                                    <th rowspan="2">Hasil</th>
                                </tr>
                                <tr>
                                <?php
                                    foreach($kriteria as $c) {
                                ?>
                                    <th><?php echo $c->nama ?></th>
                                <?php
                                    }
                                    ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $no = 1;
                                    foreach($rank as $h) {
                                ?>
                                <tr>
                                    <td><?php echo $no ?></td>
                                    <td><?php echo $h['nama'] ?></td>
                                    <?php
                                    foreach($kriteria as $c) {
                                    ?>
                                    <td><?php echo $h[$c->id] ?></td>
                                    <?php
                                    }
                                    ?>
                                    <td><?php echo $h['hasil'] ?></td>
                                </tr>
                                <?php
                                    $no++;
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
        <div class="alert alert-success">
            Hasil perhitungan yang dilakukan menggunakan metode SAW untuk menentukan calon karyawan kasir Indomaret adalah <b><?php echo $max->nama ?></b> dengan total nilai <b><?php echo $max->hasil ?></b>
        </div>
        </div>
    </div>
</div>
        <script>
        $(document).ready(function() {
            $('#dataTable, #dataTable2, #dataTable3').DataTable();
        });
        </script>