<?php
ob_start();
include "../config.php";

function phpAlert($msg) {
    echo '<script type="text/javascript">window.alert("' . $msg . '");
    window.location.href="addarticle.php";</script>';
    }

if($_POST['submit']){
	$ekstensi_diperbolehkan	= array('png','jpg');
    $nama = $_FILES['image']['name'];
    $x = explode('.', $nama);
	$ekstensi = strtolower(end($x));
    $ukuran	= $_FILES['image']['size'];
    $img = $_FILES['image']['tmp_name'];
    $title = $_POST['title'];
    $ctg = $_POST['category'];
    $content = $_POST['content'];
    if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
        if($ukuran < 1044070){			
        move_uploaded_file($img, "../assets/images/".$nama);
        $query = mysqli_query($koneksi, "INSERT INTO article VALUES(DEFAULT, '$title', '$nama', '$content', now(), '$ctg')");
        if(!$query){
            phpAlert( "Failed" );
           
        }else{
            phpAlert( "Success" );
           
        }
        }else{
            phpAlert( "Image is too large" );
            
        }
       }else{
        phpAlert( "Image extension is not allowed" );
       }
    
}
?>