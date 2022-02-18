<?php    
include 'config.php';
?>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/main.css" rel="stylesheet">
    <title>Take Your Sweet Time - About Us</title>
</head>
<body style="background:#E19D9F">
    <div class="container mt-3" style="background: #FFFBFB; color: #111111; border-radius: 5px">
        <div class="row justify-content-center">
            <a href="index.php">
                <img src="https://i.ibb.co/MkZhk9R/tyst-logo.png" style="height: 160px" alt="">
            </a>
        </div>
        <hr class="section"/>
        <div class="row justify-content-center" style="height: 60px">
            <!-- A horizontal navbar that becomes vertical on small screens -->
            <nav class="navbar navbar-expand-md">
                <!-- Links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link btn-custom" href="user/fashion.php">Fashion</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-custom" href="user/beauty.php">Beauty</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-custom" href="user/celebrity.php">Celebrity</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-custom" href="user/personality.php">Personality</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-custom" href="user/lifestyle.php">Lifestyle</a>
                    </li>
                    <form class="form-inline input-group-sm" action="index.php?search=<?= @$_GET['searchkw'] ?>">
                        <div class="input-group mb-3">
                            <input class="form-control ml-sm-2 mt-sm-1 " type="text" placeholder="Search" style="margin-bottom: 0px" name="searchkw">
                            <div class="input-group-prepend">
                            <span><button class="btn btn-icon input-group-text mt-sm-1" type="submit"><i class="material-icons">search</i></button></span>
                            </div>
                        </div>
                    </form>
                </ul>
            </nav>
        </div>
        <hr class="section"/>
        <div class="container mb-3">
            <div class="content">
                <div class="row pt-3 justify-content-center align-items-center">
                    <div class="col">
                        <h1 class="title">About Us</h1><br>
                        <!--<div class="time"><mark>Created on 0000-00-00</mark></div>
                        <img src="assets/images/<?= $article['image'] ?>" class="img-fluid"><br><br>  
                        <p>
                            <?= substr($article['content'], 0, 250)."..." ?>
                            <a href="index.php?id=<?= $article['id'] ?>">Read More</a>
                        </p>-->
                        <p style="text-indent: 0%; text-align: left;">
                            TYST, atau Take Your Sweet Time, merupakan sebuah portal di mana pembaca dapat menemukan berbagai artikel tentang <i>Fashion</i>, <i>Beauty</i>, <i>Celebrity</i>, <i>Personality</i>, dan <i>Lifestyle</i>.  
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h5>Our Team</h5>
                    </div>
                </div>
                <div class="row mt-2 justify-content-center"> 
                    <div class="col" style="text-align: center">
                        <img src="assets/images/user.png" class="rounded-circle" style="width: 50px">
                        <h6 class="font-weight-normal">Eka Putri Handayani</h6>
                    </div>
                    <div class="col" style="text-align: center">
                        <img src="assets/images/user.png" class="rounded-circle" style="width: 50px">
                        <h6 class="font-weight-normal">Azkiya Nurullita</h6>
                    </div>
                    <div class="col" style="text-align: center">
                        <img src="assets/images/user.png" class="rounded-circle" style="width: 50px">
                        <h6 class="font-weight-normal">Khalishah Fiddina</h6>
                    </div>
                    <div class="col" style="text-align: center">
                        <img src="assets/images/user.png" class="rounded-circle" style="width: 50px">
                        <h6 class="font-weight-normal">Wanda Alifah</h6>
                    </div>
                    <div class="col" style="text-align: center">
                        <img src="assets/images/user.png" class="rounded-circle" style="width: 50px">
                        <h6 class="font-weight-normal">Salsabila Rahadatul Aisy</h6>
                    </div>                    
                </div>
            </div>
        </div>
        <hr class="section"/>
        <footer class="my-md-3 pt-md-3">
            <div class="row">

                <div class="col-md-2"></div>
                <div class="col-md">
                    <img class="mb-2" src="https://i.ibb.co/MkZhk9R/tyst-logo.png" alt="" height="130">
                    <small class="d-block mb-3 text-muted">&copy; 2020</small>
                </div>
                <div class="col-md">
                    <!--<h5>About</h5>-->
                    <ul class="list-unstyled text-small">
                        <li><a class="text-muted" href="aboutus.php">About Us</a></li>
                        <li><a class="text-muted" href="login.html">Sign In</a></li>
                    </ul>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>
<?php 
/*
4611419007  Eka Putri Handayani
4611419025  Azkiya Nurullita
4611419032  KHALISHAH FIDDINA
4611419035  WANDA ALIFAH
4611419042  Salsabila Rahadatul Aisy
*/
?>