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
                    <h2 class="all-tittles">Tutor Externo <small>Resumen</small></h2>
                </div>
                <ol class="breadcrumb">

                </ol>
            </section>
            <!-- Main content -->
            <style>
                #m1,
                #maxRows {
                    display: inline-block;
                    margin-top: 1em;
                }
            </style>
            <section class="content">
                <div class="box box-warning">

                    <div class="container">

                        <div class="form-group">
                            <h5 id="m1">Mostrar</h5>
                            <select style="width: 10%;" class="form-control" name="state" id="maxRows">
                                <option value="5000">Mostrar todo</option>
                                <option value="5">5</option>
                                <option value="10">10</option>
                                <option value="15">15</option>
                                <option value="20">20</option>
                                <option value="50">50</option>
                                <option value="70">70</option>
                                <option value="100">100</option>
                            </select>
                        </div>
                    </div>


                    <div class="row">
                        <!-- /.col -->

                        <div class="col-md-12">

                            <table class="table table-hover" id="table-id">
                                <tr>
                                    <th>Codigo</th>
                                    <th>Proyecto</th>
                                    <th>Fecha</th>
                                    <th>Estudiante</th>
                                    <th>Tipo</th>
                                    <th>Horas</th>
                                    <th>Estado</th>
                                    <th>Revisar</th>
                                </tr>

                                <tbody>
                                    <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-1">
                                        <td>PRY001</td>
                                        <td>Proyecto Ascendere</td>
                                        <td>08/11/2019</td>
                                        <td>Tania Granda</td>
                                        <td>Reporte asistencia</td>
                                        <td>8</td>
                                        <td><span class="label label-warning">No revisado</span></td>
                                        <td><i class="fa fa-plus" aria-hidden="true"></i></td>
                                    </tr>
                                </tbody>
                                <tbody id="group-of-rows-1" class="collapse">
                                    <tr>
                                        <th>Actividad</th>
                                        <th>Fecha</th>
                                        <th>Hora Inicio</th>
                                        <th>Hora Fin</th>
                                        <th>N° Horas</th>
                                        <th>Estado</th>
                                        <th><button type="button" class="btn btn-primary">Guardar</button></th>
                                    <tr>
                                        <td>Documentación de procesos</td>
                                        <td>08/11/2019</td>
                                        <td>9:00</td>
                                        <td>12:00</td>
                                        <td>3</td>
                                        <td> <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="..."></td>
                                    </tr>
                                    <tr>
                                        <td>Documentación de requerimientos</td>
                                        <td>10/10/2019</td>
                                        <td>15:00</td>
                                        <td>17:00</td>
                                        <td>2</td>
                                        <td> <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="..."></td>
                                    </tr>
                                    <tr>
                                        <td>Diagramas de casos de uso</td>
                                        <td>08/11/2019</td>
                                        <td>11:00</td>
                                        <td>14:00</td>
                                        <td>3</td>
                                        <td> <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="..."></td>
                                    </tr>

                                </tbody>



                                <tbody>
                                    <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-2">
                                        <td>PRY001</td>
                                        <td>Proyecto Ascendere</td>
                                        <td>12/11/2019</td>
                                        <td>TJose Abad</td>
                                        <td>Reporte asistencia</td>
                                        <td>5</td>
                                        <td><span class="label label-warning">No revisado</span></td>
                                        <td><i class="fa fa-plus" aria-hidden="true"></i></td>
                                    </tr>
                                </tbody>
                                <tbody id="group-of-rows-2" class="collapse">
                                    <tr>
                                        <th>Actividad</th>
                                        <th>Fecha</th>
                                        <th>Hora Inicio</th>
                                        <th>Hora Fin</th>
                                        <th>N° Horas</th>
                                        <th>Estado</th>
                                        <th><button type="button" class="btn btn-primary">Guardar</button></th>
                                    <tr>
                                        <td>Modelado de bases de datos</td>
                                        <td>12/11/2019</td>
                                        <td>7:00</td>
                                        <td>10:00</td>
                                        <td>3</td>
                                        <td> <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="..."></td>
                                    </tr>
                                    <tr>
                                        <td>Diagrama entidad relación</td>
                                        <td>15/11/2019</td>
                                        <td>15:00</td>
                                        <td>17:00</td>
                                        <td>2</td>
                                        <td> <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="..."></td>
                                    </tr>


                                </tbody>







                                <tbody>
                                    <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-4">
                                        <td>PRY001</td>
                                        <td>Proyecto Ascendere</td>
                                        <td>16/10/2019</td>
                                        <td>Jose Abad</td>
                                        <td>Reporte asistencia</td>
                                        <td>10</td>
                                        <td><span class="label label-success">Revisado</span></td>
                                        <td><i class="fa fa-plus" aria-hidden="true"></i></td>
                                    </tr>
                                </tbody>
                                <tbody id="group-of-rows-4" class="collapse">
                                    <tr>
                                        <th>Actividad</th>
                                        <th>Fecha</th>
                                        <th>Hora Inicio</th>
                                        <th>Hora Fin</th>
                                        <th>N° Horas</th>
                                        <th>Estado</th>

                                    <tr>
                                        <td>Levantamiento de información</td>
                                        <td>16/10/2019</td>
                                        <td>15:00</td>
                                        <td>18:00</td>
                                        <td>3</td>
                                        <td>
                                            <div class="checkbox disabled">
                                                <label><input type="checkbox" checked="checked" value="" disabled></label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Analisis de requerimientos</td>
                                        <td>18/10/2019</td>
                                        <td>10:00</td>
                                        <td>12:00</td>
                                        <td>2</td>
                                        <td>
                                            <div class="checkbox disabled">
                                                <label><input type="checkbox" checked="checked" value="" disabled></label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Análisis de necesidades</td>
                                        <td>20/10/2019</td>
                                        <td>11:00</td>
                                        <td>14:00</td>
                                        <td>3</td>
                                        <td>
                                            <div class="checkbox disabled">
                                                <label><input type="checkbox" checked="checked" value="" disabled></label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Mapa de procesos</td>
                                        <td>21/10/2019</td>
                                        <td>19:00</td>
                                        <td>21:00</td>
                                        <td>2</td>
                                        <td>
                                            <div class="checkbox disabled">
                                                <label><input type="checkbox" checked="checked" value="" disabled></label>
                                            </div>
                                        </td>
                                    </tr>

                                </tbody>







                                <tbody>
                                    <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-5">
                                        <td>PRY001</td>
                                        <td>Proyecto Ascendere</td>
                                        <td>18/10/2019</td>
                                        <td>Tania Granda</td>
                                        <td>Reporte asistencia</td>
                                        <td>4</td>
                                        <td><span class="label label-success">Revisado</span></td>
                                        <td><i class="fa fa-plus" aria-hidden="true"></i></td>
                                    </tr>
                                </tbody>
                                <tbody id="group-of-rows-5" class="collapse">
                                    <tr>
                                        <th>Actividad</th>
                                        <th>Fecha</th>
                                        <th>Hora Inicio</th>
                                        <th>Hora Fin</th>
                                        <th>N° Horas</th>
                                        <th>Estado</th>

                                    <tr>
                                        <td>Levantamiento de información</td>
                                        <td>18/10/2019</td>
                                        <td>15:00</td>
                                        <td>18:00</td>
                                        <td>2</td>
                                        <td>
                                            <div class="checkbox disabled">
                                                <label><input type="checkbox" checked="checked" value="" disabled></label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Analisis de requerimientos</td>
                                        <td>20/10/2019</td>
                                        <td>10:00</td>
                                        <td>12:00</td>
                                        <td>2</td>
                                        <td>
                                            <div class="checkbox disabled">
                                                <label><input type="checkbox" checked="checked" value="" disabled></label>
                                            </div>
                                        </td>
                                    </tr>


                                </tbody>





                                <tbody>
                                    <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-6">
                                        <td>PRY001</td>
                                        <td>Proyecto Ascendere</td>
                                        <td>10/10/2019</td>
                                        <td>Jose Abad</td>
                                        <td>Incidencia</td>
                                        <td>N/A</td>
                                        <td><span class="label label-success">Revisado</span></td>
                                        <td><i class="fa fa-plus" aria-hidden="true"></i></td>
                                    </tr>
                                </tbody>
                                <tbody id="group-of-rows-6" class="collapse">
                                    <tr>
                                        <th>Incidencia</th>
                                        <th>Fecha</th>
                                        <th>Detalle</th>

                                    <tr>
                                        <td>Problemas con auspiciante</td>
                                        <td>10/10/2019</td>
                                        <td><img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;"></td>

                                    </tr>
                                </tbody>

                            </table>
                            <!--		Start Pagination -->
                            <div class='pagination-container'>
                                <nav>
                                    <ul class="pagination">

                                        <li data-page="prev">
                                            <span>
                                                < <span class="sr-only">(current)
                                            </span></span>
                                        </li>
                                        <!--	Here the JS Function Will Add the Rows -->
                                        <li data-page="next" id="prev">
                                            <span> > <span class="sr-only">(current)</span></span>
                                        </li>
                                    </ul>
                                </nav>
                            </div>

                        </div> <!-- 		End of Container -->
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


        <div id="comp" style="display: none;">
            <div class="container-fluid">
                <div class="container">
                    <div class="page-header">
                        <h1 class="all-tittles">Tutor Externo <small>Validación de Asistencias</small></h1>
                    </div>
                </div>

                <section class="content">
                    <div class="box box-warning">

                        <div class="container">

                            <div class="row"  style="margin-top: 2em;">
                                <div class="col-md-4">
                                    <label>Proyecto:</label>
                                    <select class="form-control">
                                        <option>Proyecto Ascendere</option>
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label>Carrera:</label>
                                    <select class="form-control">
                                        <option>Sistemas Informáticos y computación</option>
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label>Estudiante:</label>
                                    <select class="form-control">
                                        <option>Jose Abad</option>
                                        <option>Tania Granda</option>
                                    </select>
                                </div>

                            </div>


                        </div>


                        <div class="row" style="margin-top: 2em;">
                            <!-- /.col -->

                            <div class="col-md-12">

                                <table class="table table-hover" id="table-id">
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Proyecto</th>
                                        <th>Fecha</th>
                                        <th>Estudiante</th>
                                        <th>Tipo</th>
                                        <th>Horas</th>
                                        <th>Estado</th>
                                        <th>Revisar</th>
                                    </tr>

                                    <tbody>
                                        <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-2">
                                            <td>PRY001</td>
                                            <td>Proyecto Ascendere</td>
                                            <td>12/11/2019</td>
                                            <td>Jose Abad</td>
                                            <td>Reporte asistencia</td>
                                            <td>5</td>
                                            <td><span class="label label-warning">No revisado</span></td>
                                            <td><i class="fa fa-plus" aria-hidden="true"></i></td>
                                        </tr>
                                    </tbody>
                                    <tbody id="group-of-rows-2" class="collapse">
                                        <tr>
                                            <th>Actividad</th>
                                            <th>Fecha</th>
                                            <th>Hora Inicio</th>
                                            <th>Hora Fin</th>
                                            <th>N° Horas</th>
                                            <th>Estado</th>
                                            <th><button type="button" class="btn btn-primary">Guardar</button></th>
                                        <tr>
                                            <td>Modelado de bases de datos</td>
                                            <td>12/11/2019</td>
                                            <td>7:00</td>
                                            <td>10:00</td>
                                            <td>3</td>
                                            <td> <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="..."></td>
                                        </tr>
                                        <tr>
                                            <td>Diagrama entidad relación</td>
                                            <td>15/11/2019</td>
                                            <td>15:00</td>
                                            <td>17:00</td>
                                            <td>2</td>
                                            <td> <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="..."></td>
                                        </tr>


                                    </tbody>







                                    <tbody>
                                        <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-4">
                                            <td>PRY001</td>
                                            <td>Proyecto Ascendere</td>
                                            <td>16/10/2019</td>
                                            <td>Jose Abad</td>
                                            <td>Reporte asistencia</td>
                                            <td>10</td>
                                            <td><span class="label label-success">Revisado</span></td>
                                            <td><i class="fa fa-plus" aria-hidden="true"></i></td>
                                        </tr>
                                    </tbody>
                                    <tbody id="group-of-rows-4" class="collapse">
                                        <tr>
                                            <th>Actividad</th>
                                            <th>Fecha</th>
                                            <th>Hora Inicio</th>
                                            <th>Hora Fin</th>
                                            <th>N° Horas</th>
                                            <th>Estado</th>

                                        <tr>
                                            <td>Levantamiento de información</td>
                                            <td>16/10/2019</td>
                                            <td>15:00</td>
                                            <td>18:00</td>
                                            <td>3</td>
                                            <td>
                                                <div class="checkbox disabled">
                                                    <label><input type="checkbox" checked="checked" value="" disabled></label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Analisis de requerimientos</td>
                                            <td>18/10/2019</td>
                                            <td>10:00</td>
                                            <td>12:00</td>
                                            <td>2</td>
                                            <td>
                                                <div class="checkbox disabled">
                                                    <label><input type="checkbox" checked="checked" value="" disabled></label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Análisis de necesidades</td>
                                            <td>20/10/2019</td>
                                            <td>11:00</td>
                                            <td>14:00</td>
                                            <td>3</td>
                                            <td>
                                                <div class="checkbox disabled">
                                                    <label><input type="checkbox" checked="checked" value="" disabled></label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Mapa de procesos</td>
                                            <td>21/10/2019</td>
                                            <td>19:00</td>
                                            <td>21:00</td>
                                            <td>2</td>
                                            <td>
                                                <div class="checkbox disabled">
                                                    <label><input type="checkbox" checked="checked" value="" disabled></label>
                                                </div>
                                            </td>
                                        </tr>

                                    </tbody>









                                    <tbody>
                                        <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-6">
                                            <td>PRY001</td>
                                            <td>Proyecto Ascendere</td>
                                            <td>10/10/2019</td>
                                            <td>Jose Abad</td>
                                            <td>Incidencia</td>
                                            <td>N/A</td>
                                            <td><span class="label label-success">Revisado</span></td>
                                            <td><i class="fa fa-plus" aria-hidden="true"></i></td>
                                        </tr>
                                    </tbody>
                                    <tbody id="group-of-rows-6" class="collapse">
                                        <tr>
                                            <th>Incidencia</th>
                                            <th>Fecha</th>
                                            <th>Detalle</th>

                                        <tr>
                                            <td>Problemas con auspiciante</td>
                                            <td>10/10/2019</td>
                                            <td><img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;"></td>

                                        </tr>
                                    </tbody>

                                </table>

                                <!--		Start Pagination -->


                            </div> <!-- 		End of Container -->
                </section>


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
                                            <td class="align-middle"><img src="assets/imagenes/utpl_logo1.png" style="width: 90%;"></td>
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
                                                <select class="form-control">
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
                                                        <button class="btn btn-default"><i class="fa fa-search"></i></button>
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
                                            <td class="align-middle"><img src="assets/imagenes/utpl_logo1.png" style="width: 90%;"></td>
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
                                                <input type="text" class="form-control" placeholder="Titulo..." name="titulo_inc">
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
                                                <input type="text" class="form-control" placeholder="Loja..." name="lugar_inc">
                                                <label>Hora del suceso :</label>
                                                <div class="input-group clockpicker " data-autoclose="true">
                                                    <input type="text" class="form-control" value="12:00" name="hora_inc">
                                                    <span class="input-group-addon">
                                                        <span class="glyphicon glyphicon-time"></span>
                                                    </span>
                                                </div>
                                                <label></label>
                                                <input type="submit" class="next-form btn btn-block btn-default  bg-green" style="width:100%; " value="Guardar" />
                                            </div>
                                            <div class="col-sm-8" />
                                            <div class="box box-info">
                                                <div class="box-header">
                                                    <!-- tools box -->
                                                    <div class="pull-right box-tools">
                                                        <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                                                            <i class="fa fa-minus"></i></button>
                                                        <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove">
                                                            <i class="fa fa-times"></i></button>
                                                    </div>
                                                    <!-- /. tools -->
                                                </div>
                                                <!-- /.box-header -->
                                                <div class="box-body pad">

                                                    <textarea id="editor1" name="editor1" rows="10" cols="60">
                                           Describa aquí la eventualidad ocurrida
                    </textarea>

                                                </div>
                                            </div>

                                    </div>
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
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box">
                                    <div class="box-header">
                                        <h3 class="box-title">Eventualidades</h3>
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
                                        <?php $user->Incidencias($userSession->getCurrentUser()); ?>
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
                                        <td class="align-middle"><img src="assets/imagenes/utpl_logo1.png" style="width: 90%;"></td>
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
                                    <select class="form-control">
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
                                    <select class="form-control">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                    </select>
                                    <label>Por favor, indique las actividades a desarrollarse o entregables esperados del proyecto con un cronograma tentativo de octubre 2018 a febrero 2019. <br> Por ejemplo:
                                        <br> 1. Levantamiento de requerimientos - Del 8 al 19 de octubre
                                        <br> 2. Diseño de solución arquitectónica - Del 22 al 31 de octubre</label>
                                    <input type="text" class="form-control" placeholder="Actividades ...">
                                    <button type="Submit" class="btn btn-block btn-default bg-blue">Enviar</button>
                                    <button type="button" class="btn btn-block btn-default bg-yellow">Borrar</button>

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
                                                    <button class="btn btn-default"><i class="fa fa-search"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body table-responsive no-padding">
                                        <?php $user->Incidencias($userSession->getCurrentUser()); ?>
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
    <script>
        getPagination('#table-id');
        //getPagination('.table-class');
        //getPagination('table');

        /*					PAGINATION 
        - on change max rows select options fade out all rows gt option value mx = 5
        - append pagination list as per numbers of rows / max rows option (20row/5= 4pages )
        - each pagination li on click -> fade out all tr gt max rows * li num and (5*pagenum 2 = 10 rows)
        - fade out all tr lt max rows * li num - max rows ((5*pagenum 2 = 10) - 5)
        - fade in all tr between (maxRows*PageNum) and (maxRows*pageNum)- MaxRows 
        */

        function getPagination(table) {
            var lastPage = 1;

            $('#maxRows1')
                .on('change', function(evt) {
                    //$('.paginationprev').html('');						// reset pagination

                    lastPage = 1;
                    $('.pagination1')
                        .find('li')
                        .slice(1, -1)
                        .remove();
                    var trnum = 0; // reset tr counter
                    var maxRows = parseInt($(this).val()); // get Max Rows from select option

                    if (maxRows == 5000) {
                        $('.pagination1').hide();
                    } else {
                        $('.pagination1').show();
                    }

                    var totalRows = $(table + ' tbody tr').length; // numbers of rows
                    $(table + ' tr:gt(0)').each(function() {
                        // each TR in  table and not the header
                        trnum++; // Start Counter
                        if (trnum > maxRows) {
                            // if tr number gt maxRows

                            $(this).hide(); // fade it out
                        }
                        if (trnum <= maxRows) {
                            $(this).show();
                        } // else fade in Important in case if it ..
                    }); //  was fade out to fade it in
                    if (totalRows > maxRows) {
                        // if tr total rows gt max rows option
                        var pagenum = Math.ceil(totalRows / maxRows); // ceil total(rows/maxrows) to get ..
                        //	numbers of pages
                        for (var i = 1; i <= pagenum;) {
                            // for each page append pagination li
                            $('.pagination1 #prev1')
                                .before(
                                    '<li data-page="' +
                                    i +
                                    '">\
								  <span>' +
                                    i++ +
                                    '<span class="sr-only1">(current)</span></span>\
								</li>'
                                )
                                .show();
                        } // end for i
                    } // end if row count > max rows
                    $('.pagination1 [data-page="1"]').addClass('active'); // add active class to the first li
                    $('.pagination1 li').on('click', function(evt) {
                        // on click each page
                        evt.stopImmediatePropagation();
                        evt.preventDefault();
                        var pageNum = $(this).attr('data-page'); // get it's number

                        var maxRows = parseInt($('#maxRows1').val()); // get Max Rows from select option

                        if (pageNum == 'prev1') {
                            if (lastPage == 1) {
                                return;
                            }
                            pageNum = --lastPage;
                        }
                        if (pageNum == 'next1') {
                            if (lastPage == $('.pagination1 li').length - 2) {
                                return;
                            }
                            pageNum = ++lastPage;
                        }

                        lastPage = pageNum;
                        var trIndex = 0; // reset tr counter
                        $('.pagination1 li').removeClass('active'); // remove active class from all li
                        $('.pagination1 [data-page="' + lastPage + '"]').addClass('active'); // add active class to the clicked
                        // $(this).addClass('active');					// add active class to the clicked
                        limitPagging();
                        $(table + ' tr:gt(0)').each(function() {
                            // each tr in table not the header
                            trIndex++; // tr index counter
                            // if tr index gt maxRows*pageNum or lt maxRows*pageNum-maxRows fade if out
                            if (
                                trIndex > maxRows * pageNum ||
                                trIndex <= maxRows * pageNum - maxRows
                            ) {
                                $(this).hide();
                            } else {
                                $(this).show();
                            } //else fade in
                        }); // end of for each tr in table
                    }); // end of on click pagination list
                    limitPagging();
                })
                .val(50)
                .change();

            // end of on select change

            // END OF PAGINATION
        }
        function getPagination(table) {
            var lastPage = 1;

            $('#maxRows')
                .on('change', function(evt) {
                    //$('.paginationprev').html('');						// reset pagination

                    lastPage = 1;
                    $('.pagination')
                        .find('li')
                        .slice(1, -1)
                        .remove();
                    var trnum = 0; // reset tr counter
                    var maxRows = parseInt($(this).val()); // get Max Rows from select option

                    if (maxRows == 5000) {
                        $('.pagination').hide();
                    } else {
                        $('.pagination').show();
                    }

                    var totalRows = $(table + ' tbody tr').length; // numbers of rows
                    $(table + ' tr:gt(0)').each(function() {
                        // each TR in  table and not the header
                        trnum++; // Start Counter
                        if (trnum > maxRows) {
                            // if tr number gt maxRows

                            $(this).hide(); // fade it out
                        }
                        if (trnum <= maxRows) {
                            $(this).show();
                        } // else fade in Important in case if it ..
                    }); //  was fade out to fade it in
                    if (totalRows > maxRows) {
                        // if tr total rows gt max rows option
                        var pagenum = Math.ceil(totalRows / maxRows); // ceil total(rows/maxrows) to get ..
                        //	numbers of pages
                        for (var i = 1; i <= pagenum;) {
                            // for each page append pagination li
                            $('.pagination #prev')
                                .before(
                                    '<li data-page="' +
                                    i +
                                    '">\
								  <span>' +
                                    i++ +
                                    '<span class="sr-only">(current)</span></span>\
								</li>'
                                )
                                .show();
                        } // end for i
                    } // end if row count > max rows
                    $('.pagination [data-page="1"]').addClass('active'); // add active class to the first li
                    $('.pagination li').on('click', function(evt) {
                        // on click each page
                        evt.stopImmediatePropagation();
                        evt.preventDefault();
                        var pageNum = $(this).attr('data-page'); // get it's number

                        var maxRows = parseInt($('#maxRows').val()); // get Max Rows from select option

                        if (pageNum == 'prev') {
                            if (lastPage == 1) {
                                return;
                            }
                            pageNum = --lastPage;
                        }
                        if (pageNum == 'next') {
                            if (lastPage == $('.pagination li').length - 2) {
                                return;
                            }
                            pageNum = ++lastPage;
                        }

                        lastPage = pageNum;
                        var trIndex = 0; // reset tr counter
                        $('.pagination li').removeClass('active'); // remove active class from all li
                        $('.pagination [data-page="' + lastPage + '"]').addClass('active'); // add active class to the clicked
                        // $(this).addClass('active');					// add active class to the clicked
                        limitPagging();
                        $(table + ' tr:gt(0)').each(function() {
                            // each tr in table not the header
                            trIndex++; // tr index counter
                            // if tr index gt maxRows*pageNum or lt maxRows*pageNum-maxRows fade if out
                            if (
                                trIndex > maxRows * pageNum ||
                                trIndex <= maxRows * pageNum - maxRows
                            ) {
                                $(this).hide();
                            } else {
                                $(this).show();
                            } //else fade in
                        }); // end of for each tr in table
                    }); // end of on click pagination list
                    limitPagging();
                })
                .val(50)
                .change();

            // end of on select change

            // END OF PAGINATION
        }

        function limitPagging() {
            // alert($('.pagination li').length)

            if ($('.pagination li').length > 7) {
                if ($('.pagination li.active').attr('data-page') <= 3) {
                    $('.pagination li:gt(5)').hide();
                    $('.pagination li:lt(5)').show();
                    $('.pagination [data-page="next"]').show();
                }
                if ($('.pagination li.active').attr('data-page') > 3) {
                    $('.pagination li:gt(0)').hide();
                    $('.pagination [data-page="next"]').show();
                    for (let i = (parseInt($('.pagination li.active').attr('data-page')) - 2); i <= (parseInt($('.pagination li.active').attr('data-page')) + 2); i++) {
                        $('.pagination [data-page="' + i + '"]').show();

                    }

                }
            }
        }


        //  Developed By Yasser Mas
        // yasser.mas2@gmail.com
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