<?php
    include("../Connection/config.php");
    if(isset($_POST['submitUpdateRiwayatPembayaran'])){
        $id_pembayaran= $_POST['id'];
        $nama_kapal = $_POST['nama_kapal'];
        $tujuan_pembayaran = $_POST['tujuan_pembayaran'];
        $trip = $_POST['trip_kapal'];
        $status_pembayaran = $_POST['status_pembayaran'];
        $harga = $_POST['harga'];
        $tanggal_transaksi = $_POST['tanggal_transaksi'];
        $catatan_transaksi = $_POST['catatan_pembayaran'];
    }
    $query = "UPDATE pembayaran_kapal SET kapal_id=(SELECT id FROM daftar_kapal WHERE nama_kapal = '$nama_kapal'), tujuan_pembayaran_id = (SELECT id FROM tujuan_pembayaran WHERE nama_tujuan = '$tujuan_pembayaran'), status_pembayaran_id = (SELECT id FROM status_pembayaran WHERE status = '$status_pembayaran'), trip_id = (SELECT id FROM trip_kapal WHERE waktu = '$trip'), harga = '$harga', tanggal_transaksi = '$tanggal_transaksi', catatan_transaksi='$catatan_transaksi' WHERE id = $id_pembayaran";
    $result = mysqli_query($dbConnection,$query);
    if($result)
    {
        header('Location:../form-riwayat-pembayaran-kapal.php');
    }
    else
    {
        die('GAGAL!');
    }
?>