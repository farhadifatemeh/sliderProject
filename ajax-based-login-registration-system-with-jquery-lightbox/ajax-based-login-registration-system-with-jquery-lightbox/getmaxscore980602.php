    <?php 
    $host         = "localhost";
    $username     = "root";
    $password     = "";
    $dbname       = "microrna_motif";
    $result_array = array();
    /* Create connection */
    $conn = new mysqli($host, $username, $password, $dbname);
    /* Check connection  */
    if ($conn->connect_error) {
         die("Connection to database failed: " . $conn->connect_error);
    }
    /* SQL query to get results from database */
    //$sql = "SELECT Sequence FROM mirna_motif ";
	$sql = "SELECT  `userid`, sum(approve_pattern.score) total FROM `approve_pattern` WHERE 1 group by userid
order by sum(approve_pattern.score) desc
limit 1";
    $result = $conn->query($sql);
	
    /* If there are results from database push to result array */
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            array_push($result_array, $row);
			
        }
    }
    /* send a JSON encded array to client */
	
    echo json_encode($result_array);
    $conn->close();
    ?>