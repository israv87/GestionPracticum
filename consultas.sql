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
 1