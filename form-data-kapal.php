<?php
    include("Connection/config.php");
?>
<html>
    <head>
        <title>Data Kapal</title>
        <link rel="stylesheet" href="Style/style-form-data-kapal.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <?php 
            include("navigationBar-4.php");
        ?>
    </head>
    <body>
        <div class="container">
        <header class="headerTittle"><h1>Data Kapal</h1></header>
        <form action="#" method="POST">
                <div class="row">
                    <div class="column-1">
                        <label class="header">Nama Kapal</label>
                    </div>
                    <div class="column-2">
                        <select name="nama_kapal" onchange="this.form.submit()">
                            <option value="" hidden>Pilih Nama Kapal</option>
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
                        <a href="form-tambah-kapal.php"><input type="button" class="buttonAdd" value="[+]"></a>
                    </div>
                </div>
        </form>
        <form action="Action/edit-data-kapal.php" method="POST">
        <div class="row">
            <input type="text" hidden name="kapal" value="<?php if(isset($_POST['nama_kapal'])){echo $_POST['nama_kapal'];} ?>">
            <div class="subcolumn-1">
                <label>IMO</label>
            </div>
                <div class="subcolumn-2">
                    <input type="text" name="imo" id="imo" readonly="readonly" onchange="document.getElementById('imo').readOnly=true;" value="<?php include("Fetch_Data/fetch-data-kapal.php");echo $imo;?>"/>
                    <input type="button" class="editData" value="..." onclick="document.getElementById('imo').readOnly=false;">
                    </div>
                    <div class="subcolumn-3">
                        <label>Call Sign</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="text" name="call_sign" id="call_sign" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $callSign;?>"/>
                        <input type="button" class="editData" value="..." onclick="document.getElementById('call_sign').readOnly=false;">
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>MMSI</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="text" name="mmsi" id="mmsi" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $mmsi;?>"/>
                        <input type="button" class="editData" value="..." onclick="document.getElementById('mmsi').readOnly=false;">

                    </div>
                    <div class="subcolumn-3">
                        <label>Bendera</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="text" name="bendera" id="bendera" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $bendera;?>"/>
                        <input type="button" class="editData" value="..." onclick="document.getElementById('bendera').readOnly=false;">

                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Kapasitas Penumpang</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="text" name="kapasitas" id="kapasitas" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $kapasitas;?>"/>
                        <input type="button" class="editData" value="..." onclick="document.getElementById('kapasitas').readOnly=false;">

                    </div>
                    <div class="subcolumn-3">
                        <label>Draft MAX</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="text" name="max" id="max" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $max;?>"/>
                        <input type="button" class="editData" value="..." onclick="document.getElementById('max').readOnly=false;">

                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Draft Depan</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="text" name="depan" id="depan" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $depan;?>"/>
                        <input type="button" class="editData" value="..." onclick="document.getElementById('depan').readOnly=false;">

                    </div>
                    <div class="subcolumn-3">
                        <label>Draft Belakang</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="text" name="belakang" id="belakang" readonly="readonly" value="<?php include("Fetch_Data/fetch-data-kapal.php"); echo $belakang;?>"/>
                        <input type="button" class="editData" value="..." onclick="document.getElementById('belakang').readOnly=false;">

                    </div>
                </div>
                <div class="row">
                <input type="submit" name="submitData" class="buttonEdit" value="Edit Data Kapal"/>

                <a href="form-tambah-data-kapal.php"><input type="button" class="buttonTambah" value="Tambah Data Kapal"></a>

                </div>
        </form>
        </div>
        
    </body>
</html>