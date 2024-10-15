<?php 
    $id = $_GET['id'];
    $query = "SELECT * FROM riwayat_topup WHERE id = '$id'";
    $result = $dbConnection->query($query);
    while($row=mysqli_fetch_array($result)){
        $topup = $row['saldo'];
        $bukti = $row['bukti_topup'];
        $date = $row['tanggal_topup'];
        $catatan = $row['catatan'];
    }
?>