<!DOCTYPE html>
<html lang="es">
<head>
    <title>Estudiantes</title>
    <?php 
        include_once 'Includes/Estructuras/links.html';
        include_once 'Includes/Estructuras/Estudiantes/Navegacion.html';
    ?>
    <link rel="Assets/Fecha/css/bootstrap-datetimepicker.min.css">
    <link rel="Assets/Fecha/css/bootstrap-datetimepicker.min.js">
</head>
<body>
    <!--llamadas a los menu lateral y superior-->
    <div class="navbar-lateral full-reset">
        <div class="visible-xs font-movile-menu mobile-menu-button"></div>
        <div class="full-reset container-menu-movile nav-lateral-scroll">
            <?php include_once 'Includes/Estructuras/Estudiantes/MenuEstudiantesLateral.php';
            ?>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">
        <nav class="navbar-user-top full-reset">
            <?php 
               include_once 'Includes/Estructuras/Estudiantes/MenuEstudiantes.php';
               ?>
        </nav>
        <!--************
            ************
            ************
            Inicio de la seccion resumen
            ************
            ************
            ************
        -->
        <div id="res">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="page-header">
                    <h2 class="all-tittles">Estudiantes <small>Resumen</small></h2>
                </div>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li><a href="#">Examples</a></li>
                    <li class="active">User profile</li>
                </ol>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <!-- /.col -->
                    <div class="col-md-12">
                        <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#activity" data-toggle="tab">Estudiante</a></li>
                                <li><a href="#settings" data-toggle="tab">Calendario</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="active tab-pane" id="activity">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h2 class="all-tittles"><small>Información del Estudiante</small></h2>
                                            <table class="table table-striped">
                                                <tr class=" bg-primary" style="background:#3c8dbc">
                                                    <th>Estudiante:</th>
                                                    <td>
                                                        <?php echo $user->getPNombre()?>
                                                        <?php echo $user->getSNombre()?>
                                                        <?php echo $user->getPApellido()?>
                                                        <?php echo $user->getMApellido();?>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>Proyecto Asignado:</th>
                                                    <td>
                                                        <?php echo $user->getPE_Proyecto2()?>
                                                    </td>
                                                </tr>
                                                <tr class=" bg-primary" style="background:#3c8dbc">
                                                    <th>Gestion Productiva/ Practicum:</th>
                                                    <td>
                                                        <?php $user->SetTipoGp2($userSession->getCurrentUser()); ?>
                                                        <?php echo $user->getTipoGp2()?>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>Ciclo</th>
                                                    <td>
                                                        <?php $user->SetCiclo2($userSession->getCurrentUser()); ?>
                                                        <?php echo $user->getCiclo2()?> Ciclo
                                                    </td>
                                                </tr>
                                                <tr class=" bg-primary" style="background:#3c8dbc">
                                                    <th>Nivel del Gestion Productiva/Practicum :</th>
                                                    <td>
                                                        <?php $user->SetNivel2($userSession->getCurrentUser()); ?>
                                                        <?php echo $user->getNivel2()?>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>Periodo Académico</th>
                                                    <td>
                                                        Abril 2019 - Agosto 2019
                                                    </td>
                                                </tr>
                                                <tr class=" bg-primary" style="background:#3c8dbc">
                                                    <th>Paralelo:</th>
                                                    <td>
                                                        <?php $user->SetParalelo2($userSession->getCurrentUser()); ?>
                                                        "<?php echo $user->getParalelo2()?>"
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="col-md-6">
                                            <h2 class="all-tittles"><small>Información del Proyecto</small></h2>
                                            <div class="col-md-12">
                                                <ul class="nav nav-stacked">
                                                    <li>
                                                        <a href="#">Actividades Completadas
                                                            <span class="pull-right badge bg-blue">
                                                                <?php $user->ContActividadesFaltantes($userSession->getCurrentUser()); ?>
                                                                <?php $user->ContActividadesCompletadas($userSession->getCurrentUser()); ?>
                                                            </span>
                                                        </a>
                                                    </li>
                                                    <li><a href="#">Horas Trabajadas <span
                                                                class="pull-right badge bg-aqua">28</span></a>
                                                    </li>
                                                    <li><a href="#">Informes Enviados <span
                                                                class="pull-right badge bg-green">1</span></a>
                                                    </li>
                                                    <li><a href="#">Cartas de Compromiso Enviadas <span
                                                                class="pull-right badge bg-red">0</span></a></li>
                                                    <li><a href="#">Cartas de Asignacion Enviadas <span
                                                                class="pull-right badge bg-red">0</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <h2 class="all-tittles"><small>Actividades del Proyecto</small></h2>
                                            <?php   $user->SetActividadesEstudiante($userSession->getCurrentUser());?>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.tab-pane -->
                                <div class="tab-pane" id="settings">
                                    <section class="content">
                                        <!-- /.col -->
                                        <div class="col-md-12">
                                            <div class="box box-primary">
                                                <div class="box-body no-padding">
                                                    <!-- THE CALENDAR -->
                                                    <div id="calendar"></div>
                                                    <?php 
                                                    include 'Includes/Estructuras/ScriptCalendario.php';
                                                    ?>
                                                </div>
                                                <!-- /.box-body -->
                                            </div>
                                            <!-- /. box -->
                                        </div>
                                    </section>
                                    <!-- /.col -->
                                </div>
                                <!-- /.row -->
                            </div>
                            <!-- /.tab-pane -->
                        </div>
                        <!-- /.tab-content -->
                    </div>
                    <!-- /.nav-tabs-custom -->
                </div>
            </section>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        <!--************
            ************
            ************
            Inicio de la sección Registro Asistencia
            ************
            ************
            ************
        -->
        <div id="asis" style="display: none;">
            <div class="container-fluid">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Estudiantes <small>Reporte de Asistencia</small></h1>
                    </div>
                </div>

                <div class="row">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <div class="col-md-2">
                                <script>
                                $(document).ready(function() {
                                    $("#bt").click(function() {
                                        $("#form").show();
                                        $("#bt").hide();
                                    });
                                });
                                </script>
                                <button type="button" id="bt" class="btn btn-block btn-default bg-blue">
                                    <i class="fa fa-plus-square"></i>
                                    Crear nuevo reporte</button>
                            </div>
                            <div class="col-md-10"></div>
                            <div id="form" style="display:none;">
                                <table style="height: 100px;">
                                    <div class="col-md-1"></div>
                                    <tbody>
                                        <tr>
                                            <td class="align-middle"><img src="assets/imagenes/utpl_logo1.png"
                                                    style="width: 90%;"></td>
                                            <td class="align-middle">
                                                <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                                <h5>Registro de asistencias de practicas pre profesionales</h5>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table> <!-- /.box-header -->
                                <div class="box-body">
                                    <!-- /.box-header < method="post" action="Includes/Database/db_Estudiantes/insert.php">-->
                                    <style type="text/css">
                                    #register_form fieldset:not(:first-of-type) {
                                        display: none;
                                    }
                                    </style>
                                    <div class="container">
                                        <form id="register_form" novalidate
                                            action="Includes/Database/db_Estudiantes/insertRegistro.php" method="post">
                                            <fieldset>
                                                <div class="col-sm-6">
                                                    <label>NOMBRE DE LA TITULACIÓN/CARRERA:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Sistemas Informáticos y Computación" readonly>
                                                    <label>REGISTRO Y CONTROL DE ASISTENCIA DE:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder=".<?php echo $user->getTipoGp2()?>." readonly>
                                                    <label>PRÁCTICAS PREPROFESIONALES</label>
                                                    <input type="text" class="form-control"
                                                        placeholder=".<?php echo $user->getCiclo2()?>.Ciclo" readonly>
                                                    <label>GESTIÓN PRODUCTIVA/PRACTICUM :</label>
                                                    <input type="text" class="form-control"
                                                        placeholder=".<?php echo $user->getTipoGp2()?>." readonly>
                                                </div>
                                                <div class="col-sm-6">
                                                    <label>Periodo Academico :</label>
                                                    <select class="form-control">
                                                    <option>Abril 2019 - Agosto 2019</option>
                                                    </select>
                                                    <label>Institucion:</label>
                                                    <input type="text" class="form-control" placeholder="UTPL" readonly>
                                                    <label>Dependencia</label>
                                                    <input type="text" class="form-control" placeholder="Departamento de Ciencias de la Computación y 
                                                Electrónica,Sección Departamental de Ingeniería de Software" readonly>
                                                    <label>Tutor Externo :</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Fernanda Maricela Soto Guerrero" readonly>
                                                </div>
                                                <input type="button"
                                                    class="next-form btn btn-block btn-default  bg-light-blue"
                                                    style="width:20%; " value="Siguiente" />
                                            </fieldset> 
                                            <fieldset>
                                                <div class="box-header">
                                                    <h3 class="box-title">Titulo del Reporte</h3>
                                                </div>
                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Titulo .."
                                                            name="titulo">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="box-header">
                                                            <h3 class="box-title">Actividades</h3>
                                                        </div>
                                                        <label>Ingrese Las Actividades Realizadas</label>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <div class="box-header">
                                                            <h3 class="box-title">Fecha y hora</h3>
                                                        </div>
                                                        <label>Fecha de trabajo
                                                        </label>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <div class="box-header">
                                                            <h3 class="box-title"></h3>
                                                        </div>
                                                        <label>Hora de Entrada
                                                        </label>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <div class="box-header">
                                                            <h3 class="box-title"></h3>
                                                        </div>
                                                        <label>Hora de salida
                                                        </label>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <div class="box-header">
                                                            <h3 class="box-title">Horas Trabajadas</h3>
                                                        </div>
                                                        <label>Horas trabajadas
                                                        </label>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input type="text" class="form-control" placeholder="Actividad ..."
                                                            name="Actividad_0">
                                                    </div>
                                                    <div class="col-sm-2">
                                                    <div class="input-group input-append date" id="datePicker0">
                                                                <input type="text" class="form-control" name="Fecha_Act_0" />
                                                                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                            </div>                                                    
                                                    </div>
                                                    <div class="col-sm-2">

                                                        <div class="clearfix">
                                                            <div class="input-group clockpicker " data-autoclose="true">
                                                                <input type="text" class="form-control" value="12:00"
                                                                    name="HIn_0">
                                                                <span class="input-group-addon">
                                                                    <span class="glyphicon glyphicon-time"></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <div class="clearfix">
                                                            <div class="input-group clockpicker " data-autoclose="true">
                                                                <input type="text" class="form-control" value="12:00"
                                                                    name="Hout_0">
                                                                <span class="input-group-addon">
                                                                    <span class="glyphicon glyphicon-time"></span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <input type="text" class="form-control" placeholder="# Horas"
                                                            name="horas_0">
                                                    </div>
                                                    <!----**************************************************************************************************************---->
                                                    <div class="col-sm-12" style="margin-top:1em">
                                                        <div id="div1" class="question">
                                                            <div class="col-sm-4">
                                                                <input type="text" class="form-control"
                                                                    placeholder="Enter ..." name="Actividad_1">
                                                            </div>
                                                            <div class="col-sm-2">
                                                                 
                                                    <div class="input-group input-append date" id="datePicker1">
                                                                <input type="text" class="form-control" name="Fecha_Act_1" />
                                                                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                            </div>
                                                    
                                                            </div>
                                                            <div class="col-sm-2">
                                                                <div class="clearfix">
                                                                    <div class="input-group clockpicker "
                                                                        data-autoclose="true">
                                                                        <input type="text" class="form-control"
                                                                            value="12:00" name="HIn_1">
                                                                        <span class="input-group-addon">
                                                                            <span
                                                                                class="glyphicon glyphicon-time"></span>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-2">
                                                                <div class="clearfix">
                                                                    <div class="input-group clockpicker "
                                                                        data-autoclose="true">
                                                                        <input type="text" class="form-control"
                                                                            value="12:00" name="Hout_1">
                                                                        <span class="input-group-addon">
                                                                            <span
                                                                                class="glyphicon glyphicon-time"></span>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-2">
                                                                <input type="text" class="form-control"
                                                                    placeholder="# Horas" name="horas_1">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!----**************************************************************************************************************---->
                                                    <div class="col-sm-12" style="margin-top:1em">
                                                        <div id="div2" class="question">
                                                            <div class="col-sm-4">
                                                                <input type="text" class="form-control"
                                                                    placeholder="Enter ..." name="Actividad_2">
                                                            </div>
                                                            <div class="col-sm-2">
                                                                 
                                                    <div class="input-group input-append date" id="datePicker2">
                                                                <input type="text" class="form-control" name="Fecha_Act_2" />
                                                                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                            </div>

                                                            </div>
                                                            <div class="col-sm-2">
                                                                <div class="clearfix">
                                                                    <div class="input-group clockpicker "
                                                                        data-autoclose="true">
                                                                        <input type="text" class="form-control"
                                                                            value="12:00" name="HIn_2">
                                                                        <span class="input-group-addon">
                                                                            <span
                                                                                class="glyphicon glyphicon-time"></span>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-2">
                                                                <div class="clearfix">
                                                                    <div class="input-group clockpicker "
                                                                        data-autoclose="true">
                                                                        <input type="text" class="form-control"
                                                                            value="12:00" name="Hout_2">
                                                                        <span class="input-group-addon">
                                                                            <span
                                                                                class="glyphicon glyphicon-time"></span>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-2">
                                                                <input type="text" class="form-control"
                                                                    placeholder="# Horas" name="horas_2">
                                                            </div>

                                                        </div>

                                                        <!----**************************************************************************************************************---->
                                                        <div class="col-sm-12" style="margin-top:1em">
                                                            <div id="div3" class="question">
                                                                <div class="col-sm-4">
                                                                    <input type="text" class="form-control"
                                                                        name="Actividad_3">
                                                                </div>
                                                                <div class="col-sm-2">
                                                                   
                                                                        <div class="input-group input-append date" id="datePicker3">
                                                                                    <input type="text" class="form-control" name="Fecha_Act_3" />
                                                                                    <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                                                </div>

                                                                </div>
                                                                <div class="col-sm-2">

                                                                    <div class="clearfix">
                                                                        <div class="input-group clockpicker "
                                                                            data-autoclose="true">
                                                                            <input type="text" class="form-control"
                                                                                value="12:00" name="HIn_3">
                                                                            <span class="input-group-addon">
                                                                                <span
                                                                                    class="glyphicon glyphicon-time"></span>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-2">
                                                                    <div class="clearfix">
                                                                        <div class="input-group clockpicker "
                                                                            data-autoclose="true">
                                                                            <input type="text" class="form-control"
                                                                                value="12:00" name="Hout_3">
                                                                            <span class="input-group-addon">
                                                                                <span
                                                                                    class="glyphicon glyphicon-time"></span>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-2">
                                                                    <input type="text" class="form-control"
                                                                        placeholder="# Horas" name="horas_3">
                                                                </div>
                                                            </div>

                                                            <!----**************************************************************************************************************---->
                                                            <div class="col-sm-12" style="margin-top:1em">
                                                                <div id="div4" class="question">
                                                                    <div class="col-sm-4">
                                                                        <input type="text" class="form-control"
                                                                            placeholder="Enter ..." name="Actividad_4">
                                                                    </div>
                                                                    <div class="col-sm-2">
                                                                         
                                                    <div class="input-group input-append date" id="datePicker4">
                                                                <input type="text" class="form-control" name="Fecha_Act_4" />
                                                                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                            </div>

                                                                    </div>
                                                                    <div class="col-sm-2">

                                                                        <div class="clearfix">
                                                                            <div class="input-group clockpicker "
                                                                                data-autoclose="true">
                                                                                <input type="text" class="form-control"
                                                                                    value="12:00" name="HIn_4">
                                                                                <span class="input-group-addon">
                                                                                    <span
                                                                                        class="glyphicon glyphicon-time"></span>
                                                                                </span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-2">
                                                                        <div class="clearfix">
                                                                            <div class="input-group clockpicker "
                                                                                data-autoclose="true">
                                                                                <input type="text" class="form-control"
                                                                                    value="12:00" name="Hout_4">
                                                                                <span class="input-group-addon">
                                                                                    <span
                                                                                        class="glyphicon glyphicon-time"></span>
                                                                                </span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-2">
                                                                        <input type="text" class="form-control"
                                                                            placeholder="# Horas" name="horas_4">
                                                                    </div>
                                                                </div>

                                                                <!----**************************************************************************************************************---->
                                                                <div class="col-sm-12" style="margin-top:1em">
                                                                    <div id="div5" class="question">
                                                                        <div class="col-sm-4">
                                                                            <input type="text" class="form-control"
                                                                                placeholder="Enter ..."
                                                                                name="Actividad_5">
                                                                        </div>
                                                                        <div class="col-sm-2">
                                                                             
                                                    <div class="input-group input-append date" id="datePicker5">
                                                                <input type="text" class="form-control" name="Fecha_Act_5" />
                                                                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                            </div>

                                                                        </div>
                                                                        <div class="col-sm-2">
                                                                            <div class="clearfix">
                                                                                <div class="input-group clockpicker "
                                                                                    data-autoclose="true">
                                                                                    <input type="text"
                                                                                        class="form-control"
                                                                                        value="12:00" name="HIn_5">
                                                                                    <span class="input-group-addon">
                                                                                        <span
                                                                                            class="glyphicon glyphicon-time"></span>
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-2">
                                                                            <div class="clearfix">
                                                                                <div class="input-group clockpicker "
                                                                                    data-autoclose="true">
                                                                                    <input type="text"
                                                                                        class="form-control"
                                                                                        value="12:00" name="Hout_5">
                                                                                    <span class="input-group-addon">
                                                                                        <span
                                                                                            class="glyphicon glyphicon-time"></span>
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-2">
                                                                            <input type="text" class="form-control"
                                                                                placeholder="# Horas" name="horas_5">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-12" style="margin-top:1em">
                                                                    <div class="col-sm-3">
                                                                    </div>
                                                                    <div class="col-sm-2">
                                                                        <button class="btn btn-block btn-default bg-red"
                                                                            type="button" onclick="GetSelectedItem()"
                                                                            id="next">Agregar
                                                                            Actividad</button>
                                                                    </div>
                                                                    <div class="col-sm-2">
                                                                        <button
                                                                            class="btn btn-block btn-default bg-muted"
                                                                            type="button" onclick="GetSelectedItem()"
                                                                            id="b">Borrar
                                                                            Actividad</button>
                                                                    </div>
                                                                </div>

                                                                <style>
                                                                .bt1,
                                                                .previous-form {
                                                                    display: inline-block;
                                                                }
                                                                </style>


                                                                <input type="button" name="previous-form"
                                                                    style="width:20%;"
                                                                    class="previous-form btn btn-block btn-default bg-yellow"
                                                                    value="Regresar" />
                                                                <input type="submit" name="submit"
                                                                    class="bt1 btn btn-block btn-default bg-green"
                                                                    style="width:20%; " value="Enviar" />
                                            </fieldset>
                                        </form>
                                    </div>
                                    <script type="text/javascript">
                                    $(document).ready(function() {
                                        var form_count = 1,
                                            previous_form, next_form, total_forms;
                                        total_forms = $("fieldset").length;
                                        $(".next-form").click(function() {
                                            previous_form = $(this).parent();
                                            next_form = $(this).parent().next();
                                            next_form.show();
                                            previous_form.hide();
                                            setProgressBarValue(++form_count);
                                        });
                                        $(".previous-form").click(function() {
                                            previous_form = $(this).parent();
                                            next_form = $(this).parent().prev();
                                            next_form.show();
                                            previous_form.hide();
                                            setProgressBarValue(--form_count);
                                        });
                                        setProgressBarValue(form_count);

                                        function setProgressBarValue(value) {
                                            var percent = parseFloat(100 / total_forms) * value;
                                            percent = percent.toFixed();
                                            $(".progress-bar1")
                                                .css("width", percent + "%")
                                                .html(percent + "%");
                                        }
                                        // Handle form submit and validation

                                    });
                                    </script>
                                    <script>
                                    var qCount = 1;

                                    $('.question').hide();

                                    $('#next').click(function() {

                                        $('#div' + qCount).show();
                                        qCount = qCount + 1;

                                        if (qCount == 6) {
                                            qCount = 1;
                                        }
                                    });


                                    $('#b').click(function() {

                                        $('#div' + qCount).hide();
                                        qCount = qCount + 1;

                                        if (qCount == 6) {
                                            qCount = 1;
                                        }
                                    });
                                    </script>
                                </div>
                                <div class="progress">
                                    <div class="progress-bar1 progress-bar1-striped active" role="progressbar"
                                        aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>



                            <div class="row">
                                <div class="col-xs-12">

                                    <div class="box">
                                        <div class="box-header">
                                            <h3 class="box-title">Informes de Asistencias</h3>
                                            <div class="box-tools">
                                                <div class="input-group input-group-sm" style="width: 150px;">
                                                    <input type="text" name="table_search"
                                                        class="form-control pull-right" placeholder="Search">

                                                    <div class="input-group-btn">
                                                        <button class="btn btn-default"><i
                                                                class="fa fa-search"></i></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.box-header -->
                                        <div class="box-body table-responsive no-padding">
                                            <?php  $user->RegistrosEntregados($userSession->getCurrentUser()); ?>
                                        </div>
                                        <!-- /.box-body -->
                                    </div>
                                    <!-- /.box -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--************
            ************
            ************
            Inicio de la sección Registro Informe Bimestral
            ************
            ************
            ************
        -->
        <!--
        <div id="inf" style="display: none;">
            <div class="container-fluid" style="margin: 20px 0;">


                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Estudiantes <small>Informe Bimestral</small></h1>

                    </div>
                </div>

                <div class="row">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <table style="height: 100px;">
                                <tbody>
                                    <tr>
                                        <td class="align-middle"><img src="assets/imagenes/utpl_logo1.png"
                                                style="width: 90%;"></td>
                                        <td class="align-middle">
                                            <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                            <h5>Formulario de resgistro y envio del informe bimestral de las practicas
                                                pre profesionales</h5>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-sm-6">
                            
                            <div class="box-body">
                                <form role="form">
                            
                                    <div class="form-group">
                                        <label>NOMBRE DE LA TITULACIÓN/CARRERA:</label>
                                        <input type="text" class="form-control"
                                            placeholder="Sistemas Informáticos y Computación" readonly>
                                        <label>INFORME BIMESTRAL DE:</label>
                                        <?php // $user->SetTipoGP();?>
                                        <label>PRÁCTICAS PREPROFESIONALES</label>
                                        <?php // $user->SetCiclo();?>
                                        <label>GESTIÓN PRODUCTIVA/PRACTICUM :</label>
                                        <?php // $user->SetNivelGP();?>
                                        <label>BIMESTRE:</label>
                                        <select class="form-control">
                                            <option>Primero</option>
                                            <option>Segundo</option>
                                        </select>
                                        <label for="exampleInputFile">Anexos</label>
                                        <input type="file" id="exampleInputFile">
                                        <table style="margin-top: 5%;width: 50%;">
                                            <tr>
                                                <td>
                                                    <button type="button"
                                                        class="btn btn-block btn-default bg-blue">Enviar</button>
                                                </td>
                                                <td>
                                                    <button type="button"
                                                        class="btn btn-block btn-default bg-yellow">Borrar</button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </form>
                            </div>
                           
                        </div>
                        <div class="col-sm-6">
                            <div class="box box-info">
                                <div class="box-header">
                                    <h3 class="box-title">Informe Bimestral
                                        <small>Describa las actividades realizadas a lo largo del ciclo.
                                        </small>
                                    </h3>
                                   
                                    <div class="pull-right box-tools">
                                        <button type="button" class="btn btn-info btn-sm" data-widget="collapse"
                                            data-toggle="tooltip" title="Collapse">
                                            <i class="fa fa-minus"></i></button>
                                        <button type="button" class="btn btn-info btn-sm" data-widget="remove"
                                            data-toggle="tooltip" title="Remove">
                                            <i class="fa fa-times"></i></button>
                                    </div>
                                 
                                </div>
                               
                                <div class="box-body pad">
                                    <form>
                                        <textarea id="editor1" name="editor1" rows="10" cols="80">
                                           Escriba el informe aqui.
                                    </textarea>
                                        <script>
                                        $(function() {
                                            // Replace the <textarea id="editor1"> with a CKEditor
                                            // instance, using default configuration.
                                            CKEDITOR.replace('editor1')
                                            //bootstrap WYSIHTML5 - text editor
                                            $('.textarea').wysihtml5()
                                        })
                                        </script>
                                    </form>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
                                    -->
                                    
        <!--************
            ************
            Inicio de la sección Carta de Compromiso
            ************
            ************
            ************
        -->

        <div id="comp" style="display: none;">
        <div class="container-fluid">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Estudiantes <small>Carta de Compromiso</small></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <div class="col-md-3">
                                <script>
                                $(document).ready(function() {
                                    $("#bt_comp").click(function() {
                                        $("#form_comp").show();
                                        $("#bt_comp").hide();
                                    });
                                });
                                </script>
                                <button type="button" id="bt_comp" class="btn btn-block btn-default bg-blue">
                                    <i class="fa fa-plus-square"></i>
                                   Nueva Carta de Compromiso</button>
                            </div>
                            <div class="col-md-9">
                            </div>
                            <div id="form_comp" style="display:none;">
                                <table style="height: 100px;">
                                    <div class="col-md-1"></div>
                                    <tbody>
                                        <tr>
                                            <td class="align-middle"><img src="assets/imagenes/utpl_logo1.png"
                                                    style="width: 90%;"></td>
                                            <td class="align-middle">
                                                <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                                <h5>Formulario de creacion de la carta de comprmiso para la Gestion Productiva / Prcticum Agignada </h5>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table> <!-- /.box-header -->
                                <div class="box-body">
                                    <!-- /.box-header < method="post" action="Includes/Database/db_Estudiantes/insert.php">-->
                                    <style type="text/css">
                                    #register_form fieldset:not(:first-of-type) {
                                        display: none;
                                    }
                                    </style>
                                    <div class="container">
                                        <form action="Includes/Database/db_Estudiantes/insertCartaCompromiso.php" method="post">
                                                <div class="col-sm-3">
                                                    <label>Ciudad:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Loja" readonly>
                                                    <label>Fecha:</label>  
                                                    <div class="input-group input-append date" id="datePicker6">
                                                        <input type="text" class="form-control" value="<?php echo date('Y-m-d'); ?>" name="Fecha6" />
                                                        <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                    </div>
                                                    <label>Cordinador de Titulación:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Fernanda Maricela Soto Guerrero" readonly>
                                                        <label>Carrera:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Ingeniería en Sistemas Informáticos y Computación" readonly>                                           
                                                </div>
                                                <div class="col-sm-3">
                                                <label>Estudiante:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder=" <?php echo $user->getPNombre()?> <?php echo $user->getSNombre()?> <?php echo $user->getPApellido()?> <?php echo $user->getMApellido();?>" readonly>
                                                    <label>Cédula :</label>
                                                    <?php $user->SetCedula($userSession->getCurrentUser()); ?>
                                                    <input type="text" class="form-control"
                                                        placeholder="<?php echo $user->getCedula()?>" readonly>
                                                    <label>Ciclo:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="<?php echo $user->getCiclo2()?>" readonly>
                                                    <label>Gestión Productiva - Prácticum</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="<?php echo $user->getTipoGp2()?>" readonly>
                                                </div>
                                                <div class="col-sm-3">
                                                <label>Nivel :</label>
                                                <input type="text" class="form-control"
                                                        placeholder="<?php echo $user->getNivel2()?>" readonly>
                                                    <label>Institucion:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="<?php echo $user->getInstitucion()?>" readonly>
                                                    <label>Dependencia</label>
                                                    <?php $user->SetDependenciaEstudiante($userSession->getCurrentUser()); ?>
                                                    <input type="text" class="form-control"
                                                        placeholder="<?php echo $user->getDependencia()?>" readonly>
                                                        <label></label>
                                                        <input type="submit"
                                                    class="next-form btn btn-block btn-default  bg-green"
                                                    style="width:100%; " value="Guardar" />
                                                 </div>
                                                
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box">
                                    <div class="box-header">
                                        <h3 class="box-title">Cartas de Compromiso</h3>
                                        <div class="box-tools">
                                            <div class="input-group input-group-sm" style="width: 150px;">
                      
                                                <div class="input-group-btn">
                                                    <button class="btn btn-default"><i
                                                            class="fa fa-search"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body table-responsive no-padding">
                                        <?php  $user->CartasCompromiso($userSession->getCurrentUser()); ?>
                                    </div>
                                    <!-- /.box-body -->
                                </div>
                                <!-- /.box -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        
        <!--************
            ************
            Inicio de la sección Carta de Asignacion 
            ************
            ************
            ************
        -->
        <div id="asig" style="display: none;">
        <div class="container-fluid">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Estudiantes <small>Carta de Asignación</small></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <div class="col-md-3">
                                <script>
                                $(document).ready(function() {
                                    $("#bt_asig").click(function() {
                                        $("#form_asig").show();
                                        $("#bt_asig").hide();
                                    });
                                });
                                </script>
                                <button type="button" id="bt_asig" class="btn btn-block btn-default bg-blue">
                                    <i class="fa fa-plus-square"></i>
                                   Nueva Carta de Asignación</button>
                            </div>
                            <div class="col-md-9">
                            </div>
                            <div id="form_asig" style="display:none;">
                                <table style="height: 100px;">
                                    <div class="col-md-1"></div>
                                    <tbody>
                                        <tr>
                                            <td class="align-middle"><img src="assets/imagenes/utpl_logo1.png"
                                                    style="width: 90%;"></td>
                                            <td class="align-middle">
                                                <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                                <h5>Formulario de creacion de la carta de asignación para la Gestion Productiva / Prcticum Agignada </h5>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table> <!-- /.box-header -->
                                <div class="box-body">
                                    <!-- /.box-header < method="post" action="Includes/Database/db_Estudiantes/insert.php">-->
                                    <style type="text/css">
                                    #register_form fieldset:not(:first-of-type) {
                                        display: none;
                                    }
                                    </style>
                                    <div class="container">
                                        <form action="Includes/Database/db_Estudiantes/insertCartaAsignacion.php" method="post">
                                                <div class="col-sm-3">
                                                    <label>Ciudad:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Loja" readonly>
                                                    <label>Fecha:</label>  
                                                    <div class="input-group input-append date" id="datePicker7">
                                                        <input type="text" class="form-control" value="<?php echo date('Y-m-d'); ?>" name="Fecha7" />
                                                        <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                    </div>
                                                    <label>Estudiante:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder=" <?php echo $user->getPNombre()?> <?php echo $user->getSNombre()?> <?php echo $user->getPApellido()?> <?php echo $user->getMApellido();?>" readonly>
                                                    
                                                        <label>Carrera:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Ingeniería en Sistemas Informáticos y Computación" readonly>                                           
                                                </div>
                                                <div class="col-sm-3">
                                                <label>Periódo Académico :</label>
                                                <select  class="form-control">
                                                <option>Abril 2019 - Agosto 2019</option>
                                                </select>
                                                <label>Institucion:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="<?php echo $user->getInstitucion()?>" readonly>
                                                    <label>Dependencia</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="<?php echo $user->getDependencia()?>" readonly>
                                                        <label>Fecha de inicio de practicas:</label>  
                                                    <div class="input-group input-append date" id="datePicker8">
                                                        <input type="text" class="form-control" value="2019-04-1" name="Fecha8" />
                                                        <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                <label>Horas :</label>
                                                <input type="text" class="form-control"
                                                        placeholder="96 Horas" readonly>
                                                    <label>Tutor Externo:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="" readonly>
                                                    <label>Tutor Academico:</label>
                                                    <?php $user->SetDependenciaEstudiante($userSession->getCurrentUser()); ?>
                                                    <input type="text" class="form-control"
                                                        placeholder="" readonly>
                                                        <label></label>
                                                        <input type="submit"
                                                    class="next-form btn btn-block btn-default  bg-green"
                                                    style="width:100%; " value="Guardar" />
                                                 </div>
                                                
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box">
                                    <div class="box-header">
                                        <h3 class="box-title">Cartas de Asignacion</h3>
                                        <div class="box-tools">
                                            <div class="input-group input-group-sm" style="width: 150px;">
                      
                                                <div class="input-group-btn">
                                                    <button class="btn btn-default"><i
                                                            class="fa fa-search"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body table-responsive no-padding">
                                        <?php  $user->CartasAsignacion($userSession->getCurrentUser()); ?>
                                    </div>
                                    <!-- /.box-body -->
                                </div>
                                <!-- /.box -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <!--************
            ************
            Inicio de la sección Reporte de incidencias
            ************
            ************
            ************
        -->
        <div id="inc" style="display: none;">
        <div class="container-fluid">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Estudiantes <small>Reporte de Incidencias</small></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <div class="col-md-3">
                                <script>
                                $(document).ready(function() {
                                    $("#bt_inc").click(function() {
                                        $("#form_inc").show();
                                        $("#bt_inc").hide();
                                    });
                                });
                                </script>
                                <button type="button" id="bt_inc" class="btn btn-block btn-default bg-blue">
                                    <i class="fa fa-plus-square"></i>
                                   Nuevo Reporte</button>
                            </div>
                            <div class="col-md-9">
                            </div>
                            <div id="form_inc" style="display:none;">
                                <table style="height: 100px;">
                                    <div class="col-md-1"></div>
                                    <tbody>
                                        <tr>
                                            <td class="align-middle"><img src="assets/imagenes/utpl_logo1.png"
                                                    style="width: 90%;"></td>
                                            <td class="align-middle">
                                                <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                                <h5>Formulario para el reporte de inicidencias ocurridas en el transcurso de la Gestion Productiva / Prcticum Agignada </h5>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table> <!-- /.box-header -->
                                <div class="box-body">
                                    <!-- /.box-header < method="post" action="Includes/Database/db_Estudiantes/insert.php">-->
                                    <style type="text/css">
                                    #register_form fieldset:not(:first-of-type) {
                                        display: none;
                                    }
                                    </style>
                                    <div class="container">
                                        <form action="Includes/Database/db_Estudiantes/insertIncidencias.php" method="post">
                                                <div class="col-sm-4">
                                                    <label>Titulo:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Titulo..." name="titulo_inc" >
                                                    <label>Fecha:</label>  
                                                    <div class="input-group input-append date" id="datePicker8">
                                                        <input type="text" class="form-control" value="<?php echo date('Y-m-d'); ?>" name="fecha_inc" />
                                                        <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                    </div>
                                                    <label>Lugar:</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Loja..."name="lugar_inc" >  
                                                        <label>Hora del suceso :</label>
                                                        <div class="input-group clockpicker "
                                                                                    data-autoclose="true">
                                                                                    <input type="text"
                                                                                        class="form-control"
                                                                                        value="12:00" name="hora_inc">
                                                                                    <span class="input-group-addon">
                                                                                        <span
                                                                                            class="glyphicon glyphicon-time"></span>
                                                                                    </span>
                                                                                </div>  
                                                                                <label></label>
                                                        <input type="submit"
                                                    class="next-form btn btn-block btn-default  bg-green"
                                                    style="width:100%; " value="Guardar" />                                 
                                                </div>
                                                <div class="col-sm-8"/>
                                                <div class="box box-info">
            <div class="box-header">
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip"
                        title="Collapse">
                  <i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip"
                        title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body pad">
              
                    <textarea id="editor1" name="editor1" rows="10" cols="60" >
                                           Describa aquí la incidencia ocurrida
                    </textarea>
            
            </div>
          </div>
                                                
                                                 </div>
                                                 <script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1')
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()
  })
