<?php
    include("Connection/config.php")
?>
<html>
    <head>
        <title>Pembayaran Majestic Ferry</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="Style/style-form-tambah-kru-kapal.css"/>
        <?php
            include("navigationBar-4.php");
        ?>
    </head>
    <body>
        <form action="#" method="POST">
            <div class="container">
            <header><h1>Tambah Kru Kapal</h1></header>
                <div class="row">
                    <div class="col-25">
                        <label>Nama Kru </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="nama_kru" placeholder="Nama Kru Kapal">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Jenis Kelamin </label>           
                    </div>
                    <div class="col-75">
                        <select id="jenis_kelamin" name="jenis_kelamin" required>
                            <option value="M">M</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Tanggal Lahir </label>
                    </div>
                    <div class="col-75">
                       <input type="date" name="tanggal_lahir">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Kebangsaan </label>  
                    </div>
                    <div class="col-75">
                        <select name="kebangsaan" required>
                            <option value="Indonesia">INDONESIA</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>No Buku Pelaut </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="no_buku_pelaut" required/>
                    </div>
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