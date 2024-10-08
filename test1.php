<?php 
session_start(); 
$_SESSION['message'] = "Hello, World!"; 
header("Location: test2.php"); 
exit(); 
?> 