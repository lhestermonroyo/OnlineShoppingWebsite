<?php
	include "config.php";

	if (isset($_POST)) {
		$verif_query = $conn->query("select * from costumers_tbl where acc_id = '".$_POST['acc_id']."'");
		$verif_row = $verif_query->fetch();

		if ($verif_row['verif_code'] == $_POST['verif_code']) {
			$update_query = $conn->query("update accounts_tbl set acc_status = 'Activated'");
			?>
			<div class="alert alert-success padding-lg">
				<strong><i class="fa fa-check fa-fw"></i></strong> Your email has been verified. You can now log in and access the online shop.
			</div>
			<?php
		}
		else {
			?>
						<div class="alert alert-danger">
						  <strong><i class="fa fa-exclamation-mark fa-fw"></i></strong> Verification code incorrect. Please try again.
						</div>
						<form class="row" autocomplete="off" id="verif-form" method="POST">
							<input type="hidden" value="<?=$acc_row['acc_id'];?>" name="acc_id" required="true">
							<div class="col-lg-3 col-sm-3">
							</div>
							<div class="col-lg-6 col-sm-6">
								<div class="form-group">
					              <label>Verification Code:</label>
					              <input type="password" class="form-control input-lg" value="" name="verif_code" required="true">
					            </div>
					             <button type="submit" class="btn btn-danger btn-lg" onclick="form_process ('verif-form', 'functions/verify-email.php', 'verif-response')">Verify</button>
							</div>
							<div class="col-lg-3 col-sm-3">
							</div>	
						</form>
			<?php
		}
	}
?>