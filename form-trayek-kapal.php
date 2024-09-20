<?php
    include("Connection/config.php");
?>
<html>
    <head>
        <title>
            Pembayaran Majestic Ferry
        </title>
        <link rel="stylesheet" type="text/css" href="Style/navigationBar.css"/>
        <link rel="stylesheet" type="text/css" href="Style/form-trayek-kapal.css"/>
        <nav class="navigation">
            <?php include("navigationBar.php");?>
        </nav>
    </head>
    <body>
        <form action ="#" method="POST">
            <div class="container">
                <header>
                    <h1>Trayek Kapal</h1>
                </header>
                <div class="row">
                    <div class="col-25">
                        <label>Nama Kapal </label>
                    </div>
                    <div class="col-75">
                        <select name="nama_kapal">
                            <option>Pilih</option>
                            <?php 
                                //include("Fetch_Data/nama-kapal-option.php");
                                $query = "SELECT * FROM daftar_kapal";
                                $result = $dbConnection->query($query);
                                while($row_data = mysqli_fetch_array($result)){
                                    echo '<option value="'.$row_data['nama_kapal'].'">'.$row_data['nama_kapal'].'</option>';
                                    if($_POST['nama_kapal'] == $row_data['nama_kapal'])
                                    {
                                        echo '<option hidden value="'.$row_data['nama_kapal'].'" selected >'.$row_data['nama_kapal'].'</option>';
                                    }
                                }
                            ?>
                        </select>
                        <input type="submit" name="submitCekMasaBerlaku" value="Cek"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Masa Berlaku </label>
                    </div>
                    <div class="col-75">
                        <select name="masa_berlaku">
                            <option>Pilih</option>
                            <?php 
                                include("Action/cek-masa-berlaku-trayek-kapal.php");
                            ?>
                        </select>
                        <input type="submit" name="submitCekNomorTrayek"value="Cek"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Nomor Trayek Kapal </label>
                    </div>
                    <div class="col-75">
                        <input type="text" value="<?php include("Action/cek-nomor-trayek-kapal.php"); ?>" disabled="disabled"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Nomor MMSI Kapal </label>
                    </div>
                    <div class="col-75">
                        <input type="text" value="<?php include("Action/cek-mmsi-kapal.php"); ?>" disabled="disabled"/>
                    </div>
                </div>
            </div>                    
        </form>
    </body>
</html>