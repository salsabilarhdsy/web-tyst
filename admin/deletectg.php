<?php 
include '../config.php';
$id = $_GET['id'];

$delete = mysqli_query($koneksi, "DELETE FROM category where id='$id'");

if(!$delete){
    echo "<script>window.alert('Failed.'); window.location.href='category.php';</script>";
    } else{
        echo "<script>window.alert('Success.'); window.location.href='category.php';</script>";
    }
?>