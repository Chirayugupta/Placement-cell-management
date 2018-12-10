<?php
  session_start();
 if (isset($_SESSION['pusername'])){
    
	
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
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>Manage Students</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-style.css" rel="stylesheet">
</head>
<body>
    <div class="bg">
  <div class="templatemo-content-container">
          <div class="templatemo-content-widget no-padding">
            <div class="panel panel-default table-responsive">
			<table class="table table-striped table-bordered templatemo-user-table">
                <thead>
                  <tr>            
                    <td><a class="white-text templatemo-sort-by">Date </a></td>
                    <td><a  class="white-text templatemo-sort-by">Campus/Pool </a></td>
                    <td><a  class="white-text templatemo-sort-by">PVenue </a></td>
   <td><a  class="white-text templatemo-sort-by">SSLC </a></td>
   <td><a  class="white-text templatemo-sort-by">PU/Dip </a></td>
			      <td><a  class="white-text templatemo-sort-by">BE </a></td>
			      <td><a  class="white-text templatemo-sort-by">Backlogs </a></td>
				     <td><a class="white-text templatemo-sort-by">History Of Backlogs </a></td>
				     <td><a  class="white-text templatemo-sort-by">Detain Years </a></td> 
				  </thead>
			   </tr>		
<center>
<?php
			
mysql_connect('localhost','root','');
mysql_select_db('Revised');
if(isset($_POST['submit']))
{ 
$cname = $_POST['cname'];
$sql = mysql_query("SELECT * FROM addpdrive WHERE `CompanyName`='$cname'");

while($row = mysql_fetch_assoc($sql))
{
	            print "<tr>"; 	
    echo '<td>'.$row['Date'].'</td>';	
	echo '<td>'.$row['CP'].'</td>';		
	echo '<td>'.$row['PVenue'].'</td>';		
	echo '<td>'.$row['SSLC'].'</td>';	
	echo '<td>'.$row['PU'].'</td>';	
	echo '<td>'.$row['BE'].'</td>';	
	echo '<td>'.$row['Backlogs'].'</td>';	
	echo '<td>'.$row['HofBacklogs'].'</td>';	
	echo '<td>'.$row['DetainYears'].'</td>';
print "</tr>"; 
}
}
    /*	            print "<tr>"; 
    echo $row['Date'];
	print "<br></td><td>Campus/Pool:"; 
	echo $row['CP'];
	print "<br></td><td>Pool Venue:"; 
	echo  $row['PVenue'];
	print "<br></td><td>SSLC:"; 
	echo $row['SSLC'];
	print "<br></td><td>PU/Dip:"; 
	echo $row['PU'];
	print "<br></td><td>BE Aggregate:";
    echo $row['BE'];	
	print "<br></td><td>Current Backlogs:"; 
	echo $row['Backlogs'];
	print "<br></td><td>History of Backlogs:"; 
	echo $row['HofBacklogs'];
	print "<br></td><td>Detain Years:"; 
	echo $row['DetainYears'];
print "</td></tr><br><br><br>"; */
    ?>
      </tbody>
              </table>  
			  </div>
			  </div>
			  </div> 
        </div>
      </div>
    </div>    
    <!-- JS -->
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->
    <script>
      $(document).ready(function(){
        // Content widget with background image
        var imageUrl = $('img.content-bg-img').attr('src');
        $('.templatemo-content-img-bg').css('background-image', 'url(' + imageUrl + ')');
        $('img.content-bg-img').hide();        
      });
    </script>
</body>
</html>

<!-- while ($row = mysql_fetch_assoc($rs_result)) 
{ 

            print "<tr>"; 

print "<td>" . $row['FirstName'] . "</td>"; 
print "<td>" . $row['LastName'] . "</td>"; 
print "<td>" . $row['USN'] . "</td>"; 
print "<td>" . $row['Mobile'] . "</td>"; 
print "<td>" . $row['Email'] . "</td>"; 
print "<td>" . $row['DOB'] . "</td>"; 
print "<td>" . $row['Sem'] . "</td>"; 
print "<td>" . $row['Branch'] . "</td>"; 
print "<td>" . $row['SSLC'] . "</td>"; 
print "<td>" . $row['PU'] . "</td>"; 
print "<td>" . $row['BE'] . "</td>";
print "<td>" . $row['Backlogs'] . "</td>";
print "<td>" . $row['HofBacklogs'] . "</td>";
print "<td>" . $row['DetainYears'] . "</td>";




print "</tr>"; 

} -->
