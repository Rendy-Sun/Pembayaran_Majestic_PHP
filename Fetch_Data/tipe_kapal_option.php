<?php
    $sql = "SELECT * FROM tipe_kapal";
    $result = $dbConnection->query($sql);
    while ($row = mysqli_fetch_array($result)) {
        echo '<option value ="'.$row["nama_tipe"].'">'. $row["nama_tipe"] .'</option>';

    }
    //mengambil value dari select option
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $selected_val = $_POST['tipe_kapal'];
    }
?>