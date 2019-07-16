<?php
include 'db.php';

class User extends DB
{
    private $p_nombre;
    private $s_nombre;
    private $p_apellido;
    private $m_apellido;
    private $username;
    private $u_rol;
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

    public function setUser($user)
    {
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
    public function SetProyectoEstudiante($user)
    {
        $query1 = $this->connect()->prepare('SELECT  NombreProyecto from estudiantes, proyectos, proyecto_estudiante, usuarios 
        where  idproyectos = fk_idProyectos_pe and fk_idEstudiante_pe = idestudiante and idEstudiante = idUsuario and usuario = :user ');
        $query1->execute(['user' => $user]);

        foreach ($query1 as $currentUser1) {
            $this->pe_proyecto2 = $currentUser1['NombreProyecto'];
        }
    }
    function SetActividadesEstudiante($user, $c = 0, $i = 0)
    {
        $query2 = $this->connect()->prepare('SELECT idActPry,Actividad, FechaInicio,FechaFin,Porcentaje
            from estudiantes, proyectos, proyecto_estudiante, usuarios,actividadesproyecto
            where fk_idEstudiante_pe=idestudiante and idproyectos = fk_idProyectos_pe 
            and idEstudiante = idusuario and usuario = :user');
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
          </tr>
              
              


                                            
                                            
                                            
                                        ';
            
            $c++;
        }
        echo '   </table>
        </div>
        <!-- /.box-body -->
        <div class="box-footer clearfix">
          <ul class="pagination pagination-sm no-margin pull-right">
            <li><a href="#">&laquo;</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">&raquo;</a></li>
          </ul>
        </div>
      </div>';
        return $c;
    }


    public function ContActividadesFaltantes($user, $c = 0)
    {
        $query3 = $this->connect()->prepare('SELECT Porcentaje  from estudiantes, proyectos, proyecto_estudiante, usuarios,actividadesproyecto
                where Porcentaje=100 and fk_idEstudiante_pe=idestudiante and idproyectos = fk_idProyectos_pe 
                and idEstudiante = idusuario and usuario = :user');
        $query3->execute(['user' => $user]);

        foreach ($query3 as $currentUser3) {
            $c++;
        }
        echo $c;
    }

    public function ContActividadesCompletadas($user, $c = 0)
    {
        $query4 = $this->connect()->prepare('SELECT Porcentaje from estudiantes, proyectos, proyecto_estudiante, usuarios,actividadesproyecto
                    where fk_idEstudiante_pe=idestudiante and idproyectos = fk_idProyectos_pe 
                    and idEstudiante = idusuario and usuario = :user');
        $query4->execute(['user' => $user]);

        foreach ($query4 as $currentUser4) {
            $c++;
        }
        echo $c;
    }

    public function SetTipoGP()
    {
        $query5 = $this->connect()->prepare('SELECT TipoGP from tipo_gp');
        $query5->execute();
        echo '
                        <select class="form-control">';

        foreach ($query5 as $currentUser5) {
            echo '
                        <option>' . $currentUser5['TipoGP'] . '</option>
                                        ';
        }

        echo '</select>';
    }
    public function SetTipoGP2($user)
    {
        $query5 = $this->connect()->prepare('SELECT TipoGP from estudiantes, Tipo_Gp, usuarios,TipoGP_Nivel,nivel_gp
        where fk_TipoGpNV = idTipoGp and fkNivelGPNV = idNivelGP
        and fk_idNivelGP_Est=idNivelGP and  idNivelGP = fk_idNivelGP_Est and fk_idUsuario_Est = idUsuario and usuario =:user');
        $query5->execute(['user' => $user]);
  
                      

        foreach ($query5 as $currentUser5) {
            $this->stgp2 = $currentUser5['TipoGP'] ;
        }

     
    }
    public function SetNivel2($user)
    {
        $query5 = $this->connect()->prepare('SELECT NivelGP from estudiantes, usuarios, nivel_gp
        where  idNivelGP= fk_idNivelGP_Est  and fk_idUsuario_Est = idUsuario and usuario =:user');
        $query5->execute(['user' => $user]);
  
                      

        foreach ($query5 as $currentUser5) {
            $this->nivel2 = $currentUser5['NivelGP'] ;
        }

     
    }
    public function SetCiclo2($user)
    {
        $query5 = $this->connect()->prepare('SELECT CicloNombre from estudiantes, ciclos, usuarios
        where fk_idCiclo_Est = idCiclo  and fk_idUsuario_Est = idUsuario and usuario =:user');
        $query5->execute(['user' => $user]);
  
                      

        foreach ($query5 as $currentUser5) {
            $this->ciclo2 = $currentUser5['CicloNombre'] ;
        }

     
    }


   
    public function SetCiclo()
    {
        $query6 = $this->connect()->prepare('SELECT ciclo from ciclos');
        $query6->execute();

        echo '<select class="form-control">';

        foreach ($query6 as $currentUser6) {
            $Ciclo = $currentUser6['ciclo'];
            echo '
                            <option>' . $Ciclo . ' Ciclo </option>';
        }

        echo '</select>';
    }



    public function SetParalelo2($user)
    {
        $query5 = $this->connect()->prepare(' SELECT Paralelo from estudiantes, paralelos, usuarios
        where fk_idParalelo_Est = idParalelo  and fk_idUsuario_Est = idUsuario and usuario =:user');
        $query5->execute(['user' => $user]);
  
                      

        foreach ($query5 as $currentUser5) {
            $this->paralelo2 = $currentUser5['Paralelo'] ;
        }

     
    }
    public  function SetNivelGP()
    {
        $query7 = $this->connect()->prepare('SELECT NivelGP from nivel_gp');
        $query7->execute();

        echo '<select class="form-control">';

        foreach ($query7 as $currentUser7) {
            $NivelGP = $currentUser7['NivelGP'];
            echo '
                                <option> GESTION PRODUCTIVA / PRÁCTICUM ' . $NivelGP . ' </option>';
        }
        echo '</select>';
    }
    public function RegistrosEntregados($user)
    {
        $query8 = $this->connect()->prepare('SELECT idRegistroAistencias,CodRegistro as "Codigo",Titulo,Fecha,Observacion, HorasTrabajadas,Validacion, Calificacion FROM registro_aistencias, estudiantes, usuarios 
                                    where  fk_idEstudiante = idEstudiante and idestudiante = idusuario and usuario = :user');
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
                                        <td>' . $currentUser8['Codigo'] . '</td>
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




    public function setInstitucionEstudainte($user)
    {
        $query9 = $this->connect()->prepare('SELECT Institucion FROM instituciones, estudiantes, proyectos, usuarios, proyecto_estudiante
        where idInstitucion = fk_idInstitucion and fk_idproyectos_pe=idproyectos and fk_idestudiante_pe =idestudiante and  idestudiante=idusuario and usuario = :user');
        $query9->execute(['user' => $user]);

        foreach ($query9 as $currentUser9) {
            $this->Institucion = $currentUser9['Institucion'];
        }
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
        thead>
        <tr>
            <th>Codigo</th>
            <th>Empresa</th>
            <th>Convenio</th>
            <th>Codigo de Convenio</th>
            <th>Dependencia</th>
            <th>Encargado del estudinte</th>
            <th>Email del Encargado</th>
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
                        <td>'.$currentUser11['CodProyecto'].'</td>
                        <td>'.$currentUser11['NombreEmpresa'].'</td>
                        <td>'.$currentUser11['convenio'].'</td>
                        <td>'.$currentUser11['CodConvenio'].'</td>
                        <td>'.$currentUser11['Institucion'].'</td>
                        <td>'.$currentUser11['PrimerNombre'].' '.$currentUser11['SegundoNombre'].' '
                        .$currentUser11['apellido_paterno'].' '.$currentUser11['apellido_materno'].'</td>
                        <td>'.$currentUser11['Email_pry'].'</td>
                        <td>'.$currentUser11['Telefono'].'</td>
                        <td>'.$currentUser11['NombreProyecto'].'</td>
                        <td>'.$NGppz.'</td>
                        <td>'.$NopPlaza.'</td>
                        <td>'.$ocupado.'</td>
                        <td>'.$disponible.'</td>
                        <th>'.$Estado_pry .'</th>
                        <td>'.$botonOD.'</td>
                            </tr>   
                                    ';
        }
        echo '</tfoot>
        </table>';
    }




    public function CartasCompromiso($user)
    {
        $query12 = $this->connect()->prepare('SELECT idCartaCom,CodCartaCompromiso as "Codigo",Fecha FROM cartacompromiso, estudiantes, usuarios 
        where  fk_idEstudiante_comp = idEstudiante and idestudiante = idusuario and usuario = :user');
        $query12->execute(['user' => $user]);

        echo '<table class="table table-hover">
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Fecha</th>
                                        <th>Archivo</th>
                                    </tr>';


        foreach ($query12 as $currentUser12) {
            $idCompromisoPDF = $currentUser12['idCartaCom'];
            echo '
                                    <tr>
                                        <td>' . $currentUser12['Codigo'] . '</td>
                                        <td>' . $currentUser12['Fecha'] . '</td>
                                        <td><a href="includes/Estructuras/Estudiantes/CartaCompromisoPDF.php?idCom='.$idCompromisoPDF.'" target="_blank">
                                                 <img src="Assets/imagenes/template/pdf.jpg" style="width: 5%;">
                                            </a>
                                        </td>
                                    </tr> 
                                    ';
        }
        echo '</table>';
    }



/***************Llamadas a un unico dato*****************/
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
    public function getPE_Proyecto2()
    {
        return $this->pe_proyecto2;
    }
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
    public function getCiclo2()
    {
        return $this->ciclo2;
    }
    public function getParalelo2()
    {
        return $this->paralelo2;
    }
    public function getNivel2()
    {
        return $this->nivel2;
    }
}

