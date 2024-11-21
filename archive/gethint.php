<?php
include("Connection/config.php");
// Array with names
$query = "SELECT nama_tujuan FROM tujuan_pembayaran";
$result = $dbConnection->query($query);
$kapal = array();
while($row = mysqli_fetch_array($result)){
    $kapal[] = $row['nama_tujuan'];
}
// get the q parameter from URL
$q = $_REQUEST["q"];

$hint = "";

// lookup all hints from array if $q is different from ""
if ($q !== "") {
    $q = strtolower($q);
    $len=strlen($q);
    foreach($kapal as $name) {
        if (stristr($q, substr($name, 0, $len))) {
            if ($hint === "") {
                $hint = $name;
            } else {
                $hint .= ", $name";
            }
        }
    }
}

// Output "no suggestion" if no hint was found or output correct values
echo $hint === "" ? "no suggestion" : $hint;
?>