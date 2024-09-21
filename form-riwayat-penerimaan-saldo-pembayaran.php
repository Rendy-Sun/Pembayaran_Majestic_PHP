<?php
    include("Connection/config.php");
?>
<html>
    <head>
        <title>Pembayaran Kapal Majestic</title>
        <link rel="stylesheet" type="text/css" href="Style/style-form-riwayat-penerimaan-saldo-pembayaran.css"/>
        <link rel="stylesheet"type="text/css" href="Style/navigationBar.css"/>
        <nav class="navigation">
            <?php include("navigationBar.php"); ?>
        </nav>    
    </head>
    
    <body>
        <table id="riwayat" class="table" border="1">
            <thead>
                <tr>
                    <th>Tanggal Terima</th>
                    <th>JUmlah Trip</th>
                    <th>COP Karantina</th>
                    <th>PHQC Karantina</th>
                    <th>PNBP LABUH</th>
                    <th>PNBP MASTER CABLE (MC)</th>
                    <th>PNBP RAMBU</th>
                    <th>Buku Kesehatan Karantina</th>
                    <th class="catatanRow">Catatan</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>
            <?php 
                include("Fetch_Data/riwayat-penerimaan-saldo-pembayaran.php");
            ?>
        </table>
        <div class="row">
            <a href="form-tambah-penerimaan-saldo-pembayaran.php"><input type="button" value="Tambah Pembayaran"></input></a>
        </div>
    </body>
</html>