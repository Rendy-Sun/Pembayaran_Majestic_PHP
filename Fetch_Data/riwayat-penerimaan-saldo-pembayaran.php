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
        echo "<tr>";
            echo "<td scope='row' style='display:none'>". $row_data["id"] ."</td>";
            echo "<td>".$noUrut++."</td>";
            echo "<td>". $row_data["tanggal_terima"] ."</td>";
            echo "<td>". $row_data["total_trip"] ."</td>";
            echo "<td>". $row_data["cop_karantina"] ."</td>";
            echo "<td>". $row_data["phqc_karantina"] ."</td>";
            echo "<td>". $row_data["pnbp_labuh"] ."</td>";
            echo "<td>". $row_data["pnbp_mc"] ."</td>";
            echo "<td>". $row_data["pnbp_rambu"] ."</td>";
            echo "<td>". $row_data["buku_kesehatan_karantina"] ."</td>";
            echo "<td>". $row_data["catatan"] ."</td>";
            //echo "<td>". $row["tipe_kapal_id"] ."</td>";
            echo "<td>";
            echo "<a href = '####?id=".$row_data['id']."'>Edit</a></td>";
            echo "<td>";
            echo "<a href = 'Action/hapus-riwayat-penerimaan-saldo-pembayaran.php?id=".$row_data['id']."'>Hapus</a>";
            echo "</td>";
            echo "</tr>";
    }
?>