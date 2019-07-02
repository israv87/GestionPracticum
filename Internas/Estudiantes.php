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
            <div class="container-fluid" style="margin: 20px 0;">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Estudiantes <small>Resumen</small></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <!-- Widget: user widget style 1 -->
                        <div class="box box-widget widget-user-2">
                            <!-- Add the bg color to the header using any of the bg-* classes -->
                            <div class="widget-user-header bg-yellow">
                                <div class="widget-user-image">
                                    <h3 class="widget-user-username">Proyecto Asignado:</h3>
                                    <h3>
                                        <?php echo $user->getPE_Proyecto2()?>
                                    </h3>
                                </div>
                                <!-- /.widget-user-image -->


                            </div>
                            <div class="box-footer no-padding">
                                <ul class="nav nav-stacked">



                                    <li>
                                        <a href="#">Actividades Completadas


                                            <span class="pull-right badge bg-blue"><?php
                                           
                                            $user->ContActividadesFaltantes($userSession->getCurrentUser());
                                                    
                                            ?>/
                                                <?php
                                            $user->ContActividadesCompletadas($userSession->getCurrentUser());                                            
                                            ?>
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
                    </div>
                    <data class="col-md-6">
                        <div class="box box-solid bg-blue-gradient">
                            <div class="box-header">
                                <i class="fa fa-calendar"></i>

                                <h3 class="box-title">Calendar</h3>
                                <!-- tools box -->
                                <div class="pull-right box-tools">
                                    <!-- button with a dropdown -->
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-warning btn-sm dropdown-toggle"
                                            data-toggle="dropdown">
                                            <i class="fa fa-bars"></i></button>
                                        <ul class="dropdown-menu pull-right" role="menu">
                                            <li><a href="#">Add new event</a></li>
                                            <li><a href="#">Clear events</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">View calendar</a></li>
                                        </ul>
                                    </div>
                                    <button type="button" class="btn btn-warning btn-sm" data-widget="collapse"><i
                                            class="fa fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-warning btn-sm" data-widget="remove"><i
                                            class="fa fa-times"></i>
                                    </button>
                                </div>
                                <!-- /. tools -->
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body no-padding">
                                <!--The calendar -->
                                <div id="calendar" style="width: 100%"></div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer text-black">
                                <?php   
                                   $user->SetActividadesEstudiante($userSession->getCurrentUser());
                                            ?>
                                <!-- /.row -->
                            </div>
                        </div>
                    </data>
                </div>
            </div>
        </div>
        <!--************
            ************
            ************
            Inicio de la sección Registro Asistencia
            ************
            ************
            ************
        -->
        <div id="asis" style="display: none;">
            <div class="container-fluid 2" style="margin: 20px 0;">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Estudiantes <small>Registro de Asistencia</small></h1>
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
                                            <h5>Registro de asistencias de practicas pre profesionales</h5>
                                        </td>

                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        <div class="col-sm-3">
                            <!-- /.box-header -->
                            <div class="box-body">
                                <form role="form">
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>NOMBRE DE LA TITULACIÓN/CARRERA:</label>
                                        <input type="text" class="form-control"
                                            placeholder="Sistemas Informáticos y Computación" readonly>
                                        <label>REGISTRO Y CONTROL DE ASISTENCIA DE:</label>
                                        <?php  $user->SetTipoGP();?>
                                        <label>PRÁCTICAS PREPROFESIONALES</label>
                                        <?php  $user->SetCiclo();?>
                                        <label>GESTIÓN PRODUCTIVA/PRACTICUM :</label>
                                        <?php  $user->SetNivelGP();?>
                                    </div>
                                </form>
                            </div>
                            <!-- /.box-body -->
                        </div>

                        <div class="col-sm-6">

                            <div class="box-header">
                                <h3 class="box-title">Actividades</h3>
                            </div>
                            <div class="box-body">

                                <div class="form-group">
                                    

                                    <div id="listas">
                                        <div class="row">
                                            <div class="col-sm-6">
                                            <label>Ingrese Las Actividades Realizadas</label>
                                            <input type="text" class="form-control" placeholder="Enter ..."name="campo[]">
                                            <input type="button" id="add_field" value="Agregar">
                                            </div>
                                            <div class="col-sm-6">
                                            <label>Seleccione la fecha y Hora de trabajo:</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <input type="text" class="form-control pull-right" id="reservationtime">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <script>
                                var campos_max = 3; //max de 10 campos

                                var x = 0;
                                $('#add_field').click(function(e) {
                                    e.preventDefault(); //prevenir novos clicks
                                    if (x < campos_max) {
                                        $('#listas').append('<div>\
                                        <div class="row">\
                                            <div class="col-sm-6">\
                                            <label>Ingrese Las Actividades Realizadas</label>\
                                            <input type="text" class="form-control" placeholder="Enter ..."name="campo[]">\
                                            <input type="button" id="add_field" value="Agregar">\
                                            </div>\
                                            <div class="col-sm-6">\
                                            <label>Seleccione la fecha y Hora de trabajo:</label>\
                                                <div class="input-group">\
                                                    <div class="input-group-addon">\
                                                        <i class="fa fa-clock-o"></i>\
                                                    </div>\
                                                    <input type="text" class="form-control pull-right" id="reservationtime">\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>\
                                <br>\
                                <input type="button"  class="remover_campo id="add_field" value="Remover">\
                                <br>\
                                </div>');
                                        x++;
                                    }
                                });
                                // Remover o div anterior
                                $('#listas').on("click", ".remover_campo", function(e) {
                                    e.preventDefault();
                                    $(this).parent('div').remove();
                                    x--;
                                });
                                </script>
                                <!-- /.form group -->
                            </div>
                            <!-- /.box-body -->
                        </div>

                        <div class="col-sm-3">

                            <div class="box-header">
                                <h3 class="box-title">Horario de Trabajo</h3>
                            </div>
                            <div class="box-body">

                                <div class="form-group">
                                    
                                    <label>Total de Horas Trabajadas:</label>
                                    <input type="text" class="form-control" placeholder="# Horas">
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
                                <?php
                            include 'Includes/Estructuras/ScriptCalendarioHora.html';
                            ?>
                                <!-- /.form group -->
                            </div>
                            <!-- /.box-body -->
                        </div>

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
                                            <button type="submit" class="btn btn-default"><i
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
                                        <th>Titulo</th>
                                        <th>Fecha</th>
                                        <th>Detalle</th>
                                        <th>Archivo</th>
                                        <th>Validado</th>
                                        <th>Calificado</th>
                                    </tr>
                                    <tr>
                                        <td>REG0154</td>
                                        <td>Semana 1</td>
                                        <td>12-04-2019</td>
                                        <td>Estudio del caso y analisis de la aplicacion en que se va a trabajar</td>
                                        <td><img src="../../Assets/img/pdf.jpg" style="width: 5%;"></td>
                                        <td><span class="label label-success">Verificado</span></td>
                                        <td><span class="label label-success">Calificado</span></td>
                                    </tr>
                                    <tr>
                                        <td>REG0162</td>
                                        <td>Semana 2</td>
                                        <td>22-04-2019</td>
                                        <td>Desarrollo de aplicacion</td>
                                        <td><img src="../../Assets/img/pdf.jpg" style="width: 5%;"></td>
                                        <td><span class="label label-danger">Cancelado</span></td>
                                        <td><span class="label label-danger">Cancelado</span></td>
                                    </tr>
                                    <tr>
                                        <td>REG0163</td>
                                        <td>Semana 2</td>
                                        <td>22-04-2019</td>
                                        <td>Desarrollo de aplicacion</td>
                                        <td><img src="../../Assets/img/pdf.jpg" style="width: 5%;"></td>
                                        <td><span class="label label-success">Verificado</span></td>
                                        <td><span class="label label-warning">Pendiente</span></td>
                                    </tr>
                                    <tr>
                                        <td>REG0175</td>
                                        <td>Semana 2</td>
                                        <td>22-04-2019</td>
                                        <td>Apliacacion de las metodologias adecuadas </td>
                                        <td><img src="../../Assets/img/pdf.jpg" style="width: 5%;"></td>
                                        <td><span class="label label-warning">Pendiente</span></td>
                                        <td><span class="label label-warning">Pendiente</span></td>
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
                                                pre
                                                profesionales</h5>
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
                                        <input type="text" class="form-control" placeholder="Carrera ...">
                                        <label>INFORME BIMESTRAL DE:</label>
                                        <input type="text" class="form-control" placeholder="GP/PRACTICUM ...">
                                        <label>PRÁCTICAS PREPROFESIONALES</label>
                                        <input type="text" class="form-control" placeholder="(Ciclo/Nivel) ...">
                                        <label>GESTIÓN PRODUCTIVA/PRACTICUM :</label>
                                        <select class="form-control">
                                            <option>GP 1.1</option>
                                            <option>GP 1.2</option>
                                            <option>GP 1.3</option>
                                            <option>GP 2.1</option>
                                            <option>GP 2.1</option>
                                            <option>GP 3.1</option>
                                            <option>GP 3.2</option>
                                            <option>PRACTICUM 4.1</option>
                                            <option>PRACTICUM 4.1</option>
                                        </select>
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
                                        <small>Describa las actividades realizadas a lo largo del ciclo. </small>
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
                                        <input type="text" class="form-control" placeholder="Carrera ...">
                                        <label>Yo:</label>
                                        <input type="text" class="form-control" placeholder="Juan Perez ...">

                                    </div>

                                </form>

                            </div>
                            <!-- /.box-body -->
                        </div>

                        <div class="col-sm-6">

                            <form role="form">
                                <label>Estudiante de la carrera:</label>
                                <input type="text" class="form-control" placeholder="Carrera ...">
                                <label>Practica pro profesional del ciclo:</label>
                                <input type="text" class="form-control" placeholder="(Ciclo/Nivel) ...">
                                <label>GESTIÓN PRODUCTIVA/PRACTICUM :</label>
                                <select class="form-control">
                                    <option>GP 1.1</option>
                                    <option>GP 1.2</option>
                                    <option>GP 1.3</option>
                                    <option>GP 2.1</option>
                                    <option>GP 2.1</option>
                                    <option>GP 3.1</option>
                                    <option>GP 3.2</option>
                                    <option>PRACTICUM 4.1</option>
                                    <option>PRACTICUM 4.1</option>
                                </select>
                                <label>Institucion o dependencia:</label>
                                <input type="text" class="form-control" placeholder="Cordinacion de la titulacion ...">
                                <table style="margin-top: 5%;width: 50%;">
                                    <tr>
                                        <td>
                                            <button type="button"
                                                class="btn btn-block btn-default bg-blue">Generar</button>
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
                                            <input type="text" class="form-control pull-right" id="datepicker2">
                                        </div>

                                        <select class="form-control">
                                            <option>Magister</option>
                                            <option>Doctor</option>
                                        </select>
                                        <label>Coordinador de la titulacion de:</label>
                                        <input type="text" class="form-control" placeholder="Carrera ...">
                                        <label>Yo:</label>
                                        <input type="text" class="form-control" placeholder="GP/PRACTICUM ...">
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
                                <input type="text" class="form-control" placeholder="Carrera ...">
                                <label>Practica pro profesional del ciclo:</label>
                                <input type="text" class="form-control" placeholder="(Ciclo/Nivel) ...">
                                <label>GESTIÓN PRODUCTIVA/PRACTICUM :</label>
                                <select class="form-control">
                                    <option>GP 1.1</option>
                                    <option>GP 1.2</option>
                                    <option>GP 1.3</option>
                                    <option>GP 2.1</option>
                                    <option>GP 2.1</option>
                                    <option>GP 3.1</option>
                                    <option>GP 3.2</option>
                                    <option>PRACTICUM 4.1</option>
                                    <option>PRACTICUM 4.1</option>
                                </select>
                                <label>Institucion o dependencia:</label>
                                <input type="text" class="form-control" placeholder="Cordinacion de la titulacion ...">
                                <table style="margin-top: 5%;width: 50%;">
                                    <tr>
                                        <td>
                                            <button type="button"
                                                class="btn btn-block btn-default bg-blue">Generar</button>
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
                                            <h5>Formulario de resgistro de incidencias.</h5>
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
                                        <input type="text" class="form-control" placeholder="GP/PRACTICUM ...">
                                        <label>GESTIÓN PRODUCTIVA/PRACTICUM :</label>
                                        <select class="form-control">
                                            <option>GP 1.1</option>
                                            <option>GP 1.2</option>
                                            <option>GP 1.3</option>
                                            <option>GP 2.1</option>
                                            <option>GP 2.1</option>
                                            <option>GP 3.1</option>
                                            <option>GP 3.2</option>
                                            <option>PRACTICUM 4.1</option>
                                            <option>PRACTICUM 4.1</option>
                                        </select>
                                        <label>Tipo de incidencia:</label>
                                        <select class="form-control">
                                            <option>Perosnal</option>
                                            <option>Academica</option>
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
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Empresa</th>
                                                <th>Convenio</th>
                                                <th>Dependencia</th>
                                                <th>Encargado</th>
                                                <th>Responsable Ciencias de la Computacion</th>
                                                <th>Email del Encargado</th>
                                                <th>Telefono</th>
                                                <th>Nombre del Proyecto</th>
                                                <th>Plazas Totales</th>
                                                <th>Plazas Ocupadas</th>
                                                <th>Plazas para la GP2.2</th>
                                                <th>Estado</th>
                                                <th>Postulacion</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>UTPL</td>
                                                <td>Si</td>
                                                <td>Titulación de Arquitectura</td>
                                                <td>Xavier Burneo</td>
                                                <td>Fernanda Soto</td>
                                                <td>xeburneo@utpl.edu.ec</td>
                                                <td>0992998641</td>
                                                <td>Sitio web Titulación de Arquitectura</td>
                                                <td>2</td>
                                                <td>0</td>
                                                <td>1</td>
                                                <th><span class="label label-success">Disponible</span></th>
                                                <td><button type="button"
                                                        class="btn btn-block btn-default bg-blue">Postular</button></td>
                                            </tr>
                                            <tr>
                                                <td>UTPL</td>
                                                <td>Si</td>
                                                <td>Titulación de Arquitectura</td>
                                                <td>Xavier Burneo</td>
                                                <td>Fernanda Soto</td>
                                                <td>xeburneo@utpl.edu.ec</td>
                                                <td>0992998641</td>
                                                <td>Sitio web Titulación de Arquitectura</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>2</td>
                                                <th><span class="label label-danger">Ocupada</span></th>
                                                <td><button type="button"
                                                        class="btn btn-block btn-default bg-blue">Postular</button></td>
                                            </tr>
                                            <tr>
                                                <td>UTPL</td>
                                                <td>Si</td>
                                                <td>Titulación de Arquitectura</td>
                                                <td>Xavier Burneo</td>
                                                <td>Fernanda Soto</td>
                                                <td>xeburneo@utpl.edu.ec</td>
                                                <td>0992998641</td>
                                                <td>Sitio web Titulación de Arquitectura</td>
                                                <td>3</td>
                                                <td>0</td>
                                                <td>2</td>
                                                <th><span class="label label-success">Disponible</span></th>
                                                <td><button type="button"
                                                        class="btn btn-block btn-default bg-blue">Postular</button></td>
                                            </tr>
                                            <tr>
                                                <td>UTPL</td>
                                                <td>Si</td>
                                                <td>Titulación de Arquitectura</td>
                                                <td>Xavier Burneo</td>
                                                <td>Fernanda Soto</td>
                                                <td>xeburneo@utpl.edu.ec</td>
                                                <td>0992998641</td>
                                                <td>Sitio web Titulación de Arquitectura</td>
                                                <td>3</td>
                                                <td>2</td>
                                                <td>3</td>
                                                <th><span class="label label-warning">Disponible</span></th>
                                                <td><button type="button"
                                                        class="btn btn-block btn-default bg-blue">Postular</button></td>
                                            </tr>
                                            </tfoot>
                                    </table>
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