<?php
    include("../Connection/config.php");
    if(isset($_POST["submitTambahKapal"])){
        $nama_kapal =$_POST["nama_kapal"];
        $tipe_kapal = $_POST["tipe_kapal"];
    }
    $queryCheck = "SELECT * FROM daftar_kapal WHERE nama_kapal = '$nama_kapal'";
    $resultCheck = $dbConnection->query($queryCheck);
    if(mysqli_num_rows($resultCheck)>0)
    {
        echo '<script>alert("Data is already Exist"); location.href="../form-tambah-kapal.php"</script>';
    }
    else{
        $sql = "INSERT INTO daftar_kapal (nama_kapal, tipe_kapal_id) VALUES ('$nama_kapal', (SELECT id FROM tipe_kapal WHERE nama_tipe='$tipe_kapal'))";
        $result = $dbConnection->query($sql);
    
        if ($result) {
            header('Location: ../form-list-kapal.php');
        }
        else {
            die('akses dilarang!');
        }
    }   
?>