<?php session_start(); ?>
<!doctype html>
<html>
	<head>
		<title>JobSeeker</title>
		<meta charset="utf-8">
   		 <meta http-equiv="X-UA-Compatible" content="IE=edge">
   		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" href="css/bootstrap.css">
		<link href="css/carousel.css" rel="stylesheet">
	</head>
	<body>
<!-- Barra di navigazione -->
      <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="index.php">JobSeeker</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="jobs.php">Sfoglia Lavori</a></li>
              </ul>
              <ul class="nav navbar-nav pull-right">
              	<?php if(isset($_SESSION['user'])): ?>
                <li><a href="logout.php">Logout</a></li>
                <?php else : ?>
                 <li><a href="signup.php">Registrati</a></li>
                 <li><a href="login.php">Login</a></li>
               <?php endif; ?>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>

  <!--Slide -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicazioni -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="img/1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1 style="color:#53b7f4">Trova il tuo lavoro dei sogni adesso</h1>
              <p><a class="btn btn-lg btn-primary" href="login.php" role="button">Login</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/2.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1 style="color:#53b7f4">Assumi lavoratori professionali</h1>
              <p><a class="btn btn-lg btn-primary" href="signup.php" role="button">Registrati</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/3.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1 style="color:#53b7f4">Guarda i lavori disponibili</h1>
              <p><a class="btn btn-lg btn-primary" href="jobs.php" role="button">Sfoglia lavori</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    
      <!-- Corpo sito -->

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">Stai cercando un lavoro? <span class="text-muted">Questo sito fa il caso tuo</span></h2>
          <p class="lead">Scopri consigli e novità del mondo del lavoro</p>
        </div>
        <div class="col-md-5" >
          <img class="featurette-image img-responsive center-block" src="img/5.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">Oh sì, è così bello. <span class="text-muted">Guarda tu stesso.</span></h2>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" src="img/6.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">E infine, questo.  <span class="text-muted">Ci siamo!</span></h2>
          <p class="lead">Hai ottenuto il tuo lavoro dei sogni</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="img/4.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">



      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Torna sopra</a></p>
        <p>&copy; 2020 JobSeeker &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')         </script> 
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.js"></script>

	</body>
</html>