<?php    
include '../config.php';
?>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../assets/css/main.css" rel="stylesheet">
    <title>TYST - Personality</title>
</head>
<body style="background:#E19D9F">
    <div class="container mt-3" style="background: #FFFBFB; color: #111111; border-radius: 5px">
        <div class="row justify-content-center">
            <a href="../index.php">
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
                        <a class="nav-link btn-custom" href="fashion.php">Fashion</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-custom" href="beauty.php">Beauty</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-custom" href="celebrity.php">Celebrity</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-custom" href="personality.php">Personality</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-custom" href="lifestyle.php">Lifestyle</a>
                    </li>
                    <form class="form-inline input-group-sm" action="../index.php?search=<?= @$_GET['searchkw'] ?>">
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

        <!-- Post page -->
        <hr class="section"/>
        <div class="container">
            <div class="content">
                <?php   
                if(!isset($_GET['id'])){
                    ?>
                    <div class="row pt-3 justify-content-center">
                        <h4>Latest Post</h4>
                    </div>
                    <div class="row justify-content-center">
                        <h6><small class="text-muted">We provide best quality informations for you</small></h6>
                    </div>
                    <?php    
                    $result = mysqli_query($koneksi,"SELECT * FROM article WHERE id_category=4 ORDER BY date DESC");
                    while($article = mysqli_fetch_array($result)) {
                        ?>
                        <div class="row" id="<?= $article['id'] ?>">
                            <div class="col pb-3">
                                <h1 class="title"><?= $article['title'] ?></h1>
                                <div class="time"><mark>Created on <?= $article['date'] ?></mark></div>
                                <br>
                                <img src="../assets/images/<?= $article['image'] ?>" class="img-fluid"><br><br>  
                                <?php
                                    $text = strip_tags($article['content']);
                                    $new = trim($text);
                                ?> 
                                <p>
                                    <?=substr($new,0,250);?>...
                                </p>
                                <a href="personality.php?id=<?= $article['id'] ?>">Read More</a>
                            </div>
                        </div>
                        <hr style=" margin: 0px; border-top: 1px dashed grey;" />
                        <?php   
                    } 
                } else{
                    $id = $_GET['id'];
                    $result = mysqli_query($koneksi,"SELECT * FROM article WHERE id='$id'");
                    while($article = mysqli_fetch_array($result)) {
                        ?>
                        <div class="row pt-3 justify-content-center align-items-center">
                            <div class="col">
                                <h1 class="title text-center"><?= $article['title'] ?></h1>
                                <div class="time text-center"><mark>Created on <?= $article['date'] ?></mark></div>
                                <br><br>
                                <img src="../assets/images/<?= $article['image'] ?>" class="img-fluid">
                                <div class="mt-3 mb-5 text-justify">
                                    <p><?= $article['content'] ?></p>
                                </div>
                            </div>
                        </div>
                        <?php
                    }
                }
                ?>      
            </div>
        </div>
        <!-- end of post page -->
        <div class="row"></div>
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
                        <li><a class="text-muted" href="../aboutus.php">About Us</a></li>
                        <li><a class="text-muted" href="../login.html">Sign In</a></li>
                    </ul>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>