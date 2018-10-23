<!DOCTYPE html>
<html>
<head>
	<title>Log In &bull; Guimaras Product and Souvenir Online Retail</title>
	<?php include "includes/libraries-out.php";?>
</head>
<body>
<?php include "navbar.php";?>
	<div class="container-fluid" style="margin-top: 100px;">
		<div class="row">
			<div class="col-lg-4 col-sm-4"></div>
			<div class="col-lg-4 col-sm-4">
			  <div class="panel panel-default">
			  	<div class="panel-body">
			  		<h2>Log In</h2>
			  		<span id="login-response">
			  		<form onsubmit="loading ('btn-response')" autocomplete="off" id="login-form" method="POST">
					  <div class="form-group">
			            <label>Email:</label>
			            <input type="email" class="form-control input-lg" name="email" required="true">
			          </div>
			          <div class="form-group">
			            <label>Password:</label>
			            <input type="password" class="form-control input-lg" name="password" required="true">
			          </div>
			          <span id="btn-response">
			          <button type="submit" class="btn btn-danger btn-lg" onclick="form_process ('login-form', 'functions/verify-login.php', 'login-response')">Log In</button>
			          </span>
					</form>
					</span>
					<hr>
					<p class="lead text-center">Don't have an account yet? <a href="gm-signup.php" class="btn btn-info btn-lg">Sign Up <i class="fa fa-chevron-right fa-fw"></i></a></p>
			  	</div>
			  </div>
			  <p class="text-center margin-bottom-lg">&copy; Guimaras Product and Souvenir Online Retail 2017</p>	
			</div>
			<div class="col-lg-4 col-sm-4"></div>
		</div>
	</div>
</body>
</html>		