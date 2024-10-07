<?php 
    include("../Connection/config.php");
    if(isset($_POST['nama_kapal']))
    {
        $nama_kapal = $_POST['nama_kapal'];
        $query = "SELECT masa_berlaku FROM pkka_kapal WHERE kapal_id = (SELECT id FROM daftar_kapal WHERE nama_kapal='$nama_kapal')";
        $result = $dbConnection->query($query);
        while($row_data = mysqli_fetch_assoc($result)){
            echo '<option value="'.$row_data['masa_berlaku'].'" >'.$row_data['masa_berlaku'].'</option>';
        }


    }
    else{

    }
    
?>
