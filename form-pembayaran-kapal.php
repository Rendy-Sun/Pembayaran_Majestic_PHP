<?php
    include("Connection/config.php")
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
        <header><h1>Pembayaran Kapal</h1></header>
        <form action="Action/tambah-pembayaran-kapal.php" method="POST">
            <fieldset>
                <p>
                    <label>Nama Kapal: </label>
                    <select name="nama_kapal"required>
                        <?php
                            include("Fetch_Data/nama-kapal-option.php");
                        ?>
                    </select>
                </p>
                <p>
                    <label>Tujuan Pembayaran: </label>
                    <select name="tujuan_pembayaran" required >
                        <?php 
                            include("Fetch_Data/tujuan-pembayaran-option.php");
                        ?>
                    </select>
                </p>
                <p>
                    <label>Trip: </label>
                    <select name="trip_kapal" required>
                        <?php
                            include("Fetch_Data/trip-option.php");
                        ?>
                    </select>
                </p>
                <p>
                    <label>Status Pembayaran: </label>
                    <select name="status_pembayaran" required>
                        <?php
                            include("Fetch_Data/status-pembayaran-option.php");
                        ?>
                    </select>
                </p>
                <p>
                    <label>Harga Pembayaran: </label>
                    <input type="number" name="harga"required placeholder="Harga"/>
                </p>
                <p>
                    <label>Tanggal Pembayaran: </label>
                    <input type="date" name="tanggal_transaksi" required/>
                </p>
                <p>
                    <label>Catatan Pembayaran: </label>
                    <textarea name="catatan_pembayaran"></textarea>
                </p>
                <p>
                    <label><a href="form-riwayat-pembayaran-kapal.php">Riwayat</a></label>
                </p>
                <p>
                    <input type="submit" name="submit" value="Tambah"/>
                </p>
            </fieldset>
        </form>
    </body>
</html>