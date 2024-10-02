<?php 
include("../Connection/config.php");
if(isset($_POST['submitData']))
{
    $nama_kapal = $_POST['nama_kapal'];
    $imo = $_POST['imo'];
    $call_sign = $_POST['call_sign'];
    $mmsi = $_POST['mmsi'];
    $bendera = $_POST['bendera'];
    $kapasitas = $_POST['kapasitas'];
    $max = $_POST['max'];
    $depan = $_POST['depan'];
    $belakang = $_POST['belakang'];

    $query = "UPDATE data_kapal SET imo='$imo', call_sign='$call_sign', mmsi='$mmsi', bendera='$bendera', kapasitas_penumpang = '$kapasitas', draft_max = '$max', draft_depan='$depan', draft_belakang='$belakang' WHERE kapal_id=(SELECT id FROM daftar_kapal WHERE nama_kapal ='$nama_kapal')";
    $result=$dbConnection->query($query);
    if($result)
    {
        header('Location:../form-data-kapal.php');
    }
    else
    {
        die('GAGAL!');
    }    
}                            
?>