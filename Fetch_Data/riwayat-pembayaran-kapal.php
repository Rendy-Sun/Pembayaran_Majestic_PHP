<?php
    $batas=10;
    $halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1 ;
    $halaman_awal = ($halaman>1)?($halaman*$batas) - $batas : 0;

    $previous = $halaman -1;
    $next = $halaman + 1;

    $query = "SELECT * FROM pembayaran_kapal";
    $data = mysqli_query($dbConnection, $query);
    $jumlah_data = mysqli_num_rows($data);
    $total_halaman = ceil($jumlah_data/$batas);

    $query = "SELECT pembayaran_kapal.id AS id_pembayaran, nama_kapal, nama_tujuan, status, waktu, harga, tanggal_transaksi, bukti_pembayaran,catatan_transaksi, sisa_saldo FROM pembayaran_kapal INNER JOIN daftar_kapal ON daftar_kapal.id = pembayaran_kapal.kapal_id INNER JOIN tujuan_pembayaran ON pembayaran_kapal.tujuan_pembayaran_id = tujuan_pembayaran.id INNER JOIN status_pembayaran ON pembayaran_kapal.status_pembayaran_id = status_pembayaran.id INNER JOIN trip_kapal ON pembayaran_kapal.trip_id = trip_kapal.id ORDER BY tanggal_transaksi DESC, waktu DESC, sisa_saldo ASC LIMIT $halaman_awal, $batas";
    $data_pembayaran = mysqli_query($dbConnection, $query);
    $nomor = $halaman_awal+1;

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