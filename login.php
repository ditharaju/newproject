<?php

		$host="localhost";
			$username="root";
			$password="";
$db_name="eorg";

	$con=mysqli_connect("$host", "$username", "$password","$db_name")or die("Your Connection is in error");



$a=$_REQUEST['user'];

$b=$_REQUEST['pass'];

$c=date("y-m-d");

$get = mysqli_fetch_array(mysqli_query($con,"SELECT groupid FROM usertable WHERE userid='$a' AND password ='$b'"));

$grpid	=	$get['groupid'];

$sql = "SELECT user,password from login where user ='$a' and password = '$b'";

$result=mysqli_query($con,$sql);



$count=mysqli_num_rows($result);

if($count == 0)
{
echo "<script>";
echo " alert('Incorrect Password or Login Expired.');
        window.location.href='index.php';
</script>";

}
else
{
session_Start();
$_SESSION['userid']=$a;
header("location:indexmain.php");

}


?>
