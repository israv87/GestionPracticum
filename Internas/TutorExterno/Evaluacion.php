<!-- 
* Copyright 2018 Carlos Eduardo Alfaro Orellana
-->
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Tutor Externo</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="../../assets/icons/book.ico" />
    <script src="../../js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="../../css/sweet-alert.css">
    <link rel="stylesheet" href="../../css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="../../css/normalize.css">
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="../../Assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../Assets/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../../Assets/Admin/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../../Assets/jvectormap/jquery-jvectormap.css">

 <link rel="stylesheet" href="../../Assets/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../../Assets/bootstrap-daterangepicker/daterangepicker.css">

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="../../js/modernizr.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="../../js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="../../js/main.js"></script>
</head>
<body>

   
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
                    <img src="../../assets/img/logo.png" alt="Biblioteca" class="img-responsive center-box" style="width:55%;">
                </figure>
             <h3 style="line-height: 55px; cursor: pointer;  margin-left: 3em;"> Maria Isabel loaiza</h3> 

               
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset nav-lateral-list-menu">
                <ul class="list-unstyled">
                    <li><a href="../TutorExterno.php"><i class="zmdi zmdi-home zmdi-hc-fw"></i>&nbsp;&nbsp; Resumen</a></li>
                    <li><a href="ValidarAsistencia.php"><i class=" fa fa-fw fa-calendar-check-o"></i>&nbsp;&nbsp; Validar Asistencias</a></li>
                            <li><a href="#"><i class="fa fa-fw fa-check-square-o"></i>&nbsp;&nbsp; Evaluación del Desempeño</a></li>
                            <li><a href="ProyectosTE.php"><i class="fa fa-fw fa-suitcase"></i>&nbsp;&nbsp; Proyectos Asignados</a></li>
                            <li><a href="SolicitudTE.php"><i class="fa fa-fw fa-list-alt"></i>&nbsp;&nbsp; Nuevos Proyectos</a></li>
                         
                    <li><a href="Eventualidades.php"><i class="fa fa-fw fa-edit"></i>&nbsp;&nbsp; Reporte de Eventualidades</a></li> 
                </ul>
            </div>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">

        <nav class="navbar-user-top full-reset">

            <ul class="list-unstyled full-reset">

                <figure>
                   <img src="../assets/img/user01.png" alt="user-picture" class="img-responsive img-circle center-box">
                </figure>
                <li style="color:#fff; cursor:default;">
                    <span class="all-tittles">Maria Isabel loaiza</span>
                </li>
                
                <li  class="tooltips-general exit-system-button" data-href="../../includes/logout.php" data-placement="bottom" title="Salir del sistema"><a href="../../includes/logout.php"></a>
                    <i class="zmdi zmdi-power"></i>
                </li>
                <li  class="tooltips-general search-book-button" data-href="searchbook.html" data-placement="bottom" title="Buscar libro">
                    <i class="zmdi zmdi-search"></i>
                </li>
                <li  class="tooltips-general btn-help" data-placement="bottom" title="Ayuda">
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
        <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Tutor Externo <small>Evaluación del Desempeño</small></h1>
            </div>
        </div>
       
        <div class="container-fluid"  style="margin: 20px 0;">





            
              
        <div class="row"> 
          <div class="box box-warning"> 
            <div class="box-header with-border">
              <table style="height: 100px;">
                        <tbody>
                          <tr>                             
                            
                            <td class="align-middle"><img src="../../assets/img/utpl_logo1.png" style="width: 90%;" ></td>
                            <td class="align-middle"> <h3 >UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                              <h5>Formuladrio para la evaluación del desempeño del estudiante</h5></td>

                          </tr>
                        </tbody>
                      </table>

            </div>

        <div class="col-sm-12">
           <div class="box-body">
              <form role="form">
                <!-- text input -->
                <div class="form-group">
        <div class="row">
          <div class="col-xs-4">
              <label>Seleccione el Proyecto Asignado :</label>
                   <select class="form-control">
                    <option>Proyecto #1</option>
                    <option>Proyecto #2</option>
                    <option>Proyecto #3</option>
                  </select> 
          </div>
          <div class="col-xs-4">
               <label>Seleccione el Estudiante:</label>
                   <select class="form-control">
                    <option>Estudiante #1</option>
                    <option>Estudiante #2</option>
                    <option>Estudiante #3</option>
                  </select>

          </div>
          <div class="col-xs-3">
            
                   <label>Seleccione la rubrica a Evaluar:</label>
                   <select class="form-control">
                    <option>Rurbica #1</option>
                    <option>Rurbica #2</option>
                    <option>Rurbica #3</option>
                  </select>

          </div>


