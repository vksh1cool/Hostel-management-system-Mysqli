<?php
//connectivity
require('config.php');


if(isset($_POST['submit']))
{
  
	$n = $_POST['feedback'];
	$query = "INSERT INTO feedback VALUES ('$n')";
	mysqli_query($con,$query);
	echo "<center><h2 style='color:green'>Details Saved!</h2></center>";
  
}

if(isset($_POST['display']))
{
	$que = mysqli_query($con,"select * from feedback");
	
	echo "<div align='center'>";
	//echo "<table border='1' bgcolor='#B2B8FF' width='500px'>";
	echo "<tr><th>Feedback</th></tr>";
	
	while($row= mysqli_fetch_array($que))
	{
	  echo "<td>".$row['feedback']."</td>";
  }
 // echo "</table>";
	echo "</div>";
}



?>
<html>
<head>
<script>
  function go()
	{
		document.location='./login.php';
	}
	function refresh()
	{
		document.location='./profile.php?option=feedback';
	}
</script>
</head>
<body style="background-color:#E5E5E5">
<div align="center">
<form method="post" enctype="multipart/form-data">
	<fieldset style="display: inline-flex; background-color: #D8D8D8;">
	<legend><font size="+2"><strong>Feedback</strong></font></legend>
	<p><b>Feedback: </b><textarea placeholder="Give Feedback" name="feedback"></textarea>
    <p><input type="submit" name="submit" value="Submit">&nbsp;<input type="reset" onClick="refresh()"></p>

  </form>
</div>
</body>
</html>