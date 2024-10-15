<?php
    include("../Connection/config.php");
    if(isset($_POST['submit'])){
        $id = $_POST['idSaldo'];
        $topup = $_POST['top_up'];
        $bukti = $_POST['bukti_topup'];
        $tanggal = $_POST['dateTopUp'];
        $catatan = $_POST['catatan'];

        $query = "UPDATE riwayat_topup SET saldo='$topup', bukti_topup='$bukti', tanggal_topup = '$tanggal', catatan='$catatan' WHERE id='$id'";
        $result = $dbConnection->query($query);
        if($result)
        {
            header('Location: ../form-riwayat-topup.php');
        }
        else
        {
            die("ERROR");
        }
    }
?>