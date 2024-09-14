<?php
    include("../Connection/config.php");
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $query = "DELETE FROM pembayaran_kapal WHERE id=$id";
        $result = $dbConnection->query($query);

        if($result){
            header('Location: ../form-riwayat-pembayaran-kapal.php');
        }
        else{
            die('Error Menghapus!');
        }
    }else{
        die("Akses dilarang");
    }
?>