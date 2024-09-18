<?php
include("Fetch_Data/tujuan-pembayaran-option.php");
include("Fetch_Data/edit-riwayat-pembayaran-kapal.php");
$queryTujuan = "SELECT * FROM pembayaran_kapal INNER JOIN tujuan_pembayaran ON pembayaran_kapal.tujuan_pembayaran_id = tujuan_pembayaran.id WHERE pembayaran_kapal.id = $id_pembayaran";
$resultTujuan = $dbConnection->query($queryTujuan);
while($row_data_tujuan == mysqli_fetch_array($resultTujuan)){
    $nama_tujuan = $row_data_tujuan['nama_tujuan'];
}
if($nama_tujuan == "COP Karantina"){
    echo '<option value ="'.$nama_tujuan.'" selected="selected">'.$nama_tujuan.'</option>';
}else if($nama_tujuan == "PHQC Karantina"){
    echo '<option value ="'.$nama_tujuan.'" selected="selected">'.$nama_tujuan.'</option>';

}else if($nama_tujuan == "PNBP LABUH"){
    echo '<option value ="'.$nama_tujuan.'" selected="selected">'.$nama_tujuan.'</option>';

}else if($nama_tujuan == "PNBP MASTER CABLE (MC)"){
    echo '<option value ="'.$nama_tujuan.'" selected="selected">'.$nama_tujuan.'</option>';

}else if($nama_tujuan == "PNBP RAMBU"){
    echo '<option value ="'.$nama_tujuan.'" selected="selected">'.$nama_tujuan.'</option>';

}else if($nama_kapal == "Buku Kesehatan Karantina"){
    echo '<option value ="'.$nama_tujuan.'" selected="selected">'.$nama_tujuan.'</option>';

}
?>