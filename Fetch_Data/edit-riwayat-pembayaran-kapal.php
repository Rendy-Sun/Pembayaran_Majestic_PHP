<?php 
    $id =$_GET['id'];
    $query = "SELECT * FROM pembayaran_kapal WHERE id = $id";
    $result=$dbConnection->query($query);
    while($row_data = mysqli_fetch_array($result)){
        $id_pembayaran = $row_data['id'];
    }
    

?>