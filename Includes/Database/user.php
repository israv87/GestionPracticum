<?php
include 'db.php';

class User extends DB{
    private $p_nombre;
    private $s_nombre;
    private $p_apellido;
    private $m_apellido;
    private $username;
    private $u_rol;
    private $pe_proyecto2;
    private $Actividad;
    private $Act;
    private $Fechafin;
    private $Porcentaje;

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
    public function SetProyectoEstudiante($user){
        $query1 = $this->connect()->prepare('SELECT PrimerNombre,SegundoNombre,apellido_paterno,apellido_materno, NombreProyecto 
        from estudiantes, proyectos, proyecto_estudiante, usuarios 
        where idEstudiante_pe=idestudiante and idproyectos = idProyectos_pe and idEstudiante = idusuario and usuario = :user ');
            $query1->execute(['user' => $user]);
            
            foreach ($query1 as $currentUser1) {
                $this->pe_proyecto2 = $currentUser1['NombreProyecto'];

            }
        }

        public function SetActividadesEstudiante(){
           


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
    public function getPE_Proyecto2(){
        return $this->pe_proyecto2;
    }
    public function getActividad(){
        return $this->Actividad;
    }


}


 




    


?>