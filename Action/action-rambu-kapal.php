<?php
include("../Connection/config.php");
    if(isset($_POST['Tambah'])){
        $nama_kapal = $_POST['kapalSelected'];
        $dari= $_POST['dateDari'];
        $sampai = $_POST['dateSampai'];
        $dokumen_rambu = $_POST['dokumen_rambu'];
        $queryCheck = "SELECT * FROM rambu_kapal WHERE kapal_id = (SELECT id FROM daftar_kapal WHERE nama_kapal = '$nama_kapal')";
        $resultCheck = $dbConnection->query($queryCheck);
        $row = mysqli_num_rows($resultCheck);
        if($row > 0){
            echo '<script>alert("Rambu Kapal ini Sudah Pernah di Tambah !"); location.href="../form-rambu-kapal.php"</script>';
        }
        else{
            $query = "INSERT INTO rambu_kapal (kapal_id, berlaku_dari, berlaku_sampai, masa_berlaku, dokumen_rambu) VALUES ((SELECT id FROM daftar_kapal WHERE nama_kapal='$nama_kapal'), '$dari', '$sampai', '$dari', '$dokumen_rambu')";
            $result= $dbConnection->query($query);
            if($result){
                header('Location: ../form-rambu-kapal.php');
            }else{
                echo '<script>alert("Data Tidak Boleh Kosong !"); location.href="../form-rambu-kapal.php"</script>';
            }
        }
       
    }
    if(isset($_POST['Edit'])){
        include("token.php");
        $nama_kapal = $_POST['kapalSelected'];
        $dari= $_POST['dateDari'];
        $sampai = $_POST['dateSampai'];
        $dokumen_rambu = $_POST['dokumen_rambu'];
        $query="UPDATE rambu_kapal SET berlaku_dari='$dari', berlaku_sampai='$sampai', masa_berlaku='$dari', dokumen_rambu='$dokumen_rambu' WHERE id = (SELECT id FROM rambu_kapal WHERE kapal_id=(SELECT id FROM daftar_kapal WHERE nama_kapal='$nama_kapal'))";
        $result= $dbConnection->query($query);
        if($result){
            header('Location: ../form-rambu-kapal.php');
        }else{
        }
    }
?>