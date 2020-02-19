<!DOCTYPE html>
<html lang="es">
<head>
    <title>Tutor Externo</title>
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
            <?php include_once 'Includes/Estructuras/TutorExterno/MenuTutorExternoLateral.php';
            ?>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">
        <nav class="navbar-user-top full-reset">
            <?php 
               include_once 'Includes/Estructuras/TutorExterno/MenuTutorExterno.php';
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
                    <h2 class="all-tittles">Tutor EXterno <small>Resumen</small></h2>
                </div>
                <ol class="breadcrumb">
                  
                </ol>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <!-- /.col -->
                    <div class="col-md-12">
                        <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#activity" data-toggle="tab">Resumen</a></li>
                                <li><a href="#settings" data-toggle="tab">Calendario</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="active tab-pane" id="activity">
                                    <div class="row">
                                        <div class="col-md-6">
                                            
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
                                <div class="row">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                        

                        <table class="table table-hover">
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Proyecto</th>
                                        <th>Estudiante</th>
                                        <th>Actividad</th>
                                     <th>Estado</th>
                                    </tr>
                                    <tr>
                                        <td>'PRY001'</td>
                                        <td>'Proyecto Ascendere'</td>
                                        <td>'Tania Granda'</td>
                                        <td>'Reporte asistencia'</td>
                                        <td><span class="label label-danger">No revisado</span></td>
                                                  
                                        
                                    </tr> 
                                    <tr>
                                        <td>'PRY001'</td>
                                        <td>'Proyecto Ascendere'</td>
                                        <td>'Jose Abad'</td>
                                        <td>'Incidencias'</td>
                                        
                                        
                                        <td><span class="label label-success">Revisado</span></td>
                                    </tr> 
                                    
                                    </table>
        </div> 
        </div>
        </div> 
   
        
        <div class="box box-warning">
                        <div class="box-header with-border">
                        

                        <table class="table table-hover">
                                    <tr>
                                        <th>Proyecto</th>
                                        <th>Carrera</th>
                                        <th>Estudiante</th>

                                    </tr>
                                    <tr>
                                        <td>'Proyecto Ascendere'</td>
                                        <td>'Ingenieria en Sistemas Informaticos y Computación'</td>
                                        <td>'Jose Abad'</td>
                                    
                                                  
                                        
                                    </tr> 
                               
                                    
                                    </table>
        </div> 
        </div>
        </div> 
        <div class="box box-warning">
                        <div class="box-header with-border">
                        

                        <table class="table table-hover">
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Proyecto</th>
                                        <th>Estudiante</th>
                                        <th>Actividad</th>
                                        <th>Estado</th>
                                    </tr>
                                    <tr>
                                        <td>'PRY001'</td>
                                        <td>'Proyecto Ascendere'</td>
                                        <td>'Jose Abad'</td>
                                        <td>'Reporte de Asistencia'</td>
                                        <td><span class="label label-success">Revisado</span></td>
                                    
                                                  
                                        
                                    </tr> 
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td>'Jose Abad'</td>
                                        <td>'Incidencias'</td>
                                        <td><span class="label label-danger">No revisado</span></td>
                                        
                                    
                                                  
                                        
                                    </tr> 
                                    
                                    </table>
        </div> 
        </div>
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
                        <h1 class="all-tittles">Tutor Externo <small>Actividades del Proyecto</small></h1>
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
                                    Crear nueva actividad</button>
                            </div>
                            <div class="col-md-9"></div>
                            <div id="form" style="display:none;">
                                <table style="height: 100px;">
                                    <div class="col-md-1"></div>
                                    <tbody>
                                        <tr>
                                            <td class="align-middle"><img src="assets/imagenes/utpl_logo1.png"
                                                    style="width: 90%;"></td>
                                            <td class="align-middle">
                                                <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                                <h5>Registro de creacion de actividades</h5>
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
                                               
                                                <div class="row">
                                                    <div class="col-sm-10">
                                                    <div class="box-header">
                                                    <h3 class="box-title">Titulo del Reporte</h3>
                                                </div>
                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Titulo .."
                                                            name="titulo">
                                                    </div>
                                                </div>
                                                    </div>
                                                    <div class="col-sm-3">
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
                                                    <div class="col-sm-3">
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
                                                    <div class="col-sm-1">
                                                        <input type="text" class="form-control" placeholder="# Horas"
                                                            name="horas_0">
                                                    </div>
                                                    <!----**************************************************************************************************************---->
                                                    <div class="col-sm-12" style="margin-top:1em">
                                                        <div id="div1" class="question">
                                                            <div class="col-sm-3">
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
                                                            <div class="col-sm-1">
                                                                <input type="text" class="form-control"
                                                                    placeholder="# Horas" name="horas_1">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!----**************************************************************************************************************---->
                                                    <div class="col-sm-12" style="margin-top:1em">
                                                        <div id="div2" class="question">
                                                            <div class="col-sm-3">
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
                                                            <div class="col-sm-1">
                                                                <input type="text" class="form-control"
                                                                    placeholder="# Horas" name="horas_2">
                                                            </div>

                                                        </div>

                                                        <!----**************************************************************************************************************---->
                                                        <div class="col-sm-12" style="margin-top:1em">
                                                            <div id="div3" class="question">
                                                                <div class="col-sm-3">
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
                                                                <div class="col-sm-1">
                                                                    <input type="text" class="form-control"
                                                                        placeholder="# Horas" name="horas_3">
                                                                </div>
                                                            </div>

                                                            <!----**************************************************************************************************************---->
                                                            <div class="col-sm-12" style="margin-top:1em">
                                                                <div id="div4" class="question">
                                                                    <div class="col-sm-3">
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
                                                                    <div class="col-sm-1">
                                                                        <input type="text" class="form-control"
                                                                            placeholder="# Horas" name="horas_4">
                                                                    </div>
                                                                </div>

                                                                <!----**************************************************************************************************************---->
                                                                <div class="col-sm-12" style="margin-top:1em">
                                                                    <div id="div5" class="question">
                                                                        <div class="col-sm-3">
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
                                                                        <div class="col-sm-1">
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
                                            <h3 class="box-title">Actividades Creadas</h3>
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
            Inicio de la sección Carta de Compromiso
            ************
            ************
            ************
        -->

        <div id="comp" style="display: none;">
        <div class="container-fluid">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Tutor Externo <small>Vlaidación de Asistencias</small></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                        <table class="table table-hover">
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Proyecto</th>
                                        <th>Estudiante</th>
                                        <th>Fecha</th>
                                        <th>Horas trabajadas</th>
                                        <th>Evidencia</th>
                                        <th>Validación</th>
                                    </tr>
                                    <tr>
                                        <td>'PRY001'</td>
                                        <td>'Proyecto Ascendere'</td>
                                        <td>'Jose Abad'</td>
                                        <td>'2019-04-03'</td>
                                        <td>'4'</td>                                        
                                        <td><a href="includes/Estructuras/Estudiantes/CartaAsignacionPDF.php?idInc='.$idIncidenciaPDF.'" target="_blank">
                                        <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                   </a></td>
                                   <td><button type="button" class="btn btn-block btn-default bg-blue disabled="disabled"">Validar</button></td>
                                    </tr> 
                                    <tr>
                                        <td>'PRY001'</td>
                                        <td>'Proyecto Ascendere'</td>
                                        <td>'Tania Granda'</td>
                                        <td>'2019-04-05'</td>
                                        <td>'2'</td>                                        
                                        <td><a href="includes/Estructuras/Estudiantes/CartaAsignacionPDF.php?idInc='.$idIncidenciaPDF.'" target="_blank">
                                        <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                   </a></td>
                                   <td><button type="button" class="btn btn-block btn-default bg-blue disabled="disabled"">Validar</button></td>


                                   
                                    </tr> 
                                    <tr>
                                        <td>'PRY002'</td>
                                        <td>'Aplicacion Interactiva de Uso de diapositivas moviles en el Aula'</td>
                                        <td>'Cristian Jose Macas Pineda'</td>
                                        <td>'2019-04-07'</td>
                                        <td>'5'</td>                                        
                                        <td><a href="includes/Estructuras/Estudiantes/CartaAsignacionPDF.php?idInc='.$idIncidenciaPDF.'" target="_blank">
                                        <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                   </a></td>
                                   <td><button type="button" class="btn btn-block btn-default bg-blue disabled="disabled"">Validar</button></td>
                                   
                                    </tr> 
                                    <tr>
                                        <td>'PRY002'</td>
                                        <td>'Aplicacion Interactiva de Uso de diapositivas moviles en el Aula'</td>
                                        <td>'Ricardo Parin Cabrera'</td>
                                        <td>'2019-04-07'</td>
                                        <td>'5'</td>                                        
                                        <td><a href="includes/Estructuras/Estudiantes/CartaAsignacionPDF.php?idInc='.$idIncidenciaPDF.'" target="_blank">
                                        <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                   </a></td>
                                   <td><button type="button" class="btn btn-block btn-default bg-blue disabled="disabled"">Validar</button></td>
                                   
                                    </tr> 
                                    
                                    
                                    </table>
        </div> </div>
        </div> </div> </div>
                   
        
        
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
                        <h1 class="all-tittles">Tutor Externo <small>Evaluación al Estudiante</small></h1>
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
                                   Nueva Evaluación</button>
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
                                                <h5>Formulario de evaluación de desempeño de estudainte durante el transcurso de la Gestion Productiva / Prcticum Agignada </h5>
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
                                                <div class="col-sm-4">
                                                <label>Proyecto:</label>
                                                    <select class="form-control">
                                                      <option>Proyecto Ascendere</option>
                                                      <option>Aplicacion Interactiva de Uso de diapositivas moviles en el Aula</option>
                                                      </select> 
                                                    <label>Estudiante:</label>
                                                    <select class="form-control">
                                                      <option>Jose Abad</option>
                                                      <option>Tania Granda</option>
                                                      <option>Ricardo Jose Macas</option>

                                  </select>    
                                   <label>Seleccione la Rubrica a Evaluar :</label>
                                                <select  class="form-control">
                                                <option>Rubrica GP1</option>
                                                <option>Rubrica GP2</option>
                                                <option>Rubrica GP3</option>

                                                </select>        
                                                </div>
                                                <div class="col-sm-5">
                                               
                                                
                                                </div>
                                                
                                                
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box">
                                    <div class="box-header">
                                        <h3 class="box-title">Evaluaciones</h3>
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
                                    <table class="table table-hover">
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Proyecto</th>
                                        <th>Estudiante</th>
                                        <th>Evidencia</th>
                                        <th>Calificación</th>
                                    </tr>
                                    <tr>
                                        <td>'PRY001'</td>
                                        <td>'Proyecto Ascendere'</td>
                                        <td>'Jose Abad'</td>                                     
                                        <td><a href="includes/Estructuras/Estudiantes/CartaAsignacionPDF.php?idInc='.$idIncidenciaPDF.'" target="_blank">
                                        <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                   </a>
                                  </td>20</td>
                                    </tr> 
                                    <tr>
                                        <td>'PRY001'</td>
                                        <td>'Proyecto Ascendere'</td>
                                        <td>'Tania Granda'</td>                        
                                        <td><a href="includes/Estructuras/Estudiantes/CartaAsignacionPDF.php?idInc='.$idIncidenciaPDF.'" target="_blank">
                                        <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                   </a>
                                  </td>
                                  </td>19</td>


                                   
                                    </tr> 
                                    <tr>
                                        <td>'PRY002'</td>
                                        <td>'Aplicacion Interactiva de Uso de diapositivas moviles en el Aula'</td>
                                        <td>'Cristian Jose Macas Pineda'</td>
                                         <td><a href="includes/Estructuras/Estudiantes/CartaAsignacionPDF.php?idInc='.$idIncidenciaPDF.'" target="_blank">
                                        <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                   </a>
                                  </td>
                                  </td>18</td>
                                   
                                    </tr> 
                                    <tr>
                                        <td>'PRY002'</td>
                                        <td>'Aplicacion Interactiva de Uso de diapositivas moviles en el Aula'</td>
                                        <td>'Ricardo Parin Cabrera'</td>
                                                                        
                                        <td>
                                          <a href="includes/Estructuras/Estudiantes/CartaAsignacionPDF.php?idInc='.$idIncidenciaPDF.'" target="_blank">
                                        <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                   </a></td>
                                  </td>20</td>
                                   
                                    </tr> 
                                    
                                    
                                    </table>
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
                        <h1 class="all-tittles">Tutor EXterno <small>Reporte de Eventualidades</small></h1>
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
                                                <h5>Formulario para el reporte de eventualidades ocurridas en el transcurso de la Gestion Productiva / Prcticum Agignada </h5>
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
                                                        <label>Estudiante Involucrado:</label>
                                                    <select class="form-control">
                                                      <option>Jose Abad</option>
                                                      <option>Tania Granda</option>
                                                      <option>Ricardo Jose Macas</option>

                                  </select>    
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
                                           Describa aquí la eventualidad ocurrida
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
                                        <h3 class="box-title">Eventualidades</h3>
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
        <div class="container-fluid">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Tutor Externo <small>Propuesta de Proyectos</small></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <div class="col-md-3">
                                <script>
                                $(document).ready(function() {
                                    $("#bt_ppy").click(function() {
                                        $("#form_ppy").show();
                                        $("#bt_ppy").hide();
                                    });
                                });
                                </script>
                                <button type="button" id="bt_ppy" class="btn btn-block btn-default bg-blue">
                                    <i class="fa fa-plus-square"></i>
                                   Nueva Propuesta</button>
                            </div>
                            <div class="col-md-9">
                            </div>
                            <div id="form_ppy" style="display:none;">
                                <table style="height: 100px;">
                                    <div class="col-md-1"></div>
                                    <tbody>
                                        <tr>
                                            <td class="align-middle"><img src="assets/imagenes/utpl_logo1.png"
                                                    style="width: 90%;"></td>
                                            <td class="align-middle">
                                                <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                                <h5>Formulario para una nueva propuesta a un proyecto </h5>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table> <!-- /.box-header -->
                                <form role="form">
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>Nombre de la Empresa / Institución</label>
                                        <input type="text" class="form-control" placeholder="Empresa ...">
                                        <label>¿Mantiene su empresa un convenio con la carrera de Sistemas Informáticos y Computación de la UTPL?</label>
                                        <select class= "form-control">
                                        <option>Si</option>
                                            <option>No</option>
                                        </select>
                                        <label>Nombre de la dependencia</label>
                                        <input type="text" class="form-control" placeholder="Dependencia ...">
                                        <label>Nombre y Apellido del Encargado</label>
                                        <input type="text" class="form-control" placeholder="Encargado ...">
                                        
                                        <label>E-mail del encargado del proyecto</label>
                                        <input type="text" class="form-control" placeholder="Email ...">
                                        <label>Telefono del encargado del proyecto</label>
                                        <input type="text" class="form-control" placeholder="Telefono ...">
                                        <label>Nombre del proyecto</label>
                                        <input type="text" class="form-control" placeholder="Proyecto ...">
                                        <label>Seleccione el número de estudiantes requeridos</label>
                                        <select class= "form-control">
                                        <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                        <label>Por favor, indique las actividades a desarrollarse o entregables esperados del proyecto con un cronograma tentativo de octubre 2018 a febrero 2019. <br> Por ejemplo:
<br>  1. Levantamiento de requerimientos - Del 8 al 19 de octubre
 <br> 2. Diseño de solución arquitectónica - Del 22 al 31 de octubre</label>
                                        <input type="text" class="form-control" placeholder="Actividades ...">
                                        <button type="Submit" class="btn btn-block btn-default bg-blue" >Enviar</button>
                                                    <button type="button" class="btn btn-block btn-default bg-yellow" >Borrar</button>

                            </div>
                                <div class="box-body">
                                    <!-- /.box-header < method="post" action="Includes/Database/db_Estudiantes/insert.php">-->
                                    <style type="text/css">
                                    #register_form fieldset:not(:first-of-type) {
                                        display: none;
                                    }
                                    </style>
                                    <div class="container">
                                        <form action="Includes/Database/db_Estudiantes/insertIncidencias.php" method="post">
                                                
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box">
                                    <div class="box-header">
                                        <h3 class="box-title">Propuestas</h3>
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