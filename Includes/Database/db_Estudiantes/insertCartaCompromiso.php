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


$sth1 = $objData->prepare('INSERT INTO cartacompromiso (CodCartaCompromiso, fk_idEstudiante_comp,Fecha,Año) 
SELECT (select concat("CMP00",MAX(idCartaCom)+1 ) from cartacompromiso),
(select idEstudiante from estudiantes, usuarios where idusuario=fk_idUsuario_Est and usuario= :us),
current_date(),2019');
$sth1->bindParam(':us', $us);
$sth1->execute();


/*
$sth2 = $objData->prepare('INSERT into actividades_registro (fk_idRegistroAistencias,actividad,fecha, HorasTrabajadas)
values((SELECT MAX(idRegistroAistencias) FROM registro_aistencias, estudiantes, usuarios
where fk_idEstudiante= idestudiante and fk_idusuario_est=idusuario and usuario = :us),:campo,:fecha,:horas)');


$campo = $_POST['campo'];
$horas = $_POST['horas'];
$fecha_act = $_POST['fecha_act'];

$var = $fecha_act;
$fecha= date('Y-m-d', strtotime($var));

$sth2->bindParam(':campo', $campo);
$sth2->bindParam(':fecha', $fecha);
$sth2->bindParam(':horas', $horas);
$sth2->bindParam(':us', $us);
$sth2->execute();
*/




    





header('location: ../../../index.php');
?>