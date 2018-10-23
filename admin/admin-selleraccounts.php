<?php include "../functions/admin-account-session.php";?>
<!DOCTYPE html>
<html>
<head>
	<title>Accounts &bull; Guimaras Product and Souvenir Online Retail</title>
	<?php include "../includes/libraries-in.php";?>
</head>
<body>
<?php include "admin-navbar.php";?>
    <div class="container"  style="margin-top: 50px; margin-bottom: 75px;">
		<h2><i class="fa fa-users fa-fw"></i> Accounts</h2>
			<hr>
			<ul class="nav nav-pills nav-justified margin-bottom-lg">
			  <li><a class="btn btn-lg" href="admin-accounts.php">Admin Accounts</a></li>
			  <li class="active"><a class="btn btn-lg" href="admin-selleraccounts.php">Seller Accounts</a></li>
			  <li><a class="btn btn-lg" href="admin-useraccounts.php">User Accounts</a></li>
			  <li><a class="btn btn-lg" href="admin-accountlogs.php">Account Logs</a></li>
			</ul>
			<div class="row">
				<div class="col-lg-6 col-sm-6">
					<a data-toggle="modal" data-target="#modal-addaccount" class="btn btn-info btn-lg margin-bottom-lg"><i class="fa fa-plus fa-fw"></i> Add Seller</a>	
				</div>
				<div class="col-lg-6 col-sm-6">
					<div class="input-group search-unextended pull-left">
					    <span class="input-group-addon"><i class="fa fa-search"></i></span>
					    <input type="text" class="form-control input-lg" name="search" placeholder="Search seller..." onkeyup="load_process ('seller-container', '../functions/search-module.php?search-seller-2='+this.value)" autocomplete="off">
					</div>
				</div>
			</div>
			<?php
				include "../modals/add-seller.php";
			?>
			<table class="table table-hover">
			    <thead>
			      <tr>
			        <th>Account ID</th>
			        <th>E-mail</th>
			        <th>Password</th>
			        <th>Firstname</th>
			        <th>Lastname</th>
			        <th>Account Created</th>
			        <th>Action</th>
			      </tr>
			    </thead>
			    <tbody id="seller-container">
			    <?php
			    	$cnt_acc_query = $conn->query("select count(acc_id) as acc_id from accounts_tbl where acc_type = 'Seller'");
					$cnt_acc_row = $cnt_acc_query->fetch();

					if ($cnt_acc_row['acc_id'] != 0) {
			    	$account_query = $conn->query("select * from accounts_tbl inner join sellers_tbl on accounts_tbl.acc_id = sellers_tbl.acc_id where acc_type = 'Seller'");
				    	while ($account_row = $account_query->fetch()) {
				    	?>
				    	<tr id="<?=$account_row['acc_id'];?>">
				    		<td><?=$account_row['acc_id'];?></td>
				    		<td><?=$account_row['email'];?></td>
				    		<td><?=$account_row['password'];?></td>
				    		<td><?=$account_row['firstname'];?></td>
				    		<td><?=$account_row['lastname'];?></td>
				    		<td><?=date("F j, Y - h:ia", strtotime($account_row['acc_created']));?></td>
				    		<td>
				    			<a data-toggle="modal" data-target="#modal-deleteadmin<?=$account_row['acc_id'];?>" class="btn btn-info"><i class="fa fa-trash fa-fw"></i> Delete</a>
				    		</td>
				    	</tr>
				    	<?php include "../modals/delete-admin.php";?>
				    	<?php	
				    	}
				    }
				    else {
				    	?>
				    	<tr>
				    		<td>No seller created yet.</td>
				    	</tr>
				    	<?php
				    }
			    ?>	
			    </tbody>
			</table>      
		</div>
	</div>
<?php include "admin-footer.php";?>	
</body>
</html>		