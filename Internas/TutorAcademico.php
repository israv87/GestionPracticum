<!-- 
* Copyright 2016 Carlos Eduardo Alfaro Orellana
-->
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Inicio</title>
<?php
include 'includes/estructuras/links.html';
?>
<script>
    $(document).ready(function() {
        $("#porta").click(function() {
            $("#portafolio").show();
            $("#informe_consolidado,#calificar_asistencia").hide();
        });
        $("#informe_con").click(function() {
            $("#informe_consolidado").show();
            $("#portafolio,#calificar_asistencia").hide();
        });
        $("#calificar_as").click(function() {
            $("#calificar_asistencia").show();
            $("#portafolio,#informe_consolidado").hide();
        });
    });
</script>    
</head>
<body>
    <div class="navbar-lateral full-reset">
        <div class="visible-xs font-movile-menu mobile-menu-button"></div>
        <div class="full-reset container-menu-movile nav-lateral-scroll">
            <div class="logo full-reset all-tittles">
                <i class="visible-xs zmdi zmdi-close pull-left mobile-menu-button" style="line-height: 55px; cursor: pointer; padding: 0 10px; margin-left: 7px;"></i> 
                Tutor Academico
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset" style="padding: 10px 0; color:#fff;">
                <figure>
                    <img src="assets/imagenes/template/user02.png" alt="Biblioteca" class="img-responsive center-box" style="width:55%;">
                </figure>
                <p class="text-center" style="padding-top: 15px;">TutorAcademico</p>
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset nav-lateral-list-menu">
                <ul class="list-unstyled">
                    <li><a id="porta" ><i class=></i>&nbsp;&nbsp; Portafolio</a></li>
                            <li><a id="informe_con"><i class=></i>&nbsp;&nbsp; Informe Consolidado </a></li>
                            <li><a id="calificar_as"><i class=></i>&nbsp;&nbsp; Calificar Asistencia</a></li>

                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">
        <nav class="navbar-user-top full-reset">
            <ul class="list-unstyled full-reset">
                <figure>
                   <img src="./assets/imagenes/template/user02.png" alt="user-picture" class="img-responsive img-circle center-box">
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





<div id="portafolio">
<div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Tutor Académico <small>Portafolio</small></h1>
            </div>
        </div>
        
       
        <div class="container-fluid"  style="margin: 20px 0;">

<div class="row">
        <div class="col-xs-12">
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
                  <th>GP</th>
                  <th>Paralelo</th>
                  <th>Fecha</th>
                  <th>Informe</th>
                  <th>Archivo</th>
                  <th>Validado</th>
                  <th>Calificado</th>
                </tr>
                <tr>
                  <td>2.2</td>
                  <td>A</td>
                  <td>12-04-2019</td>
                  <td>Primer Bimestre</td>
                  <td><img src="./Assets/imagenes/template/pdf.jpg" style="width: 5%;"></td>
                  <td><span class="label label-success">Verificado</span></td>
                  <td><span class="label label-success">Calificado</span></td>
                </tr>
                 <tr>
                  <td>2.3</td>
                  <td>B</td>
                  <td>22-04-2019</td>
                  <td>Primer Bimestre</td>
                  <td><img src="./Assets/imagenes/template/pdf.jpg" style="width: 5%;"></td>
                  <td><span class="label label-danger">Cancelado</span></td>
                  <td><span class="label label-danger">Cancelado</span></td>
                </tr>
               <tr>
                  <td>2.2</td>
                  <td>A</td>
                  <td>22-04-2019</td>
                  <td>Primer Bimestre</td>
                  <td><img src="./Assets/imagenes/template/pdf.jpg" style="width: 5%;"></td>
                  <td><span class="label label-success">Verificado</span></td>
                  <td><span class="label label-warning">Pendiente</span></td>
                </tr>
                 <tr>
                  <td>1.3</td>
                  <td>A</td>
                  <td>22-04-2019</td>
                  <td>Primer Bimestre </td>
                  <td><img src="./Assets/imagenes/template/pdf.jpg" style="width: 5%;"></td>
                  <td><span class="label label-warning">Pendiente</span></td>
                  <td><span class="label label-warning">Pendiente</span></td>
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





