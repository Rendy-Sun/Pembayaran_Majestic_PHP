<?php
include("Connection/config.php");
?>
<html>
    <head>
        <title>Riwayat</title>
        <link rel="stylesheet" type="text/css" href="Style/table-riwayat-pembayaran-kapal.css"/>
        <link rel="stylesheet" type="text/css" href="Style/navigationBar.css"/>
        <link rel="stylesheet" type="text/css" href="Style/button.css"/>
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
        <table id="riwayat" class="table" border="1">
            <thead>
                <tr>
                    <th scope="col" style="display: none;">Id Kapal</th>
                    <th>Nama Kapal</th>
                    <th>Tujuan Pembayaran </th>
                    <th>Status Transaksi</th>
                    <th>Trip Kapal</th>
                    <th>Harga</th>
                    <th>Tanggal Transaksi</th>
                    <th>Catatan Transaksi</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>
            <?php 
                include("Fetch_Data/riwayat-pembayaran-kapal.php");
                
            ?>
            
        </table>
        <div class="row">
            <a href="form-pembayaran-kapal.php"><input type="button" value="Tambah Pembayaran"></input></a>
        </div>
    </body>
</html>