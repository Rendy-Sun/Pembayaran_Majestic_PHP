<?php
    include("Connection/config.php")
?>
<html>
    <head>
        <title>Pembayaran Majestic Ferry</title>
        <link rel="stylesheet" type="text/css" href="Style/style-form-edit-riwayat-penerimaan-saldo-pembayaran.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <?php
            include("navigationBar-4.php");
        ?>
    </head>
    <body>
        <form action="Action/edit-riwayat-penerimaan-saldo-pembayaran.php" method="POST">
            <div class="container">
            <header><h1>Edit Riwayat Penerimaan Saldo Pembayaran</h1></header>
                <div class="row">
                    <p>
                    <input type="hidden" name="id_penerimaan" value="<?php include("Fetch_Data/fetch-id-riwayat-penerimaan-saldo-pembayaran.php"); echo $id_penerimaan ?>"/>
                    </p>
                    <div class="col-25">
                        <label>Tanggal Penerimaan Saldo Pembayaran</label>
                    </div>
                    <div class="col-75">
                        <input type="date" name="tanggalTerima" id="tanggalTerima" value="<?php include("Fetch_Data/fetch-data-edit-riwayat-penerimaan-saldo-pembayaran.php"); echo $tanggal?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Total Trip Wavemaster</label>
                    </div>
                    <div class="col-75">
                        <script> 
                            const copwm = 70000;
                            const copmjs = 85000;
                            const phqcwm = 30000;
                            const phqcmjs = 35000;
                            const labuhwm = 350658;
                            const labuhmjs = 550242;
                        </script>
                        <input id="tripwm" name="tripwm" type="number" placeholder="0" onchange="
                        document.getElementById('cop').value= (copwm * document.getElementById('tripwm').value) + (document.getElementById('tripmjs').value * copmjs);
                        document.getElementById('phqc').value = (phqcwm * document.getElementById('tripwm').value) + (document.getElementById('tripmjs').value * phqcmjs);
                        document.getElementById('labuh').value = (labuhwm * document.getElementById('tripwm').value) + (document.getElementById('tripmjs').value * labuhmjs);

                        //total saldo
                        copvalue =document.getElementById('cop').value;
                        phqcvalue = document.getElementById('phqc').value;
                        labuhvalue = document.getElementById('labuh').value;
                        totalmc =document.getElementById('mc').value;
                        totalrambu = document.getElementById('rambu').value;
                        totalbuku = document.getElementById('buku').value;
                        if(totalrambu == '' || totalrambu == null){
                            totalrambu = 0;
                        }
                        if(totalmc == '' || totalmc == null){
                            totalmc = 0;
                        }
                        if(totalbuku == '' || totalbuku == null){
                            totalbuku = 0;
                        }
                        document.getElementById('totalsaldo').value=parseInt(copvalue) + parseInt(phqcvalue) + parseInt(labuhvalue) + parseInt(totalrambu) + parseInt(totalmc) + parseInt(totalbuku);

                        //total trip
                        wmtripvalue = document.getElementById('tripwm').value;
                        mjstripvalue = document.getElementById('tripmjs').value;
                        if(parseInt(mjstripvalue) == null || mjstripvalue == ''){
                            mjstripvalue = 0;
                        }else if(parseInt(wmtripvalue) == null || wmtripvalue == ''){
                            wmtripvalue = 0;
                        }
                        document.getElementById('totaltripKapal').value = parseInt(wmtripvalue) + parseInt(mjstripvalue);
                        "/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Total Trip Majestic</label>
                    </div>
                    <div class="col-75">
                        <input type="number" name="tripmjs" id="tripmjs" placeholder="0" onchange="
                        document.getElementById('cop').value = (copmjs * document.getElementById('tripmjs').value) + (document.getElementById('tripwm').value * copwm);
                        document.getElementById('phqc').value = (phqcmjs * document.getElementById('tripmjs').value) + (document.getElementById('tripwm').value * phqcwm);
                        document.getElementById('labuh').value = (labuhmjs * document.getElementById('tripmjs').value) + (document.getElementById('tripwm').value * labuhwm);

                        //total saldo
                        copvalue =document.getElementById('cop').value;
                        phqcvalue = document.getElementById('phqc').value;
                        labuhvalue = document.getElementById('labuh').value;
                        totalmc =document.getElementById('mc').value;
                        totalrambu = document.getElementById('rambu').value;
                        totalbuku = document.getElementById('buku').value;
                        if(totalrambu == '' || totalrambu == null){
                            totalrambu = 0;
                        }
                        if(totalmc == '' || totalmc == null){
                            totalmc = 0;
                        }
                        if(totalbuku == '' || totalbuku == null){
                            totalbuku = 0;
                        }
                        document.getElementById('totalsaldo').value=parseInt(copvalue) + parseInt(phqcvalue) + parseInt(labuhvalue) + parseInt(totalrambu) + parseInt(totalmc) + parseInt(totalbuku);
                        //total trip
                        wmtripvalue = document.getElementById('tripwm').value;
                        mjstripvalue = document.getElementById('tripmjs').value;
                        if(parseInt(wmtripvalue) == null || wmtripvalue == ''){
                            wmtripvalue = 0;
                        }else if(parseInt(mjstripvalue)==null || mjstripvalue == ''){
                            mjstripvalue = 0;
                        }
                        document.getElementById('totaltripKapal').value = parseInt(wmtripvalue) + parseInt(mjstripvalue);
                        "/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Total COP Karantina </label>
                    </div>
                    <div class="col-75">
                        <input type="number" name="cop" id="cop" readonly="readonly" placeholder="0" value="<?php include("Fetch_Data/fetch-data-edit-riwayat-penerimaan-saldo-pembayaran.php"); echo $cop; ?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Total PHQC Karantina</label>           
                    </div>
                    <div class="col-75">
                        <input type="number" name="phqc" id="phqc" readonly="readonly" placeholder="0" value="<?php include("Fetch_Data/fetch-data-edit-riwayat-penerimaan-saldo-pembayaran.php"); echo $phqc ?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Total PNBP LABUH</label>
                    </div>
                    <div class="col-75">
                        <input type="number" name="labuh" id="labuh" readonly="readonly" placeholder="0" value="<?php include("Fetch_Data/fetch-data-edit-riwayat-penerimaan-saldo-pembayaran.php"); echo $labuh; ?>"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Total PNBP MASTER CABLE (MC)</label>  
                    </div>
                    <div class="col-75">
                        <input type="number" name="mc" id="mc" placeholder="0" value="<?php include("Fetch_Data/fetch-data-edit-riwayat-penerimaan-saldo-pembayaran.php"); echo $mc; ?>" onchange="
                        copvalue =document.getElementById('cop').value;
                        phqcvalue = document.getElementById('phqc').value;
                        labuhvalue = document.getElementById('labuh').value;
                        totalmc =document.getElementById('mc').value;
                        totalrambu = document.getElementById('rambu').value;
                        totalbuku = document.getElementById('buku').value;
                        if(totalrambu == '' || totalrambu == null){
                            totalrambu = 0;
                        }
                        if(totalmc == '' || totalmc == null){
                            totalmc = 0;
                        }
                        if(totalbuku == '' || totalbuku == null){
                            totalbuku = 0;
                        }
                        document.getElementById('totalsaldo').value=parseInt(copvalue) + parseInt(phqcvalue) + parseInt(labuhvalue) + parseInt(totalrambu) + parseInt(totalmc) + parseInt(totalbuku);
                        "/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Total PNBP RAMBU</label>
                    </div>
                    <div class="col-75">
                        <input type="number" name="rambu" id="rambu" placeholder="0" value="<?php include("Fetch_Data/fetch-data-edit-riwayat-penerimaan-saldo-pembayaran.php"); echo $rambu; ?>" onchange="
                        copvalue =document.getElementById('cop').value;
                        phqcvalue = document.getElementById('phqc').value;
                        labuhvalue = document.getElementById('labuh').value;
                        totalmc =document.getElementById('mc').value;
                        totalrambu = document.getElementById('rambu').value;
                        totalbuku = document.getElementById('buku').value;
                        if(totalrambu == '' || totalrambu == null){
                            totalrambu = 0;
                        }
                        if(totalmc == '' || totalmc == null){
                            totalmc = 0;
                        }
                        if(totalbuku == '' || totalbuku == null){
                            totalbuku = 0;
                        }
                        document.getElementById('totalsaldo').value=parseInt(copvalue) + parseInt(phqcvalue) + parseInt(labuhvalue) + parseInt(totalrambu) + parseInt(totalmc) + parseInt(totalbuku);
                        "/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Total Buku Kesehatan Karantina </label>
                    </div>
                    <div class="col-75">
                        <input type="number" name="buku" id="buku" placeholder="0" value="<?php include("Fetch_Data/fetch-data-edit-riwayat-penerimaan-saldo-pembayaran.php"); echo $buku; ?>" onchange="
                        copvalue =document.getElementById('cop').value;
                        phqcvalue = document.getElementById('phqc').value;
                        labuhvalue = document.getElementById('labuh').value;
                        totalmc =document.getElementById('mc').value;
                        totalrambu = document.getElementById('rambu').value;
                        totalbuku = document.getElementById('buku').value;
                        if(totalrambu == '' || totalrambu == null){
                            totalrambu = 0;
                        }
                        if(totalmc == '' || totalmc == null){
                            totalmc = 0;
                        }
                        if(totalbuku == '' || totalbuku == null){
                            totalbuku = 0;
                        }
                        document.getElementById('totalsaldo').value=parseInt(copvalue) + parseInt(phqcvalue) + parseInt(labuhvalue) + parseInt(totalrambu) + parseInt(totalmc) + parseInt(totalbuku);
                        "/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Total Saldo</label>
                    </div>
                    <div class="col-75">
                        <input type="number" readonly="readonly" placeholder="0" name="totalsaldo" id="totalsaldo" value="<?php include("Fetch_Data/fetch-data-edit-riwayat-penerimaan-saldo-pembayaran.php"); echo $totalSaldo; ?>"/>
                    </div>
                </div>

                <div class="row">
                    <div class="col-25">
                        <label>Total Trip</label>
                    </div>
                    <div class="col-75">
                        <input type="number" name="totaltrip" id="totaltripKapal" placeholder="0" value="<?php include("Fetch_Data/fetch-data-edit-riwayat-penerimaan-saldo-pembayaran.php"); echo $trip; ?>"/>
                    </div>
                </div>

                <div class="row">
                    <div class="col-25">
                        <label>Foto Rincian</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="rincian" id="totaltripKapal" placeholder="https://" value="<?php include("Fetch_Data/fetch-data-edit-riwayat-penerimaan-saldo-pembayaran.php"); echo $rincian; ?>"/>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-25">
                        <label>Catatan Penerimaan</label>
                    </div>
                    <div class="col-75">
                        <textarea name="catatan"><?php include("Fetch_Data/fetch-data-edit-riwayat-penerimaan-saldo-pembayaran.php"); echo $catatan; ?></textarea>
                    </div>
                </div>

                <div class="row">
                    <input type="submit" name="submitPenerimaanSaldoPembayaran" value="Edit"/>
                </div>
            </div>
        </form>
    </body>
</html>