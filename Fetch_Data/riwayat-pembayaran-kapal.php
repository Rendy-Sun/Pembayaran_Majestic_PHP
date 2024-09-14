<?php
    $sql = "SELECT pembayaran_kapal.id AS id, nama_kapal, nama_tujuan, status, waktu, harga, tanggal_transaksi, catatan_transaksi FROM pembayaran_kapal INNER JOIN daftar_kapal ON daftar_kapal.id = pembayaran_kapal.kapal_id INNER JOIN tujuan_pembayaran ON pembayaran_kapal.tujuan_pembayaran_id = tujuan_pembayaran.id INNER JOIN status_pembayaran ON pembayaran_kapal.status_pembayaran_id = status_pembayaran.id INNER JOIN trip_kapal ON pembayaran_kapal.trip_id = trip_kapal.id ORDER BY tanggal_transaksi DESC";
    $query = $dbConnection->query($sql);

    while ($row_data = mysqli_fetch_array($query)) {
    echo "<tr>";
    echo "<td scope='row' style='display:none'>". $row_data["id"] ."</td>";
    echo "<td>". $row_data["nama_kapal"] ."</td>";
    echo "<td>". $row_data["nama_tujuan"] ."</td>";
    echo "<td>". $row_data["status"] ."</td>";
    echo "<td>". $row_data["waktu"] ."</td>";
    echo "<td>". $row_data["harga"] ."</td>";
    echo "<td>". $row_data["tanggal_transaksi"] ."</td>";
    echo "<td>". $row_data["catatan_transaksi"] ."</td>";
    //echo "<td>". $row["tipe_kapal_id"] ."</td>";
    echo "<td>";
    echo "<a href = 'edit-riwayat-pembayaran-kapal.php?id=".$row_data['id']."'>Edit</a></td>";
    echo "<td>";
    echo "<a href = 'Action/hapus-riwayat-pembayaran-kapal.php?id=".$row_data['id']."'>Hapus</a>";
    echo "</td>";
    echo "</tr>";
    }
?>