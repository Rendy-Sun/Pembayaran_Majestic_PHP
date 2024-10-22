<?php 
    $totalHargaCOP = "0";
    $totalHargaPHQC = "0";
    $totalHargaLABUH = "0";
    $totalHargaMC = 0;
    $totalHargaRAMBU = 0;
    $totalHargaBuku = 0;
    $totalTrip = 0;
    $totalSaldoTransaksi = 0;
    if(isset($_POST['submitCekTransaksi'])){
        $dariTanggal = $_POST['dariTanggal'];
        $sampaiTanggal = $_POST['sampaiTanggal'];

        $queryCOP = "SELECT SUM(harga) AS total_harga_cop FROM pembayaran_kapal WHERE tanggal_transaksi BETWEEN '$dariTanggal' AND '$sampaiTanggal' AND tujuan_pembayaran_id = '1'";
        $resultCOP = $dbConnection->query($queryCOP);
        $row_dataCOP = mysqli_fetch_array($resultCOP);
        $totalHargaCOP = $row_dataCOP['total_harga_cop'];

        $queryPHQC = "SELECT SUM(harga) AS total_harga_phqc FROM pembayaran_kapal WHERE tanggal_transaksi BETWEEN '$dariTanggal' AND '$sampaiTanggal' AND tujuan_pembayaran_id = '2'";
        $resultPHQC = $dbConnection->query($queryPHQC);
        $row_dataPHQC = mysqli_fetch_array($resultPHQC);
        $totalHargaPHQC = $row_dataPHQC['total_harga_phqc'];
        
        $queryLABUH = "SELECT SUM(harga) AS total_harga FROM pembayaran_kapal WHERE tanggal_transaksi BETWEEN '$dariTanggal' AND '$sampaiTanggal' AND tujuan_pembayaran_id = '3'";
        $resultLABUH = $dbConnection->query($queryLABUH);
        $row_dataLABUH = mysqli_fetch_array($resultLABUH);
        $totalHargaLABUH = $row_dataLABUH['total_harga'];

        $queryMC = "SELECT SUM(harga) AS total_harga FROM pembayaran_kapal WHERE tanggal_transaksi BETWEEN '$dariTanggal' AND '$sampaiTanggal' AND tujuan_pembayaran_id = '4'";
        $resultMC = $dbConnection->query($queryMC);
        $row_dataMC = mysqli_fetch_array($resultMC);
        $totalHargaMC = $row_dataMC['total_harga'];

        $queryRAMBU = "SELECT SUM(harga) AS total_harga FROM pembayaran_kapal WHERE tanggal_transaksi BETWEEN '$dariTanggal' AND '$sampaiTanggal' AND tujuan_pembayaran_id = '5'";
        $resultRAMBU = $dbConnection->query($queryRAMBU);
        $row_dataRAMBU = mysqli_fetch_array($resultRAMBU);
        $totalHargaRAMBU = $row_dataRAMBU['total_harga'];
        if($row_dataRAMBU['total_harga'] == 0 || $row_dataRAMBU['total_harga'] == null){
            $totalHargaRAMBU = 0;
        }
        else{
            $totalHargaRAMBU = $row_dataRAMBU['total_harga'];
        }
        $queryBuku = "SELECT SUM(harga) AS total_harga FROM pembayaran_kapal WHERE tanggal_transaksi BETWEEN '$dariTanggal' AND '$sampaiTanggal' AND tujuan_pembayaran_id = '6'";
        $resultBuku = $dbConnection->query($queryBuku);
        $row_dataBuku = mysqli_fetch_array($resultBuku);
        if($row_dataBuku['total_harga'] == 0 || $row_dataBuku['total_harga'] == null){
            $totalHargaBuku = 0;
        }
        else{
            $totalHargaBuku = $row_dataBuku['total_harga'];
        }

        $queryTrip = "SELECT COUNT(*) AS total_trip FROM pembayaran_kapal WHERE tanggal_transaksi BETWEEN '$dariTanggal' AND '$sampaiTanggal' AND tujuan_pembayaran_id = '1'";
        $resultTrip = $dbConnection->query($queryTrip);
        $row_dataTrip = mysqli_fetch_array($resultTrip);
        $totalTrip = $row_dataTrip['total_trip'];

        $totalSaldoTransaksi = $totalHargaCOP + $totalHargaPHQC + $totalHargaLABUH +$totalHargaRAMBU + $totalHargaBuku + $totalHargaMC;

    }

    
    


?>