<!DOCTYPE html>
<html lang="en">

<head>
  <title>Gestión del Prácticum &mdash; UTPL</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">


  <link rel="stylesheet" href="assets/landpage/css_landpage/bootstrap.min.css">
  <link rel="stylesheet" href="assets/landpage/css_landpage/jquery-ui.css">
  <link rel="stylesheet" href="assets/landpage/css_landpage/owl.carousel.min.css">
  <link rel="stylesheet" href="assets/landpage/css_landpage/owl.theme.default.min.css">
  <link rel="stylesheet" href="assets/landpage/css_landpage/owl.theme.default.min.css">

  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="assets/landpage/css_landpage/aos.css">
  <link rel="stylesheet" href="assets/landpage/css_landpage/estilos.css">
  <link rel="stylesheet" href="assets/landpage/css_landpage/style.css">
  <script src="https://kit.fontawesome.com/d1d2c7ccb4.js" crossorigin="anonymous"></script>
</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>


    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

      <div class="container-fluid">
        <div class="d-flex align-items-center">
          <div class="site-logo mr-auto w-25">
            <a href="index.html"><img src="assets/landpage/images_landpage/logo.png" id="img-logo1"></a>
          </div>

          <div class="mx-auto text-center">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mx-auto d-none d-lg-block  m-0 p-0">
                <li><a href="#Inicio" class="nav-link">Iniciar</a></li>
                <li><a href="#modulos" class="nav-link">Módulos</a></li>
                <li><a href="#convenio" class="nav-link">Convenios</a></li>
              </ul>
            </nav>
          </div>


        </div>
      </div>

    </header>

    <div class="intro-section" id="Incio">

      <div class="slide-1" style="background-image: url('assets/landpage/images_landpage/utpl.jpeg');" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-12">
              <div class="row align-items-center">
                <div class="col-lg-6 mb-4">
                  <h1 data-aos="fade-up" data-aos-delay="100">Gestión del Practicum</h1>
                  <p class="mb-4" data-aos="fade-up" data-aos-delay="200">Plataforma para la automatización de los las gestiones productivas para docentes y estudiantes.</p>
                  <div class=" row">
                    
                  


                  </div>

                </div>

                <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="500">
                  <form action="" method="post" class="form-box">
                    <?php
                    if (isset($errorLogin)) {
                      echo $errorLogin;
                    }
                    ?>
                    <h3 class="h4 text-black mb-4">Formulario de ingreso</h3>
                    <div class="form-group">
                      <input type="text" id="user" name="username" class="form-control" placeholder="Usuario" required="" maxlength="70">
                    </div>
                    <div class="form-group">
                      <input type="password" id="pass" name="password" class="form-control" placeholder="Contraseña" required="" maxlength="70">
                    </div>

                    <div class="form-group">
                      <input type="submit" class="btn btn-primary btn-pill " id="btn-login-1" value="Ingresar">
                    </div>
                  </form>

                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>



    <div class="site-section" id="modulos">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-lg-7 text-center" data-aos="fade-up" data-aos-delay="">
            <h1 style="color:#ea8a00">Gestión del Prácticum</h1>
            <p>La Universidad Técnica Particular de Loja pone a disposicion de la comunidad universitária la plataforma para la Gestión del Practicum la cual mejora los procesos que componen las gestiones productivas de las diferentes carreras.
            </p>
          </div>
        </div>

        <div class="row mb-5 align-items-center">
          <div class="col-lg-6 mb-5 order-1 order-lg-2" data-aos="fade-up" data-aos-delay="200">
            <img src="assets/landpage/images_landpage/company.png" style="width:130%;" alt="Image">
          </div>
          <div class="col-lg-6 mr-auto order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
            <h2 style="color:#ea8a00">Empresas</h2>
            <p class="mb-4" style="text-align: justify">La UTPL ofrece a las empresas externas la posibilidad de trabajar en proyectos de vinculación donde los estudiantes
              puedan poner en practica los conocimientos aprendidos.<br>
              Las empresas interesadas podrán: </p>

            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"> <i class="fas fa-file-contract" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Solicitar convenios con la UTPL</h3>
              </div>
            </div>

            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"> <i class="fas fa-project-diagram" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Proponer proyectos de vinculación</h3>
              </div>
            </div>

            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"> <i class="far fa-id-badge" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Establecer un perfil deconocimientos que estudiante debe tener.</h3>
              </div>
            </div>
            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"> <i class="far fa-list-alt" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Subir cronogramas, lineamientos y evidencias.</h3>
              </div>
            </div>

          </div>
        </div>

        <div class="row mb-5 align-items-center">
          <div class="col-lg-7 mb-5 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="100">
            <img src="assets/landpage/images_landpage/student.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 ml-auto order-1 order-lg-2" data-aos="fade-up" data-aos-delay="200">
            <h2 style="color:#ea8a00">Estudiantes</h2>
            <p class="mb-4 " style="text-align: justify">Los estudiantes matriculados en los diferentes niveles de Gestión Productiva podra hacer uso de la plataforma para cumplir con los siguientes requerimientos:
            </p>

            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0">
                  <i class="far fa-check-square" style="font-size:1.5em; color:#ea7f00"></i>
                  &emsp;Postular a un proyecto por ciclo</h3>
              </div>
            </div>

            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"> <i class="far fa-list-alt" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Registrar asistencias</h3>
              </div>
            </div>
            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"><i class="far fa-file-alt" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Realizar Informes</h3>
              </div>
            </div>
            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"> <i class="far fa-folder-open" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Generar documentación</h3>
              </div>
            </div>

            <div class="d-flex align-items-center custom-icon-wrap">

              <div>
                <h3 class="m-0"><i class="fas fa-exclamation" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Reportar eventualidades</h3>
              </div>
            </div>
          </div>
        </div>




        <div class="row mb-5 align-items-center">
          <div class="col-lg-7 mb-5 order-1 order-lg-2" data-aos="fade-up" data-aos-delay="100">
            <img src="assets/landpage/images_landpage/undraw_teacher.svg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 ml-auto order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
            <h2 style="color:#ea8a00">Tutores Externos</h2>
            <p class="mb-4 " style="text-align: justify">Es el profesional de la Universidad o de las instituciones en las cuales los estudiantes realizan prácticas pre profesionales. Cumple las siguientes funciones:
            </p>

            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0">
                  <i class="far fa-check-square" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Validar los registros de actividades y asistencias.</h3>
              </div>
            </div>

            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"> <i class="fas fa-list-ol" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Generar nuevas actividades.</h3>
              </div>
            </div>
            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"><i class="far fa-star" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Evaluar al estudiante.</h3>
              </div>
            </div>
            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"> <i class="fas fa-exclamation-circle" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Reportar eventualidades.</h3>
              </div>
            </div>
          </div>
        </div>





        <div class="row mb-5 align-items-center">
          <div class="col-lg-7 mb-5 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="100">
            <img src="assets/landpage/images_landpage/undraw_teaching.svg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-5 ml-auto order-1 order-lg-2" data-aos="fade-up" data-aos-delay="200">
            <h2 style="color:#ea8a00">Tutores Académicos</h2>
            <p class="mb-4 " style="text-align: justify">Es el profesional de la Universidad o de las instituciones en las cuales los estudiantes realizan prácticas pre profesionales. Cumple las siguientes funciones:
            </p>

            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0">
                  <i class="far fa-check-square" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Validar los registros de actividades y asistencias.</h3>
              </div>
            </div>

            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"> <i class="fas fa-list-ol" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Generar nuevas actividades.</h3>
              </div>
            </div>
            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"><i class="far fa-star" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Evaluar al estudiante.</h3>
              </div>
            </div>
            <div class="d-flex align-items-center custom-icon-wrap mb-3">

              <div>
                <h3 class="m-0"> <i class="fas fa-exclamation-circle" style="font-size:1.5em; color:#ea7f00"></i>&emsp;Reportar eventualidades.</h3>
              </div>
            </div>
          </div>
        </div>









      </div>
    </div>





    <div class="site-section pb-0" id="convenio">

      <div class="future-blobs">
        <div class="blob_2">
          <img src="assets/landpage/images_landpage/blob_2.svg" alt="Image">
        </div>
        <div class="blob_1">
          <img src="assets/landpage/images_landpage/blob_1.svg" alt="Image">
        </div>
      </div>
      <div class="container">
        <div class="row mb-5 justify-content-center" data-aos="fade-up" data-aos-delay="">
          <div class="col-lg-7 text-center">
            <h2 class="section-title">Trabaje con nosotros</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6 ml-auto align-self-start" data-aos="fade-up" data-aos-delay="100">

            <div class="p-4 rounded bg-white why-choose-us-box">
              <form role="form" action="post">
                <div class="form-group">
                  <div class="row">

                    <div class="col-lg 6">

                      <label>Nombre de la Empresa</label>
                      <input type="text" class="form-control" placeholder="Empresa ...">
                      <label>Nombre de la Institución</label>
                      <input type="text" class="form-control" placeholder="Institución ...">
                      <label>Dirección</label>
                      <input type="text" class="form-control" placeholder="Dirección ...">
                      <label>Tipo</label>
                      <select class="form-control">
                        <option>PYME</option>
                        <option>Grnd</option>
                      </select>
                      <label>Área especialización</label>
                      <input type="text" class="form-control" placeholder="Áreas ...">

                    </div>
                    <div class="col-lg 6">
                      <label>Ha tenido convenios</label>
                      <select class="form-control">
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
                      <label></label>
                      </div>
                      <button type="Submit" class="btn btn-block btn-default bg-blue" id="btn-login-1">Solicitar</button>
                    </div>
                  </div>
                </div>


            </div>


          </div>
          <div class="col-lg-6 align-self-end" data-aos="fade-left" data-aos-delay="200">
            <img src="assets/landpage/images_landpage/campus.jpg" alt="Image" class="img-fluid">
          </div>
        </div>
      </div>
    </div>






    <footer class="footer-section bg-white">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <h3>Universidad Técnica Particular de Loja</h3>
            <p>San cayetano.</p>
          </div>




        </div>

     
      </div>
    </footer>



  </div>
  <!-- .site-wrap -->

  <script src="assets/landpage/js_landpage/jquery-3.3.1.min.js"></script>
  <script src="assets/landpage/js_landpage/jquery-migrate-3.0.1.min.js"></script>
  <script src="assets/landpage/js_landpage/jquery-ui.js"></script>
  <script src="assets/landpage/js_landpage/popper.min.js"></script>
  <script src="assets/landpage/js_landpage/bootstrap.min.js"></script>
  <script src="assets/landpage/js_landpage/owl.carousel.min.js"></script>
  <script src="assets/landpage/js_landpage/jquery.stellar.min.js"></script>
  <script src="assets/landpage/js_landpage/jquery.countdown.min.js"></script>
  <script src="assets/landpage/js_landpage/bootstrap-datepicker.min.js"></script>
  <script src="assets/landpage/js_landpage/jquery.easing.1.3.js"></script>
  <script src="assets/landpage/js_landpage/aos.js"></script>
  <script src="assets/landpage/js_landpage/jquery.fancybox.min.js"></script>
  <script src="assets/landpage/js_landpage/jquery.sticky.js"></script>


  <script src="assets/landpage/js_landpage/main.js"></script>

</body>

</html>