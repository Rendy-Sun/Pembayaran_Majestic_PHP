<?php 
    $nama_kapal = $_POST['nama_kapal'];
    $query = "SELECT masa_berlaku FROM trayek_kapal WHERE kapal_id = (SELECT id FROM daftar_kapal WHERE nama_kapal = '$nama_kapal')";
    $result = $dbConnection->query($query);
    while($row_data = mysqli_fetch_array($result)){
        $id_pembayaran = $row_data['masa_berlaku'];
    }
?>