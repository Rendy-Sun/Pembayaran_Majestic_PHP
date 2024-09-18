<?php 
    include("Fetch_Data/nama-kapal-option.php");
    include("Fetch_Data/edit-riwayat-pembayaran-kapal.php");
    $query = "SELECT * FROM pembayaran_kapal INNER JOIN daftar_kapal ON pembayaran_kapal.kapal_id = daftar_kapal.id WHERE pembayaran_kapal.id = $id_pembayaran";
    $result = $dbConnection->query($query);
    while($row_data = mysqli_fetch_array($result)){
        $nama_kapal = $row_data['nama_kapal'];
    }
    if($nama_kapal == "WM 3"){
        echo '<option value ="'.$nama_kapal.'" selected="selected">'.$nama_kapal.'</option>';
    }else if($nama_kapal == "WM 5"){
        echo '<option value ="'.$nama_kapal.'" selected="selected">'.$nama_kapal.'</option>';

    }else if($nama_kapal == "WM 6"){
        echo '<option value ="'.$nama_kapal.'" selected="selected">'.$nama_kapal.'</option>';

    }else if($nama_kapal == "WM 7"){
        echo '<option value ="'.$nama_kapal.'" selected="selected">'.$nama_kapal.'</option>';

    }else if($nama_kapal == "WM 8"){
        echo '<option value ="'.$nama_kapal.'" selected="selected">'.$nama_kapal.'</option>';

    }else if($nama_kapal == "WM 9"){
        echo '<option value ="'.$nama_kapal.'" selected="selected">'.$nama_kapal.'</option>';

    }else if($nama_kapal == "MAJESTIC ULTIMATE"){
        echo '<option value ="'.$nama_kapal.'" selected="selected">'.$nama_kapal.'</option>';

    }else if($nama_kapal == "MAJESTIC BLISS"){
        echo '<option value ="'.$nama_kapal.'" selected="selected">'.$nama_kapal.'</option>';
    }                         
?>