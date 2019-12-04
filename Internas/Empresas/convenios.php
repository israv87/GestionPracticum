<!-- 
* Copyright 2016 Carlos Eduardo Alfaro Orellana
-->
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Empresas</title>
    <?php
include '../../includes/estructuras/links.html';
?>




    
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
                    <img src="../../assets/imagenes/template/institution.png" alt="Biblioteca" class="img-responsive center-box" style="width:55%;">
                </figure>
                <p class="text-center" style="padding-top: 15px;">Empresas</p>
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset nav-lateral-list-menu">
                <ul class="list-unstyled">
                <li><a href="postulación.php"><i class=></i>&nbsp;&nbsp; Postulación</a></li>
                <li><a href="estadodeproyectos.php"><i class=></i>&nbsp;&nbsp; Estado de Proyectos</a></li>
                <li><a href="#"><i class=></i>&nbsp;&nbsp; Convenios</a></li>
                
            </ul>
            </div>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">
        <nav class="navbar-user-top full-reset">
            <ul class="list-unstyled full-reset">
                <figure>
                   <img src="../../assets/imagenes/template/institution.png" alt="user-picture" class="img-responsive img-circle center-box">
                </figure>
                <li style="color:#fff; cursor:default;">
                    <span class="all-tittles">Convenios</span>
                </li>
                <li  class="tooltips-general exit-system-button" data-href="index.php" data-placement="bottom" title="Salir del sistema">
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
</body>
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
          </div>
          </div>
        

