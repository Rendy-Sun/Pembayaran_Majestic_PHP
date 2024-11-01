<?php
    include("Connection/config.php");
?>
<html>
    <head>
        <title>Pembayaran Majestic Ferry</title>
        <link rel="stylesheet" type="text/css" href="Style/style-form-edit-riwayat-pembayaran-kapal.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <?php
            include("navigationBar-4.php");
        ?>
    </head>
    <body>
        <div class = "container">
        <header><h1>Edit Pembayaran Kapal</h1></header>
            <form action="Action/edit-riwayat-pembayaran-kapal.php" method="POST">
                <p>
                    <input type="hidden" name="id_pembayaran" value="<?php include("Fetch_Data/edit-riwayat-pembayaran-kapal.php"); echo $id_pembayaran;?>"/>
                </p>
                <div class = "row">
                    <div class = "col-25">
                        <label for="nKapal">Nama Kapal </label>
                    </div>
                    <div class="col-75">
                        <select name="nama_kapal"required id="nama_kapal">
                            <?php
                                //include("Fetch_Data/From_Database/nama_kapal.php");
                                $sqlSelected = "SELECT nama_kapal FROM pembayaran_kapal INNER JOIN daftar_kapal ON pembayaran_kapal.kapal_id = daftar_kapal.id WHERE pembayaran_kapal.id = $id_pembayaran";
                                $resultSelected = $dbConnection->query($sqlSelected);
                                while($rowSelected = mysqli_fetch_array($resultSelected))
                                {
                                    $nama_kapalSelected = $rowSelected['nama_kapal'];
                                }
                                $sql = "SELECT nama_kapal FROM daftar_kapal";
                                $result = $dbConnection->query($sql);
                                while($row = mysqli_fetch_array($result)){
                                    echo '<option value="'.$row['nama_kapal'].'">'.$row['nama_kapal'].'</option>';
                                    if($nama_kapalSelected == $row['nama_kapal']){
                                        echo '<option hidden value="'.$nama_kapalSelected.'" selected="selected">'.$nama_kapalSelected.'</option>';
                                    }
                                }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Tujuan Pembayaran </label>
                    </div>
                    <div class="col-75">
                        <select name="tujuan_pembayaran" required id="tujuan_pembayaran" onchange="
                        var checkTujuan =document.getElementById('tujuan_pembayaran').value;
                        var checkKapal =document.getElementById('nama_kapal').value;
                        var lol = document.getElementById('harga').value;
                            if(checkTujuan == 'COP Karantina' && checkKapal == 'WM 3'){
                                document.getElementById('harga').value = '70000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'WM 3'){
                                document.getElementById('harga').value = '30000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'WM 3'){
                                document.getElementById('harga').value = '350658';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'WM 3'){
                                document.getElementById('harga').value = '100000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'WM 5'){
                                document.getElementById('harga').value = '70000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'WM 5'){
                                document.getElementById('harga').value = '30000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'WM 5'){
                                document.getElementById('harga').value = '350658';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'WM 5'){
                                document.getElementById('harga').value = '100000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'WM 6'){
                                document.getElementById('harga').value = '70000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'WM 6'){
                                document.getElementById('harga').value = '30000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'WM 6'){
                                document.getElementById('harga').value = '350658';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'WM 6'){
                                document.getElementById('harga').value = '100000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'WM 7'){
                                document.getElementById('harga').value = '70000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'WM 7'){
                                document.getElementById('harga').value = '30000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'WM 7'){
                                document.getElementById('harga').value = '350658';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'WM 7'){
                                document.getElementById('harga').value = '100000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'WM 8'){
                                document.getElementById('harga').value = '70000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'WM 8'){
                                document.getElementById('harga').value = '30000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'WM 8'){
                                document.getElementById('harga').value = '350658';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'WM 8'){
                                document.getElementById('harga').value = '100000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'WM 9'){
                                document.getElementById('harga').value = '70000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'WM 9'){
                                document.getElementById('harga').value = '30000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'WM 9'){
                                document.getElementById('harga').value = '350658';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'WM 9'){
                                document.getElementById('harga').value = '100000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'MAJESTIC BLISS'){
                                document.getElementById('harga').value = '85000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'MAJESTIC BLISS'){
                                document.getElementById('harga').value = '35000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'MAJESTIC BLISS'){
                                document.getElementById('harga').value = '550242';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'MAJESTIC BLISS'){
                                document.getElementById('harga').value = '120000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'MAJESTIC ULTIMATE'){
                                document.getElementById('harga').value = '85000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'MAJESTIC ULTIMATE'){
                                document.getElementById('harga').value = '35000';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'MAJESTIC ULTIMATE'){
                                document.getElementById('harga').value = '550242';
                                document.getElementById('harga').readOnly=true;
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'MAJESTIC ULTIMATE'){
                                document.getElementById('harga').value = '120000';
                                document.getElementById('harga').readOnly=true;
                            }else{
                                document.getElementById('harga').value = '';
                                document.getElementById('harga').readOnly = false;
                            }
                        ">
                            <?php 
                                $sqlSelected = "SELECT nama_tujuan FROM pembayaran_kapal INNER JOIN tujuan_pembayaran ON pembayaran_kapal.tujuan_pembayaran_id = tujuan_pembayaran.id WHERE pembayaran_kapal.id = $id_pembayaran";
                                $resultSelected = $dbConnection->query($sqlSelected);
                                while($rowSelected = mysqli_fetch_array($resultSelected)){
                                    $nama_tujuanSelected = $rowSelected['nama_tujuan'];
                                }
                                $query = "SELECT * FROM tujuan_pembayaran";
                                $result = $dbConnection->query($query);
                                while($row_data = mysqli_fetch_array($result))
                                {
                                    echo '<option value="'.$row_data['nama_tujuan'].'">'.$row_data['nama_tujuan'].'</option>';
                                    if($nama_tujuanSelected == $row_data['nama_tujuan']){
                                        echo '<option hidden value="'.$nama_tujuanSelected.'" selected="selected">'.$nama_tujuanSelected.'</option>';
                                    }
                                }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class ="col-25">
                        <label>Trip </label>
                    </div>
                    <div class="col-75">
                        <select name="trip_kapal" required>
                        <option value="" hidden>Pilih Trip Kapal</option>
                            <?php
                                $querySelected = "SELECT waktu FROM pembayaran_kapal INNER JOIN trip_kapal ON pembayaran_kapal.trip_id = trip_kapal.id WHERE pembayaran_kapal.id = $id_pembayaran";
                                $resultSelected = $dbConnection->query($querySelected);
                                while($rowSelected = mysqli_fetch_array($resultSelected)){
                                    $tripSelected = $rowSelected['waktu'];
                                }

                                $query = "SELECT * FROM trip_kapal";
                                $result = $dbConnection->query($query);
                                while($row_data = mysqli_fetch_array($result)){
                                    echo '<option value="'.$row_data['waktu'].'">'.$row_data['waktu'].'</option>';
                                    if($tripSelected == $row_data['waktu']){
                                        echo '<option hidden value="'.$tripSelected.'" selected="selected">'.$tripSelected.'</option>';
                                    }
                                }                            
                            ?>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Status Pembayaran </label>
                    </div>
                    <div class="col-75">
                        <select name="status_pembayaran" required>
                            <?php
                                $sqlSelected = "SELECT status FROM pembayaran_kapal INNER JOIN status_pembayaran ON pembayaran_kapal.status_pembayaran_id = status_pembayaran.id WHERE pembayaran_kapal.id = $id_pembayaran";
                                $resultSelected = $dbConnection->query($sqlSelected);
                                while($rowSelected = mysqli_fetch_array($resultSelected)){
                                    $selectedStatus = $rowSelected['status'];
                                }

                                $query="SELECT * FROM status_pembayaran";
                                $result = $dbConnection->query($query);
                                while($row_data = mysqli_fetch_array($result))
                                {
                                    echo '<option value="'.$row_data['status'].'">'.$row_data['status'].'</option>';
                                    if($selectedStatus == $row_data['status'])
                                    {
                                        echo '<option hidden value="'.$selectedStatus.'" selected="selected">'.$selectedStatus.'</option>';
                                    }
                                }                            
                            ?>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Harga Pembayaran </label>
                    </div>
                    <div class="col-75">
                        <input type="number" name="harga"required placeholder="0" id="harga" readonly="readonly" value="<?php include("Fetch_Data/edit-riwayat-pembayaran-kapal.php"); echo $hargaTransaksi; ?>" />
                    </div>
                    <input type="button" class="changeButton" value="Change" onclick="document.getElementById('harga').readOnly=false;"/>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Tanggal Pembayaran </label>
                    </div>
                    <div class="col-75">
                        <input type="date" name="tanggal_transaksi" required value="<?php include("Fetch_Data/edit-riwayat-pembayaran-kapal.php"); echo $tanggalTransaksi; ?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Bukti Pembayaran (Optional)</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="bukti_pembayaran" value="<?php include("Fetch_Data/edit-riwayat-pembayaran-kapal.php"); echo $buktiPembayaran?>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Catatan Pembayaran </label>
                    </div>
                    <div class="col-75">
                        <textarea name="catatan_pembayaran"><?php include("Fetch_Data/edit-riwayat-pembayaran-kapal.php"); echo $catatanTransaksi; ?></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Sisa Saldo </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="sisa_saldo" value="<?php include("Fetch_Data/edit-riwayat-pembayaran-kapal.php"); echo $sisa_saldo?>">
                    </div>
                </div>
                <div class="row">
                    <a href="form-riwayat-pembayaran-kapal.php"><input type="button" class="riwayatButton" value="Riwayat"></input></a>
                    <input type="submit" class="submitEdit" name="submitUpdateRiwayatPembayaran" value="Edit"/>
                </div>
            </form>
        </div>
        
    </body>
</html>