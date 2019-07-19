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
        $("#rediseñocurricular1").click(function() {
            $("#res1").show();
            $("#res,#c1,#c2,#res2,#con,#inf").hide();
        });
        $("#creditosects1").click(function() {
            $("#c1").show();
            $("#res,#c2,#res1,#res2,#con,#inf").hide();
        });
        
        $("#rediseñocurricular2").click(function() {
            $("#res2").show();
            $("#res,#c1,#c2,#res1,#con,#inf").hide();
        });
        $("#creditosects2").click(function() {
            $("#c2").show();
            $("#res,#c1,#res1,#res2,#con,#inf").hide();
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
                    <li><a id="resumen"><i class="zmdi zmdi-collection-item-9-plus"></i>&nbsp;&nbsp; Resumen</a></li>
                    <li><a id="#"><i class="zmdi zmdi-long-arrow-down"></i>&nbsp;&nbsp; Programación de las prácticas pre profesionales</a></li>
                    <li><a id="rediseñocurricular1"><i i class="zmdi zmdi-forward"></i>&nbsp;&nbsp; Rediseño Curricular </a></li>
                    <li><a id="creditosects1"><i class="zmdi zmdi-forward"></i>&nbsp;&nbsp; Créditos ECTS-ECTS 1C</a></li>
                    <li><a id="#"><i class="zmdi zmdi-long-arrow-down"></i>&nbsp;&nbsp; Planificación de prácticas pre profesionales por <br> ciclos académicos </a></li>
                    <li><a id="rediseñocurricular2"><i i class="zmdi zmdi-forward"></i>&nbsp;&nbsp; Rediseño Curricular </a></li>
                    <li><a id="creditosects2"><i class="zmdi zmdi-forward"></i>&nbsp;&nbsp; Créditos UTPL-ECTS 1C</a></li>
                    <li><a id="convenios"><i class="zmdi zmdi-accounts-alt"></i>&nbsp;&nbsp; Convenios</a></li>
                    <li><a id="informesestudiantes"><i class="zmdi zmdi-file"></i>&nbsp;&nbsp; Informes Estudiantes</a></li>
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
            Inicio de la sección RediseñoCurricular1
            ************
            ************
            ************
        -->

        <div id="res1" style="display: none;">
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
                                            <h5> Rediseño Curricular</h5>
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
                                        <label>Práctica</label> 
                                        <input type="text" class="form-control">
                                        <label>Unidades de organización curricular</label> 
                                       <select class= "form-control">
                                        <option>Formación Básica</option>
                                            <option>Formación Profesional</option>
                                            <option>Titulación</option>
                                            <option>Prácticas de servicios comunitarios</option>
                                        </select>
                                        <label>Carácter de la Práctica</label>
                                        <select class= "form-control">
                                        <option>Investigación Diagnóstica</option>
                                            <option>Investigación y Desarrollo</option>
                                            <option>Investigación - Intervención</option>
                                        </select>
                                        <label>Objetivo</label>
                                        <input type="text" class="form-control">
                                        <label>Modalidad</label>
                                        <input type="text" class="form-control" placeholder="Estancias prácticas en entornos laborales y simulados...">
                                        
                                        <label>Perfil a desarrollar</label>
                                        <input type="text" class="form-control" placeholder="Referido a cada uno de los ejes del perfil de egreso...">
                                        <label>Perfil del tutor académico</label>
                                        <input type="text" class="form-control" placeholder=" Perfil Tutor Académico...">
                                        <label>Metodologías</label>
                                        <input type="text" class="form-control" placeholder="Protocolos profesionales a aplicarse ...">
                                        <label>Escenarios posibles de la práctica</label>
                                        <input type="text" class="form-control" placeholder="Protocolos profesionales a aplicarse ...">
                                        <label>Espacios de integración con el área de epistomología y metodología de investigación</label>
                                        <input type="text" class="form-control"><br>
                                        <button type="Submit" class="btn btn-block btn-default bg-blue" >Enviar</button>
                                        <button type="button" class="btn btn-block btn-default bg-yellow" >Borrar</button>
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
            Inicio de la sección CreditosECTS1
            ************
            ************
            ************
        --> 
        <div id="c1" style="display: none;">
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
                                        <label>Nivel/Ciclo</label>
                                        <input type="text" class="form-control">
                                        <label>Carácter de la Práctica</label>
                                        <select class= "form-control">
                                        <option>Investigación Diagnóstica</option>
                                            <option>Investigación y Desarrollo</option>
                                            <option>Investigación - Intervención</option>
                                        </select>
                                        <label>Objetivo</label>
                                        <input type="text" class="form-control">
                                        <label>Modalidad</label>
                                        <input type="text" class="form-control" placeholder="Estancias prácticas en entornos laborales y simulados...">
                                        
                                        <label>Perfil a desarrollar</label>
                                        <input type="text" class="form-control" placeholder="Referido a cada uno de los ejes del perfil de egreso...">
                                        <label>Perfil del tutor académico</label>
                                        <input type="text" class="form-control" placeholder=" Perfil Tutor Académico...">
                                        <label>Metodologías</label>
                                        <input type="text" class="form-control" placeholder="Protocolos profesionales a aplicarse ...">
                                        <label>Escenarios posibles de la práctica</label>
                                        <input type="text" class="form-control" placeholder="Protocolos profesionales a aplicarse ..."><br>
                                  
                                        <button type="Submit" class="btn btn-block btn-default bg-blue" >Enviar</button>
                                                    <button type="button" class="btn btn-block btn-default bg-yellow" >Borrar</button>
        </div>
      </div></div>
      </div>
      </div></div>
      </div>
      
            <!--************
            ************
            ************
            Inicio de la sección RediseñoCurricular2
            ************
            ************
            ************
        -->
        <div id="res2" style="display: none;">
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
                                            <h5>Rediseño Curricular</h5>
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
                                        <label>Unidades de organización curricular</label>
                                        <select class= "form-control">
                                        <option>Básica</option>
                                            <option>Profesional</option>
                                            <option>Titulación</option>
                                        </select>
                                        <label>Núcleo Problemático</label>
                                        <input type="text" class="form-control">
                                        <label>Ciclo</label>
                                        <input type="text" class="form-control"> 
                                        <hr style="border: 1px solid #081268;">
                                        <label><h3>Praxis Profesional</h3></label><br>
                                        <label>Cátedra Integradora</label>
                                        <input type="text" class="form-control"><br>
                                        <label>Fases del proceso práctico de aprendizaje</label>
                                        <input type="text" class="form-control"><br>
                                        <hr style="border: 1px solid #081268;">
                                        <label><h3>Epistemología y Metodología de la Investigación</h3></label> <br>
                                        <label>Fases</label>
                                        <input type="text" class="form-control" >
                                        <label>Métodos</label>
                                        <input type="text" class="form-control" >
                                        <label>Acciones</label>
                                        <input type="text" class="form-control" > <br>
                                        <hr style="border: 1px solid #081268;">
                                        <label>Proyecto de Integración de Saberes</label>
                                        <input type="text" class="form-control" > <br>
                                        <label>Horas</label>
                                        <input type="text" class="form-control" > <br>

                                        <button type="Submit" class="btn btn-block btn-default bg-blue" >Enviar</button>
                                                    <button type="button" class="btn btn-block btn-default bg-yellow" >Borrar</button>
        </div>
      </div></div>
      </div>
      </div></div>
      </div>


    <!--************
            ************
            ************
            Inicio de la sección CreditosECTS2
            ************
            ************
            ************
        -->
        
        <div id="c2" style="display: none;">
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
                                            <h5> Créditos UTPL-ECTS 1C</h5>
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
                                        <label>Gestión Productiva/Prácticum</label>
                                        <select class= "form-control">
                                        <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                        <label>Competencias</label>
                                        <input type="text" class="form-control">
                                        <label>Nivel/Ciclo</label>
                                        <input type="text" class="form-control"> 
                                        <hr style="border: 1px solid #081268;">
                                        <label><h3>Praxis Profesional</h3></label><br>
                                        <label>Fases del proceso práctico de aprendizaje</label>
                                        <input type="text" class="form-control"><br>
                                        <hr style="border: 1px solid #081268;">
                                        <label><h3>Metodología de la Investigación</h3></label> <br>
                                        <label>Fases</label>
                                        <input type="text" class="form-control" >
                                        <label>Métodos</label>
                                        <input type="text" class="form-control" >
                                        <label>Acciones</label>
                                        <input type="text" class="form-control" > <br>
                                        <hr style="border: 1px solid #081268;">
                                        <label>Número de créditos</label>
                                        <input type="text" class="form-control" > <br>
                                        <button type="Submit" class="btn btn-block btn-default bg-blue" >Enviar</button>
                                                    <button type="button" class="btn btn-block btn-default bg-yellow" >Borrar</button>
        </div>
      </div></div>
      </div>
      </div></div>
      </div>
</body>

</html>