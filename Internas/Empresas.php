<!-- 
* Copyright 2016 Carlos Eduardo Alfaro Orellana
-->
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Inicio</title>

    <?php
include '../includes/estructuras/links.html';
?>
<script>
    $(document).ready(function() {
        $("#postu").click(function() {
            $("#postulacion").show();
            $("#estadodeproyectos").hide();
        });
        $("#estado_pro").click(function() {
            $("#estadodeproyectos").show();
            $("#postulacion").hide();
        
    });
</script>  






    
</head>
<body>
    <div class="navbar-lateral full-reset">
        <div class="visible-xs font-movile-menu mobile-menu-button"></div>
        <div class="full-reset container-menu-movile nav-lateral-scroll">
            <div class="logo full-reset all-tittles">
                <i class="visible-xs zmdi zmdi-close pull-left mobile-menu-button" style="line-height: 55px; cursor: pointer; padding: 0 10px; margin-left: 7px;"></i> 
                Empresas
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset" style="padding: 10px 0; color:#fff;">
                <figure>
                    <img src="../assets/imagenes/template/institution.png" alt="Biblioteca" class="img-responsive center-box" style="width:55%;">
                </figure>
                <p class="text-center" style="padding-top: 15px;">Empresas</p>
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset nav-lateral-list-menu">
                <ul class="list-unstyled">
                <li><a href="Empresas/postulación.php"><i class=></i>&nbsp;&nbsp; Postulación</a></li>
                <li><a href="Empresas/Estadodeproyectos.php"><i class=></i>&nbsp;&nbsp; Estado de proyecto</a></li>
                </li>
                </ul>
            </div>
        </div>
    </div>
         
                        
                           
                     
  
    <div class="content-page-container full-reset custom-scroll-containers">
        <nav class="navbar-user-top full-reset">
            <ul class="list-unstyled full-reset">
                <figure>
                   <img src="../assets/imagenes/template/institution.png" alt="user-picture" class="img-responsive img-circle center-box">
                </figure>
                <li style="color:#fff; cursor:default;">
                    <span class="all-tittles">Admin Name</span>
                </li>
                <li  class="tooltips-general exit-system-button" data-href="index.html" data-placement="bottom" title="Salir del sistema">
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
    </div>  
    <div id= "postulaciones">
    <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Empresas<small>Postulacion</small></h1>
            </div>
        </div>
        <div class="row">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <table style="height: 100px;">
                                <tbody>
                                    <tr>
                                        <td class="align-middle"><img src="../../assets/imagenes/utpl_logo1.png"
                                                style="width: 90%;"></td>
                                        <td class="align-middle">
                                            <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                            <h5>Postulacion Empresas</h5>
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
                                        <label>Nombre de la Empresa / Institución</label>
                                        <input type="text" class="form-control" placeholder="Empresa ...">
                                        <label>¿Mantiene su empresa un convenio con la carrera de Sistemas Informáticos y Computación de la UTPL?</label>
                                        <select class= "form-control">
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
                                        <select class= "form-control">
                                        <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                        <label>Por favor, indique las actividades a desarrollarse o entregables esperados del proyecto con un cronograma tentativo de octubre 2018 a febrero 2019. <br> Por ejemplo:
<br>  1. Levantamiento de requerimientos - Del 8 al 19 de octubre
 <br> 2. Diseño de solución arquitectónica - Del 22 al 31 de octubre</label>
                                        <input type="text" class="form-control" placeholder="Actividades ...">
                                        <button type="Submit" class="btn btn-block btn-default bg-blue" >Enviar</button>
                                                    <button type="button" class="btn btn-block btn-default bg-yellow" >Borrar</button>

                                                    </div>
          </div>
          </div>
<div id= "Estadoproyecto"
          <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Empresas<small>Estado de proyecto</small></h1>
            </div>
        </div>
        <div class="row">
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <table style="height: 100px;">
                                <tbody>
                                    <tr>
                                        <td class="align-middle"><img src="../../assets/imagenes/utpl_logo1.png"
                                                style="width: 90%;"></td>
                                        <td class="align-middle">
                                            <h3>UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                                            <h5>Estado de proyecto - Empresas</h5>
                                        </td>

                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Codigo Proyecto</th>
            
            <th>Proyecto</th>
            <th>Convenio </th>
            <th>Codigo de convenio</th>
            <th>Dependencia</th>
            <th>Encargado</th>
            <th>Numero de estudiantes</th>
            <th>Estado</th>
        </tr>
        <tr>
            <td>PRO001</td>
            <td>Proyecto ASCENDERE </td>
            <td>Vigente </td>
            <td>CNV001</td>
            <td>Dirección de Innovación, Formación y Evaluación Docente </td>
            <td> Maria Isabel Loaiza </td>
            <td> 2 </td>
          <td>  <span class="label label-success">Validado</span> <td/>


</tr>
    </thead>
    <tbody>

        </tfoot>
        </table>';
    }

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
</div>
</body>
</html>