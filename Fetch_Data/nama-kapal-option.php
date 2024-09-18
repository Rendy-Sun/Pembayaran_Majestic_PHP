<?php
    $query = "SELECT * FROM daftar_kapal";
    $result = $dbConnection->query($query);
    while($row_data = mysqli_fetch_array($result)){
        echo '<option value="'.$row_data['nama_kapal'].'" >'.$row_data['nama_kapal'].'</option>';
    }
    
    if($_SERVER['REQUEST_METHOD']=="POST")
    {
        $selectedValue=$_POST['nama_kapal'];
    }
?>