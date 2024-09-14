<?php
    $sql = "SELECT * FROM tipe_kapal";
    $result = $dbConnection->query($sql);
    while ($row = mysqli_fetch_array($result)) {
        //selected itu untuk menampilkan value yang di ambil dari database misal kalau dari database wavemaster maka yg di set nanti di select option adalah wavemaster
        echo '<option value ="'.$row["nama_tipe"].'" selected="selected">'. $row["nama_tipe"] .'</option>';
    }
    //mengambil value dari select option
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $selected_val = $_POST['tipe_kapal'];
    }
?>