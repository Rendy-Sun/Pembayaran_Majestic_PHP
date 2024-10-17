<?php 
    $totalSaldoCOP = "0";
    $totalSaldoPHQC = "0";
    $totalSaldoLabuh = "0";
    $totalSaldoMc = "0";
    $totalSaldoRambu = "0";
    $totalSaldoBuku = "0";
    $jumlahTripKapal = "0";
    $totalSaldoTerima = "0";
    if(isset($_POST['submitCekTransaksi'])){
        $cekTanggal = $_POST['tanggalTerimaOption'];
        $query = "SELECT * FROM detail_saldo WHERE tanggal_terima = '$cekTanggal'";
        $result = $dbConnection->query($query);
        while($row_data = mysqli_fetch_array($result)){
            $totalSaldoCOP = $row_data['cop_karantina'];
            $totalSaldoPHQC = $row_data['phqc_karantina'];
            $totalSaldoLabuh = $row_data['pnbp_labuh'];
            $totalSaldoMc = $row_data['pnbp_mc'];
            $totalSaldoRambu = $row_data['pnbp_rambu'];
            $totalSaldoBuku = $row_data['buku_kesehatan_karantina'];
            $jumlahTripKapal = $row_data['total_trip'];
        }
        $totalSaldoTerima = $totalSaldoCOP + $totalSaldoPHQC + $totalSaldoLabuh + $totalSaldoMc + $totalSaldoRambu + $totalSaldoBuku;     
    }
    
?>