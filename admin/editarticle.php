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
    <link rel="stylesheet" href="../richtexteditor/rte_theme_default.css" />  
    <script type="text/javascript" src="../richtexteditor/rte.js"></script>  
    <script type="text/javascript" src='../richtexteditor/plugins/all_plugins.js'></script>  
    <link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/main.css" rel="stylesheet">
  </head>
  <body>
    
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

    <div class="logo ml-5">
        <img src="../assets/images/logo.png">
    </div>
    <?php
          include '../config.php';
          $id = $_GET['id'];
          $result = mysqli_query($koneksi,"SELECT article.id as id_arc, category.id as id_ctg, article.title as title, article.image as image, article.content as content,
          category.category as category FROM article join category where article.id='$id' and article.id_category=category.id");
          while($get = mysqli_fetch_array($result)) {
    ?>
    <div class="main-area ml-5 mb-5">
        <div class="container ">
        <form method="post" action="editarticle_action.php?id=<?=$get['id_arc']?>" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="name">The title</label>
                    <input type="text" name="title" class="form-control" value="<?=$get['title']?>" required>
                </div>
                
                <div class="form-group">
                    <label for="contohupload1">Choose a cover image</label>
                    <div class="alert alert-warning">
                    <strong>Warning!</strong> You can ignore this if you don't want to change the cover image.
                    </div>
                    <input type="file" class="form-control-file" id="contohupload1" name="image">
                </div>

                <div class="form-group mt-3">
                    <label for="category">Category</label>
                    <select id="category" class="form-control" name="category" required>
                        <?php 
                        $result_ctg = mysqli_query($koneksi,"SELECT * FROM category");
                        while($data = mysqli_fetch_array($result_ctg)) { ?> 
                        <option value="<?=$data['id']?>" <?=$get['category'] == $data['category'] ? ' selected="selected"' : '';?> ><?=$data['category']?></option>
                        <?php } ?>
                    </select>
                </div>

                <div class="form-group">
                    <label for="content">Article content</label>
                    <textarea class="form-control" id="content" rows="8"  name="content"><?=$get['content']?></textarea>
                    <script>
                        var editor1 = new RichTextEditor("#content");   
                    </script>
                </div>
    <?php 
                }
    ?>
                <input type="submit" class="btn btn-primary" name="submit" value="Update">
            </form>
        </div>
    </div>

  </body>
</html>