<?php 

function connect(){
	$servername = "172.16.0.20";
	$username = "web";
	$password = "root";
	try {
    		$connection = new PDO("mysql:host=$servername;dbname=db", $username, $password, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
                // met le mode PDO error à exception
    		$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	catch(PDOException $e){
	    echo "Connection failed: " . $e->getMessage();
	}
	return $connection;
}

?>
