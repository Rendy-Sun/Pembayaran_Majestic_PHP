<?php
    include("../Connection/config.php");
    if(isset($_POST['nama_kapal'])){
        $nama_kapal = $_POST['nama_kapal'];
        $imo = $_POST['imo'];
        $call_sign = $_POST['call_sign'];
        $mmsi = $_POST['mmsi'];
        $bendera = $_POST['bendera'];
        $kapasitas = $_POST['kapasitas'];
        $max = $_POST['max'];
        $depan = $_POST['depan'];
        $belakang = $_POST['belakang'];
        
        $queryCheck = "SELECT * FROM data_kapal WHERE kapal_id = (SELECT id FROM daftar_kapal WHERE nama_kapal= '$nama_kapal')";
        $resultCheck = $dbConnection->query($queryCheck);
        $row = mysqli_fetch_array($resultCheck);
        if($row > 0 ){
            echo '<script>alert("Data Kapal ini Sudah pernah di tambah !"); location.href="../form-tambah-data-kapal.php"</script>';
        }else{
            $query = "INSERT INTO data_kapal (kapal_id, imo, call_sign, mmsi, bendera, kapasitas_penumpang, draft_max, draft_depan, draft_belakang) VALUES ((SELECT id FROM daftar_kapal WHERE nama_kapal = '$nama_kapal'), '$imo', '$call_sign', '$mmsi', '$bendera', '$kapasitas', '$max', '$depan', '$belakang')";
            $result = $dbConnection->query($query);
            if($result) {
                header('Location: ../form-tambah-data-kapal.php');
            }
            else {
                die('akses dilarang!');
            }
        }       
    }
?>