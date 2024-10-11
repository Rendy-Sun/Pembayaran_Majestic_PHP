<?php 
    $id =$_GET['id'];
    $query = "SELECT pkka_kapal.id AS id_pkka, berlaku_dari, berlaku_sampai, nama_kapal, nomor_trayek FROM pkka_kapal INNER JOIN daftar_kapal ON daftar_kapal.id = pkka_kapal.kapal_id WHERE pkka_kapal.id=$id";
    $result=$dbConnection->query($query);
    while($row_data = mysqli_fetch_array($result)){
        $id_edit = $row_data['id_pkka'];
        $berlaku_dari = $row_data['berlaku_dari'];
        $berlaku_sampai = $row_data['berlaku_sampai'];
        $nama_kapal = $row_data['nama_kapal'];
        $nomor_trayek = $row_data['nomor_trayek'];
    }
    
?>