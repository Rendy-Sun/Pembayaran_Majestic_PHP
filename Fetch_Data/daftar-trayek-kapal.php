<?php 
    $query = "SELECT pkka_kapal.id AS id_pkka, nama_kapal, nomor_trayek, masa_berlaku FROM pkka_kapal INNER JOIN daftar_kapal ON pkka_kapal.kapal_id = daftar_kapal.id";
    $result = $dbConnection->query($query);
    while($row = mysqli_fetch_array($result)){
        echo "<tr>";
        echo "<td scope='row' style='display:none'>". $row['id_pkka'] ."</td>";
        echo "<td>". $row["nama_kapal"] ."</td>";
        echo "<td>". $row["nomor_trayek"] ."</td>";
        echo "<td>". $row["masa_berlaku"] ."</td>";
        echo "<td>";
        echo "<a href ='#'>Edit</a></td>";
        echo "<td>";
        echo "<a href = 'Action/hapus-trayek-kapal.php?id=".$row['id_pkka']."'>Hapus</a>";
        echo "</td>";
        echo "</tr>";
    }
?>