<?php

//nos conectamos a la BD`

include'Conexion_Estudiante.php';
include'../user_session.php';
include'../user.php';
$objData = new  Database();
$userSession = new UserSession();
$user = new User();
    
$user->setUser($userSession->getCurrentUser());
$us=$userSession->getCurrentUser();


$Fecha7 = $_POST['Fecha7'];
$idEst = $_POST['idEst'];



$sth1 = $objData->prepare("INSERT INTO entregables (idEstudiante, fecha, tipo, nombre, descripcion, idArchivo) 
VALUES ($idEst, $Fecha7, 'Carta Asignación', 'Carta Asignación', 'Carta Asignación', '1')");

$sth1->execute();



header('location: ../../../index.php');
?>