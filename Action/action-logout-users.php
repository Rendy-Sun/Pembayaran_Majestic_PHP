<?php 
    session_start();
    unset($_SESSION['password']);
    unset($_SESSION['saldo']);
    unset($_SESSION['username']);
    session_destroy();
    header("Location: ../form-login.php");
?>