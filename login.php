<?php
include 'config.php';
 
$username = $_POST['username'];
$password = md5($_POST['password']);
 
$login = mysqli_query($koneksi, "select * from admin where username='$username' and password='$password'");
$cek = mysqli_num_rows($login);
 
if($cek>0){
    session_start();
    $_SESSION['username'] = $username;
	header("location:admin/index.php");
}else{
    header("location:login.html");	
}
?>