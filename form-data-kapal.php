<?php
    include("Connection/config.php");
?>
<html>
    <head>
        <title>Data Kapal</title>
        <link rel="stylesheet" href="Style/style-form-data-kapal.css"/>
        <?php 
            include("navigationBar-3.html")
        ?>
    </head>
    <body>
        <div class="container">
        <form action="#" method="POST">
            <header><h2>Data Kapal</h2></header>
                <div class="row">
                    <div class="column-1">
                        <label>Nama Kapal</label>
                    </div>
                    <div class="column-2">
                        <select name="nama_kapal" onchange="this.form.submit()">
                            <option hidden>Pilih Nama Kapal</option>
                            <?php 
                                $query = "SELECT nama_kapal FROM daftar_kapal";
                                $result = $dbConnection->query($query);
                                while($row = mysqli_fetch_array($result)){
                                    echo '<option value="'.$row['nama_kapal'].'">'.$row['nama_kapal'].'</option>';
                                    if($_POST['nama_kapal'] == $row['nama_kapal']){
                                        echo '<option value="'.$row['nama_kapal'].'" selected="selected" hidden>'.$row['nama_kapal'].'</option>';
                                    }
                                }
                            ?>
                        </select>
                    </div>
                </div>
        </form>
        <form action="Action/edit-data-kapal.php" method="POST">
        <div class="row">
            <div class="subcolumn-1">
                <label>IMO</label>
                </div>
                    <div class="subcolumn-2">
                        <input type="text" nama="imo_kapal"  value="<?php include("Fetch_Data/fetch-data-kapal.php");echo $imo;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Call Sign</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="text" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $callSign;?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>MMSI</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="text" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $mmsi;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Bendera</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="text" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $bendera;?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Kapasitas Penumpang</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="text" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $kapasitas;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Draft MAX</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="text" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $max;?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Draft Depan</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="text" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $depan;?>"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Draft Belakang</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="text" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $belakang;?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                    </div>
                    <div class="subcolumn-2">
                        <input type="submit" name="submitData" value="Edit Data Kapal"/>
                    </div>
                    <div class="subcolumn-3">
                        <a href="form-tambah-data-kapal.php"><input type="button" value="Tambah Data Kapal"></a>
                    </div>
                    <div class="subcolumn-4">

                    </div>
                </div>
        </form>
        </div>
        
    </body>
</html>