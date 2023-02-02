<?php
$q=$_GET["q"];
$con = mysql_connect('localhost', 'root', 'admin');

if (!$con) 
{
	die('Not able to connect: ' . mysql_error());
}
mysql_select_db("emp", $con);
$query="SELECT * FROM emprecord WHERE id = '".$q."'";
$result = mysql_query($query);
echo "<table border='1'>

<tr>
<th>Name</th>
<th>Age</th>
<th>City</th>
<th>Designation</th>
</tr>";

while($row = mysql_fetch_array($result))
{
	echo "<tr>";
	echo "<td>" . $row['name'] . "</td>";
	echo "<td>" . $row['age'] . "</td>";
	echo "<td>" . $row['city'] . "</td>";
	echo "<td>" . $row['designation'] . "</td>";
	echo "</tr>";
}
echo "</table>";
mysql_close($con);
?>
