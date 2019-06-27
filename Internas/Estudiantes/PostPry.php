<!-- 
* Copyright 2018 Carlos Eduardo Alfaro Orellana
-->
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Estudiantes</title>
    <?php 
include_once 'Includes/EstructurasHTML/links.php';
?>
</head>
<body>
     <!--llamadas a los menu lateral y superior-->
     <div class="navbar-lateral full-reset">
        <div class="visible-xs font-movile-menu mobile-menu-button"></div>
        <div class="full-reset container-menu-movile nav-lateral-scroll">
            <?php 
               include 'Includes/EstructurasHTML/MenuEstudiantesLateral.php';
               ?>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">
        <nav class="navbar-user-top full-reset">
            <?php 
              
               ?>
        </nav>
        <!--llamadas a los menus lateral y superior-->

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
<?php
    include 'Includes/EstructurasHTML/BotonesMenu.php';
    include 'Includes/EstructurasHTML/Footer.php';
    ?>
    </div>
    </div>
    <?php 
    include_once 'Includes/EstructurasHTML/ScriptsFooter.php';
    ?> 
</body>
</html>