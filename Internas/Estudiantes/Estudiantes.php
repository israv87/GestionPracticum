<!-- 
* Copyright 2018 Carlos Eduardo Alfaro Orellana
-->
<!DOCTYPE html>
<html lang="es">

<head>
    <title>Estudiantes</title>
    <?php 
include_once 'Includes/EstructurasHTML/links.php';
?>
</head>

<body>
    <!--llamadas a los menu lateral y superior-->
    <div class="navbar-lateral full-reset">
        <div class="visible-xs font-movile-menu mobile-menu-button"></div>
        <div class="full-reset container-menu-movile nav-lateral-scroll">
            <?php 
               include_once 'Includes/EstructurasHTML/MenuEstudiantesLateral.php';
               ?>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">
        <nav class="navbar-user-top full-reset">
            <?php 
               include_once 'Includes/EstructurasHTML/MenuEstudiantes.php';
               ?>
        </nav>
        <!--llamadas a los menus lateral y superior-->

        <div class="container">
            <div class="page-header">
                <h1 class="all-tittles">Estudiantes <small>Resumen</small></h1>
            </div>
        </div>

        <div class="container-fluid" style="margin: 20px 0;">
            <div class="row">
                <div class="col-md-6">
                    <!-- Widget: user widget style 1 -->
                    <div class="box box-widget widget-user-2">
                        <!-- Add the bg color to the header using any of the bg-* classes -->
                        <div class="widget-user-header bg-yellow">
                            <div class="widget-user-image">
                                <h3 class="widget-user-username">Proyecto Asignado:</h3>
                            </div>
                            <!-- /.widget-user-image -->
                            <h3 class="widget-user-username">Gestión del Practicum</h3>
                        </div>
                        <div class="box-footer no-padding">
                            <ul class="nav nav-stacked">
                                <li><a href="#">Actividades Completadas <span class="pull-right badge bg-blue">5 /
                                            10</span></a></li>
                                <li><a href="#">Horas Trabajadas <span class="pull-right badge bg-aqua">28</span></a>
                                </li>
                                <li><a href="#">Informes Enviados <span class="pull-right badge bg-green">1</span></a>
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
                            <div class="row">
                                <div class="col-sm-6">
                                    <!-- Progress bars -->
                                    <div class="clearfix">
                                        <span class="pull-left">Actividad #1</span><small class="pull-right">Termina:
                                            29/04/2019</small>
                                        <small class="pull-right">Inicia: 15/04/2019</small>

                                    </div>
                                    <small class="pull-right">Progreso</small>
                                    <div class="progress xs">
                                        <div class="progress-bar progress-bar-yellow" style="width: 90%;"></div>
                                    </div>

                                    <div class="clearfix">
                                        <span class="pull-left">Actividad #2</span>
                                        <small class="pull-right">Inicia: 30/04/2019</small>

                                    </div>
                                    <small class="pull-right">Progreso</small>
                                    <div class="progress xs">
                                        <div class="progress-bar progress-bar-yellow" style="width: 70%;"></div>
                                    </div>
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-6">
                                    <div class="clearfix">
                                        <span class="pull-left">Actividad #3</span><small class="pull-right">Termina:
                                            20/05/2019</small>
                                        <small class="pull-right">Inicia: 07/05/2019</small>

                                    </div>
                                    <small class="pull-right">Progreso</small>
                                    <div class="progress xs">
                                        <div class="progress-bar progress-bar-yellow" style="width: 60%;"></div>
                                    </div>

                                    <div class="clearfix">
                                        <span class="pull-left">Actividad #4</span><small class="pull-right">Termina:
                                            30/05/2019</small>
                                        <small class="pull-right">Inicia: 21/05/2019</small>

                                    </div>
                                    <small class="pull-right">Progreso</small>
                                    <div class="progress xs">
                                        <div class="progress-bar progress-bar-yellow" style="width: 40%;"></div>
                                    </div>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->
                        </div>
                    </div>
                </data>
            </div>
        </div>
        <?php
    include 'Includes/EstructurasHTML/BotonesMenu.php';
    include 'Includes/EstructurasHTML/Footer.php';
    ?>
    </div>
    <?php 
    include_once 'Includes/EstructurasHTML/ScriptsFooter.php';
    ?>
</body>

</html>