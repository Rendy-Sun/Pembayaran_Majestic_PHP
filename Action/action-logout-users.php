<?php 
    session_start();
    unset($_SESSION['password']);
    unset($_SESSION['saldo']);
    unset($_SESSION['username']);
    session_destroy();
    header("Location: ../form-login.php");
    session_start();
    $_SESSION['username']="";
    $_SESSION['password']="";
?>