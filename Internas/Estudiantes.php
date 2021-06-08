<!DOCTYPE html>
<html lang="es">

<head>

    <title>Estudiantes</title>
    <?php 
        include_once 'Includes/Estructuras/links.html';
        include_once 'Includes/Estructuras/Estudiantes/Navegacion.html';
    ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

            </section>
            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <!-- /.col -->
                    <div class="col-md-12">
                        <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#activity" data-toggle="tab">Estudiante</a></li>
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
                                                    <th>Ciclo:</th>
                                                    <td>
                                                        <?php echo $user->getCiclo()?> Ciclo
                                                        <?php $user->setDatosProyecto($userSession->getCurrentUser()); ?>
                                                    </td>
                                                </tr>

                                                <tr class=" bg-primary" style="background:#3c8dbc">
                                                    <th>Gestion Productiva:</th>
                                                    <td>
                                                        <?php echo $user->getNivelGP()?>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>Paralelo:</th>
                                                    <td>
                                                        "<?php echo $user->getParaleloGP()?>"
                                                    </td>
                                                </tr>
                                                <tr class=" bg-primary" style="background:#3c8dbc">
                                                    <th>Proyecto Asignado:</th>
                                                    <td>
                                                        <?php echo $user->get_Proyecto()?>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>Area: </th>
                                                    <td>
                                                        <?php echo $user->getArea()?>
                                                    </td>
                                                </tr>
                                                <tr class=" bg-primary" style="background:#3c8dbc">
                                                    <th>Departamento:</th>
                                                    <td>
                                                        <?php echo $user->getDepartamento()?>
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
                                                                <?php $user->ContActividadesCompletadas($userSession->getCurrentUser()); ?>
                                                            </span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Actividades Faltantes
                                                            <span class="pull-right badge bg-yellow">
                                                                <?php $user->ContActividadesFaltantes($userSession->getCurrentUser()); ?>
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
                                 <script type="text/javascript">
                                $(document).ready(function() {
                                    var maxField = 10; //Input fields increment limitation
                                    var addButton = $('.add_button'); //Add button selector
                                    var x = 0; //Initial field counter is 1
                                    var wrapper = $('.field_wrapper'); //Input field wrapper


                                    //Once add button is clicked
                                    $(addButton).click(function() {
                                        //Check maximum number of input fields
                                        if (x < maxField) {
                                            x++; //Increment field counter
                                            $(wrapper).append(
                                                '<div><div class="col-sm-3"><input type="text" class="form-control"placeholder="Actividad ..." name="Actividad_' +
                                                x +
                                                '"></div><div class="col-sm-2"><div class="input-group input-append date" id="datePicker' +
                                                x +
                                                '"><input type="text" class="form-control" name="Fecha_Act_' +
                                                x +
                                                '" /><span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span></div></div><div class="col-sm-2"><div class="clearfix"><div class="input-group clockpicker " data-autoclose="true"><input type="text" class="form-control"value="12:00" name="HIn_' +
                                                x +
                                                '"><span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span></div></div></div><div class="col-sm-2"><div class="clearfix"><div class="input-group clockpicker " data-autoclose="true"><input type="text" class="form-control" value="12:00" name="Hout_' +
                                                x +
                                                '"><span class="input-group-addon"><span  class="glyphicon glyphicon-time"></span></div></div></div><div class="col-sm-2"><input type="text" class="form-control" placeholder="# Horas" name="horas_' +
                                                x +
                                                '"></div><div class="col-sm-1"><a href="javascript:void(0);" class="remove_button"><button class="btn btn-block btn-default bg-red"type="button" "id="next">Borrar</button></a></div></div>'
                                                ); //Add field html
                                        }
                                    });

                                    //Once remove button is clicked
                                    $(wrapper).on('click', '.remove_button', function(e) {
                                        e.preventDefault();
                                        $(this).parent('div').parent('div')
                                    .remove(); //Remove field html
                                        x--; //Decrement field counter
                                    });
                                });
                                </script>
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
                                                        placeholder="Prácticas pre profesionales" readonly>
                                                    <label>PRÁCTICAS PREPROFESIONALES</label>
                                                    <input type="text" class="form-control"
                                                        placeholder=".<?php echo $user->getCiclo()?>.Ciclo" readonly>
                                                    <label>GESTIÓN PRODUCTIVA/PRACTICUM :</label>
                                                    <input type="text" class="form-control"
                                                        placeholder=".<?php echo $user->getNivelGP()?>." readonly>
                                                </div>
                                                <div class="col-sm-6">
                                                    <label>Periodo Academico :</label>
                                                    <select class="form-control">
                                                        <option>Abril 2020 - Agosto 2020</option>
                                                    </select>
                                                    <label>Institucion:</label>
                                                    <input type="text" class="form-control" placeholder="UTPL" readonly>
                                                    <label>Dependencia</label>
                                                    <input type="text" class="form-control"
                                                        placeholder=".<?php echo $user->getDepartamento()?>." readonly>
                                                    <label>Tutor Externo :</label>
                                                    <?php $user->setTEName($userSession->getCurrentUser()); ?>
                                                    <input type="text" class="form-control"
                                                        placeholder=".<?php echo $user->getTEName()?>. "
                                                        readonly>
                                                </div>
                                                <div class="col-sm-12">.</div>
                                                <div class="col-sm-4"></div>
                                                <input type="button"
                                                    class="next-form btn btn-block btn-default  bg-light-blue"
                                                    style="width:20%; margin:20px;" value="Siguiente" />
                                            </fieldset>
                                            <fieldset>
                                                <div class="box-header">
                                                    <h3 class="box-title">Titulo del Reporte</h3>
                                                </div>
                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Titulo .."
                                                            name="titulo">
                                                        <?php   $user->SetCodRegistro($userSession->getCurrentUser());?>
                                                        <input type="hidden" class="form-control"
                                                            value="<?php echo $user->getCodReg()?> " name="codReg">
                                                        <input type="hidden" class="form-control"
                                                            value="<?php echo $user->getidEstudiante()?> " name="idEst">
                                                        <input type="hidden" class="form-control"
                                                            value="<?php $month = date('m');$day = date('d');
                                                            $year = date('Y');$today = $year . '-' . $month . '-' . $day;echo $today;?>" name="fechaHoy">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12" style="margin-top:1em">

                                                        <div class="field_wrapper">
                                                            <div>

                                                                <a href="javascript:void(0);" class="add_button"
                                                                    title="Add field" s>
                                                                    <div class="col-sm-12"></div>
                                                                    <div class="col-sm-2">
                                                                        <button
                                                                            class="btn btn-block btn-default bg-blue"
                                                                            type="button" id="next">Agregar
                                                                            Actividad</button>
                                                                </a></div>
                                                            <div class="col-sm-2">
                                                                <input type="submit" name="submit"
                                                                    class="bt1 btn btn-block btn-default bg-green"
                                                                    value="Enviar" />
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-12" style="margin-top:1em">
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
                                                        </div>
                                                    </div>
                                                </div>

                                    </div>

                                    
                                    </fieldset>
                                    <style>
                                    .bt1,
                                    .previous-form {
                                        display: inline-block;
                                    }
                                    </style>
                                    </form>
                                </div>
                                
                               
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
                                                <input type="text" name="table_search" class="form-control pull-right"
                                                    placeholder="Search">

                                                <div class="input-group-btn">
                                                    <button class="btn btn-default"><i
                                                            class="fa fa-search"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body table-responsive no-padding">
                                        <?php $user->RegistrosEntregados($userSession->getCurrentUser()); ?>
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
                    <h1 class="all-tittles">Estudiantes <small>Entregables</small></h1>
                </div>
            </div>
            <div class="row">
                <div class="box box-warning">
                    <div class="box-header with-border">

                        <div class="col-md-12">
                            <script>
                            $(document).ready(function() {
                                $("#form_comp").hide();
                                $("#form_asig").hide();
                                $("#form_new").hide();
                                $("#bt_comp").click(function() {
                                    $("#form_comp").show();
                                    $("#form_asig").hide();
                                    $("#form_new").hide();
                                    $("#bt_comp").hide();
                                    $("#bt_asig").hide();
                                    $("#bt_new").hide();
                                });
                                $("#bt_asig").click(function() {
                                    $("#form_asig").show();
                                    $("#form_comp").hide();
                                    $("#form_new").hide();
                                    $("#bt_comp").hide();
                                    $("#bt_asig").hide();
                                    $("#bt_new").hide();
                                });
                                $("#bt_new").click(function() {
                                    $("#form_new").show();
                                    $("#form_asig").hide();
                                    $("#form_comp").hide();
                                    $("#bt_comp").hide();
                                    $("#bt_asig").hide();
                                    $("#bt_new").hide();
                                });
                            });
                            </script>
                            <div class="col-md-3">
                                <button type="button" id="bt_new" class="btn btn-block btn-default bg-blue">
                                    <i class="fa fa-plus-square"></i>
                                    Nuevo Entregable</button>
                            </div>
                            <div class="col-md-3">
                                <button type="button" id="bt_asig" class="btn btn-block btn-default bg-blue">
                                    <i class="fa fa-plus-square"></i>
                                    Generar Carta de Asignación</button>
                            </div>
                            <div class="col-md-3">
                                <button type="button" id="bt_comp" class="btn btn-block btn-default bg-blue">
                                    <i class="fa fa-plus-square"></i>
                                    Generar Carta de Compromiso</button>
                            </div>
                        </div>
                        <div class="col-md-9">
                        </div>
                        <div id="form_comp">
                            <table style="height: 100px;">
                                <div class="col-md-1"></div>
                                <tbody>
                                    <tr>
                                        <td class="align-left"><img src="assets/imagenes/utpl_logo1.png"></td>
                                        <td class="align-left">
                                            <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                            <h5>Formulario de creacion de la carta de comprmiso para la Gestion
                                                Productiva / Prcticum Agignada </h5>
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
                                    <form action="Includes/Database/db_Estudiantes/insertCartaCompromiso.php"
                                        method="post">
                                        <div class="col-sm-3">
                                            <label>Ciudad:</label>
                                            <input type="hidden" class="form-control"
                                                value="<?php echo $user->getidEstudiante()?> " name="idEst">
                                            <input type="text" class="form-control" placeholder="Loja" readonly>
                                            <label>Fecha:</label>
                                            <div class="input-group input-append date" id="datePicker6">
                                                <input type="text" class="form-control"
                                                    value="<?php echo date('Y-m-d'); ?>" name="Fecha6" />
                                                <span class="input-group-addon add-on"><span
                                                        class="glyphicon glyphicon-calendar"></span></span>
                                            </div>
                                            <label>Cordinador de Titulación:</label>
                                            <input type="text" class="form-control"
                                                placeholder="Fernanda Maricela Soto Guerrero" readonly>
                                            <label>Carrera:</label>
                                            <input type="text" class="form-control"
                                                placeholder="Ingeniería en Sistemas Informáticos y Computación"
                                                readonly>
                                        </div>
                                        <div class="col-sm-3">
                                            <label>Estudiante:</label>
                                            <input type="text" class="form-control"
                                                placeholder=" <?php echo $user->getPNombre()?> <?php echo $user->getSNombre()?> <?php echo $user->getPApellido()?> <?php echo $user->getMApellido();?>"
                                                readonly>
                                            <label>Cédula :</label>
                                            <input type="text" class="form-control"
                                                placeholder="<?php echo $user->getCedula()?>" readonly>
                                            <label>Ciclo:</label>
                                            <input type="text" class="form-control"
                                                placeholder="<?php echo $user->getCiclo()?>" readonly>
                                            <label>Gestión Productiva - Prácticum</label>
                                            <input type="text" class="form-control"
                                                placeholder="<?php echo $user->getNivelGP()?>" readonly>
                                        </div>
                                        <div class="col-sm-3">
                                            <label>Institucion:</label>
                                            <input type="text" class="form-control"
                                                placeholder="<?php echo $user->getDepartamento()?>" readonly>
                                            <label>Dependencia</label>
                                            <input type="text" class="form-control"
                                                placeholder="<?php echo $user->getDepartamento()?>" readonly>

                                            <input type="submit" class="next-form btn btn-block btn-default  bg-green"
                                                style="width:100%; " value="Guardar" />
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                        <div id="form_asig">
                            <table style="height: 100px;">
                                <div class="col-md-1"></div>
                                <tbody>
                                    <tr>
                                        <td class="align-middle"><img src="assets/imagenes/utpl_logo1.png"></td>
                                        <td class="align-middle">
                                            <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                            <h5>Formulario de creacion de la carta de asignación para la Gestion
                                                Productiva / Prcticum Agignada </h5>
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
                                    <form action="Includes/Database/db_Estudiantes/insertCartaAsignacion.php"
                                        method="post">
                                        <div class="col-sm-3">
                                            <label>Ciudad:</label>
                                            <input type="text" class="form-control" placeholder="Loja" readonly>
                                            <input type="hidden" class="form-control"
                                                value="<?php echo $user->getidEstudiante()?> " name="idEst">
                                            <label>Fecha:</label>
                                            <div class="input-group input-append date" id="datePicker7">
                                                <input type="text" class="form-control"
                                                    value="<?php echo date('Y-m-d'); ?>" name="Fecha7" />
                                                <span class="input-group-addon add-on"><span
                                                        class="glyphicon glyphicon-calendar"></span></span>
                                            </div>
                                            <label>Estudiante:</label>
                                            <input type="text" class="form-control"
                                                placeholder=" <?php echo $user->getPNombre()?> <?php echo $user->getSNombre()?> <?php echo $user->getPApellido()?> <?php echo $user->getMApellido();?>"
                                                readonly>

                                            <label>Carrera:</label>
                                            <input type="text" class="form-control"
                                                placeholder="Ingeniería en Sistemas Informáticos y Computación"
                                                readonly>
                                        </div>
                                        <div class="col-sm-3">
                                            <label>Periódo Académico :</label>
                                            <select class="form-control">
                                                <option>Abril 2020 - Agosto 2020</option>
                                            </select>
                                            <label>Institucion:</label>
                                            <input type="text" class="form-control"
                                                placeholder="<?php echo $user->getDepartamento()?>" readonly>
                                            <label>Dependencia</label>
                                            <input type="text" class="form-control"
                                                placeholder="<?php echo $user->getDepartamento()?>" readonly>
                                            <label>Fecha de inicio de practicas:</label>
                                            <div class="input-group input-append date" id="datePicker8">
                                                <input type="text" class="form-control" value="2020-04-13"
                                                    name="Fecha8" />
                                                <span class="input-group-addon add-on"><span
                                                        class="glyphicon glyphicon-calendar"></span></span>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <label>Horas :</label>
                                            <input type="text" class="form-control" placeholder="96 Horas" readonly>
                                            <label>Tutor Externo:</label>
                                            <input type="text" class="form-control"
                                                placeholder=".<?php echo $user->getPNombreTutor()?> <?php echo $user->getSNombreTutor()?> <?php echo $user->getPApellidoTutor()?> <?php echo $user->getMApellidoTutor()?>. "
                                                readonly>
                                            <label>Tutor Academico:</label>
                                            <input type="text" class="form-control"
                                                placeholder=".<?php echo $user->getPNombreTutor()?> <?php echo $user->getSNombreTutor()?> <?php echo $user->getPApellidoTutor()?> <?php echo $user->getMApellidoTutor()?>. "
                                                readonly>


                                            <input type="submit" class="next-form btn btn-block btn-default  bg-green"
                                                style="width:100%; " value="Guardar" />
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                        <div id="form_new" >
                            <table style="height: 100px;">
                                <div class="col-sm-3"></div>
                                <tbody>
                                    <tr>
                                        <td ><img src="assets/imagenes/utpl_logo1.png"
                                               style="width:90%;"></td>
                                        <td >
                                            <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                            <h5>Formulario para ingreso de un nuevo entregable </h5>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="box-body">

                                <style type="text/css">
                                #register_form fieldset:not(:first-of-type) {
                                    display: none;
                                }
                                </style>
                                <div class="container">
                                    <form action="Includes/Database/db_Estudiantes/insertIncidencias.php" method="post">
                                    <div class="col-sm-1"></div>    
                                    <div class="col-sm-4">
                                            <label>Titulo:</label>
                                            <input type="text" class="form-control" placeholder="Titulo..."
                                                name="titulo_inc" style="margin-bottom: 1em;">
                                            <label>Fecha:</label>
                                            <div class="input-group input-append date" id="datePicker8">
                                                <input type="text" class="form-control"
                                                    value="<?php echo date('Y-m-d'); ?>" name="fecha_inc" style="margin-bottom: 1em;">
                                                <span class="input-group-addon add-on" ><span
                                                        class="glyphicon glyphicon-calendar" ></span></span>
                                            </div>
                                            <label>Tipo de Entregable:</label>
                                            <select class="form-control" style="margin-bottom: 1em;">
                                            <option>Registro semanal</option>
                                            <option>Informe Bimestral</option>
                                            <option>Carta de Compromiso</option>
                                            <option>Carta de Asignación</option>
                                            <option>Evaluación de desempeño</option>
                                            </select>
                                        </div>
                                        <div class="col-sm-4">
                                            <label for="exampleFormControlTextarea1">Descripcion:</label>
                                             <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" style="margin-bottom: 1em;"></textarea>
                                             <div class="custom-file">
                                             <label class="custom-file-label" for="customFile">Elegir archivo:</label>
                                            <input type="file" class="custom-file-input" id="customFile" style="margin-bottom: 1em;">
                                           
                                            </div>
                                            <input type="submit" class="next-form btn btn-block btn-default  bg-green"
                                                style="width:100%; " value="Guardar" style="margin-bottom: 1em;">
                                            </div>

                                          
                                           </div>
                  

                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Entregables</h3>
                                    <div class="box-tools">
                                        <div class="input-group input-group-sm" style="width: 150px;">

                                            <div class="input-group-btn">
                                                <button class="btn btn-default"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <?php  $user->Entregables($userSession->getCurrentUser()); ?>
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
                                <h3 class="box-title">Plazas para  <?php echo $user->getNivelGP()?> </h3>
                            </div>
                            <!--
                            <div class="box-body">
                                <//?php  $user->PostulacionProyecto($userSession->getCurrentUser()); ?>
                            </div>
                             -->
                             <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                
                                    <th>Empresa</th>
                                    
                                    <th>Dependencia</th>
                                    <th>Encargado </th>
                                    <th>Email </th>
                                    <th>Telefono</th>
                                    <th>Nombre del Proyecto</th>
                                    <th>Plazas Totales</th>
                                    <th>Plazas Disponibles</th>
                                    <th>Plazas Ocupadas</th>
                                    <th>Estado</th>
                                    <th>Postulacion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                            </table>
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