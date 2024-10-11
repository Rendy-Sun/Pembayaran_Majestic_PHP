<?php
    include("../Connection/config.php");
    if(isset($_POST['submitTrayek'])){
        $idEdit = $_POST['idTrayek'];
        $berlakuDari = $_POST['dateBerlakuDari'];
        $berlakuSampai = $_POST['dateBerlakuSampai'];
        $nomorTrayek = $_POST['nomorTrayek'];
        $masaDari = date("d-m-Y", strtotime($berlakuDari));
        $masaSampai = date("d-m-Y", strtotime($berlakuSampai));
        $masaBerlaku = $masaDari." - ".$masaSampai;
    }
    $query = "UPDATE pkka_kapal SET berlaku_dari ='$berlakuDari', berlaku_sampai='$berlakuSampai', nomor_trayek='$nomorTrayek', masa_berlaku='$masaBerlaku' WHERE id='$idEdit'";
    $result = $dbConnection->query($query);
    if($result){
        header('Location: ../form-daftar-trayek-kapal.php');
    }
    else{
        die('GAGAL');
    }
?>