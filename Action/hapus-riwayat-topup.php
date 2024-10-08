<?php
    include("../Connection/config.php");
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $query = "DELETE FROM riwayat_topup WHERE id=$id";
        $result = $dbConnection->query($query);
        if($result){
            header('Location: ../form-riwayat-topup.php');
        }
        else{
            die('Error Menghapus!');
        }
    }else{
        die("Akses dilarang");
    }
?>