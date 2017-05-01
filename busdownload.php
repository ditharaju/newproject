<?php

	$host="localhost";
	$username="raakinfo_adminus";
				$password="Raahul@2016";
$db_name="raakinfo_projects";

$con=mysqli_connect("$host", "$username", "$password","$db_name")or die("Your Connection is in error");


$a=$_REQUEST['file'];

$query = "SELECT filename,filetype,filesize,filecontent FROM business WHERE busid = '$a' ";

$result = mysqli_query($con,$query) or die('Error, query failed');
list($filename, $filetype, $filesize, $filecontent) = mysqli_fetch_array($result);

header("Content-length: $filesize");
header("Content-type: $filetype");
header("Content-Disposition: attachment; filename=$filename");
echo $filecontent;
exit;
?>