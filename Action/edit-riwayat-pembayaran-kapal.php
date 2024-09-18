<?php
    include("../Connection/config.php");
    if(isset($_POST['submit'])){
        $id=$_POST['id'];
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