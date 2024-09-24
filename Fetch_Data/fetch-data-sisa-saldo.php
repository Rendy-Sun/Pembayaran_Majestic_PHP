<?php 
    include("fetch-detail-saldo-hitung-pembayaran.php");
    include("fetch-detail-transaksi-hitung-pembayaran.php");
    if(isset($_POST['submitCekTransaksi'])){

    }
    $sisaSaldoCOP = $totalSaldoCOP - $totalHargaCOP;
    $sisaSaldoPHQC = $totalSaldoPHQC - $totalHargaPHQC;
    $sisaSaldoLABUH = $totalSaldoLabuh - $totalHargaLABUH;
    $sisaSaldoMC = $totalSaldoMc - $totalHargaMC;
    $sisaSaldoRambu = $totalSaldoRambu - $totalHargaRAMBU;
    $sisaSaldoBuku = $totalSaldoBuku - $totalHargaBuku;
    $sisaTotalSaldoKapal = $totalSaldoTerima - $totalSaldoTransaksi;
    $sisaTripKapal = $jumlahTripKapal - $totalTrip;
    ?>