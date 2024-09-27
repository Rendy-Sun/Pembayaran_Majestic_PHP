<?php 
    $query= "SELECT * FROM detail_saldo WHERE id=$id_penerimaan";
    $result=$dbConnection->query($query);
    $row_data = mysqli_fetch_array($result);
    $tanggal = $row_data['tanggal_terima'];
    $cop = $row_data['cop_karantina'];
    $phqc = $row_data['phqc_karantina'];
    $labuh = $row_data['pnbp_labuh'];
    $mc = $row_data['pnbp_mc'];
    $rambu = $row_data['pnbp_rambu'];
    $buku = $row_data['buku_kesehatan_karantina'];
    $trip =$row_data['total_trip'];
    $catatan = $row_data['catatan'];
    $totalSaldo = $cop + $phqc + $labuh + $mc + $rambu + $buku;
?>