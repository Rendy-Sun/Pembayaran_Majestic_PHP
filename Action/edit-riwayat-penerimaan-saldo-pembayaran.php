<?php 
    include("../Connection/config.php");
    if(isset($_POST['submitPenerimaanSaldoPembayaran'])){
        $id_penerimaan = $_POST['id_penerimaan'];
        $tanggal_terima = $_POST['tanggalTerima'];
        $cop_karantina = $_POST['cop'];
        $phqc_karantina = $_POST['phqc'];
        $pnbp_labuh = $_POST['labuh'];
        $pnbp_mc = $_POST['mc'];
        $pnbp_rambu = $_POST['rambu'];
        $buku_karantina = $_POST['buku'];
        $total_trip = $_POST['totaltrip'];
        $catatan = $_POST['catatan'];

        $query = "UPDATE detail_saldo SET cop_karantina = '$cop_karantina', phqc_karantina='$phqc_karantina', pnbp_labuh = '$pnbp_labuh', pnbp_mc = '$pnbp_mc', pnbp_rambu='$pnbp_rambu', buku_kesehatan_karantina='$buku_karantina', total_trip='$total_trip', tanggal_terima='$tanggal_terima', catatan = '$catatan' WHERE id = $id_penerimaan";
        $result = $dbConnection->query($query);
        if($result)
        {
            header('Location:../form-riwayat-penerimaan-saldo-pembayaran.php');
        }
        else
        {
            die('GAGAL!');
        }
        
    }
?>