<?php require_once $_SERVER['DOCUMENT_ROOT'].'/../app/Views/layouts/header.php'; ?>
<header class="masthead" style="background-image: url('/img/about-bg.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="post-heading">

              <h1><?php echo $title; ?></h1>
              <h2 class="subheading"><?php echo $description; ?></h2>
              <span class="meta">Posted by 
                <a href="#"><?php echo $author; ?></a>
                <?php echo $created_at; ?></span>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- Post Content -->
    <article>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <p><?php echo $content; ?></p>
          </div>
        </div>
      </div>
    </article>

    <hr>
<?php require_once $_SERVER['DOCUMENT_ROOT'].'/../app/Views/layouts/footer.php'; ?>