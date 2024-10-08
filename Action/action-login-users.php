<?php 
    include("../Connection/config.php");
    if(isset($_POST['submit'])){
        $username = $_POST['username'];
        $password = $_POST['password'];
        $expired = date("Y-m-d H:i:s",strtotime('+1 minute'));
        $query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
        $result=$dbConnection->query($query);
        $isExist = mysqli_num_rows($result);
        if($isExist > 0){
            $userData = mysqli_fetch_array($result);
            session_start();
            $_SESSION['username'] = $_POST['username'];
            $_SESSION['password'] = $_POST['password'];
            $_SESSION['saldo'] = $userData['saldo'];
            //$query = "UPDATE users SET expired='$expired'";
            //$result = $dbConnection->query($query);
            if($result)
            {
                header('Location: ../form-list-kapal.php');
            }
            else{
                die("dai");
            }
        }else if($isExist == 0){
            echo '<script>alert("Users is not Exist !"); location.href="../form-login.php"</script>';
        }
    }
?>