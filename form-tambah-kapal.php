<?php
include("Connection/config.php");
?>
<html>
    <head>
        <title>Pembayaran Majestic Ferry</title>
        <link rel="stylesheet" type="text/css" href="Style/navigationBar.css"/>
        <nav class="navigation">
            <ul>
                <li><a href="form-list-kapal.php">Daftar Kapal</a></li>
                <li><a href="form-pembayaran-kapal.php">Pembayaran Kapal</a></li>
                <li><a href="#">List</a></li>
                <li><a href="#">Tutorial</a></li>
                <li><a href="#">Download</a></li>
            </ul>
        </nav>
    </head>
    <body>
        <header><h1>Tambah Kapal</h1></header>
        <form action="Action/tambah-kapal.php" method="POST">
            <fieldset>
                <p>
                    <label for="nama">Nama Kapal: </label>
                    <input type="text" name="nama_kapal" placeholder="Nama Kapal" required/>
                </p>
                <p>
                    <label for="tipe_kapal">Tipe Kapal: </label>
                    <select name="tipe_kapal" required>
                        <?php
                           include("Fetch_Data/tipe_kapal_option.php");
                        ?>
                    </select>
                </p>
                <p>
                    <input type = "submit" value="Tambah" name="tambah"/>
                </p>
            </fieldset>
        </form>
    </body>
</html>