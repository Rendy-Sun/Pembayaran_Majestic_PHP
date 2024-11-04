<?php
include("Connection/config.php");
?>
<html>
    <head>
        <title>Majestic Ferry</title>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="Style/style-form-daftar-kru-kapal.css"/>
        <?php
            include("navigationBar-4.php");
        ?>
    </head>

    <body>
    <form action="#">
    <div class="header">
        <header><h2>Daftar Kru Kapal</h2></header>
    </div>
    <div class="row">
        <div class="subcolumn-1">
            <input type="text" placeholder="Cari Nama Kru..." name="pencarian">
        </div>
        <div class="subcolumn-2">
            <input type="submit" value="Cari"name=submit>
        </div>
        <div class="subcolumn-3">
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
                    <th>Nama Kru</th>
                    <th>Jenis Kelamin </th>
                    <th>Tanggal Lahir</th>
                    <th>Kebangsaan</th>
                    <th>No. Buku Pelaut</th>
                    <th>Tanggal Berakhir Buku Pelaut</th>
                    <th>Jabatan</th>
                    <th>Kode Pelaut</th>
                    <th>No. PKL</th>
                    <th>Date Sign On</th>
                    <th>Sertifikat Ijazah Pelaut</th>
                    <th>No. Sertifikat Ijazah Pelaut</th>
                    <th>Passpor Untuk WNA</th>
                    <th>Vaksin</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $batas=10;
                    $halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1 ;
                    $halaman_awal = ($halaman>1)?($halaman*$batas) - $batas : 0;
                
                    $previous = $halaman -1;
                    $next = $halaman + 1;

                    $query = "SELECT * FROM kru_kapal";
                    $data = mysqli_query($dbConnection, $query);
                    $jumlah_data = mysqli_num_rows($data);
                    $total_halaman = ceil($jumlah_data/$batas);

                    $query = "SELECT * FROM kru_kapal LIMIT $halaman_awal, $batas";
                    $data_pembayaran = mysqli_query($dbConnection, $query);
                    $nomor = $halaman_awal+1;   
                
                    $noUrut=0;
                    if($halaman > 1){
                        $noUrut = ($halaman -1) *10; 
                    }
                    
                    while($row_data = mysqli_fetch_array($data_pembayaran)){
                        $noUrut++;
                        $idJabatan = $row_data["jabatan"];
                        $now = Date("Y-m-d");
                        $query = "SELECT nama_jabatan FROM jabatan_kru WHERE id = '$idJabatan'";
                        $result = $dbConnection->query($query);
                        $data = mysqli_fetch_array($result);
                        $jabatan = $data['nama_jabatan'];
                        
                        echo "<tr>";
                        echo "<td scope='row' style='display:none'>". $row_data["id"] ."</td>";
                        echo "<td>". $noUrut ."</td>";
                        echo "<td>". $row_data["nama_awak"] ."</td>";
                        echo "<td>". $row_data["jenis_kelamin"] ."</td>";
                        echo "<td>". $row_data["tanggal_lahir"] ."</td>";
                        echo "<td>". $row_data["kebangsaan"] ."</td>";
                        echo "<td>". $row_data["no_buku_pelaut"] ."</td>";
                        if($row_data['expired_buku_pelaut'] < $now){
                            echo "<td style='background-color:red;'>". $row_data['expired_buku_pelaut'] ."</td>";
                        }else{
                            echo "<td>". $row_data['expired_buku_pelaut'] ."</td>";
                        }
                        echo "<td>". $jabatan ."</td>";
                        echo "<td>". $row_data["kode_pelaut"] ."</td>";
                        echo "<td>". $row_data["no_PKL"] ."</td>";
                        echo "<td>". $row_data["tanggal_sign_on"] ."</td>";
                        echo "<td>". $row_data["sertifikat_ijazah_pelaut"] ."</td>";
                        echo "<td>". $row_data["no_sertifikat_ijazah_pelaut"] ."</td>";
                        echo "<td>". $row_data["passpor_wna"] ."</td>";
                        echo "<td>". $row_data["vaksin"] ."</td>";
                        //echo "<td>". $row["tipe_kapal_id"] ."</td>";
                        echo "<td>";
                        echo "<a href = 'form-edit-riwayat-pembayaran-kapal.php?id=".$row_data['id']."'>Edit</a></td>";
                        echo "<td>";
                        echo "<a href = 'Action/hapus-riwayat-pembayaran-kapal.php?id=".$row_data['id']."'>Hapus</a>";
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
                    $startpagination = $halaman;
                    $limitpagination = 9 + $halaman;                      
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
                    if(isset($_POST['next'])){
                        $startpagination +=1;
                    }              
                    for($x=$startpagination;$x<=$limitpagination;$x++){
                        if($x > ($jumlah_data/$batas))
                        {

                        }else{
                            ?>
                            <li class="page-item"><a class="page-link" href="?halaman=<?php echo $x?>"><?php echo $x; ?></a></li>
                            <?php
                        }

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
        </div>
        <div class="row">
            <div class="buttonField">
            <a href="form-tambah-kru-kapal.php"><input type="button" class="buttonTambah" value="Tambah Kru kapal"></input></a>
            </div>
        </div>
    </form>
    </body>
</html>