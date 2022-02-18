<?php
    session_start();
    if (!isset($_SESSION['username'])){
        header("location: ../login.html");
    }
?>
<!DOCTYPE html>
  <head>
    <title>TYST - Categories</title>
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
          <div class="mb-4 width="200px"">
                <form method="post" action="addctg_action.php">
                <div class="input-group mb-3">
                    <input type="text" name="category" class="form-control" placeholder="Add new category here.." required>
                    <div class="input-group-append">
                    <button class="btn btn-primary" type="submit">Submit</button>  
                    </div>
                </div>
                </form>
            </div>   
            <?php
            include '../config.php';
            $result = mysqli_query($koneksi,"SELECT * FROM category ORDER BY id DESC");
            ?>    
            <table class="table table-hover">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Category</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                <?php 
                while($ctg = mysqli_fetch_array($result)) {     
                  echo "<tr>";
                    echo "<td>".$ctg['id']."</td>";
                    echo "<td>".$ctg['category']."</td>";
                    echo "<td><a href='deletectg.php?id=".$ctg['id']."' onclick='return confirm(\"Are you sure you want to do this?\")'><button type='submit' name='btndelete' value='delete' class='btn btn-danger ml-2'>Delete</button></a></td>";
                  echo "</tr>";
                }
                ?>
              </tbody>
            </table>
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