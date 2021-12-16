<div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Calon</h1>
                    <div class="row">
                        <div class="col-md-12">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <a href="home/add_calon" class="btn btn-primary btn-sm float-right"><i class="fas fa-fw fa-plus"></i> Tambah</a>
                            <h6 class="m-0 font-weight-bold text-primary">Data Calon</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama</th>
                                            <th>Alamat</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Umur</th>
                                            <th>Nilai</th>
                                            <th>Pendidikan</th>
                                            <th>Tinggi Badan</th>
                                            <th>Berat Badan</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        foreach($calon as $c) {
                                        ?>
                                        <tr>
                                            <td><?php echo $no ?></td>
                                            <td><?php echo $c->nama ?></td>
                                            <td><?php echo $c->alamat ?></td>
                                            <td><?php echo $c->email ?></td>
                                            <td><?php echo $c->phone ?></td>
                                            <td><?php echo $c->umur ?></td>
                                            <td><?php echo $c->nilai ?></td>
                                            <td><?php echo $c->lulusan ?></td>
                                            <td><?php echo $c->tinggi_badan ?></td>
                                            <td><?php echo $c->berat_badan ?></td>
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
        </div>
        <script>
        $(document).ready(function() {
            $('#dataTable').DataTable();
        });
        </script>