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
	$sql = "SELECT Sequence
  FROM mirna_motif AS r1 JOIN
       (SELECT CEIL(RAND() *
                     (SELECT MAX(id)
                        FROM mirna_motif)) AS id)
        AS r2
 WHERE r1.id >= r2.id
 ORDER BY r1.id ASC
 LIMIT 1";
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