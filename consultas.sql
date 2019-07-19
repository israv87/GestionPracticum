select Actividad, FechaInicio,FechaFin,Porcentaje,NombreProyecto, PrimerNombre from actividadesproyecto,proyecto_estudiante, proyectos,estudiantes,usuarios 
where act_idproyectos = idproyectos and idproyectos_pe = idestudiante_pe  ;

SELECT Actividad, FechaInicio,FechaFin,Porcentaje
from estudiantes, proyectos, proyecto_estudiante, usuarios,actividadesproyecto
where idEstudiante_pe=idestudiante and idproyectos = idProyectos_pe and idEstudiante = idusuario and usuario ="gsolano"; 

select TipoGP from tipo_gp;

select ciclo from ciclos;

select NivelGP from nivel_gp;

SELECT CodRegistro as "Codigo",Titulo,Fecha,Observacion,AnexoPDF as "Anexo", Validacion, Calificacion FROM registro_aistencias, estudiantes, usuarios 
where  fk_idEstudiante = idEstudiante and idestudiante = idusuario and usuario = "gsolano";

SELECT Institucion, PrimerNombre FROM instituciones, estudiantes, proyectos, usuarios, proyecto_estudiante
where idInstitucion = fk_idInstitucion and fk_idproyectos_pe=idproyectos and fk_idestudiante_pe =idestudiante and  idestudiante=idusuario and usuario ="gsolano";

select TipoIncidencia from tipo_incidencias;

SELECT CodProyecto, Institucion,NombreEmpresa,CodConvenio,convenio,CodTExt, PrimerNombre, SegundoNombre, 
apellido_paterno,apellido_materno,Email_pry, Telefono,NombreProyecto, Plazas, Estado_pry
FROM proyectos, instituciones,empresas, convenio, tutor_externo, usuarios,extensiones
where fk_idEmpresa = idempresa and fk_idInstitucion = idInstitucion and fk_idEmpresa_cnv = idEmpresa 
and fk_idTutorExterno= idTutorExterno and fk_idUsuario_tex = idusuario and fk_idExtension_tex=idExtension;
;
SELECT sum(NopPlaza) FROM proyecto_plaza_nivel group by fk_pry_nv;

SELECT NivelGp, PrimerNombre FROM estudiantes, nivel_gp, usuarios 
where fk_idNivelGP=idNivelgp and fk_idUsuario_Est= idusuario and usuario="gsolano";

INSERT INTO registro_aistencias (CodRegistro,Titulo, fk_idEstudiante,Fecha,HorasTrabajadas,Observacion,AnexoPDF) 
     SELECT (select concat('REG00',MAX(idRegistroAistencias)+1 ) from registro_aistencias),'semana4',
     (select idEstudiante from estudiantes, usuarios where idusuario=fk_idUsuario_Est and usuario="csanchez"),current_date(),'4', 
     'Entregado a Tiempo',LOAD_FILE('C:/Users/Isra/Desktop/semana.pdf');
     
     SELECT  TipoGP  FROM tipo_gp,nivel_gp,tipogp_nivel, estudiantes, usuarios
where fk_TipoGp=idTipogp and fkNivelGP =idNivelGP and fk_idNivelGP_Est = idNivelGP
and fk_idUsuario_Est = idUsuario and usuario ='gsolano';

SELECT NivelGP FROM nivel_gp,estudiantes, usuarios
where fk_idNivelGP_Est=idNivelGp and fk_idNivelGP_Est = idNivelGP
and fk_idUsuario_Est = idUsuario and usuario ='gsolano';


SELECT Dependencia
FROM dep_proyecto, proyectos, dependencias, estudiantes, usuarios, proyecto_estudiante
where fk_dep_dp = idDependencia and fk_pry_dp= idProyectos and fk_idProyectos_pe = idProyectos 
and fk_idEstudiante_pe = idEstudiante and fk_idUsuario_est = idusuario and usuario = "gsolano";


select Actividad, FechaInicio,FechaFin,Porcentaje,NombreProyecto, PrimerNombre from actividadesproyecto,proyecto_estudiante, proyectos,estudiantes,usuarios 
where act_idproyectos = idproyectos and idproyectos_pe = idestudiante_pe  ;

SELECT Actividad, FechaInicio,FechaFin,Porcentaje
from estudiantes, proyectos, proyecto_estudiante, usuarios,actividadesproyecto
where idEstudiante_pe=idestudiante and idproyectos = idProyectos_pe and idEstudiante = idusuario and usuario ="gsolano"; 

select TipoGP from tipo_gp;

select ciclo from ciclos;

select NivelGP from nivel_gp;

SELECT CodRegistro as "Codigo",Titulo,Fecha,Observacion,AnexoPDF as "Anexo", Validacion, Calificacion FROM registro_aistencias, estudiantes, usuarios 
where  fk_idEstudiante = idEstudiante and idestudiante = idusuario and usuario = "gsolano";

SELECT Institucion, PrimerNombre FROM instituciones, estudiantes, proyectos, usuarios, proyecto_estudiante
where idInstitucion = fk_idInstitucion and fk_idproyectos_pe=idproyectos and fk_idestudiante_pe =idestudiante and  idestudiante=idusuario and usuario ="gsolano";

select TipoIncidencia from tipo_incidencias;

