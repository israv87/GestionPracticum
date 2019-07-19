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


$sth1 = $objData->prepare('INSERT INTO carta_asig (CodCartaAsig, fk_est_asig,Fecha,FechaInicio) 
SELECT (select concat("ASG00",MAX(idCARTA_ASIG)+1 ) from carta_asig),
(select idEstudiante from estudiantes, usuarios where idusuario=fk_idUsuario_Est 
and usuario= :us),:Fecha7,:Fecha8');

$Fecha7 = $_POST['Fecha7'];
$Fecha8 = $_POST['Fecha8'];

$sth1->bindParam(':Fecha7', $Fecha7);
$sth1->bindParam(':Fecha8', $Fecha8);
$sth1->bindParam(':us', $us);
$sth1->execute();


header('location: ../../../index.php');
?>