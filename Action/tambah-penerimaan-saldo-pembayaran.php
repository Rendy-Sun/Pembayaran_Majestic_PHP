<?php 
    include("../Connection/config.php");
    
    if(isset($_POST['submitPenerimaanSaldoPembayaran'])){
        $copKarantina = $_POST['cop'];
        $phqcKarantina = $_POST['phqc'];
        $pnbpLabuh = $_POST['labuh'];
        $pnbpMc = $_POST['mc'];
        $pnbpRambu = $_POST['rambu'];
        $bukuKarantina = $_POST['buku'];
        $totalTripKapal = $_POST['totaltrip'];
        $tanggalTerimaSaldo = $_POST['tanggalTerima'];
        $catatanTerima = $_POST['catatan'];
    }
    $queryCheck = "SELECT * FROM detail_saldo WHERE tanggal_terima = '$tanggalTerimaSaldo'";
    $resultCheck = $dbConnection->query($queryCheck);
    if(mysqli_num_rows($resultCheck) > 0){
        echo '<script>alert("Sudah pernah menerima saldo di tanggal ini!"); location.href="../form-tambah-penerimaan-saldo-pembayaran.php";</script>';
    }
    else{
        try{
            $query = "INSERT INTO detail_saldo (cop_karantina, phqc_karantina, pnbp_labuh, pnbp_mc, pnbp_rambu, buku_kesehatan_karantina, total_trip, tanggal_terima, catatan) VALUES ('$copKarantina', '$phqcKarantina', '$pnbpLabuh', '$pnbpMc', '$pnbpRambu', '$bukuKarantina', '$totalTripKapal', '$tanggalTerimaSaldo', '$catatanTerima')";
            $result = $dbConnection->query($query);
            if($result){
                header('Location: ../form-tambah-penerimaan-saldo-pembayaran.php');
            }else{
                die('akses dilarang!');
            }
        }catch(mysqli_sql_exception){
            echo '<script>alert("Error MySql Database"); location.href="../form-tambah-penerimaan-saldo-pembayaran.php";</script>';
        }
    }
    
    
?>