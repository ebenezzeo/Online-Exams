<?php
$con = mysqli_connect("localhost","root","","exams");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

  date_default_timezone_set("UTC"); 
?>