<!-- 
* Copyright 2018 Carlos Eduardo Alfaro Orellana
-->
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Tutor Externo</title>

   









   
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
              <h1 class="all-tittles">Tutor Externo <small>Validación de horas trabajadas</small></h1>
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
                              <h5>Horas trabajadas por los estudiantes</h5></td>

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


</div>

              </form>
            </div>



        </div>
            



            <!-- /.box-header -->
           
               

             

                
            <!-- /.box-body -->
          </div>

          <div class="col-sm-12">
          
           <div class="box">
            <div class="box-header">
              <h3 class="box-title">Informes de Asistencias</h3>

              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
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
                  <th>Validación</th>
                </tr>
                <tr>
                  <td>REG0154</td>
                  <td>Semana 1</td>
                  <td>12-04-2019</td>
                  <td>Estudio del caso y analisis de la aplicacion en que se va a trabajar</td>
                  <td><img src="../../Assets/img/pdf.jpg" style="width: 5%;"></td>
                  <td><span class="label label-success">Verificado</span></td>

                </tr>
                 <tr>
                  <td>REG0162</td>
                  <td>Semana 2</td>
                  <td>22-04-2019</td>
                  <td>Desarrollo de aplicacion</td>
                  <td><img src="../../Assets/img/pdf.jpg" style="width: 5%;"></td>
                  <td><span class="label label-success">Verificado</span></td>
                  
                </tr>
               <tr>
                  <td>REG0163</td>
                  <td>Semana 2</td>
                  <td>22-04-2019</td>
                  <td>Desarrollo de aplicacion</td>
                  <td><img src="../../Assets/img/pdf.jpg" style="width: 5%;"></td>
                  <td><span class="label label-success">Verificado</span></td>
                  
                </tr>
                 <tr>
                  <td>REG0175</td>
                  <td>Semana 2</td>
                  <td>22-04-2019</td>
                  <td>Apliacacion de las metodologias adecuadas </td>
                  <td><img src="../../Assets/img/pdf.jpg" style="width: 5%;"></td>
                  <td><button type="button" class=" btn btn-block btn-primary">  Validar</button></td>
                  
                </tr>
               
              </table>
            </div>
            <!-- /.box-body -->
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





<!-- daterangepicker -->
</body>
</html>