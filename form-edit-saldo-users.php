<?php 
    include("Connection/config.php");
?>
<html>
    <head>
        <title>Saldo Users</title>
        <link rel="stylesheet" href="Style/style-form-edit-saldo-users.css">
        <?php 
            include("navigationBar-4.php");
        ?>
    </head>
    <body>
        <div class="container">
            <header><h1>Edit Saldo Users</h1></header>
            <form action="Action/action-edit-saldo-users.php" method="post">
            <div class="row">
                    <div class="col-75">
                        <input hidden type="text" name="idSaldo" value="<?php include("Fetch_Data/fetch-id-edit-saldo-users.php"); echo $id; ?>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Top Up</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="top_up" placeholder="0" value="<?php include("Fetch_Data/fetch-id-edit-saldo-users.php"); echo $topup;?>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Bukti Top Up</label>
                    </div>
                    <div class="col-75">
                        <input type="url" name="bukti_topup" placeholder="https://" value="<?php include("Fetch_Data/fetch-id-edit-saldo-users.php"); echo $bukti; ?>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Tanggal Top Up</label>
                    </div>
                    <div class="col-75">
                        <input type="date" name="dateTopUp" value="<?php include("Fetch_Data/fetch-id-edit-saldo-users.php"); echo $date; ?>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Catatan Top Up</label>
                    </div>
                    <div class="col-75">
                        <textarea name="catatan" class="catatan"><?php include("Fetch_Data/fetch-id-edit-saldo-users.php"); echo $catatan; ?></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="submitField">
                        <input type="submit" name="submit" value="Top Up">
                    </div>
                </div>
            </form>
        </div>
        
    </body>
</html>