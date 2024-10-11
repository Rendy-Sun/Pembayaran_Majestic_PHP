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
                                    $date =date("d-M-Y", strtotime($row_dataOption['tanggal_terima']));
                                    echo '<option value="'.$row_dataOption['tanggal_terima'].'">'.$date.'</option>';
                                    if($_POST['tanggalTerimaOption'] == $row_dataOption['tanggal_terima']){
                                        echo '<option hidden value="'.$_POST['tanggalTerimaOption'].'" selected>'.$date.'</option>';
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
                        <input type="number" placeholder="0" name="copTransaksi" readonly value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo number_format($totalHargaCOP, 0, '', '.');?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total COP Karantina</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" placeholder="0" name="copSaldo" readonly value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo number_format($totalSaldoCOP, 0, '','.');?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total PHQC Karantina</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" placeholder="0" name="phqcTransaksi" readonly value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo number_format($totalHargaPHQC, 0, '', '.');?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total PHQC Karantina</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo number_format($totalSaldoPHQC, 0, '', '.');?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total PNBP LABUH</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" name="labuhTransaksi" placeholder="0" readonly value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo number_format($totalHargaLABUH, 0, '', '.');?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total PNBP LABUH</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo number_format($totalSaldoLabuh, 0, '', '.');?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total PNBP MASTER CABLE (MC)</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" name="mcTransaksi" class="large" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo number_format($totalHargaMC, 0, '', '.');?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total PNBP MASTER CABLE (MC)</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" class="large" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo number_format($totalSaldoMc, 0, '', '.');?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total PNBP RAMBU</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" name="rambuTransaksi" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo number_format($totalHargaRAMBU,0,'','.');?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total PNBP RAMBU</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo number_format($totalSaldoRambu,0,'','.');?>"/>
                    </div>
                </div>

                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total Buku Kesehatan Karantina</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" name="bukuTransaksi" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo number_format($totalHargaBuku,0,'','.');?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total Buku Kesehatan Karantina</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo number_format($totalSaldoBuku, 0, '', '.');?>"/>
                    </div>
                </div>

                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total Saldo</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" name="totalTransaksi" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo number_format($totalSaldoTransaksi,0,'','.');?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total Saldo</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo number_format($totalSaldoTerima, 0,'','.');?>"/>
                    </div>
                </div>

                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total Trip Kapal</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-transaksi-hitung-pembayaran.php"); echo number_format($totalTrip,0,'','.')?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total Trip Kapal</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-detail-saldo-hitung-pembayaran.php"); echo number_format($jumlahTripKapal, 0, '', '.');?>"/>
                    </div>
                </div>
                <div class="container">
                <header class="headerTitle"><h1>Detail Sisa Saldo</h1></header>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>COP Karantina</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" name="sisaSaldoCOP" id="sisaSaldoCOP" placeholder="0" readonly value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo number_format($sisaSaldoCOP,0,'','.') ?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>PHQC Karantina</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo number_format($sisaSaldoPHQC, 0, '', '.'); ?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>PNBP LABUH</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo number_format($sisaSaldoLABUH,0, '','.'); ?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>PNBP MASTER CABLE (MC)</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo number_format($sisaSaldoMC, 0, '','.');?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>PNBP RAMBU</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo number_format($sisaSaldoRambu, 0, '', '.'); ?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Buku Kesehatan Karantina</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo number_format($sisaSaldoBuku, 0, '','.'); ?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Total Sisa Saldo</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo number_format($sisaTotalSaldoKapal, 0, '', '.'); ?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Total Sisa Trip Kapal</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="number" readonly placeholder="0" value="<?php include("Fetch_Data/fetch-data-sisa-saldo.php"); echo number_format($sisaTripKapal, 0, '', '.'); ?>"/>
                    </div>
                </div>
            </div>

            </div>
        </form>
    </body>
</html>