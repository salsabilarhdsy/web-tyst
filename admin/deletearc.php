<?php 
include '../config.php';
$id = $_GET['id'];

$delete = mysqli_query($koneksi, "DELETE FROM article where id='$id'");

if(!$delete){
    echo "<script>window.alert('Failed.'); window.location.href='articles.php';</script>";
    } else{
        echo "<script>window.alert('Success.'); window.location.href='articles.php';</script>";
    }

?>