<?php
include 'db.php';

class User extends DB
{
    private $id_est;
    private $cedula;
    private $p_nombre;
    private $s_nombre;
    private $p_apellido;
    private $m_apellido;
    private $email;
    private $email2;
    private $Nivel_GP;
    private $paralelo_GP;
    private $ciclo_act;
    private $username;
    private $u_rol;
    private $proyecto;
    private $departamento;
    private $area;
    
    
    private $TENAME;
    private $s_nombre_tutor;
    private $p_apellido_tutor;
    private $m_apellido_tutor;
    
    private $codReg;

    private $pe_proyecto2;
    private $Actividad;
    private $Validacion;
    private $Validado;
    private $Calificacion;
    private $Calificado;
    private $Institucion;
    private $NGp;
    private $NGppz;
    private $NopPlaza;
    private $Estado_pry;
    private $ocupado;
    private $disponible;
    private $botonOD;
    private $stgp2;
    private $ciclo2;
    private $paralelo2;
    private $nivel2;
    private $idRegistroPDF;
    private $idIncidenciaPDF;
    private $dependencia;


    

    public function userExists($user, $pass)
    {
        $md5pass = md5($pass);
        $query = $this->connect()->prepare('SELECT * FROM usuarios WHERE usuario = :user AND  password = :pass');
        $query->execute(['user' => $user, 'pass' => $md5pass]);

        if ($query->rowCount()) {
            return true;
        } else {
            return false;
        }
    }

    public function setRolUsr($user)
    {
        $query = $this->connect()->prepare("SELECT * FROM usuarios WHERE usuario = :user");
        $query->execute(['user' => $user]);
        foreach ($query as $currentUser) {
            $this->u_rol = $currentUser['Rol'];
        }
    }

    public function setEstudiante($user)
    {
        $query = $this->connect()->prepare("SELECT * from estudiantes e, usuarios u where e.idUsuario = u.idUsuario and u.usuario =:user");
        $query->execute(['user' => $user]);

        foreach ($query as $currentUser) {
            $this->id_est = $currentUser['idEstudiante'];
            $this->cedula = $currentUser['cedula'];
            $this->p_nombre = $currentUser['primerNombre'];
            $this->s_nombre = $currentUser['segundoNombre'];
            $this->p_apellido = $currentUser['apellidoPaterno'];
            $this->m_apellido = $currentUser['apellidoMaterno'];
            $this->email = $currentUser['email'];
            $this->email2 = $currentUser['email2'];
            $this->Nivel_GP = $currentUser['nivelGp'];
            $this->paralelo_GP = $currentUser['paralelo'];
            $this->ciclo_act = $currentUser['ciclo'];
        }
    }
    public function setTutorExterno($user)
    {
        $query = $this->connect()->prepare("SELECT * from tutor_externo t, usuarios u where t.idUsuario = u.idUsuario and u.usuario =:user");
        $query->execute(['user' => $user]);

        foreach ($query as $currentUser) {
            $this->id_est = $currentUser['idTutorExterno'];
            $this->p_nombre = $currentUser['primerNombre'];
            $this->s_nombre = $currentUser['segundoNombre'];
            $this->p_apellido = $currentUser['apellidoPaterno'];
            $this->m_apellido = $currentUser['apellidoMaterno'];
            $this->email = $currentUser['email'];
            $this->cedula = $currentUser['telefono'];
            $this->Nivel_GP = $currentUser['idDependencia'];
            $this->paralelo_GP = $currentUser['idUsuario'];
        }
    }
    public function setTutorAcademico($user)
    {
        $query = $this->connect()->prepare("SELECT * from tutor_academico t, usuarios u where t.idUsuario = u.idUsuario and u.usuario =:user");
        $query->execute(['user' => $user]);

        foreach ($query as $currentUser) {
            $this->id_est = $currentUser['idTutorAcademico'];
            $this->cedula = $currentUser['cedula'];
            $this->p_nombre = $currentUser['pNombre'];
            $this->s_nombre = $currentUser['sNombre'];
            $this->p_apellido = $currentUser['aPaterno'];
            $this->m_apellido = $currentUser['aMaterno'];
            $this->email = $currentUser['email'];
            $this->Nivel_GP = $currentUser['idDependencia'];
            $this->paralelo_GP = $currentUser['idUsuario'];
        }
    }

