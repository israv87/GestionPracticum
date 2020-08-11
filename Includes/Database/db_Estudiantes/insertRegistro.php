<?php

//nos conectamos a la BD`

include'Conexion_Estudiante.php';

$objData = new  Database();



$codReg = $_POST['codReg'];
$val = (int) $codReg+1;
echo $val ;
$idEst = $_POST['idEst'];

$titulo = $_POST['titulo'];
$fechaHoy = $_POST['fechaHoy'];
$Observacion ="Ninguna";
$Validacion=0;
$Calificacion=0;
$HorasTrabajadas=0;
$sth0 = $objData->prepare("INSERT INTO registro_asistencias (CodRegistro, idEstudiante, Titulo, Fecha, Observacion, Validacion, Calificacion, HorasTrabajadas) 
VALUES ('$val  ', '$idEst', '$titulo', '$fechaHoy', '$Observacion', 0, 0, 0)");

$sth0->execute();

$query1 = $objData->prepare('Select max(idRegistroAistencias) as"id" from registro_asistencias');
$query1->execute();

foreach ($query1 as $currentUser1) {
    $id = $currentUser1['id'];

    if (empty($_POST['Actividad_1'])) {  
    } else {
        $sth1 = $objData->prepare("INSERT INTO actividades_registro (Actividad, Fecha, HEntrada, HSalida, HorasTrabajadas, idRegistroAistencias) 
        VALUES (:Actividad_1, :Fecha_Act_1, :HIn_1, :Hout_1, :horas_1, '$id')");
    
    $Actividad_1 = $_POST['Actividad_1'];
    $HIn_1= $_POST['HIn_1'];
    $Hout_1= $_POST['Hout_1'];
    $horas_1= $_POST['horas_1'];
    $Fecha_Act_1 = $_POST['Fecha_Act_1'];
    
    $sth1->bindParam(':Actividad_1', $Actividad_1);
    $sth1->bindParam(':Fecha_Act_1', $Fecha_Act_1);
    $sth1->bindParam(':Hout_1', $Hout_1);
    $sth1->bindParam(':HIn_1', $HIn_1);
    $sth1->bindParam(':horas_1', $horas_1);
    $sth1->execute();
    }
    
    
    if (empty($_POST['Actividad_2'])) {  
    } else {
        $sth2 = $objData->prepare("INSERT INTO actividades_registro (Actividad, Fecha, HEntrada, HSalida, HorasTrabajadas, idRegistroAistencias) 
        VALUES (:Actividad_2, :Fecha_Act_2, :HIn_2, :Hout_2, :horas_2, '$id')");
    
    $Actividad_2 = $_POST['Actividad_2'];
    $HIn_2= $_POST['HIn_2'];
    $Hout_2= $_POST['Hout_2'];
    $horas_2= $_POST['horas_2'];
    $Fecha_Act_2 = $_POST['Fecha_Act_2'];
    
    $sth2->bindParam(':Actividad_2', $Actividad_2);
    $sth2->bindParam(':Fecha_Act_2', $Fecha_Act_2);
    $sth2->bindParam(':Hout_2', $Hout_2);
    $sth2->bindParam(':HIn_2', $HIn_2);
    $sth2->bindParam(':horas_2', $horas_2);
    $sth2->execute();
    }
    
    
    if (empty($_POST['Actividad_3'])) {  
    } else {
        $sth3 = $objData->prepare("INSERT INTO actividades_registro (Actividad, Fecha, HEntrada, HSalida, HorasTrabajadas, idRegistroAistencias) 
        VALUES (:Actividad_3, :Fecha_Act_3, :HIn_3, :Hout_3, :horas_3, '$id')");
    
    $Actividad_3 = $_POST['Actividad_3'];
    $HIn_3= $_POST['HIn_3'];
    $Hout_3= $_POST['Hout_3'];
    $horas_3= $_POST['horas_3'];
    $Fecha_Act_3 = $_POST['Fecha_Act_3'];
    
    $sth3->bindParam(':Actividad_3', $Actividad_3);
    $sth3->bindParam(':Fecha_Act_3', $Fecha_Act_3);
    $sth3->bindParam(':Hout_3', $Hout_3);
    $sth3->bindParam(':HIn_3', $HIn_3);
    $sth3->bindParam(':horas_3', $horas_3);
    $sth3->execute();
    }
    
    
    if (empty($_POST['Actividad_4'])) {  
    } else {
        $sth4 = $objData->prepare("INSERT INTO actividades_registro (Actividad, Fecha, HEntrada, HSalida, HorasTrabajadas, idRegistroAistencias) 
        VALUES (:Actividad_4, :Fecha_Act_4, :HIn_4, :Hout_4, :horas_4, '$id')");
    
    $Actividad_4 = $_POST['Actividad_1'];
    $HIn_4= $_POST['HIn_4'];
    $Hout_4= $_POST['Hout_4'];
    $horas_4= $_POST['horas_4'];
    $Fecha_Act_4 = $_POST['Fecha_Act_4'];
    
    $sth4->bindParam(':Actividad_4', $Actividad_4);
    $sth4->bindParam(':Fecha_Act_4', $Fecha_Act_4);
    $sth4->bindParam(':Hout_4', $Hout_4);
    $sth4->bindParam(':HIn_4', $HIn_4);
    $sth4->bindParam(':horas_4', $horas_4);
    $sth4->execute();
    }
    
    
    if (empty($_POST['Actividad_5'])) {  
    } else {
        $sth5 = $objData->prepare("INSERT INTO actividades_registro (Actividad, Fecha, HEntrada, HSalida, HorasTrabajadas, idRegistroAistencias) 
        VALUES (:Actividad_5, :Fecha_Act_5, :HIn_5, :Hout_5, :horas_5, '$id')");
    
    $Actividad_5 = $_POST['Actividad_5'];
    $HIn_5= $_POST['HIn_5'];
    $Hout_5= $_POST['Hout_5'];
    $horas_5= $_POST['horas_5'];
    $Fecha_Act_5 = $_POST['Fecha_Act_5'];
    
    $sth5->bindParam(':Actividad_5', $Actividad_5);
    $sth5->bindParam(':Fecha_Act_5', $Fecha_Act_5);
    $sth5->bindParam(':Hout_5', $Hout_5);
    $sth5->bindParam(':HIn_5', $HIn_5);
    $sth5->bindParam(':horas_5', $horas_5);
    $sth5->execute();
    }
    
    
    if (empty($_POST['Actividad_6'])) {  
    } else {
        $sth6 = $objData->prepare("INSERT INTO actividades_registro (Actividad, Fecha, HEntrada, HSalida, HorasTrabajadas, idRegistroAistencias) 
        VALUES (:Actividad_6, :Fecha_Act_6, :HIn_6, :Hout_6, :horas_6, '$id')");
    
    $Actividad_6 = $_POST['Actividad_6'];
    $HIn_6= $_POST['HIn_6'];
    $Hout_6= $_POST['Hout_6'];
    $horas_6= $_POST['horas_6'];
    $Fecha_Act_6 = $_POST['Fecha_Act_6'];
    
    $sth6->bindParam(':Actividad_6', $Actividad_6);
    $sth6->bindParam(':Fecha_Act_6', $Fecha_Act_6);
    $sth6->bindParam(':Hout_6', $Hout_6);
    $sth6->bindParam(':HIn_6', $HIn_6);
    $sth6->bindParam(':horas_6', $horas_6);
    $sth6->execute();
    }
    
    
    if (empty($_POST['Actividad_7'])) {  
    } else {
        $sth7 = $objData->prepare("INSERT INTO actividades_registro (Actividad, Fecha, HEntrada, HSalida, HorasTrabajadas, idRegistroAistencias) 
        VALUES (:Actividad_7, :Fecha_Act_7, :HIn_7, :Hout_7, :horas_7, '$id')");
    
    $Actividad_7 = $_POST['Actividad_7'];
    $HIn_7= $_POST['HIn_7'];
    $Hout_7= $_POST['Hout_7'];
    $horas_7= $_POST['horas_7'];
    $Fecha_Act_7 = $_POST['Fecha_Act_7'];
    
    $sth7->bindParam(':Actividad_7', $Actividad_7);
    $sth7->bindParam(':Fecha_Act_7', $Fecha_Act_7);
    $sth7->bindParam(':Hout_7', $Hout_7);
    $sth7->bindParam(':HIn_7', $HIn_7);
    $sth7->bindParam(':horas_7', $horas_7);
    $sth7->execute();
    }
    
    
    if (empty($_POST['Actividad_8'])) {  
    } else {
        $sth8 = $objData->prepare("INSERT INTO actividades_registro (Actividad, Fecha, HEntrada, HSalida, HorasTrabajadas, idRegistroAistencias) 
        VALUES (:Actividad_8, :Fecha_Act_8, :HIn_8, :Hout_8, :horas_8, '$id')");
    
    $Actividad_8 = $_POST['Actividad_8'];
    $HIn_8= $_POST['HIn_8'];
    $Hout_8= $_POST['Hout_8'];
    $horas_8= $_POST['horas_8'];
    $Fecha_Act_8 = $_POST['Fecha_Act_8'];
    
    $sth8->bindParam(':Actividad_8', $Actividad_8);
    $sth8->bindParam(':Fecha_Act_8', $Fecha_Act_8);
    $sth8->bindParam(':Hout_8', $Hout_8);
    $sth8->bindParam(':HIn_8', $HIn_8);
    $sth8->bindParam(':horas_8', $horas_8);
    $sth8->execute();
    }
    
    
    if (empty($_POST['Actividad_9'])) {  
    } else {
        $sth9 = $objData->prepare("INSERT INTO actividades_registro (Actividad, Fecha, HEntrada, HSalida, HorasTrabajadas, idRegistroAistencias) 
        VALUES (:Actividad_9, :Fecha_Act_9, :HIn_9, :Hout_9, :horas_9, '$id')");
    
    $Actividad_9 = $_POST['Actividad_9'];
    $HIn_9= $_POST['HIn_9'];
    $Hout_9= $_POST['Hout_9'];
    $horas_9= $_POST['horas_9'];
    $Fecha_Act_9 = $_POST['Fecha_Act_9'];
    
    $sth9->bindParam(':Actividad_9', $Actividad_9);
    $sth9->bindParam(':Fecha_Act_9', $Fecha_Act_9);
    $sth9->bindParam(':Hout_9', $Hout_9);
    $sth9->bindParam(':HIn_9', $HIn_9);
    $sth9->bindParam(':horas_9', $horas_9);
    $sth9->execute();
    }
    
    
    if (empty($_POST['Actividad_10'])) {  
    } else {
        $sth10 = $objData->prepare("INSERT INTO actividades_registro (Actividad, Fecha, HEntrada, HSalida, HorasTrabajadas, idRegistroAistencias) 
        VALUES (:Actividad_10, :Fecha_Act_10, :HIn_10, :Hout_10, :horas_10, '$id')");
    
    $Actividad_10 = $_POST['Actividad_10'];
    $HIn_10= $_POST['HIn_10'];
    $Hout_10= $_POST['Hout_10'];
    $horas_10= $_POST['horas_10'];
    $Fecha_Act_10 = $_POST['Fecha_Act_10'];
    
    $sth40->bindParam(':Actividad_10', $Actividad_10);
    $sth40->bindParam(':Fecha_Act_10', $Fecha_Act_10);
    $sth40->bindParam(':Hout_10', $Hout_10);
    $sth40->bindParam(':HIn_10', $HIn_10);
    $sth40->bindParam(':horas_10', $horas_10);

    $sth40->execute();
    }
    
    $query2 = $objData->prepare("select sum(HorasTrabajadas) as 'horas' from actividades_registro  where idRegistroAistencias =".$id."");
    $query2->execute();
    
    foreach ($query2 as $currentUser2) {
        $totalH = $currentUser2['horas'];
        
        $sth11 = $objData->prepare("UPDATE registro_asistencias SET HorasTrabajadas=$totalH where idRegistroAistencias =".$id."");
        $sth11->execute();
    }

}











header('location: ../../../index.php');
?>