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
        $query1 = $this->connect()->prepare('SELECT  NombreProyecto from estudiantes, proyectos, proyecto_estudiante, usuarios 
        where  idproyectos = fk_idProyectos_pe and fk_idEstudiante_pe = idestudiante and idEstudiante = idUsuario and usuario = :user ');
            $query1->execute(['user' => $user]);
            
            foreach ($query1 as $currentUser1) {
                $this->pe_proyecto2 = $currentUser1['NombreProyecto'];

            }
        }
         function SetActividadesEstudiante($user,$c=0,$i=0){
            $query2 = $this->connect()->prepare('SELECT Actividad, FechaInicio,FechaFin,Porcentaje
            from estudiantes, proyectos, proyecto_estudiante, usuarios,actividadesproyecto
            where fk_idEstudiante_pe=idestudiante and idproyectos = fk_idProyectos_pe 
            and idEstudiante = idusuario and usuario = :user');
            $query2->execute(['user' => $user]);

        echo '    <table>
        <tr>';
            foreach ($query2 as $currentUser2) {
                $i++;
                $Porcentaje=$currentUser2['Porcentaje'];
                echo '<td>
                <div class="row">
                        <div class="col-sm-12">
                             <div class="clearfix">
                                    <h4><span class="pull-left">'.$currentUser2['Actividad'].'</span></h4><br>
                                    <medium ">Inicia:' .$currentUser2['FechaInicio'].'</medium><br>
                                <medium ">Termina: '.$currentUser2['FechaFin'].'</medium><br>
                            </div>
                            <small class="pull-Leftt">Progreso</small><br>
                            <div class="progress xs">
                                <div class="progress-bar progress-bar-yellow" style="width:'.$Porcentaje.'%;"></div>
                            </div>
                          </div>
                        </div>
                    </td>';                          
                    if($i == 2) { // three items in a row. Edit this to get more or less items on a row
                        echo '</tr><tr ">';
                        $i = 0;
                    }
                $c++;
            }
            echo '    </tr>
        </table>';
           return $c;
            }


            function ContActividadesFaltantes($user,$c=0){
                $query3 = $this->connect()->prepare('SELECT Porcentaje  from estudiantes, proyectos, proyecto_estudiante, usuarios,actividadesproyecto
                where Porcentaje=100 and fk_idEstudiante_pe=idestudiante and idproyectos = fk_idProyectos_pe 
                and idEstudiante = idusuario and usuario = :user' );
                $query3->execute(['user' => $user]);
    
                foreach ($query3 as $currentUser3) {
                    $c++;
                }
               echo $c;
                }  
                
                function ContActividadesCompletadas($user,$c=0){
                    $query4 = $this->connect()->prepare('SELECT Porcentaje from estudiantes, proyectos, proyecto_estudiante, usuarios,actividadesproyecto
                    where fk_idEstudiante_pe=idestudiante and idproyectos = fk_idProyectos_pe 
                    and idEstudiante = idusuario and usuario = :user');
                    $query4->execute(['user' => $user]);
        
                    foreach ($query4 as $currentUser4) {
                        $c++;
                    }
                    echo $c;
                    }   

                    function SetGP($user,$c=0){
                        $query4 = $this->connect()->prepare('SELECT Porcentaje from estudiantes, proyectos, proyecto_estudiante, usuarios,actividadesproyecto
                        where fk_idEstudiante_pe=idestudiante and idproyectos = fk_idProyectos_pe 
                        and idEstudiante = idusuario and usuario = :user');
                        $query4->execute(['user' => $user]);
            
                        foreach ($query4 as $currentUser4) {
                            $c++;
                        }
                        echo $c;
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
    return $this->Actividad ;
    }
    public function getAct(){
        return $this->c; 
        }


}



?>