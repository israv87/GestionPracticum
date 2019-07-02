<div class="logo full-reset all-tittles">
                <i class="visible-xs zmdi zmdi-close pull-left mobile-menu-button" style="line-height: 55px; cursor: pointer; padding: 0 10px; margin-left: 7px;"></i> 
                BIENVENID@
            </div>
<div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset" style="padding: 10px 0; color:#fff;">
                <figure>
                    <img src="assets/imagenes/template/user01.png" alt="Biblioteca" class="img-responsive center-box"
                        style="width:55%;">
                </figure>
                <h4 style="line-height: 20px; cursor: pointer;  margin-left: 1em;">
                    <?php echo $user->getPNombre()?>
                    <?php echo $user->getSNombre()?>
                    <?php echo $user->getPApellido()?>
                    <?php echo $user->getMApellido();?>
                </h4>
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset nav-lateral-list-menu">
            <style type="text/css">a {cursor:pointer;}</style>
                <ul class="list-unstyled">
                    <li><a id="resumen"><i class="zmdi zmdi-home zmdi-hc-fw"></i>&nbsp;&nbsp; Resumen</a></li>
                    <li><a id="asistencia"><i class="zmdi zmdi-balance zmdi-hc-fw"></i>&nbsp;&nbsp; Registro de
                            Asistencia</a></li>
                    <li><a id="informe"><i class="zmdi zmdi-truck zmdi-hc-fw"></i>&nbsp;&nbsp; Informe
                            Bimestral</a></li>
                    <li><a id="compromiso"><i class="zmdi zmdi-bookmark-outline zmdi-hc-fw"></i>&nbsp;&nbsp; Carta
                            de Compromiso</a></li>
                    <li><a id="asignacion"><i class="zmdi zmdi-assignment-account zmdi-hc-fw"></i>&nbsp;&nbsp;
                            Carta de Asignacion</a></li>
                    <li><a id="incidencias"><i class="zmdi zmdi-trending-up zmdi-hc-fw"></i>&nbsp;&nbsp; Reporte
                            de Incidencias</a></li>
                    <li><a id="proyectos"><i class="zmdi zmdi-wrench zmdi-hc-fw"></i>&nbsp;&nbsp; Postulacion a
                            Proyectos</a></li>
                </ul>
            </div>