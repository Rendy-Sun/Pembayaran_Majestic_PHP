<?php
    include("../Connection/config.php");
    if(isset($_POST['submitUpdateKapal'])){
        $id=$_POST['id'];
        $nama_kapal = $_POST['nama_kapal'];
        $tipe_kapal = $_POST['tipe_kapal'];
    }
    $queryCheck = "SELECT * FROM daftar_kapal WHERE nama_kapal = '$nama_kapal'";
    $resultCheck = $dbConnection->query($queryCheck);
    $checker = mysqli_num_rows($resultCheck);
    if($checker > 0)
    {
        echo '<script>alert("Data is already Exist"); location.href="../form-list-kapal.php"</script>';
    }else{
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
    }
?>