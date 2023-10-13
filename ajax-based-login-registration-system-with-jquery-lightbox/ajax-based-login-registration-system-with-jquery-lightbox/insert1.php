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
            $score=$_POST['ScorePattern'];
			$score=settype($score, 'integer');
             $sql= mysqli_query($conn,"INSERT INTO approve_pattern(pattern_sequence,userid,score) VALUES('".$pattern_sequence."','".$userid."',$score)");

 ?>