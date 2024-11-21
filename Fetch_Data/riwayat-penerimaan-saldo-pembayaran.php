<?php 
    $batas=10;
    $halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1 ;
    $halaman_awal = ($halaman>1)?($halaman*$batas) - $batas : 0;

    $previous = $halaman -1;
    $next = $halaman + 1;

    $query = "SELECT * FROM detail_saldo";
    $data = mysqli_query($dbConnection, $query);
    $jumlah_data = mysqli_num_rows($data);
    $total_halaman = ceil($jumlah_data/$batas);

    $query = "SELECT * FROM detail_saldo ORDER BY tanggal_terima DESC LIMIT $halaman_awal,$batas";
    $data_penerimaan = mysqli_query($dbConnection, $query);
    $nomor = $halaman_awal+1;

    $noUrut=1;
    if($halaman > 1){
        $noUrut = ($halaman -1) *10; 
    }
    while($row_data = mysqli_fetch_array($data_penerimaan))
    {
        $date = date("d-M-Y", strtotime($row_data['tanggal_terima']));
        
        echo "<tr>";
            echo "<td scope='row' style='display:none'>". $row_data["id"] ."</td>";
            echo "<td>".$noUrut++."</td>";
            echo "<td style='width:10%;'>". $date ."</td>";
            echo "<td>". $row_data["total_trip"] ."</td>";
            echo "<td style='width:10%;'>Rp ". number_format($row_data["cop_karantina"], 0, '', '.') ."</td>";
            echo "<td style='width:10%;'>Rp ". number_format($row_data["phqc_karantina"], 0, '', '.') ."</td>";
            echo "<td style='width:10%;'>Rp ". number_format($row_data["pnbp_labuh"], 0, '', '.') ."</td>";
            echo "<td style='width:10%;'>Rp ". number_format($row_data["pnbp_mc"], 0, '','.') ."</td>";
            echo "<td style='width:10%;'>Rp ". number_format($row_data["pnbp_rambu"], 0, '', '.') ."</td>";
            echo "<td style='width:10%;'>Rp ". number_format($row_data["buku_kesehatan_karantina"], 0, '', '.') ."</td>";
            echo "<td style='width:10%;'><a href=".$row_data['foto_rincian']." target='_blank'>".$row_data['foto_rincian']."</td>";
            echo "<td><textarea readonly>". $row_data["catatan"] ."</textarea></td>";
            //echo "<td>". $row["tipe_kapal_id"] ."</td>";
            echo "<td>";
            echo "<a href = 'form-edit-riwayat-penerimaan-saldo-pembayaran.php?id=".$row_data['id']."'>Edit</a></td>";
            echo "<td>";
            echo "<a href = 'Action/hapus-riwayat-penerimaan-saldo-pembayaran.php?id=".$row_data['id']."'>Hapus</a>";
            echo "</td>";
            echo "</tr>";
    }
?>