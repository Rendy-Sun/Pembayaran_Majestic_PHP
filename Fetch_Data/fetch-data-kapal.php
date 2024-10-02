<?php
    $imo = "";
    $callSign = "";
    $mmsi = "";
    $bendera = "";
    $kapasitas = "";
    $max = "";
    $depan = "";
    $belakang = "";
    
    if(isset($_POST['nama_kapal'])){
        $namaKapal = $_POST['nama_kapal'];
        $query= "SELECT * FROM data_kapal WHERE kapal_id = (SELECT id FROM daftar_kapal WHERE nama_kapal='$namaKapal')";
        $result = $dbConnection->query($query);
        $data = mysqli_fetch_array($result);
        $imo = $data['imo'];
        $callSign = $data['call_sign'];
        $mmsi = $data['mmsi'];
        $bendera = $data['bendera'];
        $kapasitas = $data['kapasitas_penumpang'];
        $max = $data['draft_max'];
        $depan = $data['draft_depan'];
        $belakang = $data['draft_belakang'];
    }
?>