    public function setDatosProyecto($user)
    {
        $query = $this->connect()->prepare(" SELECT nombreProyecto ,departamento, Area_utpl 
        FROM asignacion_proyecto a, estudiantes e, proyectos p, usuarios u, dependencias d
        WHERE a.idProyectos=p.idProyectos AND p.idDependencia = d.idDependencia AND a.idEstudiante = e.idEstudiante 
        AND e.idUsuario = u.idUsuario AND u.usuario=:user");
        $query->execute(['user' => $user]);

        foreach ($query as $currentUser) {
            $this->proyecto = $currentUser['nombreProyecto'];
            $this->departamento = $currentUser['departamento'];
            $this->area = $currentUser['Area_utpl'];
        }
    }
    

    function SetActividadesEstudiante($user, $c = 0, $i = 0)
    {
        $query2 = $this->connect()->prepare('SELECT * from actividadesproyecto a, proyectos p, asignacion_proyecto g, estudiantes e, usuarios u
        where a.idProyectos = p.idProyectos and g.idProyectos = p.idProyectos and g.idEstudiante = e.idEstudiante 
        and e.idUsuario = u.idUsuario and usuario =:user');
        $query2->execute(['user' => $user]);

        echo '    <div class="box">
        <div class="box-body">
          <table class="table table-bordered">
          <tr>
          <th style="width: 10px">#</th>
          <th>Actividad</th>
          <th>Fecha de Inicio</th>
          <th>Fecha de Finalización</th>
          <th>Progreso</th>
          <th style="width: 40px">%</th>
        </tr>';
        foreach ($query2 as $currentUser2) {
            $Porcentaje = $currentUser2['Porcentaje'];
            echo '
            
              <tr>
              <td>'.$currentUser2['idActPry'].'</td>
              <td>'.$currentUser2['Actividad'].'</td>
              <td>'.$currentUser2['FechaInicio'].'</td>
              <td>'.$currentUser2['FechaFin'].'</td>
              <td>
                  <div class="progress progress-xs">
                      <div class="progress-bar progress-bar-primary"
                          style="width: ' . $Porcentaje . '%"></div>
                  </div>
              </td>
              <td><span class="badge bg-red">'. $Porcentaje .'%</span></td>
          </tr>';
            
            $c++;
        }
        echo '   </table>
        </div>
        <!-- /.box-body -->
      </div>';
        return $c;
    }


    public function ContActividadesFaltantes($user, $c = 0)
    {
        $query3 = $this->connect()->prepare('SELECT Porcentaje from actividadesproyecto a, proyectos p, asignacion_proyecto g, estudiantes e, usuarios u
        where Porcentaje != 100 and  a.idProyectos = p.idProyectos and g.idProyectos = p.idProyectos and g.idEstudiante = e.idEstudiante 
        and e.idUsuario = u.idUsuario and usuario  = :user');
        $query3->execute(['user' => $user]);
        
        foreach ($query3 as $currentUser3) {
            $c++;
        }
        echo $c;
    }

    public function ContActividadesCompletadas($user, $c = 0)
    {
        $query4 = $this->connect()->prepare('SELECT Porcentaje from actividadesproyecto a, proyectos p, asignacion_proyecto g, estudiantes e, usuarios u
        where Porcentaje = 100 and  a.idProyectos = p.idProyectos and g.idProyectos = p.idProyectos and g.idEstudiante = e.idEstudiante 
        and e.idUsuario = u.idUsuario and usuario  = :user');
        $query4->execute(['user' => $user]);

        foreach ($query4 as $currentUser4) {
            $c++;
        }
        echo $c;
    }

    
    public function RegistrosEntregados($user)
    {
        $query8 = $this->connect()->prepare('SELECT * from registro_asistencias r, estudiantes e, usuarios u where
        r.idEstudiante = e.idEstudiante and e.idUsuario = u.idUsuario and u.usuario  = :user');
        $query8->execute(['user' => $user]);

        echo '<table class="table table-hover">
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Titulo</th>
                                        <th>Fecha</th>
                                        <th>Observación</th>
                                        <th>Horas Trabajadas</th>
                                        <th>Archivo</th>
                                        <th>Validacion</th>
                                        <th>Calificion</th>
                                    </tr>';
        foreach ($query8 as $currentUser8) {
            $idRegistroPDF = $currentUser8['idRegistroAistencias'];
            $Validadcion = $currentUser8['Validacion'];
            $Calificacion = $currentUser8['Calificacion'];
            if ($Validadcion == 1) {
                $validado = '<span class="label label-success">Validado</span>';
            } else {
                $validado = '<span class="label label-warning">Esperando Validacion</span>';
            }
            if ($Calificacion == 1) {
                $Calificado = '<span class="label label-success">Calificado</span>';
            } else {
                $Calificado = '<span class="label label-warning">Esperando Calificaión</span>';
            }

            echo '
                                    <tr>
                                        <td>' . $currentUser8['CodRegistro'] . '</td>
                                        <td>' . $currentUser8['Titulo'] . '</td>
                                        <td>' . $currentUser8['Fecha'] . '</td>
                                        <td>' . $currentUser8['Observacion'] . '</td>
                                        <td>' . $currentUser8['HorasTrabajadas'] . '</td>
                                        <td><a href="includes/Estructuras/Estudiantes/AsistenciaPDF.php?idReg='.$idRegistroPDF.'" target="_blank">
                                                 <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                            </a>
                                        </td>
                                        <td>' . $validado . '</td>
                                        <td>' . $Calificado . '</td>
                                    </tr> 
                                    ';
        }
        echo '</table>';
    }

   

    public function getIncidencia()
    {
        $query10 = $this->connect()->prepare('SELECT TipoIncidencia from tipo_incidencias');
        $query10->execute();

        echo '<select class="form-control">';

        foreach ($query10 as $currentUser10) {
            echo '
        <option>' . $currentUser10['TipoIncidencia'] . ' </option>';
        }
        echo '</select>';
    }
  

    public function PostulacionProyecto($user)
    {
        $query11 = $this->connect()->prepare('SELECT CodProyecto, Institucion,NombreEmpresa,CodConvenio,convenio, PrimerNombre, 
        SegundoNombre, apellido_paterno,apellido_materno,Email_pry, Telefono,NombreProyecto, Plazas, Estado_pry
        FROM proyectos, instituciones,empresas, convenio, tutor_externo, usuarios,extensiones
        where fk_idEmpresa = idempresa and fk_idInstitucion = idInstitucion and fk_idEmpresa_cnv = idEmpresa 
        and fk_idTutorExterno= idTutorExterno and fk_idUsuario_tex = idusuario and fk_idExtension_tex=idExtension');
        $query11->execute();

        $query12 = $this->connect()->prepare('SELECT sum(NopPlaza) FROM proyecto_plaza_nivel group by fk_pry_nv');
        $query12->execute();

        $query13 = $this->connect()->prepare('SELECT NivelGp FROM estudiantes, nivel_gp, usuarios
         where fk_idNivelGP_Est=idNivelgp and fk_idUsuario_Est= idusuario and usuario = :user');
        $query13->execute(['user' => $user]);

        $query14 = $this->connect()->prepare(' SELECT NopPlaza,ocupado, disponible FROM proyecto_plaza_nivel, estudiantes, usuarios, nivel_gp, proyectos, proyecto_estudiante
        where fk_pry_nv = idproyectos and fk_idProyectos_pe = idproyectos 
        and fk_idEstudiante_pe=idestudiante and fk_idUsuario_Est = idusuario 
        and fk_idNivelGP_Est = idNivelGp and usuario = :user');
      
        $query14->execute(['user' => $user]);        

        foreach ($query12 as $currentUser12){
            $NopPlaza=$currentUser12['sum(NopPlaza)'];}

        foreach ($query13 as $currentUser13){
            $NGp=$currentUser13['NivelGp'];}
        
            foreach ($query14 as $currentUser14){
                $NGppz=$currentUser14['NopPlaza'];
                $ocupado=$currentUser14['ocupado'];
                $disponible=$currentUser14['disponible'];

                if ($ocupado >= 0) {
                    $ocupado = '<span class="label label-danger">'.$currentUser14['ocupado'].'</span>';
                } else {
                    $ocupado = '<span class="label label-success">'.$currentUser14['ocupado'].'</span>';
                } 
                if ($disponible <= 1) {
                     $disponible = '<span class="label label-danger">'.$currentUser14['disponible'].'</span>';
                } else {
                     $disponible = '<span class="label label-success">'.$currentUser14['disponible'].'</span>';
                }
            }
    

        echo '<table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
           
            <th>Empresa</th>
            
            <th>Dependencia</th>
            <th>Encargado </th>
            <th>Email </th>
            <th>Telefono</th>
            <th>Nombre del Proyecto</th>
            <th>Plazas para la GP'.$NGp.'</th>
            <th>Plazas Totales</th>
            <th>Plazas Disponibles</th>
            <th>Plazas Ocupadas</th>
            <th>Estado</th>
            <th>Postulacion</th>
        </tr>
    </thead>
    <tbody>'
    ;


        foreach ($query11 as $currentUser11) {
            $Estado_pry = $currentUser11['Estado_pry'];
            if ($Estado_pry == 1) {
                $Estado_pry = '<span class="label label-success">Disponible</span>';
                $botonOD = '<button type="button" class="btn btn-block btn-default bg-blue">Postular</button>';
            } else if($Estado_pry == 2) {
                $Estado_pry = '<span class="label label-warning">Disponible</span>';
                $botonOD = '<button type="button" class="btn btn-block btn-default bg-blue">Postular</button>';
            } else {
                $Estado_pry = '<span class="label label-danger">Ocupado</span>';
                $botonOD = '<button type="button" class="btn btn-block btn-default bg-blue disabled="disabled"">Postular</button>';
            }
            echo '
            
                        <tr>
                        <td>'.$currentUser11['NombreEmpresa'].'</td>
                        <td>'.$currentUser11['Institucion'].'</td>
                        <td>'.$currentUser11['PrimerNombre'].' '.$currentUser11['SegundoNombre'].' '
                        .$currentUser11['apellido_paterno'].' '.$currentUser11['apellido_materno'].'</td>
                        <td>'.$currentUser11['Email_pry'].'</td>
                        <td>'.$currentUser11['Telefono'].'</td>
                        <td>'.$currentUser11['NombreProyecto'].'</td>
                        <td>'.$NGppz.'</td>
                        <td>'.$NopPlaza.'</td>
                        <td>'.$disponible.'</td>
                        <td>'.$ocupado.'</td>
                        <th>'.$Estado_pry .'</th>
                        <td>'.$botonOD.'</td>
                            </tr>   
                                    ';
        }
        echo '</tfoot>
        </table>';
    }




    public function Entregables($user)
    {
        $query12 = $this->connect()->prepare('SELECT * from entregables e, estudiantes a,usuarios u
        where  e.idEstudiante = a.idEstudiante and a.idUsuario = u.idUsuario and usuario  = :user');
        $query12->execute(['user' => $user]);

        echo '<table class="table table-hover">
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Fecha</th>
                                        <th>Tipo</th>
                                        <th>Descripcion</th>
                                        <th>Archivo</th>
                                    </tr>';


        foreach ($query12 as $currentUser12) {
            $idCompromisoPDF = $currentUser12['idEntregable'];
            echo '
                                    <tr>
                                        <td>' . $currentUser12['nombre'] . '</td>
                                        <td>' . $currentUser12['fecha'] . '</td>
                                        <td>' . $currentUser12['tipo'] . '</td>
                                        <td>' . $currentUser12['descripcion'] . '</td>
                                        <td><a href="includes/Estructuras/Estudiantes/CartaCompromisoPDF.php?idCom='.$idCompromisoPDF.'" target="_blank">
                                                 <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                            </a>
                                        </td>
                                    </tr> 
                                    ';
        }
        echo '</table>';
    }


    public function SetTutorExternoEstudiante($user)
    {
        $query15 = $this->connect()->prepare('SELECT t.primerNombre,t.segundoNombre, t.apellidoPaterno,t.apellidoMaterno
        from tutor_externo t, proyectos p, asignacion_proyecto a, estudiantes e, usuarios u
        where  t.idTutorExterno = p.idTutorExterno and a.idProyectos = p.idProyectos and a.idEstudiante = e.idEstudiante
        and e.idUsuario = u.idUsuario and u.usuario = :user');
        $query15->execute(['user' => $user]);

        foreach ($query15 as $currentUser15) {
            $this->p_nombre_tutor = $currentUser15['primerNombre'];
            $this->s_nombre_tutor = $currentUser15['segundoNombre'];
            $this->p_apellido_tutor = $currentUser15['apellidoPaterno'];
            $this->m_apellido_tutor = $currentUser15['apellidoMaterno'];
        }
    }
    public function SetCodRegistro()
    {
        $query16 = $this->connect()->prepare('Select max(CodRegistro) as"cod" from registro_asistencias');
        $query16->execute();

        foreach ($query16 as $currentUser16) {
            $this->codReg = $currentUser16['cod'];
        }
    }
    

    public function CartasAsignacion($user)
    {
        $query12 = $this->connect()->prepare('SELECT * from entregables e, estudiantes a,usuarios u
        where e.tipo="Carta Asignación" and e.idEstudiante = a.idEstudiante and a.idUsuario = u.idUsuario and usuario  = :user');
        $query12->execute(['user' => $user]);

        echo '<table class="table table-hover">
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Fecha</th>
                                        <th>Descripcion</th>
                                        <th>Archivo</th>
                                    </tr>';


        foreach ($query12 as $currentUser12) {
            $idCompromisoPDF = $currentUser12['idEntregable'];
            echo '
                                    <tr>
                                        <td>' . $currentUser12['nombre'] . '</td>
                                        <td>' . $currentUser12['fecha'] . '</td>
                                        <td>' . $currentUser12['descripcion'] . '</td>
                                        <td><a href="includes/Estructuras/Estudiantes/CartaCompromisoPDF.php?idCom='.$idCompromisoPDF.'" target="_blank">
                                                 <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                            </a>
                                        </td>
                                    </tr> 
                                    ';
        }
        echo '</table>';
    }

    public function Incidencias($user)
    {
        $query16 = $this->connect()->prepare('SELECT * FROM Incidencias ');
        $query16->execute();

        echo '<table class="table table-hover">
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Titulo</th>
                                        <th>Lugar</th>
                                        <th>Fecha</th>
                                        <th>Hora</th>
                                        <th>Archivo</th>
                                    </tr>';


        foreach ($query16 as $currentUser16) {
            $idIncidenciaPDF = $currentUser16['idIncidencia'];
            echo '
                                    <tr>
                                        <td>' . $currentUser16['CodIncidencia'] . '</td>
                                        <td>' . $currentUser16['Titulo'] . '</td>
                                        <td>' . $currentUser16['Lugar'] . '</td>

                               </td>
                                        </td>
                                                                          <td>' . $currentUser16['Fecha'] . '</td>
                                        <td>' . $currentUser16['Hora'] . '</td>                                        
                                        <td><a href="includes/Estructuras/Estudiantes/IncidenciaPDF.php?idInc='.$idIncidenciaPDF.'" target="_blank">
                                        <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                   </a>  </tr> 
                                    ';
        }
        echo '</table>';
    }


/***************Llamadas a un unico dato*****************/
    public function getidEstudiante()
    {
        return $this->id_est;
    }   
    public function getCedula()
    {
        return $this->cedula;
    }   
    public function getPNombre()
    {
        return $this->p_nombre;
    }
    public function getSNombre()
    {
        return $this->s_nombre;
    }
    public function getPApellido()
    {
        return $this->p_apellido;
    }
    public function getMApellido()
    {
        return $this->m_apellido;
    }
    public function getRol()
    {
        return $this->u_rol;
    }
    public function getEmail()
    {
        return $this->email;
    }
    public function getEmail2()
    {
        return $this->email2;
    }
    public function getNivelGP()
    {
        return $this->Nivel_GP;
    }
    public function getParaleloGP()
    {
        return $this->paralelo_GP;
    }
    public function getCiclo()
    {
        return $this->ciclo_act;
    }
    public function get_Proyecto()
    {
        return $this->proyecto;
    }
    public function getArea()
    {
        return $this->area;
    }
    public function getDepartamento()
    {
        return $this->departamento;
    }



    public function getPNombreTutor()
    {
        return $this->p_nombre_tutor;
    }
    public function getSNombreTutor()
    {
        return $this->s_nombre_tutor;
    }
    public function getPApellidoTutor()
    {
        return $this->p_apellido_tutor;
    }
    public function getMApellidoTutor()
    {
        return $this->m_apellido_tutor;
    }

    public function getCodReg()
    {
        return $this->codReg;
    }

    public function setTEName($user)
    {
        $query17 = $this->connect()->prepare("SELECT concat(primerNombreTE,' ', segundoNombreTE,' ', apellidoPaternoTE,' ',apellidoMaternoTE,' ') as 'te' 
    FROM dependencias d, tutor_externo t, proyectos p, asignacion_proyecto a, estudiantes e, usuarios u 
    where t.idDependencia = d.idDependencia and p.idDependencia = d.idDependencia and a.idProyectos = p.idProyectos 
    and a.idEstudiante = e.idEstudiante and e.idUsuario = u.idUsuario and usuario =:user ") ;
       
       $query17->execute(['user' => $user]);
       foreach ($query17 as $currentUser) {
        $this->TENAME = $currentUser['te'];
    }
    }
    public function getTEName()
    {
        return $this->TENAME;
    }




   /*
    public function getActividad()
    {
        return $this->Actividad;
    }
    public function getInstitucion()
    {
        return $this->Institucion;
    }
    public function getTipoGp2()
    {
        return $this->stgp2;
    }
    
    
    
    
    public function getDependencia()
    {
        return $this->dependencia;
    }*/
}

