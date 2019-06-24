<!-- 
* Copyright 2018 Carlos Eduardo Alfaro Orellana
-->
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Estudiantes</title>
 
   









   
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
                         
                    <li><a href="Incidencias.php"><i class="zmdi zmdi-trending-up zmdi-hc-fw"></i>&nbsp;&nbsp; Reporte de Incidencias</a></li>
                    <li><a href="#"><i class="zmdi zmdi-wrench zmdi-hc-fw"></i>&nbsp;&nbsp; Postulacion a Proyectos</a></li>
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
              <h1 class="all-tittles">Estudiantes <small>Registro de Asistencia</small></h1>
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
                              <h5>Registro de asistencias de practicas pre profesionales</h5></td>

                          </tr>
                        </tbody>
                      </table>

            </div>


          <div class="col-sm-12">
            
           <div class="box">
            <div class="box-header">
              <h3 class="box-title">Plazas para la Gestion Productiva 2.2 </h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Empresa</th>
                  <th>Convenio</th>
                  <th>Dependencia</th>
                  <th>Encargado</th>
                  <th>Responsable Ciencias de la Computacion</th>
                  <th>Email del Encargado</th>
                  <th>Telefono</th>
                  <th>Nombre del Proyecto</th>
                  <th>Plazas Totales</th>
                  <th>Plazas Ocupadas</th>
                  <th>Plazas para la GP2.2</th>
                  <th>Estado</th>
                  <th>Postulacion</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>UTPL</td>
                  <td>Si</td>
                  <td>Titulación de Arquitectura</td>
                  <td>Xavier Burneo</td>
                  <td>Fernanda Soto</td>
                  <td>xeburneo@utpl.edu.ec</td>
                  <td>0992998641</td>
                  <td>Sitio web Titulación de Arquitectura</td>
                  <td>2</td>
                  <td>0</td>
                  <td>1</td>
                  <th><span class="label label-success">Disponible</span></th>
                  <td><button type="button"   class="btn btn-block btn-default bg-blue">Postular</button></td>
                </tr>
                  <tr>
                  <td>UTPL</td>
                  <td>Si</td>
                  <td>Titulación de Arquitectura</td>
                  <td>Xavier Burneo</td>
                  <td>Fernanda Soto</td>
                  <td>xeburneo@utpl.edu.ec</td>
                  <td>0992998641</td>
                  <td>Sitio web Titulación de Arquitectura</td>
                  <td>3</td>
                  <td>3</td>
                  <td>2</td>
                  <th><span class="label label-danger">Ocupada</span></th>
                 <td><button type="button"   class="btn btn-block btn-default bg-blue">Postular</button></td>
                </tr>
                  <tr>
                  <td>UTPL</td>
                  <td>Si</td>
                  <td>Titulación de Arquitectura</td>
                  <td>Xavier Burneo</td>
                  <td>Fernanda Soto</td>
                  <td>xeburneo@utpl.edu.ec</td>
                  <td>0992998641</td>
                  <td>Sitio web Titulación de Arquitectura</td>
                  <td>3</td>
                  <td>0</td>
                  <td>2</td>
                  <th><span class="label label-success">Disponible</span></th>
                 <td><button type="button"   class="btn btn-block btn-default bg-blue">Postular</button></td>
                </tr>
                  <tr>
                  <td>UTPL</td>
                  <td>Si</td>
                  <td>Titulación de Arquitectura</td>
                  <td>Xavier Burneo</td>
                  <td>Fernanda Soto</td>
                  <td>xeburneo@utpl.edu.ec</td>
                  <td>0992998641</td>
                  <td>Sitio web Titulación de Arquitectura</td>
                  <td>3</td>
                  <td>2</td>
                  <td>3</td>
                  <th><span class="label label-warning">Disponible</span></th>
                  <td><button type="button"   class="btn btn-block btn-default bg-blue">Postular</button></td>
                </tr>
                </tfoot>
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
    </div></div>









</body>
</html>