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

 <link rel="stylesheet" href="../../Assets/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../../Assets/bootstrap-daterangepicker/daterangepicker.css">
 <link rel="stylesheet" href="../../Assets/plugins/timepicker/bootstrap-timepicker.min.css">
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
                            <li><a href="#"><i class="zmdi zmdi-bookmark-outline zmdi-hc-fw"></i>&nbsp;&nbsp; Carta de Compromiso</a></li>
                            <li><a href="CartaAsig.php"><i class="zmdi zmdi-assignment-account zmdi-hc-fw"></i>&nbsp;&nbsp; Carta de Asignacion</a></li>
                         
                    <li><a href="Incidencias.php"><i class="zmdi zmdi-trending-up zmdi-hc-fw"></i>&nbsp;&nbsp; Reporte de Incidencias</a></li>
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
              <h1 class="all-tittles">Estudiantes <small>Carta de compromiso</small></h1>
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
                              <h5>Formuladrio para la carta de compromiso</h5></td>

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
                        <button type="button"   class="btn btn-block btn-default bg-blue">Generar</button>
                      </td>
                      <td>
                         <button type="button"  class="btn btn-block btn-default bg-yellow">Borrar </button>
                      </td>
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
   <script src="../../Assets/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../Assets/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="../../Assets/select2/dist/js/select2.full.min.js"></script>
<!-- InputMask -->
<script src="../../Assets/plugins/input-mask/jquery.inputmask.js"></script>
<script src="../../Assets/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="../../Assets/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="../../Assets/moment/min/moment.min.js"></script>
<script src="../../Assets/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="../../Assets/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- bootstrap color picker -->
<script src="../../Assets/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="../../Assets/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll -->
<script src="../../Assets/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="../../Assets/plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script src="../../Assets/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- Page script -->
<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })
  })
</script>
</body>
</html>