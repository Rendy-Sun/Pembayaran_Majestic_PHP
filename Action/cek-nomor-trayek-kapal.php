<?php 
    //include("../Connection/config.php");
    if(isset($_POST['submitCekNomorTrayek']))
    {
        $nama_kapal = $_POST['nama_kapal'];
        $masa_berlaku = $_POST['masa_berlaku'];
        $query = "SELECT * FROM pkka_kapal WHERE kapal_id = (SELECT id FROM daftar_kapal WHERE nama_kapal='$nama_kapal') AND masa_berlaku = '$masa_berlaku'";
        $result = $dbConnection->query($query);
        while($row = mysqli_fetch_array($result))
        {
            $now = date('Y-m-d');
            $expired =$row['berlaku_sampai'];
            $id=$row['id'];
            if($now > $expired)
            {
                $deleteQuery = "DELETE FROM pkka_kapal WHERE id=$id";
                $resultDelete = $dbConnection->query($deleteQuery);
                if($result){
                    echo 'Expired';
                }else{
                    echo 'error menghapus!';
                }
            }
            else{
                echo $row['nomor_trayek'];
            }
        }    
            
    }
    else{

    }  
?>
