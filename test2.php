<?php 
session_start(); 
$message = $_SESSION['username']; 
$password = $_SESSION['password'];
echo $message.$password; 
?> 