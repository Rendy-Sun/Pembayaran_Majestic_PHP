<?php
    include("Connection/config.php")
?>
<html>
    <head>
        <title>Pembayaran Majestic Ferry</title>
        <link rel="stylesheet" type="text/css" href="Style/navigationBar.css"/>
        <link rel="stylesheet" type="text/css" href="Style/form-pembayaran-kapal.css"/>
        <nav class="navigation">
            <?php include ("navigationbar.php"); ?>
        </nav>    
    </head>
    <body>
        <form action="Action/tambah-pembayaran-kapal.php" method="POST">
            <div class="container">
            <header><h1>Pembayaran Kapal</h1></header>
                <div class="row">
                    <div class="col-25">
                        <label>Nama Kapal </label>
                    </div>
                    <div class="col-75">
                        <select id="nama_kapal" name="nama_kapal"required>
                            <option>Pilih Nama Kapal</option>
                            <?php
                                include("Fetch_Data/nama-kapal-option.php");
                            ?>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Tujuan Pembayaran </label>           
                    </div>
                    <div class="col-75">
                        <select id="tujuan_pembayaran" name="tujuan_pembayaran" required onchange="
                        var checkTujuan =document.getElementById('tujuan_pembayaran').value;
                        var checkKapal =document.getElementById('nama_kapal').value;
                        var lol = document.getElementById('harga').value;
                            if(checkTujuan == 'COP Karantina' && checkKapal == 'WM 3'){
                                document.getElementById('harga').value = '70000';
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'WM 3'){
                                document.getElementById('harga').value = '30000';
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'WM 3'){
                                document.getElementById('harga').value = '350658';
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'WM 3'){
                                document.getElementById('harga').value = '100000';
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'WM 5'){
                                document.getElementById('harga').value = '70000';
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'WM 5'){
                                document.getElementById('harga').value = '30000';
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'WM 5'){
                                document.getElementById('harga').value = '350658';
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'WM 5'){
                                document.getElementById('harga').value = '100000';
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'WM 6'){
                                document.getElementById('harga').value = '70000';
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'WM 6'){
                                document.getElementById('harga').value = '30000';
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'WM 6'){
                                document.getElementById('harga').value = '350658';
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'WM 6'){
                                document.getElementById('harga').value = '100000';
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'WM 7'){
                                document.getElementById('harga').value = '70000';
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'WM 7'){
                                document.getElementById('harga').value = '30000';
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'WM 7'){
                                document.getElementById('harga').value = '350658';
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'WM 7'){
                                document.getElementById('harga').value = '100000';
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'WM 8'){
                                document.getElementById('harga').value = '70000';
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'WM 8'){
                                document.getElementById('harga').value = '30000';
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'WM 8'){
                                document.getElementById('harga').value = '350658';
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'WM 8'){
                                document.getElementById('harga').value = '100000';
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'WM 9'){
                                document.getElementById('harga').value = '70000';
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'WM 9'){
                                document.getElementById('harga').value = '30000';
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'WM 9'){
                                document.getElementById('harga').value = '350658';
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'WM 9'){
                                document.getElementById('harga').value = '100000';
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'MAJESTIC BLISS'){
                                document.getElementById('harga').value = '85000';
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'MAJESTIC BLISS'){
                                document.getElementById('harga').value = '35000';
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'MAJESTIC BLISS'){
                                document.getElementById('harga').value = '550242';
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'MAJESTIC BLISS'){
                                document.getElementById('harga').value = '120000';
                            }else if(checkTujuan == 'COP Karantina' && checkKapal == 'MAJESTIC ULTIMATE'){
                                document.getElementById('harga').value = '85000';
                            }else if(checkTujuan == 'PHQC Karantina' && checkKapal == 'MAJESTIC ULTIMATE'){
                                document.getElementById('harga').value = '35000';
                            }else if(checkTujuan == 'PNBP LABUH' && checkKapal == 'MAJESTIC ULTIMATE'){
                                document.getElementById('harga').value = '550242';
                            }else if(checkTujuan == 'Buku Kesehatan Karantina' && checkKapal == 'MAJESTIC ULTIMATE'){
                                document.getElementById('harga').value = '120000';
                            }else{
                                document.getElementById('harga').value = '';
                            }
                        ">
                            <option hidden>Pilih Jenis Pembayaran</option>
                            <?php 
                                include("Fetch_Data/tujuan-pembayaran-option.php");
                            ?>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Trip </label>
                    </div>
                    <div class="col-75">
                        <select name="trip_kapal" required>
                            <?php
                                include("Fetch_Data/trip-option.php");
                            ?>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Status Pembayaran: </label>  
                    </div>
                    <div class="col-75">
                        <select name="status_pembayaran" required>
                            <?php
                                include("Fetch_Data/status-pembayaran-option.php");
                            ?>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Harga Pembayaran </label>
                    </div>
                    <div class="col-75">
                        <input type="number" name="harga" id="harga" required placeholder="0"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Tanggal Pembayaran </label>
                    </div>
                    <div class="col-75">
                        <input type="date" name="tanggal_transaksi" required/>  
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Catatan Pembayaran: </label>
                    </div>
                    <div class="col-75">
                        <textarea name="catatan_pembayaran"></textarea>
                    </div>
                </div>
                <div class="row">
                    <a href="form-riwayat-pembayaran-kapal.php"><input type="button" value="Riwayat"></a>
                    <input type="submit" name="submitTambahPembayaranKapal" value="Tambah"/>
                </div>
            </div>
        </form>
    </body>
</html>