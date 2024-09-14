<?php
    include("../Connection/config.php");
    if(isset($_POST["tambah"])){
        $nama_kapal =$_POST["nama_kapal"];
        $tipe_kapal = $_POST["tipe_kapal"];
    }

    $sql = "INSERT INTO daftar_kapal (nama_kapal, tipe_kapal_id) VALUES ('$nama_kapal', (SELECT id FROM tipe_kapal WHERE nama_tipe='$tipe_kapal'))";
    $result = $dbConnection->query($sql);

    if ($result) {
        header('Location: ../form-list-kapal.php');
    }
    else {
        die('akses dilarang!');
    }
?>