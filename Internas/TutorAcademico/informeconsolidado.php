<!-- 
* Copyright 2016 Carlos Eduardo Alfaro Orellana
-->
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Inicio</title>













</head>
<body>
    <div class="navbar-lateral full-reset">
        <div class="visible-xs font-movile-menu mobile-menu-button"></div>
        <div class="full-reset container-menu-movile nav-lateral-scroll">
            <div class="logo full-reset all-tittles">
                <i class="visible-xs zmdi zmdi-close pull-left mobile-menu-button" style="line-height: 55px; cursor: pointer; padding: 0 10px; margin-left: 7px;"></i> 
                Tutor Académico
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset" style="padding: 10px 0; color:#fff;">
                <figure>
                    <img src="../../assets/img/user.png" alt="Biblioteca" class="img-responsive center-box" style="width:55%;">
                </figure>
                <p class="text-center" style="padding-top: 15px;">Tutor Academico</p>
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset nav-lateral-list-menu">
                <ul class="list-unstyled">
                    <li><a href="../TutorAcademico.php"><i class=></i>&nbsp;&nbsp; Resumen</a></li>
                    <li>
                    <li>
                        
                            <li><a href="portafolio.php"><i class=></i>&nbsp;&nbsp; Portafolio</a></li>
                            <li><a href="#"><i class=></i>&nbsp;&nbsp; Informe consolidado</a></li>
                            <li><a href="calificarasistencia.php"><i class=></i>&nbsp;&nbsp; Calificar Asistencia</a></li>
                        
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">
        <nav class="navbar-user-top full-reset">
            <ul class="list-unstyled full-reset">
                <figure>
                   <img src="../../assets/img/user01.png" alt="user-picture" class="img-responsive img-circle center-box">
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
                            
                            <td class="align-middle"><img src="assets/img/utpl_logo1.png" style="width: 90%;" ></td>
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