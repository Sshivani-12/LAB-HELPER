<?php
include('config.php');

	if(isset($_POST['id'])){
		foreach ($_POST['id'] as $id):
			mysqli_query($conn, "INSERT INTO issue SELECT * FROM issue12 where id='$id'");
   			mysqli_query($conn,"delete from issue12 where id='$id'");
		endforeach;
		echo "<script>alert('Completed');</script>";
		echo "<script>window.location.href='./issuereport.php';</script>";	
				//header('location:issue.php');
	}
	else{
		?>
		<script>
			window.alert('Please check issue to Delete');
			window.location.href='issuereport.php';
		</script>
		<?php
	}
	
?>