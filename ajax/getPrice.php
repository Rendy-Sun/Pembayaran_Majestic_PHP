<?php
include("../Connection/config.php");
// Array with names
$query = "SELECT nama_tujuan FROM tujuan_pembayaran";
$result = $dbConnection->query($query);
while($row = mysqli_fetch_array($result)){
    $kapal = $row['nama_tujuan'];
}
// get the q parameter from URL
$getTujuan = $_REQUEST["tujuan_pembayaran"];
$getKapal = $_REQUEST["nama_kapal"];
$getPrice = "";

if ($getTujuan != "" && $getKapal !="") {
    $query2 = "SELECT nama_tipe FROM daftar_kapal INNER JOIN tipe_kapal ON daftar_kapal.tipe_kapal_id = tipe_kapal.id WHERE nama_kapal = '$getKapal'";
    $result2 = $dbConnection->query($query2);
    $row2 = mysqli_fetch_array($result2);
    $tipeKapal = $row2["nama_tipe"];
    if($tipeKapal < "350"){
        if($getTujuan == "COP Karantina"){
            $getPrice = "70000";
        }
        else if($getTujuan == "PHQC Karantina")
        {
            $getPrice = "30000";
        }
        else if($getTujuan == "PNBP LABUH")
        {
            $getPrice = "350658";
        }
        else if($getTujuan == "Buku Kesehatan Karantina")
        {
            $getPrice = "100000";
        }
        else
        {
            echo "document.getElementById('harga').readOnly=false;"
        }
    }else if($tipeKapal < "1000"){
        if($getTujuan == "COP Karantina"){
            $getPrice = "85000";
        }else if($getTujuan == "PHQC Karantina"){
            $getPrice = "35000";
        }
    }
    
}

// Output "no suggestion" if no hint was found or output correct values
echo $getPrice === "" ? "0" : $getPrice;
?>