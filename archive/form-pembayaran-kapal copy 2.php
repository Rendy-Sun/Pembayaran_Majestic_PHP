<?php
    include("Connection/config.php")
?>
<html>
    <head>
        <title>Pembayaran Majestic Ferry</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="Style/style-form-pembayaran-kapal.css"/>
        <?php
            include("navigationBar-4.php");
        ?>
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
                            <option hidden value="">Pilih Nama Kapal</option>
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
                            if(checkKapal == 'WM 3' || checkKapal=='WM 5' || checkKapal == 'WM 6' || checkKapal == 'WM 7' || checkKapal == 'WM 8' || checkKapal == 'WM 9'){
                                if(checkTujuan == 'COP Karantina'){
                                    document.getElementById('harga').value = '70000';
                                    document.getElementById('harga').readOnly=true;
                                }else if(checkTujuan == 'PHQC Karantina'){
                                    document.getElementById('harga').value = '30000';
                                    document.getElementById('harga').readOnly=true;
                                }else if(checkTujuan == 'PNBP LABUH'){
                                    document.getElementById('harga').value = '350658';
                                    document.getElementById('harga').readOnly=true;
                                }else if(checkTujuan == 'Buku Kesehatan Karantina'){
                                    document.getElementById('harga').value = '100000';
                                    document.getElementById('harga').readOnly=true;
                                }else{
                                    document.getElementById('harga').value = '';
                                    document.getElementById('harga').readOnly = false;
                                }
                            }else if(checkKapal == 'MAJESTIC ULTIMATE' || checkKapal =='MAJESTIC BLISS' || checkKapal == 'MAJESTIC HOPE' || checkKapal == 'ETHOS OF MAJESTIC' || checkKapal == 'NOBLE OF MAJESTIC' || checkKapal == 'UNITY OF MAJESTIC'){
                                if(checkTujuan == 'COP Karantina'){
                                    document.getElementById('harga').value = '85000';
                                    document.getElementById('harga').readOnly=true;
                                }else if(checkTujuan == 'PHQC Karantina'){
                                    document.getElementById('harga').value = '35000';
                                    document.getElementById('harga').readOnly=true;
                                }else if(checkTujuan == 'PNBP LABUH'){
                                    document.getElementById('harga').value = '550242';
                                    document.getElementById('harga').readOnly=true;
                                }else if(checkTujuan == 'Buku Kesehatan Karantina'){
                                    document.getElementById('harga').value = '120000';
                                    document.getElementById('harga').readOnly=true;
                                }else{
                                    document.getElementById('harga').value = '';
                                    document.getElementById('harga').readOnly = false;
                                }
                            }
                        ">
                            <option value="" hidden>Pilih Jenis Pembayaran</option>
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
                        <option value="" hidden>Pilih Trip Kapal</option>
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
                        <input type="number" name="harga" id="harga" required placeholder="0" readonly="readonly"/>
                    </div>
                    <input type="button" class="changeButton" value="Change" onclick="document.getElementById('harga').readOnly=false;"/>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Tanggal Pembayaran </label>
                    </div>
                    <div class="col-75">
                        <input type="date" name="tanggal_transaksi" required value="<?php $dt=new DateTime(); echo $dt->format('Y-m-d'); ?>"/>  
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Bukti Pembayaran (Optional) </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="bukti_pembayaran">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Catatan Pembayaran </label>
                    </div>
                    <div class="col-75">
                        <textarea name="catatan_pembayaran"></textarea>
                    </div>
                </div>
                <div class="row">
                    <a href="form-riwayat-pembayaran-kapal.php"><input type="button" class="riwayatButton" value="Riwayat"></a>
                    <input type="submit" class="submitTambah" name="submitTambahPembayaranKapal" value="Tambah" onclick="if(document.getElementById('nama_kapal').value=='' && document.getElementById('tujuan_pembayaran').value==''){alert('Nama Kapal dan Tujuan Pembayaran Wajib diisi!');}"/>
                </div>
            </div>
        </form>
    </body>
</html>