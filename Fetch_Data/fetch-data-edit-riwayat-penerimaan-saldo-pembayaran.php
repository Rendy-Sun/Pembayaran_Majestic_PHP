<?php 
    $query= "SELECT * FROM detail_saldo WHERE id=$id_penerimaan";
    $result=$dbConnection->query($query);
    $row_data = mysqli_fetch_array($result);
    $tanggal = $row_data['tanggal_terima'];
    $catatan = $row_data['catatan'];
?>