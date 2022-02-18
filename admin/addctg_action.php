<?php 
session_start();
    if (!isset($_SESSION['username'])){
        header("location: ../login.html");
    }
    
include '../config.php';
$name = $_POST['category'];

$add = mysqli_query($koneksi, "INSERT INTO category VALUES (DEFAULT, '$name')");

if(!$add){
    echo "<script>window.alert('Failed.'); window.location.href='category.php';</script>";
    } else{
        echo "<script>window.alert('Success.'); window.location.href='category.php';</script>";
    }
?>
