<?php require_once $_SERVER['DOCUMENT_ROOT'].'/../app/Views/layouts/header.php'; ?>
    <header class="masthead" style="background-image: url('../../img/home-bg.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading">
              <h1></h1>
              <span class="subheading"></span>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- Main Content -->
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <?php  foreach ($arrPosts as $post) {
          ?>
          <div class="post-preview">
            <a href="/posts/view/<?php echo $post['id']; ?>">
              <h2 class="post-title">
                <?php echo $post['title']; ?>
              </h2>
              <h3 class="post-subtitle">
                <?php echo $post['description']; ?>
              </h3>
            </a>
            <p class="post-meta">Posted by
              <a href="#"><?php echo $post['author']; ?></a>
              <?php echo $post['created_at']; ?></p>
          </div>
          <hr>
          <?php } ?>
          <!-- Pager -->
          <div class="clearfix">
            <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
          </div>
        </div>
      </div>
    </div>

    <hr>
<?php require_once $_SERVER['DOCUMENT_ROOT'].'/../app/Views/layouts/footer.php'; ?>