<div id="informe_consolidado" style= "display: none">
<div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Tutor Academico <small>Informe Consolidado</small></h1>
            </div>
        </div>
       
        <div class="container-fluid"  style="margin: 20px 0;">





            
              
        <div class="row"> 
          <div class="box box-warning"> 
            <div class="box-header with-border">
              <table style="height: 100px;">
                        <tbody>
                          <tr>                             
                            
                            <td class="align-middle"><img src="./assets/imagenes/utpl_logo1.png" style="width: 90%;" ></td>
                            <td class="align-middle"> <h3 >UNIVERSIDAD TECNICA PARTICULAR DE LOJA</h3>
                              <h5>Informe Consolidado</h5></td>

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
                  <label>NOMBRE DE LA TITULACIÓN/CARRERA:</label>
                  <input type="text" class="form-control" placeholder="Carrera ...">
                  <label>INFORME BIMESTRAL DE:</label>
                  <input type="text" class="form-control" placeholder="Nombre ...">
                  <label>PRÁCTICAS PREPROFESIONALES</label>
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
              <h3 class="box-title">Informe Consolidado
                <small>Describa las actividades realizadas a lo largo del ciclo. </small>
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
                                           Escriba el informe aqui.
                    </textarea>
              </form>
            </div>
          </div>
 

          </div>
          </div>
      </div>




        </div>
</div>





<div id="calificar_asistencia" style= "display: none">
<div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Tutor Academico <small>Calificar Asistencia</small></h1>
            </div>
        </div>
       
        <div class="container-fluid"  style="margin: 20px 0;">
            <div class="row">
        <div class="col-xs-12">
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
                  <th>Validado</th>
                  <th>Calificado</th>
                </tr>
                <tr>
                  <td>REG0154</td>
                  <td>Semana 1</td>
                  <td>12-04-2019</td>
                  <td>Estudio del caso y analisis de la aplicacion en que se va a trabajar</td>
                  <td><img src="./Assets/imagenes/template/pdf.jpg" style="width: 5%;"></td>
                  <td><span class="label label-success">Verificado</span></td>
                  <td><span class="label label-success">Calificado</span></td>
                </tr>
                 <tr>
                  <td>REG0162</td>
                  <td>Semana 2</td>
                  <td>22-04-2019</td>
                  <td>Desarrollo de aplicacion</td>
                  <td><img src="./Assets/img/pdf.jpg" style="width: 5%;"></td>
                  <td><span class="label label-danger">Cancelado</span></td>
                  <td><span class="label label-danger">Cancelado</span></td>
                </tr>
               <tr>
                  <td>REG0163</td>
                  <td>Semana 2</td>
                  <td>22-04-2019</td>
                  <td>Desarrollo de aplicacion</td>
                  <td><img src="./Assets/img/pdf.jpg" style="width: 5%;"></td>
                  <td><span class="label label-success">Verificado</span></td>
                  <td><span class="label label-warning">Pendiente</span></td>
                </tr>
                 <tr>
                  <td>REG0175</td>
                  <td>Semana 2</td>
                  <td>22-04-2019</td>
                  <td>Apliacacion de las metodologias adecuadas </td>
                  <td><img src="./Assets/img/pdf.jpg" style="width: 5%;"></td>
                  <td><span class="label label-warning">Pendiente</span></td>
                  <td><span class="label label-warning">Pendiente</span></td>
                </tr>
               
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>



        </div> 
        <?php
    include 'Includes/Estructuras/Estudiantes/BotonesMenu.php';
    include 'Includes/Estructuras/Footer.php';
    ?>
</div>

</body>
</html>