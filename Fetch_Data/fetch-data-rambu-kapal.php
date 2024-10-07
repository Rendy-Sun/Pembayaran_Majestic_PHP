<?php 
    if(isset($_POST['nama_kapal'])){
        $nama_kapal=$_POST['nama_kapal'];
        $query="SELECT * FROM rambu_kapal WHERE kapal_id=(SELECT id FROM daftar_kapal WHERE nama_kapal='$nama_kapal')";
        $result=$dbConnection->query($query);
        while($row = mysqli_fetch_array($result)){
            $berlaku_dari = $row['berlaku_dari'];
            $berlaku_sampai = $row['berlaku_sampai'];
        }
    }
?>