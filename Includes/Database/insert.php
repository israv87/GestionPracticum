<?php

//nos conectamos a la BD

include'drj.php';
include'user_session.php';
include'user.php';
$objData = new  Database();
$userSession = new UserSession();
$user = new User();
    
$user->setUser($userSession->getCurrentUser());
$us=$userSession->getCurrentUser();


$sth = $objData->prepare('INSERT INTO registro_aistencias (CodRegistro,Titulo, fk_idEstudiante,Fecha,HorasTrabajadas,Observacion,AnexoPDF) 
SELECT (select concat("REG00",MAX(idRegistroAistencias)+1 ) from registro_aistencias),:titulo,
(select idEstudiante from estudiantes, usuarios where idusuario=fk_idUsuario_Est and usuario= :us),current_date(),"4", 
"Entregado a Tiempo",LOAD_FILE("C:/Users/Isra/Desktop/semana.pdf");');

$titulo = $_POST['titulo'];

$sth->bindParam(':titulo', $titulo);
$sth->bindParam(':us', $us);

$sth->execute();
header('location: ../../index.php');
?>