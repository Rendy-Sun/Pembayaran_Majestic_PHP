<?php 
    //Action wajib tambah connection Database
    include("../Connection/config.php");

    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $sql = "DELETE FROM pkka_kapal WHERE id=$id";
        $result = $dbConnection->query($sql);
        if($result)
        {
            header('Location: ../form-daftar-trayek-kapal.php');
        }
        else{
            die("Gagal Hapus!");
        }
    }
    else{
        die("akses dilarang!");
    }
?>
