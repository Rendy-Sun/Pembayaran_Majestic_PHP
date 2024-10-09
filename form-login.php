<?php 
    include("Connection/config.php");
?>
<html>
    <head>
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="Style/style-form-login.css">
    </head>
    <body>
        <div class="container">
            <header><h1>Login</h1></header>
            <form action="Action/action-login-users.php" method="post">
                <div class="row">
                    <div class="col-25">
                        <label>Username</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="username" required value="" placeholder="Username">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Password</label>
                    </div>
                    <div class="col-75">
                    <input type="password" name="password" required value="" placeholder="Password">
                    </div>
                </div>
                <div class="row">
                    <div class="submitField">
                        <input type="submit" name="submit" class="submit" value="Login" >
                    </div>
                </div>
            </form>
        </div>
        
    </body>
</html>