</script>
                                                
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box">
                                    <div class="box-header">
                                        <h3 class="box-title">Cartas de Asignacion</h3>
                                        <div class="box-tools">
                                            <div class="input-group input-group-sm" style="width: 150px;">
                      
                                                <div class="input-group-btn">
                                                    <button class="btn btn-default"><i
                                                            class="fa fa-search"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body table-responsive no-padding">
                                        <?php  $user->Incidencias($userSession->getCurrentUser()); ?>
                                    </div>
                                    <!-- /.box-body -->
                                </div>
                                <!-- /.box -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>

        <!--************
            ************
            Inicio de la seccion Postulacion de Proyectos
            ************
            ************
            ************
        -->
        <div id="pry" style="display: none;">
            <div class="container-fluid" style="margin: 20px 0;">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Estudiantes <small>Postulación de Proyectos</small></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <table style="height: 100px;">
                                <tbody>
                                    <tr>
                                        <td class="align-middle"><img src="assets/imagenes/utpl_logo1.png"
                                                style="width: 90%;"></td>
                                        <td class="align-middle">
                                            <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                            <h5>Proyectos Disponibles para la Gestion Productiva 2.2</h5>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Plazas para la Gestion Productiva 2.2 </h3>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <?php  $user->PostulacionProyecto($userSession->getCurrentUser()); ?>
                                </div>
                                <!-- /.box-body -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
