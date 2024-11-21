<?php 
    include("../Connection/config.php");
    if(isset($_POST['submit'])){
        $nama_awak = $_POST['nama_awak'];
        $jenis_kelamin = $_POST['jenis_kelamin'];
        $tanggal_lahir = $_POST['tanggal_lahir'];
        $kebangsaan = $_POST['kebangsaan'];
        $no_buku_pelaut = $_POST['no_buku_pelaut'];
        $expired_buku_pelaut = $_POST['expired_buku_pelaut'];
        $jabatan = $_POST['jabatan_kapal'];
        $kode_pelaut = $_POST['kode_pelaut'];
        $no_pkl = $_POST['no_pkl'];
        $tanggal_sign_on = $_POST['tanggal_sign_on'];
        $sertifikat_ijazah_pelaut = $_POST['sertifikat_ijazah_pelaut'];
        $no_sertifikat_ijazah_pelaut = $_POST['no_sertifikat_ijazah_pelaut'];
        $passpor_wna = $_POST['passport_wna'];
        $vaksin = $_POST['vaksin'];

        $queryCheck = "SELECT * FROM kru_kapal WHERE nama_awak = '$nama_awak'";
        $resultCheck = $dbConnection->query($queryCheck);
        if(mysqli_num_rows($resultCheck)>0){
            echo '<script>alert("Awak Kapal Sudah Pernah Di Tambah!"); location.href="../form-tambah-kru-kapal.php"</script>';
        }
        else{
            $query = "INSERT INTO kru_kapal (nama_awak, jenis_kelamin, tanggal_lahir, kebangsaan, no_buku_pelaut, expired_buku_pelaut, jabatan, kode_pelaut, no_PKL, tanggal_sign_on, sertifikat_ijazah_pelaut, no_sertifikat_ijazah_pelaut, passpor_wna, vaksin) VALUES('$nama_awak', '$jenis_kelamin', '$tanggal_lahir', '$kebangsaan', '$no_buku_pelaut', '$expired_buku_pelaut', (SELECT id FROM jabatan_kru WHERE nama_jabatan='$jabatan'), '$kode_pelaut','$no_pkl', '$tanggal_sign_on', '$sertifikat_ijazah_pelaut', '$no_sertifikat_ijazah_pelaut', '$passpor_wna', '$vaksin' )";
            $result = $dbConnection->query($query);
            if ($result) {
                header('Location: ../form-tambah-kru-kapal.php');
            }
            else {
                die('akses dilarang!');
            }
        }   
    }
?>