<?php
    include("Connection/config.php");
?>
<html>
    <head>
        <title>
            Pembayaran Majestic Ferry
        </title>
        <link rel="stylesheet" type="text/css" href="Style/navigationBar.css"/>
        <link rel="stylesheet" type="text/css" href="Style/form-edit-kapal.css"/>
        <nav class="navigation">
            <ul>
                <li><a href="form-list-kapal.php">Daftar Kapal</a></li>
                <li><a href="form-pembayaran-kapal.php">Pembayaran Kapal</a></li>
                <li><a href="#">List</a></li>
                <li><a href="#">Tutorial</a></li>
                <li><a href="#">Download</a></li>
            </ul>
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
                                if($nama_kapal == "WAVEMASTER")
                                {
                                    $select = "selected";
                                    echo '<option value ="WAVEMASTER" selected="'.$select.'">WAVEMASTER</option>';
                                    echo '<option value ="MAJESTIC">MAJESTIC</option>';
                                }
                                elseif($nama_kapal == "MAJESTIC")
                                {
                                    $select = "selected";
                                    echo '<option value ="WAVEMASTER">WAVEMASTER</option>';
                                    echo '<option value ="MAJESTIC" selected="'.$select.'">MAJESTIC</option>';
                                }
                            ?>  
                        </select>
                    </div>
                </div>
                <div class="row">
                    <input type="submit" name="submit" value="Update Kapal"/>
                </div>
            </div>                    
        </form>
    </body>
</html>