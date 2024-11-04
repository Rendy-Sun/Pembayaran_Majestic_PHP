<?php
include("Connection/config.php");
?>
<html>
    <head>
        <title>Majestic Ferry</title>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="Style/style-form-riwayat-pembayaran-kapal.css"/>
        <?php
            include("navigationBar-4.php");
        ?>
    </head>

    <body>
    <form action="#">
    <div class="header">
        <header><h2>Riwayat Pembayaran Kapal</h2></header>
    </div>
    <div class="row">
        <div class="subcolumn-1">
            <label>Dari Tanggal</label>
        </div>
        <div class="subcolumn-2">
            <input type="date" name="dateDari">
        </div>
        <div class="subcolumn-3">
            <label>Sampai Tanggal</label>
        </div>
        <div class="subcolumn-4">
            <input type="date" name="dateSampai">
        </div>
    </div>  
    <div class="row">
        <div class="subcolumn-1">
            <label>Trip Kapal</label>
        </div>
        <div class="subcolumn-2">
            <select name="trip">
                <option value="all">Semua Trip</option>
                <?php
                    include("Fetch_Data/trip-option.php");
                ?>
            </select>
        </div>
        <div class="subcolumn-3">
            <input type="submit" value="Cek">
        </div>
        <div class="subcolumn-4">
        </div>
    </div>
    <div class="scroll">
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
                    <th>Bukti Pembayaran</th>
                    <th>Catatan Transaksi</th>
                    <th>Sisa Saldo</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $batas=10;
                    $halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1 ;
                    $dateDari = isset($_GET['dateDari']);
                    $dateSampai = isset($_GET['dateSampai']);
                    $trip = isset($_GET['trip']);
                    $halaman_awal = ($halaman>1)?($halaman*$batas) - $batas : 0;
                
                    $previous = $halaman -1;
                    $next = $halaman + 1;


                    if(isset($_GET['dateDari']) !=null && isset($_GET['dateSampai']) !=null){
                        $dateDari = $_GET['dateDari'];
                        $dateSampai = $_GET['dateSampai'];
                        $trip = $_GET['trip'];

                        if($trip == "all" && $dateSampai != null && $dateDari !=null){
                            $query = "SELECT * FROM pembayaran_kapal INNER JOIN trip_kapal ON trip_kapal.id = pembayaran_kapal.trip_id WHERE tanggal_transaksi BETWEEN '$dateDari' AND '$dateSampai'";
                            $data = mysqli_query($dbConnection, $query);
                            $jumlah_data = mysqli_num_rows($data);
                            $total_halaman = ceil($jumlah_data/$batas);

                            $query = "SELECT pembayaran_kapal.id AS id_pembayaran, nama_kapal, nama_tujuan, status, waktu, harga, tanggal_transaksi, bukti_pembayaran,catatan_transaksi, sisa_saldo FROM pembayaran_kapal INNER JOIN daftar_kapal ON daftar_kapal.id = pembayaran_kapal.kapal_id INNER JOIN tujuan_pembayaran ON pembayaran_kapal.tujuan_pembayaran_id = tujuan_pembayaran.id INNER JOIN status_pembayaran ON pembayaran_kapal.status_pembayaran_id = status_pembayaran.id INNER JOIN trip_kapal ON pembayaran_kapal.trip_id = trip_kapal.id WHERE tanggal_transaksi BETWEEN '$dateDari' AND '$dateSampai' ORDER BY tanggal_transaksi DESC, waktu DESC, sisa_saldo ASC LIMIT $halaman_awal, $batas";
                            $data_pembayaran = mysqli_query($dbConnection, $query);
                            $nomor = $halaman_awal+1;
                        }else if($trip != "all" && $dateSampai != null && $dateDari !=null){
                            $query = "SELECT * FROM pembayaran_kapal INNER JOIN trip_kapal ON trip_kapal.id = pembayaran_kapal.trip_id WHERE trip_kapal.waktu='$trip' AND tanggal_transaksi BETWEEN '$dateDari' AND '$dateSampai'";
                            $data = mysqli_query($dbConnection, $query);
                            $jumlah_data = mysqli_num_rows($data);
                            $total_halaman = ceil($jumlah_data/$batas);

                            $query = "SELECT pembayaran_kapal.id AS id_pembayaran, nama_kapal, nama_tujuan, status, waktu, harga, tanggal_transaksi, bukti_pembayaran,catatan_transaksi, sisa_saldo FROM pembayaran_kapal INNER JOIN daftar_kapal ON daftar_kapal.id = pembayaran_kapal.kapal_id INNER JOIN tujuan_pembayaran ON pembayaran_kapal.tujuan_pembayaran_id = tujuan_pembayaran.id INNER JOIN status_pembayaran ON pembayaran_kapal.status_pembayaran_id = status_pembayaran.id INNER JOIN trip_kapal ON pembayaran_kapal.trip_id = trip_kapal.id WHERE trip_kapal.waktu = '$trip' AND tanggal_transaksi BETWEEN '$dateDari' AND '$dateSampai' ORDER BY tanggal_transaksi DESC, waktu DESC, sisa_saldo ASC LIMIT $halaman_awal, $batas";
                            $data_pembayaran = mysqli_query($dbConnection, $query);
                            $nomor = $halaman_awal+1;
                        }else if($trip == "all" && $dateDari == null && $dateSampai == null){
                            $query = "SELECT * FROM pembayaran_kapal";
                            $data = mysqli_query($dbConnection, $query);
                            $jumlah_data = mysqli_num_rows($data);
                            $total_halaman = ceil($jumlah_data/$batas);

                            $query = "SELECT pembayaran_kapal.id AS id_pembayaran, nama_kapal, nama_tujuan, status, waktu, harga, tanggal_transaksi, bukti_pembayaran,catatan_transaksi, sisa_saldo FROM pembayaran_kapal INNER JOIN daftar_kapal ON daftar_kapal.id = pembayaran_kapal.kapal_id INNER JOIN tujuan_pembayaran ON pembayaran_kapal.tujuan_pembayaran_id = tujuan_pembayaran.id INNER JOIN status_pembayaran ON pembayaran_kapal.status_pembayaran_id = status_pembayaran.id INNER JOIN trip_kapal ON pembayaran_kapal.trip_id = trip_kapal.id ORDER BY tanggal_transaksi DESC, waktu DESC, sisa_saldo ASC LIMIT $halaman_awal, $batas";
                            $data_pembayaran = mysqli_query($dbConnection, $query);
                            $nomor = $halaman_awal+1;
                        }else if($trip != "all" && $dateDari == null && $dateSampai == null){
                            $query = "SELECT * FROM pembayaran_kapal WHERE trip_id=(SELECT id FROM trip_kapal WHERE waktu = '$trip')";
                            $data = mysqli_query($dbConnection, $query);
                            $jumlah_data = mysqli_num_rows($data);
                            $total_halaman = ceil($jumlah_data/$batas);

                            $query = "SELECT pembayaran_kapal.id AS id_pembayaran, nama_kapal, nama_tujuan, status, waktu, harga, tanggal_transaksi, bukti_pembayaran,catatan_transaksi, sisa_saldo FROM pembayaran_kapal INNER JOIN daftar_kapal ON daftar_kapal.id = pembayaran_kapal.kapal_id INNER JOIN tujuan_pembayaran ON pembayaran_kapal.tujuan_pembayaran_id = tujuan_pembayaran.id INNER JOIN status_pembayaran ON pembayaran_kapal.status_pembayaran_id = status_pembayaran.id INNER JOIN trip_kapal ON pembayaran_kapal.trip_id = trip_kapal.id WHERE trip_kapal.waktu='$trip' ORDER BY tanggal_transaksi DESC, waktu DESC, sisa_saldo ASC LIMIT $halaman_awal, $batas";
                            $data_pembayaran = mysqli_query($dbConnection, $query);
                            $nomor = $halaman_awal+1;
                        }               
                    }else{
                        $query = "SELECT * FROM pembayaran_kapal";
                        $data = mysqli_query($dbConnection, $query);
                        $jumlah_data = mysqli_num_rows($data);
                        $total_halaman = ceil($jumlah_data/$batas);

                        $query = "SELECT pembayaran_kapal.id AS id_pembayaran, nama_kapal, nama_tujuan, status, waktu, harga, tanggal_transaksi, bukti_pembayaran,catatan_transaksi, sisa_saldo FROM pembayaran_kapal INNER JOIN daftar_kapal ON daftar_kapal.id = pembayaran_kapal.kapal_id INNER JOIN tujuan_pembayaran ON pembayaran_kapal.tujuan_pembayaran_id = tujuan_pembayaran.id INNER JOIN status_pembayaran ON pembayaran_kapal.status_pembayaran_id = status_pembayaran.id INNER JOIN trip_kapal ON pembayaran_kapal.trip_id = trip_kapal.id ORDER BY tanggal_transaksi DESC, waktu DESC, sisa_saldo ASC LIMIT $halaman_awal, $batas";
                        $data_pembayaran = mysqli_query($dbConnection, $query);
                        $nomor = $halaman_awal+1;
                    }
                    
                
                    $noUrut=0;
                    if($halaman > 1){
                        $noUrut = ($halaman -1) *10; 
                    }
                    
                    while($row_data = mysqli_fetch_array($data_pembayaran)){
                        $noUrut++;
                        $date = date("d-M-Y", strtotime($row_data['tanggal_transaksi']));
                        $harga = number_format($row_data["harga"], 0,'','.');
                        echo "<tr>";
                        echo "<td scope='row' style='display:none'>". $row_data["id_pembayaran"] ."</td>";
                        echo "<td>". $noUrut ."</td>";
                        echo "<td>". $row_data["nama_kapal"] ."</td>";
                        echo "<td style='width:10%;'>". $row_data["nama_tujuan"] ."</td>";
                        echo "<td>". $row_data["status"] ."</td>";
                        echo "<td>". $row_data["waktu"] ."</td>";
                        echo "<td style='width:10%;'>Rp ". $harga ."</td>";
                        echo "<td style='width:10%;'>". $date ."</td>";
                        echo "<td><a href=". $row_data["bukti_pembayaran"] ." target='_blank'>". $row_data["bukti_pembayaran"] ."</td>";
                        echo "<td>". $row_data["catatan_transaksi"] ."</td>";
                        echo "<td style='width:10%;'>Rp ". number_format($row_data["sisa_saldo"],0,'','.') ."</td>";
                        //echo "<td>". $row["tipe_kapal_id"] ."</td>";
                        echo "<td>";
                        echo "<a href = 'form-edit-riwayat-pembayaran-kapal.php?id=".$row_data['id_pembayaran']."'>Edit</a></td>";
                        echo "<td>";
                        echo "<a href = 'Action/hapus-riwayat-pembayaran-kapal.php?id=".$row_data['id_pembayaran']."'>Hapus</a>";
                        echo "</td>";
                        echo "</tr>";
                    }
                ?>
            </tbody>
        </table>
    </div>
        <p>
            <label class="jumlahLabel">Jumlah Data: <?php echo $jumlah_data?></label>
        </p>
        <div class="pagination-div">
        <nav>
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link"<?php 
                    if($trip == null){
                        $trip="all";
                    }
                    $startpagination = $halaman;
                    $limitpagination = 9 + $halaman;                      
                    if($halaman > 1){
                        echo "href='?halaman=$previous&dateDari=$dateDari&dateSampai=$dateSampai&trip=$trip&submit=Cek#'";
                    }?>>Previous</a>
                </li>
                <?php 
                    if($halaman > 1){
                        ?>
                        <li class="page-item">
                            <a class="page-link" href="?halaman=1&dateDari=<?php echo $dateDari?>&dateSampai=<?php echo $dateSampai?>&trip=<?php echo $trip?>&submit=Cek#">...</a>
                        </li>
                        <?php
                    }
                ?>
                <?php
                    if(isset($_POST['next'])){
                        $startpagination +=1;
                    }              
                    for($x=$startpagination;$x<=$limitpagination;$x++){
                        if($x > ($jumlah_data/$batas))
                        {

                        }else{
                            ?>
                            <li class="page-item"><a class="page-link" href="?halaman=<?php echo $x?>&dateDari=<?php echo $dateDari?>&dateSampai=<?php echo $dateSampai?>&trip=<?php echo "all"?>&submit=Cek#"><?php echo $x; ?></a></li>
                            <?php
                        }

                    }
                    ?>
                <?php 
                    if($halaman < $total_halaman){
                        ?>
                        <li class="page-item">
                            <a class="page-link" href="?halaman=<?php echo $total_halaman; ?>&dateDari=<?php echo $dateDari?>&dateSampai=<?php echo $dateSampai?>&trip=<?php echo $trip?>&submit=Cek#">...</a>
                        </li>
                        <?php
                    }
                ?>
                    <li class="page-item">
                        <a name= "next" class="page-link"<?php if($halaman < $total_halaman){echo "href='?halaman=$next&dateDari=$dateDari&dateSampai=$dateSampai&trip=$trip&submit=Cek#'";}?> >Next</a>
                    </li>
            </ul>
        </nav>
        </div>
        <div class="row">
            <div class="buttonField">
            <a href="form-pembayaran-kapal.php"><input type="button" class="buttonTambah" value="Tambah Pembayaran"></input></a>
            </div>
        </div>
    </form>
    </body>
</html>