<?php
    include("Connection/config.php");
?>
<html>
    <head>
        <title>
            Pembayaran Majestic Ferry
        </title>
        <link rel="stylesheet" type="text/css" href="Style/style-form-tambah-trayek-kapal.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <?php
            include("navigationBar-4.html");
        ?>
    </head>
    <body>
        <form action ="Action/tambah-trayek-kapal.php" method="POST">
            <div class="container">
                <header>
                    <h1>Trayek Kapal</h1>
                </header>
                <div class="row">
                    <div class="col-25">
                        <label>Nama Kapal </label>
                    </div>
                    <div class="col-75">
                        <select name="nama_kapal" required>
                            <option hidden value="">Pilih</option>
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
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Berlaku Dari </label>
                    </div>
                    <div class="col-75">
                        <input type="date" name="dateBerlakuDari" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Berlaku Sampai </label>
                    </div>
                    <div class="col-75">
                        <input type="date" name="dateBerlakuSampai" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Nomor Trayek Kapal </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="nomorTrayek" required/>
                    </div>
                </div>
                <div class="row">
                    <input type="submit" name="submitTrayek" id="tambahSubmit" class="submitTambah" value="Tambah"/>
                </div>
            </div>                    
        </form>
    </body>
</html>