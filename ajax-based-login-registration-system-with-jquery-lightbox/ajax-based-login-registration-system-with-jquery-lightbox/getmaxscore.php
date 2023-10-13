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
             $sql= mysqli_query($conn,"SELECT  `userid`, sum(approve_pattern.score) total FROM `approve_pattern` WHERE 1 group by userid
order by sum(approve_pattern.score) desc
limit 1");

 ?>