<?php 
include("../Connection/config.php");
    if(isset($_POST['submit'])){
        $topup = $_POST['top_up'];
        $saldo = $_POST['saldo'];
        $bukti = $_POST['bukti_topup'];
        $catatan = $_POST['catatan'];
        session_start();
        $username = $_SESSION['username'];
        $password = $_SESSION['password'];
        //$sisasaldo = $saldo + $topup;
        $now = date("Y-m-d");
        $query= "INSERT INTO riwayat_topup (user_id, saldo, bukti_topup, tanggal_topup, catatan) VALUES ((SELECT id FROM users WHERE username='$username' AND password='$password'), '$topup', '$bukti', '$now', '$catatan')";
        $result = $dbConnection->query($query);
        //$query = "UPDATE users SET saldo='$sisasaldo' WHERE id=(SELECT id FROM users WHERE username='$username' AND password='$password')";
        //$result= $dbConnection->query($query); 
        if($result){
            
            header("Location: ../form-list-kapal.php");
        }
        else{

        }
    }
?>