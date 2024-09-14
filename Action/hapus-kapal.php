<?php 
    //Action wajib tambah connection Database
    include("../Connection/config.php");

    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $sql = "DELETE FROM daftar_kapal WHERE id=$id";
        $result = $dbConnection->query($sql);
        if($result)
        {
            header('Location: ../form-list-kapal.php');
        }
        else{
            die("Gagal Hapus!");
        }
    }
    else{
        die("akses dilarang!");
    }
?>
