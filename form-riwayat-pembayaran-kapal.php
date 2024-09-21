<?php
include("Connection/config.php");
?>
<html>
    <head>
        <title>Riwayat</title>
        <link rel="stylesheet" type="text/css" href="Style/form-riwayat-pembayaran-kapal.css"/>
        <link rel="stylesheet" type="text/css" href="Style/navigationBar.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css"/>
        <nav class="navigation">
            <?php include("navigationBar.php");?>
        </nav>
    </head>

    <body>
        <table id="riwayat" class="table" border="1">
            <thead>
                <tr>
                    <th scope="col" style="display: none;">Id Kapal</th>
                    <th>No</th>
                    <th>Nama Kapal</th>
                    <th>Tujuan Pembayaran </th>
                    <th>Status Transaksi</th>
                    <th>Trip Kapal</th>
                    <th>Harga</th>
                    <th>Tanggal Transaksi</th>
                    <th>Catatan Transaksi</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    include("Fetch_Data/riwayat-pembayaran-kapal.php");  
                ?>
            </tbody>
        </table>
        <nav>
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link"<?php if($halaman > 1){
                        echo "href='?halaman=$previous'";
                    }?>>Previous</a>
                </li>
                <?php 
                    for($x=1;$x<=$total_halaman;$x++){
                        ?>
                        <li class="page-item"><a class="page-link" href="?halaman=<?php echo $x?>"><?php echo $x; ?></a></li>
                        <?php
                    }
                    ?>
                    <li class="page-item">
                        <a class="page-link"<?php if($halaman < $total_halaman){echo "href='?halaman=$next'";}?>>Next</a>
                    </li>
            </ul>
        </nav>
        <div class="row">
            <a href="form-pembayaran-kapal.php"><input type="button" value="Tambah Pembayaran"></input></a>
        </div>
    </body>
</html>