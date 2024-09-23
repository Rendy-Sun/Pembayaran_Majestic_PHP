<?php
    include("Connection/config.php");
?>
<html>
    <head>
        <title>Pembayaran Kapal Majestic</title>
        <link rel="stylesheet" type="text/css" href="Style/style-form-riwayat-penerimaan-saldo-pembayaran.css"/>
        <link rel="stylesheet"type="text/css" href="Style/navigationBar.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css"/>
        <nav class="navigation">
            <?php include("navigationBar.php"); ?>
        </nav>    
    </head>
    
    <body>
        <table id="riwayat" class="table" border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Tanggal Terima</th>
                    <th>Jumlah Trip</th>
                    <th>COP Karantina</th>
                    <th>PHQC Karantina</th>
                    <th>PNBP LABUH</th>
                    <th>PNBP MASTER CABLE (MC)</th>
                    <th>PNBP RAMBU</th>
                    <th>Buku Kesehatan Karantina</th>
                    <th class="catatanRow">Catatan</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>
            <?php 
                include("Fetch_Data/riwayat-penerimaan-saldo-pembayaran.php");
            ?>
        </table>
        <nav>
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link"<?php 
                    $startpagination = $halaman;
                    $limitpagination = 9 + $halaman;
                    if($jumlah_data <= 10){
                        $limitpagination = $total_halaman;
                    }                  
                    if($halaman > 1){
                        echo "href='?halaman=$previous'";
                    }?>>Previous</a>
                </li>
                <?php 
                    if($halaman > 1){
                        ?>
                        <li class="page-item">
                            <a class="page-link" href="?halaman=1">...</a>
                        </li>
                        <?php
                    }
                ?>
                <?php          
                    for($x=$startpagination;$x<=$total_halaman;$x++){
                        
                        ?>
                        <li class="page-item"><a class="page-link" href="?halaman=<?php echo $x?>"><?php echo $x; ?></a></li>
                        <?php
                    }
                    ?>
                <?php 
                    if($halaman < $total_halaman){
                        ?>
                        <li class="page-item">
                            <a class="page-link" href="?halaman=<?php echo $total_halaman; ?>">...</a>
                        </li>
                        <?php
                    }
                ?>
                    <li class="page-item">
                        <a name= "next" class="page-link"<?php if($halaman < $total_halaman){echo "href='?halaman=$next'";}?> >Next</a>
                    </li>
            </ul>
        </nav>
        <div class="row">
            <a href="form-tambah-penerimaan-saldo-pembayaran.php"><input type="button" value="Tambah Pembayaran"></input></a>
        </div>
    </body>
</html>