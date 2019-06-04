<!-- 
* Copyright 2018 Carlos Eduardo Alfaro Orellana
-->
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Estudiantes</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="../assets/icons/book.ico" />
    <script src="js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="../css/sweet-alert.css">
    <link rel="stylesheet" href="../css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../Assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../Assets/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../Assets/Admin/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../Assets/jvectormap/jquery-jvectormap.css">

 <link rel="stylesheet" href="../Assets/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../Assets/bootstrap-daterangepicker/daterangepicker.css">

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="../js/modernizr.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="../js/main.js"></script>
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
                    <img src="../assets/img/logo.png" alt="Biblioteca" class="img-responsive center-box" style="width:55%;">
                </figure>
             <h3 style="line-height: 55px; cursor: pointer;  margin-left: 3em;"> Cecilia Sanchez</h3> 

               
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset nav-lateral-list-menu">
                <ul class="list-unstyled">
                    <li><a href="#"><i class="zmdi zmdi-home zmdi-hc-fw"></i>&nbsp;&nbsp; Resumen</a></li>
                    <li><a href="Estudiantes/RegAsis.php"><i class="zmdi zmdi-balance zmdi-hc-fw"></i>&nbsp;&nbsp; Registro de Asistencia</a></li>
                            <li><a href="Estudiantes/InfBim.php"><i class="zmdi zmdi-truck zmdi-hc-fw"></i>&nbsp;&nbsp; Informe Bimestral</a></li>
                            <li><a href="Estudiantes/CartaComp.php"><i class="zmdi zmdi-bookmark-outline zmdi-hc-fw"></i>&nbsp;&nbsp; Carta de Compromiso</a></li>
                            <li><a href="Estudiantes/CartaAsig.php"><i class="zmdi zmdi-assignment-account zmdi-hc-fw"></i>&nbsp;&nbsp; Carta de Asignacion</a></li>
                         
                    <li><a href="Estudiantes/Incidencias.php"><i class="zmdi zmdi-trending-up zmdi-hc-fw"></i>&nbsp;&nbsp; Reporte de Incidencias</a></li>
                    <li><a href="Estudiantes/PostPry.php"><i class="zmdi zmdi-wrench zmdi-hc-fw"></i>&nbsp;&nbsp; Postulacion a Proyectos</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">

        <nav class="navbar-user-top full-reset">

            <ul class="list-unstyled full-reset">

                <figure>
                   <img src="assets/img/user01.png" alt="user-picture" class="img-responsive img-circle center-box">
                </figure>
                <li style="color:#fff; cursor:default;">
                    <span class="all-tittles">Cecilia Sanchez</span>
                </li>
                
                <li  class="tooltips-general exit-system-button" data-href="../includes/logout.php" data-placement="bottom" title="Salir del sistema"><a href="../includes/logout.php"></a>
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
              <h1 class="all-tittles">Estudiantes <small>Resumen</small></h1>
            </div>
        </div>
       
        <div class="container-fluid"  style="margin: 20px 0;">





            
                
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
                <li><a href="#">Actividades Completadas <span class="pull-right badge bg-blue">5 / 10</span></a></li>
                <li><a href="#">Horas Trabajadas <span class="pull-right badge bg-aqua">28</span></a></li>
                <li><a href="#">Informes Enviados <span class="pull-right badge bg-green">1</span></a></li>
                <li><a href="#">Cartas de Compromiso Enviadas <span class="pull-right badge bg-red">0</span></a></li>
                <li><a href="#">Cartas de Asignacion Enviadas <span class="pull-right badge bg-red">0</span></a></li>
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
                  <button type="button" class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-bars"></i></button>
                  <ul class="dropdown-menu pull-right" role="menu">
                    <li><a href="#">Add new event</a></li>
                    <li><a href="#">Clear events</a></li>
                    <li class="divider"></li>
                    <li><a href="#">View calendar</a></li>
                  </ul>
                </div>
                <button type="button" class="btn btn-warning btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-warning btn-sm" data-widget="remove"><i class="fa fa-times"></i>
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
                    <span class="pull-left">Actividad #1</span><small class="pull-right">Termina: 29/04/2019</small>
                    <small class="pull-right">Inicia:  15/04/2019</small>
                    
                  </div>
                  <small class="pull-right">Progreso</small>
                  <div class="progress xs">
                    <div class="progress-bar progress-bar-yellow" style="width: 90%;"></div>
                  </div>

                  <div class="clearfix">
                   <span class="pull-left">Actividad #2</span>
                    <small class="pull-right">Inicia:  30/04/2019</small>
                  
                  </div>
                  <small class="pull-right">Progreso</small>
                  <div class="progress xs">
                    <div class="progress-bar progress-bar-yellow" style="width: 70%;"></div>
                  </div>
                </div>
                <!-- /.col -->
                <div class="col-sm-6">
                  <div class="clearfix">
                   <span class="pull-left">Actividad #3</span><small class="pull-right">Termina: 20/05/2019</small>
                    <small class="pull-right">Inicia:  07/05/2019</small>
                    
                  </div>
                  <small class="pull-right">Progreso</small>
                  <div class="progress xs">
                    <div class="progress-bar progress-bar-yellow" style="width: 60%;"></div>
                  </div>

                  <div class="clearfix">
                    <span class="pull-left">Actividad #4</span><small class="pull-right">Termina: 30/05/2019</small>
                    <small class="pull-right">Inicia:  21/05/2019</small>
                    
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
    <script src="../js/jquery-1.11.2.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../Assets/jquery-ui/jquery-ui.min.js"></script>
   <!-- daterangepicker -->
   <script src="../Assets/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="../Assets/moment/min/moment.min.js"></script>
<script src="../Assets/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="../Assets/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="../Assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../Assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="../Assets/jquery-knob/dist/jquery.knob.min.js"></script>
<script src="../Assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="../Assets/Admin/js/pages/dashboard.js"></script>
<!-- Slimscroll -->

<!-- daterangepicker -->
</body>
</html>