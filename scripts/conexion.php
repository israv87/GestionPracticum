<?php 

	
	include 'config.php';

	$con=mysqli_connect(HOST,USERHOST,PASSHOST,DATABASE);
	if (!$con) {
		echo "conexion fallida";
	} 

	mysqli_set_charset($con, 'utf8'); // formato de escritura
	date_default_timezone_set('America/caracas'); // zona horario de venezuela

?>