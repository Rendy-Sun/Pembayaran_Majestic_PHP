<?php
    //untuk ambil data atau fetch data tidak perlu connection database, tapi di formnya pakai
    $sql = "SELECT id, nama_kapal FROM daftar_kapal";
    $query = $dbConnection->query($sql);

    while ($row = mysqli_fetch_array($query)) {
    echo "<tr>";
    echo "<td scope='row' style='display:none'>". $row["id"] ."</td>";
    echo "<td>". $row["nama_kapal"] ."</td>";
    //echo "<td>". $row["tipe_kapal_id"] ."</td>";
    echo "<td>";
    echo "<a href = 'form-edit-kapal.php?id=".$row['id']."'>Edit</a></td>";
    echo "<td>";
    echo "<a href = 'Action/hapus-kapal.php?id=".$row['id']."'>Hapus</a>";
    echo "</td>";
    echo "</tr>";
    }
?>