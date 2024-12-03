<?php
    include("../Connection/config.php");
    if(isset($_POST['submitTambahPembayaranKapal'])){
        $nama_kapal = $_POST['nama_kapal'];
        $tujuan_pembayaran = $_POST['tujuan_pembayaran'];
        $trip = $_POST['trip_kapal'];
        $status_pembayaran = $_POST['status_pembayaran'];
        $harga = $_POST['harga'];
        $tanggal_transaksi = $_POST['tanggal_transaksi'];
        $catatan_transaksi = $_POST['catatan_pembayaran'];
        $bukti_pembayaran = $_POST['bukti_pembayaran'];
    }
    $queryCheck = "SELECT * FROM pembayaran_kapal WHERE tanggal_transaksi = '$tanggal_transaksi' AND kapal_id = (SELECT id FROM daftar_kapal WHERE nama_kapal = '$nama_kapal') AND tujuan_pembayaran_id = (SELECT id FROM tujuan_pembayaran WHERE nama_tujuan = '$tujuan_pembayaran') AND trip_id = (SELECT id FROM trip_kapal WHERE waktu = '$trip')";
    $resultCheck = $dbConnection->query($queryCheck);
    if(mysqli_num_rows($resultCheck) > 0)
    {
        echo '<script>alert("Sudah pernah melakukan transaksi di tanggal ini"); location.href="../form-pembayaran-kapal.php";</script>';
    }

    else{
        try{
            session_start();
            $username= $_SESSION['username'];
            $password = $_SESSION['password'];

            $query = "INSERT INTO pembayaran_kapal (kapal_id, tujuan_pembayaran_id, trip_id, status_pembayaran_id,user_id, harga, tanggal_transaksi, bukti_pembayaran, catatan_transaksi) VALUES((SELECT id FROM daftar_kapal WHERE nama_kapal = '$nama_kapal'), (SELECT id FROM tujuan_pembayaran WHERE nama_tujuan = '$tujuan_pembayaran'), (SELECT id FROM trip_kapal WHERE waktu ='$trip'), (SELECT id FROM status_pembayaran WHERE status='$status_pembayaran'),(SELECT id FROM users WHERE username='$username' AND password='$password'), '$harga', '$tanggal_transaksi', '$bukti_pembayaran', '$catatan_transaksi')";
            $result = $dbConnection->query($query);
            
            if ($result) {

                $min = 0;
                $max = mt_getrandmax();
                $generateId = mt_rand($min,$max) .$dt->format('Ymdhis');
                $queryCheck6 = "SELECT * FROM mutasi_rekening WHERE id_transaksi = '$generateId'";
                $resultCheck6 = $dbConnection2->query($queryCheck6);
                $rowCheck6 = mysqli_num_rows($resultCheck6);
        
                if($rowCheck6>2){
                    return;
                }else if($rowCheck6 == 0){
                    $query6 = "INSERT INTO mutasi_rekening (id_transaksi, rekening_id, saldo, tanggal, catatan_transaksi, bukti_transaksi) VALUES ('$generateId', (SELECT id FROM daftar_rekening WHERE nama_bank ='DANA'), '$harga', ''";
                }else{
                    die("Error");
                }

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

                $query5 = "UPDATE pembayaran_kapal SET sisa_saldo='$sisa_saldo' WHERE id = (SELECT MAX(id) FROM pembayaran_kapal WHERE user_id=(SELECT id FROM users WHERE username='$username' AND password='$password'))";
                $result5 = $dbConnection->query($query5);
                if($result5){
                    header('Location: ../form-pembayaran-kapal.php');
                }
                else{
                    die("ERROR saldo Awal!");
                }
            }
            else {
                die('akses dilarang!');
            }
        }catch(mysqli_sql_exception $ex){
            echo $ex.'<script>alert("Error MySql Database"); location.href="#";</script>';
        }
        
    }
    
?>