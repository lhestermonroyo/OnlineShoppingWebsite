<!DOCTYPE html>
<html>
<head>
	<title>Seller & Admin Log In &bull; Guimaras Product and Souvenir Online Retail</title>
	<?php include "includes/libraries-out.php";?>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-4 col-sm-4"></div>
			<div class="col-lg-4 col-sm-4">
			  <center><img src="web-images/gm-logo.png" class="img-responsive margin-bottom" style="height: 75px; width: auto; margin-top: 25px;"></center>
			  <p class="lead text-center">Guimaras Product and Souvenir Online Retail</p>
			  <div class="panel panel-default">
			  	<div class="panel-body">
			  		<h2>Log In</h2>
			  		<span id="login-response">
			  		<form onsubmit="loading ('btn-response')" autocomplete="off" id="login-form" method="POST">
			  		  <div class="form-group">
			            <label>Account Type:</label>
			            <select class="form-control input-lg" name="acc_type" required="true">
			            	<option value="Admin">Admin</option>
			            	<option value="Seller">Seller</option>
			            	<option selected="selected">Select account type...</option>
			            </select>
			          </div>
					  <div class="form-group">
			            <label>Email:</label>
			            <input type="email" class="form-control input-lg" name="email" required="true">
			          </div>
			          <div class="form-group">
			            <label>Password:</label>
			            <input type="password" class="form-control input-lg" name="password" required="true">
			          </div>
			          <span id="btn-response">
			          <button type="submit" class="btn btn-danger btn-lg margin-bottom-lg" onclick="form_process ('login-form', 'functions/verify-login-2.php', 'login-response')">Log In</button>
			          </span>
					</form>
					</span>
			  	</div>
			  </div>
			  <p class="text-center margin-bottom">&copy; Guimaras Product and Souvenir Online Retail 2017</p>	
			</div>
			<div class="col-lg-4 col-sm-4"></div>
		</div>
	</div>
</body>
</html>