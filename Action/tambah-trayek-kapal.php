<?php
    include("../Connection/config.php");
    if(isset($_POST['submit'])){
        $namaKapal = $_POST['nama_kapal'];
        $berlakuDari = $_POST['dateBerlakuDari'];
        $berlakuSampai = $_POST['dateBerlakuSampai'];
        $nomorTrayek = $_POST['nomorTrayek'];
        $masaDari = date("d-m-Y", strtotime($berlakuDari));
        $masaSampai = date("d-m-Y", strtotime($berlakuSampai));
        $masaBerlaku = $masaDari." - ".$masaSampai;

        $queryCheck = "SELECT * FROM pkka_kapal WHERE kapal_id =(SELECT id FROM daftar_kapal WHERE nama_kapal = '$namaKapal') AND masa_berlaku='$masaBerlaku'";
        $resultCheck = $dbConnection->query($queryCheck);
        $checker=mysqli_num_rows($resultCheck);
        if($checker > 0 ){
            echo '<script>alert("Data Trayek Sudah Ada Untuk Periode Tanggal Ini !"); location.href="../form-tambah-trayek-kapal.php";</script>';
        }else{
            $query="INSERT INTO pkka_kapal (kapal_id, nomor_trayek, berlaku_dari, berlaku_sampai, masa_berlaku) VALUES((SELECT id FROM daftar_kapal WHERE nama_kapal='$namaKapal'), '$nomorTrayek', '$berlakuDari', '$berlakuSampai', '$masaBerlaku')";
            $result = $dbConnection->query($query);
            if($result){
                header('Location: ../form-tambah-trayek-kapal.php');
            }
            else{
                die('GAGAL');
            }
        }
    }
    
     
?>