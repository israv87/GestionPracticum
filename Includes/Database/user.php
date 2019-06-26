<?php
include 'db.php';

class User extends DB{
    private $p_nombre;
    private $s_nombre;
    private $p_apellido;
    private $m_apellido;
    private $username;
    private $u_rol;


    public function userExists($user, $pass){
        $md5pass = md5($pass);
        $query = $this->connect()->prepare('SELECT * FROM usuarios WHERE usuario = :user AND  password = :pass');
        $query->execute(['user' => $user, 'pass' => $md5pass]);

        if($query->rowCount()){
            return true;
        }else{
            return false;
        }
    }

    public function setUser($user){
        $query = $this->connect()->prepare('SELECT * FROM usuarios WHERE usuario = :user');
        $query->execute(['user' => $user]);
        
        foreach ($query as $currentUser) {
            $this->p_nombre = $currentUser['PrimerNombre'];
            $this->s_nombre = $currentUser['SegundoNombre'];
            $this->p_apellido = $currentUser['apellido_paterno'];
            $this->m_apellido = $currentUser['apellido_materno'];
            $this->username = $currentUser['usuario'];
            $this->u_rol = $currentUser['idRol'];
        }
        
    }

    


    public function getPNombre(){
        return $this->p_nombre;
    }
    public function getSNombre(){
        return $this->s_nombre;
    }
    public function getPApellido(){
        return $this->p_apellido;
    }
    public function getMApellido(){
        return $this->m_apellido;
    }
    public function getRol(){
        return $this->u_rol;
    }
}

?>