<?php
    session_start();
    if (!isset($_SESSION['username'])){
        header("location: ../login.html");
    }
?>

<!DOCTYPE html>
  <head>
    <title>TYST - Dashboard</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/main.css" rel="stylesheet">
  </head>
  <body>
    <div class="logo ml-5">
        <img src="../assets/images/logo.png">
    </div>
    <div class="main-area ml-5">
        <?php
          include '../config.php';
          $data_articles = mysqli_query($koneksi,"SELECT * FROM article");
          $count_articles = mysqli_num_rows($data_articles);
        ?>

        <div class="container center">
          <div class="card" style="width:300px">
            <div class="card-body align-items-center d-flex justify-content-center">
              <img src="../assets/images/ar-icon.png" width="100px" class="float-left mr-2">
              <h4 class="card-title float-left mb-2"><?php echo $count_articles;?> Articles</h4>
            </div>
          </div>
        <?php
          include '../config.php';
          $data_categories = mysqli_query($koneksi,"SELECT * FROM category");
          $count_categories = mysqli_num_rows($data_categories);
        ?>
          <div class="card" style="width:300px">
            <div class="card-body align-items-center d-flex justify-content-center">
              <img src="../assets/images/ct-icon.png" width="100px" class="float-left mr-2">
              <h4 class="card-title float-left mb-2 "><?php echo $count_categories;?> Categories</h4>
            </div>
          </div>
        </div>
          
    </div>
    <nav class="main-menu">
      <ul>
          <li>
              <a href="index.php">
                  <i class="fa fa-home"></i>
                  <span class="nav-text">
                      Dashboard
                  </span>
              </a>
            
          </li>
          <li class="has-subnav">
              <a href="articles.php">
                <i class="fa fa-list"></i>
                  <span class="nav-text">
                      Articles
                  </span>
              </a>
              
          </li>
          <li class="has-subnav">
            <a href="category.php">
              <i class="fa fa-folder-open"></i>
                <span class="nav-text">
                    Categories
                </span>
            </a>
          
          </li>
      </ul>

      <ul class="logout">
          <li>
            <a href="logout.php">
                  <i class="fa fa-power-off fa-2x"></i>
                  <span class="nav-text">
                      Logout
                  </span>
              </a>
          </li>  
      </ul>
    </nav>
  </body>
</html>