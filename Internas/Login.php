
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Inicio de sesión</title>
 <?php
 require 'includes/EstructurasHTML/links.php';
 ?>  
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