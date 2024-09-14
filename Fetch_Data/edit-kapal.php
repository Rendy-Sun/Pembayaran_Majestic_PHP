<?php
    //include("../Connection/config.php");
    //getting id from url
    $id=$_GET['id'];
    // fetch user data based on id
    //die($id);
    $sql = "SELECT * FROM daftar_kapal WHERE id=$id";
    $result = mysqli_query($dbConnection,$sql);
    while($row_data = mysqli_fetch_array($result)){
        $id_kapal = $row_data['id'];
        $nama_kapal = $row_data['nama_kapal'];
        $tipe_kapal = $row_data['tipe_kapal_id'];
    }
?>