<!DOCTYPE html>
<html lang="en">

<head>
    <title>Gestión del Prácticum &mdash; UTPL</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="assets/landpage/css_landpage/bootstrap.min.css">
    <link rel="stylesheet" href="assets/landpage/css_landpage/jquery-ui.css">
    <link rel="stylesheet" href="assets/landpage/css_landpage/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/landpage/css_landpage/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/landpage/css_landpage/owl.theme.default.min.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="assets/landpage/css_landpage/aos.css">
    <link rel="stylesheet" href="assets/landpage/css_landpage/estilos.css">
    <link rel="stylesheet" href="assets/landpage/css_landpage/style.css">

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
                                <li><a href="#programs-section" class="nav-link">Módulos</a></li>
                                <li><a href="#teachers-section" class="nav-link">Beneficios</a></li>
                            </ul>
                        </nav>
                    </div>


                </div>
            </div>

        </header>

        <div class="intro-section" id="Incio">

            <div class="slide-1" style="background-image: url('assets/landpage/images_landpage/hero_1.jpg');" data-stellar-background-ratio="0.5">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-12">
                            <div class="row align-items-center">
                                <div class="col-lg-6 mb-4">
                                    <h1 data-aos="fade-up" data-aos-delay="100">Gestión del Practicum</h1>
                                    <p class="mb-4" data-aos="fade-up" data-aos-delay="200">Plataforma para la automatización de los las gestiones productivas para docentes y estudiantes.</p>
                                    <div class=" row">
                                        <div class="col-6">
                                            <p data-aos="fade-up" data-aos-delay="300"><a href="#" class="btn btn-primary py-3 px-5 btn-pill" id="btn-login-1">Personal UTPL</a></p>

                                        </div>
                                        <div class="col-6">
                                            <p data-aos="fade-up" data-aos-delay="300"><a href="#" class="btn btn-primary py-3 px-5 btn-pill" id="btn-login-1">Empresas Externas</a></p>

                                        </div>


                                    </div>

                                </div>

                                <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="500">
                                    <form action="" method="post" class="form-box">
                                    <?php
                                      if(isset($errorLogin)){
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



        <div class="site-section" id="programs-section">
            <div class="container">
                <div class="row mb-5 justify-content-center">
                    <div class="col-lg-7 text-center" data-aos="fade-up" data-aos-delay="">
                        <h2 class="section-title">Gestión del Prácticum</h2>
                        <p>La Universidad Técnica Particular de Loja pone a disposicion de la comunidad universitária la plataforma para la Gestión del Practicum la cual mejora los procesos que componen las gestiones productivas de las diferentes carrera
                            que oferece.
                        </p>
                    </div>
                </div>
                <div class="row mb-5 align-items-center">
                    <div class="col-lg-7 mb-5" data-aos="fade-up" data-aos-delay="100">
                        <img src="assets/landpage/images_landpage/student.jpg" alt="Image" class="img-fluid">
                    </div>
                    <div class="col-lg-4 ml-auto" data-aos="fade-up" data-aos-delay="200">
                        <h2 class="text-black mb-4">Estudiantes</h2>
                        <p class="mb-4">Los estudiantes matriculados en los diferentes niveles de Gestión Productiva podra hacer uso de la plataforma para cumplir con los siguientes requerimientos:
                        </p>

                        <div class="d-flex align-items-center custom-icon-wrap mb-3">
                            <span class="custom-icon-inner mr-3"><span class="icon icon-graduation-cap"></span></span>
                            <div>
                                <h3 class="m-0">Postular a un proyecto por ciclo</h3>
                            </div>
                        </div>

                        <div class="d-flex align-items-center custom-icon-wrap mb-3">
                            <span class="custom-icon-inner mr-3"><span class="icon icon-graduation-cap"></span></span>
                            <div>
                                <h3 class="m-0">Registrar asistencias</h3>
                            </div>
                        </div>
                        <div class="d-flex align-items-center custom-icon-wrap mb-3">
                            <span class="custom-icon-inner mr-3"><span class="icon icon-graduation-cap"></span></span>
                            <div>
                                <h3 class="m-0">Realizar Informes</h3>
                            </div>
                        </div>
                        <div class="d-flex align-items-center custom-icon-wrap mb-3">
                            <span class="custom-icon-inner mr-3"><span class="icon icon-graduation-cap"></span></span>
                            <div>
                                <h3 class="m-0">Generar documentación</h3>
                            </div>
                        </div>

                        <div class="d-flex align-items-center custom-icon-wrap">
                            <span class="custom-icon-inner mr-3"><span class="icon icon-university"></span></span>
                            <div>
                                <h3 class="m-0">Reportar eventualidades</h3>
                            </div>
                        </div>



                    </div>
                </div>

                <div class="row mb-5 align-items-center">
                    <div class="col-lg-7 mb-5 order-1 order-lg-2" data-aos="fade-up" data-aos-delay="100">
                        <img src="assets/landpage/images_landpage/undraw_teaching.svg" alt="Image" class="img-fluid">
                    </div>
                    <div class="col-lg-4 mr-auto order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
                        <h2 class="text-black mb-4">Strive for Excellent</h2>
                        <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem maxime nam porro possimus fugiat quo molestiae illo.</p>

                        <div class="d-flex align-items-center custom-icon-wrap mb-3">
                            <span class="custom-icon-inner mr-3"><span class="icon icon-graduation-cap"></span></span>
                            <div>
                                <h3 class="m-0">22,931 Yearly Graduates</h3>
                            </div>
                        </div>

                        <div class="d-flex align-items-center custom-icon-wrap">
                            <span class="custom-icon-inner mr-3"><span class="icon icon-university"></span></span>
                            <div>
                                <h3 class="m-0">150 Universities Worldwide</h3>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="row mb-5 align-items-center">
                    <div class="col-lg-7 mb-5" data-aos="fade-up" data-aos-delay="100">
                        <img src="assets/landpage/images_landpage/images/undraw_teacher.svg" alt="Image" class="img-fluid">
                    </div>
                    <div class="col-lg-4 ml-auto" data-aos="fade-up" data-aos-delay="200">
                        <h2 class="text-black mb-4">Education is life</h2>
                        <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem maxime nam porro possimus fugiat quo molestiae illo.</p>

                        <div class="d-flex align-items-center custom-icon-wrap mb-3">
                            <span class="custom-icon-inner mr-3"><span class="icon icon-graduation-cap"></span></span>
                            <div>
                                <h3 class="m-0">22,931 Yearly Graduates</h3>
                            </div>
                        </div>

                        <div class="d-flex align-items-center custom-icon-wrap">
                            <span class="custom-icon-inner mr-3"><span class="icon icon-university"></span></span>
                            <div>
                                <h3 class="m-0">150 Universities Worldwide</h3>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>





        <div class="site-section pb-0">

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
                        <h2 class="section-title">Why Choose Us</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ml-auto align-self-start" data-aos="fade-up" data-aos-delay="100">

                        <div class="p-4 rounded bg-white why-choose-us-box">

                            <div class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
                                <div class="mr-3"><span class="custom-icon-inner"><span class="icon icon-graduation-cap"></span></span>
                                </div>
                                <div>
                                    <h3 class="m-0">22,931 Yearly Graduates</h3>
                                </div>
                            </div>

                            <div class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
                                <div class="mr-3"><span class="custom-icon-inner"><span class="icon icon-university"></span></span>
                                </div>
                                <div>
                                    <h3 class="m-0">150 Universities Worldwide</h3>
                                </div>
                            </div>

                            <div class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
                                <div class="mr-3"><span class="custom-icon-inner"><span class="icon icon-graduation-cap"></span></span>
                                </div>
                                <div>
                                    <h3 class="m-0">Top Professionals in The World</h3>
                                </div>
                            </div>

                            <div class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
                                <div class="mr-3"><span class="custom-icon-inner"><span class="icon icon-university"></span></span>
                                </div>
                                <div>
                                    <h3 class="m-0">Expand Your Knowledge</h3>
                                </div>
                            </div>

                            <div class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
                                <div class="mr-3"><span class="custom-icon-inner"><span class="icon icon-graduation-cap"></span></span>
                                </div>
                                <div>
                                    <h3 class="m-0">Best Online Teaching Assistant Courses</h3>
                                </div>
                            </div>

                            <div class="d-flex align-items-center custom-icon-wrap custom-icon-light">
                                <div class="mr-3"><span class="custom-icon-inner"><span class="icon icon-university"></span></span>
                                </div>
                                <div>
                                    <h3 class="m-0">Best Teachers</h3>
                                </div>
                            </div>

                        </div>


                    </div>
                    <div class="col-lg-7 align-self-end" data-aos="fade-left" data-aos-delay="200">
                        <img src="assets/landpage/images_landpage/person_transparent.png" alt="Image" class="img-fluid">
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

                <div class="row pt-5 mt-5 text-center">
                    <div class="col-md-12">
                        <div class="border-top pt-5">
                            <p>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>
                                    document.write(new Date().getFullYear());
                                </script> All rights reserved
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </p>
                        </div>
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