<?php
  session_start();
  if($_SESSION["username"]){
    echo "Welcome, ".$_SESSION['username']."!";
  }
   else {
	   header("location: index.php");
}
   
?>
<?php
$connect = mysql_connect("localhost", "root", ""); // Establishing Connection with Server
mysql_select_db("Revised"); // Selecting Database from Server
if(isset($_POST['submit']))
{ 
$fname = $_POST['Fname'];
$lname = $_POST['Lname'];
$USN = $_POST['USN'];
$sun = $_SESSION["username"];
$phno = $_POST['Num'];
$email = $_POST['Email'];
$date = $_POST['DOB'];
$cursem = $_POST['Cursem'];
$branch = $_POST['Branch'];
$per = $_POST['Percentage'];
$puagg = $_POST['Puagg'];
$beaggregate = $_POST['Beagg'];
$back = $_POST['Backlogs'];
$hisofbk = $_POST['History']; 
$detyear = $_POST['Dety'];
      $trigger_insert=mysql_query("Select cdate from update_details");
$row = mysql_fetch_assoc($trigger_insert);

if($USN !=''||$email !='')
{
	if($USN != $sun)
    {
    if($query = mysql_query("INSERT INTO `Revised`.`basicdetails` ( `FirstName`, `LastName`, `USN`, `Mobile`, `Email`, `DOB`, `Sem`, `Branch`, `SSLC`, `PU`, `BE`, `Backlogs`, `HofBacklogs`, `DetainYears`, `Approve`) 
          VALUES ('$fname', '$lname', '$USN', '$phno', '$email', '$date', '$cursem', '$branch', '$per', '$puagg', '$beaggregate', '$back', '$hisofbk', '$detyear', '0')"))
     
    {
				echo "<center>Details has been received successfully...!!</center>";
      }
	  
     
		else echo "FAILED";
}

else{
	  echo "<center>enter your USN only...!!</center>";
}
}
}
?>


<?php
$connect = mysql_connect("localhost", "root", ""); // Establishing Connection with Server
mysql_select_db("Revised"); // Selecting Database from Server
if(isset($_POST['update']))
{ 
$fname = $_POST['Fname'];
$lname = $_POST['Lname'];
$USN = $_POST['USN'];
$sun = $_SESSION["username"];
$phno = $_POST['Num'];
$email = $_POST['Email'];
$date = $_POST['DOB'];
$cursem = $_POST['Cursem'];
$branch = $_POST['Branch'];
$per = $_POST['Percentage'];
$puagg = $_POST['Puagg'];
$beaggregate = $_POST['Beagg'];
$back = $_POST['Backlogs'];
$hisofbk = $_POST['History']; 
$detyear = $_POST['Dety'];
    $trigger1=mysql_query("Select cdate from update_details");
$row = mysql_fetch_assoc($trigger1);

if($USN !=''||$email !='')
{
	if($USN == $sun)
	{
		
	$sql = mysql_query("SELECT * FROM `Revised`.`basicdetails` WHERE `USN`='$USN'");
	if(mysql_num_rows($sql) == 1)
	{
  
		if($query = mysql_query("UPDATE `Revised`.`basicdetails` SET `FirstName`='$fname', `LastName`='$lname', `Mobile`='$phno', `Email`='$email', `DOB`='$date', `Sem`='$cursem', `Branch`= '$branch', `SSLC`='$per', `PU`='$puagg', `BE`='$beaggregate', `Backlogs`='$back', `HofBacklogs`='$hisofbk', `DetainYears`='$detyear' ,`Approve`='0'
           WHERE `basicdetails`.`USN` = '$USN'"))
               {
				echo "<center>Data Updated successfully...!!</center>";
              print "<tr>"; 	
    echo '<td>'.$row['cdate'].'</td>';
            print"</tr>";
               }
	  
            else echo "<center>FAILED</center>";
		
	}	
	else echo "<center>NO record found for update</center>";
	}
else
	echo "<center>Enter your usn only</center>";
}
}
?>