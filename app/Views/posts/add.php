<?php require_once '../app/Views/layouts/header.php';
 ?>
<header class="masthead" style="background-image: url('/img/home-bg.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="post-heading">
              <div align="center">
                <?php if(isset($error)){ ?>
                  <span style="color: red">Error! <?php echo $error; ?></span>
                <?php  } ?>
               
                <form action="/posts/add" method="post">
                  <div class="form-group row">
                    <label>Title</label>
                    <input class="form-control" type="text" name="title">  
                  </div>
                  <div class="form-group row">
                    <label>Description</label>
                    <input class="form-control" type="text" name="description">
                  </div>
                  <div class="form-group row">
                    <label>Content</label></br>
                  </div>
                  <div class="form-group row">
                    <textarea class="form-control" rows="4" cols="100" name="content">
                    </textarea>
                  </div>
                  <div class="form-group row">
                    <div class="col-sm-10">
                    <input type="submit" name="add" class="btn btn-success" value="Post">
                    <input type="button" name="cancel" value="Cancel" class="btn btn-danger">
                  </div>
                  
                </div>
                </form>
              </div>

            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- Post Content -->
    <article>
      <div class="container">
      </div>
    </article>

    <hr>
<?php require_once '../app/Views/layouts/footer.php'; ?>
