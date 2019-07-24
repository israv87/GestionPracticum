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
                                                    <th>Tutor Externo:</th>
                                                    <td>
                                                        <?php echo $user->getPNombre()?>
                                                        <?php echo $user->getSNombre()?>
                                                        <?php echo $user->getPApellido()?>
                                                        <?php echo $user->getMApellido();?>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>Departamento:</th>
                                                    <td>
                                                       Gestión de Tecnologías de la Información
                                                    </td>
                                                </tr>
                                                <tr class=" bg-primary" style="background:#3c8dbc">
                                                    <th>Institución:</th>
                                                    <td>
                                                        UTPL
                                                    </td>
                                                </tr>
                                                
                                               
                                            </table>
                                        </div>
                                        <div class="col-md-6">
                                            <h2 class="all-tittles"><small>Información</small></h2>
                                            <div class="col-md-12">
                                                <ul class="nav nav-stacked">
                                                    <li>
                                                        <a href="#">Actividades Completadas
                                                            <span class="pull-right badge bg-blue">
                                                             12/25   
                                                          </span>
                                                        </a>
                                                    </li>
                                                    <li><a href="#">Proyectos a cargo <span
                                                                class="pull-right badge bg-aqua">3</span></a>
                                                    </li>
                                                    <li><a href="#">Estudaintes Asiggnados <span
                                                                class="pull-right badge bg-green">8</span></a>
                                                    </li>
                                                    <li><a href="#">Reportes de Asistencia Validados <span
                                                                class="pull-right badge bg-green">15</span></a></li>
                                                    <li><a href="#">Evaluaciones <span
                                                                class="pull-right badge bg-red">0</span></a></li>
                                                </ul>
                                            </div>
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
                        <h1 class="all-tittles">Tutor Externo <small>Proyectos</small></h1>
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
                                        <th>Cuplimiento de Actividades</th>
                                        <th>Horas de Trabajo</th>
                                        <th>Reportes Validados</th>
                                    </tr>
                                    <tr>
                                        <td>'PRY001'</td>
                                        <td>'Proyecto Ascendere'</td>
                                        <td>'Jose Abad'</td>
                                        <td>'50%'</td>
                                        <td>'10'</td>                                        
                                        <td>6</td>
                                    </tr> 
                                    <tr>
                                        <td>'PRY001'</td>
                                        <td>'Proyecto Ascendere'</td>
                                        <td>'Tania Granda'</td>
                                        <td>'70%'</td>
                                        <td>'18'</td>                                        
                                        <td>7</td>
                                    </tr> 
                                    <tr>
                                        <td>'PRY002'</td>
                                        <td>'Aplicacion Interactiva de Uso de diapositivas moviles en el Aula'</td>
                                        <td>'Cristian Jose Macas Pineda'</td>
                                        <td>'65%'</td>
                                        <td>'13'</td>                                        
                                        <td>6</td>
                                    </tr> 
                                    <tr>
                                        <td>'PRY002'</td>
                                        <td>'Aplicacion Interactiva de Uso de diapositivas moviles en el Aula'</td>
                                        <td>'Nelson Ricardo Parin Cabrera'</td>
                                        <td>'70%'</td>
                                        <td>'14'</td>                                        
                                        <td>7</td>
                                    </tr> 
                                    
                                    </table>
        </div> </div>
        </div> </div> </div>
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
                        <h1 class="all-tittles">Estudiantes <small>Reporte de Eventualidades</small></h1>
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
                                    $("#bt_inc").click(function() {
                                        $("#form_inc").show();
                                        $("#bt_inc").hide();
                                    });
                                });
                                </script>
                                <button type="button" id="bt_inc" class="btn btn-block btn-default bg-blue">
                                    <i class="fa fa-plus-square"></i>
                                   Nuevo Propuesta</button>
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
                                                <h5>Formulario para una nueva propuesta a un proyecto </h5>
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