<!DOCTYPE html>
<html lang="es">

<head>
    <title>Estudiantes</title>
    <?php 
        include_once 'Includes/Estructuras/links.html';
        include_once 'Includes/Estructuras/Estudiantes/Navegacion.html';
    ?>
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

                                        <form id="register_form" novalidate action="form_action.php" method="post">

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

                                                </div>
                                                <input type="text" class="form-control"
                                                    placeholder="Fernanda Maricela Soto Guerrero" readonly>
                                                <input type="submit"
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

                                                    <div class="col-sm-6">
                                                        <div class="box-header">
                                                            <h3 class="box-title">Actividades</h3>
                                                        </div>
                                                        <label>Ingrese Las Actividades Realizadas</label>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="box-header">
                                                            <h3 class="box-title">Fecha</h3>
                                                        </div>
                                                        <label>Seleccione la fecha de trabajo
                                                        </label>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <div class="box-header">
                                                            <h3 class="box-title">Horas</h3>
                                                        </div>
                                                        <label>Ingrese las Horas trabajadas
                                                        </label>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" placeholder="Enter ..."
                                                            name="campo_0">
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="input-group">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-clock-o"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right"
                                                                id="datepicker" name="Fecha_Act_0">

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-2">


                                                        <input type="text" class="form-control" placeholder="# Horas"
                                                            name="horas_0">
                                                    </div>


                                                    <div class="col-sm-12" style="margin-top:1em">
                                                        <div id="div1" class="question">
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control"
                                                                    placeholder="Enter ..." name="campo_1">
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <div class="input-group">
                                                                    <div class="input-group-addon">
                                                                        <i class="fa fa-clock-o"></i>
                                                                    </div>
                                                                    <input type="text" class="form-control pull-right" id="datepicker" name="Fecha_Act_1">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-2">


                                                                <input type="text" class="form-control"
                                                                    placeholder="# Horas" name="horas_1">
                                                            </div>
                                                        </div>
                                                    </div>




                                                    <div class="col-sm-12" style="margin-top:1em">
                                                        <div id="div2" class="question">
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control"
                                                                    placeholder="Enter ..." name="campo_2">
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <div class="input-group">
                                                                    <div class="input-group-addon">
                                                                        <i class="fa fa-clock-o"></i>
                                                                    </div>
                                                                    <input type="text" class="form-control pull-right" id="datepicker" name="Fecha_Act_2">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-2">

                                                                <input type="text" class="form-control"
                                                                    placeholder="# Horas" name="horas_2">
                                                            </div>
                                                        </div>
                                                    </div>





                                                    <div class="col-sm-12" style="margin-top:1em">
                                                        <div id="div3" class="question">
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control"
                                                                    placeholder="Enter ..." name="campo_3">
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <div class="input-group">
                                                                    <div class="input-group-addon">
                                                                        <i class="fa fa-clock-o"></i>
                                                                    </div>
                                                                    <input type="text" class="form-control pull-right" id="datepicker" name="Fecha_Act_2">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-2">

                                                                <input type="text" class="form-control"
                                                                    placeholder="# Horas" name="horas_3">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-12" style="margin-top:1em">
                                                        <div id="div4" class="question">
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control"
                                                                    placeholder="Enter ..." name="campo_4">
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <div class="input-group">
                                                                    <div class="input-group-addon">
                                                                        <i class="fa fa-clock-o"></i>
                                                                    </div>
                                                                    <input type="text" class="form-control pull-right" id="datepicker" name="Fecha_Act_4">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-2">


                                                                <input type="text" class="form-control"
                                                                    placeholder="# Horas" name="horas_4">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-12" style="margin-top:1em">
                                                        <div id="div5" class="question">
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control"
                                                                    placeholder="Enter ..." name="campo_5">
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <div class="input-group">
                                                                    <div class="input-group-addon">
                                                                        <i class="fa fa-clock-o"></i>
                                                                    </div>
                                                                    <input type="text" class="form-control pull-right" id="datepicker" name="Fecha_Act_5">
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
                                                                id="next">Agregar Actividad</button>
                                                        </div>
                                                        <div class="col-sm-2">
                                                            <button class="btn btn-block btn-default bg-muted"
                                                                type="button" onclick="GetSelectedItem()" id="b">Borrar
                                                                Actividad</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <input type="button" name="previous" style="width:20%; "
                                                    class="btn btn-block btn-default bg-yellow" value="Regresar" />
                                                <input type="submit" name="submit"
                                                    class="btn btn-block btn-default bg-green" style="width:20%; "
                                                    value="Enviar" />
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
                                        $("#register_form").submit(function(event) {
                                            var error_message = '';
                                            if (!$("#email").val()) {
                                                error_message += "Ingrese Un Titulo";
                                            }
                                            if (!$("#password").val()) {
                                                error_message += "<br>Seleccione una A";
                                            }
                                            if (!$("#mobile").val()) {
                                                error_message += "<br>Please Fill Mobile Number";
                                            }
                                            // Display error if any else submit form
                                            if (error_message) {
                                                $('.alert-success').removeClass('hide').html(
                                                    error_message);
                                                return false;
                                            } else {
                                                return true;
                                            }
                                        });
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
                            <!-- /.box-header -->
                            <div class="box-body">
                                <form role="form">
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>NOMBRE DE LA TITULACIÓN/CARRERA:</label>
                                        <input type="text" class="form-control"
                                            placeholder="Sistemas Informáticos y Computación" readonly>
                                        <label>INFORME BIMESTRAL DE:</label>
                                        <?php  $user->SetTipoGP();?>
                                        <label>PRÁCTICAS PREPROFESIONALES</label>
                                        <?php  $user->SetCiclo();?>
                                        <label>GESTIÓN PRODUCTIVA/PRACTICUM :</label>
                                        <?php  $user->SetNivelGP();?>
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
                            <!-- /.box-body -->
                        </div>
                        <div class="col-sm-6">
                            <div class="box box-info">
                                <div class="box-header">
                                    <h3 class="box-title">Informe Bimestral
                                        <small>Describa las actividades realizadas a lo largo del ciclo.
                                        </small>
                                    </h3>
                                    <!-- tools box -->
                                    <div class="pull-right box-tools">
                                        <button type="button" class="btn btn-info btn-sm" data-widget="collapse"
                                            data-toggle="tooltip" title="Collapse">
                                            <i class="fa fa-minus"></i></button>
                                        <button type="button" class="btn btn-info btn-sm" data-widget="remove"
                                            data-toggle="tooltip" title="Remove">
                                            <i class="fa fa-times"></i></button>
                                    </div>
                                    <!-- /. tools -->
                                </div>
                                <!-- /.box-header -->
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

        <!--************
            ************
            Inicio de la sección Carta de Compromiso
            ************
            ************
            ************
        -->

        <div id="comp" style="display: none;">
            <div class="container-fluid" style="margin: 20px 0;">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Estudiantes <small>Carta de compromiso</small></h1>
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
                                            <h5>Formuladrio para la carta de compromiso</h5>
                                        </td>

                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        <div class="col-sm-6">

                            <!-- /.box-header -->
                            <div class="box-body">
                                <form role="form">
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>CUIDAD:</label>
                                        <input type="text" class="form-control" placeholder="Loja ...">
                                        <label>Fecha:</label>

                                        <div class="input-group date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="datepicker">
                                        </div>


                                        <label></label>
                                        <select class="form-control">
                                            <option>Magister</option>
                                            <option>Doctor</option>
                                        </select>
                                        <label>Coordinador de la titulacion de:</label>
                                        <input type="text" class="form-control" placeholder="Nombre del Cordinador">
                                        <label>Yo:</label>
                                        <h4>
                                            <input type="text" class="form-control" placeholder="<?php
                                        echo $user->getPNombre();echo" ";
                                         echo $user->getSNombre();echo" ";
                                          echo $user->getPApellido();echo" ";
                                         echo $user->getMApellido();echo" ";
                                        ?>" readonly>
                                        </h4>
                                    </div>

                                </form>

                            </div>
                            <!-- /.box-body -->
                        </div>

                        <div class="col-sm-6">

                            <form role="form">
                                <label>Estudiante de la carrera de:</label>
                                <input type="text" class="form-control"
                                    placeholder="Sistemas Informáticos y Computación" readonly>
                                <label>Practica pro profesional del ciclo:</label>
                                <?php  $user->SetCiclo();?>

                                <label>GESTIÓN PRODUCTIVA/PRACTICUM :</label>
                                <?php  $user->SetNivelGP();?>
                                <label>Institucion o dependencia:</label>
                                <input type="text" class="form-control"
                                    placeholder="<?php echo $user->getInstitucion();?>" readonly>
                                <table style="margin-top: 5%;width: 50%;">
                                    <tr>
                                        <td>
                                            <button type="button"
                                                class="btn btn-block btn-default bg-blue">Enviar</button>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-block btn-default bg-yellow">Borrar
                                            </button>
                                        </td>
                                    </tr>
                                </table>
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
            <div class="container-fluid" style="margin: 20px 0;">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Estudiantes <small>Carta de compromiso</small></h1>
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
                                            <h5>Formulario para la carta de compromiso</h5>
                                        </td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-sm-6">
                            <!-- /.box-header -->
                            <div class="box-body">
                                <form role="form">
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>CUIDAD:</label>
                                        <input type="text" class="form-control" placeholder="Loja ...">
                                        <label>Fecha:</label>
                                        <div class="input-group date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="datepicker2">
                                        </div>
                                        <select class="form-control">
                                            <option>Magister</option>
                                            <option>Doctor</option>
                                        </select>
                                        <label>Coordinador de la titulacion de:</label>
                                        <input type="text" class="form-control" placeholder="Nombre del Cordinador">
                                        <label>Yo:</label>
                                        <h4>
                                            <input type="text" class="form-control" placeholder="<?php
                                        echo $user->getPNombre();echo" ";
                                         echo $user->getSNombre();echo" ";
                                          echo $user->getPApellido();echo" ";
                                         echo $user->getMApellido();echo" ";
                                        ?>" readonly>
                                        </h4>
                                    </div>
                                    <?php
                                    include 'Includes/Estructuras/date.html';
                                ?>
                                </form>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <div class="col-sm-6">
                            <form role="form">
                                <label>Estudiante de la carrera:</label>
                                <input type="text" class="form-control"
                                    placeholder="Sistemas Informáticos y Computación" readonly>
                                <label>Practica pro profesional del ciclo:</label>
                                <?php  $user->SetCiclo();?>
                                <label>GESTIÓN PRODUCTIVA/PRACTICUM :</label>
                                <?php  $user->SetNivelGP();?>
                                <label>Institucion o dependencia:</label>
                                <input type="text" class="form-control"
                                    placeholder="<?php echo $user->getInstitucion();?>" readonly>
                                <table style="margin-top: 5%;width: 50%;">
                                    <tr>
                                        <td>
                                            <button type="button"
                                                class="btn btn-block btn-default bg-blue">Enviar</button>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-block btn-default bg-yellow">Borrar
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </form>
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
            <div class="container-fluid" style="margin: 20px 0;">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Estudiantes <small>Incidencias</small></h1>
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
                                            <h5>Formulario de resgistro de incidencias</h5>
                                        </td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-sm-6">
                            <!-- /.box-header -->
                            <div class="box-body">
                                <form role="form">
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>Incidencia:</label>
                                        <input type="text" class="form-control" placeholder="Titulo ...">
                                        <label>GESTIÓN PRODUCTIVA/PRACTICUM :</label>
                                        <?php  $user->SetNivelGP();?>
                                        <label>Tipo de incidencia:</label>
                                        <?php  $user->getIncidencia();?>
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
                            <!-- /.box-body -->
                        </div>
                        <div class="col-sm-6">
                            <div class="box box-info">
                                <div class="box-header">
                                    <h3 class="box-title">Incidencia
                                        <small>Describa la incidencia ocurrida dentro de las practicas pre
                                            profesionales.
                                        </small>
                                    </h3>
                                    <!-- tools box -->
                                    <div class="pull-right box-tools">
                                        <button type="button" class="btn btn-info btn-sm" data-widget="collapse"
                                            data-toggle="tooltip" title="Collapse">
                                            <i class="fa fa-minus"></i></button>
                                        <button type="button" class="btn btn-info btn-sm" data-widget="remove"
                                            data-toggle="tooltip" title="Remove">
                                            <i class="fa fa-times"></i></button>
                                    </div>
                                    <!-- /. tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body pad">
                                    <form>
                                        <textarea id="editor2" name="editor2" rows="10" cols="80">
                                           Describa aqui la o las incidencias.
                                        </textarea>
                                    </form>
                                    <script>
                                    $(function() {
                                        // Replace the <textarea id="editor1"> with a CKEditor
                                        // instance, using default configuration.
                                        CKEDITOR.replace('editor2')
                                        //bootstrap WYSIHTML5 - text editor
                                        $('.textarea').wysihtml5()
                                    })
                                    </script>
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
        <?php
    include 'Includes/Estructuras/Estudiantes/BotonesMenu.php';
    include 'Includes/Estructuras/Footer.php';
    ?>
    </div>
    <?php 
    include_once 'Includes/Estructuras/ScriptsFooter.php';
    ?>

</body>

</html>