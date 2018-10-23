<?php
	include "config.php";

	if (isset($_GET['acc_id'])) {
		$acc_query = $conn->query("select * from accounts_tbl where acc_id = '".$_GET['acc_id']."'");
		$acc_row = $acc_query->fetch();

		if ($acc_row['acc_status'] == "Activated") {
			$update_query = $conn->query("update accounts_tbl set acc_status = 'Deactivated' where acc_id = '".$_GET['acc_id']."'");
			?>
			<i class="fa fa-check fa-fw"></i> Activate
			<?php
		}
		else if ($acc_row['acc_status'] == "Deactivated") {
			$update_query = $conn->query("update accounts_tbl set acc_status = 'Activated' where acc_id = '".$_GET['acc_id']."'");
			?>
			<i class="fa fa-times fa-fw"></i> Deactivate</a>
			<?php
		}
	}
?>