<?php

//nos conectamos a la BD`

include'Conexion_Estudiante.php';

$objData = new  Database();
    
$sth2 = $objData->prepare('UPDATE registro_aistencias SET Titulo = :titulo
where idRegistroAistencias=(select MAX(idRegistroAistencias) from registro_aistencias, estudiantes, usuarios 
where fk_idEstudiante = idestudiante and fk_idUsuario_Est = idusuario and usuario = :us)');

$practica = $_POST['titulo'];


$sth2->bindParam(':titulo', $titulo);

$sth2->bindParam(':us', $us);
$sth2->execute();

if (empty($_POST['Actividad_0'])) {  
} else {
    $sth3 = $objData->prepare('INSERT into actividades_registro 
    (fk_idRegistroAistencias,actividad,fecha,HEntrada,HSalida,HorasTrabajadas)
    values(
    (SELECT MAX(idRegistroAistencias) FROM registro_aistencias, estudiantes, usuarios
    where fk_idEstudiante= idestudiante and fk_idusuario_est=idusuario and usuario = :us),
    :Actividad_0,:Fecha_Act_0,:HIn_0,:Hout_0,:horas_0);');

$Actividad_0 = $_POST['Actividad_0'];
$HIn_0= $_POST['HIn_0'];
$Hout_0= $_POST['Hout_0'];
$horas_0= $_POST['horas_0'];
$Fecha_Act_0 = $_POST['Fecha_Act_0'];

$sth3->bindParam(':Actividad_0', $Actividad_0);
$sth3->bindParam(':Fecha_Act_0', $Fecha_Act_0);
$sth3->bindParam(':Hout_0', $Hout_0);
$sth3->bindParam(':HIn_0', $HIn_0);
$sth3->bindParam(':horas_0', $horas_0);
$sth3->bindParam(':us', $us);
$sth3->execute();
}
if (empty($_POST['Actividad_1'])) {
    
} else {
    $sth4 = $objData->prepare('INSERT into actividades_registro 
    (fk_idRegistroAistencias,actividad,fecha,HEntrada,HSalida,HorasTrabajadas)
    values(
    (SELECT MAX(idRegistroAistencias) FROM registro_aistencias, estudiantes, usuarios
    where fk_idEstudiante= idestudiante and fk_idusuario_est=idusuario and usuario = :us),
    :Actividad_1,:fecha_1,:HIn_1,:Hout_1,:horas_1);');

$Actividad_1 = $_POST['Actividad_1'];
$HIn_1= $_POST['HIn_1'];
$Hout_1= $_POST['Hout_1'];
$horas_1= $_POST['horas_1'];
$Fecha_Act_1 = $_POST['Fecha_Act_1'];
$var_1 = $Fecha_Act_1;
$fecha_1= date('Y-m-d', strtotime($var_1));

$sth4->bindParam(':Actividad_1', $Actividad_1);
$sth4->bindParam(':fecha_1', $fecha_1);
$sth4->bindParam(':Hout_1', $Hout_1);
$sth4->bindParam(':HIn_1', $HIn_1);
$sth4->bindParam(':horas_1', $horas_1);
$sth4->bindParam(':us', $us);
$sth4->execute();
}if (empty($_POST['Actividad_2'])) {
    
} else {
    $sth5 = $objData->prepare('INSERT into actividades_registro 
    (fk_idRegistroAistencias,actividad,fecha,HEntrada,HSalida,HorasTrabajadas)
    values(
    (SELECT MAX(idRegistroAistencias) FROM registro_aistencias, estudiantes, usuarios
    where fk_idEstudiante= idestudiante and fk_idusuario_est=idusuario and usuario = :us),
    :Actividad_2,:fecha_2,:HIn_2,:Hout_2,:horas_2);');

$Actividad_2 = $_POST['Actividad_2'];
$HIn_2= $_POST['HIn_2'];
$Hout_2= $_POST['Hout_2'];
$horas_2= $_POST['horas_2'];
$Fecha_Act_2 = $_POST['Fecha_Act_2'];
$var_2 = $Fecha_Act_2;
$fecha_2= date('Y-m-d', strtotime($var_2));

$sth5->bindParam(':Actividad_2', $Actividad_2);
$sth5->bindParam(':fecha_2', $fecha_2);
$sth5->bindParam(':Hout_2', $Hout_2);
$sth5->bindParam(':HIn_2', $HIn_2);
$sth5->bindParam(':horas_2', $horas_2);
$sth5->bindParam(':us', $us);
$sth5->execute();
}if (empty($_POST['Actividad_3'])) {
   
} else {
    $sth6 = $objData->prepare('INSERT into actividades_registro 
    (fk_idRegistroAistencias,actividad,fecha,HEntrada,HSalida,HorasTrabajadas)
    values(
    (SELECT MAX(idRegistroAistencias) FROM registro_aistencias, estudiantes, usuarios
    where fk_idEstudiante= idestudiante and fk_idusuario_est=idusuario and usuario = :us),
    :Actividad_3,:fecha_3,:HIn_3,:Hout_3,:horas_3);');

$Actividad_3 = $_POST['Actividad_3'];
$HIn_3= $_POST['HIn_3'];
$Hout_3= $_POST['Hout_3'];
$horas_3= $_POST['horas_3'];
$Fecha_Act_3 = $_POST['Fecha_Act_3'];
$var_3 = $Fecha_Act_3;
$fecha_3= date('Y-m-d', strtotime($var_3));

$sth6->bindParam(':Actividad_3', $Actividad_3);
$sth6->bindParam(':fecha_3', $fecha_3);
$sth6->bindParam(':Hout_3', $Hout_3);
$sth6->bindParam(':HIn_3', $HIn_3);
$sth6->bindParam(':horas_3', $horas_3);
$sth6->bindParam(':us', $us);
$sth6->execute();
}if (empty($_POST['Actividad_4'])) {
    
} else {
    $sth7 = $objData->prepare('INSERT into actividades_registro 
    (fk_idRegistroAistencias,actividad,fecha,HEntrada,HSalida,HorasTrabajadas)
    values(
    (SELECT MAX(idRegistroAistencias) FROM registro_aistencias, estudiantes, usuarios
    where fk_idEstudiante= idestudiante and fk_idusuario_est=idusuario and usuario = :us),
    :Actividad_4,:fecha_4,:HIn_4,:Hout_4,:horas_4);');

$Actividad_4 = $_POST['Actividad_4'];
$HIn_4= $_POST['HIn_4'];
$Hout_4= $_POST['Hout_4'];
$horas_4= $_POST['horas_4'];
$Fecha_Act_4 = $_POST['Fecha_Act_4'];
$var_4 = $Fecha_Act_4;
$fecha_4= date('Y-m-d', strtotime($var_4));

$sth7->bindParam(':Actividad_4', $Actividad_4);
$sth7->bindParam(':fecha_4', $fecha_4);
$sth7->bindParam(':Hout_4', $Hout_4);
$sth7->bindParam(':HIn_4', $HIn_4);
$sth7->bindParam(':horas_4', $horas_4);
$sth7->bindParam(':us', $us);
$sth7->execute();
}if (empty($_POST['Actividad_5'])) {
   
} else {
    $sth8 = $objData->prepare('INSERT into actividades_registro 
    (fk_idRegistroAistencias,actividad,fecha,HEntrada,HSalida,HorasTrabajadas)
    values(
    (SELECT MAX(idRegistroAistencias) FROM registro_aistencias, estudiantes, usuarios
    where fk_idEstudiante= idestudiante and fk_idusuario_est=idusuario and usuario = :us),
    :Actividad_5,:fecha_5,:HIn_5,:Hout_5,:horas_5);');

$Actividad_5 = $_POST['Actividad_5'];
$HIn_5= $_POST['HIn_5'];
$Hout_5= $_POST['Hout_5'];
$horas_5= $_POST['horas_5'];
$Fecha_Act_5 = $_POST['Fecha_Act_5'];
$var_5 = $Fecha_Act_5;
$fecha_5= date('Y-m-d', strtotime($var_5));

$sth8->bindParam(':Actividad_5', $Actividad_5);
$sth8->bindParam(':fecha_5', $fecha_5);
$sth8->bindParam(':Hout_5', $Hout_5);
$sth8->bindParam(':HIn_5', $HIn_5);
$sth8->bindParam(':horas_5', $horas_5);
$sth8->bindParam(':us', $us);
$sth8->execute();
}




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