</div>

              </form>
            </div>



        </div>
            



            <!-- /.box-header -->
           
               

             

                
            <!-- /.box-body -->
          </div>

          <div class="col-sm-12">
          
            <table class="table table-bordered">
                <tr>
                  <th>CRITERIOS EVALUACIÓN DEL APRENDIZAJE </th>
                  <th style="width: 20px">PESO</th>
                  
                  <th>EXCELENTE 6</th>
                  <th>MUY BUENO 4</th>
                  <th>BUENO 2</th>
                  <th>MALO 0</th>
                  <th>PUNTAJE OBTENIDO</th>
                </tr>
                <tr>
                  <td>Conocimiento para realizar su trabajo </td>
                  <td>25%</td>
                  <td>El estudiante domina los conocimientos necesarios para realizar su trabajo correctamente.</td>
                  <td>El estudiante domina satisfactoriamente los conocimientos necesarios para realizar su trabajo correctamente.</td>
                  <td>El estudiante tiene poco dominio de los conocimientos necesarios para realizar su trabajo correctamente.</td>
                  <td>El estudiante no domina los conocimientos necesarios para realizar su trabajo correctamente.</td>
                  <td></td>

                </tr>

                <tr>
                  <td>Capacidad de liderazgo y predisposición para el trabajo asignado  </td>
                  <td>25%</td>
                  <td>El estudiante tiene capacidad de liderazgo y predisposición para realizar las actividades asignadas.</td>
                  <td>El estudiante tiene capacidad de liderazgo pero le falta predisposición para realizar las actividades asignadas.</td>
                  <td>El estudiante tiene poca capacidad de liderazgo y falta de predisposición para realizar las actividades asignadas.</td>
                  <td>El estudiante no tiene capacidad de liderazgo ni predisposición para realizar las actividades asignadas.</td>
                  <td></td>
                </tr>
                  <tr>
                  <td>Desempeño en las actividades  </td>
                  <td>25%</td>
                  <td>El estudiante desempeña correctamente todas las actividades propuestas.</td>
                  <td>Regularmente el estudiante desempeña correctamente todas las actividades propuestas.</td>
                  <td>Pocas veces el estudiante desempeña correctamente todas las actividades propuestas.</td>
                  <td>El estudiante no se desempeña correctamente en ninguna de las actividades propuestas.</td>
                  <td></td>
                </tr>
                  <tr>
                  <td>Asistencia y puntualidad </td>
                  <td>25%</td>
                  <td>El estudiante siempre asiste puntualmente a realizar las prácticas.</td>
                  <td>Regularmente el estudiante asiste puntualmente a realizar las prácticas.</td>
                  <td>Pocas veces el estudiante asiste puntualmente a realizar las prácticas.</td>
                  <td>El estudiante no asiste o es impuntual al realizar las prácticas.</td>
                  <td></td>
                </tr>
                  <tr>
                  <th>Total </th>
                  <th style="width: 20px">100%</th>
                  
                  <th></th>
                  <th></th>
                  <th></th>
                  <th></th>
                  <th>/24</th>
                </tr>
                
              </table>
                  
                 
              </div>
             
              <!-- /.form group -->

         
            <!-- /.box-body -->
          

        
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
        <footer class="footer full-reset">
            <div class="container-fluid bg-yellow">
                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                        <h4 class="all-tittles">Direccion:</h4>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam quam dicta et, ipsum quo. Est saepe deserunt, adipisci eos id cum, ducimus rem, dolores enim laudantium eum repudiandae temporibus sapiente.
                        </p>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <h4 class="all-tittles">Telefonos</h4>
                        <ul class="list-unstyled">
                            <li><i class="zmdi zmdi-check zmdi-hc-fw"></i>&nbsp; UTPL <i class="zmdi zmdi-facebook zmdi-hc-fw footer-social"></i><i class="zmdi zmdi-twitter zmdi-hc-fw footer-social"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-copyright full-reset all-tittles">UTPL</div>
        </footer>   
    </div>
    <script src="../../js/jquery-1.11.2.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../../Assets/jquery-ui/jquery-ui.min.js"></script>
   <!-- daterangepicker -->
   <script src="../../Assets/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="../../Assets/moment/min/moment.min.js"></script>
<script src="../../Assets/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="../../Assets/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="../../Assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../../Assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="../../Assets/jquery-knob/dist/jquery.knob.min.js"></script>
<script src="../../Assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="../../Assets/Admin/js/pages/dashboard.js"></script>
<!-- Slimscroll -->

<!-- daterangepicker -->
</body>
</html>