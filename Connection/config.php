<?php
$server = "localhost";
$user = "root";
$password = "";
$database_name ="catatan_pembayaran";
$database2_name = "catatan_keuangan";

$dbConnection = new mysqli($server,$user,$password,$database_name);
$dbConnection2 = new mysqli($server,$user,$password,$database2_name);

if($dbConnection->connect_error)
{
    die("Connection to Database Failed! :". $dbConnection->connect_error);
}
if($dbConnection2->connect_error)
{
    die("Connection to Database Failed! :". $dbConnection2->connect_error);
}
//echo '<script>alert("Connected to Database!")</script>'
?>
