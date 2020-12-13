<!DOCTYPE html>
<html lang = "en">
<head>
	<meta charset="utf-8">
	<title>Header</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,100;1,500&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
</head>
<body>
	<div id="nav"><h1><a href="index.html">Supply Chain Based Package</a></h1>
	<ul>
		<li><a href="index.php">Home</a></li>
		<li><a href="product.php">Product</a></li>
		<li><a href="collector.php">Collector</a></li>
		<li><a href="purchase.php">Purchase</a></li>
		<li><a href="submit_process.php">Submit_Process</a></li>
		<li id="hello"><a href="user.php">User</a></li>
	</ul>
		<table align="left" border="10px" style="width: 600px; line-height: 40px; font-family:'Dancing Script', cursive; color: white; font-style: italic; background-color: #40404c7a; width: 100%;
	height: 100px; text-align: center; vertical-align: middle;">

				<tr style="font-variant: small-caps;font-style: normal;color: black; font-size: 18px;">
			<th>U_ID</th>
			<th>U_NAME</th>
			<th>U_PASS</th>
			<th>U_MOB</th>
		</tr>
		<?php
		$conn = mysqli_connect("localhost", "root", "", "project");
		if ($conn-> connect_error){
			die("connection failed:". $conn-> connect_error);
		}
		
		$sql = "SELECT u_id, u_name, u_pass, u_mob from user";
		$result =$conn-> query($sql);
		
		if($result-> num_rows >0){
			while ($row = $result-> fetch_assoc()){
			echo "<tr><td>". $row["u_id"] ."</td><td>". $row["u_name"] ."</td><td>". $row["u_pass"] ."</td><td>". $row["u_mob"] ."</td></tr>";
						
			}
			echo "</table>";
		}
		else {
			echo" 0 result";
		}
		
		$conn-> close();

		?>
	</table>

	</div>
	<div id="hello1">
		</div>
	<div id="hello2">
		</div>
</body>
</html>