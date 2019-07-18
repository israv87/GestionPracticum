<!-- 
* Copyright 2016 Carlos Eduardo Alfaro Orellana
-->
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Coordinador de Titulación</title>
    <?php
include 'Includes/Estructuras/links.html';
?>
<script>
    $(document).ready(function() {
         $("#resumen").click(function() {
            $("#res").show();
            $("#c1,#c2,#res1,#res2,#con,#inf").hide();
        });
        $("#creditosects1").click(function() {
            $("#c1").show();
            $("#res,#c2,#res1,#res2,#con,#inf").hide();
        });
        $("#creditosects2").click(function() {
            $("#c2").show();
            $("#res,#c1,#res1,#res2,#con,#inf").hide();
        });
        $("#rediseñocurricular1").click(function() {
            $("#res1").show();
            $("#res,#c1,#c2,#res2,#con,#inf").hide();
        });
        $("#rediseñocurricular2").click(function() {
            $("#res2").show();
            $("#res,#c1,#c2,#res1,#con,#inf").hide();
        });
        $("#convenios").click(function() {
            $("#con").show();
            $("#res,#c1,#c2,#res1,#res2,#inf").hide();
        });
        $("#informesestudiantes").click(function() {
            $("#inf").show();
            $("#res,#c1,#c2,#res1,#res2,#con").hide();
        });
    });
</script>

</head>
<body>
    <!--llamadas a los menu lateral y superior-->
    <div class="navbar-lateral full-reset">
        <div class="visible-xs font-movile-menu mobile-menu-button"></div>
        <div class="full-reset container-menu-movile nav-lateral-scroll">
        <div class="logo full-reset all-tittles">
                <i class="visible-xs zmdi zmdi-close pull-left mobile-menu-button" style="line-height: 55px; cursor: pointer; padding: 0 10px; margin-left: 7px;"></i> 
                BIENVENID@
            </div>
<div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset" style="padding: 10px 0; color:#fff;">
                <figure>
                    <img src="assets/imagenes/template/user01.png" alt="Biblioteca" class="img-responsive center-box"
                        style="width:55%;">
                </figure>
                <h4 style="line-height: 20px; cursor: pointer;  margin-left: 1em;">
                    <?php echo $user->getPNombre()?>
                    <?php echo $user->getSNombre()?>
                    <?php echo $user->getPApellido()?>
                    <?php echo $user->getMApellido();?>
                </h4>
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset nav-lateral-list-menu">
            <style type="text/css">a {cursor:pointer;}</style>
                <ul class="list-unstyled">
                    <li><a id="resumen"><i class="zmdi zmdi-home zmdi-hc-fw"></i>&nbsp;&nbsp; Resumen</a></li>
                    <li><a id="creditosects1"><i class="zmdi zmdi-balance zmdi-hc-fw"></i>&nbsp;&nbsp; Créditos ECTS-ECTS 1C</a></li>
                    <li><a id="creditosects2"><i class="zmdi zmdi-truck zmdi-hc-fw"></i>&nbsp;&nbsp; Créditos UTPL-ECTS 1C</a></li>
                    <li><a id="rediseñocurricular1"><i class="zmdi zmdi-bookmark-outline zmdi-hc-fw"></i>&nbsp;&nbsp; Rediseño Curricular 1</a></li>
                    <li><a id="rediseñocurricular2"><i class="zmdi zmdi-assignment-account zmdi-hc-fw"></i>&nbsp;&nbsp; Rediseño Curricular 2</a></li>
                    <li><a id="convenios"><i class="zmdi zmdi-trending-up zmdi-hc-fw"></i>&nbsp;&nbsp; Convenios</a></li>
                    <li><a id="informesestudiantes"><i class="zmdi zmdi-wrench zmdi-hc-fw"></i>&nbsp;&nbsp; Informes Estudiantes</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">
        <nav class="navbar-user-top full-reset">
        <ul class="list-unstyled full-reset">
    <figure>
        <img src="assets/Imagenes/Template/user01.png" alt="user-picture" class="img-responsive img-circle center-box">
    </figure>
    <li style="color:#fff; cursor:default;">
        <span class="all-tittles">
            <?php echo $user->getPNombre()?>
            <?php echo $user->getSNombre()?>
            <?php echo $user->getPApellido()?>
            <?php echo $user->getMApellido();?>
        </span>
    </li>
    <li class="tooltips-general exit-system-button" data-href="Includes/Database/logout.php"  data-placement="bottom"
        title="Salir del sistema"><a href="Includes/Database/logout.php"></a>
        <i class="zmdi zmdi-power"></i>
    </li>
    <li class="tooltips-general search-book-button" data-href="searchbook.html" data-placement="bottom"
        title="Buscar libro">
        <i class="zmdi zmdi-search"></i>
    </li>
    <li class="tooltips-general btn-help" data-placement="bottom" title="Ayuda">
        <i class="zmdi zmdi-help-outline zmdi-hc-fw"></i>
    </li>
    <li class="mobile-menu-button visible-xs" style="float: left !important;">
        <i class="zmdi zmdi-menu"></i>
    </li>
    <li class="desktop-menu-button hidden-xs" style="float: left !important;">
        <i class="zmdi zmdi-swap"></i>
    </li>
