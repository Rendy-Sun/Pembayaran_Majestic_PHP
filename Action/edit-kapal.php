<?php
    include("../Connection/config.php");
    if(isset($_POST['submit'])){
        $id=$_POST['id'];
        $nama_kapal = $_POST['nama_kapal'];
        $tipe_kapal = $_POST['tipe_kapal'];
    }
    $query = "UPDATE daftar_kapal SET nama_kapal='$nama_kapal', tipe_kapal_id=(SELECT id FROM tipe_kapal WHERE nama_tipe = '$tipe_kapal') WHERE id = $id";
    $result = mysqli_query($dbConnection,$query);
    if($result)
    {
        header('Location:../form-list-kapal.php');
    }
    else
    {
        die('GAGAL!');
    }
?>