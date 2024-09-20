<?php
include("Connection/config.php");
?>
<html>
    <head>
        <title>Daftar Kapal Majestic</title>
        <link rel="stylesheet" type="text/css" href="Style/table-list-kapal.css"/>
        <link rel="stylesheet" type="text/css" href="Style/navigationBar.css"/>
        <link rel="stylesheet" type="text/css" href="Style/button.css"/>

        <nav class="navigation">
            <?php include("navigationBar.php");?>
        </nav>
    </head>

    <body>
        <div class="container">
        <div class="row">
            <table class="table" border="1">
                <?php 
                    include("Fetch_Data/daftar_kapal.php");
                ?>
                <thead>
                    <tr>
                        <th scope="col" style="display: none;">Id Kapal</th>
                        <th>Nama Kapal</th>
                        <th colspan="2">Action </th>
                    </tr>
                </thead>
            </table>
        </div>
            <div class="row">
                <a href="form-tambah-kapal.php"><input type="button" value="Tambah Kapal"></input></a>
            </div>
        </div>    
    </body>
</html>