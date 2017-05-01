<?php
	error_reporting(0);
		$host="localhost";
			$username="root";
			$password="";
$db_name="eorg";

	$con=mysqli_connect("$host", "$username", "$password","$db_name")or die("Your Connection is in error");

?>