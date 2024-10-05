<?php
include("Connection/config.php");
?>
<html>
    <head>
        <title>Daftar Kapal Majestic</title>
        <link rel="stylesheet" type="text/css" href="Style/style-form-daftar-trayek-kapal.css"/>
        <link rel="stylesheet" type="text/css" href="Style/style-navigationBar.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <?php
            include("navigationBar-3.html");
        ?>

    </head>

    <body>
        <div class="container">
        <div class="row">
            <div class="scroll">
            <table class="table" border="1">
                <?php 
                    include("Fetch_Data/daftar-trayek-kapal.php");
                ?>
                <thead>
                    <tr>
                        <th scope="col" style="display: none;">Id Trayek</th>
                        <th>Nama Kapal</th>
                        <th>Nomor Trayek Kapal</th>
                        <th>Masa Berlaku Trayek Kapal</th>
                        <th colspan="2">Action </th>
                    </tr>
                </thead>
            </table>
            </div>
        </div>
            <div class="row">
                <a href="form-trayek-kapal.php"><input type="button" value="Kembali"></input></a>
            </div>
        </div>    
    </body>
</html>