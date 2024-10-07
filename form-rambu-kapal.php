<?php 
    include("Connection/config.php");
?>
<html>
    <head>
        <title>Rambu Kapal</title>
        <link rel="stylesheet" href="Style/style-form-rambu-kapal.css">
        <?php
            include("navigationBar-4.html");
        ?>
    </head>
    <body>
        <div class="container">
        <header><h1>Rambu Kapal</h1></header>
        <form action="#" method="POST">
            <div class="row">
                <div class="col-25">
                    <label>Nama Kapal</label>
                </div>
                <div class="col-75">
                    <select name="nama_kapal" required onchange="this.form.submit()">
                        <option hidden>Pilih Kapal</option>
                        <?php     
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
        </form>
        <form action="Action/action-rambu-kapal.php" method="POST">
            <div class="row">
                <input hidden type="text" name="kapalSelected" value="<?php if(isset($_POST['nama_kapal'])){echo $_POST['nama_kapal'];}?>">
                <div class="col-25">
                    <label>Berlaku Dari</label>
                </div>
                <div class="col-75">
                    <input type="date" name="dateDari" required value="<?php include("Fetch_Data/fetch-data-rambu-kapal.php"); echo $berlaku_dari;?>">
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label>Berlaku Sampai</label>
                </div>
                <div class="col-75">
                    <input type="date" name="dateSampai" required value="<?php include("Fetch_Data/fetch-data-rambu-kapal.php"); echo $berlaku_sampai; ?>">
                </div>
            </div>
            <div class="row">
                <div class="submitRow">
                <input type="submit" name="Edit" class="editSubmit" value="Edit">
                <input type="submit" name="Tambah" class="tambahSubmit" value="Tambah" onclick="this.form.submit()">
                </div>
            </div>
        </form>
        </div>
    </body>
</html>