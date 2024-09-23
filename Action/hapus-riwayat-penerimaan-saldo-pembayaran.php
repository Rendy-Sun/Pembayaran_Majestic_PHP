<?php 
    include("../Connection/config.php");

    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $query = "DELETE FROM detail_saldo WHERE id =$id";
        $result = $dbConnection->query($query);
        if($result){
            header('Location: ../form-riwayat-penerimaan-saldo-pembayaran.php');
        }
        else{
            die('Error Menghapus!');
        }
    }
?>