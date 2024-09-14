<?php 
    $query = "SELECT * FROM tujuan_pembayaran";
    $result = $dbConnection->query($query);
    while($row_data = mysqli_fetch_array($result))
    {
        echo '<option value="'.$row_data['nama_tujuan'].'">'.$row_data['nama_tujuan'].'</option>';
    }

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $selectedValue = $_POST['tujuan_pembayaran'];
    }
?>