<?php 
    session_start();
    if($_SESSION['username'] == null || $_SESSION['password']== null)
    {
        header("Location: form-login.php");
    }
    else{
        $username=$_SESSION['username'];
        $password = $_SESSION['password'];
        //saldo awal
        $query = "SELECT saldo FROM users WHERE id=(SELECT id FROM users WHERE username='$username' AND password='$password')";
        $result = $dbConnection->query($query);
        $data = mysqli_fetch_array($result);
    
        $query2 = "SELECT SUM(harga) AS mutasi FROM pembayaran_kapal WHERE user_id=(SELECT id FROM users WHERE username='$username' AND password='$password')";
        $result2 = $dbConnection->query($query2);
        $data2 = mysqli_fetch_array($result2);
        $saldo = $data['saldo'];
        //saldo topup
        $query3 = "SELECT SUM(saldo) AS topup FROM riwayat_topup WHERE user_id=(SELECT id FROM users WHERE username='$username' AND password='$password')";
        $result3 = $dbConnection->query($query3);
        $data3 = mysqli_fetch_array($result3);
        $topup = $data3['topup'];
        $sisaSaldo = ($saldo+$topup) - $data2['mutasi'];
        $_SESSION['saldo_awal'] = $sisaSaldo;
    }
    
?>