</ul>
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
                        <h1 class="all-tittles">Coordinador<small>Resumen</small></h1>
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
            Inicio de la sección CreditosECTS1
            ************
            ************
            ************
        --> <div id="c1" style="display: none;">
        <div class="container">
        <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Coordinador de Sistemas Informáticos y Computación</h1>
            </div>
        </div>
        <div class="row">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <table style="height: 100px;">
                                <tbody>
                                    <tr>
                                        <td class="align-middle"><img src="./assets/imagenes/utpl_logo1.png"
                                                style="width: 90%;"></td>
                                        <td class="align-middle">
                                            <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                            <h5> Créditos ECTS-ECTS 1C</h5>
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
      </div>
    <!--************
            ************
            ************
            Inicio de la sección CreditosECTS2
            ************
            ************
            ************
        --><div id="c2" style="display: none;">
        <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Créditos UTPL-ECTS 1C<small></small></h1>
            </div>
        </div>
        <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
               <tr>  
                 <th>Nivel (Ciclo)</th>
                  <th>Carácter de la Práctica</th>
                  <th>Objetivo</th>
                  <th>Modalidad</th>
                  <th>Perfil a desarrollar</th>
                  <th>Perfil del tutor académico</th>
                  <th>Metodologías, protocolos profesionales a aplicarse</th>
                  <th>Escenarios posibles de la Práctica</th>
                </tr>
                <tr>
                  <td>I</td>
                  <td><input type="text" class="form-control"> </td>
                  <td><input type="text" class="form-control"> </td>
                  <td><input type="text" class="form-control"> </td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"> </td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr> 
                 <tr>
                  <td>II</td>
                  <td><input type="text" class="form-control"> </td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
               <tr>
                  <td>III</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                 <tr>
                  <td>IV</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>V</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>VI</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>VII</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>VII</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>IX</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>X</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
        </div>

    <!--************
            ************
            ************
            Inicio de la sección RediseñoCurricular1
            ************
            ************
            ************

        --><div id="res1" style="display: none;">
        <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Rediseño Curricular 1<small></small></h1>
            </div>
        </div>

        <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <th> <label>Práctica:</label><input type="text" class="form-control">  </th>
                <tr>  
                <th>Unidades de Organización Curricular</th>
                  <th>Carácter de la Práctica</th>
                  <th>Objetivo</th>
                  <th>Perfil a desarrollar</th>
                  <th>Perfil del tutor académico</th>
                  <th>Metodologías profesionales a desarrollarse</th>
                  <th>Escenarios posible de prácticas</th>
                  <th>Espacios de integración con el área de epistemología y metodología de la investigación</th>
                </tr>

                <tr>
                  <td>Formación Básica</td>
                  <td><input type="text" class="form-control"> </td>
                  <td><input type="text" class="form-control"> </td>
                  <td><input type="text" class="form-control"> </td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"> </td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr> 
                 <tr>
                  <td>Formación Profesional</td>
                  <td><input type="text" class="form-control"> </td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
               <tr>
                  <td>Titulación</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                 <tr>
                  <td>Prácticas de servicio comunitario</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
        </div>
        <div class="modal fade " tabindex="-1" role="dialog" id="ModalHelp">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center all-tittles">ayuda del sistema</h4>
                </div>
                <div class="modal-body ">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore dignissimos qui molestias ipsum officiis unde aliquid consequatur, accusamus delectus asperiores sunt. Quibusdam veniam ipsa accusamus error. Animi mollitia corporis iusto.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="zmdi zmdi-thumb-up"></i> &nbsp; De acuerdo</button>
                </div>
            </div>
          </div>
        </div>
    </div>
    <!--************
            ************
            ************
            Inicio de la sección RediseñoCurricular2
            ************
            ************
            ************

        --><div id="res2" style="display: none;">

        <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Rediseño Curricular 2<small></small></h1>
            </div>
        </div>


        <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <th>Unidades de Organización Curricular</th>
                  <th>Carácter de la Práctica</th>
                  <th>Núcleo problemático</th>
                  <th>Ciclo</th>
                  <th>Cátedra Integradora</th>
                  <th>Fases del proceso práctico de aprendizaje</th>
                  <th>Fases</th>
                  <th>Métodos </th>
                  <th>Acciones</th>
                  <th>Horas</th>
                </tr>
               <tr>
                  <td>Básico</td>
                  <td><input type="text" class="form-control"> </td>
                  <td>I</td>
                  <td><input type="text" class="form-control"> </td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"> </td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr> 
                 <tr>
                  <td>Básico</td>
                  <td><input type="text" class="form-control"> </td>
                  <td>II</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
               <tr>
                  <td>Básico</td>
                  <td><input type="text" class="form-control"></td>
                  <td>III</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                 <tr>
                  <td>Profesional</td>
                  <td><input type="text" class="form-control"></td>
                  <td>IV</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>Profesional</td>
                  <td><input type="text" class="form-control"></td>
                  <td>V</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>Profesional</td>
                  <td><input type="text" class="form-control"></td>
                  <td>VI</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>Profesional</td>
                  <td><input type="text" class="form-control"></td>
                  <td>VII</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>Titulación</td>
                  <td><input type="text" class="form-control"></td>
                  <td>VIII</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>Titulación</td>
                  <td><input type="text" class="form-control"></td>
                  <td>IX</td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                  <td><input type="text" class="form-control"></td>
                </tr>
               
               
              </table>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
</body>
</html>