$(document).ready(function() {
    $('#datePicker0')
        .datepicker({
            format: 'yyyy-mm-dd'
        })
    $('#datePicker1')
        .datepicker({
            format: 'yyyy-mm-dd'
        })
        $('#datePicker2')
        .datepicker({
            format: 'yyyy-mm-dd'
        })
        $('#datePicker3')
        .datepicker({
            format: 'yyyy-mm-dd'
        })
        $('#datePicker4')
        .datepicker({
            format: 'yyyy-mm-dd'
        })
        $('#datePicker5')
        .datepicker({
            format: 'yyyy-mm-dd'
        })
        $('#datePicker6')
        .datepicker({
            format: 'yyyy-mm-dd'
        })
        $('#datePicker7')
        .datepicker({
            format: 'yyyy-mm-dd'
        })
        $('#datePicker8')
        .datepicker({
            format: 'yyyy-mm-dd'
        })
        $('#datePicker9')
        .datepicker({
            format: 'yyyy-mm-dd'
        })
        $('#datePicker10')
        .datepicker({
            format: 'yyyy-mm-dd'
        })  
});
</script>
        <?php
    include 'Includes/Estructuras/Estudiantes/BotonesMenu.php';
    include 'Includes/Estructuras/Footer.php';
    ?>
    </div>
    <?php
                                                        include 'assets/clock/script_clock.html';
                                                        ?>
    <?php 
    include_once 'Includes/Estructuras/ScriptsFooter.php';
    ?>
</body>
</html>