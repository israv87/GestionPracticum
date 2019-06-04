<?php 
 

	require 'conexion.php';

	$user=$_POST['user'];
	$pass=$_POST['pass'];

	if (empty($user) && empty($pass)) {
		echo "usuario y contraseña vacio";
	}else{

	$consulta = "SELECT * FROM usuarios WHERE Usuario='".$user."' AND contrasena='".$pass."'";
	$respuesta = mysqli_query($con, $consulta);
		if( $fila = mysqli_fetch_row($respuesta) ){
			session_start();
			$_SESSION['usuario'] = $user;
			$_SESSION['Rol'] = $fila[6];

			if ($_SESSION['Rol']==1) {
			header('Location: ../Internas/admin.php');
			} else if ($_SESSION['Rol']==2)  {
				header('Location: ../Internas/cordinadorTitulacion.php');
			}
			else if ($_SESSION['Rol']==3)  {
				header('Location: ../Internas/TutorAcademico.php');
			}
			else if ($_SESSION['Rol']==4)  {
				header('Location: ../Internas/TutorExterno.php');
			}
			else if ($_SESSION['Rol']==5)  {
				header('Location: ../Internas/Estudiantes.php');
			}
		}
	}
?>
<script>
	alert('Los datos ingresados son incorrectos.')
	location.href = "../index.php";
</script>
<?php
mysql_query ($consulta);
?> 