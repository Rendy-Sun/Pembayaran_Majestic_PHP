<?php
include("Connection/config.php");
?>
<html>
    <head>
        <title>Riwayat</title>
        <link rel="stylesheet" type="text/css" href="Style/table.css"/>
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
        <table class="table" border="1">
            <?php 
                include("Fetch_Data/riwayat-pembayaran-kapal.php");
            ?>
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
        </table>
        <div class="parent">
            <button><a href="form-pembayaran-kapal.php">Tambah Pembayaran</a></button>
        </div>
    </body>
</html>