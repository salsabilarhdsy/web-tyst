<?php
    session_start();
    if (!isset($_SESSION['username'])){
        header("location: ../login.html");
    }
?>
<!DOCTYPE html>
  <head>
    <title>TYST - Articles</title>
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
        <div class="container">
          <div class="float-right mb-4">
            <a href="addarticle.php"><button type="button" class="btn btn-info">Add Article</button></a>
          </div> 
          <?php
          include '../config.php';
          $result = mysqli_query($koneksi, "SELECT article.id as id_arc, article.title as title, article.image as image, article.content as content,
          article.date as date, category.category as category FROM article join category where article.id_category=category.id ORDER BY id_arc DESC");
          ?>
          <div class="table-responsive">
            <table class="table table-hover ">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Title</th>
                  <th>Image</th>
                  <th>Content</th>
                  <th>Category</th>
                  <th>Date</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
              <?php 
              while($article = mysqli_fetch_array($result)) {     
                echo "<tr>";
                  echo "<td name='id'>".$article['id_arc']."</td>";
                  echo "<td>".$article['title']."</td>";
                  echo "<td><img src='../assets/images/".$article['image']."' width='150'></td>";
                  $text = strip_tags($article['content']);
                  $new = trim($text);
                  echo "<td>".substr($new, 0, 100)."...</td>";
                  echo "<td>".$article['category']."</td>";
                  echo "<td>".$article['date']."</td>";
                  echo "<td><a href='editarticle.php?id=".$article['id_arc']."'><button type='button' class='btn btn-primary ml-2 mt-1'>Edit</button></a>
                  <a href='deletearc.php?id=".$article['id_arc']."' onclick='return confirm(\"Are you sure you want to do this?\")'><button type='button' class='btn btn-danger margin ml-2 mt-1'>Delete</button></a></td>";
                echo "</tr>";
              }
              ?>
              </tbody>
            </table>
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