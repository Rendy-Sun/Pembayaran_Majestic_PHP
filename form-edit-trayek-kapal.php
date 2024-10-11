<?php
    include("Connection/config.php");
?>
<html>
    <head>
        <title>
            Edit Trayek Kapal
        </title>
        <link rel="stylesheet" type="text/css" href="Style/style-form-tambah-trayek-kapal.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <?php
            include("navigationBar-4.php");
        ?>
    </head>
    <body>
        <form action ="Action/edit-trayek-kapal.php" method="POST">
            <div class="container">
                <header>
                    <h1>Edit Trayek Kapal</h1>
                </header>
                <div class="row">
                    <input type="text" name="idTrayek" hidden value="<?php include("Fetch_Data/fetch-id-edit-trayek-kapal.php"); echo $id_edit;?>">
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Nama Kapal </label>
                    </div>
                    <div class="col-75">
                        <input type="text" readonly disabled value="<?php include("Fetch_Data/fetch-id-edit-trayek-kapal.php");echo $nama_kapal;?>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Berlaku Dari </label>
                    </div>
                    <div class="col-75">
                        <input type="date" name="dateBerlakuDari" value="<?php include("Fetch_Data/fetch-id-edit-trayek-kapal.php");echo $berlaku_dari;?>" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Berlaku Sampai </label>
                    </div>
                    <div class="col-75">
                        <input type="date" name="dateBerlakuSampai" value="<?php include("Fetch_Data/fetch-id-edit-trayek-kapal.php");echo $berlaku_sampai;?>" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Nomor Trayek Kapal </label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="nomorTrayek" value="<?php include("Fetch_Data/fetch-id-edit-trayek-kapal.php");echo $nomor_trayek;?>" required/>
                    </div>
                </div>
                <div class="row">
                    <input type="submit" name="submitTrayek" id="tambahSubmit" class="submitTambah" value="Edit"/>
                </div>
            </div>                    
        </form>
    </body>
</html>