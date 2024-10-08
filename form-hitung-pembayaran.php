<?php
    include("Connection/config.php")
?>
<html>
    <head>
        <title>Pembayaran Majestic Ferry</title>
        <link rel="stylesheet" type="text/css" href="Style/style-form-hitung-pembayaran.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <?php
            include("navigationBar-4.php");
        ?>  
    </head>
    <body>
        <form action="#" method="POST">
            <div class="container">
                <header class="headerTitle"><h1>Hitung Pembayaran</h1></header>
                <div class="row">
                    <div class="column-1">
                        <header><h2>Cek Trip Kapal</h2></header>
                    </div>
                    <div class="column-2">
                        <header><h2>Cek Tanggal Terima Saldo</h2></header>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Dari Tanggal</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="date" class="dateDariTanggal" name="dariTanggal" value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo $dariTanggal;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Cek Tanggal</label>
                    </div>
                    <div class="subcolumn-4">
                        <select name="tanggalTerimaOption">
                            <option hidden>Pilih Tanggal Terima</option>
                            <?php 
                                $queryOption = "SELECT tanggal_terima FROM detail_saldo ORDER BY tanggal_terima DESC";
                                $resultOption = $dbConnection->query($queryOption);
                                while($row_dataOption = mysqli_fetch_array($resultOption)){
                                    echo '<option value="'.$row_dataOption['tanggal_terima'].'">'.$row_dataOption['tanggal_terima'].'</option>';
                                    if($_POST['tanggalTerimaOption'] == $row_dataOption['tanggal_terima']){
                                        echo '<option hidden value="'.$_POST['tanggalTerimaOption'].'" selected>'.$_POST['tanggalTerimaOption'].'</option>';
                                    }
                                }

                            ?>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Sampai Tanggal</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="date" name="sampaiTanggal" value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo $sampaiTanggal;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <input type="submit" name="submitCekTransaksi" id="submitCekTransaksi" class="submitCekTransaksi" value="Cek" onclick="
                        "/>
                    </div>
                    <div class="subcolumn-4">
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumnHeader-1">
                        <header><h2>Detail Transaksi</h2></header>
                    </div>
                    <div class="subcolumnHeader-2">
                        <header><h2>Detail Penerimaan Saldo</h2></header>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total COP Karantina</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" placeholder="0" name="copTransaksi" readonly value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo $totalHargaCOP;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total COP Karantina</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" placeholder="0" name="copSaldo" readonly value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo $totalSaldoCOP;?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total PHQC Karantina</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" placeholder="0" name="phqcTransaksi" readonly value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo $totalHargaPHQC;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total PHQC Karantina</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo $totalSaldoPHQC;?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total PNBP LABUH</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" name="labuhTransaksi" placeholder="0" readonly value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo $totalHargaLABUH;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total PNBP LABUH</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo $totalSaldoLabuh;?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total PNBP MASTER CABLE (MC)</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" name="mcTransaksi" class="large" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo $totalHargaMC;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total PNBP MASTER CABLE (MC)</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" class="large" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo $totalSaldoMc;?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total PNBP RAMBU</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" name="rambuTransaksi" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo $totalHargaRAMBU;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total PNBP RAMBU</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo $totalSaldoRambu;?>"/>
                    </div>
                </div>

                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total Buku Kesehatan Karantina</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" name="bukuTransaksi" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo $totalHargaBuku;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total Buku Kesehatan Karantina</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo $totalSaldoBuku;?>"/>
                    </div>
                </div>

                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total Saldo</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" name="totalTransaksi" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo $totalSaldoTransaksi;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total Saldo</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo $totalSaldoTerima;?>"/>
                    </div>
                </div>

                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total Trip Kapal</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo $totalTrip?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total Trip Kapal</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo $jumlahTripKapal;?>"/>
                    </div>
                </div>
                <div class="container">
                <header class="headerTitle"><h1>Detail Sisa Saldo</h1></header>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>COP Karantina</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" name="sisaSaldoCOP" id="sisaSaldoCOP" placeholder="0" readonly value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo $sisaSaldoCOP ?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>PHQC Karantina</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo $sisaSaldoPHQC ?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>PNBP LABUH</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo $sisaSaldoLABUH ?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>PNBP MASTER CABLE (MC)</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo $sisaSaldoMC?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>PNBP RAMBU</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo $sisaSaldoRambu ?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Buku Kesehatan Karantina</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo $sisaSaldoBuku ?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total Sisa Saldo</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo $sisaTotalSaldoKapal ?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total Sisa Trip Kapal</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo $sisaTripKapal ?>"/>
                    </div>
                </div>
            </div>

            </div>
        </form>
    </body>
</html>