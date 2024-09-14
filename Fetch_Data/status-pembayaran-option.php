<?php
    $query="SELECT * FROM status_pembayaran";
    $result = $dbConnection->query($query);
    while($row_data = mysqli_fetch_array($result))
    {
        echo '<option value="'.$row_data['status'].'">'.$row_data['status'].'</option>';
    }

    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $selectedValue = $_POST['status_pembayaran'];
    }
?>