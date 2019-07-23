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


$sth1 = $objData->prepare('INSERT INTO incidencias (CodIncidencia, 
fk_idEstudiante_inc,Titulo,Lugar,Fecha,Hora,Detalle) 
SELECT (select concat("INC00",MAX(idIncidencia)+1 ) from incidencias),
(select idEstudiante from estudiantes, usuarios where idusuario=fk_idUsuario_Est
and usuario= :us),:titulo_inc,:lugar_inc,:fecha_inc,hora_inc,:editor1');

$Fecha7 = $_POST['titulo_inc'];
$Fecha8 = $_POST['lugar_inc'];
$Fecha7 = $_POST['fecha_inc'];
$Fecha8 = $_POST['hora_inc'];
$Fecha8 = $_POST['editor1'];


$sth1->bindParam(':titulo_inc', $titulo_inc);
$sth1->bindParam(':lugar_inc', $lugar_inc);
$sth1->bindParam(':fecha_inc', $fecha_inc);
$sth1->bindParam(':hora_inc', $hora_inc);
$sth1->bindParam(':editor1', $editor1);

$sth1->bindParam(':us', $us);
$sth1->execute();


header('location: ../../../index.php');
?>