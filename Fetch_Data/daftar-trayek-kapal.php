<?php 
    $query = "SELECT pkka_kapal.id AS id_pkka, nama_kapal, nomor_trayek, berlaku_dari, berlaku_sampai FROM pkka_kapal INNER JOIN daftar_kapal ON pkka_kapal.kapal_id = daftar_kapal.id";
    $result = $dbConnection->query($query);
    while($row = mysqli_fetch_array($result)){
        $date1 = date("d-M-Y", strtotime($row['berlaku_dari']));
        $date2 = date("d-M-Y", strtotime($row['berlaku_sampai']));

        echo "<tr>";
        echo "<td scope='row' style='display:none'>". $row['id_pkka'] ."</td>";
        echo "<td>". $row["nama_kapal"] ."</td>";
        echo "<td>". $row["nomor_trayek"] ."</td>";
        echo "<td>". $date1." - ".$date2."</td>";
        echo "<td>";
        echo "<a href ='form-edit-trayek-kapal.php?id=".$row['id_pkka']."'>Edit</a></td>";
        echo "<td>";
        echo "<a href = 'Action/hapus-trayek-kapal.php?id=".$row['id_pkka']."'>Hapus</a>";
        echo "</td>";
        echo "</tr>";
    }
?>