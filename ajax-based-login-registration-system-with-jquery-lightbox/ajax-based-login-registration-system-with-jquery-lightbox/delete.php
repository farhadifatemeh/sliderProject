<?php
    //------insert.php------
     $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "microrna_motif";

    // Create connection
    $conn = new mysqli($servername, $username, $password,$dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } 


          $pattern_sequence=$_POST['pattern_sequence'];
		  $userid=$_POST['userid'];
           // $pass=$_POST['password'];
             $sql= mysqli_query($conn,"DELETE FROM approve_pattern WHERE (pattern_sequence='".$pattern_sequence."' AND userid= '".$userid."')");

 ?>