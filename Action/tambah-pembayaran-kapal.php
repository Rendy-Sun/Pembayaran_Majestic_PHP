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
    }
    $queryCheck = "SELECT * FROM pembayaran_kapal WHERE tanggal_transaksi = '$tanggal_transaksi' AND kapal_id = (SELECT id FROM daftar_kapal WHERE nama_kapal = '$nama_kapal') AND tujuan_pembayaran_id = (SELECT id FROM tujuan_pembayaran WHERE nama_tujuan = '$tujuan_pembayaran') AND trip_id = (SELECT id FROM trip_kapal WHERE waktu = '$trip')";
    $resultCheck = $dbConnection->query($queryCheck);
    if(mysqli_num_rows($resultCheck) > 0)
    {
        echo '<script>alert("Sudah pernah melakukan transaksi di tanggal ini"); location.href="../form-pembayaran-kapal.php";</script>';
    }

    else{
        try{
            $query = "INSERT INTO pembayaran_kapal (kapal_id, tujuan_pembayaran_id, trip_id, status_pembayaran_id, harga, tanggal_transaksi, catatan_transaksi) VALUES((SELECT id FROM daftar_kapal WHERE nama_kapal = '$nama_kapal'), (SELECT id FROM tujuan_pembayaran WHERE nama_tujuan = '$tujuan_pembayaran'), (SELECT id FROM trip_kapal WHERE waktu ='$trip'), (SELECT id FROM status_pembayaran WHERE status='$status_pembayaran'), '$harga', '$tanggal_transaksi', '$catatan_transaksi')";
            $result = $dbConnection->query($query);
            if ($result) {
                header('Location: ../form-pembayaran-kapal.php');
            }
            else {
                die('akses dilarang!');
            }
        }catch(mysqli_sql_exception){
            echo '<script>alert("Error MySql Database"); location.href="../form-pembayaran-kapal.php";</script>';
        }
        
    }
    
?>