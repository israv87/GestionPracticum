<!-- 
* Copyright 2018 Carlos Eduardo Alfaro Orellana
-->
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Estudiantes</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="../../assets/icons/book.ico" />
    <script src="js/sweet-alert.min.js"></script>
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
    <link rel="stylesheet" href="../../Assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="../../Assets/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="../../Assets/bootstrap-daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="../../Assets/plugins/timepicker/bootstrap-timepicker.min.css">
    <link rel="stylesheet" href="../../Assets/Admin/css/skins/_all-skins.min.css">
 







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
             <h3 style="line-height: 55px; cursor: pointer;  margin-left: 3em;"> Cecilia Sanchez</h3> 

               
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset nav-lateral-list-menu">
                <ul class="list-unstyled">
                    <li><a href="../Estudiantes.php"><i class="zmdi zmdi-home zmdi-hc-fw"></i>&nbsp;&nbsp; Resumen</a></li>
                    <li><a href="RegAsis.php"><i class="zmdi zmdi-balance zmdi-hc-fw"></i>&nbsp;&nbsp; Registro de Asistencia</a></li>
                            <li><a href="InfBim.php"><i class="zmdi zmdi-truck zmdi-hc-fw"></i>&nbsp;&nbsp; Informe Bimestral</a></li>
                            <li><a href="CartaComp.php"><i class="zmdi zmdi-bookmark-outline zmdi-hc-fw"></i>&nbsp;&nbsp; Carta de Compromiso</a></li>
                            <li><a href="CartaAsig.php"><i class="zmdi zmdi-assignment-account zmdi-hc-fw"></i>&nbsp;&nbsp; Carta de Asignacion</a></li>
                         
                    <li><a href="#"><i class="zmdi zmdi-trending-up zmdi-hc-fw"></i>&nbsp;&nbsp; Reporte de Incidencias</a></li>
                    <li><a href="PostPry.php"><i class="zmdi zmdi-wrench zmdi-hc-fw"></i>&nbsp;&nbsp; Postulacion a Proyectos</a></li>
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
              <h1 class="all-tittles">Estudiantes <small>Incidencias</small></h1>
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
                              <h5>Formulario de resgistro de incidencias.</h5></td>

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
                        <button type="button"   class="btn btn-block btn-default bg-blue">Enviar</button>
                      </td>
                      <td>
                         <button type="button"  class="btn btn-block btn-default bg-yellow">Borrar</button>
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
                <small>Describa la incidencia ocurrida dentro de las practicas pre profesionales. </small>
              </h3>
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
              <form>
                    <textarea id="editor1" name="editor1" rows="10" cols="80">
                                           Describa aqui la o las incidencias.
                    </textarea>
              </form>
            </div>
          </div>
 

          </div>
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
 <!-- jQuery 3 -->
<script src="../../Assets/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../Assets/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../../Assets/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../Assets/Admin/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../Assets/Admin/js/demo.js"></script>
<!-- CK Editor -->
<script src="../../Assets/ckeditor/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="../../Assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1')
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()
  })
</script>
</body>
</html>
