<?php
    $query = "SELECT * FROM trip_kapal";
    $result = $dbConnection->query($query);

    while($row_data = mysqli_fetch_array($result)){
        //selected itu untuk menampilkan value yang di ambil dari database misal kalau dari database wavemaster maka yg di set nanti di select option adalah wavemaster
        echo '<option value="'.$row_data['waktu'].'">'.$row_data['waktu'].'</option>';
    }

    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $selectedValue = $_POST['trip_kapal'];
    }
?>