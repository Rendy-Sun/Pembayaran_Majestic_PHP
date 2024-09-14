<?php
    include("Connection/config.php");
?>
<html>
    <head>
        <title>
            Pembayaran Majestic Ferry
        </title>
        <link rel="stylesheet" type="text/css" href="Style/navigationBar.css"/>
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
        <header>
            <h1>Edit Kapal</h1>
        </header>
        <form action ="Action/edit-kapal.php" method="POST">
            <fieldset>
                <p>
                    <input type="hidden" name="id" value="<?php include("Fetch_Data/edit-kapal.php");echo $id_kapal;?>"/>
                </p>
                <p>
                    <label>Nama Kapal: </label>
                    <input type="text" name="nama_kapal" required value="<?php include("Fetch_Data/edit-kapal.php");echo $nama_kapal;?>"/>
                </p>
                <p>
                    <label>Tipe Kapal: </label>
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
                                echo '<option value ="WAVEMASTER" selected="selected">WAVEMASTER</option>';
                                echo '<option value ="MAJESTIC">MAJESTIC</option>';
                            }
                            elseif($nama_kapal == "MAJESTIC")
                            {
                                echo '<option value ="WAVEMASTER">WAVEMASTER</option>';
                                echo '<option value ="MAJESTIC" selected="selected">MAJESTIC</option>';
                            }

                        ?>  
                    </select>
                </p>
                <p>
                    <input type="submit" name="submit" value="Update Kapal"/>
                </p>
            </fieldset>
        </form>
    </body>
</html>