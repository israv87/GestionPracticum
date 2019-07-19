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


$sth1 = $objData->prepare('INSERT INTO cartacompromiso (CodCartaCompromiso, fk_idEstudiante_comp,Fecha) 
SELECT (select concat("CMP00",MAX(idCartaCom)+1 ) from cartacompromiso),
(select idEstudiante from estudiantes, usuarios where idusuario=fk_idUsuario_Est 
and usuario= :us),:Fecha6');

$Fecha6 = $_POST['Fecha6'];

$sth1->bindParam(':Fecha6', $Fecha6);
$sth1->bindParam(':us', $us);
$sth1->execute();


header('location: ../../../index.php');
?>