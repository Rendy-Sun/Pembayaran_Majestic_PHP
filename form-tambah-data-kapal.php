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
        <form action="Action/tambah-data-kapal.php" method="POST">
            <div class="container">
                <header><h2>Tambah Data Kapal</h2></header>
                <div class="row">
                    <div class="column-1">
                        <label>Nama Kapal</label>
                    </div>
                    <div class="column-2">
                    <select name="nama_kapal" onchange="this.form.submit();" >
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
                <div class="row">
                    <div class="subcolumn-1">
                        <label>IMO</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="text" name="imo"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Call Sign</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="text" name="call_sign"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>MMSI</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="text" name="mmsi"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Bendera</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="text" name="bendera"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Kapasitas Penumpang</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="text" name="kapasitas"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Draft MAX</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="text" name="max"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                        <label>Draft Depan</label>
                    </div>
                    <div class="subcolumn-2">
                        <input type="text" name="depan"/>
                    </div>
                    <div class="subcolumn-3">
                        <label>Draft Belakang</label>
                    </div>
                    <div class="subcolumn-4">
                        <input type="text" name="belakang"/>
                    </div>
                </div>
                <div class="row">
                    <div class="subcolumn-1">
                    </div>
                    <div class="subcolumn-2">
                        <a href="form-data-kapal.php"><input type="button" value="Kembali"></a>
                    </div>
                    <div class="subcolumn-3">
                        <input type="submit" name="submit" id="submitEdit" value="Kirim Data"/>
                    </div>
                    <div class="subcolumn-4">

                    </div>
                </div>
            </div>
        </form>
    </body>
</html>