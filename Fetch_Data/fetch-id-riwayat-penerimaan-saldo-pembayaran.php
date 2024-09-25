<?php 
    $id =$_GET['id'];
    $query = "SELECT * FROM detail_saldo WHERE id=$id";
    $result=$dbConnection->query($query);
    while($row_data = mysqli_fetch_array($result)){
        $id_penerimaan = $row_data['id'];
    }
?>