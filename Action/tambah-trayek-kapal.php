<?php
    include("../Connection/config.php");
    if(isset($_POST['submitTrayek'])){
        $namaKapal = $_POST['nama_kapal'];
        $berlakuDari = $_POST['dateBerlakuDari'];
        $berlakuSampai = $_POST['dateBerlakuSampai'];
        $nomorTrayek = $_POST['nomorTrayek'];
        $masaDari = date("n/j/Y", strtotime($berlakuDari));
        $masaSampai = date("n/j/Y", strtotime($berlakuSampai));
        $masaBerlaku = $masaDari." - ".$masaSampai;
    }
    $query="INSERT INTO pkka_kapal (kapal_id, nomor_trayek, berlaku_dari, berlaku_sampai, masa_berlaku) VALUES((SELECT id FROM daftar_kapal WHERE nama_kapal='$namaKapal'), '$nomorTrayek', '$berlakuDari', '$berlakuSampai', '$masaBerlaku')";
    $result = $dbConnection->query($query);
    if($result){
        header('Location: ../form-tambah-trayek-kapal.php');
    }
    else{
        die('GAGAL');
    }
?>