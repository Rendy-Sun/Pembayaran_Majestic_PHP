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
        $query= "INSERT INTO riwayat_topup (user_id, saldo, bukti_topup, tanggal_topup, catatan, sisa_saldo) VALUES ((SELECT id FROM users WHERE username='$username' AND password='$password'), '$topup', '$bukti', '$now', '$catatan', 'sisa_saldo')";
        $result = $dbConnection->query($query);
        //$query = "UPDATE users SET saldo='$sisasaldo' WHERE id=(SELECT id FROM users WHERE username='$username' AND password='$password')";
        //$result= $dbConnection->query($query); 
        if($result){
            $query2= "SELECT saldo FROM users WHERE username = '$username' AND password='$password'";
            $result2 = $dbConnection->query($query2);
            $row2 = mysqli_fetch_array($result2);
            
            $query3= "SELECT SUM(harga) AS harga FROM pembayaran_kapal WHERE user_id = (SELECT id FROM users WHERE username='$username' AND password='$password')";
            $result3 = $dbConnection->query($query3);
            $row3 = mysqli_fetch_array($result3);
    
            $query4 = "SELECT SUM(saldo) AS topup FROM riwayat_topup WHERE user_id = (SELECT id FROM users WHERE username='$username' AND password='$password')";
            $result4 = $dbConnection->query($query4);
            $row4 = mysqli_fetch_array($result4);
    
            $sisa_saldo = ($row2['saldo'] + $row4['topup']) - $row3['harga'];     
            
            $query5 = "UPDATE riwayat_topup SET sisa_saldo = '$sisa_saldo' WHERE id = (SELECT MAX(id) FROM riwayat_topup WHERE user_id=(SELECT id FROM users WHERE username='$username' AND password='$password'))";
            $result5 = $dbConnection->query($query5);
            if($result5)
            {
                header("Location: ../form-list-kapal.php");
            }else{

            }
        }
        else{

        }
    }
?>