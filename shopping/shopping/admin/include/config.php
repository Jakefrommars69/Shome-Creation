<?php
$sname = "localhost";
$uname = "shopping";
$password = "4X62W5kJsjyiCet6";
$db_name = "shopping";

$con = mysqli_connect($sname,$uname,$password,$db_name);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>