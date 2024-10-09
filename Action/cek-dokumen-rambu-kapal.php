<?php
$dokumen_kapal = ""; 
if(isset($_POST['submitCekNomorTrayek']))
{
    $nama_kapal = $_POST['nama_kapal'];
    $query = "SELECT dokumen_rambu FROM rambu_kapal WHERE kapal_id=(SELECT id FROM daftar_kapal WHERE nama_kapal ='$nama_kapal')";
    $result = $dbConnection->query($query);
    while($row = mysqli_fetch_array($result))
    {
        $dokumen_kapal = $row['dokumen_rambu'];
    }
}
else{

}  
?>