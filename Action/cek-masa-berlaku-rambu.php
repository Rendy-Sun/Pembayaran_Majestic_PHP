<?php
    if(isset($_POST['nama_kapal'])){
        $nama_kapal = $_POST['nama_kapal'];
        $queryRambu = "SELECT berlaku_sampai FROM rambu_kapal WHERE kapal_id=(SELECT id FROM daftar_kapal WHERE nama_kapal='$nama_kapal')";
        $resultRAMBU = $dbConnection->query($queryRambu);
        while($row = mysqli_fetch_array($resultRAMBU)){
            $expired = $row['berlaku_sampai'];
        }
        $now = date('Y-m-d');
        //$remain = date('Y-m-d', strtotime('-3 days'));
        if($now >= $expired)
        {
            echo "Expired";
        }
        else{
            echo $expired;
        }
    }
?>