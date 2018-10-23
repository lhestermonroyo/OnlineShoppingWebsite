<?php
	include "config.php";

	if (isset($_GET['mes_id']) && isset($_GET['seller_id'])) {
		$th_status = "Read";
		$update_query = $conn->query("update threads_tbl set th_status = '".$th_status."' where receiver = '".$_GET['seller_id']."' and mes_id = '".$_GET['mes_id']."'");
		?>
		<script type="text/javascript">
			window.location.assign("../costumers/cos-message.php?seller_id=<?=$_GET['seller_id'];?>");
		</script>
		<?php
	}

	if (isset($_GET['mes_id']) && isset($_GET['cos_id'])) {
		$th_status = "Read";
		$update_query = $conn->query("update threads_tbl set th_status = '".$th_status."' where receiver = '".$_GET['cos_id']."' and mes_id = '".$_GET['mes_id']."'");
		?>
		<script type="text/javascript">
			window.location.assign("../seller/seller-message.php?cos_id=<?=$_GET['cos_id'];?>");
		</script>
		<?php
	}
?>