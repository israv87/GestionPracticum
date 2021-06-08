<?php
include_once 'includes/Database/user.php';
include_once 'includes/Database/user_session.php';


$userSession = new UserSession();
$user = new User();


if(isset($_SESSION['user'])){
    //echo "hay sesion";
    $user->setRolUsr($userSession->getCurrentUser());
    if($user->getRol()==1){
        $user->setEstudiante($userSession->getCurrentUser());
        include_once 'Internas/Estudiantes.php';
    }else if($user->getRol()==2){
        $user->setTutorExterno($userForm);
        include_once 'Internas/TutorExterno.php';
    }else if($user->getRol()==3){
        $user->setTutorAcademico($userForm);
        include_once 'Internas/TutorAcademico.php';
    }else if($user->getRol()==4){
        include_once 'Internas/CoordinadorTitulacion.php';
    }else if($user->getRol()==5){
        include_once 'Internas/Admin.php';
    }
    
   

}else if(isset($_POST['username']) && isset($_POST['password'])){
    
    $userForm = $_POST['username'];
    $passForm = $_POST['password'];

    $user = new User();
    if($user->userExists($userForm, $passForm)){
        //echo "Existe el usuario";
        $userSession->setCurrentUser($userForm); 
        $user->setRolUsr($userForm);
        if($user->getRol()==1){
            $user->setEstudiante($userForm);
            include_once 'Internas/Estudiantes.php';
        }else if($user->getRol()==2){
            $user->setTutorExterno($userForm);
            include_once 'Internas/TutorExterno.php';
        }else if($user->getRol()==3){
            $user->setTutorAcademico($userForm);
            include_once 'Internas/TutorAcademico.php';
        }else if($user->getRol()==4){
            include_once 'Internas/CoordinadorTitulacion.php';
        }else if($user->getRol()==5){
            include_once 'Internas/Admin.php';
        }

    }else{
        //echo "No existe el usuario";
        $errorLogin = "Nombre de usuario y/o password incorrecto";
        include_once 'Internas/login.php';
       
    }
}else{
    //echo "login";
    include_once 'Internas/login.php';
   
}



?>