
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Inicio de sesión</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/icons/book.ico" />
    <script src="js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="css/sweet-alert.css">
    <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="Assets/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="Assets/Admin/css/AdminLTE.min.css">
    <link rel="stylesheet" href="Assets/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="Assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="Assets/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="Assets/bootstrap-daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="Assets/plugins/timepicker/bootstrap-timepicker.min.css">
    <link rel="stylesheet" href="Assets/Admin/css/skins/_all-skins.min.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/main.js"></script>
</head>
<body>
  <div class="login-container full-cover-background">
    <div class="form-container">
        <p class="text-center" style="margin-top: 17px;">
           <i class="zmdi zmdi-account-circle zmdi-hc-5x"></i>
       </p>
       <h4 class="text-center all-tittles" style="margin-bottom: 30px;">inicia sesión en tu cuenta</h4>
       <form action="scripts/login.php" method="POST">
        <?php
            if(isset($errorLogin)){
                echo $errorLogin;
            }
        ?>
        
            <div class="group-material-login">
              <input type="text" id="user" name="user" class="material-login-control" required="" maxlength="70">
              <span class="highlight-login"></span>
              <span class="bar-login"></span>
              <label><i class="zmdi zmdi-account"></i> &nbsp; Usuario</label>
            </div><br>
            <div class="group-material-login">
              <input  type="password" id="pass" name="pass"  class="material-login-control" required="" maxlength="70">
              <span class="highlight-login"></span>
              <span class="bar-login"></span>
              <label><i class="zmdi zmdi-lock"></i> &nbsp; Contraseña</label>
            </div>
            <table>
              <tr>
                <td>
                  <a href="Internas/Empresas.php">
                    <button type="button"  class="btn btn-block btn-default bg-yellow">Empresas Externas</button>
                  </a>
                  
                </td>
                <td>
                  <button class="btn-login" type="submit">Ingresar al sistema &nbsp; <i class="zmdi zmdi-arrow-right"></i></button>
                </td>
              </tr>
            </table>
            
            
        </form>
    </div>   
  </div>
</body>
</html>