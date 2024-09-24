<?php
include("Connection/config.php");
?>
<html>
    <head>
        <title>Pembayaran Majestic Ferry</title>
        <link rel="stylesheet" type="text/css" href="style-navigationBar.css"/>
        <link rel="stylesheet" type="text/css" href="Style/style-form-tambah-kapal.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css"/>
        <nav class="navigation">
            <?php include("navigationBar.php");?>
        </nav>
    </head>
    <body>
        <form action="Action/tambah-kapal.php" method="POST">
            <div class="container">
                <header><h1>Tambah Kapal</h1></header>
                <div class="row">
                    <div class="col-25">
                        <label for="nama">Nama Kapal </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="nama_kapal" placeholder="Nama Kapal" required/>
                    </div>
                </div>
                <div clas="row">
                    <div class="col-25">
                        <label for="tipe_kapal">Tipe Kapal  </label>
                    </div>
                    <div class="col-75">
                        <select name="tipe_kapal" required>
                            <option hidden value="">Pilih Tipe Kapal</option>
                            <?php
                            include("Fetch_Data/tipe_kapal_option.php");
                            ?>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <input type = "submit" value="Tambah" name="submitTambahKapal"/>
                </div>
            </div>
        </form>
    </body>
</html>