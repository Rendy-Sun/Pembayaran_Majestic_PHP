<?php
    include("Connection/config.php");
?>
<html>
    <head>
        <title>
            Pembayaran Majestic Ferry
        </title>
        <link rel="stylesheet" type="text/css" href="Style/style-navigationBar.css"/>
        <link rel="stylesheet" type="text/css" href="Style/containerForm.css"/>
        <nav class="navigation">
            <?php include("navigationBar.php");?>
        </nav>
    </head>
    <body>


        <form action ="Action/edit-kapal.php" method="POST">
            <p>
                <input type="hidden" name="id" value="<?php include("Fetch_Data/edit-kapal.php");echo $id_kapal;?>"/>
            </p>
            <div class="container">
                <header>
                    <h1>Edit Kapal</h1>
                </header>
                <div class="row">
                    <div class="col-25">
                        <label>Nama Kapal </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="nama_kapal" required value="<?php include("Fetch_Data/edit-kapal.php");echo $nama_kapal;?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Tipe Kapal: </label>
                    </div>
                    <div class="col-75">
                        <select name="tipe_kapal" required>
                            <?php
                                $sql = "SELECT * FROM daftar_kapal INNER JOIN tipe_kapal ON daftar_kapal.tipe_kapal_id = tipe_kapal.id WHERE daftar_kapal.id=$id_kapal ";
                                $result = $dbConnection->query($sql);
                                while($row = mysqli_fetch_array($result))
                                {
                                    $nama_kapal = $row['nama_tipe'];
                                }
                                $sqlSelected = "SELECT * FROM tipe_kapal";
                                $resultSelected = $dbConnection->query($sqlSelected);
                                while ($rowSelected = mysqli_fetch_array($resultSelected)) {
                                    echo '<option value ="'.$rowSelected["nama_tipe"].'">'. $rowSelected["nama_tipe"] .'</option>';
                                    if($nama_kapal == $rowSelected['nama_tipe']){
                                        echo '<option hidden value ="'.$rowSelected["nama_tipe"].'" selected="selected">'. $rowSelected["nama_tipe"] .'</option>';
                                    }
                                }
                            ?>  
                        </select>
                    </div>
                </div>
                <div class="row">
                    <input type="submit" name="submitUpdateKapal" value="Update Kapal"/>
                </div>
            </div>                    
        </form>
    </body>
</html>