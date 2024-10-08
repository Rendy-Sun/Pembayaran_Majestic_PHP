<?php 
    include("Connection/config.php");
?>
<html>
    <head>
        <title>Saldo Users</title>
        <link rel="stylesheet" href="Style/style-form-saldo-users.css">
        <?php 
            include("navigationBar-4.php");
        ?>
    </head>
    <body>
        <div class="container">
            <header><h1>Saldo Users</h1></header>
            <form action="Action/action-top-up-saldo.php" method="post">
                <div class="row" hidden>
                    <div class="col-25">
                        <label>Saldo Anda</label>
                    </div>
                    <div class="col-75">
                        <input type="text" readonly name="saldo" value="<?php echo $saldo;?>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Top Up</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="top_up" placeholder="0">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Bukti Top Up</label>
                    </div>
                    <div class="col-75">
                        <input type="url" name="bukti_topup" placeholder="https://">
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