SELECT CodProyecto, Institucion,NombreEmpresa,CodConvenio,convenio,CodTExt, PrimerNombre, SegundoNombre, 
apellido_paterno,apellido_materno,Email_pry, Telefono,NombreProyecto, Plazas, Estado_pry
FROM proyectos, instituciones,empresas, convenio, tutor_externo, usuarios,extensiones
where fk_idEmpresa = idempresa and fk_idInstitucion = idInstitucion and fk_idEmpresa_cnv = idEmpresa 
and fk_idTutorExterno= idTutorExterno and fk_idUsuario_tex = idusuario and fk_idExtension_tex=idExtension;
;
SELECT sum(NopPlaza) FROM proyecto_plaza_nivel group by fk_pry_nv;

SELECT NivelGp, PrimerNombre FROM estudiantes, nivel_gp, usuarios 
where fk_idNivelGP=idNivelgp and fk_idUsuario_Est= idusuario and usuario="gsolano";

INSERT INTO registro_aistencias (CodRegistro,Titulo, fk_idEstudiante,Fecha,HorasTrabajadas,Observacion,AnexoPDF) 
     SELECT (select concat('REG00',MAX(idRegistroAistencias)+1 ) from registro_aistencias),'semana4',
     (select idEstudiante from estudiantes, usuarios where idusuario=fk_idUsuario_Est and usuario="csanchez"),current_date(),'4', 
     'Entregado a Tiempo',LOAD_FILE('C:/Users/Isra/Desktop/semana.pdf');
     
     SELECT  TipoGP  FROM tipo_gp,nivel_gp,tipogp_nivel, estudiantes, usuarios
where fk_TipoGp=idTipogp and fkNivelGP =idNivelGP and fk_idNivelGP_Est = idNivelGP
and fk_idUsuario_Est = idUsuario and usuario ='gsolano';

SELECT NivelGP FROM nivel_gp,estudiantes, usuarios
where fk_idNivelGP_Est=idNivelGp and fk_idNivelGP_Est = idNivelGP
and fk_idUsuario_Est = idUsuario and usuario ='gsolano';


SELECT Dependencia
FROM dep_proyecto, proyectos, dependencias, estudiantes, usuarios, proyecto_estudiante
where fk_dep_dp = idDependencia and fk_pry_dp= idProyectos and fk_idProyectos_pe = idProyectos 
and fk_idEstudiante_pe = idEstudiante and fk_idUsuario_est = idusuario and usuario = "gsolano";


SELECT concat(PrimerNombre," ", SegundoNombre," ", apellido_paterno," ",apellido_materno," ") As "te" 
FROM text_estudiante,tutor_externo,estudiantes,usuarios
Where fk_idUsuario_tex=idUsuario and fk_idTutorExterno=idTutorExterno and fk_idEstudiante = idEstudiante
and idEstudiante = (select idEstudiante from estudiantes, usuarios where fk_idUsuario_Est = idusuario and usuario="csanchez") ;

SELECT concat(PrimerNombre,' ', SegundoNombre,' ', apellido_paterno,' ',apellido_materno,' ') As 'estudiante' 
FROM estudiantes,usuarios
 where fk_idUsuario_Est = idusuario and usuario="csanchez" ;

SELECT TipoGP, PrimerNombre from estudiantes, Tipo_Gp, usuarios,TipoGP_Nivel,nivel_gp
        where fk_TipoGpNV = idTipoGp and fkNivelGPNV = idNivelGP
        and fk_idNivelGP_Est=idNivelGP and  idNivelGP = fk_idNivelGP_Est and fk_idUsuario_Est = idUsuario and usuario ="gsolano" ;
        
        SELECT Ciclo from estudiantes, ciclos, usuarios
        where fk_idCiclo_Est = idCiclo  and fk_idUsuario_Est = idUsuario and usuario ="gsolano" ;
        SELECT Paralelo from estudiantes, paralelos, usuarios
        where fk_idParalelo_Est = idParalelo  and fk_idUsuario_Est = idUsuario and usuario ="gsolano" ;
        SELECT NivelGP from estudiantes, usuarios, nivel_gp
        where  idNivelGP= fk_idNivelGP_Est  and fk_idUsuario_Est = idUsuario and usuario ="gsolano";
        
        INSERT INTO registro_aistencias (CodRegistro, fk_idEstudiante,Fecha) 
SELECT (select concat("REG00",MAX(idRegistroAistencias)+1 ) from registro_aistencias),
(select idEstudiante from estudiantes, usuarios where idusuario=fk_idUsuario_Est and usuario= "gsolano"),current_date();


select NombreProyecto
from proyectos;



Select CodProyecto
from proyectos;

select codconvenio
from convenio;

select dependencia from empresas;

SELECT encargado
from empresas;

SELECT PrimerNombre, SegundoNombre, apellido_paterno, apellido_materno, NivelGp FROM usuarios, estudiantes, nivel_gp WHERE fk_idnivelgp_est = idnivelgp and fk_idusuario_est = idusuario and NivelGp = '2.2'

SELECT PrimerNombre, SegundoNombre, apellido_paterno, apellido_materno, paralelo FROM usuarios, estudiantes, paralelos WHERE fk_idparalelo_est = idparalelo and fk_idusuario_est = idusuario and paralelo = 'A'

SELECT PrimerNombre, SegundoNombre, apellido_paterno, apellido_materno, ciclo FROM usuarios, estudiantes, ciclos WHERE fk_idciclo_est = idciclo and fk_idusuario_est = idusuario and ciclo = '6'

select CodInforme from informeconsolidado;

