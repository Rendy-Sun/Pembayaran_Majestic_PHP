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
        <form action="Action/action-tambah-kru-kapal.php" method="POST">
            <div class="container">
            <header><h1>Tambah Kru Kapal</h1></header>
                <div class="row">
                    <div class="col-25">
                        <label>Nama Kru </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="nama_awak" placeholder="Nama Kru Kapal">
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
                            <option value="INDONESIA">INDONESIA</option>
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
                        <label>Tanggal Expired Buku Pelaut </label>
                    </div>
                    <div class="col-75">
                        <input type="date" name="expired_buku_pelaut"/>  
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Jabatan </label>
                    </div>
                    <div class="col-75">
                        <select name="jabatan_kapal">
                            <option hidden value="">Pilih Jabatan</option>
                            <?php
                                $query = "SELECT * FROM jabatan_kru";
                                $result = $dbConnection->query($query);
                                while($data = mysqli_fetch_array($result)){
                                    $jabatan = $data['nama_jabatan'];
                                    echo '<option value="'.$jabatan.'">'.$jabatan.'</option>';
                                }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Kode Pelaut </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="kode_pelaut">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>No PKL </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="no_pkl">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Tanggal Sign On </label>
                    </div>
                    <div class="col-75">
                        <input type="date" name="tanggal_sign_on">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Sertifikat Ijazah Pelaut </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="sertifikat_ijazah_pelaut">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>No Sertifikat Ijazah Pelaut </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="no_sertifikat_ijazah_pelaut">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Passport WNA </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="passport_wna">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Vaksin </label>
                    </div>
                    <div class="col-75">
                        <select name="vaksin">
                            <option value="SUDAH">SUDAH</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <a href="form-daftar-kru-kapal.php"><input type="button" class="riwayatButton" value="Daftar Kru Kapal"></a>
                    <input type="submit" class="submitTambah" name="submit" value="Tambah" onclick="if(document.getElementById('nama_kapal').value=='' && document.getElementById('tujuan_pembayaran').value==''){alert('Nama Kapal dan Tujuan Pembayaran Wajib diisi!');}"/>
                </div>
            </div>
        </form>
    </body>
</html>