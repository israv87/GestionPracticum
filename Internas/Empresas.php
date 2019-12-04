
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
            $("#estadodeproyectos, #convenios").hide();
        });
        $("#estado_pro").click(function() {
            $("#estadodeproyectos").show();
            $("#postulacion, #convenios").hide();
        
    });
    $("#convenio").click(function() {
            $("#convenios").show();
            $("#postulacion, #estadopro").hide();
        
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
                <li><a href="Empresas/postulación.php"><i ></i>&nbsp;&nbsp; Postulación</a></li>
                <li><a href="Empresas/Estadodeproyectos.php"><i></i>&nbsp;&nbsp; Estado de proyecto</a></li>
                <li><a href="Empresas/convenios.php"><i></i>&nbsp;&nbsp; Convenios</a></li>
                </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="content-page-container full-reset custom-scroll-containers">
    <nav class="navbar-user-top full-reset">
      <?php
      include_once '../Includes/Estructuras/Estudiantes/MenuEstudiantes.php';
      ?>
    </nav>
    <div id="postulacion">
    <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Empresas<small>Postulación</small></h1>
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
                                            <h5>Postulación - Empresas</h5>
                                        </td>

                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        </div>
</div>
                        <div class="col-sm-6">
                            <!-- /.box-header -->
                            <div class="box-body">
                                <form role="form">
                                    <!-- text input -->
                                    <div class="form-group">
                                    <div class="row">
<div class="col-xs-12 col-sm-6">
<label>Nombre Proyecto</label>
 <input type="text" class="form-control" placeholder="">
                                        <label>Descripción</label>
                                        <input type="text" class="form-control" placeholder="">
                                        <label>Periodo</label>
                                        <select class= "form-control">
                                        <option>Oct2019/Feb2020</option>
                                            <option>Abril2020/Agosto2020</option>
                                        </select>
                                        <div><label>Encargado</label>
 <input type="text" class="form-control" placeholder=""><input type="reset" value="Editar">
</div>
<div><label>Email</label>
 <input type="text" class="form-control" placeholder=""><input type="reset" value="Editar">
 


</div>
</div>
<div class="col-xs-12 col-sm-6">
<div><label>Télefono</label>
 <input type="text" class="form-control" placeholder=""><input type="reset" value="Editar"></div>
<label>Estudiantes Requeridos</label>
                                        <select class= "form-control">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
</select>
<label>Ubicación</label>
 <input type="text" class="form-control" placeholder="">
 <label>Cronográma</label>
 <input type="file" name="archivo" title="Cronograma" id="importData" accept=".xls,.xlsx" />
 <label>Información</label>
 <input type="file" name="archivo" title="Cronograma" id="importData" accept=".docx" />
 <label>Lineamientos</label>
 <input type="file" name="archivo" title="Cronograma" id="importData" accept=".pdf" />
</div>
<div class="col-xs-12 col-sm-6">
<label>Área</label>
                                        <select class= "form-control">
                                        <option>Técnica</option>
                                        
</select>
<label>Departamento</label>
                                        <select class= "form-control">
                                        <option>Computación</option>
                                        
</select>

<button type="button" class="btn btn-success">Guardar</button>
	</div>
          </div>
</div>
<div id="estadodeproyectos">
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
                        </div>
</div>
                    <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>


            <th>Proyecto</th>
            <th>Convenio </th>

            <th>Dependencia</th>
            <th>Encargado</th>
            <th>Número de estudiantes</th>
            <th>Estado</th>
        </tr>
        <tr>
            <td>Proyecto ASCENDERE </td>
            <td>Vigente </td>
            <td>Dirección de Innovación, Formación y Evaluación Docente </td>
            <td> Maria Isabel Loaiza </td>
            <td> 2 </td>
          <td>  <span class="label label-success">Validado</span> <td/>


</tr>
    </thead>
    <tbody>

        </tfoot>
        </table>
    </div>
</div>
<div id="convenios">
<div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Empresas<small>Convenios</small></h1>
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
                                            <h5>Convenios - Empresas</h5>
                                        </td>

                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        </div>
</div>
<div class="col-sm-6">
                            <!-- /.box-header -->
                            <div class="box-body">
                                <form role="form">
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>Nombre de la Empresa</label>
                                        <input type="text" class="form-control" placeholder="Empresa ...">
                                        <label>Nombre de la Institución</label>
                                        <input type="text" class="form-control" placeholder="Institución ...">
                                        <label>Dirección</label>
                                        <input type="text" class="form-control" placeholder="Dirección ...">
                                        <label>Tipo</label>
                                        <select class= "form-control">
                                        <option>PYME</option>
                                            <option>Grnd</option>
                                        </select>
                                        <label>Área especialización</label>
                                        <input type="text" class="form-control" placeholder="Áreas ...">
                                        <label>Ha tenido convenios</label>
                                        <select class= "form-control">
                                        <option>Si</option>
                                            <option>No</option>
                                        </select>
                                        <label>Correo</label>
                                        <input type="text" class="form-control" placeholder="Correo ...">
                                        <label>Página Web</label>
                                        <input type="text" class="form-control" placeholder="Página web ...">
                                        <label>Télefono</label>
                                        <input type="text" class="form-control" placeholder="Télefono ...">
                                        <div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="Gerente">
  <label class="form-check-label" for="Gerente">
    Gerente
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="Encargado">
  <label class="form-check-label" for="Encargado">
    Encargado 
  </label>
  <button type="Submit" class="btn btn-block btn-default bg-blue" >Solicitar</button>
</div>
   </div>
   <?php
    include '../../Includes/Estructuras/Estudiantes/BotonesMenu.php';
    include '../../Includes/Estructuras/Footer.php';
    ?>
    </div>
    <?php
                                                        include '../assets/clock/script_clock.html';
                                                        ?>
    <?php 
    include_once '../../Includes/Estructuras/ScriptsFooter.php';
    ?>
</body>
</html>