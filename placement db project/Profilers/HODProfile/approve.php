<?php
  session_start();
 if ($_SESSION['husername']){
  }
   else {
	   header("location: index.php");
   }
?>
<!DOCTYPE html>
<html>
<head>
        <link rel="shortcut icon" href="rnsit.ico" type="image/icon">
        <link rel="icon" href="rnsit.ico" type="image/icon">
        <meta http-equiv='refresh' content ='3; url=login.php'>
		</head>
		</html>
<?php
$id = $_POST["id"];
$dob = $_POST["DOB"];
$link=mysqli_connect("localhost","root","","Revised");

if($link === false)
{
die("error:".mysqli_connect_error());
}
$sql = "UPDATE `basicdetails` SET Approve='1',ApprovalDate='$dob' where USN = '$id' ";
if(mysqli_query($link,$sql))
{
echo "$id";
echo "\n";echo "\n";
echo "approved";
}
else 
{
echo "error:".mysqli_error($link);
}
 	
mysqli_close($link);
?>