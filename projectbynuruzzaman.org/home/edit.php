<?php 
	include('inc/connect.php');
	$query = mysqli_query($connect,"SELECT * FROM std_info");
	require_once("header1.php");
	
?>
	<title>Edit Information</title>
	<link rel="stylesheet" type="text/css" href="assets/css/edit.css" media="all" />
<?php
	require_once("header2.php");
?>

	<section class="edit-section">
		<div class="container">
			<div class="edit-title">
				<h2>All Student Information control here.</h2>
				<?php 
				
					if(isset($_REQUEST['result'])){
						if($_REQUEST['result']=="delete"){
							echo "<h4 style='color:red;font-weight:normal;text-align:center;' >Information has delete.</h4>";
						}else{
							echo "<h4 style='color:yellow;font-weight:normal;text-align:center;' >Something is wrong</h4>";
						}
					}
					
				?>
			</div>
		</div>
	</section>
	<section class="student-info">
		<div class="container"> 
			<table class="table">
				<thead>
					<tr>
						<th>ID NO</th>
						<th>Name</th>
						<th>Roll</th>
						<th>Registation</th>
						<th>Semester</th>
						<th>Technology</th>
						<th>Session</th>
						<th>Institute Name</th>
						<th>Option</th>
					</tr>
				</thead>
				<tbody>
				<?php 
					while($info=mysqli_fetch_array($query)){
				?>
					<tr>
						<td><?php echo $info['id'];?></td>
						<td><?php echo $info['name'];?></td>
						<td><?php echo $info['roll'];?></td>
						<td><?php echo $info['reg'];?></td>
						<td><?php echo $info['semester'];?></td>
						<td><?php echo $info['technology'];?></td>
						<td><?php echo $info['session'];?></td>
						<td><?php echo $info['institute'];?></td>
						<td><a href="edit-info.php?id=<?php echo $info['id'];?>">Edit</a> || <a href="delete-info.php?id=<?php echo $info['id'];?>">Delete</a></td>
					</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
	</section>

<?php 
	include("footer.php");
?>