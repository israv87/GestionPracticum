-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2019 a las 12:19:55
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestion_practicum_utpl`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividadesproyecto`
--

CREATE TABLE `actividadesproyecto` (
  `idActPry` int(11) NOT NULL,
  `Actividad` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `Porcentaje` int(11) DEFAULT NULL,
  `fk_idProyectos` int(11) NOT NULL,
  `Completado` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividadesproyecto`
--

INSERT INTO `actividadesproyecto` (`idActPry`, `Actividad`, `FechaInicio`, `FechaFin`, `Porcentaje`, `fk_idProyectos`, `Completado`) VALUES
(1, 'Levantamiento de requerimientos ', '2019-10-08', '2019-10-19', 100, 42, 1),
(2, 'Análisis y propuesta de solución', '2019-10-22', '2019-10-31', 100, 42, 1),
(3, 'Diseño de solución', '2019-11-05', '2019-11-16', 100, 42, 0),
(4, 'Implementación', '2019-11-19', '2020-01-19', 40, 42, 0),
(5, ' Pruebas', '2020-01-21', '2020-01-31', 50, 42, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades_registro`
--

CREATE TABLE `actividades_registro` (
  `idActividades_Registro` int(11) NOT NULL,
  `Actividad` varchar(45) DEFAULT NULL,
  `fk_idRegistroAistencias` int(11) NOT NULL,
  `HoraEntrada` datetime DEFAULT NULL,
  `HoraSalida` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actividades_registro`
--

INSERT INTO `actividades_registro` (`idActividades_Registro`, `Actividad`, `fk_idRegistroAistencias`, `HoraEntrada`, `HoraSalida`) VALUES
(1, 'Analisas de la solucion', 1, NULL, NULL),
(2, 'Consulta de Liberias', 1, NULL, NULL),
(3, 'Panteamiento de una propuesta', 1, NULL, NULL),
(4, 'Analisas de base de datos', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos`
--

CREATE TABLE `ciclos` (
  `idCiclo` int(11) NOT NULL,
  `Ciclo` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciclos`
--

INSERT INTO `ciclos` (`idCiclo`, `Ciclo`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos_nivelgp`
--

CREATE TABLE `ciclos_nivelgp` (
  `idCiclos_NivelGP` int(11) NOT NULL,
  `fk_idCiclo` int(11) NOT NULL,
  `fk_idNivelGP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cl_ngp_paralelo`
--

CREATE TABLE `cl_ngp_paralelo` (
  `idCl_NGP_Paralelo` int(11) NOT NULL,
  `fk_idCiclos_NivelGP` int(11) NOT NULL,
  `fk_idParalelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comp_actitudinales`
--

CREATE TABLE `comp_actitudinales` (
  `idCompActitudinales` int(11) NOT NULL,
  `Confianza` int(11) DEFAULT NULL,
  `Profesionalismo` int(11) DEFAULT NULL,
  `AsumeCargo` int(11) DEFAULT NULL,
  `Esfuerzo` int(11) DEFAULT NULL,
  `Integridad` int(11) DEFAULT NULL,
  `Puntaje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comp_profesional`
--

CREATE TABLE `comp_profesional` (
  `idCompProfesional` int(11) NOT NULL,
  `Teorias` int(11) DEFAULT NULL,
  `CriteriosTecnicos` int(11) DEFAULT NULL,
  `Organizacion` varchar(45) DEFAULT NULL,
  `PlaneaActividades` int(11) DEFAULT NULL,
  `Cumplimiento` int(11) DEFAULT NULL,
  `Ejecucion` int(11) DEFAULT NULL,
  `EntregaInformes` int(11) DEFAULT NULL,
  `Puntaje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comp_sociales`
--

CREATE TABLE `comp_sociales` (
  `idComp_Sociales` int(11) NOT NULL,
  `Adaptacion` int(11) DEFAULT NULL,
  `Socializacion` int(11) DEFAULT NULL,
  `Pertenencia` int(11) DEFAULT NULL,
  `SolicitaInfo` int(11) DEFAULT NULL,
  `Puntaje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_genericas`
--

CREATE TABLE `com_genericas` (
  `idCompGen` int(11) NOT NULL,
  `ExpresionOral` int(11) DEFAULT NULL,
  `Participacion` int(11) DEFAULT NULL,
  `CumplmientoObjetivos` int(11) DEFAULT NULL,
  `Puntaje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convenio`
--

CREATE TABLE `convenio` (
  `idConvenio` int(11) NOT NULL,
  `Convenio` varchar(45) DEFAULT NULL,
  `CodConvenio` varchar(10) DEFAULT NULL,
  `Estado` varchar(25) DEFAULT NULL,
  `Observaciones` varchar(100) DEFAULT NULL,
  `Vigencia` date DEFAULT NULL,
  `fk_idEmpresa_cnv` int(11) NOT NULL,
  `fk_idCoordinadorTitulacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `convenio`
--

INSERT INTO `convenio` (`idConvenio`, `Convenio`, `CodConvenio`, `Estado`, `Observaciones`, `Vigencia`, `fk_idEmpresa_cnv`, `fk_idCoordinadorTitulacion`) VALUES
(1, 'No Aplica', 'CNV0000', 'No Aplica', 'No Aplica', NULL, 1, 1),
(2, 'UTPL-MAE', 'CNV0001', 'Vigente', 'Activo', '2020-01-01', 2, 1),
(3, 'UTPL-KRADAC', 'CNV0002', 'Vigente', 'Activo', '2019-12-21', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinador_titulacion`
--

CREATE TABLE `coordinador_titulacion` (
  `idCoordinadorTitulacion` int(11) NOT NULL,
  `CodCordinador` varchar(45) DEFAULT NULL,
  `fk_idDepartamento` int(11) NOT NULL,
  `fk_idExtension` int(11) NOT NULL,
  `fk_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `coordinador_titulacion`
--

INSERT INTO `coordinador_titulacion` (`idCoordinadorTitulacion`, `CodCordinador`, `fk_idDepartamento`, `fk_idExtension`, `fk_idUsuario`) VALUES
(1, 'CRT0001', 4, 9, 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos`
--

CREATE TABLE `creditos` (
  `idCreditos` int(11) NOT NULL,
  `fk_idCreditos2` int(11) NOT NULL,
  `fk_idCreditos1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditosectcs1`
--

CREATE TABLE `creditosectcs1` (
  `idCreditos1` int(11) NOT NULL,
  `Ciclo` varchar(45) DEFAULT NULL,
  `CarreraPractica` varchar(45) DEFAULT NULL,
  `fk_Modalidad` int(11) NOT NULL,
  `PerfilDesarrollar` varchar(45) DEFAULT NULL,
  `PerfilTutor` varchar(45) DEFAULT NULL,
  `Metodología` varchar(45) DEFAULT NULL,
  `Escenario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditosects2`
--

CREATE TABLE `creditosects2` (
  `idCreditos2` int(11) NOT NULL,
  `GP` varchar(45) DEFAULT NULL,
  `Competencias` varchar(45) DEFAULT NULL,
  `Ciclo` varchar(45) DEFAULT NULL,
  `FaseAprendizaje` varchar(45) DEFAULT NULL,
  `Fase` varchar(45) DEFAULT NULL,
  `Metodo` varchar(45) DEFAULT NULL,
  `Accion` varchar(45) DEFAULT NULL,
  `Creditos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `idDepartamento` int(11) NOT NULL,
  `Departamento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`idDepartamento`, `Departamento`) VALUES
(1, 'Ciencias de la Computacion y Electronica'),
(2, 'Titulacion de Electronica y Telecomunicacione'),
(3, 'Tecnologias Avanzadas de la Web'),
(4, 'Ing. Sofware y Gest. Tec. de la Informacion'),
(5, 'Tecnologias Avanzadas de la Web y SBC'),
(6, 'Ingenieria Artificial'),
(7, 'Electronica y telecomunicaciones'),
(8, 'Electronica y Energia'),
(9, 'Ingenieria de Software y GTI '),
(10, 'Telecomunicaciones y Redes'),
(11, 'Energia, Eficiencia Energetica '),
(12, 'Gestion Empresarial'),
(13, 'Cooperacion para el desarrollo FEDES'),
(14, 'Tecnologias Educacion-Vicerrectorado MAD'),
(15, 'Soluciones de Negocios - UGTI'),
(16, 'NN'),
(17, 'Infraestructura IT - Operaciones IT'),
(18, 'KRADAC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `idEmpresa` int(11) NOT NULL,
  `CodEmpresa` varchar(7) NOT NULL,
  `NombreEmpresa` varchar(45) DEFAULT NULL,
  `Encargado` varchar(45) DEFAULT NULL,
  `Dependencia` varchar(45) DEFAULT NULL,
  `CorreoEmpresa` varchar(45) DEFAULT NULL,
  `TelefonoEmpresa` varchar(9) DEFAULT NULL,
  `Extension` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`idEmpresa`, `CodEmpresa`, `NombreEmpresa`, `Encargado`, `Dependencia`, `CorreoEmpresa`, `TelefonoEmpresa`, `Extension`) VALUES
(1, 'EMP0001', 'Utpl', '', 'TAW', '', '', ''),
(2, 'EMP0002', 'MINISTERIO DEL AMBIENTE', 'Oscar Fabricio Peralta Suing', 'TAW', 'oscar.peralta@ambiente.gob.ec', '2577125', '109'),
(3, 'EMP0002', 'Kradac', 'Hugo Ramirez', 'TAW', 'hugo.ramirez@kradac.com', '099128773', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `idEstudiante` int(11) NOT NULL,
  `CodEstudiante` varchar(7) DEFAULT NULL,
  `Caflificacion` varchar(45) DEFAULT NULL,
  `fk_idCiclo` int(11) NOT NULL,
  `fk_idNivelGP` int(11) NOT NULL,
  `fk_idParalelo` int(11) NOT NULL,
  `fk_idUsuario_Est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`idEstudiante`, `CodEstudiante`, `Caflificacion`, `fk_idCiclo`, `fk_idNivelGP`, `fk_idParalelo`, `fk_idUsuario_Est`) VALUES
(1, 'EST0001', NULL, 6, 4, 1, 1),
(2, 'EST0002', NULL, 6, 4, 1, 2),
(3, 'EST0003', NULL, 6, 4, 1, 3),
(4, 'EST0004', NULL, 6, 4, 1, 4),
(5, 'EST0005', NULL, 6, 4, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `idEvaluacion` int(11) NOT NULL,
  `CodEvaluacion` varchar(7) DEFAULT NULL,
  `fk_idEvaluacion_Rubrica` int(11) NOT NULL,
  `fk_idTutorExterno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion_rubrica`
--

CREATE TABLE `evaluacion_rubrica` (
  `idEvaluacionRubrica` int(11) NOT NULL,
  `fk_idRubricaGP1` int(11) NOT NULL,
  `fk_idRubricaGP2` int(11) NOT NULL,
  `fk_idRubricaGP3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventualidad`
--

CREATE TABLE `eventualidad` (
  `idEventualidad` int(11) NOT NULL,
  `CodEventualidad` varchar(7) DEFAULT NULL,
  `Titulo` varchar(45) DEFAULT NULL,
  `Observacion` varchar(50) DEFAULT NULL,
  `AnexosPDF` longblob DEFAULT NULL,
  `fk_idTutorExterno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extensiones`
--

CREATE TABLE `extensiones` (
  `idExtension` int(11) NOT NULL,
  `Telefono` varchar(7) DEFAULT NULL,
  `Extension` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `extensiones`
--

INSERT INTO `extensiones` (`idExtension`, `Telefono`, `Extension`) VALUES
(1, '0737014', 2316),
(2, '2585700', 304),
(3, '0737014', 2525),
(4, '0737014', 2526),
(5, '0737014', 2231),
(6, '0737014', 2316),
(7, '0737014', 2510),
(8, '0737014', 2523),
(9, '0737014', 2522),
(10, '0737014', 251),
(11, '0737014', 2787),
(12, '0737014', 2531),
(13, '0737014', 3421),
(14, '0737014', 2530),
(15, '0737014', 2529),
(16, '0737014', 2528),
(17, '0737014', 2662),
(18, '0737014', 3600),
(19, '0737014', 2313),
(20, '0737014', 2533),
(21, '0737014', 2532),
(22, '0737014', 2674),
(23, '0737014', 2528);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias`
--

CREATE TABLE `incidencias` (
  `idIncidencia` int(11) NOT NULL,
  `CodIncidencia` varchar(7) DEFAULT NULL,
  `fk_idEstudiante` int(11) NOT NULL,
  `Titulo` varchar(45) DEFAULT NULL,
  `fk_idTipoIncidencia` int(11) NOT NULL,
  `Observacion` varchar(100) DEFAULT NULL,
  `AnexosPDF` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informeconsolidado`
--

CREATE TABLE `informeconsolidado` (
  `idInformeCons` int(11) NOT NULL,
  `CodInforme` varchar(45) DEFAULT NULL,
  `Titulo` varchar(45) DEFAULT NULL,
  `Observacion` varchar(100) DEFAULT NULL,
  `AnexoPDF` longblob DEFAULT NULL,
  `fk_TutorAcademico_Estudiante_idTAcEst` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informe_aprobaciones`
--

CREATE TABLE `informe_aprobaciones` (
  `idInformeAprob` int(11) NOT NULL,
  `Titulo` varchar(45) DEFAULT NULL,
  `Detalle` varchar(45) DEFAULT NULL,
  `ArchivoPDF` longblob DEFAULT NULL,
  `fk_idCoordinadorTitulacion` int(11) NOT NULL,
  `fk_idTAcEst` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informe_bimestral`
--

CREATE TABLE `informe_bimestral` (
  `idInformeBimestral` int(11) NOT NULL,
  `CodInforme` varchar(7) DEFAULT NULL,
  `Titulo` varchar(50) DEFAULT NULL,
  `fk_idTipoGP` int(11) NOT NULL,
  `Bimestre` varchar(1) DEFAULT NULL,
  `Observacion` varchar(50) DEFAULT NULL,
  `AnexoPDF` longblob DEFAULT NULL,
  `fk_idEstudiante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituciones`
--

CREATE TABLE `instituciones` (
  `idInstitucion` int(11) NOT NULL,
  `Institucion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instituciones`
--

INSERT INTO `instituciones` (`idInstitucion`, `Institucion`) VALUES
(1, 'UTPL'),
(2, 'Ecolac'),
(3, 'Kradak'),
(4, 'MINISTERIO DEL AMBIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidades`
--

CREATE TABLE `modalidades` (
  `idModalidad` int(11) NOT NULL,
  `Modalidad` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_gp`
--

CREATE TABLE `nivel_gp` (
  `idNivelGP` int(11) NOT NULL,
  `NivelGP` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nivel_gp`
--

INSERT INTO `nivel_gp` (`idNivelGP`, `NivelGP`) VALUES
(1, '1.1'),
(2, '1.2'),
(3, '1.3'),
(4, '2.1'),
(5, '2.2'),
(6, '3.1'),
(7, '3.2'),
(8, '4.1'),
(9, '4.2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paralelos`
--

CREATE TABLE `paralelos` (
  `idParalelo` int(11) NOT NULL,
  `Paralelo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paralelos`
--

INSERT INTO `paralelos` (`idParalelo`, `Paralelo`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portafolio_academico`
--

CREATE TABLE `portafolio_academico` (
  `idPortafolio_Academico` int(11) NOT NULL,
  `fk_idTAcEst` int(11) NOT NULL,
  `fk_idInformeBimestral` int(11) NOT NULL,
  `Observaciones` varchar(100) DEFAULT NULL,
  `OficioAsgnacionPDF` longblob DEFAULT NULL,
  `CartaCompromisoPDF` longblob DEFAULT NULL,
  `OtrasEvidenciasPDF` longblob DEFAULT NULL,
  `fk_Registro_Aistencias_idRegistroAistencias` int(11) NOT NULL,
  `fk_Evaluacion_idEvaluacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `idProyectos` int(11) NOT NULL,
  `CodProyecto` varchar(7) NOT NULL,
  `fk_idInstitucion` int(11) NOT NULL,
  `fk_idEmpresa` int(11) NOT NULL,
  `fk_idTutorExterno` int(11) NOT NULL,
  `Email_pry` varchar(45) NOT NULL,
  `NombreProyecto` varchar(255) DEFAULT NULL,
  `Plazas` varchar(45) DEFAULT NULL,
  `Estado_pry` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`idProyectos`, `CodProyecto`, `fk_idInstitucion`, `fk_idEmpresa`, `fk_idTutorExterno`, `Email_pry`, `NombreProyecto`, `Plazas`, `Estado_pry`) VALUES
(1, 'PRO0001', 1, 1, 1, 'miloaiza@utpl.edu.ec', 'Proyecto ASCENDERE', '3', 1),
(2, 'PRO0002', 2, 1, 2, 'gerencia@ecolac.com.ec', '1. software para que el personal de la UTPL pueda hacer sus pedidos de producto a ECOLAC. 2 Necesitamos apoyo para desarrollar la pagina web de la institución  ', '2', 2),
(3, 'PRO0003', 1, 1, 3, 'pmvaldiviezo@utpl.edu.ec', 'Implementación de algoritmos de aprendizaje automático en python', '1', 1),
(4, 'PRO0004', 1, 1, 4, 'jmcordero@utpl.edu.ec', 'APP móvil para el  posicionamiento en interiores que permita mejorar la orientación mediante el uso de dispositivos beacon.', '2', 0),
(5, 'PRO0005', 1, 1, 5, 'cpsarango@utpl.edu.ec', 'Colocar un manual interactivo en el aplicativo de virtopsia', '1', 2),
(6, 'PRO0006', 1, 1, 6, 'mpsamaniego@utpl.edu.ec', 'Explotación de Datos Técnicos de Los Sistemas UTPL', '2', 1),
(7, 'PRO0007', 1, 1, 7, 'aacabrera@utpl.edu.ec', 'Diseño y construcción de sistemas respaldos para la toma de decisiones estratégicas u operativas en el sector industrial', '2', 0),
(8, 'PRO0008', 1, 1, 5, 'cpsarango@utpl.edu.ec', 'Mundos Virtuales', '2', 2),
(9, 'PRO0009', 1, 1, 9, 'srbenitez@utpl.edu.ec', 'RECITEC – Gestión de residuos computacionales', '5', 1),
(10, 'PRO0010', 1, 1, 10, 'fmsoto@utpl.edu.ec', 'Automatización de la gestión del prácticum.\nProyecto piloto: Titulación de Sistemas Informáticos y Computación', '3', 0),
(11, 'PRO0011', 1, 1, 11, 'jrcastro@utpl.edu.ec', 'Minería de datos en procesos industriales', '2', 0),
(12, 'PRO0012', 1, 1, 12, 'cpsarango@utpl.edu.ec - jbsamaniego@utpl.edu.', 'Aplicativo de realidad aumentada para turismo ', '2', 1),
(13, 'PRO0013', 1, 1, 13, 'aploaizax@utpl.edu.ec', 'Página web Planificación y desarrollo del currículo ', '2', 2),
(14, 'PRO0014', 1, 1, 19, 'rlramirez@utpl.edu.ec', 'Células culturales acoplado al proyecto de fototeca para la digitalización de los contenidos. Desarrollo de software', '4', 1),
(15, 'PRO0015', 1, 1, 19, 'rlramirez@utpl.edu.ec', 'Investigación, desarrollo e implementación de una herramienta de chat para la modalidad a distancia de la UTPL que mejore la enseñanza aprendizaje entre el docente y el estudiante. ', '4', 1),
(16, 'PRO0016', 1, 1, 19, 'rlramirez@utpl.edu.ec', 'Desarrollo de una aplicación interactiva entre profesor - alumno para el uso de dispositivos móviles en el aula.', '2', 2),
(17, 'PRO0017', 1, 1, 10, 'fmsoto@utpl.edu.ec', 'Automatización de los procesos del área técnica', '3', 0),
(18, 'PRO0018', 1, 1, 14, 'aasantos@utpl.edu.ec', 'Diseñar un modelo para medir el impacto de la vinculación UTPL\n', '2', 0),
(19, 'PRO0019', 1, 1, 15, 'cacalderon@utpl.edu.ec', 'Diseño y desarrollo de un portal web para la difusión de los resultados del proyecto de investigación “Axes”, como un medio para establecer un canal de comunicación divulgativo entre el Grupo de Investigación “ConSysUTPL” y la Sociedad.', '2', 1),
(20, 'PRO0020', 1, 1, 15, 'cacalderon@utpl.edu.ec', 'Desarrollo de una aplicación móvil Android, que gestione y controle un algoritmo de aprendizaje automático aplicado a imágenes capturadas por el Smartphone.\n(Miniaturización del prototipo del proyecto Axes)', '2', 1),
(21, 'PRO0021', 1, 1, 16, 'acgonzalez@utpl.edu.ec', 'Reconocimiento de entidades en documentos resultantes de procesos OCR, aplicado a casos de convalidación de estudios', '2', 2),
(22, 'PRO0022', 1, 1, 6, 'acgonzalez@utpl.edu.ec', 'Prototipo de anaquel inteligente para la gestión de libros de la Biblioteca UTPL', '3', 1),
(23, 'PRO0023', 1, 1, 17, 'bgjaramillo@utpl.edu.ec', 'Sistema de gestión automática de la infraestructura de networking de la UTPL mediante Cisco Prime', '2', 2),
(24, 'PRO0024', 3, 3, 18, 'hugo.ramirez@kradac.com', 'Desarrollo web, movil y QA en aplicaciones internas de la empresa', '1', 0),
(25, 'PRO0025', 1, 1, 19, 'rlramirez@utpl.edu.ec', 'Levantamiento de informacion de los sensores existentes en la UTPL', '2', 1),
(26, 'PRO0026', 4, 2, 20, 'oscar.peralta@ambiente.gob.ec', 'App móvil para el Parque Nacional Podocarpus', '2', 2),
(27, 'PRO0027', 1, 1, 21, 'gtenesaca@utpl.edu.ec', 'Análisis de algoritmos de estimación de resultados para Big Data con datos semánticos', '2', 0),
(28, 'PRO0028', 1, 1, 22, 'jachicaiza@utpl.edu.ec', 'TIC para la promoción de habilidades de pensamiento computacional y aprendizaje autónomo', '2', 0),
(29, 'PRO0029', 1, 1, 27, 'rlramirez@utpl.edu.ec\njcmorocho@utpl.edu.ec', 'Proyecto de servicio comunitario escuela \"Calandria\"\"-Vilcabamba\"', '8', 1),
(30, 'PRO0030', 1, 1, 27, 'rlramirez@utpl.edu.ec\njcmorocho@utpl.edu.ec', 'Proyecto de educación vial', '4', 2),
(31, 'PRO0031', 1, 1, 27, 'rlramirez@utpl.edu.ec\njcmorocho@utpl.edu.ec', 'Proyecto aula Móvil', '2', 1),
(32, 'PRO0032', 1, 1, 23, 'nopiedra@utpl.edu.ec', 'Base de conocimiento para el idioma Quichua', '3', 0),
(33, 'PRO0033', 1, 1, 24, 'aeromero2@utpl.edu.ec', 'Herramienta para evaluación de calidad de metadatos en repositorios', '1', 2),
(34, 'PRO0034', 1, 1, 23, 'nopiedra@utpl.edu.ec', 'Interfaz de comunicación para utilización de datos abiertos utilizando grafos de conocimiento', '1', 0),
(35, 'PRO0035', 1, 1, 21, 'gtenesaca@utpl.edu.ec;\nmbmora@utpl.edu.ec', 'Predicción de datos analizados en Apache Pig para estimaciones de resultados', '2', 1),
(36, 'PRO0036', 1, 1, 26, 'mccabrerax@utpl.edu.ec\niecadme@utpl.edu.ec', 'Desarrollo de componentes como complemento a plataformas de EdX ', '2', 2),
(37, 'PRO0037', 1, 1, 27, 'jcmorocho@utpl.edu.ec', 'Consultas a base de datos por voz', '1', 1),
(38, 'PRO0038', 1, 1, 25, 'fmsoto@utpl.edu.ec', 'Proyecto de Innovación - Casa Abierta Itinerante', '3', 0),
(39, 'PRO0039', 1, 1, 28, 'lrbarba@utpl.edu.ec', 'Clasificador-video par actores de la movilidad como alternativa a conteos volumétricos manuales', '2', 0),
(40, 'PRO0040', 1, 1, 24, 'aeromero2@utpl.edu.ec', 'Evaluación de herramientas de learning analitycs en LMS open source', '1', 1),
(41, 'PRO0041', 1, 1, 24, 'aeromero2@utpl.edu.ec', 'Levantamiento de información de plataformas del movimiento de recursos abiertos', '1', 0),
(42, 'PRO0042', 1, 1, 25, 'fmsoto@utpl.edu.ec', 'Gestion del Practicum', '3', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_estudiante`
--

CREATE TABLE `proyecto_estudiante` (
  `idProyecto_Estudiante` int(11) NOT NULL,
  `fk_idProyectos_pe` int(11) NOT NULL,
  `fk_idEstudiante_pe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyecto_estudiante`
--

INSERT INTO `proyecto_estudiante` (`idProyecto_Estudiante`, `fk_idProyectos_pe`, `fk_idEstudiante_pe`) VALUES
(1, 42, 1),
(2, 42, 2),
(3, 42, 3),
(4, 1, 4),
(5, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_plaza_nivel`
--

CREATE TABLE `proyecto_plaza_nivel` (
  `idPryNv` int(11) NOT NULL,
  `fk_pry_nv` int(11) NOT NULL,
  `fk_nvgp_nv` int(11) NOT NULL,
  `NopPlaza` int(11) NOT NULL,
  `Ocupado` int(11) DEFAULT NULL,
  `Disponible` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyecto_plaza_nivel`
--

INSERT INTO `proyecto_plaza_nivel` (`idPryNv`, `fk_pry_nv`, `fk_nvgp_nv`, `NopPlaza`, `Ocupado`, `Disponible`) VALUES
(1, 42, 5, 3, 3, 0),
(2, 1, 3, 1, 1, 0),
(3, 1, 5, 2, 1, 1),
(4, 2, 5, 2, 1, 1),
(5, 3, 3, 2, 1, 1),
(6, 3, 5, 2, 2, 0),
(7, 4, 5, 2, 2, 0),
(8, 4, 7, 3, 1, 2),
(9, 5, 5, 2, 1, 1),
(10, 6, 3, 3, 2, 1),
(11, 6, 5, 2, 1, 0),
(12, 7, 5, 2, 1, 0),
(13, 8, 3, 1, 1, 0),
(14, 8, 5, 1, 1, 0),
(15, 8, 7, 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rediseñocurricular`
--

CREATE TABLE `rediseñocurricular` (
  `idRediseño_Curricular` int(11) NOT NULL,
  `fk_idRediseños` int(11) NOT NULL,
  `fk_idCreditos` int(11) NOT NULL,
  `fk_idCoordinadorTitulacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rediseños`
--

CREATE TABLE `rediseños` (
  `idRediseños` int(11) NOT NULL,
  `fk_idRediseñoC2` int(11) NOT NULL,
  `fk_idRediseñoC1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rediseño_curricular_1`
--

CREATE TABLE `rediseño_curricular_1` (
  `idRediseñoC1` int(11) NOT NULL,
  `UnidadesOrg` varchar(45) DEFAULT NULL,
  `CaracterPract` varchar(45) DEFAULT NULL,
  `Objetivo` varchar(45) DEFAULT NULL,
  `fk_idModalidad` int(11) NOT NULL,
  `PerfilDesarrollar` varchar(45) DEFAULT NULL,
  `PerfilTutorAcademico` varchar(45) DEFAULT NULL,
  `Metodologia` varchar(45) DEFAULT NULL,
  `Escenario` varchar(45) DEFAULT NULL,
  `EspacioIntegracion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rediseño_curricular_2`
--

CREATE TABLE `rediseño_curricular_2` (
  `idRediseñoC2` int(11) NOT NULL,
  `UniOrgCurricular` varchar(45) DEFAULT NULL,
  `NucleoProblematico` varchar(45) DEFAULT NULL,
  `CatedraIntegardora` varchar(45) DEFAULT NULL,
  `FaseAprendizaje` varchar(45) DEFAULT NULL,
  `Fase` varchar(45) DEFAULT NULL,
  `Metodo` varchar(45) DEFAULT NULL,
  `ProyectoIntSaberes` varchar(45) DEFAULT NULL,
  `Horas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_aistencias`
--

CREATE TABLE `registro_aistencias` (
  `idRegistroAistencias` int(11) NOT NULL,
  `CodRegistro` varchar(7) DEFAULT NULL,
  `fk_idEstudiante` int(11) NOT NULL,
  `Titulo` varchar(45) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Observacion` varchar(50) DEFAULT NULL,
  `Validacion` int(11) DEFAULT 0,
  `Calificacion` double DEFAULT 0,
  `HorasTrabajadas` int(11) DEFAULT NULL,
  `AnexoPDF` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registro_aistencias`
--

INSERT INTO `registro_aistencias` (`idRegistroAistencias`, `CodRegistro`, `fk_idEstudiante`, `Titulo`, `Fecha`, `Observacion`, `Validacion`, `Calificacion`, `HorasTrabajadas`, `AnexoPDF`) VALUES
(1, 'REG0001', 1, 'Semana 1', '2019-04-07', 'Entregado a Tiempo', 1, 1, 4, 0x255044462d312e370d0a25b5b5b5b50d0a312030206f626a0d0a3c3c2f547970652f436174616c6f672f50616765732032203020522f4c616e672865732d454329202f53747275637454726565526f6f74203133203020522f4d61726b496e666f3c3c2f4d61726b656420747275653e3e2f4d6574616461746120313438203020522f566965776572507265666572656e63657320313439203020523e3e0d0a656e646f626a0d0a322030206f626a0d0a3c3c2f547970652f50616765732f436f756e7420312f4b6964735b2033203020525d203e3e0d0a656e646f626a0d0a332030206f626a0d0a3c3c2f547970652f506167652f506172656e742032203020522f5265736f75726365733c3c2f466f6e743c3c2f46312035203020522f46322039203020523e3e2f4578744753746174653c3c2f4753372037203020522f4753382038203020523e3e2f584f626a6563743c3c2f496d6167653131203131203020523e3e2f50726f635365745b2f5044462f546578742f496d616765422f496d616765432f496d616765495d203e3e2f4d65646961426f785b2030203020373932203631325d202f436f6e74656e74732034203020522f47726f75703c3c2f547970652f47726f75702f532f5472616e73706172656e63792f43532f4465766963655247423e3e2f546162732f532f537472756374506172656e747320303e3e0d0a656e646f626a0d0a342030206f626a0d0a3c3c2f46696c7465722f466c6174654465636f64652f4c656e67746820343336333e3e0d0a73747265616d0d0a789cc55dcd6ee4c611be2fa077e071c68828f60f9b646018d895e48d8cddd55a2b3b09b2813196c69b01b4d25a2319b1df2ec79cf3043ee6ec174855ff911cb2ba7b66a8d880b53362b1eaebeeeaaaaf6a38adece8dda7c56df6f9e747af8fcf4eb2e2e8d5e2f643365bae0f4fdfcdbff8227b71729cfd78f0acc80bf88fb1bae05991550dcf14e3d9fdf2e0d99f3fcb6e0f9ebdb83c7876f425cbe097973f1c3c63205464f05694b9e259a9645ec1958f20f4f25d957d5883c6ec837e57db772f0f9efd6df6e6fcf55ccc5e5ccce5ec747ec867d989f9e7d5fc9015b3e7730eafe77fcf2ebf3a78760a16bf3e78b63b362e585e76a1694416c8e5d9e537f3c36a06866b63f7f8ec3f6fa6322d0a993341d93e3a86d136c6ea0582b838857f18e2107cf6c7c9405430fe8a02b131cdd9e9ebe32cebfb0a7b1a5f298bbc19e2b9387d899e70f66e7e28679717e025e7d9fc50ccfe3aaf66d9f1f91bf3ab57190a9d9c4ee7244d99d725054a2fc8bb0eaed337c767ede24d8602974a35148a93d3e97ca2e1b91094a1049fe04fe313a2cad900ce5b9c78bd41fea537e82578c05967efe885c9dee2c25c9cbe4567d1c2e75f9ee26bb36ce7f8f20dfe5aafe5ab53bd8ed32d9c68725512f8bf43db831f0afe9fcc6d1aedbc21eb6a605cbf980881e42a2f290493cdb254455e578495f7b3e379395b5dcd0fcbd9cdddd19bd54f7326664b1ce6cdfbf954104a51e45ca40d746cdf8869f78d5059c9452e865074d0f43f55ff17f39a7e1f139d682299503083e3e05f9ec24aea7d7b09c958877a1303ce4fbe01c66002c0b71000a4d9cd20c1d8b87f13efa6da7892e775438c62fa5d261498a3266dba58d6c08de5535b91bccc65f5e4566cc418b5f21e1202440ced3c102c940d16dacfaf973aa9bcc4d76fa70b1e90de493413c6a8322f13dd642c46c9e96354d100054f8d5153cd83220d4f6501e89a7c6a1bac5079cd7fa729c428dd5043ecf23288c2c7f8eaf2ecf81b88ce58dd65df612a1ee53dff87d0cc91e15604f209add4794359992e22b326e7e5935b29a5e6b04f6cc56697a7b5e2b2cb135bb1d965d44a4276d125cbfdaf207685bf7d40f2ca678f1f274b0415ec016aae27cc3795ca054b9becb17c534e9e6f2454f3d52e50d4c4507883f5bcac59de8c874fddf6ba383b3fc12e07d42bcf6d246595a96d4f30a8fe1b8530a49e696f3a3e9fce81792e05812f61baaa89a7ab51181ba4aa772baeeac91d49c80677780a96a3e7f70fab1f16570fd90b780781012818dc011542c5218257b8136b99575266f0a634f67ff8ccdefda397e44557923949837463c00d31e014556ed04ddea8be5340e8ace166a8cfa2ab303e78c62b640d76d00dcb6b62c84ed00035828311bf6d1b91851d22832abcf2e35339efdee70d6cb631a93e66020a72b258d9e40cefe548b93767eb958ee7f8e3167f2cd7838dbb97edbace4bd276d24a71b0cb7967a5aa82724f27ea916ad1d06a713bc51c00367567b9582d53d68bea95242121678de39656d4acbd867562b3c53de4e407ccc9234bb6a7f99ae7acda6bd10483a8cddca2b1a2cc6b6ad19ca8c1ea44438b26ed3c0b561a9cf64ef887a72c1a95cc939090b3868d16de84176df5df7b2820aeee6e46d66c4febb0d1c47e6b26599d57a2b7668aca0356b4835585d74cd969969c21c0add78c4ae34948027904ea0941cdda578fcb9fe687cdd806dbd32c4645d2559216ab84eaa1a89216cb89a62f566de7b784c85f8bde622545452ae727212167ad2c35d12166eddbb99cad96f811e93db0502a97ed8900c91fdf6bdd9460b9e44981d189260746eeb887121212d8d69b8c53ec230909396b4a29938c4667ed1dacdbafdf2fae71c1ee06ebb59fe5aae0e8b1fbac5761093207358005fcafd0d4137fb8b97497a5bf0c3faaa6e94920d9351296ec6eca6cd27163cd0a8b560c45909249d547e425fc451a8fa3744644533a128e97655e76030d670d8024d0f88b341ac7563c1a642b241e2fcd3ad21b8804b848233a88b4aa56c85f97ddeb9b265d463652d6f9485c5e9a75a4377061dae0258dcb5f0fe272c9a7834b05dcc949b38ef406ae924b9d90da152c7a93eaafcbeef54d932eb8a6e1f2d2015c0a8aa846d2f3e5af07e7cb0591b475f4d28175ac4495733598af6e50f022c129eb6e7adc36b6062fc1c387ce63c28c11d11b89c96e48efed584f0d1a8ea527113fe2ba70fb367547191bce86dbe2716db8475887b5284c4cc4def5daf484110ad1b965d353486eba2485e8e9b5082b74bba11d2f2e2da110dd89d5e1213b370e2174fe14323adae451aa6ab30a6f9ad4264fc1834d9e0eed7045b4edca981bab46fb7002eba06ae8141cb10e5121c732ff979a1d5e01f3f807be5a0ce9fd3ea62b994bcaf236bd29bb5609bd298393e84df5279bfae0344115dde431ad2e2612fa90c11e4f3be2788fc7031deff1f4474d55fc49cae83e896d1aed31704b1aecc093fa24062b590ef4074e7d5890a48c6e36d8c6cb1e03b7aca43bf058b3a18375ac7eed0f3cd62f082aa3a38aed5eec31704b7b5206ee18d25603a73e6048524657beb613b0c7c02daf4a717547c1b67275aae990a48c2e5e6d29bdc7c07be44d9025a4fe0846050bc45e2ab7bac2052265cf7ffca10205a035e76545ac00a4acf916beea946ca43d2f2d3ad2144914bdc2a06bd4b7a05590f55ba35e5ac4abb78051df4355c112c82da49316f1d2ac9ddb41a9e17b814946bd74c0a827a4f4487d232b697abd74607a3dc3a547dadd02f06bc76603e59215192d4a3afeed0372a85c4ad065cba556195d2e2568b3e5920f998172a9d5365add741c0ecaa5ae42cacbd314da7229a8d07a7067bc63e552c751581d1eb2f5ce2042eb4c41a3fd828743244dfe545b505f4e4ad115295a78addad241a7993fdde1e77cd8d75e64d7cb4c7f2671fb808faee9df5d5305cc8e3018b29c311c44ba6bcb076b30a51211918fba43aa229588fea24c9506dc551ede5a423921a86f9624298b9513dba077e5833198469404556f27298bd504dba0773540c76094df0aaa804d521623f6dba077447e2bf454219aa42cc6ceb741efd8f8569e43559349ca62143b19fd462169d37c1922d6f80c2c4dac7d7a2774f87e4c4d92659fd30915bec1510718b04fe5658cd45a3d04ebf2199cd6e3cbef3a40197de22e63d433acc7e76b1a8f2f0e43e3f2399dc663bda16604b5724b4d0ab8852405dc22798111f2e1162024e326b7353424286ee2427adca484f46c101da5f08b951d5600ffd09b9eeca4a4288b511da5f96898eaac177339bb595deb874f49aab3230e06d5463382234e758c41cf4f82734835655274c5c84e556d4d76bc39c74f82e0a9c64a9ab628ddd902bf8b7ec66227cf84f04b8aaaa7698b129e2df0bba8dbb1a8e2f829a29ca62d4a79b6c0efa2fd76f829b69ca62d4a7ab6c0efb2cc76fe43f1e5346d51da938a7f94f6989b49da531709b487d2e10bb1224a7b2815be202a12688f5742d31ea327427b027a7c915024d09e765024ed09ea71d93b80c713e7d0b85c860fe0b1dea0047aa2272dd60fbb6b4d4bb8a5a425dc3a7909cf463a426e1182426e865b5b8eb37484dcf40535b9b9096adaa03fb2de600a81924792e56682ae18f9298b0dd2a13f975edd03ddf948f29cdd2c56e6e681c538cd31f6523a3a922a6e1354c5484ea94f8fd88ae4786b091d1d4955b649caa214670bf42ed219836975b9a4287a92b228c1d902bd8baf1d83d19e88a4c87192b228bdd902bd8bea5ba18f3cebbc237a476eb640ef72c9369e5352dc38495994daa4a21fa536e66692dae039136587da40e067837447e9f0759756e2a84d4f85cb87940a5ffd381596daf494b894e995d0d4c6e86929404f8fcbaa013dbe1a68f5a8811e9778db4191d426a8c7e5e6001ecf8e43e372e93b80c77a03a4cc2e2d1976744801b790a4805b242f10e8e88464dce4b686e88e4e488f9b94909e0d4ac30afc5abc7b1480e5a12d4f96937155314223f806bd783e676c76f5b0fa497f2978758d8ff9eb038f9ad97af815f7091040d02f7a08b093b4340da45fd0f6c2b691d6f0abe15165fb20682afd29f410429c63197baa68f03bea91e5a3aae9145d31963558bf6de2b564c1782d6542bca674780629a3f1da88b8ef19f4451c99930921dbeb718f946f4859662513a2765895a739322170b7a32b46b07bce1152e5435010952700a101fa48c562e1bba8d02bcdc2ca7c18bda9ebce427b5d5be88af4432153fa7842eb67e631117a33851f3d0eeb8a8422d6483c08abb399cef1288defb1c45b2f21fa6064d25f2f5ce083c8abbb5bfc3cdf84462a30ed088881df972380a281c9dab3c124369991478bc3ca62a1094f29ddb94b666e2643133817ab62a189d2e14293516247476d945609b1515859e3246933c68f86d739f3e16df34b667109f4222311ee0ad2403a02941db7e246a49d93b1b656c710ce49df564786b36ed8a33405a4468f75d9ef5c173e721c07930ac7437bea288efd0e7519c5019b5ef16d71ec775aca288e42e5a18d3b0a63bf5352c660343c574a6e8b832aee773fada5aa21278770eca11db6d99881f7b31fe66af67e9e5de2c99497e71793596c1ad87772c4a43e32e82ffa74ccd38b37939d05c4ca0a9f2f7cc239640ab3cd740606aec894cc8bf1553ad35f5abfba795cdd67faf0ad9b6c6d0ee4ba8175bb73479dba120adeddcc59315be8972b7c798b2fd70fab8747e41257abdf40fc762ae478da0ef08721f2a36bc35cd4ec9381a60c90ebc92c5705f2e8a1656fea6a35ec97efbc8beaf1618ec50becb196f86d2fe0360c1042a683c5050df8d86f6bca1038203612cf2a84902890d230fc0d49a754e009d38826ea242d80c533292b7cb8b333b0b3db353253701b70b3477dbedbeab7db510e9a6478e8f3502cd563960304146499b4c6ca1a4abb323a61e403a509ba28e425cfc508701ddfd657f7ab79898c5ee08736e50c776d09bb56bbe41df8e6c7f9a132d7ef97d9d5bc329bf823107fbd536e960f467270e2d2ee8845c1f038ffe4b91ef065cdf76a57389a1f1dfe18b98c0e622e1b0fe95dd7d448d1f7bb619beb76dc459f0fe28cb40a7ce9ba85841d8496d317da99ed82a4ae5b03eeb2d6df97e814a4381dd8b8abdb0d53071e3550547327415578d3f31267b6e30e27cb4f4bdcf5b7d7cbdb2b7cb1825ca15309b9f177b0ce3067a811f3f19d6facb5ce1f9c37aa8e4f5216defb03e8bbec7dd8fa6ddabec93057b7ef3f81b49ef9fb870508ea1bf505adeb01d645878d3fe863396f16f0fe7b63046f59cc9b564463ba1b3f5d779fa9904c37068773616c5d43def02369915ff7de418ace7abf402e73b3d083fa112e3cb6b4e67e69be958dc35d81ee5f0ccd99724465cdf198eba863ee6d46e5c59813dd2cd67ae47a90ba410e435c5d2fd089fcbcadf349c12855e3e945c99b71343540dc939c8efde67220f653f777521e5c0fc47eaf808cec666e5ce8aee5000329604df8eb2eb8d7a3cf92c078452db1e16a6362933745284a059e2589ea0a8677e4ac55afb577f9f880a1e0de84a57fea40b2bcbfbda382fb4ec619c7d37487c6a3c1dd5a73ee1b9b37f2b992246dc1f03e044f84f71b1dead699eed26ec6f7b5fefb0f3fe31ece5c1afdd4c67b2cdf56d77778e71a6860dddeef69a09a59fd3fe31fb3b0b9e4ca64850f10e2498eb8dbe0a59078f674f2d28d8602d8266dffafff9186270cac130b7a5dd5762b123a3a918e75e341bfadeaf62beb45840d2cd8b235d364dab75019f2415408481833ad80f9b0bb2fb31117a01eacca44d247f5fe125485a3021ead3de2db3a183c824f5e43d58c14f0c1e56f323aec80011facc7935f0720e2d1c1584ba47e54c7324959383610f3f77bc5063204240c71f4ef31152c7d79c62280a8057e284991017b992603e4fd3eb6e9eb34196815506400e74689b13aaebdce888f8b9324ecee606538d0d1383a029499ce3ab3321c0b5b3b2385692bc2e80f7e9384b44b7cdd3f064ad59dfe78a6bb6fa228593dd27a6bf4330ae888a202cd95fefb2ba2c6e7f5aef0ef329e7d5c7c5832969ddc65cefffe074c92890f0d0a656e6473747265616d0d0a656e646f626a0d0a352030206f626a0d0a3c3c2f547970652f466f6e742f537562747970652f54727565547970652f4e616d652f46312f42617365466f6e742f417269616c2d426f6c644d542f456e636f64696e672f57696e416e7369456e636f64696e672f466f6e7444657363726970746f722036203020522f4669727374436861722033322f4c61737443686172203234332f57696474687320313436203020523e3e0d0a656e646f626a0d0a362030206f626a0d0a3c3c2f547970652f466f6e7444657363726970746f722f466f6e744e616d652f417269616c2d426f6c644d542f466c6167732033322f4974616c6963416e676c6520302f417363656e74203930352f44657363656e74202d3231302f436170486569676874203732382f4176675769647468203437392f4d6178576964746820323632382f466f6e74576569676874203730302f58486569676874203235302f4c656164696e672033332f5374656d562034372f466f6e7442426f785b202d363238202d3231302032303030203732385d203e3e0d0a656e646f626a0d0a372030206f626a0d0a3c3c2f547970652f4578744753746174652f424d2f4e6f726d616c2f636120313e3e0d0a656e646f626a0d0a382030206f626a0d0a3c3c2f547970652f4578744753746174652f424d2f4e6f726d616c2f434120313e3e0d0a656e646f626a0d0a392030206f626a0d0a3c3c2f547970652f466f6e742f537562747970652f54727565547970652f4e616d652f46322f42617365466f6e742f417269616c4d542f456e636f64696e672f57696e416e7369456e636f64696e672f466f6e7444657363726970746f72203130203020522f4669727374436861722033322f4c61737443686172203234332f57696474687320313437203020523e3e0d0a656e646f626a0d0a31302030206f626a0d0a3c3c2f547970652f466f6e7444657363726970746f722f466f6e744e616d652f417269616c4d542f466c6167732033322f4974616c6963416e676c6520302f417363656e74203930352f44657363656e74202d3231302f436170486569676874203732382f4176675769647468203434312f4d6178576964746820323636352f466f6e74576569676874203430302f58486569676874203235302f4c656164696e672033332f5374656d562034342f466f6e7442426f785b202d363635202d3231302032303030203732385d203e3e0d0a656e646f626a0d0a31312030206f626a0d0a3c3c2f547970652f584f626a6563742f537562747970652f496d6167652f5769647468203237372f486569676874203131342f436f6c6f7253706163652f4465766963655247422f42697473506572436f6d706f6e656e7420382f46696c7465722f4443544465636f64652f496e746572706f6c61746520747275652f4c656e67746820363239363e3e0d0a73747265616d0d0affd8ffe000104a4649460001010100dc00dc0000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080072011503012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f33a28a2bdf3e7828a28c120900e0753e94ae96e34ae1455ed2eca2be9a486490a3f96cd1003ef30ed547041e47438a85522e4e25b834ae145145686614514e450f2a21e8cc01a2f61a571b456d78bb488342f14dee9b6c58c30300a5cf3ca83fd6b16945a6ae86d59d828a28a64851451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140c5f2e4f2cc9b0f960eddd8e335b9636f3c49a968adb04d7013cbc8e1d95b2307dc138a4d2e39db4c92de58659ac6e4eefdc00cd1baf7c7d3b7bd68c68d1c51e669a68d1d25b3ba2818a90a731b0cf1cf18f515e562310eee07751a3a291058a1ba92d6f2de1cfd923f2658c6320f3f30f53cfe94bfd9a03d8e9d7285771927988232e0024127b74c568da436f677b24d6a50f9a55591d5d5449d4e0e0ff3a495adbcc79ddbe69b6fc91231568d48dc8090319f6af3feb12e7d0ecf62b975306df4b82e15ae26668fce477b7b7854bb1c1201f6191fa56310558ab0c303820d7653b44e9166516ed3aa43e628259d4619963551c0dc719279c5636a2204b062349fb3b49262395e525f03dbfad77e1715272b48e4af41257462d4907fc7c47fef8fe74ca7c3ff001f117fbe3f9d7a92d8e18ee74ff127fe4a0eabfefaff00e80b5ca5759f127fe4a0eabfefaffe80b5ca54d2f811553e20a2ad5be977f75179b6f673cb19380c8848a65cd8dd596dfb55b4b0eefbbbd48cd5732d85caed720a28a544796458e352cee405503924f414c9128abffd87ab7fd03ae7fefd9aad0d9dcdc4ed04304924ab9ca2a9246297322b95f621a2afff0061eabff40ebaff00bf668fec2d57fe81d75ff7e8d2e78f70e4976285157ffb0f55ff00a075d7fdfa347f61eabff40ebaff00bf668e78f70e49762851566e34dbeb48fccb8b49a24ce373a10334f8749d46e225961b2b89236195654241a7ccad7b872b29d157ff00b0b55ffa075d7fdfb34d7d1b538d773e9f7217d4c66973c7b8724bb14a8a1d191b6bab2b7a118a4aab8acc5a2af2e8ba9ba065d3ee4a91904467915567b79ad65314f13c720eaae30692927b072b445452d1542128a5a280128a5a2800a544695d63452cec7000ef495d1f81ada3baf14db89402103381ee2b9f155bd8d1954ec6b429fb4a8a3dcd4d234b834c5513457371705b958e5d8aa7fad3f58cdaea3e4ac4a15a1136eda32af939191d7d6b36f6faedb5dd47cb68d63498a80e3a0c9c0fe75b161acdafd93cabdb512b2ee2cf1939033ffd7af9f9d0acdaaf6bdcf5e3529a5ecf6b0cb99ecd35682e2caeb6449106668e4077484727078150406c56d35033cc1e6dc1ad99e4f5232b81c0acc9347d3aeb7496f398803cab1fe5f8568e95e178c4d6f218259f2e1b3d00008ffebd3a91a3469f349b4c21ed272b4516b45533cf799b51b6d50084742c0e771dc7fa551d63488f528da7b38ae1268c7314926f047a03dabb1bfd36e64d3e4874db6f2dc91b5a47e3af3fa66b9cd2a1d4b4df19da59dfb467cc52db53a57161f16a4e55a0f55d0deb51b254e4b7381e870460f7a7c3ff001f11ff00be3f9d687892dd2dbc477f0c63e5598e07a567c1ff001f11ff00be3f9d7d6d2a9ed68a9f7478338725471ec751f127fe4a06abfefaff00e80b5ca5755f127fe4a06abfefaffe80b5cad5d2f811353e23e8bf83a3fe28083febbcbffa15731f1d471a3fd64fe95d3fc1dff9102dff00ebbcbffa15733f1dbeee8ff593fa579f0ff783d09aff00673c6ab67c21ff0023a687ff005ff07fe8c5ac5adaf087fc8e9a1ffd8420ff00d18b5e8d4f819e7d3f891f57e063a57857c32c7fc2d3d53fedbffe875eedfc35f27dcea77ba4f89f51b8b1b878263712aef43ce371af370f172528a3d1c4c945c59f57fcb4715f2bff00c271e25ffa0c5cff00df55e97f07b5fd5758d4b524d42f65b858e252a1cf439a5530d2847998e9e2633972d8f5de3d051f2d727f122faeb4df04de5d59ccd0cea576ba9e4735e07ff09c7897fe83173ff7d52a5425515d1556bc69bb347b1fc67c7fc211c7fcfca7f5adbf86c07fc2bdd1fd7c93ff00a11af9db51f12eb3ab5b7d9efafe69e1ceed8e78cd7d15f0dbfe49ee8fff005c4ffe846aeb5374e9a4cce8d4552a368ea7e5a3e5231c578efc61d7b55d235ad3e3b0bd96dd1edcb30438c9dc6bcf2dbc7be26b59d665d56672a73873906a618694e3cc9953c4c612e568fa03c4be07d1bc4968e93daa473e0ec9e350ac0fbfad7cdde20d0ee7c3baccfa6dd2fcf19e187465ec6be94f04789078a7c3306a0ca166c98e503a6e1d6bcebe3a69e8ada56a2a3f78c1e16fa0c11fccd5d0a928cf91935e9c651e747abe8207fc23fa77fd7b47ff00a08af9f7e2c7fc940bcff713f957d07a0ffc8bfa77fd7b47ff00a08af9f3e2c7fc940bcff713f95185fe2b0c4afdd2389a28a4af4cf305a2928a005a2928a005ed5b1e16bffecef11da4cc7085b637d0d63d0090c08ea0f15cf8aa6aa51945f635a3271a89a3b6bbb510f8d6ea3651b64bc85f18e08624d7a34de1cd29a762176b4f682260985cb9556d9f520e41f635c8eb312aeada6dd4842a18a1676ef9563fa6335d45e7882cf4b682595cac9771ab1da038f9428423df033ff0335e6612a39d08f2f43d3a94d426dbea6078db4fb0b3d3b4e360a9b181f9c2e33f29ff000ae934c51fd916a071985791f4ac2f1dbc72693a6bc43084b903d3eff15b9a7c891e8f6acec15444bc93ed5e2f125dd0a76ee76e596f6922b680aff64b82f2bbff00a54ca371e9891ab26f61cf8fe2ba7c086daccbb9f4eb5a5e1d9d1adae5378dc6f272173ce379aa9af0db16b32a7fad166a07d326bc0c373471728f7d0f42b5a5453ec793ea775f6ed52eaeb39f36466cfe35041ff1f11ffbe3f9d462a483fe3e23ff007c7f3afd3a9c542928aec7c74a4e552efb9d3fc4aff9281aaffbebff00a02d72b5d57c4aff009281aaff00bebffa02d72b554fe042a9f11f45fc1dff00927f07fd7797ff0042ae67e3b74d1feb27f4ae97e0e303e00847a4f2e7fefaae73e3ac4e60d265c7c81dd73ef8af3e1fef07a33ff773c62b67c21ff23a687ff61083ff00462d6356e782e279bc71a1a460922f626fc03027f415e854f819e753f8d1f5776fc2be43d6ff00e43da8ff00d7d49ffa11afae9d82c658f40326be43d5dc3eb77eebf75ae6423fefa35c582f899dd8dd914ebd6be05ffc85b55ffae2bfcebc96bd6be05ffc85b55ffae2bfceba713fc2672e1bf888eefe2bff00c93fbefaaff3af9aabe95f8aff00f2205f7d57f9d7cd559e0fe035c6fc615f4ffc35ff00927ba3ff00d713ff00a11af980d7d3ff000dbfe49ee8ff00f5c4ff00e846a71bf0a1e0be2679c7c718ddf5ed34a2337fa31e833fc46bcbedf4fbcbb9d61b7b59a4918e02aa1afaee5b68276066863908e0175071491da5b42dbe3b7891bd5500358d3c4b84395237a985539735ce67e1d787a6f0df84a1b4bae2e2463348bfdd27b7e95c47c75bc431693640fef017948f6e07f435e9dae788b4df0fd8bdcdfdca46aa32133f331f402be67f16788e7f146bd36a136550fcb1479fbaa3a0a2842539f3b0af38c21c88fa7f41ff00917b4eff00af68ff00f4115f3dfc59ff0092837bfee27f2afa1341ff00917b4eff00af68ff00f4115f3dfc59ff00928379fee27f2a785fe2b162bf848e273451466bd33cb0a28a3340c28a28a002ae69764f7fa8c30aab15dc0b903eeae79354ebaaf0437cfa9c31b84b992dff00744fa835c78ea92a7424e2746160a5552674da8c76fab78a12c3cc223b6893241ea40638ac8d374fb8d561ba8ee4856b3708493d3ef67e9d2b32d66bdd375b9a6b86f32e729393ff003d14f040fa86af42b5b092e6d6f64fb3bc16f74a19c9189338209c7be07eb5f2952a56c24a2a93ba691f6187852c461dfb55d4c3f116ab6da9e85a6c56e4efb74d9203eca79ad4be2b71a568da6f05ae9e3cff00baa371fe58fc6b275bd0adedb4d6974f5744552ae09e54e3ad45ad4b74c96060478a4b481648a755273951915d38a92c5c609e8d33cf951fab4e56d5325d1fcab3bab6bf44da8da8dc5abfd18fca7f023f5ad6bf9525f135d69cc79bab0c267d4135c3d9cd73b731caf790c53f9fe4aa121a427be2bad907dabc756f72f80b6f60249bfd8241e2b8abe1392b73b77b2ff86269d6e6a7ca91e592c6d0ccf13fde462a7f0a583fe3e23ff7c7f3ab3aacf15cea971342b8477247bf3d6ab43ff1f117fbe3f9d7d9d29374537bd8f9e9a4aa34bb9d3fc4aff9283aaffbebff00a02d72b5d5fc4aff009283aaff00bebffa02d7295a52f811353e267b8fc0ed5525d1aff4a63fbd826f3947aab003f423f5aebfc79e161e2bf0f3da2305b88dbcc858ff007bd2be77f0bf88aebc2faec3a95b73b7e5910f4743d457d29e1ef15e95e24b349ec6e50b11f342c70e87e95c15e1284f9e27a1879c670e491f36dd78435fb3ba7b7974bb8dea71954c835e9bf0afe1fdee9fa9aebbaac46168d08b789bef648c163e9c135ec1b54f500d41777b6b616ed3dd5c470c6a3259d801533c4ce71e5b150c34212e6b94bc4ba9c5a47872faf663858e16c7b9c702be4d672eecedd58926bd1be267c404f1148ba5e98cdf6089b2efd3cd6ff0af38aeac2d2708ddf539315554e56415eb5f02ff00e42daaff00d705fe75e4b5eb3f02cffc4db55ffae0bfceaf13fc26461bf888ef3e2bff00c93fbefaaff3af9aabe94f8ac73e00befaaff3af9aeb3c1fc06b8d7ef857d3ff000d7fe49ee8ff00f5c4ff00e846be60afa7be1b11ff000af747e7fe589ffd08d2c6fc28304fde6721f163c59acf87b57b1874cbb30c7240598000e4ee35e7337c47f154ebb5b54900ff0064015d67c73ff90f699ff5ec7ff4235e555587a7174d3689c454929b49966f751bcd466335edccb3c87f8a46cd56a28ae9b24ac8e74db7a9f5d683ff0022fe9dff005ed1ff00e822bc47e25f8635ad4bc6d757367a74f342c8803a2f078af6dd088ff847f4effaf68fff0041157f8f515e442a3a736d1ebce9aa9049b3e56ff8423c4bff00407b9ffbe693fe109f12ff00d01ee7fef8afaab8f5147cb5b7d727d8c3ea70ee7c7b7769716174f6b75134534670e8c3906a1aea7e247fc943d63febaaff00e80b5cb57a30778a6cf3e6ad2b051451544852c72bc52078dcab0e841a4a315328a92b31c5d9dd1de5fca754d1ec3c4762a0dcd9011dd46be9fe7f9d769a7ea11dfda43a8452a2c320dce09fe2c60f1df3fa7233dabc9341d767d0af4ca804904836cd11e8ebfe35d3b2148e3d4b4032be9ecd97808c796d9c900fd6be5f15869d17c8f6e8ff0043e8b058b4f5fbce8357bf85f49bd4b345f2c0dae49c919cf03b0adab700f87a3e33fe8dff00b2d79cddeb37da92888ba340325d5502b038ef5dcc9aada58e836f14afba69600b1c29cbb7cbe95e3e2f0f5d538f7b9ead49d3e6ba7ba313c357369a2e9faa5dcb858c3236deecc41c01f5aa7aa5ec9a3e8175757385d535662760eb1c7d87e02987ecda32ff00696b1136f53fe896a39527d49ee471cfe55c6eabaa5ceb17ef7772d966fbabd947a0af5f0b82f6f5b9d6b1eafd0f0f1188f674f97a94a9f0ff00c7c45fef8fe74ca7c3ff001f11ff00be3f9d7d43568e878b1f88ea3e24ff00c941d57fdf5ffd016b94aeabe24ffc940d57fdf5ff00d016b95a54be043a9f1336b4ef0ddc6a4b6e6399104f13ca3703c0570a47e66b57fe10bd534db960d7c96ec1caac884e186e550411d8ee1f9573f6fadea569622ce0bb74b70db8203d0e41fe601fc28935cd4e587ca92f2568c6700b74cb6efe7cd29464d96a5048eee25f1a5a69d72cde22b987ec880c90ee24ae41c0e48f4aafa878335bbebe8e2bed77cd699246fdeeecb142a30149f9bef76f435c79f106aadf68dd7923fda7997773b8e3152c7e29d6e29c4cba84be60dd86cf4dc413fa807f0acd5292d517ed62d599a16fe0bb89edd5cde451c926d58e3753f3310c707d3ee9a53e08bd863b59aeee238219ed9ae4b95276004707df9cd6645e25d6604748efe550ff007b079eff00e2688fc4dacc52175bf9777b9cf603fa0abb5422f4fb16edfc2fe66b377a6cfa8450bdbc4d307d8583a052e48f4f9466b58f83ee34eb6b49a1d55a0f3e1fb44b30c8511940e380724ff8d726752bd6bc9af1ae1cdc4cac92484f2c194a91f9122ad2f8935743032de38681424678e142ed03e98e28719b60a5046f2f85f57d4b4ffb445ab7da6cd998162cdd881920f639fd2b32e7c2b2dac30ab5dc6d7970c0416ca872e0bec073d073daa97fc241ab798cff006e9416ce707ae4827f5029f1f893588a15892fa508adb80cf439cff3e68519a07283dcbb3f842eedfc567419665f336798b2aa121976eec81d7dbeb5a47c29af5ac6162d45bc85ba16a0a3b60671f37d326b966d56fde58e46ba91a48e3312b96e429ce467d393f9d4d16bdaac091a477d2aac6bb5577700673fce8719340a504741a9f842e216b83a86b68cf6f6e27dae8c5b616dbd3b1c9e9f8d5493c1cf03ac771a8c11cb2ccd1409b18f99b4804e7b727f4ac59b56bfb812096e5df7c4227c9fbc808207e6054fff000916afe4c917dba5db23176e7b9c67e9d07e5428c907341bd4b375e19b9b5d2a6be6990ac4c54a007270fb6adc5e08d41df4f123f96b790b4c0f96495c0cedc7738c7e759cfe27d6646919efa46f31363038c119cff3a8dbc41ab32b2b5fcc549ce3774e31c7a714ed3b0af036e1d1f535d4b51b0975b68469f22c25c3332b12db4631d29355d235ad22c2dee6e3559b74d218c22b9e0862a79cfb7a562c1afea96f7773750de48935c9dd2b8eac739cfd7351dc6b1a85d5b476f3dcb491c672a1bb739ebf5353c8ee573ab1bd69a56ad3cf70936b5240b14eb6caeccc77c8dd071d07bd49a6681e21d5248234d4a58da59a785b748d84f29549271d8ee007bd638f156b6b26f5bf9031001231dba1fafbd447c45abb42909bf98471c7e5a00d8c2e41c7e6abf90a3d9b0e78d8a374275bc992e4b19d1cac9b8e4ee1c1a8aa4b89e5bab892e2672f2c8773b1ee7d6a3ad96c62f70a28a2992145145030aded0bc5b7da1c7f6745496d724989fdfdeb06835857c3c2bc792a2d0d2955953973459dc7fc245e18bd7f3ae74b920988c3344719fca90f8ab41d3dfcdd3f4b69670302499b38ae228af3ff00b1e8decdbb7a9d7fda153b234b58d72f75cb8596edc1099088bd141acda28af4a9528528f24159238e7394e5cd2dc29d1b059918f40c09fce9b4568f6b109d8ddf196ab6dadf8b6ff51b32c6de665285860f0a07f4ac2a28a518a8ab21b77770a28a2a84145145001451450014514500145145002514b45002514b450014514500145145001451450014514500145145006d7910ff00cf24ff00be451e443ff3c93fef9145152507910ffcf24ffbe451e443ff003c93fef914514083c887fe7927fdf228f221ff009e49ff007c8a28a003c887fe7927fdf228f221ff009e49ff007c8a28a061e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145002f910ff00cf24ff00be451451401fffd90d0a656e6473747265616d0d0a656e646f626a0d0a31322030206f626a0d0a3c3c2f417574686f722850454e454c4f5045204e415448414c592054454c4c4f204a494d454e455a29202f43726561746f7228feff004d006900630072006f0073006f0066007400ae00200057006f00720064002000700061007200610020004f00660066006900630065002000330036003529202f4372656174696f6e4461746528443a32303139303730333032313835312d30352730302729202f4d6f644461746528443a32303139303730333032313835312d30352730302729202f50726f647563657228feff004d006900630072006f0073006f0066007400ae00200057006f00720064002000700061007200610020004f00660066006900630065002000330036003529203e3e0d0a656e646f626a0d0a32302030206f626a0d0a3c3c2f547970652f4f626a53746d2f4e203133322f466972737420313038312f46696c7465722f466c6174654465636f64652f4c656e67746820313939303e3e0d0a73747265616d0d0a789c9d59db6e1b37107d2fd07fe063fb90ec0eef2c8202692e6890d6356c177d088a42b1b7b61a5932e435d2fc7dcf6849cb2e86dc588013ae76499eb99c1992438aaa579a9423a5b5a29494364a3bbcb3caf478e994715a69af6c8f0f415967958ecaf5f86094735e19ad7c1fd14d798f9756050aca900a81a750d1e05b52312685a76449e12fa5880915f540324111f598d9a20df86c146948613ddad80351910188857c06b3d8a4c83a7c8f8a580c884ece6b88a4c8935516f379cc63303e402a8dfeb14f0a6a50f441397c4f0415f03d79bc87ce3d1474116d24e5a13580a014da649487de6c114068033c28a90d7e7818c242554ca92d74f51ed60218a6d42e7ae5319f87ae0efd3df465c3851454c07c11c207cc9760d4c022026c672ed2b01b5a4c12605a826b020c4701fd6147cd06856a3a0605d318c3963568935751c3f89837b2cb2067c47c0ecaee4c01bb448c0f6414869a002512c647387de71880278c4ff05b42ff8449134cd9c3493081edf111109660fce4e00a50835d08451554b286d899f095813540226b0982618085360425ad833ad4c38b9efd01f1ac8740d4b3bf60a41d0162cfb36054847ba96757c31e0472d904818960cc5e334d7a3cf0cc50c7113b1afd1c41132210423335a0b1630613fe3903fb12fbdc7aee0c123808481af3b8c09d41030fdd413c3cc0326c78177654c43c11821328e9229c49cc9584e909c1e11214064dc116cd7c051d7a388ce027cf24222604e80608308269042e83524c3e0e1c58160f2015cc8107b0c80199208a07aadaf1d07324204abc4f4c7dcc1c1c77c6cc91b833732d8040f892f003c60b3de624d835f4701f217402711c41a140701821d8829e22098464333131d9ec4c48b6313a7818137f21728879b460092c1538965fbce88e7950af4ebad3eeb83bfb723374a7e3f6ee7c7cb31aaebbf71f54ffa7ea8e2f95e13e3ffef8ed378f87bc5d5ede6d87eee56afcee6a1c6f6e7fe8bacf9f3f3fbf1b6f56cf878bbbe7c37977bd58df2d567f2daf1797c3badb35b7dd727d3b2ec7bbf3e566bd5875bf9f1dfff2ecddd1e9d9bbb3df5fbdfbede8e52fcfdebe7afecfcde5f74a12c9c7a64ca21af4f421fae943ccd387d8a70f714f1fe29f3e244843c0f6168a481684c134e6ec67d166bbdee240db04135d3a07e6aa607d1978220edc299e4592c6234514e06171214e41d3d83d646cea27f2cf84b67ea9269fed9b602273f760af45ea52d598be6dcc9de259245158d314568c19ab9b96b155cf59d70413a36d0f265bc61f689949f12c9208dce68c18e7b6cd195be58c6b7346cc10b6cd1977286726c5b348ed00fc6973f145a45d988c3b85f22468332f9e2d3eae0671a67eca06fe7f11ddcea8e2b2e57c6b481287b8a63f5d5531d7240feffec49c3a8757e58f6ff287778562da99c1f3550af9e6eac49b3d3198e7f0aa0b946f2e50c4479743f0aac1ef9b5cc1ce980ee18baff2c537f9a2f96875085e3ddf147bca29600a95cce24caeecf3ec8a6ca12cb80861ee65ab2cd3cefd2fa84393559a0f94125268ef44429555a1c92a2d2e7e7b3031eb862aa54293525a8c9739b02a9f429b4fe2e235075625536c261f2d46e60c58ac669ed8e68898f9e7c0aa04896d828839600eac4e90f6be780a8eccd9cca6ece7ec816c9b2cb5a84ffb4c251e2ae2fd6e418cae584d003135c1c484b607138d97aa7b92444d3071873f07a6ab60cd4db31193d41c58d567a9b9693662929a03ab6e9a539b2062929a03ab1224b5092226a919302eaa1d165e536864d2663a6547671764e364b1c5ed6cdf4c4e46cc845c706b05189703ab78cdfc64e4ea4ddf4e505c6cace235d73023e6c379bcfaf1a06f2e6356ae98cde2d5fd47cd95cccaa5ad393caaae655c866de1c975b159bc3a5fa8c9172b17d566f10e5dd172b8141a177a15b71777143315f165cddaa53fb9f647eda58d2be055bc66eeb272e190669297ae262faeafb7f0e4aae32c5e7585e3ea7d0b4fce64b37875ffe9e62a67e54c368b575de7f8e6a1852767b259bc3a5f74932f4ece647378e6d0c52e874ba171a157717b71473153115f14b25da87672ce9c291e53bd544ded5ab59373a699c961f56af59c2573b99aeaf56a32ed3b0639eb9a99dc64ea5c336daec9b9d0cc70ad5e429eb550e650bd62be2f15d40a8ad3a12aeffeca925402a4b8b7287158a5d1e58355d6f36b6f880eb8227207dc113939e3b6c71c707be7e4cc571cf47a737e773dacc74a558c0d9853c9b4b6a89c50a6ccaf725a99f2b2cac945e771532a72d338971391cd9ecda564b2e57dde32d8c735a407629d6d87e164b319bb93cd6af87571a3f2e6e778b18502fc554d3b979decf77bd0fbaf47c3bfe3fbe18ba23cf55bccb5de8c4377c4ffbd595fec7f9ca1ebc7cdbfdde9703e765ced1ab6d3338f29cfefd6abe57a38bd5ab084fce2e51a332cc6e5669d7f6fc7e5df0b3cec7efdb1d97efab8d97cda9b9cdfdc5e0dc3c8428eddaf8bf3ede6c1ef5757f8ffc1efd7cbc56a73f9e0c5e96a79313ce83be1a0dbe576719def97b3ae4777d7b71f60114a8fac7bb4b81e6e3f4c3ff7fe7eaaa38b87a7972e3d6ca68af37d631e35ee51131e35e9613355fcee9b69c0542ccb65ac5c60caa59f5c94c9b58c5c65c8e7ff7c32cf67e67c9a2de7cc72382b87a6729829878cb2f92f9bf2b2592e5bcbb2e52b5bb1b2452a5b97b2a5284b7d5918cb82559681929ebf365ef25570bea4cd7799f99631dfdfe59bb57c67956f937270ffa9befde63f23dc34960d0a656e6473747265616d0d0a656e646f626a0d0a3134362030206f626a0d0a5b203237382030203020302030203020302030203333332033333320302030203020302030203237382030203020302030203020302030203020302030203333332030203020302030203020302037323220373232203732322037323220363637203631312037373820373232203237382035353620302036313120383333203732322037373820363637203020373232203636372036313120373232203636372030203636372036363720302030203020302030203535362030203535362036313120353536203631312035353620333333203020363131203237382030203020323738203838392036313120363131203631312030203338392035353620333333203631312035353620302035353620302035303020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302037323220302030203020302030203020302036363720302030203020302030203020302030203020373738203020302030203020302030203020302030203020302030203020353536203020302030203020302030203020353536203020302030203020302030203020302030203631315d200d0a656e646f626a0d0a3134372030206f626a0d0a5b2032373820302030203020302030203020302033333320302030203020323738203020323738203237382030203020302030203020302030203020302030203020302030203020302030203020302030203020302036363720302030203020323738203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302035353620353536203530302035353620353536203020353536203020323232203020302032323220383333203535362035353620353536203535362033333320353030203237382035353620353030203020302035303020353030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203535365d200d0a656e646f626a0d0a3134382030206f626a0d0a3c3c2f547970652f4d657461646174612f537562747970652f584d4c2f4c656e67746820333130323e3e0d0a73747265616d0d0a3c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e3c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d22332e312d373031223e0a3c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a7064663d22687474703a2f2f6e732e61646f62652e636f6d2f7064662f312e332f223e0a3c7064663a50726f64756365723e4d6963726f736f6674c2ae20576f72642070617261204f6666696365203336353c2f7064663a50726f64756365723e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a64633d22687474703a2f2f7075726c2e6f72672f64632f656c656d656e74732f312e312f223e0a3c64633a63726561746f723e3c7264663a5365713e3c7264663a6c693e50454e454c4f5045204e415448414c592054454c4c4f204a494d454e455a3c2f7264663a6c693e3c2f7264663a5365713e3c2f64633a63726561746f723e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f223e0a3c786d703a43726561746f72546f6f6c3e4d6963726f736f6674c2ae20576f72642070617261204f6666696365203336353c2f786d703a43726561746f72546f6f6c3e3c786d703a437265617465446174653e323031392d30372d30335430323a31383a35312d30353a30303c2f786d703a437265617465446174653e3c786d703a4d6f64696679446174653e323031392d30372d30335430323a31383a35312d30353a30303c2f786d703a4d6f64696679446174653e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f223e0a3c786d704d4d3a446f63756d656e7449443e757569643a36434344454446302d463442302d343531342d423031302d4543423739303741303242443c2f786d704d4d3a446f63756d656e7449443e3c786d704d4d3a496e7374616e636549443e757569643a36434344454446302d463442302d343531342d423031302d4543423739303741303242443c2f786d704d4d3a496e7374616e636549443e3c2f7264663a4465736372697074696f6e3e0a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a3c2f7264663a5244463e3c2f783a786d706d6574613e3c3f787061636b657420656e643d2277223f3e0d0a656e6473747265616d0d0a656e646f626a0d0a3134392030206f626a0d0a3c3c2f446973706c6179446f635469746c6520747275653e3e0d0a656e646f626a0d0a3135302030206f626a0d0a3c3c2f547970652f585265662f53697a65203135302f575b2031203420325d202f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d202f46696c7465722f466c6174654465636f64652f4c656e677468203331353e3e0d0a73747265616d0d0a789c35d3e93695011406e00f15a2389d734412e18450860a219a3316a5724a249434c8106932dc879f5697d52574032d7d7d4fed1ffb597badfdee7f3b08c2dadfcf087b2c08fef2033f2332f323e2d311895cfc8a48a690c6ef8822b9a6fa301b5e4904dfb1892d6ce31bfe6dee84b9e681ff530632918503388843c8460eca7114477018b9c8471e4e218e4214e01862284612091c4711ca70022538895254601d4d388f4a9c4635aa700629d4a20667518706d4e31c1ab1861eb4a01917d08a4bb88876b4e1323ad0854e5c4137867115bdb88e6bb8891bb88d5be8c31d0ca01f4318c404eee12e46318207b88f8718c3633c421ae3788a277883493cc3734ce105a6318b19bcc41ce6f10a0b788d0f7887b758c47b7cc43296b08a157cc2063ee30bbe861fd7b1113d6ce75e44f76e447f6110fc0172a438bc0d0a656e6473747265616d0d0a656e646f626a0d0a787265660d0a30203135310d0a3030303030303030313320363535333520660d0a30303030303030303137203030303030206e0d0a30303030303030313638203030303030206e0d0a30303030303030323234203030303030206e0d0a30303030303030353234203030303030206e0d0a30303030303034393632203030303030206e0d0a30303030303035313239203030303030206e0d0a30303030303035333630203030303030206e0d0a30303030303035343133203030303030206e0d0a30303030303035343636203030303030206e0d0a30303030303035363239203030303030206e0d0a30303030303035383536203030303030206e0d0a30303030303132333331203030303030206e0d0a3030303030303030313420363535333520660d0a3030303030303030313520363535333520660d0a3030303030303030313620363535333520660d0a3030303030303030313720363535333520660d0a3030303030303030313820363535333520660d0a3030303030303030313920363535333520660d0a3030303030303030323020363535333520660d0a3030303030303030323120363535333520660d0a3030303030303030323220363535333520660d0a3030303030303030323320363535333520660d0a3030303030303030323420363535333520660d0a3030303030303030323520363535333520660d0a3030303030303030323620363535333520660d0a3030303030303030323720363535333520660d0a3030303030303030323820363535333520660d0a3030303030303030323920363535333520660d0a3030303030303030333020363535333520660d0a3030303030303030333120363535333520660d0a3030303030303030333220363535333520660d0a3030303030303030333320363535333520660d0a3030303030303030333420363535333520660d0a3030303030303030333520363535333520660d0a3030303030303030333620363535333520660d0a3030303030303030333720363535333520660d0a3030303030303030333820363535333520660d0a3030303030303030333920363535333520660d0a3030303030303030343020363535333520660d0a3030303030303030343120363535333520660d0a3030303030303030343220363535333520660d0a3030303030303030343320363535333520660d0a3030303030303030343420363535333520660d0a3030303030303030343520363535333520660d0a3030303030303030343620363535333520660d0a3030303030303030343720363535333520660d0a3030303030303030343820363535333520660d0a3030303030303030343920363535333520660d0a3030303030303030353020363535333520660d0a3030303030303030353120363535333520660d0a3030303030303030353220363535333520660d0a3030303030303030353320363535333520660d0a3030303030303030353420363535333520660d0a3030303030303030353520363535333520660d0a3030303030303030353620363535333520660d0a3030303030303030353720363535333520660d0a3030303030303030353820363535333520660d0a3030303030303030353920363535333520660d0a3030303030303030363020363535333520660d0a3030303030303030363120363535333520660d0a3030303030303030363220363535333520660d0a3030303030303030363320363535333520660d0a3030303030303030363420363535333520660d0a3030303030303030363520363535333520660d0a3030303030303030363620363535333520660d0a3030303030303030363720363535333520660d0a3030303030303030363820363535333520660d0a3030303030303030363920363535333520660d0a3030303030303030373020363535333520660d0a3030303030303030373120363535333520660d0a3030303030303030373220363535333520660d0a3030303030303030373320363535333520660d0a3030303030303030373420363535333520660d0a3030303030303030373520363535333520660d0a3030303030303030373620363535333520660d0a3030303030303030373720363535333520660d0a3030303030303030373820363535333520660d0a3030303030303030373920363535333520660d0a3030303030303030383020363535333520660d0a3030303030303030383120363535333520660d0a3030303030303030383220363535333520660d0a3030303030303030383320363535333520660d0a3030303030303030383420363535333520660d0a3030303030303030383520363535333520660d0a3030303030303030383620363535333520660d0a3030303030303030383720363535333520660d0a3030303030303030383820363535333520660d0a3030303030303030383920363535333520660d0a3030303030303030393020363535333520660d0a3030303030303030393120363535333520660d0a3030303030303030393220363535333520660d0a3030303030303030393320363535333520660d0a3030303030303030393420363535333520660d0a3030303030303030393520363535333520660d0a3030303030303030393620363535333520660d0a3030303030303030393720363535333520660d0a3030303030303030393820363535333520660d0a3030303030303030393920363535333520660d0a3030303030303031303020363535333520660d0a3030303030303031303120363535333520660d0a3030303030303031303220363535333520660d0a3030303030303031303320363535333520660d0a3030303030303031303420363535333520660d0a3030303030303031303520363535333520660d0a3030303030303031303620363535333520660d0a3030303030303031303720363535333520660d0a3030303030303031303820363535333520660d0a3030303030303031303920363535333520660d0a3030303030303031313020363535333520660d0a3030303030303031313120363535333520660d0a3030303030303031313220363535333520660d0a3030303030303031313320363535333520660d0a3030303030303031313420363535333520660d0a3030303030303031313520363535333520660d0a3030303030303031313620363535333520660d0a3030303030303031313720363535333520660d0a3030303030303031313820363535333520660d0a3030303030303031313920363535333520660d0a3030303030303031323020363535333520660d0a3030303030303031323120363535333520660d0a3030303030303031323220363535333520660d0a3030303030303031323320363535333520660d0a3030303030303031323420363535333520660d0a3030303030303031323520363535333520660d0a3030303030303031323620363535333520660d0a3030303030303031323720363535333520660d0a3030303030303031323820363535333520660d0a3030303030303031323920363535333520660d0a3030303030303031333020363535333520660d0a3030303030303031333120363535333520660d0a3030303030303031333220363535333520660d0a3030303030303031333320363535333520660d0a3030303030303031333420363535333520660d0a3030303030303031333520363535333520660d0a3030303030303031333620363535333520660d0a3030303030303031333720363535333520660d0a3030303030303031333820363535333520660d0a3030303030303031333920363535333520660d0a3030303030303031343020363535333520660d0a3030303030303031343120363535333520660d0a3030303030303031343220363535333520660d0a3030303030303031343320363535333520660d0a3030303030303031343420363535333520660d0a3030303030303031343520363535333520660d0a3030303030303030303020363535333520660d0a30303030303134373134203030303030206e0d0a30303030303135323730203030303030206e0d0a30303030303135373734203030303030206e0d0a30303030303138393630203030303030206e0d0a30303030303139303036203030303030206e0d0a747261696c65720d0a3c3c2f53697a65203135312f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d203e3e0d0a7374617274787265660d0a31393532340d0a2525454f460d0a787265660d0a3020300d0a747261696c65720d0a3c3c2f53697a65203135312f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d202f507265762031393532342f5852656653746d2031393030363e3e0d0a7374617274787265660d0a32323730330d0a2525454f46);
INSERT INTO `registro_aistencias` (`idRegistroAistencias`, `CodRegistro`, `fk_idEstudiante`, `Titulo`, `Fecha`, `Observacion`, `Validacion`, `Calificacion`, `HorasTrabajadas`, `AnexoPDF`) VALUES
(2, 'REG0002', 1, 'Semana 2', '2019-04-15', 'Entregado a Tiempo', 1, 1, 5, 0x255044462d312e370d0a25b5b5b5b50d0a312030206f626a0d0a3c3c2f547970652f436174616c6f672f50616765732032203020522f4c616e672865732d454329202f53747275637454726565526f6f74203133203020522f4d61726b496e666f3c3c2f4d61726b656420747275653e3e2f4d6574616461746120313438203020522f566965776572507265666572656e63657320313439203020523e3e0d0a656e646f626a0d0a322030206f626a0d0a3c3c2f547970652f50616765732f436f756e7420312f4b6964735b2033203020525d203e3e0d0a656e646f626a0d0a332030206f626a0d0a3c3c2f547970652f506167652f506172656e742032203020522f5265736f75726365733c3c2f466f6e743c3c2f46312035203020522f46322039203020523e3e2f4578744753746174653c3c2f4753372037203020522f4753382038203020523e3e2f584f626a6563743c3c2f496d6167653131203131203020523e3e2f50726f635365745b2f5044462f546578742f496d616765422f496d616765432f496d616765495d203e3e2f4d65646961426f785b2030203020373932203631325d202f436f6e74656e74732034203020522f47726f75703c3c2f547970652f47726f75702f532f5472616e73706172656e63792f43532f4465766963655247423e3e2f546162732f532f537472756374506172656e747320303e3e0d0a656e646f626a0d0a342030206f626a0d0a3c3c2f46696c7465722f466c6174654465636f64652f4c656e67746820343336333e3e0d0a73747265616d0d0a789cc55dcd6ee4c611be2fa077e071c68828f60f9b646018d895e48d8cddd55a2b3b09b2813196c69b01b4d25a2319b1df2ec79cf3043ee6ec174855ff911cb2ba7b66a8d880b53362b1eaebeeeaaaaf6a38adece8dda7c56df6f9e747af8fcf4eb2e2e8d5e2f643365bae0f4fdfcdbff8227b71729cfd78f0acc80bf88fb1bae05991550dcf14e3d9fdf2e0d99f3fcb6e0f9ebdb83c7876f425cbe097973f1c3c63205464f05694b9e259a9645ec1958f20f4f25d957d5883c6ec837e57db772f0f9efd6df6e6fcf55ccc5e5ccce5ec747ec867d989f9e7d5fc9015b3e7730eafe77fcf2ebf3a78760a16bf3e78b63b362e585e76a1694416c8e5d9e537f3c36a06866b63f7f8ec3f6fa6322d0a993341d93e3a86d136c6ea0582b838857f18e2107cf6c7c9405430fe8a02b131cdd9e9ebe32cebfb0a7b1a5f298bbc19e2b9387d899e70f66e7e28679717e025e7d9fc50ccfe3aaf66d9f1f91bf3ab57190a9d9c4ee7244d99d725054a2fc8bb0eaed337c767ede24d8602974a35148a93d3e97ca2e1b91094a1049fe04fe313a2cad900ce5b9c78bd41fea537e82578c05967efe885c9dee2c25c9cbe4567d1c2e75f9ee26bb36ce7f8f20dfe5aafe5ab53bd8ed32d9c68725512f8bf43db831f0afe9fcc6d1aedbc21eb6a605cbf980881e42a2f290493cdb254455e578495f7b3e379395b5dcd0fcbd9cdddd19bd54f7326664b1ce6cdfbf954104a51e45ca40d746cdf8869f78d5059c9452e865074d0f43f55ff17f39a7e1f139d682299503083e3e05f9ec24aea7d7b09c958877a1303ce4fbe01c66002c0b71000a4d9cd20c1d8b87f13efa6da7892e775438c62fa5d261498a3266dba58d6c08de5535b91bccc65f5e4566cc418b5f21e1202440ced3c102c940d16dacfaf973aa9bcc4d76fa70b1e90de493413c6a8322f13dd642c46c9e96354d100054f8d5153cd83220d4f6501e89a7c6a1bac5079cd7fa729c428dd5043ecf23288c2c7f8eaf2ecf81b88ce58dd65df612a1ee53dff87d0cc91e15604f209add4794359992e22b326e7e5935b29a5e6b04f6cc56697a7b5e2b2cb135bb1d965d44a4276d125cbfdaf207685bf7d40f2ca678f1f274b0415ec016aae27cc3795ca054b9becb17c534e9e6f2454f3d52e50d4c4507883f5bcac59de8c874fddf6ba383b3fc12e07d42bcf6d246595a96d4f30a8fe1b8530a49e696f3a3e9fce81792e05812f61baaa89a7ab51181ba4aa772baeeac91d49c80677780a96a3e7f70fab1f16570fd90b780781012818dc011542c5218257b8136b99575266f0a634f67ff8ccdefda397e44557923949837463c00d31e014556ed04ddea8be5340e8ace166a8cfa2ab303e78c62b640d76d00dcb6b62c84ed00035828311bf6d1b91851d22832abcf2e35339efdee70d6cb631a93e66020a72b258d9e40cefe548b93767eb958ee7f8e3167f2cd7838dbb97edbace4bd276d24a71b0cb7967a5aa82724f27ea916ad1d06a713bc51c00367567b9582d53d68bea95242121678de39656d4acbd867562b3c53de4e407ccc9234bb6a7f99ae7acda6bd10483a8cddca2b1a2cc6b6ad19ca8c1ea44438b26ed3c0b561a9cf64ef887a72c1a95cc939090b3868d16de84176df5df7b2820aeee6e46d66c4febb0d1c47e6b26599d57a2b7668aca0356b4835585d74cd969969c21c0add78c4ae34948027904ea0941cdda578fcb9fe687cdd806dbd32c4645d2559216ab84eaa1a89216cb89a62f566de7b784c85f8bde622545452ae727212167ad2c35d12166eddbb99cad96f811e93db0502a97ed8900c91fdf6bdd9460b9e44981d189260746eeb887121212d8d69b8c53ec230909396b4a29938c4667ed1dacdbafdf2fae71c1ee06ebb59fe5aae0e8b1fbac5761093207358005fcafd0d4137fb8b97497a5bf0c3faaa6e94920d9351296ec6eca6cd27163cd0a8b560c45909249d547e425fc451a8fa3744644533a128e97655e76030d670d8024d0f88b341ac7563c1a642b241e2fcd3ad21b8804b848233a88b4aa56c85f97ddeb9b265d463652d6f9485c5e9a75a4377061dae0258dcb5f0fe272c9a7834b05dcc949b38ef406ae924b9d90da152c7a93eaafcbeef54d932eb8a6e1f2d2015c0a8aa846d2f3e5af07e7cb0591b475f4d28175ac4495733598af6e50f022c129eb6e7adc36b6062fc1c387ce63c28c11d11b89c96e48efed584f0d1a8ea527113fe2ba70fb367547191bce86dbe2716db8475887b5284c4cc4def5daf484110ad1b965d353486eba2485e8e9b5082b74bba11d2f2e2da110dd89d5e1213b370e2174fe14323adae451aa6ab30a6f9ad4264fc1834d9e0eed7045b4edca981bab46fb7002eba06ae8141cb10e5121c732ff979a1d5e01f3f807be5a0ce9fd3ea62b994bcaf236bd29bb5609bd298393e84df5279bfae0344115dde431ad2e2612fa90c11e4f3be2788fc7031deff1f4474d55fc49cae83e896d1aed31704b1aecc093fa24062b590ef4074e7d5890a48c6e36d8c6cb1e03b7aca43bf058b3a18375ac7eed0f3cd62f082aa3a38aed5eec31704b7b5206ee18d25603a73e6048524657beb613b0c7c02daf4a717547c1b67275aae990a48c2e5e6d29bdc7c07be44d9025a4fe0846050bc45e2ab7bac2052265cf7ffca10205a035e76545ac00a4acf916beea946ca43d2f2d3ad2144914bdc2a06bd4b7a05590f55ba35e5ac4abb78051df4355c112c82da49316f1d2ac9ddb41a9e17b814946bd74c0a827a4f4487d232b697abd74607a3dc3a547dadd02f06bc76603e59215192d4a3afeed0372a85c4ad065cba556195d2e2568b3e5920f998172a9d5365add741c0ecaa5ae42cacbd314da7229a8d07a7067bc63e552c751581d1eb2f5ce2042eb4c41a3fd828743244dfe545b505f4e4ad115295a78addad241a7993fdde1e77cd8d75e64d7cb4c7f2671fb808faee9df5d5305cc8e3018b29c311c44ba6bcb076b30a51211918fba43aa229588fea24c9506dc551ede5a423921a86f9624298b9513dba077e5833198469404556f27298bd504dba0773540c76094df0aaa804d521623f6dba077447e2bf454219aa42cc6ceb741efd8f8569e43559349ca62143b19fd462169d37c1922d6f80c2c4dac7d7a2774f87e4c4d92659fd30915bec1510718b04fe5658cd45a3d04ebf2199cd6e3cbef3a40197de22e63d433acc7e76b1a8f2f0e43e3f2399dc663bda16604b5724b4d0ab8852405dc22798111f2e1162024e326b7353424286ee2427adca484f46c101da5f08b951d5600ffd09b9eeca4a4288b511da5f96898eaac177339bb595deb874f49aab3230e06d5463382234e758c41cf4f82734835655274c5c84e556d4d76bc39c74f82e0a9c64a9ab628ddd902bf8b7ec66227cf84f04b8aaaa7698b129e2df0bba8dbb1a8e2f829a29ca62d4a79b6c0efa2fd76f829b69ca62d4a7ab6c0efb2cc76fe43f1e5346d51da938a7f94f6989b49da531709b487d2e10bb1224a7b2815be202a12688f5742d31ea327427b027a7c915024d09e765024ed09ea71d93b80c713e7d0b85c860fe0b1dea0047aa2272dd60fbb6b4d4bb8a5a425dc3a7909cf463a426e1182426e865b5b8eb37484dcf40535b9b9096adaa03fb2de600a81924792e56682ae18f9298b0dd2a13f975edd03ddf948f29cdd2c56e6e681c538cd31f6523a3a922a6e1354c5484ea94f8fd88ae4786b091d1d4955b649caa214670bf42ed219836975b9a4287a92b228c1d902bd8baf1d83d19e88a4c87192b228bdd902bd8bea5ba18f3cebbc237a476eb640ef72c9369e5352dc38495994daa4a21fa536e66692dae039136587da40e067837447e9f0759756e2a84d4f85cb87940a5ffd381596daf494b894e995d0d4c6e86929404f8fcbaa013dbe1a68f5a8811e9778db4191d426a8c7e5e6001ecf8e43e372e93b80c77a03a4cc2e2d1976744801b790a4805b242f10e8e88464dce4b686e88e4e488f9b94909e0d4ac30afc5abc7b1480e5a12d4f96937155314223f806bd783e676c76f5b0fa497f2978758d8ff9eb038f9ad97af815f7091040d02f7a08b093b4340da45fd0f6c2b691d6f0abe15165fb20682afd29f410429c63197baa68f03bea91e5a3aae9145d31963558bf6de2b564c1782d6542bca674780629a3f1da88b8ef19f4451c99930921dbeb718f946f4859662513a2765895a739322170b7a32b46b07bce1152e5435010952700a101fa48c562e1bba8d02bcdc2ca7c18bda9ebce427b5d5be88af4432153fa7842eb67e631117a33851f3d0eeb8a8422d6483c08abb399cef1288defb1c45b2f21fa6064d25f2f5ce083c8abbb5bfc3cdf84462a30ed088881df972380a281c9dab3c124369991478bc3ca62a1094f29ddb94b666e2643133817ab62a189d2e14293516247476d945609b1515859e3246933c68f86d739f3e16df34b667109f4222311ee0ad2403a02941db7e246a49d93b1b656c710ce49df564786b36ed8a33405a4468f75d9ef5c173e721c07930ac7437bea288efd0e7519c5019b5ef16d71ec775aca288e42e5a18d3b0a63bf5352c660343c574a6e8b832aee773fada5aa21278770eca11db6d99881f7b31fe66af67e9e5de2c99497e71793596c1ad87772c4a43e32e82ffa74ccd38b37939d05c4ca0a9f2f7cc239640ab3cd740606aec894cc8bf1553ad35f5abfba795cdd67faf0ad9b6c6d0ee4ba8175bb73479dba120adeddcc59315be8972b7c798b2fd70fab8747e41257abdf40fc762ae478da0ef08721f2a36bc35cd4ec9381a60c90ebc92c5705f2e8a1656fea6a35ec97efbc8beaf1618ec50becb196f86d2fe0360c1042a683c5050df8d86f6bca1038203612cf2a84902890d230fc0d49a754e009d38826ea242d80c533292b7cb8b333b0b3db353253701b70b3477dbedbeab7db510e9a6478e8f3502cd563960304146499b4c6ca1a4abb323a61e403a509ba28e425cfc508701ddfd657f7ab79898c5ee08736e50c776d09bb56bbe41df8e6c7f9a132d7ef97d9d5bc329bf823107fbd536e960f467270e2d2ee8845c1f038ffe4b91ef065cdf76a57389a1f1dfe18b98c0e622e1b0fe95dd7d448d1f7bb619beb76dc459f0fe28cb40a7ce9ba85841d8496d317da99ed82a4ae5b03eeb2d6df97e814a4381dd8b8abdb0d53071e3550547327415578d3f31267b6e30e27cb4f4bdcf5b7d7cbdb2b7cb1825ca15309b9f177b0ce3067a811f3f19d6facb5ce1f9c37aa8e4f5216defb03e8bbec7dd8fa6ddabec93057b7ef3f81b49ef9fb870508ea1bf505adeb01d645878d3fe863396f16f0fe7b63046f59cc9b564463ba1b3f5d779fa9904c37068773616c5d43def02369915ff7de418ace7abf402e73b3d083fa112e3cb6b4e67e69be958dc35d81ee5f0ccd99724465cdf198eba863ee6d46e5c59813dd2cd67ae47a90ba410e435c5d2fd089fcbcadf349c12855e3e945c99b71343540dc939c8efde67220f653f777521e5c0fc47eaf808cec666e5ce8aee5000329604df8eb2eb8d7a3cf92c078452db1e16a6362933745284a059e2589ea0a8677e4ac55afb577f9f880a1e0de84a57fea40b2bcbfbda382fb4ec619c7d37487c6a3c1dd5a73ee1b9b37f2b992246dc1f03e044f84f71b1dead699eed26ec6f7b5fefb0f3fe31ece5c1afdd4c67b2cdf56d77778e71a6860dddeef69a09a59fd3fe31fb3b0b9e4ca64850f10e2498eb8dbe0a59078f674f2d28d8602d8266dffafff9186270cac130b7a5dd5762b123a3a918e75e341bfadeaf62beb45840d2cd8b235d364dab75019f2415408481833ad80f9b0bb2fb31117a01eacca44d247f5fe125485a3021ead3de2db3a183c824f5e43d58c14f0c1e56f323aec80011facc7935f0720e2d1c1584ba47e54c7324959383610f3f77bc5063204240c71f4ef31152c7d79c62280a8057e284991017b992603e4fd3eb6e9eb34196815506400e74689b13aaebdce888f8b9324ecee606538d0d1383a029499ce3ab3321c0b5b3b2385692bc2e80f7e9384b44b7cdd3f064ad59dfe78a6bb6fa228593dd27a6bf4330ae888a202cd95fefb2ba2c6e7f5aef0ef329e7d5c7c5832969ddc65cefffe074c92890f0d0a656e6473747265616d0d0a656e646f626a0d0a352030206f626a0d0a3c3c2f547970652f466f6e742f537562747970652f54727565547970652f4e616d652f46312f42617365466f6e742f417269616c2d426f6c644d542f456e636f64696e672f57696e416e7369456e636f64696e672f466f6e7444657363726970746f722036203020522f4669727374436861722033322f4c61737443686172203234332f57696474687320313436203020523e3e0d0a656e646f626a0d0a362030206f626a0d0a3c3c2f547970652f466f6e7444657363726970746f722f466f6e744e616d652f417269616c2d426f6c644d542f466c6167732033322f4974616c6963416e676c6520302f417363656e74203930352f44657363656e74202d3231302f436170486569676874203732382f4176675769647468203437392f4d6178576964746820323632382f466f6e74576569676874203730302f58486569676874203235302f4c656164696e672033332f5374656d562034372f466f6e7442426f785b202d363238202d3231302032303030203732385d203e3e0d0a656e646f626a0d0a372030206f626a0d0a3c3c2f547970652f4578744753746174652f424d2f4e6f726d616c2f636120313e3e0d0a656e646f626a0d0a382030206f626a0d0a3c3c2f547970652f4578744753746174652f424d2f4e6f726d616c2f434120313e3e0d0a656e646f626a0d0a392030206f626a0d0a3c3c2f547970652f466f6e742f537562747970652f54727565547970652f4e616d652f46322f42617365466f6e742f417269616c4d542f456e636f64696e672f57696e416e7369456e636f64696e672f466f6e7444657363726970746f72203130203020522f4669727374436861722033322f4c61737443686172203234332f57696474687320313437203020523e3e0d0a656e646f626a0d0a31302030206f626a0d0a3c3c2f547970652f466f6e7444657363726970746f722f466f6e744e616d652f417269616c4d542f466c6167732033322f4974616c6963416e676c6520302f417363656e74203930352f44657363656e74202d3231302f436170486569676874203732382f4176675769647468203434312f4d6178576964746820323636352f466f6e74576569676874203430302f58486569676874203235302f4c656164696e672033332f5374656d562034342f466f6e7442426f785b202d363635202d3231302032303030203732385d203e3e0d0a656e646f626a0d0a31312030206f626a0d0a3c3c2f547970652f584f626a6563742f537562747970652f496d6167652f5769647468203237372f486569676874203131342f436f6c6f7253706163652f4465766963655247422f42697473506572436f6d706f6e656e7420382f46696c7465722f4443544465636f64652f496e746572706f6c61746520747275652f4c656e67746820363239363e3e0d0a73747265616d0d0affd8ffe000104a4649460001010100dc00dc0000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080072011503012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f33a28a2bdf3e7828a28c120900e0753e94ae96e34ae1455ed2eca2be9a486490a3f96cd1003ef30ed547041e47438a85522e4e25b834ae145145686614514e450f2a21e8cc01a2f61a571b456d78bb488342f14dee9b6c58c30300a5cf3ca83fd6b16945a6ae86d59d828a28a64851451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140c5f2e4f2cc9b0f960eddd8e335b9636f3c49a968adb04d7013cbc8e1d95b2307dc138a4d2e39db4c92de58659ac6e4eefdc00cd1baf7c7d3b7bd68c68d1c51e669a68d1d25b3ba2818a90a731b0cf1cf18f515e562310eee07751a3a291058a1ba92d6f2de1cfd923f2658c6320f3f30f53cfe94bfd9a03d8e9d7285771927988232e0024127b74c568da436f677b24d6a50f9a55591d5d5449d4e0e0ff3a495adbcc79ddbe69b6fc91231568d48dc8090319f6af3feb12e7d0ecf62b975306df4b82e15ae26668fce477b7b7854bb1c1201f6191fa56310558ab0c303820d7653b44e9166516ed3aa43e628259d4619963551c0dc719279c5636a2204b062349fb3b49262395e525f03dbfad77e1715272b48e4af41257462d4907fc7c47fef8fe74ca7c3ff001f117fbe3f9d7a92d8e18ee74ff127fe4a0eabfefaff00e80b5ca5759f127fe4a0eabfefaffe80b5ca54d2f811553e20a2ad5be977f75179b6f673cb19380c8848a65cd8dd596dfb55b4b0eefbbbd48cd5732d85caed720a28a544796458e352cee405503924f414c9128abffd87ab7fd03ae7fefd9aad0d9dcdc4ed04304924ab9ca2a9246297322b95f621a2afff0061eabff40ebaff00bf668fec2d57fe81d75ff7e8d2e78f70e4976285157ffb0f55ff00a075d7fdfa347f61eabff40ebaff00bf668e78f70e49762851566e34dbeb48fccb8b49a24ce373a10334f8749d46e225961b2b89236195654241a7ccad7b872b29d157ff00b0b55ffa075d7fdfb34d7d1b538d773e9f7217d4c66973c7b8724bb14a8a1d191b6bab2b7a118a4aab8acc5a2af2e8ba9ba065d3ee4a91904467915567b79ad65314f13c720eaae30692927b072b445452d1542128a5a280128a5a2800a544695d63452cec7000ef495d1f81ada3baf14db89402103381ee2b9f155bd8d1954ec6b429fb4a8a3dcd4d234b834c5513457371705b958e5d8aa7fad3f58cdaea3e4ac4a15a1136eda32af939191d7d6b36f6faedb5dd47cb68d63498a80e3a0c9c0fe75b161acdafd93cabdb512b2ee2cf1939033ffd7af9f9d0acdaaf6bdcf5e3529a5ecf6b0cb99ecd35682e2caeb6449106668e4077484727078150406c56d35033cc1e6dc1ad99e4f5232b81c0acc9347d3aeb7496f398803cab1fe5f8568e95e178c4d6f218259f2e1b3d00008ffebd3a91a3469f349b4c21ed272b4516b45533cf799b51b6d50084742c0e771dc7fa551d63488f528da7b38ae1268c7314926f047a03dabb1bfd36e64d3e4874db6f2dc91b5a47e3af3fa66b9cd2a1d4b4df19da59dfb467cc52db53a57161f16a4e55a0f55d0deb51b254e4b7381e870460f7a7c3ff001f11ff00be3f9d687892dd2dbc477f0c63e5598e07a567c1ff001f11ff00be3f9d7d6d2a9ed68a9f7478338725471ec751f127fe4a06abfefaff00e80b5ca5755f127fe4a06abfefaffe80b5cad5d2f811353e23e8bf83a3fe28083febbcbffa15731f1d471a3fd64fe95d3fc1dff9102dff00ebbcbffa15733f1dbeee8ff593fa579f0ff783d09aff00673c6ab67c21ff0023a687ff005ff07fe8c5ac5adaf087fc8e9a1ffd8420ff00d18b5e8d4f819e7d3f891f57e063a57857c32c7fc2d3d53fedbffe875eedfc35f27dcea77ba4f89f51b8b1b878263712aef43ce371af370f172528a3d1c4c945c59f57fcb4715f2bff00c271e25ffa0c5cff00df55e97f07b5fd5758d4b524d42f65b858e252a1cf439a5530d2847998e9e2633972d8f5de3d051f2d727f122faeb4df04de5d59ccd0cea576ba9e4735e07ff09c7897fe83173ff7d52a5425515d1556bc69bb347b1fc67c7fc211c7fcfca7f5adbf86c07fc2bdd1fd7c93ff00a11af9db51f12eb3ab5b7d9efafe69e1ceed8e78cd7d15f0dbfe49ee8fff005c4ffe846aeb5374e9a4cce8d4552a368ea7e5a3e5231c578efc61d7b55d235ad3e3b0bd96dd1edcb30438c9dc6bcf2dbc7be26b59d665d56672a73873906a618694e3cc9953c4c612e568fa03c4be07d1bc4968e93daa473e0ec9e350ac0fbfad7cdde20d0ee7c3baccfa6dd2fcf19e187465ec6be94f04789078a7c3306a0ca166c98e503a6e1d6bcebe3a69e8ada56a2a3f78c1e16fa0c11fccd5d0a928cf91935e9c651e747abe8207fc23fa77fd7b47ff00a08af9f7e2c7fc940bcff713f957d07a0ffc8bfa77fd7b47ff00a08af9f3e2c7fc940bcff713f95185fe2b0c4afdd2389a28a4af4cf305a2928a005a2928a005ed5b1e16bffecef11da4cc7085b637d0d63d0090c08ea0f15cf8aa6aa51945f635a3271a89a3b6bbb510f8d6ea3651b64bc85f18e08624d7a34de1cd29a762176b4f682260985cb9556d9f520e41f635c8eb312aeada6dd4842a18a1676ef9563fa6335d45e7882cf4b682595cac9771ab1da038f9428423df033ff0335e6612a39d08f2f43d3a94d426dbea6078db4fb0b3d3b4e360a9b181f9c2e33f29ff000ae934c51fd916a071985791f4ac2f1dbc72693a6bc43084b903d3eff15b9a7c891e8f6acec15444bc93ed5e2f125dd0a76ee76e596f6922b680aff64b82f2bbff00a54ca371e9891ab26f61cf8fe2ba7c086daccbb9f4eb5a5e1d9d1adae5378dc6f272173ce379aa9af0db16b32a7fad166a07d326bc0c373471728f7d0f42b5a5453ec793ea775f6ed52eaeb39f36466cfe35041ff1f11ffbe3f9d462a483fe3e23ff007c7f3afd3a9c542928aec7c74a4e552efb9d3fc4aff9281aaffbebff00a02d72b5d57c4aff009281aaff00bebffa02d72b554fe042a9f11f45fc1dff00927f07fd7797ff0042ae67e3b74d1feb27f4ae97e0e303e00847a4f2e7fefaae73e3ac4e60d265c7c81dd73ef8af3e1fef07a33ff773c62b67c21ff23a687ff61083ff00462d6356e782e279bc71a1a460922f626fc03027f415e854f819e753f8d1f5776fc2be43d6ff00e43da8ff00d7d49ffa11afae9d82c658f40326be43d5dc3eb77eebf75ae6423fefa35c582f899dd8dd914ebd6be05ffc85b55ffae2bfcebc96bd6be05ffc85b55ffae2bfceba713fc2672e1bf888eefe2bff00c93fbefaaff3af9aabe95f8aff00f2205f7d57f9d7cd559e0fe035c6fc615f4ffc35ff00927ba3ff00d713ff00a11af980d7d3ff000dbfe49ee8ff00f5c4ff00e846a71bf0a1e0be2679c7c718ddf5ed34a2337fa31e833fc46bcbedf4fbcbb9d61b7b59a4918e02aa1afaee5b68276066863908e0175071491da5b42dbe3b7891bd5500358d3c4b84395237a985539735ce67e1d787a6f0df84a1b4bae2e2463348bfdd27b7e95c47c75bc431693640fef017948f6e07f435e9dae788b4df0fd8bdcdfdca46aa32133f331f402be67f16788e7f146bd36a136550fcb1479fbaa3a0a2842539f3b0af38c21c88fa7f41ff00917b4eff00af68ff00f4115f3dfc59ff0092837bfee27f2afa1341ff00917b4eff00af68ff00f4115f3dfc59ff00928379fee27f2a785fe2b162bf848e273451466bd33cb0a28a3340c28a28a002ae69764f7fa8c30aab15dc0b903eeae79354ebaaf0437cfa9c31b84b992dff00744fa835c78ea92a7424e2746160a5552674da8c76fab78a12c3cc223b6893241ea40638ac8d374fb8d561ba8ee4856b3708493d3ef67e9d2b32d66bdd375b9a6b86f32e729393ff003d14f040fa86af42b5b092e6d6f64fb3bc16f74a19c9189338209c7be07eb5f2952a56c24a2a93ba691f6187852c461dfb55d4c3f116ab6da9e85a6c56e4efb74d9203eca79ad4be2b71a568da6f05ae9e3cff00baa371fe58fc6b275bd0adedb4d6974f5744552ae09e54e3ad45ad4b74c96060478a4b481648a755273951915d38a92c5c609e8d33cf951fab4e56d5325d1fcab3bab6bf44da8da8dc5abfd18fca7f023f5ad6bf9525f135d69cc79bab0c267d4135c3d9cd73b731caf790c53f9fe4aa121a427be2bad907dabc756f72f80b6f60249bfd8241e2b8abe1392b73b77b2ff86269d6e6a7ca91e592c6d0ccf13fde462a7f0a583fe3e23ff7c7f3ab3aacf15cea971342b8477247bf3d6ab43ff1f117fbe3f9d7d9d29374537bd8f9e9a4aa34bb9d3fc4aff9283aaffbebff00a02d72b5d5fc4aff009283aaff00bebffa02d7295a52f811353e267b8fc0ed5525d1aff4a63fbd826f3947aab003f423f5aebfc79e161e2bf0f3da2305b88dbcc858ff007bd2be77f0bf88aebc2faec3a95b73b7e5910f4743d457d29e1ef15e95e24b349ec6e50b11f342c70e87e95c15e1284f9e27a1879c670e491f36dd78435fb3ba7b7974bb8dea71954c835e9bf0afe1fdee9fa9aebbaac46168d08b789bef648c163e9c135ec1b54f500d41777b6b616ed3dd5c470c6a3259d801533c4ce71e5b150c34212e6b94bc4ba9c5a47872faf663858e16c7b9c702be4d672eecedd58926bd1be267c404f1148ba5e98cdf6089b2efd3cd6ff0af38aeac2d2708ddf539315554e56415eb5f02ff00e42daaff00d705fe75e4b5eb3f02cffc4db55ffae0bfceaf13fc26461bf888ef3e2bff00c93fbefaaff3af9aabe94f8ac73e00befaaff3af9aeb3c1fc06b8d7ef857d3ff000d7fe49ee8ff00f5c4ff00e846be60afa7be1b11ff000af747e7fe589ffd08d2c6fc28304fde6721f163c59acf87b57b1874cbb30c7240598000e4ee35e7337c47f154ebb5b54900ff0064015d67c73ff90f699ff5ec7ff4235e555587a7174d3689c454929b49966f751bcd466335edccb3c87f8a46cd56a28ae9b24ac8e74db7a9f5d683ff0022fe9dff005ed1ff00e822bc47e25f8635ad4bc6d757367a74f342c8803a2f078af6dd088ff847f4effaf68fff0041157f8f515e442a3a736d1ebce9aa9049b3e56ff8423c4bff00407b9ffbe693fe109f12ff00d01ee7fef8afaab8f5147cb5b7d727d8c3ea70ee7c7b7769716174f6b75134534670e8c3906a1aea7e247fc943d63febaaff00e80b5cb57a30778a6cf3e6ad2b051451544852c72bc52078dcab0e841a4a315328a92b31c5d9dd1de5fca754d1ec3c4762a0dcd9011dd46be9fe7f9d769a7ea11dfda43a8452a2c320dce09fe2c60f1df3fa7233dabc9341d767d0af4ca804904836cd11e8ebfe35d3b2148e3d4b4032be9ecd97808c796d9c900fd6be5f15869d17c8f6e8ff0043e8b058b4f5fbce8357bf85f49bd4b345f2c0dae49c919cf03b0adab700f87a3e33fe8dff00b2d79cddeb37da92888ba340325d5502b038ef5dcc9aada58e836f14afba69600b1c29cbb7cbe95e3e2f0f5d538f7b9ead49d3e6ba7ba313c357369a2e9faa5dcb858c3236deecc41c01f5aa7aa5ec9a3e8175757385d535662760eb1c7d87e02987ecda32ff00696b1136f53fe896a39527d49ee471cfe55c6eabaa5ceb17ef7772d966fbabd947a0af5f0b82f6f5b9d6b1eafd0f0f1188f674f97a94a9f0ff00c7c45fef8fe74ca7c3ff001f11ff00be3f9d7d43568e878b1f88ea3e24ff00c941d57fdf5ffd016b94aeabe24ffc940d57fdf5ff00d016b95a54be043a9f1336b4ef0ddc6a4b6e6399104f13ca3703c0570a47e66b57fe10bd534db960d7c96ec1caac884e186e550411d8ee1f9573f6fadea569622ce0bb74b70db8203d0e41fe601fc28935cd4e587ca92f2568c6700b74cb6efe7cd29464d96a5048eee25f1a5a69d72cde22b987ec880c90ee24ae41c0e48f4aafa878335bbebe8e2bed77cd699246fdeeecb142a30149f9bef76f435c79f106aadf68dd7923fda7997773b8e3152c7e29d6e29c4cba84be60dd86cf4dc413fa807f0acd5292d517ed62d599a16fe0bb89edd5cde451c926d58e3753f3310c707d3ee9a53e08bd863b59aeee238219ed9ae4b95276004707df9cd6645e25d6604748efe550ff007b079eff00e2688fc4dacc52175bf9777b9cf603fa0abb5422f4fb16edfc2fe66b377a6cfa8450bdbc4d307d8583a052e48f4f9466b58f83ee34eb6b49a1d55a0f3e1fb44b30c8511940e380724ff8d726752bd6bc9af1ae1cdc4cac92484f2c194a91f9122ad2f8935743032de38681424678e142ed03e98e28719b60a5046f2f85f57d4b4ffb445ab7da6cd998162cdd881920f639fd2b32e7c2b2dac30ab5dc6d7970c0416ca872e0bec073d073daa97fc241ab798cff006e9416ce707ae4827f5029f1f893588a15892fa508adb80cf439cff3e68519a07283dcbb3f842eedfc567419665f336798b2aa121976eec81d7dbeb5a47c29af5ac6162d45bc85ba16a0a3b60671f37d326b966d56fde58e46ba91a48e3312b96e429ce467d393f9d4d16bdaac091a477d2aac6bb5577700673fce8719340a504741a9f842e216b83a86b68cf6f6e27dae8c5b616dbd3b1c9e9f8d5493c1cf03ac771a8c11cb2ccd1409b18f99b4804e7b727f4ac59b56bfb812096e5df7c4227c9fbc808207e6054fff000916afe4c917dba5db23176e7b9c67e9d07e5428c907341bd4b375e19b9b5d2a6be6990ac4c54a007270fb6adc5e08d41df4f123f96b790b4c0f96495c0cedc7738c7e759cfe27d6646919efa46f31363038c119cff3a8dbc41ab32b2b5fcc549ce3774e31c7a714ed3b0af036e1d1f535d4b51b0975b68469f22c25c3332b12db4631d29355d235ad22c2dee6e3559b74d218c22b9e0862a79cfb7a562c1afea96f7773750de48935c9dd2b8eac739cfd7351dc6b1a85d5b476f3dcb491c672a1bb739ebf5353c8ee573ab1bd69a56ad3cf70936b5240b14eb6caeccc77c8dd071d07bd49a6681e21d5248234d4a58da59a785b748d84f29549271d8ee007bd638f156b6b26f5bf9031001231dba1fafbd447c45abb42909bf98471c7e5a00d8c2e41c7e6abf90a3d9b0e78d8a374275bc992e4b19d1cac9b8e4ee1c1a8aa4b89e5bab892e2672f2c8773b1ee7d6a3ad96c62f70a28a2992145145030aded0bc5b7da1c7f6745496d724989fdfdeb06835857c3c2bc792a2d0d2955953973459dc7fc245e18bd7f3ae74b920988c3344719fca90f8ab41d3dfcdd3f4b69670302499b38ae228af3ff00b1e8decdbb7a9d7fda153b234b58d72f75cb8596edc1099088bd141acda28af4a9528528f24159238e7394e5cd2dc29d1b059918f40c09fce9b4568f6b109d8ddf196ab6dadf8b6ff51b32c6de665285860f0a07f4ac2a28a518a8ab21b77770a28a2a84145145001451450014514500145145002514b45002514b450014514500145145001451450014514500145145006d7910ff00cf24ff00be451e443ff3c93fef9145152507910ffcf24ffbe451e443ff003c93fef914514083c887fe7927fdf228f221ff009e49ff007c8a28a003c887fe7927fdf228f221ff009e49ff007c8a28a061e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145002f910ff00cf24ff00be451451401fffd90d0a656e6473747265616d0d0a656e646f626a0d0a31322030206f626a0d0a3c3c2f417574686f722850454e454c4f5045204e415448414c592054454c4c4f204a494d454e455a29202f43726561746f7228feff004d006900630072006f0073006f0066007400ae00200057006f00720064002000700061007200610020004f00660066006900630065002000330036003529202f4372656174696f6e4461746528443a32303139303730333032313835312d30352730302729202f4d6f644461746528443a32303139303730333032313835312d30352730302729202f50726f647563657228feff004d006900630072006f0073006f0066007400ae00200057006f00720064002000700061007200610020004f00660066006900630065002000330036003529203e3e0d0a656e646f626a0d0a32302030206f626a0d0a3c3c2f547970652f4f626a53746d2f4e203133322f466972737420313038312f46696c7465722f466c6174654465636f64652f4c656e67746820313939303e3e0d0a73747265616d0d0a789c9d59db6e1b37107d2fd07fe063fb90ec0eef2c8202692e6890d6356c177d088a42b1b7b61a5932e435d2fc7dcf6849cb2e86dc588013ae76499eb99c1992438aaa579a9423a5b5a29494364a3bbcb3caf478e994715a69af6c8f0f415967958ecaf5f86094735e19ad7c1fd14d798f9756050aca900a81a750d1e05b52312685a76449e12fa5880915f540324111f598d9a20df86c146948613ddad80351910188857c06b3d8a4c83a7c8f8a580c884ece6b88a4c8935516f379cc63303e402a8dfeb14f0a6a50f441397c4f0415f03d79bc87ce3d1474116d24e5a13580a014da649487de6c114068033c28a90d7e7818c242554ca92d74f51ed60218a6d42e7ae5319f87ae0efd3df465c3851454c07c11c207cc9760d4c022026c672ed2b01b5a4c12605a826b020c4701fd6147cd06856a3a0605d318c3963568935751c3f89837b2cb2067c47c0ecaee4c01bb448c0f6414869a002512c647387de71880278c4ff05b42ff8449134cd9c3493081edf111109660fce4e00a50835d08451554b286d899f095813540226b0982618085360425ad833ad4c38b9efd01f1ac8740d4b3bf60a41d0162cfb36054847ba96757c31e0472d904818960cc5e334d7a3cf0cc50c7113b1afd1c41132210423335a0b1630613fe3903fb12fbdc7aee0c123808481af3b8c09d41030fdd413c3cc0326c78177654c43c11821328e9229c49cc9584e909c1e11214064dc116cd7c051d7a388ce027cf24222604e80608308269042e83524c3e0e1c58160f2015cc8107b0c80199208a07aadaf1d07324204abc4f4c7dcc1c1c77c6cc91b833732d8040f892f003c60b3de624d835f4701f217402711c41a140701821d8829e22098464333131d9ec4c48b6313a7818137f21728879b460092c1538965fbce88e7950af4ebad3eeb83bfb723374a7e3f6ee7c7cb31aaebbf71f54ffa7ea8e2f95e13e3ffef8ed378f87bc5d5ede6d87eee56afcee6a1c6f6e7fe8bacf9f3f3fbf1b6f56cf878bbbe7c37977bd58df2d567f2daf1797c3badb35b7dd727d3b2ec7bbf3e566bd5875bf9f1dfff2ecddd1e9d9bbb3df5fbdfbede8e52fcfdebe7afecfcde5f74a12c9c7a64ca21af4f421fae943ccd387d8a70f714f1fe29f3e244843c0f6168a481684c134e6ec67d166bbdee240db04135d3a07e6aa607d1978220edc299e4592c6234514e06171214e41d3d83d646cea27f2cf84b67ea9269fed9b602273f760af45ea52d598be6dcc9de259245158d314568c19ab9b96b155cf59d70413a36d0f265bc61f689949f12c9208dce68c18e7b6cd195be58c6b7346cc10b6cd1977286726c5b348ed00fc6973f145a45d988c3b85f22468332f9e2d3eae0671a67eca06fe7f11ddcea8e2b2e57c6b481287b8a63f5d5531d7240feffec49c3a8757e58f6ff287778562da99c1f3550af9e6eac49b3d3198e7f0aa0b946f2e50c4479743f0aac1ef9b5cc1ce980ee18baff2c537f9a2f96875085e3ddf147bca29600a95cce24caeecf3ec8a6ca12cb80861ee65ab2cd3cefd2fa84393559a0f94125268ef44429555a1c92a2d2e7e7b3031eb862aa54293525a8c9739b02a9f429b4fe2e235075625536c261f2d46e60c58ac669ed8e68898f9e7c0aa04896d828839600eac4e90f6be780a8eccd9cca6ece7ec816c9b2cb5a84ffb4c251e2ae2fd6e418cae584d003135c1c484b607138d97aa7b92444d3071873f07a6ab60cd4db31193d41c58d567a9b9693662929a03ab6e9a539b2062929a03ab1224b5092226a919302eaa1d165e536864d2663a6547671764e364b1c5ed6cdf4c4e46cc845c706b05189703ab78cdfc64e4ea4ddf4e505c6cace235d73023e6c379bcfaf1a06f2e6356ae98cde2d5fd47cd95cccaa5ad393caaae655c866de1c975b159bc3a5fa8c9172b17d566f10e5dd172b8141a177a15b71777143315f165cddaa53fb9f647eda58d2be055bc66eeb272e190669297ae262faeafb7f0e4aae32c5e7585e3ea7d0b4fce64b37875ffe9e62a67e54c368b575de7f8e6a1852767b259bc3a5f74932f4ece647378e6d0c52e874ba171a157717b71473153115f14b25da87672ce9c291e53bd544ded5ab59373a699c961f56af59c2573b99aeaf56a32ed3b0639eb9a99dc64ea5c336daec9b9d0cc70ad5e429eb550e650bd62be2f15d40a8ad3a12aeffeca925402a4b8b7287158a5d1e58355d6f36b6f880eb8227207dc113939e3b6c71c707be7e4cc571cf47a737e773dacc74a558c0d9853c9b4b6a89c50a6ccaf725a99f2b2cac945e771532a72d338971391cd9ecda564b2e57dde32d8c735a407629d6d87e164b319bb93cd6af87571a3f2e6e778b18502fc554d3b979decf77bd0fbaf47c3bfe3fbe18ba23cf55bccb5de8c4377c4ffbd595fec7f9ca1ebc7cdbfdde9703e765ced1ab6d3338f29cfefd6abe57a38bd5ab084fce2e51a332cc6e5669d7f6fc7e5df0b3cec7efdb1d97efab8d97cda9b9cdfdc5e0dc3c8428eddaf8bf3ede6c1ef5757f8ffc1efd7cbc56a73f9e0c5e96a79313ce83be1a0dbe576719def97b3ae4777d7b71f60114a8fac7bb4b81e6e3f4c3ff7fe7eaaa38b87a7972e3d6ca68af37d631e35ee51131e35e9613355fcee9b69c0542ccb65ac5c60caa59f5c94c9b58c5c65c8e7ff7c32cf67e67c9a2de7cc72382b87a6729829878cb2f92f9bf2b2592e5bcbb2e52b5bb1b2452a5b97b2a5284b7d5918cb82559681929ebf365ef25570bea4cd7799f99631dfdfe59bb57c67956f937270ffa9befde63f23dc34960d0a656e6473747265616d0d0a656e646f626a0d0a3134362030206f626a0d0a5b203237382030203020302030203020302030203333332033333320302030203020302030203237382030203020302030203020302030203020302030203333332030203020302030203020302037323220373232203732322037323220363637203631312037373820373232203237382035353620302036313120383333203732322037373820363637203020373232203636372036313120373232203636372030203636372036363720302030203020302030203535362030203535362036313120353536203631312035353620333333203020363131203237382030203020323738203838392036313120363131203631312030203338392035353620333333203631312035353620302035353620302035303020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302037323220302030203020302030203020302036363720302030203020302030203020302030203020373738203020302030203020302030203020302030203020302030203020353536203020302030203020302030203020353536203020302030203020302030203020302030203631315d200d0a656e646f626a0d0a3134372030206f626a0d0a5b2032373820302030203020302030203020302033333320302030203020323738203020323738203237382030203020302030203020302030203020302030203020302030203020302030203020302030203020302036363720302030203020323738203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302035353620353536203530302035353620353536203020353536203020323232203020302032323220383333203535362035353620353536203535362033333320353030203237382035353620353030203020302035303020353030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203535365d200d0a656e646f626a0d0a3134382030206f626a0d0a3c3c2f547970652f4d657461646174612f537562747970652f584d4c2f4c656e67746820333130323e3e0d0a73747265616d0d0a3c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e3c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d22332e312d373031223e0a3c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a7064663d22687474703a2f2f6e732e61646f62652e636f6d2f7064662f312e332f223e0a3c7064663a50726f64756365723e4d6963726f736f6674c2ae20576f72642070617261204f6666696365203336353c2f7064663a50726f64756365723e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a64633d22687474703a2f2f7075726c2e6f72672f64632f656c656d656e74732f312e312f223e0a3c64633a63726561746f723e3c7264663a5365713e3c7264663a6c693e50454e454c4f5045204e415448414c592054454c4c4f204a494d454e455a3c2f7264663a6c693e3c2f7264663a5365713e3c2f64633a63726561746f723e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f223e0a3c786d703a43726561746f72546f6f6c3e4d6963726f736f6674c2ae20576f72642070617261204f6666696365203336353c2f786d703a43726561746f72546f6f6c3e3c786d703a437265617465446174653e323031392d30372d30335430323a31383a35312d30353a30303c2f786d703a437265617465446174653e3c786d703a4d6f64696679446174653e323031392d30372d30335430323a31383a35312d30353a30303c2f786d703a4d6f64696679446174653e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f223e0a3c786d704d4d3a446f63756d656e7449443e757569643a36434344454446302d463442302d343531342d423031302d4543423739303741303242443c2f786d704d4d3a446f63756d656e7449443e3c786d704d4d3a496e7374616e636549443e757569643a36434344454446302d463442302d343531342d423031302d4543423739303741303242443c2f786d704d4d3a496e7374616e636549443e3c2f7264663a4465736372697074696f6e3e0a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a3c2f7264663a5244463e3c2f783a786d706d6574613e3c3f787061636b657420656e643d2277223f3e0d0a656e6473747265616d0d0a656e646f626a0d0a3134392030206f626a0d0a3c3c2f446973706c6179446f635469746c6520747275653e3e0d0a656e646f626a0d0a3135302030206f626a0d0a3c3c2f547970652f585265662f53697a65203135302f575b2031203420325d202f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d202f46696c7465722f466c6174654465636f64652f4c656e677468203331353e3e0d0a73747265616d0d0a789c35d3e93695011406e00f15a2389d734412e18450860a219a3316a5724a249434c8106932dc879f5697d52574032d7d7d4fed1ffb597badfdee7f3b08c2dadfcf087b2c08fef2033f2332f323e2d311895cfc8a48a690c6ef8822b9a6fa301b5e4904dfb1892d6ce31bfe6dee84b9e681ff530632918503388843c8460eca7114477018b9c8471e4e218e4214e01862284612091c4711ca70022538895254601d4d388f4a9c4635aa700629d4a20667518706d4e31c1ab1861eb4a01917d08a4bb88876b4e1323ad0854e5c4137867115bdb88e6bb8891bb88d5be8c31d0ca01f4318c404eee12e46318207b88f8718c3633c421ae3788a277883493cc3734ce105a6318b19bcc41ce6f10a0b788d0f7887b758c47b7cc43296b08a157cc2063ee30bbe861fd7b1113d6ce75e44f76e447f6110fc0172a438bc0d0a656e6473747265616d0d0a656e646f626a0d0a787265660d0a30203135310d0a3030303030303030313320363535333520660d0a30303030303030303137203030303030206e0d0a30303030303030313638203030303030206e0d0a30303030303030323234203030303030206e0d0a30303030303030353234203030303030206e0d0a30303030303034393632203030303030206e0d0a30303030303035313239203030303030206e0d0a30303030303035333630203030303030206e0d0a30303030303035343133203030303030206e0d0a30303030303035343636203030303030206e0d0a30303030303035363239203030303030206e0d0a30303030303035383536203030303030206e0d0a30303030303132333331203030303030206e0d0a3030303030303030313420363535333520660d0a3030303030303030313520363535333520660d0a3030303030303030313620363535333520660d0a3030303030303030313720363535333520660d0a3030303030303030313820363535333520660d0a3030303030303030313920363535333520660d0a3030303030303030323020363535333520660d0a3030303030303030323120363535333520660d0a3030303030303030323220363535333520660d0a3030303030303030323320363535333520660d0a3030303030303030323420363535333520660d0a3030303030303030323520363535333520660d0a3030303030303030323620363535333520660d0a3030303030303030323720363535333520660d0a3030303030303030323820363535333520660d0a3030303030303030323920363535333520660d0a3030303030303030333020363535333520660d0a3030303030303030333120363535333520660d0a3030303030303030333220363535333520660d0a3030303030303030333320363535333520660d0a3030303030303030333420363535333520660d0a3030303030303030333520363535333520660d0a3030303030303030333620363535333520660d0a3030303030303030333720363535333520660d0a3030303030303030333820363535333520660d0a3030303030303030333920363535333520660d0a3030303030303030343020363535333520660d0a3030303030303030343120363535333520660d0a3030303030303030343220363535333520660d0a3030303030303030343320363535333520660d0a3030303030303030343420363535333520660d0a3030303030303030343520363535333520660d0a3030303030303030343620363535333520660d0a3030303030303030343720363535333520660d0a3030303030303030343820363535333520660d0a3030303030303030343920363535333520660d0a3030303030303030353020363535333520660d0a3030303030303030353120363535333520660d0a3030303030303030353220363535333520660d0a3030303030303030353320363535333520660d0a3030303030303030353420363535333520660d0a3030303030303030353520363535333520660d0a3030303030303030353620363535333520660d0a3030303030303030353720363535333520660d0a3030303030303030353820363535333520660d0a3030303030303030353920363535333520660d0a3030303030303030363020363535333520660d0a3030303030303030363120363535333520660d0a3030303030303030363220363535333520660d0a3030303030303030363320363535333520660d0a3030303030303030363420363535333520660d0a3030303030303030363520363535333520660d0a3030303030303030363620363535333520660d0a3030303030303030363720363535333520660d0a3030303030303030363820363535333520660d0a3030303030303030363920363535333520660d0a3030303030303030373020363535333520660d0a3030303030303030373120363535333520660d0a3030303030303030373220363535333520660d0a3030303030303030373320363535333520660d0a3030303030303030373420363535333520660d0a3030303030303030373520363535333520660d0a3030303030303030373620363535333520660d0a3030303030303030373720363535333520660d0a3030303030303030373820363535333520660d0a3030303030303030373920363535333520660d0a3030303030303030383020363535333520660d0a3030303030303030383120363535333520660d0a3030303030303030383220363535333520660d0a3030303030303030383320363535333520660d0a3030303030303030383420363535333520660d0a3030303030303030383520363535333520660d0a3030303030303030383620363535333520660d0a3030303030303030383720363535333520660d0a3030303030303030383820363535333520660d0a3030303030303030383920363535333520660d0a3030303030303030393020363535333520660d0a3030303030303030393120363535333520660d0a3030303030303030393220363535333520660d0a3030303030303030393320363535333520660d0a3030303030303030393420363535333520660d0a3030303030303030393520363535333520660d0a3030303030303030393620363535333520660d0a3030303030303030393720363535333520660d0a3030303030303030393820363535333520660d0a3030303030303030393920363535333520660d0a3030303030303031303020363535333520660d0a3030303030303031303120363535333520660d0a3030303030303031303220363535333520660d0a3030303030303031303320363535333520660d0a3030303030303031303420363535333520660d0a3030303030303031303520363535333520660d0a3030303030303031303620363535333520660d0a3030303030303031303720363535333520660d0a3030303030303031303820363535333520660d0a3030303030303031303920363535333520660d0a3030303030303031313020363535333520660d0a3030303030303031313120363535333520660d0a3030303030303031313220363535333520660d0a3030303030303031313320363535333520660d0a3030303030303031313420363535333520660d0a3030303030303031313520363535333520660d0a3030303030303031313620363535333520660d0a3030303030303031313720363535333520660d0a3030303030303031313820363535333520660d0a3030303030303031313920363535333520660d0a3030303030303031323020363535333520660d0a3030303030303031323120363535333520660d0a3030303030303031323220363535333520660d0a3030303030303031323320363535333520660d0a3030303030303031323420363535333520660d0a3030303030303031323520363535333520660d0a3030303030303031323620363535333520660d0a3030303030303031323720363535333520660d0a3030303030303031323820363535333520660d0a3030303030303031323920363535333520660d0a3030303030303031333020363535333520660d0a3030303030303031333120363535333520660d0a3030303030303031333220363535333520660d0a3030303030303031333320363535333520660d0a3030303030303031333420363535333520660d0a3030303030303031333520363535333520660d0a3030303030303031333620363535333520660d0a3030303030303031333720363535333520660d0a3030303030303031333820363535333520660d0a3030303030303031333920363535333520660d0a3030303030303031343020363535333520660d0a3030303030303031343120363535333520660d0a3030303030303031343220363535333520660d0a3030303030303031343320363535333520660d0a3030303030303031343420363535333520660d0a3030303030303031343520363535333520660d0a3030303030303030303020363535333520660d0a30303030303134373134203030303030206e0d0a30303030303135323730203030303030206e0d0a30303030303135373734203030303030206e0d0a30303030303138393630203030303030206e0d0a30303030303139303036203030303030206e0d0a747261696c65720d0a3c3c2f53697a65203135312f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d203e3e0d0a7374617274787265660d0a31393532340d0a2525454f460d0a787265660d0a3020300d0a747261696c65720d0a3c3c2f53697a65203135312f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d202f507265762031393532342f5852656653746d2031393030363e3e0d0a7374617274787265660d0a32323730330d0a2525454f46);
INSERT INTO `registro_aistencias` (`idRegistroAistencias`, `CodRegistro`, `fk_idEstudiante`, `Titulo`, `Fecha`, `Observacion`, `Validacion`, `Calificacion`, `HorasTrabajadas`, `AnexoPDF`) VALUES
(3, 'REG0003', 1, 'Semana 3', '2019-04-21', 'Entregado a Tiempo', 1, 0, 6, 0x255044462d312e370d0a25b5b5b5b50d0a312030206f626a0d0a3c3c2f547970652f436174616c6f672f50616765732032203020522f4c616e672865732d454329202f53747275637454726565526f6f74203133203020522f4d61726b496e666f3c3c2f4d61726b656420747275653e3e2f4d6574616461746120313438203020522f566965776572507265666572656e63657320313439203020523e3e0d0a656e646f626a0d0a322030206f626a0d0a3c3c2f547970652f50616765732f436f756e7420312f4b6964735b2033203020525d203e3e0d0a656e646f626a0d0a332030206f626a0d0a3c3c2f547970652f506167652f506172656e742032203020522f5265736f75726365733c3c2f466f6e743c3c2f46312035203020522f46322039203020523e3e2f4578744753746174653c3c2f4753372037203020522f4753382038203020523e3e2f584f626a6563743c3c2f496d6167653131203131203020523e3e2f50726f635365745b2f5044462f546578742f496d616765422f496d616765432f496d616765495d203e3e2f4d65646961426f785b2030203020373932203631325d202f436f6e74656e74732034203020522f47726f75703c3c2f547970652f47726f75702f532f5472616e73706172656e63792f43532f4465766963655247423e3e2f546162732f532f537472756374506172656e747320303e3e0d0a656e646f626a0d0a342030206f626a0d0a3c3c2f46696c7465722f466c6174654465636f64652f4c656e67746820343336333e3e0d0a73747265616d0d0a789cc55dcd6ee4c611be2fa077e071c68828f60f9b646018d895e48d8cddd55a2b3b09b2813196c69b01b4d25a2319b1df2ec79cf3043ee6ec174855ff911cb2ba7b66a8d880b53362b1eaebeeeaaaaf6a38adece8dda7c56df6f9e747af8fcf4eb2e2e8d5e2f643365bae0f4fdfcdbff8227b71729cfd78f0acc80bf88fb1bae05991550dcf14e3d9fdf2e0d99f3fcb6e0f9ebdb83c7876f425cbe097973f1c3c63205464f05694b9e259a9645ec1958f20f4f25d957d5883c6ec837e57db772f0f9efd6df6e6fcf55ccc5e5ccce5ec747ec867d989f9e7d5fc9015b3e7730eafe77fcf2ebf3a78760a16bf3e78b63b362e585e76a1694416c8e5d9e537f3c36a06866b63f7f8ec3f6fa6322d0a993341d93e3a86d136c6ea0582b838857f18e2107cf6c7c9405430fe8a02b131cdd9e9ebe32cebfb0a7b1a5f298bbc19e2b9387d899e70f66e7e28679717e025e7d9fc50ccfe3aaf66d9f1f91bf3ab57190a9d9c4ee7244d99d725054a2fc8bb0eaed337c767ede24d8602974a35148a93d3e97ca2e1b91094a1049fe04fe313a2cad900ce5b9c78bd41fea537e82578c05967efe885c9dee2c25c9cbe4567d1c2e75f9ee26bb36ce7f8f20dfe5aafe5ab53bd8ed32d9c68725512f8bf43db831f0afe9fcc6d1aedbc21eb6a605cbf980881e42a2f290493cdb254455e578495f7b3e379395b5dcd0fcbd9cdddd19bd54f7326664b1ce6cdfbf954104a51e45ca40d746cdf8869f78d5059c9452e865074d0f43f55ff17f39a7e1f139d682299503083e3e05f9ec24aea7d7b09c958877a1303ce4fbe01c66002c0b71000a4d9cd20c1d8b87f13efa6da7892e775438c62fa5d261498a3266dba58d6c08de5535b91bccc65f5e4566cc418b5f21e1202440ced3c102c940d16dacfaf973aa9bcc4d76fa70b1e90de493413c6a8322f13dd642c46c9e96354d100054f8d5153cd83220d4f6501e89a7c6a1bac5079cd7fa729c428dd5043ecf23288c2c7f8eaf2ecf81b88ce58dd65df612a1ee53dff87d0cc91e15604f209add4794359992e22b326e7e5935b29a5e6b04f6cc56697a7b5e2b2cb135bb1d965d44a4276d125cbfdaf207685bf7d40f2ca678f1f274b0415ec016aae27cc3795ca054b9becb17c534e9e6f2454f3d52e50d4c4507883f5bcac59de8c874fddf6ba383b3fc12e07d42bcf6d246595a96d4f30a8fe1b8530a49e696f3a3e9fce81792e05812f61baaa89a7ab51181ba4aa772baeeac91d49c80677780a96a3e7f70fab1f16570fd90b780781012818dc011542c5218257b8136b99575266f0a634f67ff8ccdefda397e44557923949837463c00d31e014556ed04ddea8be5340e8ace166a8cfa2ab303e78c62b640d76d00dcb6b62c84ed00035828311bf6d1b91851d22832abcf2e35339efdee70d6cb631a93e66020a72b258d9e40cefe548b93767eb958ee7f8e3167f2cd7838dbb97edbace4bd276d24a71b0cb7967a5aa82724f27ea916ad1d06a713bc51c00367567b9582d53d68bea95242121678de39656d4acbd867562b3c53de4e407ccc9234bb6a7f99ae7acda6bd10483a8cddca2b1a2cc6b6ad19ca8c1ea44438b26ed3c0b561a9cf64ef887a72c1a95cc939090b3868d16de84176df5df7b2820aeee6e46d66c4febb0d1c47e6b26599d57a2b7668aca0356b4835585d74cd969969c21c0add78c4ae34948027904ea0941cdda578fcb9fe687cdd806dbd32c4645d2559216ab84eaa1a89216cb89a62f566de7b784c85f8bde622545452ae727212167ad2c35d12166eddbb99cad96f811e93db0502a97ed8900c91fdf6bdd9460b9e44981d189260746eeb887121212d8d69b8c53ec230909396b4a29938c4667ed1dacdbafdf2fae71c1ee06ebb59fe5aae0e8b1fbac5761093207358005fcafd0d4137fb8b97497a5bf0c3faaa6e94920d9351296ec6eca6cd27163cd0a8b560c45909249d547e425fc451a8fa3744644533a128e97655e76030d670d8024d0f88b341ac7563c1a642b241e2fcd3ad21b8804b848233a88b4aa56c85f97ddeb9b265d463652d6f9485c5e9a75a4377061dae0258dcb5f0fe272c9a7834b05dcc949b38ef406ae924b9d90da152c7a93eaafcbeef54d932eb8a6e1f2d2015c0a8aa846d2f3e5af07e7cb0591b475f4d28175ac4495733598af6e50f022c129eb6e7adc36b6062fc1c387ce63c28c11d11b89c96e48efed584f0d1a8ea527113fe2ba70fb367547191bce86dbe2716db8475887b5284c4cc4def5daf484110ad1b965d353486eba2485e8e9b5082b74bba11d2f2e2da110dd89d5e1213b370e2174fe14323adae451aa6ab30a6f9ad4264fc1834d9e0eed7045b4edca981bab46fb7002eba06ae8141cb10e5121c732ff979a1d5e01f3f807be5a0ce9fd3ea62b994bcaf236bd29bb5609bd298393e84df5279bfae0344115dde431ad2e2612fa90c11e4f3be2788fc7031deff1f4474d55fc49cae83e896d1aed31704b1aecc093fa24062b590ef4074e7d5890a48c6e36d8c6cb1e03b7aca43bf058b3a18375ac7eed0f3cd62f082aa3a38aed5eec31704b7b5206ee18d25603a73e6048524657beb613b0c7c02daf4a717547c1b67275aae990a48c2e5e6d29bdc7c07be44d9025a4fe0846050bc45e2ab7bac2052265cf7ffca10205a035e76545ac00a4acf916beea946ca43d2f2d3ad2144914bdc2a06bd4b7a05590f55ba35e5ac4abb78051df4355c112c82da49316f1d2ac9ddb41a9e17b814946bd74c0a827a4f4487d232b697abd74607a3dc3a547dadd02f06bc76603e59215192d4a3afeed0372a85c4ad065cba556195d2e2568b3e5920f998172a9d5365add741c0ecaa5ae42cacbd314da7229a8d07a7067bc63e552c751581d1eb2f5ce2042eb4c41a3fd828743244dfe545b505f4e4ad115295a78addad241a7993fdde1e77cd8d75e64d7cb4c7f2671fb808faee9df5d5305cc8e3018b29c311c44ba6bcb076b30a51211918fba43aa229588fea24c9506dc551ede5a423921a86f9624298b9513dba077e5833198469404556f27298bd504dba0773540c76094df0aaa804d521623f6dba077447e2bf454219aa42cc6ceb741efd8f8569e43559349ca62143b19fd462169d37c1922d6f80c2c4dac7d7a2774f87e4c4d92659fd30915bec1510718b04fe5658cd45a3d04ebf2199cd6e3cbef3a40197de22e63d433acc7e76b1a8f2f0e43e3f2399dc663bda16604b5724b4d0ab8852405dc22798111f2e1162024e326b7353424286ee2427adca484f46c101da5f08b951d5600ffd09b9eeca4a4288b511da5f96898eaac177339bb595deb874f49aab3230e06d5463382234e758c41cf4f82734835655274c5c84e556d4d76bc39c74f82e0a9c64a9ab628ddd902bf8b7ec66227cf84f04b8aaaa7698b129e2df0bba8dbb1a8e2f829a29ca62d4a79b6c0efa2fd76f829b69ca62d4a7ab6c0efb2cc76fe43f1e5346d51da938a7f94f6989b49da531709b487d2e10bb1224a7b2815be202a12688f5742d31ea327427b027a7c915024d09e765024ed09ea71d93b80c713e7d0b85c860fe0b1dea0047aa2272dd60fbb6b4d4bb8a5a425dc3a7909cf463a426e1182426e865b5b8eb37484dcf40535b9b9096adaa03fb2de600a81924792e56682ae18f9298b0dd2a13f975edd03ddf948f29cdd2c56e6e681c538cd31f6523a3a922a6e1354c5484ea94f8fd88ae4786b091d1d4955b649caa214670bf42ed219836975b9a4287a92b228c1d902bd8baf1d83d19e88a4c87192b228bdd902bd8bea5ba18f3cebbc237a476eb640ef72c9369e5352dc38495994daa4a21fa536e66692dae039136587da40e067837447e9f0759756e2a84d4f85cb87940a5ffd381596daf494b894e995d0d4c6e86929404f8fcbaa013dbe1a68f5a8811e9778db4191d426a8c7e5e6001ecf8e43e372e93b80c77a03a4cc2e2d1976744801b790a4805b242f10e8e88464dce4b686e88e4e488f9b94909e0d4ac30afc5abc7b1480e5a12d4f96937155314223f806bd783e676c76f5b0fa497f2978758d8ff9eb038f9ad97af815f7091040d02f7a08b093b4340da45fd0f6c2b691d6f0abe15165fb20682afd29f410429c63197baa68f03bea91e5a3aae9145d31963558bf6de2b564c1782d6542bca674780629a3f1da88b8ef19f4451c99930921dbeb718f946f4859662513a2765895a739322170b7a32b46b07bce1152e5435010952700a101fa48c562e1bba8d02bcdc2ca7c18bda9ebce427b5d5be88af4432153fa7842eb67e631117a33851f3d0eeb8a8422d6483c08abb399cef1288defb1c45b2f21fa6064d25f2f5ce083c8abbb5bfc3cdf84462a30ed088881df972380a281c9dab3c124369991478bc3ca62a1094f29ddb94b666e2643133817ab62a189d2e14293516247476d945609b1515859e3246933c68f86d739f3e16df34b667109f4222311ee0ad2403a02941db7e246a49d93b1b656c710ce49df564786b36ed8a33405a4468f75d9ef5c173e721c07930ac7437bea288efd0e7519c5019b5ef16d71ec775aca288e42e5a18d3b0a63bf5352c660343c574a6e8b832aee773fada5aa21278770eca11db6d99881f7b31fe66af67e9e5de2c99497e71793596c1ad87772c4a43e32e82ffa74ccd38b37939d05c4ca0a9f2f7cc239640ab3cd740606aec894cc8bf1553ad35f5abfba795cdd67faf0ad9b6c6d0ee4ba8175bb73479dba120adeddcc59315be8972b7c798b2fd70fab8747e41257abdf40fc762ae478da0ef08721f2a36bc35cd4ec9381a60c90ebc92c5705f2e8a1656fea6a35ec97efbc8beaf1618ec50becb196f86d2fe0360c1042a683c5050df8d86f6bca1038203612cf2a84902890d230fc0d49a754e009d38826ea242d80c533292b7cb8b333b0b3db353253701b70b3477dbedbeab7db510e9a6478e8f3502cd563960304146499b4c6ca1a4abb323a61e403a509ba28e425cfc508701ddfd657f7ab79898c5ee08736e50c776d09bb56bbe41df8e6c7f9a132d7ef97d9d5bc329bf823107fbd536e960f467270e2d2ee8845c1f038ffe4b91ef065cdf76a57389a1f1dfe18b98c0e622e1b0fe95dd7d448d1f7bb619beb76dc459f0fe28cb40a7ce9ba85841d8496d317da99ed82a4ae5b03eeb2d6df97e814a4381dd8b8abdb0d53071e3550547327415578d3f31267b6e30e27cb4f4bdcf5b7d7cbdb2b7cb1825ca15309b9f177b0ce3067a811f3f19d6facb5ce1f9c37aa8e4f5216defb03e8bbec7dd8fa6ddabec93057b7ef3f81b49ef9fb870508ea1bf505adeb01d645878d3fe863396f16f0fe7b63046f59cc9b564463ba1b3f5d779fa9904c37068773616c5d43def02369915ff7de418ace7abf402e73b3d083fa112e3cb6b4e67e69be958dc35d81ee5f0ccd99724465cdf198eba863ee6d46e5c59813dd2cd67ae47a90ba410e435c5d2fd089fcbcadf349c12855e3e945c99b71343540dc939c8efde67220f653f777521e5c0fc47eaf808cec666e5ce8aee5000329604df8eb2eb8d7a3cf92c078452db1e16a6362933745284a059e2589ea0a8677e4ac55afb577f9f880a1e0de84a57fea40b2bcbfbda382fb4ec619c7d37487c6a3c1dd5a73ee1b9b37f2b992246dc1f03e044f84f71b1dead699eed26ec6f7b5fefb0f3fe31ece5c1afdd4c67b2cdf56d77778e71a6860dddeef69a09a59fd3fe31fb3b0b9e4ca64850f10e2498eb8dbe0a59078f674f2d28d8602d8266dffafff9186270cac130b7a5dd5762b123a3a918e75e341bfadeaf62beb45840d2cd8b235d364dab75019f2415408481833ad80f9b0bb2fb31117a01eacca44d247f5fe125485a3021ead3de2db3a183c824f5e43d58c14f0c1e56f323aec80011facc7935f0720e2d1c1584ba47e54c7324959383610f3f77bc5063204240c71f4ef31152c7d79c62280a8057e284991017b992603e4fd3eb6e9eb34196815506400e74689b13aaebdce888f8b9324ecee606538d0d1383a029499ce3ab3321c0b5b3b2385692bc2e80f7e9384b44b7cdd3f064ad59dfe78a6bb6fa228593dd27a6bf4330ae888a202cd95fefb2ba2c6e7f5aef0ef329e7d5c7c5832969ddc65cefffe074c92890f0d0a656e6473747265616d0d0a656e646f626a0d0a352030206f626a0d0a3c3c2f547970652f466f6e742f537562747970652f54727565547970652f4e616d652f46312f42617365466f6e742f417269616c2d426f6c644d542f456e636f64696e672f57696e416e7369456e636f64696e672f466f6e7444657363726970746f722036203020522f4669727374436861722033322f4c61737443686172203234332f57696474687320313436203020523e3e0d0a656e646f626a0d0a362030206f626a0d0a3c3c2f547970652f466f6e7444657363726970746f722f466f6e744e616d652f417269616c2d426f6c644d542f466c6167732033322f4974616c6963416e676c6520302f417363656e74203930352f44657363656e74202d3231302f436170486569676874203732382f4176675769647468203437392f4d6178576964746820323632382f466f6e74576569676874203730302f58486569676874203235302f4c656164696e672033332f5374656d562034372f466f6e7442426f785b202d363238202d3231302032303030203732385d203e3e0d0a656e646f626a0d0a372030206f626a0d0a3c3c2f547970652f4578744753746174652f424d2f4e6f726d616c2f636120313e3e0d0a656e646f626a0d0a382030206f626a0d0a3c3c2f547970652f4578744753746174652f424d2f4e6f726d616c2f434120313e3e0d0a656e646f626a0d0a392030206f626a0d0a3c3c2f547970652f466f6e742f537562747970652f54727565547970652f4e616d652f46322f42617365466f6e742f417269616c4d542f456e636f64696e672f57696e416e7369456e636f64696e672f466f6e7444657363726970746f72203130203020522f4669727374436861722033322f4c61737443686172203234332f57696474687320313437203020523e3e0d0a656e646f626a0d0a31302030206f626a0d0a3c3c2f547970652f466f6e7444657363726970746f722f466f6e744e616d652f417269616c4d542f466c6167732033322f4974616c6963416e676c6520302f417363656e74203930352f44657363656e74202d3231302f436170486569676874203732382f4176675769647468203434312f4d6178576964746820323636352f466f6e74576569676874203430302f58486569676874203235302f4c656164696e672033332f5374656d562034342f466f6e7442426f785b202d363635202d3231302032303030203732385d203e3e0d0a656e646f626a0d0a31312030206f626a0d0a3c3c2f547970652f584f626a6563742f537562747970652f496d6167652f5769647468203237372f486569676874203131342f436f6c6f7253706163652f4465766963655247422f42697473506572436f6d706f6e656e7420382f46696c7465722f4443544465636f64652f496e746572706f6c61746520747275652f4c656e67746820363239363e3e0d0a73747265616d0d0affd8ffe000104a4649460001010100dc00dc0000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080072011503012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f33a28a2bdf3e7828a28c120900e0753e94ae96e34ae1455ed2eca2be9a486490a3f96cd1003ef30ed547041e47438a85522e4e25b834ae145145686614514e450f2a21e8cc01a2f61a571b456d78bb488342f14dee9b6c58c30300a5cf3ca83fd6b16945a6ae86d59d828a28a64851451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140c5f2e4f2cc9b0f960eddd8e335b9636f3c49a968adb04d7013cbc8e1d95b2307dc138a4d2e39db4c92de58659ac6e4eefdc00cd1baf7c7d3b7bd68c68d1c51e669a68d1d25b3ba2818a90a731b0cf1cf18f515e562310eee07751a3a291058a1ba92d6f2de1cfd923f2658c6320f3f30f53cfe94bfd9a03d8e9d7285771927988232e0024127b74c568da436f677b24d6a50f9a55591d5d5449d4e0e0ff3a495adbcc79ddbe69b6fc91231568d48dc8090319f6af3feb12e7d0ecf62b975306df4b82e15ae26668fce477b7b7854bb1c1201f6191fa56310558ab0c303820d7653b44e9166516ed3aa43e628259d4619963551c0dc719279c5636a2204b062349fb3b49262395e525f03dbfad77e1715272b48e4af41257462d4907fc7c47fef8fe74ca7c3ff001f117fbe3f9d7a92d8e18ee74ff127fe4a0eabfefaff00e80b5ca5759f127fe4a0eabfefaffe80b5ca54d2f811553e20a2ad5be977f75179b6f673cb19380c8848a65cd8dd596dfb55b4b0eefbbbd48cd5732d85caed720a28a544796458e352cee405503924f414c9128abffd87ab7fd03ae7fefd9aad0d9dcdc4ed04304924ab9ca2a9246297322b95f621a2afff0061eabff40ebaff00bf668fec2d57fe81d75ff7e8d2e78f70e4976285157ffb0f55ff00a075d7fdfa347f61eabff40ebaff00bf668e78f70e49762851566e34dbeb48fccb8b49a24ce373a10334f8749d46e225961b2b89236195654241a7ccad7b872b29d157ff00b0b55ffa075d7fdfb34d7d1b538d773e9f7217d4c66973c7b8724bb14a8a1d191b6bab2b7a118a4aab8acc5a2af2e8ba9ba065d3ee4a91904467915567b79ad65314f13c720eaae30692927b072b445452d1542128a5a280128a5a2800a544695d63452cec7000ef495d1f81ada3baf14db89402103381ee2b9f155bd8d1954ec6b429fb4a8a3dcd4d234b834c5513457371705b958e5d8aa7fad3f58cdaea3e4ac4a15a1136eda32af939191d7d6b36f6faedb5dd47cb68d63498a80e3a0c9c0fe75b161acdafd93cabdb512b2ee2cf1939033ffd7af9f9d0acdaaf6bdcf5e3529a5ecf6b0cb99ecd35682e2caeb6449106668e4077484727078150406c56d35033cc1e6dc1ad99e4f5232b81c0acc9347d3aeb7496f398803cab1fe5f8568e95e178c4d6f218259f2e1b3d00008ffebd3a91a3469f349b4c21ed272b4516b45533cf799b51b6d50084742c0e771dc7fa551d63488f528da7b38ae1268c7314926f047a03dabb1bfd36e64d3e4874db6f2dc91b5a47e3af3fa66b9cd2a1d4b4df19da59dfb467cc52db53a57161f16a4e55a0f55d0deb51b254e4b7381e870460f7a7c3ff001f11ff00be3f9d687892dd2dbc477f0c63e5598e07a567c1ff001f11ff00be3f9d7d6d2a9ed68a9f7478338725471ec751f127fe4a06abfefaff00e80b5ca5755f127fe4a06abfefaffe80b5cad5d2f811353e23e8bf83a3fe28083febbcbffa15731f1d471a3fd64fe95d3fc1dff9102dff00ebbcbffa15733f1dbeee8ff593fa579f0ff783d09aff00673c6ab67c21ff0023a687ff005ff07fe8c5ac5adaf087fc8e9a1ffd8420ff00d18b5e8d4f819e7d3f891f57e063a57857c32c7fc2d3d53fedbffe875eedfc35f27dcea77ba4f89f51b8b1b878263712aef43ce371af370f172528a3d1c4c945c59f57fcb4715f2bff00c271e25ffa0c5cff00df55e97f07b5fd5758d4b524d42f65b858e252a1cf439a5530d2847998e9e2633972d8f5de3d051f2d727f122faeb4df04de5d59ccd0cea576ba9e4735e07ff09c7897fe83173ff7d52a5425515d1556bc69bb347b1fc67c7fc211c7fcfca7f5adbf86c07fc2bdd1fd7c93ff00a11af9db51f12eb3ab5b7d9efafe69e1ceed8e78cd7d15f0dbfe49ee8fff005c4ffe846aeb5374e9a4cce8d4552a368ea7e5a3e5231c578efc61d7b55d235ad3e3b0bd96dd1edcb30438c9dc6bcf2dbc7be26b59d665d56672a73873906a618694e3cc9953c4c612e568fa03c4be07d1bc4968e93daa473e0ec9e350ac0fbfad7cdde20d0ee7c3baccfa6dd2fcf19e187465ec6be94f04789078a7c3306a0ca166c98e503a6e1d6bcebe3a69e8ada56a2a3f78c1e16fa0c11fccd5d0a928cf91935e9c651e747abe8207fc23fa77fd7b47ff00a08af9f7e2c7fc940bcff713f957d07a0ffc8bfa77fd7b47ff00a08af9f3e2c7fc940bcff713f95185fe2b0c4afdd2389a28a4af4cf305a2928a005a2928a005ed5b1e16bffecef11da4cc7085b637d0d63d0090c08ea0f15cf8aa6aa51945f635a3271a89a3b6bbb510f8d6ea3651b64bc85f18e08624d7a34de1cd29a762176b4f682260985cb9556d9f520e41f635c8eb312aeada6dd4842a18a1676ef9563fa6335d45e7882cf4b682595cac9771ab1da038f9428423df033ff0335e6612a39d08f2f43d3a94d426dbea6078db4fb0b3d3b4e360a9b181f9c2e33f29ff000ae934c51fd916a071985791f4ac2f1dbc72693a6bc43084b903d3eff15b9a7c891e8f6acec15444bc93ed5e2f125dd0a76ee76e596f6922b680aff64b82f2bbff00a54ca371e9891ab26f61cf8fe2ba7c086daccbb9f4eb5a5e1d9d1adae5378dc6f272173ce379aa9af0db16b32a7fad166a07d326bc0c373471728f7d0f42b5a5453ec793ea775f6ed52eaeb39f36466cfe35041ff1f11ffbe3f9d462a483fe3e23ff007c7f3afd3a9c542928aec7c74a4e552efb9d3fc4aff9281aaffbebff00a02d72b5d57c4aff009281aaff00bebffa02d72b554fe042a9f11f45fc1dff00927f07fd7797ff0042ae67e3b74d1feb27f4ae97e0e303e00847a4f2e7fefaae73e3ac4e60d265c7c81dd73ef8af3e1fef07a33ff773c62b67c21ff23a687ff61083ff00462d6356e782e279bc71a1a460922f626fc03027f415e854f819e753f8d1f5776fc2be43d6ff00e43da8ff00d7d49ffa11afae9d82c658f40326be43d5dc3eb77eebf75ae6423fefa35c582f899dd8dd914ebd6be05ffc85b55ffae2bfcebc96bd6be05ffc85b55ffae2bfceba713fc2672e1bf888eefe2bff00c93fbefaaff3af9aabe95f8aff00f2205f7d57f9d7cd559e0fe035c6fc615f4ffc35ff00927ba3ff00d713ff00a11af980d7d3ff000dbfe49ee8ff00f5c4ff00e846a71bf0a1e0be2679c7c718ddf5ed34a2337fa31e833fc46bcbedf4fbcbb9d61b7b59a4918e02aa1afaee5b68276066863908e0175071491da5b42dbe3b7891bd5500358d3c4b84395237a985539735ce67e1d787a6f0df84a1b4bae2e2463348bfdd27b7e95c47c75bc431693640fef017948f6e07f435e9dae788b4df0fd8bdcdfdca46aa32133f331f402be67f16788e7f146bd36a136550fcb1479fbaa3a0a2842539f3b0af38c21c88fa7f41ff00917b4eff00af68ff00f4115f3dfc59ff0092837bfee27f2afa1341ff00917b4eff00af68ff00f4115f3dfc59ff00928379fee27f2a785fe2b162bf848e273451466bd33cb0a28a3340c28a28a002ae69764f7fa8c30aab15dc0b903eeae79354ebaaf0437cfa9c31b84b992dff00744fa835c78ea92a7424e2746160a5552674da8c76fab78a12c3cc223b6893241ea40638ac8d374fb8d561ba8ee4856b3708493d3ef67e9d2b32d66bdd375b9a6b86f32e729393ff003d14f040fa86af42b5b092e6d6f64fb3bc16f74a19c9189338209c7be07eb5f2952a56c24a2a93ba691f6187852c461dfb55d4c3f116ab6da9e85a6c56e4efb74d9203eca79ad4be2b71a568da6f05ae9e3cff00baa371fe58fc6b275bd0adedb4d6974f5744552ae09e54e3ad45ad4b74c96060478a4b481648a755273951915d38a92c5c609e8d33cf951fab4e56d5325d1fcab3bab6bf44da8da8dc5abfd18fca7f023f5ad6bf9525f135d69cc79bab0c267d4135c3d9cd73b731caf790c53f9fe4aa121a427be2bad907dabc756f72f80b6f60249bfd8241e2b8abe1392b73b77b2ff86269d6e6a7ca91e592c6d0ccf13fde462a7f0a583fe3e23ff7c7f3ab3aacf15cea971342b8477247bf3d6ab43ff1f117fbe3f9d7d9d29374537bd8f9e9a4aa34bb9d3fc4aff9283aaffbebff00a02d72b5d5fc4aff009283aaff00bebffa02d7295a52f811353e267b8fc0ed5525d1aff4a63fbd826f3947aab003f423f5aebfc79e161e2bf0f3da2305b88dbcc858ff007bd2be77f0bf88aebc2faec3a95b73b7e5910f4743d457d29e1ef15e95e24b349ec6e50b11f342c70e87e95c15e1284f9e27a1879c670e491f36dd78435fb3ba7b7974bb8dea71954c835e9bf0afe1fdee9fa9aebbaac46168d08b789bef648c163e9c135ec1b54f500d41777b6b616ed3dd5c470c6a3259d801533c4ce71e5b150c34212e6b94bc4ba9c5a47872faf663858e16c7b9c702be4d672eecedd58926bd1be267c404f1148ba5e98cdf6089b2efd3cd6ff0af38aeac2d2708ddf539315554e56415eb5f02ff00e42daaff00d705fe75e4b5eb3f02cffc4db55ffae0bfceaf13fc26461bf888ef3e2bff00c93fbefaaff3af9aabe94f8ac73e00befaaff3af9aeb3c1fc06b8d7ef857d3ff000d7fe49ee8ff00f5c4ff00e846be60afa7be1b11ff000af747e7fe589ffd08d2c6fc28304fde6721f163c59acf87b57b1874cbb30c7240598000e4ee35e7337c47f154ebb5b54900ff0064015d67c73ff90f699ff5ec7ff4235e555587a7174d3689c454929b49966f751bcd466335edccb3c87f8a46cd56a28ae9b24ac8e74db7a9f5d683ff0022fe9dff005ed1ff00e822bc47e25f8635ad4bc6d757367a74f342c8803a2f078af6dd088ff847f4effaf68fff0041157f8f515e442a3a736d1ebce9aa9049b3e56ff8423c4bff00407b9ffbe693fe109f12ff00d01ee7fef8afaab8f5147cb5b7d727d8c3ea70ee7c7b7769716174f6b75134534670e8c3906a1aea7e247fc943d63febaaff00e80b5cb57a30778a6cf3e6ad2b051451544852c72bc52078dcab0e841a4a315328a92b31c5d9dd1de5fca754d1ec3c4762a0dcd9011dd46be9fe7f9d769a7ea11dfda43a8452a2c320dce09fe2c60f1df3fa7233dabc9341d767d0af4ca804904836cd11e8ebfe35d3b2148e3d4b4032be9ecd97808c796d9c900fd6be5f15869d17c8f6e8ff0043e8b058b4f5fbce8357bf85f49bd4b345f2c0dae49c919cf03b0adab700f87a3e33fe8dff00b2d79cddeb37da92888ba340325d5502b038ef5dcc9aada58e836f14afba69600b1c29cbb7cbe95e3e2f0f5d538f7b9ead49d3e6ba7ba313c357369a2e9faa5dcb858c3236deecc41c01f5aa7aa5ec9a3e8175757385d535662760eb1c7d87e02987ecda32ff00696b1136f53fe896a39527d49ee471cfe55c6eabaa5ceb17ef7772d966fbabd947a0af5f0b82f6f5b9d6b1eafd0f0f1188f674f97a94a9f0ff00c7c45fef8fe74ca7c3ff001f11ff00be3f9d7d43568e878b1f88ea3e24ff00c941d57fdf5ffd016b94aeabe24ffc940d57fdf5ff00d016b95a54be043a9f1336b4ef0ddc6a4b6e6399104f13ca3703c0570a47e66b57fe10bd534db960d7c96ec1caac884e186e550411d8ee1f9573f6fadea569622ce0bb74b70db8203d0e41fe601fc28935cd4e587ca92f2568c6700b74cb6efe7cd29464d96a5048eee25f1a5a69d72cde22b987ec880c90ee24ae41c0e48f4aafa878335bbebe8e2bed77cd699246fdeeecb142a30149f9bef76f435c79f106aadf68dd7923fda7997773b8e3152c7e29d6e29c4cba84be60dd86cf4dc413fa807f0acd5292d517ed62d599a16fe0bb89edd5cde451c926d58e3753f3310c707d3ee9a53e08bd863b59aeee238219ed9ae4b95276004707df9cd6645e25d6604748efe550ff007b079eff00e2688fc4dacc52175bf9777b9cf603fa0abb5422f4fb16edfc2fe66b377a6cfa8450bdbc4d307d8583a052e48f4f9466b58f83ee34eb6b49a1d55a0f3e1fb44b30c8511940e380724ff8d726752bd6bc9af1ae1cdc4cac92484f2c194a91f9122ad2f8935743032de38681424678e142ed03e98e28719b60a5046f2f85f57d4b4ffb445ab7da6cd998162cdd881920f639fd2b32e7c2b2dac30ab5dc6d7970c0416ca872e0bec073d073daa97fc241ab798cff006e9416ce707ae4827f5029f1f893588a15892fa508adb80cf439cff3e68519a07283dcbb3f842eedfc567419665f336798b2aa121976eec81d7dbeb5a47c29af5ac6162d45bc85ba16a0a3b60671f37d326b966d56fde58e46ba91a48e3312b96e429ce467d393f9d4d16bdaac091a477d2aac6bb5577700673fce8719340a504741a9f842e216b83a86b68cf6f6e27dae8c5b616dbd3b1c9e9f8d5493c1cf03ac771a8c11cb2ccd1409b18f99b4804e7b727f4ac59b56bfb812096e5df7c4227c9fbc808207e6054fff000916afe4c917dba5db23176e7b9c67e9d07e5428c907341bd4b375e19b9b5d2a6be6990ac4c54a007270fb6adc5e08d41df4f123f96b790b4c0f96495c0cedc7738c7e759cfe27d6646919efa46f31363038c119cff3a8dbc41ab32b2b5fcc549ce3774e31c7a714ed3b0af036e1d1f535d4b51b0975b68469f22c25c3332b12db4631d29355d235ad22c2dee6e3559b74d218c22b9e0862a79cfb7a562c1afea96f7773750de48935c9dd2b8eac739cfd7351dc6b1a85d5b476f3dcb491c672a1bb739ebf5353c8ee573ab1bd69a56ad3cf70936b5240b14eb6caeccc77c8dd071d07bd49a6681e21d5248234d4a58da59a785b748d84f29549271d8ee007bd638f156b6b26f5bf9031001231dba1fafbd447c45abb42909bf98471c7e5a00d8c2e41c7e6abf90a3d9b0e78d8a374275bc992e4b19d1cac9b8e4ee1c1a8aa4b89e5bab892e2672f2c8773b1ee7d6a3ad96c62f70a28a2992145145030aded0bc5b7da1c7f6745496d724989fdfdeb06835857c3c2bc792a2d0d2955953973459dc7fc245e18bd7f3ae74b920988c3344719fca90f8ab41d3dfcdd3f4b69670302499b38ae228af3ff00b1e8decdbb7a9d7fda153b234b58d72f75cb8596edc1099088bd141acda28af4a9528528f24159238e7394e5cd2dc29d1b059918f40c09fce9b4568f6b109d8ddf196ab6dadf8b6ff51b32c6de665285860f0a07f4ac2a28a518a8ab21b77770a28a2a84145145001451450014514500145145002514b45002514b450014514500145145001451450014514500145145006d7910ff00cf24ff00be451e443ff3c93fef9145152507910ffcf24ffbe451e443ff003c93fef914514083c887fe7927fdf228f221ff009e49ff007c8a28a003c887fe7927fdf228f221ff009e49ff007c8a28a061e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145002f910ff00cf24ff00be451451401fffd90d0a656e6473747265616d0d0a656e646f626a0d0a31322030206f626a0d0a3c3c2f417574686f722850454e454c4f5045204e415448414c592054454c4c4f204a494d454e455a29202f43726561746f7228feff004d006900630072006f0073006f0066007400ae00200057006f00720064002000700061007200610020004f00660066006900630065002000330036003529202f4372656174696f6e4461746528443a32303139303730333032313835312d30352730302729202f4d6f644461746528443a32303139303730333032313835312d30352730302729202f50726f647563657228feff004d006900630072006f0073006f0066007400ae00200057006f00720064002000700061007200610020004f00660066006900630065002000330036003529203e3e0d0a656e646f626a0d0a32302030206f626a0d0a3c3c2f547970652f4f626a53746d2f4e203133322f466972737420313038312f46696c7465722f466c6174654465636f64652f4c656e67746820313939303e3e0d0a73747265616d0d0a789c9d59db6e1b37107d2fd07fe063fb90ec0eef2c8202692e6890d6356c177d088a42b1b7b61a5932e435d2fc7dcf6849cb2e86dc588013ae76499eb99c1992438aaa579a9423a5b5a29494364a3bbcb3caf478e994715a69af6c8f0f415967958ecaf5f86094735e19ad7c1fd14d798f9756050aca900a81a750d1e05b52312685a76449e12fa5880915f540324111f598d9a20df86c146948613ddad80351910188857c06b3d8a4c83a7c8f8a580c884ece6b88a4c8935516f379cc63303e402a8dfeb14f0a6a50f441397c4f0415f03d79bc87ce3d1474116d24e5a13580a014da649487de6c114068033c28a90d7e7818c242554ca92d74f51ed60218a6d42e7ae5319f87ae0efd3df465c3851454c07c11c207cc9760d4c022026c672ed2b01b5a4c12605a826b020c4701fd6147cd06856a3a0605d318c3963568935751c3f89837b2cb2067c47c0ecaee4c01bb448c0f6414869a002512c647387de71880278c4ff05b42ff8449134cd9c3493081edf111109660fce4e00a50835d08451554b286d899f095813540226b0982618085360425ad833ad4c38b9efd01f1ac8740d4b3bf60a41d0162cfb36054847ba96757c31e0472d904818960cc5e334d7a3cf0cc50c7113b1afd1c41132210423335a0b1630613fe3903fb12fbdc7aee0c123808481af3b8c09d41030fdd413c3cc0326c78177654c43c11821328e9229c49cc9584e909c1e11214064dc116cd7c051d7a388ce027cf24222604e80608308269042e83524c3e0e1c58160f2015cc8107b0c80199208a07aadaf1d07324204abc4f4c7dcc1c1c77c6cc91b833732d8040f892f003c60b3de624d835f4701f217402711c41a140701821d8829e22098464333131d9ec4c48b6313a7818137f21728879b460092c1538965fbce88e7950af4ebad3eeb83bfb723374a7e3f6ee7c7cb31aaebbf71f54ffa7ea8e2f95e13e3ffef8ed378f87bc5d5ede6d87eee56afcee6a1c6f6e7fe8bacf9f3f3fbf1b6f56cf878bbbe7c37977bd58df2d567f2daf1797c3badb35b7dd727d3b2ec7bbf3e566bd5875bf9f1dfff2ecddd1e9d9bbb3df5fbdfbede8e52fcfdebe7afecfcde5f74a12c9c7a64ca21af4f421fae943ccd387d8a70f714f1fe29f3e244843c0f6168a481684c134e6ec67d166bbdee240db04135d3a07e6aa607d1978220edc299e4592c6234514e06171214e41d3d83d646cea27f2cf84b67ea9269fed9b602273f760af45ea52d598be6dcc9de259245158d314568c19ab9b96b155cf59d70413a36d0f265bc61f689949f12c9208dce68c18e7b6cd195be58c6b7346cc10b6cd1977286726c5b348ed00fc6973f145a45d988c3b85f22468332f9e2d3eae0671a67eca06fe7f11ddcea8e2b2e57c6b481287b8a63f5d5531d7240feffec49c3a8757e58f6ff287778562da99c1f3550af9e6eac49b3d3198e7f0aa0b946f2e50c4479743f0aac1ef9b5cc1ce980ee18baff2c537f9a2f96875085e3ddf147bca29600a95cce24caeecf3ec8a6ca12cb80861ee65ab2cd3cefd2fa84393559a0f94125268ef44429555a1c92a2d2e7e7b3031eb862aa54293525a8c9739b02a9f429b4fe2e235075625536c261f2d46e60c58ac669ed8e68898f9e7c0aa04896d828839600eac4e90f6be780a8eccd9cca6ece7ec816c9b2cb5a84ffb4c251e2ae2fd6e418cae584d003135c1c484b607138d97aa7b92444d3071873f07a6ab60cd4db31193d41c58d567a9b9693662929a03ab6e9a539b2062929a03ab1224b5092226a919302eaa1d165e536864d2663a6547671764e364b1c5ed6cdf4c4e46cc845c706b05189703ab78cdfc64e4ea4ddf4e505c6cace235d73023e6c379bcfaf1a06f2e6356ae98cde2d5fd47cd95cccaa5ad393caaae655c866de1c975b159bc3a5fa8c9172b17d566f10e5dd172b8141a177a15b71777143315f165cddaa53fb9f647eda58d2be055bc66eeb272e190669297ae262faeafb7f0e4aae32c5e7585e3ea7d0b4fce64b37875ffe9e62a67e54c368b575de7f8e6a1852767b259bc3a5f74932f4ece647378e6d0c52e874ba171a157717b71473153115f14b25da87672ce9c291e53bd544ded5ab59373a699c961f56af59c2573b99aeaf56a32ed3b0639eb9a99dc64ea5c336daec9b9d0cc70ad5e429eb550e650bd62be2f15d40a8ad3a12aeffeca925402a4b8b7287158a5d1e58355d6f36b6f880eb8227207dc113939e3b6c71c707be7e4cc571cf47a737e773dacc74a558c0d9853c9b4b6a89c50a6ccaf725a99f2b2cac945e771532a72d338971391cd9ecda564b2e57dde32d8c735a407629d6d87e164b319bb93cd6af87571a3f2e6e778b18502fc554d3b979decf77bd0fbaf47c3bfe3fbe18ba23cf55bccb5de8c4377c4ffbd595fec7f9ca1ebc7cdbfdde9703e765ced1ab6d3338f29cfefd6abe57a38bd5ab084fce2e51a332cc6e5669d7f6fc7e5df0b3cec7efdb1d97efab8d97cda9b9cdfdc5e0dc3c8428eddaf8bf3ede6c1ef5757f8ffc1efd7cbc56a73f9e0c5e96a79313ce83be1a0dbe576719def97b3ae4777d7b71f60114a8fac7bb4b81e6e3f4c3ff7fe7eaaa38b87a7972e3d6ca68af37d631e35ee51131e35e9613355fcee9b69c0542ccb65ac5c60caa59f5c94c9b58c5c65c8e7ff7c32cf67e67c9a2de7cc72382b87a6729829878cb2f92f9bf2b2592e5bcbb2e52b5bb1b2452a5b97b2a5284b7d5918cb82559681929ebf365ef25570bea4cd7799f99631dfdfe59bb57c67956f937270ffa9befde63f23dc34960d0a656e6473747265616d0d0a656e646f626a0d0a3134362030206f626a0d0a5b203237382030203020302030203020302030203333332033333320302030203020302030203237382030203020302030203020302030203020302030203333332030203020302030203020302037323220373232203732322037323220363637203631312037373820373232203237382035353620302036313120383333203732322037373820363637203020373232203636372036313120373232203636372030203636372036363720302030203020302030203535362030203535362036313120353536203631312035353620333333203020363131203237382030203020323738203838392036313120363131203631312030203338392035353620333333203631312035353620302035353620302035303020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302037323220302030203020302030203020302036363720302030203020302030203020302030203020373738203020302030203020302030203020302030203020302030203020353536203020302030203020302030203020353536203020302030203020302030203020302030203631315d200d0a656e646f626a0d0a3134372030206f626a0d0a5b2032373820302030203020302030203020302033333320302030203020323738203020323738203237382030203020302030203020302030203020302030203020302030203020302030203020302030203020302036363720302030203020323738203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302035353620353536203530302035353620353536203020353536203020323232203020302032323220383333203535362035353620353536203535362033333320353030203237382035353620353030203020302035303020353030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203535365d200d0a656e646f626a0d0a3134382030206f626a0d0a3c3c2f547970652f4d657461646174612f537562747970652f584d4c2f4c656e67746820333130323e3e0d0a73747265616d0d0a3c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e3c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d22332e312d373031223e0a3c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a7064663d22687474703a2f2f6e732e61646f62652e636f6d2f7064662f312e332f223e0a3c7064663a50726f64756365723e4d6963726f736f6674c2ae20576f72642070617261204f6666696365203336353c2f7064663a50726f64756365723e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a64633d22687474703a2f2f7075726c2e6f72672f64632f656c656d656e74732f312e312f223e0a3c64633a63726561746f723e3c7264663a5365713e3c7264663a6c693e50454e454c4f5045204e415448414c592054454c4c4f204a494d454e455a3c2f7264663a6c693e3c2f7264663a5365713e3c2f64633a63726561746f723e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f223e0a3c786d703a43726561746f72546f6f6c3e4d6963726f736f6674c2ae20576f72642070617261204f6666696365203336353c2f786d703a43726561746f72546f6f6c3e3c786d703a437265617465446174653e323031392d30372d30335430323a31383a35312d30353a30303c2f786d703a437265617465446174653e3c786d703a4d6f64696679446174653e323031392d30372d30335430323a31383a35312d30353a30303c2f786d703a4d6f64696679446174653e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f223e0a3c786d704d4d3a446f63756d656e7449443e757569643a36434344454446302d463442302d343531342d423031302d4543423739303741303242443c2f786d704d4d3a446f63756d656e7449443e3c786d704d4d3a496e7374616e636549443e757569643a36434344454446302d463442302d343531342d423031302d4543423739303741303242443c2f786d704d4d3a496e7374616e636549443e3c2f7264663a4465736372697074696f6e3e0a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a3c2f7264663a5244463e3c2f783a786d706d6574613e3c3f787061636b657420656e643d2277223f3e0d0a656e6473747265616d0d0a656e646f626a0d0a3134392030206f626a0d0a3c3c2f446973706c6179446f635469746c6520747275653e3e0d0a656e646f626a0d0a3135302030206f626a0d0a3c3c2f547970652f585265662f53697a65203135302f575b2031203420325d202f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d202f46696c7465722f466c6174654465636f64652f4c656e677468203331353e3e0d0a73747265616d0d0a789c35d3e93695011406e00f15a2389d734412e18450860a219a3316a5724a249434c8106932dc879f5697d52574032d7d7d4fed1ffb597badfdee7f3b08c2dadfcf087b2c08fef2033f2332f323e2d311895cfc8a48a690c6ef8822b9a6fa301b5e4904dfb1892d6ce31bfe6dee84b9e681ff530632918503388843c8460eca7114477018b9c8471e4e218e4214e01862284612091c4711ca70022538895254601d4d388f4a9c4635aa700629d4a20667518706d4e31c1ab1861eb4a01917d08a4bb88876b4e1323ad0854e5c4137867115bdb88e6bb8891bb88d5be8c31d0ca01f4318c404eee12e46318207b88f8718c3633c421ae3788a277883493cc3734ce105a6318b19bcc41ce6f10a0b788d0f7887b758c47b7cc43296b08a157cc2063ee30bbe861fd7b1113d6ce75e44f76e447f6110fc0172a438bc0d0a656e6473747265616d0d0a656e646f626a0d0a787265660d0a30203135310d0a3030303030303030313320363535333520660d0a30303030303030303137203030303030206e0d0a30303030303030313638203030303030206e0d0a30303030303030323234203030303030206e0d0a30303030303030353234203030303030206e0d0a30303030303034393632203030303030206e0d0a30303030303035313239203030303030206e0d0a30303030303035333630203030303030206e0d0a30303030303035343133203030303030206e0d0a30303030303035343636203030303030206e0d0a30303030303035363239203030303030206e0d0a30303030303035383536203030303030206e0d0a30303030303132333331203030303030206e0d0a3030303030303030313420363535333520660d0a3030303030303030313520363535333520660d0a3030303030303030313620363535333520660d0a3030303030303030313720363535333520660d0a3030303030303030313820363535333520660d0a3030303030303030313920363535333520660d0a3030303030303030323020363535333520660d0a3030303030303030323120363535333520660d0a3030303030303030323220363535333520660d0a3030303030303030323320363535333520660d0a3030303030303030323420363535333520660d0a3030303030303030323520363535333520660d0a3030303030303030323620363535333520660d0a3030303030303030323720363535333520660d0a3030303030303030323820363535333520660d0a3030303030303030323920363535333520660d0a3030303030303030333020363535333520660d0a3030303030303030333120363535333520660d0a3030303030303030333220363535333520660d0a3030303030303030333320363535333520660d0a3030303030303030333420363535333520660d0a3030303030303030333520363535333520660d0a3030303030303030333620363535333520660d0a3030303030303030333720363535333520660d0a3030303030303030333820363535333520660d0a3030303030303030333920363535333520660d0a3030303030303030343020363535333520660d0a3030303030303030343120363535333520660d0a3030303030303030343220363535333520660d0a3030303030303030343320363535333520660d0a3030303030303030343420363535333520660d0a3030303030303030343520363535333520660d0a3030303030303030343620363535333520660d0a3030303030303030343720363535333520660d0a3030303030303030343820363535333520660d0a3030303030303030343920363535333520660d0a3030303030303030353020363535333520660d0a3030303030303030353120363535333520660d0a3030303030303030353220363535333520660d0a3030303030303030353320363535333520660d0a3030303030303030353420363535333520660d0a3030303030303030353520363535333520660d0a3030303030303030353620363535333520660d0a3030303030303030353720363535333520660d0a3030303030303030353820363535333520660d0a3030303030303030353920363535333520660d0a3030303030303030363020363535333520660d0a3030303030303030363120363535333520660d0a3030303030303030363220363535333520660d0a3030303030303030363320363535333520660d0a3030303030303030363420363535333520660d0a3030303030303030363520363535333520660d0a3030303030303030363620363535333520660d0a3030303030303030363720363535333520660d0a3030303030303030363820363535333520660d0a3030303030303030363920363535333520660d0a3030303030303030373020363535333520660d0a3030303030303030373120363535333520660d0a3030303030303030373220363535333520660d0a3030303030303030373320363535333520660d0a3030303030303030373420363535333520660d0a3030303030303030373520363535333520660d0a3030303030303030373620363535333520660d0a3030303030303030373720363535333520660d0a3030303030303030373820363535333520660d0a3030303030303030373920363535333520660d0a3030303030303030383020363535333520660d0a3030303030303030383120363535333520660d0a3030303030303030383220363535333520660d0a3030303030303030383320363535333520660d0a3030303030303030383420363535333520660d0a3030303030303030383520363535333520660d0a3030303030303030383620363535333520660d0a3030303030303030383720363535333520660d0a3030303030303030383820363535333520660d0a3030303030303030383920363535333520660d0a3030303030303030393020363535333520660d0a3030303030303030393120363535333520660d0a3030303030303030393220363535333520660d0a3030303030303030393320363535333520660d0a3030303030303030393420363535333520660d0a3030303030303030393520363535333520660d0a3030303030303030393620363535333520660d0a3030303030303030393720363535333520660d0a3030303030303030393820363535333520660d0a3030303030303030393920363535333520660d0a3030303030303031303020363535333520660d0a3030303030303031303120363535333520660d0a3030303030303031303220363535333520660d0a3030303030303031303320363535333520660d0a3030303030303031303420363535333520660d0a3030303030303031303520363535333520660d0a3030303030303031303620363535333520660d0a3030303030303031303720363535333520660d0a3030303030303031303820363535333520660d0a3030303030303031303920363535333520660d0a3030303030303031313020363535333520660d0a3030303030303031313120363535333520660d0a3030303030303031313220363535333520660d0a3030303030303031313320363535333520660d0a3030303030303031313420363535333520660d0a3030303030303031313520363535333520660d0a3030303030303031313620363535333520660d0a3030303030303031313720363535333520660d0a3030303030303031313820363535333520660d0a3030303030303031313920363535333520660d0a3030303030303031323020363535333520660d0a3030303030303031323120363535333520660d0a3030303030303031323220363535333520660d0a3030303030303031323320363535333520660d0a3030303030303031323420363535333520660d0a3030303030303031323520363535333520660d0a3030303030303031323620363535333520660d0a3030303030303031323720363535333520660d0a3030303030303031323820363535333520660d0a3030303030303031323920363535333520660d0a3030303030303031333020363535333520660d0a3030303030303031333120363535333520660d0a3030303030303031333220363535333520660d0a3030303030303031333320363535333520660d0a3030303030303031333420363535333520660d0a3030303030303031333520363535333520660d0a3030303030303031333620363535333520660d0a3030303030303031333720363535333520660d0a3030303030303031333820363535333520660d0a3030303030303031333920363535333520660d0a3030303030303031343020363535333520660d0a3030303030303031343120363535333520660d0a3030303030303031343220363535333520660d0a3030303030303031343320363535333520660d0a3030303030303031343420363535333520660d0a3030303030303031343520363535333520660d0a3030303030303030303020363535333520660d0a30303030303134373134203030303030206e0d0a30303030303135323730203030303030206e0d0a30303030303135373734203030303030206e0d0a30303030303138393630203030303030206e0d0a30303030303139303036203030303030206e0d0a747261696c65720d0a3c3c2f53697a65203135312f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d203e3e0d0a7374617274787265660d0a31393532340d0a2525454f460d0a787265660d0a3020300d0a747261696c65720d0a3c3c2f53697a65203135312f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d202f507265762031393532342f5852656653746d2031393030363e3e0d0a7374617274787265660d0a32323730330d0a2525454f46),
(4, 'REG0004', 1, 'Semana 4', '2019-05-02', 'Entregado a Tiempo', 0, 0, 4, NULL);
INSERT INTO `registro_aistencias` (`idRegistroAistencias`, `CodRegistro`, `fk_idEstudiante`, `Titulo`, `Fecha`, `Observacion`, `Validacion`, `Calificacion`, `HorasTrabajadas`, `AnexoPDF`) VALUES
(5, 'REG0005', 2, 'Semana 1', '2019-04-05', 'Entregado a Tiempo', 1, 1, 3, 0x255044462d312e370d0a25b5b5b5b50d0a312030206f626a0d0a3c3c2f547970652f436174616c6f672f50616765732032203020522f4c616e672865732d454329202f53747275637454726565526f6f74203133203020522f4d61726b496e666f3c3c2f4d61726b656420747275653e3e2f4d6574616461746120313438203020522f566965776572507265666572656e63657320313439203020523e3e0d0a656e646f626a0d0a322030206f626a0d0a3c3c2f547970652f50616765732f436f756e7420312f4b6964735b2033203020525d203e3e0d0a656e646f626a0d0a332030206f626a0d0a3c3c2f547970652f506167652f506172656e742032203020522f5265736f75726365733c3c2f466f6e743c3c2f46312035203020522f46322039203020523e3e2f4578744753746174653c3c2f4753372037203020522f4753382038203020523e3e2f584f626a6563743c3c2f496d6167653131203131203020523e3e2f50726f635365745b2f5044462f546578742f496d616765422f496d616765432f496d616765495d203e3e2f4d65646961426f785b2030203020373932203631325d202f436f6e74656e74732034203020522f47726f75703c3c2f547970652f47726f75702f532f5472616e73706172656e63792f43532f4465766963655247423e3e2f546162732f532f537472756374506172656e747320303e3e0d0a656e646f626a0d0a342030206f626a0d0a3c3c2f46696c7465722f466c6174654465636f64652f4c656e67746820343336333e3e0d0a73747265616d0d0a789cc55dcd6ee4c611be2fa077e071c68828f60f9b646018d895e48d8cddd55a2b3b09b2813196c69b01b4d25a2319b1df2ec79cf3043ee6ec174855ff911cb2ba7b66a8d880b53362b1eaebeeeaaaaf6a38adece8dda7c56df6f9e747af8fcf4eb2e2e8d5e2f643365bae0f4fdfcdbff8227b71729cfd78f0acc80bf88fb1bae05991550dcf14e3d9fdf2e0d99f3fcb6e0f9ebdb83c7876f425cbe097973f1c3c63205464f05694b9e259a9645ec1958f20f4f25d957d5883c6ec837e57db772f0f9efd6df6e6fcf55ccc5e5ccce5ec747ec867d989f9e7d5fc9015b3e7730eafe77fcf2ebf3a78760a16bf3e78b63b362e585e76a1694416c8e5d9e537f3c36a06866b63f7f8ec3f6fa6322d0a993341d93e3a86d136c6ea0582b838857f18e2107cf6c7c9405430fe8a02b131cdd9e9ebe32cebfb0a7b1a5f298bbc19e2b9387d899e70f66e7e28679717e025e7d9fc50ccfe3aaf66d9f1f91bf3ab57190a9d9c4ee7244d99d725054a2fc8bb0eaed337c767ede24d8602974a35148a93d3e97ca2e1b91094a1049fe04fe313a2cad900ce5b9c78bd41fea537e82578c05967efe885c9dee2c25c9cbe4567d1c2e75f9ee26bb36ce7f8f20dfe5aafe5ab53bd8ed32d9c68725512f8bf43db831f0afe9fcc6d1aedbc21eb6a605cbf980881e42a2f290493cdb254455e578495f7b3e379395b5dcd0fcbd9cdddd19bd54f7326664b1ce6cdfbf954104a51e45ca40d746cdf8869f78d5059c9452e865074d0f43f55ff17f39a7e1f139d682299503083e3e05f9ec24aea7d7b09c958877a1303ce4fbe01c66002c0b71000a4d9cd20c1d8b87f13efa6da7892e775438c62fa5d261498a3266dba58d6c08de5535b91bccc65f5e4566cc418b5f21e1202440ced3c102c940d16dacfaf973aa9bcc4d76fa70b1e90de493413c6a8322f13dd642c46c9e96354d100054f8d5153cd83220d4f6501e89a7c6a1bac5079cd7fa729c428dd5043ecf23288c2c7f8eaf2ecf81b88ce58dd65df612a1ee53dff87d0cc91e15604f209add4794359992e22b326e7e5935b29a5e6b04f6cc56697a7b5e2b2cb135bb1d965d44a4276d125cbfdaf207685bf7d40f2ca678f1f274b0415ec016aae27cc3795ca054b9becb17c534e9e6f2454f3d52e50d4c4507883f5bcac59de8c874fddf6ba383b3fc12e07d42bcf6d246595a96d4f30a8fe1b8530a49e696f3a3e9fce81792e05812f61baaa89a7ab51181ba4aa772baeeac91d49c80677780a96a3e7f70fab1f16570fd90b780781012818dc011542c5218257b8136b99575266f0a634f67ff8ccdefda397e44557923949837463c00d31e014556ed04ddea8be5340e8ace166a8cfa2ab303e78c62b640d76d00dcb6b62c84ed00035828311bf6d1b91851d22832abcf2e35339efdee70d6cb631a93e66020a72b258d9e40cefe548b93767eb958ee7f8e3167f2cd7838dbb97edbace4bd276d24a71b0cb7967a5aa82724f27ea916ad1d06a713bc51c00367567b9582d53d68bea95242121678de39656d4acbd867562b3c53de4e407ccc9234bb6a7f99ae7acda6bd10483a8cddca2b1a2cc6b6ad19ca8c1ea44438b26ed3c0b561a9cf64ef887a72c1a95cc939090b3868d16de84176df5df7b2820aeee6e46d66c4febb0d1c47e6b26599d57a2b7668aca0356b4835585d74cd969969c21c0add78c4ae34948027904ea0941cdda578fcb9fe687cdd806dbd32c4645d2559216ab84eaa1a89216cb89a62f566de7b784c85f8bde622545452ae727212167ad2c35d12166eddbb99cad96f811e93db0502a97ed8900c91fdf6bdd9460b9e44981d189260746eeb887121212d8d69b8c53ec230909396b4a29938c4667ed1dacdbafdf2fae71c1ee06ebb59fe5aae0e8b1fbac5761093207358005fcafd0d4137fb8b97497a5bf0c3faaa6e94920d9351296ec6eca6cd27163cd0a8b560c45909249d547e425fc451a8fa3744644533a128e97655e76030d670d8024d0f88b341ac7563c1a642b241e2fcd3ad21b8804b848233a88b4aa56c85f97ddeb9b265d463652d6f9485c5e9a75a4377061dae0258dcb5f0fe272c9a7834b05dcc949b38ef406ae924b9d90da152c7a93eaafcbeef54d932eb8a6e1f2d2015c0a8aa846d2f3e5af07e7cb0591b475f4d28175ac4495733598af6e50f022c129eb6e7adc36b6062fc1c387ce63c28c11d11b89c96e48efed584f0d1a8ea527113fe2ba70fb367547191bce86dbe2716db8475887b5284c4cc4def5daf484110ad1b965d353486eba2485e8e9b5082b74bba11d2f2e2da110dd89d5e1213b370e2174fe14323adae451aa6ab30a6f9ad4264fc1834d9e0eed7045b4edca981bab46fb7002eba06ae8141cb10e5121c732ff979a1d5e01f3f807be5a0ce9fd3ea62b994bcaf236bd29bb5609bd298393e84df5279bfae0344115dde431ad2e2612fa90c11e4f3be2788fc7031deff1f4474d55fc49cae83e896d1aed31704b1aecc093fa24062b590ef4074e7d5890a48c6e36d8c6cb1e03b7aca43bf058b3a18375ac7eed0f3cd62f082aa3a38aed5eec31704b7b5206ee18d25603a73e6048524657beb613b0c7c02daf4a717547c1b67275aae990a48c2e5e6d29bdc7c07be44d9025a4fe0846050bc45e2ab7bac2052265cf7ffca10205a035e76545ac00a4acf916beea946ca43d2f2d3ad2144914bdc2a06bd4b7a05590f55ba35e5ac4abb78051df4355c112c82da49316f1d2ac9ddb41a9e17b814946bd74c0a827a4f4487d232b697abd74607a3dc3a547dadd02f06bc76603e59215192d4a3afeed0372a85c4ad065cba556195d2e2568b3e5920f998172a9d5365add741c0ecaa5ae42cacbd314da7229a8d07a7067bc63e552c751581d1eb2f5ce2042eb4c41a3fd828743244dfe545b505f4e4ad115295a78addad241a7993fdde1e77cd8d75e64d7cb4c7f2671fb808faee9df5d5305cc8e3018b29c311c44ba6bcb076b30a51211918fba43aa229588fea24c9506dc551ede5a423921a86f9624298b9513dba077e5833198469404556f27298bd504dba0773540c76094df0aaa804d521623f6dba077447e2bf454219aa42cc6ceb741efd8f8569e43559349ca62143b19fd462169d37c1922d6f80c2c4dac7d7a2774f87e4c4d92659fd30915bec1510718b04fe5658cd45a3d04ebf2199cd6e3cbef3a40197de22e63d433acc7e76b1a8f2f0e43e3f2399dc663bda16604b5724b4d0ab8852405dc22798111f2e1162024e326b7353424286ee2427adca484f46c101da5f08b951d5600ffd09b9eeca4a4288b511da5f96898eaac177339bb595deb874f49aab3230e06d5463382234e758c41cf4f82734835655274c5c84e556d4d76bc39c74f82e0a9c64a9ab628ddd902bf8b7ec66227cf84f04b8aaaa7698b129e2df0bba8dbb1a8e2f829a29ca62d4a79b6c0efa2fd76f829b69ca62d4a7ab6c0efb2cc76fe43f1e5346d51da938a7f94f6989b49da531709b487d2e10bb1224a7b2815be202a12688f5742d31ea327427b027a7c915024d09e765024ed09ea71d93b80c713e7d0b85c860fe0b1dea0047aa2272dd60fbb6b4d4bb8a5a425dc3a7909cf463a426e1182426e865b5b8eb37484dcf40535b9b9096adaa03fb2de600a81924792e56682ae18f9298b0dd2a13f975edd03ddf948f29cdd2c56e6e681c538cd31f6523a3a922a6e1354c5484ea94f8fd88ae4786b091d1d4955b649caa214670bf42ed219836975b9a4287a92b228c1d902bd8baf1d83d19e88a4c87192b228bdd902bd8bea5ba18f3cebbc237a476eb640ef72c9369e5352dc38495994daa4a21fa536e66692dae039136587da40e067837447e9f0759756e2a84d4f85cb87940a5ffd381596daf494b894e995d0d4c6e86929404f8fcbaa013dbe1a68f5a8811e9778db4191d426a8c7e5e6001ecf8e43e372e93b80c77a03a4cc2e2d1976744801b790a4805b242f10e8e88464dce4b686e88e4e488f9b94909e0d4ac30afc5abc7b1480e5a12d4f96937155314223f806bd783e676c76f5b0fa497f2978758d8ff9eb038f9ad97af815f7091040d02f7a08b093b4340da45fd0f6c2b691d6f0abe15165fb20682afd29f410429c63197baa68f03bea91e5a3aae9145d31963558bf6de2b564c1782d6542bca674780629a3f1da88b8ef19f4451c99930921dbeb718f946f4859662513a2765895a739322170b7a32b46b07bce1152e5435010952700a101fa48c562e1bba8d02bcdc2ca7c18bda9ebce427b5d5be88af4432153fa7842eb67e631117a33851f3d0eeb8a8422d6483c08abb399cef1288defb1c45b2f21fa6064d25f2f5ce083c8abbb5bfc3cdf84462a30ed088881df972380a281c9dab3c124369991478bc3ca62a1094f29ddb94b666e2643133817ab62a189d2e14293516247476d945609b1515859e3246933c68f86d739f3e16df34b667109f4222311ee0ad2403a02941db7e246a49d93b1b656c710ce49df564786b36ed8a33405a4468f75d9ef5c173e721c07930ac7437bea288efd0e7519c5019b5ef16d71ec775aca288e42e5a18d3b0a63bf5352c660343c574a6e8b832aee773fada5aa21278770eca11db6d99881f7b31fe66af67e9e5de2c99497e71793596c1ad87772c4a43e32e82ffa74ccd38b37939d05c4ca0a9f2f7cc239640ab3cd740606aec894cc8bf1553ad35f5abfba795cdd67faf0ad9b6c6d0ee4ba8175bb73479dba120adeddcc59315be8972b7c798b2fd70fab8747e41257abdf40fc762ae478da0ef08721f2a36bc35cd4ec9381a60c90ebc92c5705f2e8a1656fea6a35ec97efbc8beaf1618ec50becb196f86d2fe0360c1042a683c5050df8d86f6bca1038203612cf2a84902890d230fc0d49a754e009d38826ea242d80c533292b7cb8b333b0b3db353253701b70b3477dbedbeab7db510e9a6478e8f3502cd563960304146499b4c6ca1a4abb323a61e403a509ba28e425cfc508701ddfd657f7ab79898c5ee08736e50c776d09bb56bbe41df8e6c7f9a132d7ef97d9d5bc329bf823107fbd536e960f467270e2d2ee8845c1f038ffe4b91ef065cdf76a57389a1f1dfe18b98c0e622e1b0fe95dd7d448d1f7bb619beb76dc459f0fe28cb40a7ce9ba85841d8496d317da99ed82a4ae5b03eeb2d6df97e814a4381dd8b8abdb0d53071e3550547327415578d3f31267b6e30e27cb4f4bdcf5b7d7cbdb2b7cb1825ca15309b9f177b0ce3067a811f3f19d6facb5ce1f9c37aa8e4f5216defb03e8bbec7dd8fa6ddabec93057b7ef3f81b49ef9fb870508ea1bf505adeb01d645878d3fe863396f16f0fe7b63046f59cc9b564463ba1b3f5d779fa9904c37068773616c5d43def02369915ff7de418ace7abf402e73b3d083fa112e3cb6b4e67e69be958dc35d81ee5f0ccd99724465cdf198eba863ee6d46e5c59813dd2cd67ae47a90ba410e435c5d2fd089fcbcadf349c12855e3e945c99b71343540dc939c8efde67220f653f777521e5c0fc47eaf808cec666e5ce8aee5000329604df8eb2eb8d7a3cf92c078452db1e16a6362933745284a059e2589ea0a8677e4ac55afb577f9f880a1e0de84a57fea40b2bcbfbda382fb4ec619c7d37487c6a3c1dd5a73ee1b9b37f2b992246dc1f03e044f84f71b1dead699eed26ec6f7b5fefb0f3fe31ece5c1afdd4c67b2cdf56d77778e71a6860dddeef69a09a59fd3fe31fb3b0b9e4ca64850f10e2498eb8dbe0a59078f674f2d28d8602d8266dffafff9186270cac130b7a5dd5762b123a3a918e75e341bfadeaf62beb45840d2cd8b235d364dab75019f2415408481833ad80f9b0bb2fb31117a01eacca44d247f5fe125485a3021ead3de2db3a183c824f5e43d58c14f0c1e56f323aec80011facc7935f0720e2d1c1584ba47e54c7324959383610f3f77bc5063204240c71f4ef31152c7d79c62280a8057e284991017b992603e4fd3eb6e9eb34196815506400e74689b13aaebdce888f8b9324ecee606538d0d1383a029499ce3ab3321c0b5b3b2385692bc2e80f7e9384b44b7cdd3f064ad59dfe78a6bb6fa228593dd27a6bf4330ae888a202cd95fefb2ba2c6e7f5aef0ef329e7d5c7c5832969ddc65cefffe074c92890f0d0a656e6473747265616d0d0a656e646f626a0d0a352030206f626a0d0a3c3c2f547970652f466f6e742f537562747970652f54727565547970652f4e616d652f46312f42617365466f6e742f417269616c2d426f6c644d542f456e636f64696e672f57696e416e7369456e636f64696e672f466f6e7444657363726970746f722036203020522f4669727374436861722033322f4c61737443686172203234332f57696474687320313436203020523e3e0d0a656e646f626a0d0a362030206f626a0d0a3c3c2f547970652f466f6e7444657363726970746f722f466f6e744e616d652f417269616c2d426f6c644d542f466c6167732033322f4974616c6963416e676c6520302f417363656e74203930352f44657363656e74202d3231302f436170486569676874203732382f4176675769647468203437392f4d6178576964746820323632382f466f6e74576569676874203730302f58486569676874203235302f4c656164696e672033332f5374656d562034372f466f6e7442426f785b202d363238202d3231302032303030203732385d203e3e0d0a656e646f626a0d0a372030206f626a0d0a3c3c2f547970652f4578744753746174652f424d2f4e6f726d616c2f636120313e3e0d0a656e646f626a0d0a382030206f626a0d0a3c3c2f547970652f4578744753746174652f424d2f4e6f726d616c2f434120313e3e0d0a656e646f626a0d0a392030206f626a0d0a3c3c2f547970652f466f6e742f537562747970652f54727565547970652f4e616d652f46322f42617365466f6e742f417269616c4d542f456e636f64696e672f57696e416e7369456e636f64696e672f466f6e7444657363726970746f72203130203020522f4669727374436861722033322f4c61737443686172203234332f57696474687320313437203020523e3e0d0a656e646f626a0d0a31302030206f626a0d0a3c3c2f547970652f466f6e7444657363726970746f722f466f6e744e616d652f417269616c4d542f466c6167732033322f4974616c6963416e676c6520302f417363656e74203930352f44657363656e74202d3231302f436170486569676874203732382f4176675769647468203434312f4d6178576964746820323636352f466f6e74576569676874203430302f58486569676874203235302f4c656164696e672033332f5374656d562034342f466f6e7442426f785b202d363635202d3231302032303030203732385d203e3e0d0a656e646f626a0d0a31312030206f626a0d0a3c3c2f547970652f584f626a6563742f537562747970652f496d6167652f5769647468203237372f486569676874203131342f436f6c6f7253706163652f4465766963655247422f42697473506572436f6d706f6e656e7420382f46696c7465722f4443544465636f64652f496e746572706f6c61746520747275652f4c656e67746820363239363e3e0d0a73747265616d0d0affd8ffe000104a4649460001010100dc00dc0000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080072011503012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f33a28a2bdf3e7828a28c120900e0753e94ae96e34ae1455ed2eca2be9a486490a3f96cd1003ef30ed547041e47438a85522e4e25b834ae145145686614514e450f2a21e8cc01a2f61a571b456d78bb488342f14dee9b6c58c30300a5cf3ca83fd6b16945a6ae86d59d828a28a64851451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140c5f2e4f2cc9b0f960eddd8e335b9636f3c49a968adb04d7013cbc8e1d95b2307dc138a4d2e39db4c92de58659ac6e4eefdc00cd1baf7c7d3b7bd68c68d1c51e669a68d1d25b3ba2818a90a731b0cf1cf18f515e562310eee07751a3a291058a1ba92d6f2de1cfd923f2658c6320f3f30f53cfe94bfd9a03d8e9d7285771927988232e0024127b74c568da436f677b24d6a50f9a55591d5d5449d4e0e0ff3a495adbcc79ddbe69b6fc91231568d48dc8090319f6af3feb12e7d0ecf62b975306df4b82e15ae26668fce477b7b7854bb1c1201f6191fa56310558ab0c303820d7653b44e9166516ed3aa43e628259d4619963551c0dc719279c5636a2204b062349fb3b49262395e525f03dbfad77e1715272b48e4af41257462d4907fc7c47fef8fe74ca7c3ff001f117fbe3f9d7a92d8e18ee74ff127fe4a0eabfefaff00e80b5ca5759f127fe4a0eabfefaffe80b5ca54d2f811553e20a2ad5be977f75179b6f673cb19380c8848a65cd8dd596dfb55b4b0eefbbbd48cd5732d85caed720a28a544796458e352cee405503924f414c9128abffd87ab7fd03ae7fefd9aad0d9dcdc4ed04304924ab9ca2a9246297322b95f621a2afff0061eabff40ebaff00bf668fec2d57fe81d75ff7e8d2e78f70e4976285157ffb0f55ff00a075d7fdfa347f61eabff40ebaff00bf668e78f70e49762851566e34dbeb48fccb8b49a24ce373a10334f8749d46e225961b2b89236195654241a7ccad7b872b29d157ff00b0b55ffa075d7fdfb34d7d1b538d773e9f7217d4c66973c7b8724bb14a8a1d191b6bab2b7a118a4aab8acc5a2af2e8ba9ba065d3ee4a91904467915567b79ad65314f13c720eaae30692927b072b445452d1542128a5a280128a5a2800a544695d63452cec7000ef495d1f81ada3baf14db89402103381ee2b9f155bd8d1954ec6b429fb4a8a3dcd4d234b834c5513457371705b958e5d8aa7fad3f58cdaea3e4ac4a15a1136eda32af939191d7d6b36f6faedb5dd47cb68d63498a80e3a0c9c0fe75b161acdafd93cabdb512b2ee2cf1939033ffd7af9f9d0acdaaf6bdcf5e3529a5ecf6b0cb99ecd35682e2caeb6449106668e4077484727078150406c56d35033cc1e6dc1ad99e4f5232b81c0acc9347d3aeb7496f398803cab1fe5f8568e95e178c4d6f218259f2e1b3d00008ffebd3a91a3469f349b4c21ed272b4516b45533cf799b51b6d50084742c0e771dc7fa551d63488f528da7b38ae1268c7314926f047a03dabb1bfd36e64d3e4874db6f2dc91b5a47e3af3fa66b9cd2a1d4b4df19da59dfb467cc52db53a57161f16a4e55a0f55d0deb51b254e4b7381e870460f7a7c3ff001f11ff00be3f9d687892dd2dbc477f0c63e5598e07a567c1ff001f11ff00be3f9d7d6d2a9ed68a9f7478338725471ec751f127fe4a06abfefaff00e80b5ca5755f127fe4a06abfefaffe80b5cad5d2f811353e23e8bf83a3fe28083febbcbffa15731f1d471a3fd64fe95d3fc1dff9102dff00ebbcbffa15733f1dbeee8ff593fa579f0ff783d09aff00673c6ab67c21ff0023a687ff005ff07fe8c5ac5adaf087fc8e9a1ffd8420ff00d18b5e8d4f819e7d3f891f57e063a57857c32c7fc2d3d53fedbffe875eedfc35f27dcea77ba4f89f51b8b1b878263712aef43ce371af370f172528a3d1c4c945c59f57fcb4715f2bff00c271e25ffa0c5cff00df55e97f07b5fd5758d4b524d42f65b858e252a1cf439a5530d2847998e9e2633972d8f5de3d051f2d727f122faeb4df04de5d59ccd0cea576ba9e4735e07ff09c7897fe83173ff7d52a5425515d1556bc69bb347b1fc67c7fc211c7fcfca7f5adbf86c07fc2bdd1fd7c93ff00a11af9db51f12eb3ab5b7d9efafe69e1ceed8e78cd7d15f0dbfe49ee8fff005c4ffe846aeb5374e9a4cce8d4552a368ea7e5a3e5231c578efc61d7b55d235ad3e3b0bd96dd1edcb30438c9dc6bcf2dbc7be26b59d665d56672a73873906a618694e3cc9953c4c612e568fa03c4be07d1bc4968e93daa473e0ec9e350ac0fbfad7cdde20d0ee7c3baccfa6dd2fcf19e187465ec6be94f04789078a7c3306a0ca166c98e503a6e1d6bcebe3a69e8ada56a2a3f78c1e16fa0c11fccd5d0a928cf91935e9c651e747abe8207fc23fa77fd7b47ff00a08af9f7e2c7fc940bcff713f957d07a0ffc8bfa77fd7b47ff00a08af9f3e2c7fc940bcff713f95185fe2b0c4afdd2389a28a4af4cf305a2928a005a2928a005ed5b1e16bffecef11da4cc7085b637d0d63d0090c08ea0f15cf8aa6aa51945f635a3271a89a3b6bbb510f8d6ea3651b64bc85f18e08624d7a34de1cd29a762176b4f682260985cb9556d9f520e41f635c8eb312aeada6dd4842a18a1676ef9563fa6335d45e7882cf4b682595cac9771ab1da038f9428423df033ff0335e6612a39d08f2f43d3a94d426dbea6078db4fb0b3d3b4e360a9b181f9c2e33f29ff000ae934c51fd916a071985791f4ac2f1dbc72693a6bc43084b903d3eff15b9a7c891e8f6acec15444bc93ed5e2f125dd0a76ee76e596f6922b680aff64b82f2bbff00a54ca371e9891ab26f61cf8fe2ba7c086daccbb9f4eb5a5e1d9d1adae5378dc6f272173ce379aa9af0db16b32a7fad166a07d326bc0c373471728f7d0f42b5a5453ec793ea775f6ed52eaeb39f36466cfe35041ff1f11ffbe3f9d462a483fe3e23ff007c7f3afd3a9c542928aec7c74a4e552efb9d3fc4aff9281aaffbebff00a02d72b5d57c4aff009281aaff00bebffa02d72b554fe042a9f11f45fc1dff00927f07fd7797ff0042ae67e3b74d1feb27f4ae97e0e303e00847a4f2e7fefaae73e3ac4e60d265c7c81dd73ef8af3e1fef07a33ff773c62b67c21ff23a687ff61083ff00462d6356e782e279bc71a1a460922f626fc03027f415e854f819e753f8d1f5776fc2be43d6ff00e43da8ff00d7d49ffa11afae9d82c658f40326be43d5dc3eb77eebf75ae6423fefa35c582f899dd8dd914ebd6be05ffc85b55ffae2bfcebc96bd6be05ffc85b55ffae2bfceba713fc2672e1bf888eefe2bff00c93fbefaaff3af9aabe95f8aff00f2205f7d57f9d7cd559e0fe035c6fc615f4ffc35ff00927ba3ff00d713ff00a11af980d7d3ff000dbfe49ee8ff00f5c4ff00e846a71bf0a1e0be2679c7c718ddf5ed34a2337fa31e833fc46bcbedf4fbcbb9d61b7b59a4918e02aa1afaee5b68276066863908e0175071491da5b42dbe3b7891bd5500358d3c4b84395237a985539735ce67e1d787a6f0df84a1b4bae2e2463348bfdd27b7e95c47c75bc431693640fef017948f6e07f435e9dae788b4df0fd8bdcdfdca46aa32133f331f402be67f16788e7f146bd36a136550fcb1479fbaa3a0a2842539f3b0af38c21c88fa7f41ff00917b4eff00af68ff00f4115f3dfc59ff0092837bfee27f2afa1341ff00917b4eff00af68ff00f4115f3dfc59ff00928379fee27f2a785fe2b162bf848e273451466bd33cb0a28a3340c28a28a002ae69764f7fa8c30aab15dc0b903eeae79354ebaaf0437cfa9c31b84b992dff00744fa835c78ea92a7424e2746160a5552674da8c76fab78a12c3cc223b6893241ea40638ac8d374fb8d561ba8ee4856b3708493d3ef67e9d2b32d66bdd375b9a6b86f32e729393ff003d14f040fa86af42b5b092e6d6f64fb3bc16f74a19c9189338209c7be07eb5f2952a56c24a2a93ba691f6187852c461dfb55d4c3f116ab6da9e85a6c56e4efb74d9203eca79ad4be2b71a568da6f05ae9e3cff00baa371fe58fc6b275bd0adedb4d6974f5744552ae09e54e3ad45ad4b74c96060478a4b481648a755273951915d38a92c5c609e8d33cf951fab4e56d5325d1fcab3bab6bf44da8da8dc5abfd18fca7f023f5ad6bf9525f135d69cc79bab0c267d4135c3d9cd73b731caf790c53f9fe4aa121a427be2bad907dabc756f72f80b6f60249bfd8241e2b8abe1392b73b77b2ff86269d6e6a7ca91e592c6d0ccf13fde462a7f0a583fe3e23ff7c7f3ab3aacf15cea971342b8477247bf3d6ab43ff1f117fbe3f9d7d9d29374537bd8f9e9a4aa34bb9d3fc4aff9283aaffbebff00a02d72b5d5fc4aff009283aaff00bebffa02d7295a52f811353e267b8fc0ed5525d1aff4a63fbd826f3947aab003f423f5aebfc79e161e2bf0f3da2305b88dbcc858ff007bd2be77f0bf88aebc2faec3a95b73b7e5910f4743d457d29e1ef15e95e24b349ec6e50b11f342c70e87e95c15e1284f9e27a1879c670e491f36dd78435fb3ba7b7974bb8dea71954c835e9bf0afe1fdee9fa9aebbaac46168d08b789bef648c163e9c135ec1b54f500d41777b6b616ed3dd5c470c6a3259d801533c4ce71e5b150c34212e6b94bc4ba9c5a47872faf663858e16c7b9c702be4d672eecedd58926bd1be267c404f1148ba5e98cdf6089b2efd3cd6ff0af38aeac2d2708ddf539315554e56415eb5f02ff00e42daaff00d705fe75e4b5eb3f02cffc4db55ffae0bfceaf13fc26461bf888ef3e2bff00c93fbefaaff3af9aabe94f8ac73e00befaaff3af9aeb3c1fc06b8d7ef857d3ff000d7fe49ee8ff00f5c4ff00e846be60afa7be1b11ff000af747e7fe589ffd08d2c6fc28304fde6721f163c59acf87b57b1874cbb30c7240598000e4ee35e7337c47f154ebb5b54900ff0064015d67c73ff90f699ff5ec7ff4235e555587a7174d3689c454929b49966f751bcd466335edccb3c87f8a46cd56a28ae9b24ac8e74db7a9f5d683ff0022fe9dff005ed1ff00e822bc47e25f8635ad4bc6d757367a74f342c8803a2f078af6dd088ff847f4effaf68fff0041157f8f515e442a3a736d1ebce9aa9049b3e56ff8423c4bff00407b9ffbe693fe109f12ff00d01ee7fef8afaab8f5147cb5b7d727d8c3ea70ee7c7b7769716174f6b75134534670e8c3906a1aea7e247fc943d63febaaff00e80b5cb57a30778a6cf3e6ad2b051451544852c72bc52078dcab0e841a4a315328a92b31c5d9dd1de5fca754d1ec3c4762a0dcd9011dd46be9fe7f9d769a7ea11dfda43a8452a2c320dce09fe2c60f1df3fa7233dabc9341d767d0af4ca804904836cd11e8ebfe35d3b2148e3d4b4032be9ecd97808c796d9c900fd6be5f15869d17c8f6e8ff0043e8b058b4f5fbce8357bf85f49bd4b345f2c0dae49c919cf03b0adab700f87a3e33fe8dff00b2d79cddeb37da92888ba340325d5502b038ef5dcc9aada58e836f14afba69600b1c29cbb7cbe95e3e2f0f5d538f7b9ead49d3e6ba7ba313c357369a2e9faa5dcb858c3236deecc41c01f5aa7aa5ec9a3e8175757385d535662760eb1c7d87e02987ecda32ff00696b1136f53fe896a39527d49ee471cfe55c6eabaa5ceb17ef7772d966fbabd947a0af5f0b82f6f5b9d6b1eafd0f0f1188f674f97a94a9f0ff00c7c45fef8fe74ca7c3ff001f11ff00be3f9d7d43568e878b1f88ea3e24ff00c941d57fdf5ffd016b94aeabe24ffc940d57fdf5ff00d016b95a54be043a9f1336b4ef0ddc6a4b6e6399104f13ca3703c0570a47e66b57fe10bd534db960d7c96ec1caac884e186e550411d8ee1f9573f6fadea569622ce0bb74b70db8203d0e41fe601fc28935cd4e587ca92f2568c6700b74cb6efe7cd29464d96a5048eee25f1a5a69d72cde22b987ec880c90ee24ae41c0e48f4aafa878335bbebe8e2bed77cd699246fdeeecb142a30149f9bef76f435c79f106aadf68dd7923fda7997773b8e3152c7e29d6e29c4cba84be60dd86cf4dc413fa807f0acd5292d517ed62d599a16fe0bb89edd5cde451c926d58e3753f3310c707d3ee9a53e08bd863b59aeee238219ed9ae4b95276004707df9cd6645e25d6604748efe550ff007b079eff00e2688fc4dacc52175bf9777b9cf603fa0abb5422f4fb16edfc2fe66b377a6cfa8450bdbc4d307d8583a052e48f4f9466b58f83ee34eb6b49a1d55a0f3e1fb44b30c8511940e380724ff8d726752bd6bc9af1ae1cdc4cac92484f2c194a91f9122ad2f8935743032de38681424678e142ed03e98e28719b60a5046f2f85f57d4b4ffb445ab7da6cd998162cdd881920f639fd2b32e7c2b2dac30ab5dc6d7970c0416ca872e0bec073d073daa97fc241ab798cff006e9416ce707ae4827f5029f1f893588a15892fa508adb80cf439cff3e68519a07283dcbb3f842eedfc567419665f336798b2aa121976eec81d7dbeb5a47c29af5ac6162d45bc85ba16a0a3b60671f37d326b966d56fde58e46ba91a48e3312b96e429ce467d393f9d4d16bdaac091a477d2aac6bb5577700673fce8719340a504741a9f842e216b83a86b68cf6f6e27dae8c5b616dbd3b1c9e9f8d5493c1cf03ac771a8c11cb2ccd1409b18f99b4804e7b727f4ac59b56bfb812096e5df7c4227c9fbc808207e6054fff000916afe4c917dba5db23176e7b9c67e9d07e5428c907341bd4b375e19b9b5d2a6be6990ac4c54a007270fb6adc5e08d41df4f123f96b790b4c0f96495c0cedc7738c7e759cfe27d6646919efa46f31363038c119cff3a8dbc41ab32b2b5fcc549ce3774e31c7a714ed3b0af036e1d1f535d4b51b0975b68469f22c25c3332b12db4631d29355d235ad22c2dee6e3559b74d218c22b9e0862a79cfb7a562c1afea96f7773750de48935c9dd2b8eac739cfd7351dc6b1a85d5b476f3dcb491c672a1bb739ebf5353c8ee573ab1bd69a56ad3cf70936b5240b14eb6caeccc77c8dd071d07bd49a6681e21d5248234d4a58da59a785b748d84f29549271d8ee007bd638f156b6b26f5bf9031001231dba1fafbd447c45abb42909bf98471c7e5a00d8c2e41c7e6abf90a3d9b0e78d8a374275bc992e4b19d1cac9b8e4ee1c1a8aa4b89e5bab892e2672f2c8773b1ee7d6a3ad96c62f70a28a2992145145030aded0bc5b7da1c7f6745496d724989fdfdeb06835857c3c2bc792a2d0d2955953973459dc7fc245e18bd7f3ae74b920988c3344719fca90f8ab41d3dfcdd3f4b69670302499b38ae228af3ff00b1e8decdbb7a9d7fda153b234b58d72f75cb8596edc1099088bd141acda28af4a9528528f24159238e7394e5cd2dc29d1b059918f40c09fce9b4568f6b109d8ddf196ab6dadf8b6ff51b32c6de665285860f0a07f4ac2a28a518a8ab21b77770a28a2a84145145001451450014514500145145002514b45002514b450014514500145145001451450014514500145145006d7910ff00cf24ff00be451e443ff3c93fef9145152507910ffcf24ffbe451e443ff003c93fef914514083c887fe7927fdf228f221ff009e49ff007c8a28a003c887fe7927fdf228f221ff009e49ff007c8a28a061e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145002f910ff00cf24ff00be451451401fffd90d0a656e6473747265616d0d0a656e646f626a0d0a31322030206f626a0d0a3c3c2f417574686f722850454e454c4f5045204e415448414c592054454c4c4f204a494d454e455a29202f43726561746f7228feff004d006900630072006f0073006f0066007400ae00200057006f00720064002000700061007200610020004f00660066006900630065002000330036003529202f4372656174696f6e4461746528443a32303139303730333032313835312d30352730302729202f4d6f644461746528443a32303139303730333032313835312d30352730302729202f50726f647563657228feff004d006900630072006f0073006f0066007400ae00200057006f00720064002000700061007200610020004f00660066006900630065002000330036003529203e3e0d0a656e646f626a0d0a32302030206f626a0d0a3c3c2f547970652f4f626a53746d2f4e203133322f466972737420313038312f46696c7465722f466c6174654465636f64652f4c656e67746820313939303e3e0d0a73747265616d0d0a789c9d59db6e1b37107d2fd07fe063fb90ec0eef2c8202692e6890d6356c177d088a42b1b7b61a5932e435d2fc7dcf6849cb2e86dc588013ae76499eb99c1992438aaa579a9423a5b5a29494364a3bbcb3caf478e994715a69af6c8f0f415967958ecaf5f86094735e19ad7c1fd14d798f9756050aca900a81a750d1e05b52312685a76449e12fa5880915f540324111f598d9a20df86c146948613ddad80351910188857c06b3d8a4c83a7c8f8a580c884ece6b88a4c8935516f379cc63303e402a8dfeb14f0a6a50f441397c4f0415f03d79bc87ce3d1474116d24e5a13580a014da649487de6c114068033c28a90d7e7818c242554ca92d74f51ed60218a6d42e7ae5319f87ae0efd3df465c3851454c07c11c207cc9760d4c022026c672ed2b01b5a4c12605a826b020c4701fd6147cd06856a3a0605d318c3963568935751c3f89837b2cb2067c47c0ecaee4c01bb448c0f6414869a002512c647387de71880278c4ff05b42ff8449134cd9c3493081edf111109660fce4e00a50835d08451554b286d899f095813540226b0982618085360425ad833ad4c38b9efd01f1ac8740d4b3bf60a41d0162cfb36054847ba96757c31e0472d904818960cc5e334d7a3cf0cc50c7113b1afd1c41132210423335a0b1630613fe3903fb12fbdc7aee0c123808481af3b8c09d41030fdd413c3cc0326c78177654c43c11821328e9229c49cc9584e909c1e11214064dc116cd7c051d7a388ce027cf24222604e80608308269042e83524c3e0e1c58160f2015cc8107b0c80199208a07aadaf1d07324204abc4f4c7dcc1c1c77c6cc91b833732d8040f892f003c60b3de624d835f4701f217402711c41a140701821d8829e22098464333131d9ec4c48b6313a7818137f21728879b460092c1538965fbce88e7950af4ebad3eeb83bfb723374a7e3f6ee7c7cb31aaebbf71f54ffa7ea8e2f95e13e3ffef8ed378f87bc5d5ede6d87eee56afcee6a1c6f6e7fe8bacf9f3f3fbf1b6f56cf878bbbe7c37977bd58df2d567f2daf1797c3badb35b7dd727d3b2ec7bbf3e566bd5875bf9f1dfff2ecddd1e9d9bbb3df5fbdfbede8e52fcfdebe7afecfcde5f74a12c9c7a64ca21af4f421fae943ccd387d8a70f714f1fe29f3e244843c0f6168a481684c134e6ec67d166bbdee240db04135d3a07e6aa607d1978220edc299e4592c6234514e06171214e41d3d83d646cea27f2cf84b67ea9269fed9b602273f760af45ea52d598be6dcc9de259245158d314568c19ab9b96b155cf59d70413a36d0f265bc61f689949f12c9208dce68c18e7b6cd195be58c6b7346cc10b6cd1977286726c5b348ed00fc6973f145a45d988c3b85f22468332f9e2d3eae0671a67eca06fe7f11ddcea8e2b2e57c6b481287b8a63f5d5531d7240feffec49c3a8757e58f6ff287778562da99c1f3550af9e6eac49b3d3198e7f0aa0b946f2e50c4479743f0aac1ef9b5cc1ce980ee18baff2c537f9a2f96875085e3ddf147bca29600a95cce24caeecf3ec8a6ca12cb80861ee65ab2cd3cefd2fa84393559a0f94125268ef44429555a1c92a2d2e7e7b3031eb862aa54293525a8c9739b02a9f429b4fe2e235075625536c261f2d46e60c58ac669ed8e68898f9e7c0aa04896d828839600eac4e90f6be780a8eccd9cca6ece7ec816c9b2cb5a84ffb4c251e2ae2fd6e418cae584d003135c1c484b607138d97aa7b92444d3071873f07a6ab60cd4db31193d41c58d567a9b9693662929a03ab6e9a539b2062929a03ab1224b5092226a919302eaa1d165e536864d2663a6547671764e364b1c5ed6cdf4c4e46cc845c706b05189703ab78cdfc64e4ea4ddf4e505c6cace235d73023e6c379bcfaf1a06f2e6356ae98cde2d5fd47cd95cccaa5ad393caaae655c866de1c975b159bc3a5fa8c9172b17d566f10e5dd172b8141a177a15b71777143315f165cddaa53fb9f647eda58d2be055bc66eeb272e190669297ae262faeafb7f0e4aae32c5e7585e3ea7d0b4fce64b37875ffe9e62a67e54c368b575de7f8e6a1852767b259bc3a5f74932f4ece647378e6d0c52e874ba171a157717b71473153115f14b25da87672ce9c291e53bd544ded5ab59373a699c961f56af59c2573b99aeaf56a32ed3b0639eb9a99dc64ea5c336daec9b9d0cc70ad5e429eb550e650bd62be2f15d40a8ad3a12aeffeca925402a4b8b7287158a5d1e58355d6f36b6f880eb8227207dc113939e3b6c71c707be7e4cc571cf47a737e773dacc74a558c0d9853c9b4b6a89c50a6ccaf725a99f2b2cac945e771532a72d338971391cd9ecda564b2e57dde32d8c735a407629d6d87e164b319bb93cd6af87571a3f2e6e778b18502fc554d3b979decf77bd0fbaf47c3bfe3fbe18ba23cf55bccb5de8c4377c4ffbd595fec7f9ca1ebc7cdbfdde9703e765ced1ab6d3338f29cfefd6abe57a38bd5ab084fce2e51a332cc6e5669d7f6fc7e5df0b3cec7efdb1d97efab8d97cda9b9cdfdc5e0dc3c8428eddaf8bf3ede6c1ef5757f8ffc1efd7cbc56a73f9e0c5e96a79313ce83be1a0dbe576719def97b3ae4777d7b71f60114a8fac7bb4b81e6e3f4c3ff7fe7eaaa38b87a7972e3d6ca68af37d631e35ee51131e35e9613355fcee9b69c0542ccb65ac5c60caa59f5c94c9b58c5c65c8e7ff7c32cf67e67c9a2de7cc72382b87a6729829878cb2f92f9bf2b2592e5bcbb2e52b5bb1b2452a5b97b2a5284b7d5918cb82559681929ebf365ef25570bea4cd7799f99631dfdfe59bb57c67956f937270ffa9befde63f23dc34960d0a656e6473747265616d0d0a656e646f626a0d0a3134362030206f626a0d0a5b203237382030203020302030203020302030203333332033333320302030203020302030203237382030203020302030203020302030203020302030203333332030203020302030203020302037323220373232203732322037323220363637203631312037373820373232203237382035353620302036313120383333203732322037373820363637203020373232203636372036313120373232203636372030203636372036363720302030203020302030203535362030203535362036313120353536203631312035353620333333203020363131203237382030203020323738203838392036313120363131203631312030203338392035353620333333203631312035353620302035353620302035303020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302037323220302030203020302030203020302036363720302030203020302030203020302030203020373738203020302030203020302030203020302030203020302030203020353536203020302030203020302030203020353536203020302030203020302030203020302030203631315d200d0a656e646f626a0d0a3134372030206f626a0d0a5b2032373820302030203020302030203020302033333320302030203020323738203020323738203237382030203020302030203020302030203020302030203020302030203020302030203020302030203020302036363720302030203020323738203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302035353620353536203530302035353620353536203020353536203020323232203020302032323220383333203535362035353620353536203535362033333320353030203237382035353620353030203020302035303020353030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203535365d200d0a656e646f626a0d0a3134382030206f626a0d0a3c3c2f547970652f4d657461646174612f537562747970652f584d4c2f4c656e67746820333130323e3e0d0a73747265616d0d0a3c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e3c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d22332e312d373031223e0a3c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a7064663d22687474703a2f2f6e732e61646f62652e636f6d2f7064662f312e332f223e0a3c7064663a50726f64756365723e4d6963726f736f6674c2ae20576f72642070617261204f6666696365203336353c2f7064663a50726f64756365723e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a64633d22687474703a2f2f7075726c2e6f72672f64632f656c656d656e74732f312e312f223e0a3c64633a63726561746f723e3c7264663a5365713e3c7264663a6c693e50454e454c4f5045204e415448414c592054454c4c4f204a494d454e455a3c2f7264663a6c693e3c2f7264663a5365713e3c2f64633a63726561746f723e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f223e0a3c786d703a43726561746f72546f6f6c3e4d6963726f736f6674c2ae20576f72642070617261204f6666696365203336353c2f786d703a43726561746f72546f6f6c3e3c786d703a437265617465446174653e323031392d30372d30335430323a31383a35312d30353a30303c2f786d703a437265617465446174653e3c786d703a4d6f64696679446174653e323031392d30372d30335430323a31383a35312d30353a30303c2f786d703a4d6f64696679446174653e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f223e0a3c786d704d4d3a446f63756d656e7449443e757569643a36434344454446302d463442302d343531342d423031302d4543423739303741303242443c2f786d704d4d3a446f63756d656e7449443e3c786d704d4d3a496e7374616e636549443e757569643a36434344454446302d463442302d343531342d423031302d4543423739303741303242443c2f786d704d4d3a496e7374616e636549443e3c2f7264663a4465736372697074696f6e3e0a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a3c2f7264663a5244463e3c2f783a786d706d6574613e3c3f787061636b657420656e643d2277223f3e0d0a656e6473747265616d0d0a656e646f626a0d0a3134392030206f626a0d0a3c3c2f446973706c6179446f635469746c6520747275653e3e0d0a656e646f626a0d0a3135302030206f626a0d0a3c3c2f547970652f585265662f53697a65203135302f575b2031203420325d202f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d202f46696c7465722f466c6174654465636f64652f4c656e677468203331353e3e0d0a73747265616d0d0a789c35d3e93695011406e00f15a2389d734412e18450860a219a3316a5724a249434c8106932dc879f5697d52574032d7d7d4fed1ffb597badfdee7f3b08c2dadfcf087b2c08fef2033f2332f323e2d311895cfc8a48a690c6ef8822b9a6fa301b5e4904dfb1892d6ce31bfe6dee84b9e681ff530632918503388843c8460eca7114477018b9c8471e4e218e4214e01862284612091c4711ca70022538895254601d4d388f4a9c4635aa700629d4a20667518706d4e31c1ab1861eb4a01917d08a4bb88876b4e1323ad0854e5c4137867115bdb88e6bb8891bb88d5be8c31d0ca01f4318c404eee12e46318207b88f8718c3633c421ae3788a277883493cc3734ce105a6318b19bcc41ce6f10a0b788d0f7887b758c47b7cc43296b08a157cc2063ee30bbe861fd7b1113d6ce75e44f76e447f6110fc0172a438bc0d0a656e6473747265616d0d0a656e646f626a0d0a787265660d0a30203135310d0a3030303030303030313320363535333520660d0a30303030303030303137203030303030206e0d0a30303030303030313638203030303030206e0d0a30303030303030323234203030303030206e0d0a30303030303030353234203030303030206e0d0a30303030303034393632203030303030206e0d0a30303030303035313239203030303030206e0d0a30303030303035333630203030303030206e0d0a30303030303035343133203030303030206e0d0a30303030303035343636203030303030206e0d0a30303030303035363239203030303030206e0d0a30303030303035383536203030303030206e0d0a30303030303132333331203030303030206e0d0a3030303030303030313420363535333520660d0a3030303030303030313520363535333520660d0a3030303030303030313620363535333520660d0a3030303030303030313720363535333520660d0a3030303030303030313820363535333520660d0a3030303030303030313920363535333520660d0a3030303030303030323020363535333520660d0a3030303030303030323120363535333520660d0a3030303030303030323220363535333520660d0a3030303030303030323320363535333520660d0a3030303030303030323420363535333520660d0a3030303030303030323520363535333520660d0a3030303030303030323620363535333520660d0a3030303030303030323720363535333520660d0a3030303030303030323820363535333520660d0a3030303030303030323920363535333520660d0a3030303030303030333020363535333520660d0a3030303030303030333120363535333520660d0a3030303030303030333220363535333520660d0a3030303030303030333320363535333520660d0a3030303030303030333420363535333520660d0a3030303030303030333520363535333520660d0a3030303030303030333620363535333520660d0a3030303030303030333720363535333520660d0a3030303030303030333820363535333520660d0a3030303030303030333920363535333520660d0a3030303030303030343020363535333520660d0a3030303030303030343120363535333520660d0a3030303030303030343220363535333520660d0a3030303030303030343320363535333520660d0a3030303030303030343420363535333520660d0a3030303030303030343520363535333520660d0a3030303030303030343620363535333520660d0a3030303030303030343720363535333520660d0a3030303030303030343820363535333520660d0a3030303030303030343920363535333520660d0a3030303030303030353020363535333520660d0a3030303030303030353120363535333520660d0a3030303030303030353220363535333520660d0a3030303030303030353320363535333520660d0a3030303030303030353420363535333520660d0a3030303030303030353520363535333520660d0a3030303030303030353620363535333520660d0a3030303030303030353720363535333520660d0a3030303030303030353820363535333520660d0a3030303030303030353920363535333520660d0a3030303030303030363020363535333520660d0a3030303030303030363120363535333520660d0a3030303030303030363220363535333520660d0a3030303030303030363320363535333520660d0a3030303030303030363420363535333520660d0a3030303030303030363520363535333520660d0a3030303030303030363620363535333520660d0a3030303030303030363720363535333520660d0a3030303030303030363820363535333520660d0a3030303030303030363920363535333520660d0a3030303030303030373020363535333520660d0a3030303030303030373120363535333520660d0a3030303030303030373220363535333520660d0a3030303030303030373320363535333520660d0a3030303030303030373420363535333520660d0a3030303030303030373520363535333520660d0a3030303030303030373620363535333520660d0a3030303030303030373720363535333520660d0a3030303030303030373820363535333520660d0a3030303030303030373920363535333520660d0a3030303030303030383020363535333520660d0a3030303030303030383120363535333520660d0a3030303030303030383220363535333520660d0a3030303030303030383320363535333520660d0a3030303030303030383420363535333520660d0a3030303030303030383520363535333520660d0a3030303030303030383620363535333520660d0a3030303030303030383720363535333520660d0a3030303030303030383820363535333520660d0a3030303030303030383920363535333520660d0a3030303030303030393020363535333520660d0a3030303030303030393120363535333520660d0a3030303030303030393220363535333520660d0a3030303030303030393320363535333520660d0a3030303030303030393420363535333520660d0a3030303030303030393520363535333520660d0a3030303030303030393620363535333520660d0a3030303030303030393720363535333520660d0a3030303030303030393820363535333520660d0a3030303030303030393920363535333520660d0a3030303030303031303020363535333520660d0a3030303030303031303120363535333520660d0a3030303030303031303220363535333520660d0a3030303030303031303320363535333520660d0a3030303030303031303420363535333520660d0a3030303030303031303520363535333520660d0a3030303030303031303620363535333520660d0a3030303030303031303720363535333520660d0a3030303030303031303820363535333520660d0a3030303030303031303920363535333520660d0a3030303030303031313020363535333520660d0a3030303030303031313120363535333520660d0a3030303030303031313220363535333520660d0a3030303030303031313320363535333520660d0a3030303030303031313420363535333520660d0a3030303030303031313520363535333520660d0a3030303030303031313620363535333520660d0a3030303030303031313720363535333520660d0a3030303030303031313820363535333520660d0a3030303030303031313920363535333520660d0a3030303030303031323020363535333520660d0a3030303030303031323120363535333520660d0a3030303030303031323220363535333520660d0a3030303030303031323320363535333520660d0a3030303030303031323420363535333520660d0a3030303030303031323520363535333520660d0a3030303030303031323620363535333520660d0a3030303030303031323720363535333520660d0a3030303030303031323820363535333520660d0a3030303030303031323920363535333520660d0a3030303030303031333020363535333520660d0a3030303030303031333120363535333520660d0a3030303030303031333220363535333520660d0a3030303030303031333320363535333520660d0a3030303030303031333420363535333520660d0a3030303030303031333520363535333520660d0a3030303030303031333620363535333520660d0a3030303030303031333720363535333520660d0a3030303030303031333820363535333520660d0a3030303030303031333920363535333520660d0a3030303030303031343020363535333520660d0a3030303030303031343120363535333520660d0a3030303030303031343220363535333520660d0a3030303030303031343320363535333520660d0a3030303030303031343420363535333520660d0a3030303030303031343520363535333520660d0a3030303030303030303020363535333520660d0a30303030303134373134203030303030206e0d0a30303030303135323730203030303030206e0d0a30303030303135373734203030303030206e0d0a30303030303138393630203030303030206e0d0a30303030303139303036203030303030206e0d0a747261696c65720d0a3c3c2f53697a65203135312f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d203e3e0d0a7374617274787265660d0a31393532340d0a2525454f460d0a787265660d0a3020300d0a747261696c65720d0a3c3c2f53697a65203135312f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d202f507265762031393532342f5852656653746d2031393030363e3e0d0a7374617274787265660d0a32323730330d0a2525454f46),
(6, 'REG0006', 2, 'Semana 2', '2019-04-13', 'Entregado a Tiempo', 1, 1, 7, NULL),
(7, 'REG0007', 2, 'Semana 3', '2019-04-20', 'Entregado a Tiempo', 0, 1, 3, NULL),
(8, 'REG0008', 2, 'Semana 4', '2019-05-03', 'Demora', 0, 0, 2, NULL),
(9, 'REG0009', 3, 'Semana 1', '2019-04-03', 'Entregado a Tiempo', 1, 1, 4, NULL),
(10, 'REG0010', 3, 'Semana 2', '2019-04-13', 'Entregado a Tiempo', 1, 1, 5, NULL),
(11, 'REG0011', 3, 'Semana 3', '2019-04-21', 'Demora', 1, 0, 3, NULL),
(12, 'REG0012', 3, 'Semana 4', '2019-05-07', 'Demora', 0, 0, 5, NULL),
(13, 'REG0013', 4, 'Semana 1', '2019-04-07', 'Entregado a Tiempo', 1, 1, 6, NULL),
(14, 'REG0014', 4, 'Semana 2', '2019-04-06', 'Entregado a Tiempo', 1, 1, 5, NULL),
(15, 'REG0015', 4, 'Semana 3', '2019-04-15', 'Entregado a Tiempo', 1, 1, 4, NULL);
INSERT INTO `registro_aistencias` (`idRegistroAistencias`, `CodRegistro`, `fk_idEstudiante`, `Titulo`, `Fecha`, `Observacion`, `Validacion`, `Calificacion`, `HorasTrabajadas`, `AnexoPDF`) VALUES
(16, 'REG0016', 2, 'semana4', '2019-07-08', 'Entregado a Tiempo', 0, 0, 4, 0x255044462d312e370d0a25b5b5b5b50d0a312030206f626a0d0a3c3c2f547970652f436174616c6f672f50616765732032203020522f4c616e672865732d454329202f53747275637454726565526f6f74203133203020522f4d61726b496e666f3c3c2f4d61726b656420747275653e3e2f4d6574616461746120313438203020522f566965776572507265666572656e63657320313439203020523e3e0d0a656e646f626a0d0a322030206f626a0d0a3c3c2f547970652f50616765732f436f756e7420312f4b6964735b2033203020525d203e3e0d0a656e646f626a0d0a332030206f626a0d0a3c3c2f547970652f506167652f506172656e742032203020522f5265736f75726365733c3c2f466f6e743c3c2f46312035203020522f46322039203020523e3e2f4578744753746174653c3c2f4753372037203020522f4753382038203020523e3e2f584f626a6563743c3c2f496d6167653131203131203020523e3e2f50726f635365745b2f5044462f546578742f496d616765422f496d616765432f496d616765495d203e3e2f4d65646961426f785b2030203020373932203631325d202f436f6e74656e74732034203020522f47726f75703c3c2f547970652f47726f75702f532f5472616e73706172656e63792f43532f4465766963655247423e3e2f546162732f532f537472756374506172656e747320303e3e0d0a656e646f626a0d0a342030206f626a0d0a3c3c2f46696c7465722f466c6174654465636f64652f4c656e67746820343336333e3e0d0a73747265616d0d0a789cc55dcd6ee4c611be2fa077e071c68828f60f9b646018d895e48d8cddd55a2b3b09b2813196c69b01b4d25a2319b1df2ec79cf3043ee6ec174855ff911cb2ba7b66a8d880b53362b1eaebeeeaaaaf6a38adece8dda7c56df6f9e747af8fcf4eb2e2e8d5e2f643365bae0f4fdfcdbff8227b71729cfd78f0acc80bf88fb1bae05991550dcf14e3d9fdf2e0d99f3fcb6e0f9ebdb83c7876f425cbe097973f1c3c63205464f05694b9e259a9645ec1958f20f4f25d957d5883c6ec837e57db772f0f9efd6df6e6fcf55ccc5e5ccce5ec747ec867d989f9e7d5fc9015b3e7730eafe77fcf2ebf3a78760a16bf3e78b63b362e585e76a1694416c8e5d9e537f3c36a06866b63f7f8ec3f6fa6322d0a993341d93e3a86d136c6ea0582b838857f18e2107cf6c7c9405430fe8a02b131cdd9e9ebe32cebfb0a7b1a5f298bbc19e2b9387d899e70f66e7e28679717e025e7d9fc50ccfe3aaf66d9f1f91bf3ab57190a9d9c4ee7244d99d725054a2fc8bb0eaed337c767ede24d8602974a35148a93d3e97ca2e1b91094a1049fe04fe313a2cad900ce5b9c78bd41fea537e82578c05967efe885c9dee2c25c9cbe4567d1c2e75f9ee26bb36ce7f8f20dfe5aafe5ab53bd8ed32d9c68725512f8bf43db831f0afe9fcc6d1aedbc21eb6a605cbf980881e42a2f290493cdb254455e578495f7b3e379395b5dcd0fcbd9cdddd19bd54f7326664b1ce6cdfbf954104a51e45ca40d746cdf8869f78d5059c9452e865074d0f43f55ff17f39a7e1f139d682299503083e3e05f9ec24aea7d7b09c958877a1303ce4fbe01c66002c0b71000a4d9cd20c1d8b87f13efa6da7892e775438c62fa5d261498a3266dba58d6c08de5535b91bccc65f5e4566cc418b5f21e1202440ced3c102c940d16dacfaf973aa9bcc4d76fa70b1e90de493413c6a8322f13dd642c46c9e96354d100054f8d5153cd83220d4f6501e89a7c6a1bac5079cd7fa729c428dd5043ecf23288c2c7f8eaf2ecf81b88ce58dd65df612a1ee53dff87d0cc91e15604f209add4794359992e22b326e7e5935b29a5e6b04f6cc56697a7b5e2b2cb135bb1d965d44a4276d125cbfdaf207685bf7d40f2ca678f1f274b0415ec016aae27cc3795ca054b9becb17c534e9e6f2454f3d52e50d4c4507883f5bcac59de8c874fddf6ba383b3fc12e07d42bcf6d246595a96d4f30a8fe1b8530a49e696f3a3e9fce81792e05812f61baaa89a7ab51181ba4aa772baeeac91d49c80677780a96a3e7f70fab1f16570fd90b780781012818dc011542c5218257b8136b99575266f0a634f67ff8ccdefda397e44557923949837463c00d31e014556ed04ddea8be5340e8ace166a8cfa2ab303e78c62b640d76d00dcb6b62c84ed00035828311bf6d1b91851d22832abcf2e35339efdee70d6cb631a93e66020a72b258d9e40cefe548b93767eb958ee7f8e3167f2cd7838dbb97edbace4bd276d24a71b0cb7967a5aa82724f27ea916ad1d06a713bc51c00367567b9582d53d68bea95242121678de39656d4acbd867562b3c53de4e407ccc9234bb6a7f99ae7acda6bd10483a8cddca2b1a2cc6b6ad19ca8c1ea44438b26ed3c0b561a9cf64ef887a72c1a95cc939090b3868d16de84176df5df7b2820aeee6e46d66c4febb0d1c47e6b26599d57a2b7668aca0356b4835585d74cd969969c21c0add78c4ae34948027904ea0941cdda578fcb9fe687cdd806dbd32c4645d2559216ab84eaa1a89216cb89a62f566de7b784c85f8bde622545452ae727212167ad2c35d12166eddbb99cad96f811e93db0502a97ed8900c91fdf6bdd9460b9e44981d189260746eeb887121212d8d69b8c53ec230909396b4a29938c4667ed1dacdbafdf2fae71c1ee06ebb59fe5aae0e8b1fbac5761093207358005fcafd0d4137fb8b97497a5bf0c3faaa6e94920d9351296ec6eca6cd27163cd0a8b560c45909249d547e425fc451a8fa3744644533a128e97655e76030d670d8024d0f88b341ac7563c1a642b241e2fcd3ad21b8804b848233a88b4aa56c85f97ddeb9b265d463652d6f9485c5e9a75a4377061dae0258dcb5f0fe272c9a7834b05dcc949b38ef406ae924b9d90da152c7a93eaafcbeef54d932eb8a6e1f2d2015c0a8aa846d2f3e5af07e7cb0591b475f4d28175ac4495733598af6e50f022c129eb6e7adc36b6062fc1c387ce63c28c11d11b89c96e48efed584f0d1a8ea527113fe2ba70fb367547191bce86dbe2716db8475887b5284c4cc4def5daf484110ad1b965d353486eba2485e8e9b5082b74bba11d2f2e2da110dd89d5e1213b370e2174fe14323adae451aa6ab30a6f9ad4264fc1834d9e0eed7045b4edca981bab46fb7002eba06ae8141cb10e5121c732ff979a1d5e01f3f807be5a0ce9fd3ea62b994bcaf236bd29bb5609bd298393e84df5279bfae0344115dde431ad2e2612fa90c11e4f3be2788fc7031deff1f4474d55fc49cae83e896d1aed31704b1aecc093fa24062b590ef4074e7d5890a48c6e36d8c6cb1e03b7aca43bf058b3a18375ac7eed0f3cd62f082aa3a38aed5eec31704b7b5206ee18d25603a73e6048524657beb613b0c7c02daf4a717547c1b67275aae990a48c2e5e6d29bdc7c07be44d9025a4fe0846050bc45e2ab7bac2052265cf7ffca10205a035e76545ac00a4acf916beea946ca43d2f2d3ad2144914bdc2a06bd4b7a05590f55ba35e5ac4abb78051df4355c112c82da49316f1d2ac9ddb41a9e17b814946bd74c0a827a4f4487d232b697abd74607a3dc3a547dadd02f06bc76603e59215192d4a3afeed0372a85c4ad065cba556195d2e2568b3e5920f998172a9d5365add741c0ecaa5ae42cacbd314da7229a8d07a7067bc63e552c751581d1eb2f5ce2042eb4c41a3fd828743244dfe545b505f4e4ad115295a78addad241a7993fdde1e77cd8d75e64d7cb4c7f2671fb808faee9df5d5305cc8e3018b29c311c44ba6bcb076b30a51211918fba43aa229588fea24c9506dc551ede5a423921a86f9624298b9513dba077e5833198469404556f27298bd504dba0773540c76094df0aaa804d521623f6dba077447e2bf454219aa42cc6ceb741efd8f8569e43559349ca62143b19fd462169d37c1922d6f80c2c4dac7d7a2774f87e4c4d92659fd30915bec1510718b04fe5658cd45a3d04ebf2199cd6e3cbef3a40197de22e63d433acc7e76b1a8f2f0e43e3f2399dc663bda16604b5724b4d0ab8852405dc22798111f2e1162024e326b7353424286ee2427adca484f46c101da5f08b951d5600ffd09b9eeca4a4288b511da5f96898eaac177339bb595deb874f49aab3230e06d5463382234e758c41cf4f82734835655274c5c84e556d4d76bc39c74f82e0a9c64a9ab628ddd902bf8b7ec66227cf84f04b8aaaa7698b129e2df0bba8dbb1a8e2f829a29ca62d4a79b6c0efa2fd76f829b69ca62d4a7ab6c0efb2cc76fe43f1e5346d51da938a7f94f6989b49da531709b487d2e10bb1224a7b2815be202a12688f5742d31ea327427b027a7c915024d09e765024ed09ea71d93b80c713e7d0b85c860fe0b1dea0047aa2272dd60fbb6b4d4bb8a5a425dc3a7909cf463a426e1182426e865b5b8eb37484dcf40535b9b9096adaa03fb2de600a81924792e56682ae18f9298b0dd2a13f975edd03ddf948f29cdd2c56e6e681c538cd31f6523a3a922a6e1354c5484ea94f8fd88ae4786b091d1d4955b649caa214670bf42ed219836975b9a4287a92b228c1d902bd8baf1d83d19e88a4c87192b228bdd902bd8bea5ba18f3cebbc237a476eb640ef72c9369e5352dc38495994daa4a21fa536e66692dae039136587da40e067837447e9f0759756e2a84d4f85cb87940a5ffd381596daf494b894e995d0d4c6e86929404f8fcbaa013dbe1a68f5a8811e9778db4191d426a8c7e5e6001ecf8e43e372e93b80c77a03a4cc2e2d1976744801b790a4805b242f10e8e88464dce4b686e88e4e488f9b94909e0d4ac30afc5abc7b1480e5a12d4f96937155314223f806bd783e676c76f5b0fa497f2978758d8ff9eb038f9ad97af815f7091040d02f7a08b093b4340da45fd0f6c2b691d6f0abe15165fb20682afd29f410429c63197baa68f03bea91e5a3aae9145d31963558bf6de2b564c1782d6542bca674780629a3f1da88b8ef19f4451c99930921dbeb718f946f4859662513a2765895a739322170b7a32b46b07bce1152e5435010952700a101fa48c562e1bba8d02bcdc2ca7c18bda9ebce427b5d5be88af4432153fa7842eb67e631117a33851f3d0eeb8a8422d6483c08abb399cef1288defb1c45b2f21fa6064d25f2f5ce083c8abbb5bfc3cdf84462a30ed088881df972380a281c9dab3c124369991478bc3ca62a1094f29ddb94b666e2643133817ab62a189d2e14293516247476d945609b1515859e3246933c68f86d739f3e16df34b667109f4222311ee0ad2403a02941db7e246a49d93b1b656c710ce49df564786b36ed8a33405a4468f75d9ef5c173e721c07930ac7437bea288efd0e7519c5019b5ef16d71ec775aca288e42e5a18d3b0a63bf5352c660343c574a6e8b832aee773fada5aa21278770eca11db6d99881f7b31fe66af67e9e5de2c99497e71793596c1ad87772c4a43e32e82ffa74ccd38b37939d05c4ca0a9f2f7cc239640ab3cd740606aec894cc8bf1553ad35f5abfba795cdd67faf0ad9b6c6d0ee4ba8175bb73479dba120adeddcc59315be8972b7c798b2fd70fab8747e41257abdf40fc762ae478da0ef08721f2a36bc35cd4ec9381a60c90ebc92c5705f2e8a1656fea6a35ec97efbc8beaf1618ec50becb196f86d2fe0360c1042a683c5050df8d86f6bca1038203612cf2a84902890d230fc0d49a754e009d38826ea242d80c533292b7cb8b333b0b3db353253701b70b3477dbedbeab7db510e9a6478e8f3502cd563960304146499b4c6ca1a4abb323a61e403a509ba28e425cfc508701ddfd657f7ab79898c5ee08736e50c776d09bb56bbe41df8e6c7f9a132d7ef97d9d5bc329bf823107fbd536e960f467270e2d2ee8845c1f038ffe4b91ef065cdf76a57389a1f1dfe18b98c0e622e1b0fe95dd7d448d1f7bb619beb76dc459f0fe28cb40a7ce9ba85841d8496d317da99ed82a4ae5b03eeb2d6df97e814a4381dd8b8abdb0d53071e3550547327415578d3f31267b6e30e27cb4f4bdcf5b7d7cbdb2b7cb1825ca15309b9f177b0ce3067a811f3f19d6facb5ce1f9c37aa8e4f5216defb03e8bbec7dd8fa6ddabec93057b7ef3f81b49ef9fb870508ea1bf505adeb01d645878d3fe863396f16f0fe7b63046f59cc9b564463ba1b3f5d779fa9904c37068773616c5d43def02369915ff7de418ace7abf402e73b3d083fa112e3cb6b4e67e69be958dc35d81ee5f0ccd99724465cdf198eba863ee6d46e5c59813dd2cd67ae47a90ba410e435c5d2fd089fcbcadf349c12855e3e945c99b71343540dc939c8efde67220f653f777521e5c0fc47eaf808cec666e5ce8aee5000329604df8eb2eb8d7a3cf92c078452db1e16a6362933745284a059e2589ea0a8677e4ac55afb577f9f880a1e0de84a57fea40b2bcbfbda382fb4ec619c7d37487c6a3c1dd5a73ee1b9b37f2b992246dc1f03e044f84f71b1dead699eed26ec6f7b5fefb0f3fe31ece5c1afdd4c67b2cdf56d77778e71a6860dddeef69a09a59fd3fe31fb3b0b9e4ca64850f10e2498eb8dbe0a59078f674f2d28d8602d8266dffafff9186270cac130b7a5dd5762b123a3a918e75e341bfadeaf62beb45840d2cd8b235d364dab75019f2415408481833ad80f9b0bb2fb31117a01eacca44d247f5fe125485a3021ead3de2db3a183c824f5e43d58c14f0c1e56f323aec80011facc7935f0720e2d1c1584ba47e54c7324959383610f3f77bc5063204240c71f4ef31152c7d79c62280a8057e284991017b992603e4fd3eb6e9eb34196815506400e74689b13aaebdce888f8b9324ecee606538d0d1383a029499ce3ab3321c0b5b3b2385692bc2e80f7e9384b44b7cdd3f064ad59dfe78a6bb6fa228593dd27a6bf4330ae888a202cd95fefb2ba2c6e7f5aef0ef329e7d5c7c5832969ddc65cefffe074c92890f0d0a656e6473747265616d0d0a656e646f626a0d0a352030206f626a0d0a3c3c2f547970652f466f6e742f537562747970652f54727565547970652f4e616d652f46312f42617365466f6e742f417269616c2d426f6c644d542f456e636f64696e672f57696e416e7369456e636f64696e672f466f6e7444657363726970746f722036203020522f4669727374436861722033322f4c61737443686172203234332f57696474687320313436203020523e3e0d0a656e646f626a0d0a362030206f626a0d0a3c3c2f547970652f466f6e7444657363726970746f722f466f6e744e616d652f417269616c2d426f6c644d542f466c6167732033322f4974616c6963416e676c6520302f417363656e74203930352f44657363656e74202d3231302f436170486569676874203732382f4176675769647468203437392f4d6178576964746820323632382f466f6e74576569676874203730302f58486569676874203235302f4c656164696e672033332f5374656d562034372f466f6e7442426f785b202d363238202d3231302032303030203732385d203e3e0d0a656e646f626a0d0a372030206f626a0d0a3c3c2f547970652f4578744753746174652f424d2f4e6f726d616c2f636120313e3e0d0a656e646f626a0d0a382030206f626a0d0a3c3c2f547970652f4578744753746174652f424d2f4e6f726d616c2f434120313e3e0d0a656e646f626a0d0a392030206f626a0d0a3c3c2f547970652f466f6e742f537562747970652f54727565547970652f4e616d652f46322f42617365466f6e742f417269616c4d542f456e636f64696e672f57696e416e7369456e636f64696e672f466f6e7444657363726970746f72203130203020522f4669727374436861722033322f4c61737443686172203234332f57696474687320313437203020523e3e0d0a656e646f626a0d0a31302030206f626a0d0a3c3c2f547970652f466f6e7444657363726970746f722f466f6e744e616d652f417269616c4d542f466c6167732033322f4974616c6963416e676c6520302f417363656e74203930352f44657363656e74202d3231302f436170486569676874203732382f4176675769647468203434312f4d6178576964746820323636352f466f6e74576569676874203430302f58486569676874203235302f4c656164696e672033332f5374656d562034342f466f6e7442426f785b202d363635202d3231302032303030203732385d203e3e0d0a656e646f626a0d0a31312030206f626a0d0a3c3c2f547970652f584f626a6563742f537562747970652f496d6167652f5769647468203237372f486569676874203131342f436f6c6f7253706163652f4465766963655247422f42697473506572436f6d706f6e656e7420382f46696c7465722f4443544465636f64652f496e746572706f6c61746520747275652f4c656e67746820363239363e3e0d0a73747265616d0d0affd8ffe000104a4649460001010100dc00dc0000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080072011503012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f33a28a2bdf3e7828a28c120900e0753e94ae96e34ae1455ed2eca2be9a486490a3f96cd1003ef30ed547041e47438a85522e4e25b834ae145145686614514e450f2a21e8cc01a2f61a571b456d78bb488342f14dee9b6c58c30300a5cf3ca83fd6b16945a6ae86d59d828a28a64851451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140c5f2e4f2cc9b0f960eddd8e335b9636f3c49a968adb04d7013cbc8e1d95b2307dc138a4d2e39db4c92de58659ac6e4eefdc00cd1baf7c7d3b7bd68c68d1c51e669a68d1d25b3ba2818a90a731b0cf1cf18f515e562310eee07751a3a291058a1ba92d6f2de1cfd923f2658c6320f3f30f53cfe94bfd9a03d8e9d7285771927988232e0024127b74c568da436f677b24d6a50f9a55591d5d5449d4e0e0ff3a495adbcc79ddbe69b6fc91231568d48dc8090319f6af3feb12e7d0ecf62b975306df4b82e15ae26668fce477b7b7854bb1c1201f6191fa56310558ab0c303820d7653b44e9166516ed3aa43e628259d4619963551c0dc719279c5636a2204b062349fb3b49262395e525f03dbfad77e1715272b48e4af41257462d4907fc7c47fef8fe74ca7c3ff001f117fbe3f9d7a92d8e18ee74ff127fe4a0eabfefaff00e80b5ca5759f127fe4a0eabfefaffe80b5ca54d2f811553e20a2ad5be977f75179b6f673cb19380c8848a65cd8dd596dfb55b4b0eefbbbd48cd5732d85caed720a28a544796458e352cee405503924f414c9128abffd87ab7fd03ae7fefd9aad0d9dcdc4ed04304924ab9ca2a9246297322b95f621a2afff0061eabff40ebaff00bf668fec2d57fe81d75ff7e8d2e78f70e4976285157ffb0f55ff00a075d7fdfa347f61eabff40ebaff00bf668e78f70e49762851566e34dbeb48fccb8b49a24ce373a10334f8749d46e225961b2b89236195654241a7ccad7b872b29d157ff00b0b55ffa075d7fdfb34d7d1b538d773e9f7217d4c66973c7b8724bb14a8a1d191b6bab2b7a118a4aab8acc5a2af2e8ba9ba065d3ee4a91904467915567b79ad65314f13c720eaae30692927b072b445452d1542128a5a280128a5a2800a544695d63452cec7000ef495d1f81ada3baf14db89402103381ee2b9f155bd8d1954ec6b429fb4a8a3dcd4d234b834c5513457371705b958e5d8aa7fad3f58cdaea3e4ac4a15a1136eda32af939191d7d6b36f6faedb5dd47cb68d63498a80e3a0c9c0fe75b161acdafd93cabdb512b2ee2cf1939033ffd7af9f9d0acdaaf6bdcf5e3529a5ecf6b0cb99ecd35682e2caeb6449106668e4077484727078150406c56d35033cc1e6dc1ad99e4f5232b81c0acc9347d3aeb7496f398803cab1fe5f8568e95e178c4d6f218259f2e1b3d00008ffebd3a91a3469f349b4c21ed272b4516b45533cf799b51b6d50084742c0e771dc7fa551d63488f528da7b38ae1268c7314926f047a03dabb1bfd36e64d3e4874db6f2dc91b5a47e3af3fa66b9cd2a1d4b4df19da59dfb467cc52db53a57161f16a4e55a0f55d0deb51b254e4b7381e870460f7a7c3ff001f11ff00be3f9d687892dd2dbc477f0c63e5598e07a567c1ff001f11ff00be3f9d7d6d2a9ed68a9f7478338725471ec751f127fe4a06abfefaff00e80b5ca5755f127fe4a06abfefaffe80b5cad5d2f811353e23e8bf83a3fe28083febbcbffa15731f1d471a3fd64fe95d3fc1dff9102dff00ebbcbffa15733f1dbeee8ff593fa579f0ff783d09aff00673c6ab67c21ff0023a687ff005ff07fe8c5ac5adaf087fc8e9a1ffd8420ff00d18b5e8d4f819e7d3f891f57e063a57857c32c7fc2d3d53fedbffe875eedfc35f27dcea77ba4f89f51b8b1b878263712aef43ce371af370f172528a3d1c4c945c59f57fcb4715f2bff00c271e25ffa0c5cff00df55e97f07b5fd5758d4b524d42f65b858e252a1cf439a5530d2847998e9e2633972d8f5de3d051f2d727f122faeb4df04de5d59ccd0cea576ba9e4735e07ff09c7897fe83173ff7d52a5425515d1556bc69bb347b1fc67c7fc211c7fcfca7f5adbf86c07fc2bdd1fd7c93ff00a11af9db51f12eb3ab5b7d9efafe69e1ceed8e78cd7d15f0dbfe49ee8fff005c4ffe846aeb5374e9a4cce8d4552a368ea7e5a3e5231c578efc61d7b55d235ad3e3b0bd96dd1edcb30438c9dc6bcf2dbc7be26b59d665d56672a73873906a618694e3cc9953c4c612e568fa03c4be07d1bc4968e93daa473e0ec9e350ac0fbfad7cdde20d0ee7c3baccfa6dd2fcf19e187465ec6be94f04789078a7c3306a0ca166c98e503a6e1d6bcebe3a69e8ada56a2a3f78c1e16fa0c11fccd5d0a928cf91935e9c651e747abe8207fc23fa77fd7b47ff00a08af9f7e2c7fc940bcff713f957d07a0ffc8bfa77fd7b47ff00a08af9f3e2c7fc940bcff713f95185fe2b0c4afdd2389a28a4af4cf305a2928a005a2928a005ed5b1e16bffecef11da4cc7085b637d0d63d0090c08ea0f15cf8aa6aa51945f635a3271a89a3b6bbb510f8d6ea3651b64bc85f18e08624d7a34de1cd29a762176b4f682260985cb9556d9f520e41f635c8eb312aeada6dd4842a18a1676ef9563fa6335d45e7882cf4b682595cac9771ab1da038f9428423df033ff0335e6612a39d08f2f43d3a94d426dbea6078db4fb0b3d3b4e360a9b181f9c2e33f29ff000ae934c51fd916a071985791f4ac2f1dbc72693a6bc43084b903d3eff15b9a7c891e8f6acec15444bc93ed5e2f125dd0a76ee76e596f6922b680aff64b82f2bbff00a54ca371e9891ab26f61cf8fe2ba7c086daccbb9f4eb5a5e1d9d1adae5378dc6f272173ce379aa9af0db16b32a7fad166a07d326bc0c373471728f7d0f42b5a5453ec793ea775f6ed52eaeb39f36466cfe35041ff1f11ffbe3f9d462a483fe3e23ff007c7f3afd3a9c542928aec7c74a4e552efb9d3fc4aff9281aaffbebff00a02d72b5d57c4aff009281aaff00bebffa02d72b554fe042a9f11f45fc1dff00927f07fd7797ff0042ae67e3b74d1feb27f4ae97e0e303e00847a4f2e7fefaae73e3ac4e60d265c7c81dd73ef8af3e1fef07a33ff773c62b67c21ff23a687ff61083ff00462d6356e782e279bc71a1a460922f626fc03027f415e854f819e753f8d1f5776fc2be43d6ff00e43da8ff00d7d49ffa11afae9d82c658f40326be43d5dc3eb77eebf75ae6423fefa35c582f899dd8dd914ebd6be05ffc85b55ffae2bfcebc96bd6be05ffc85b55ffae2bfceba713fc2672e1bf888eefe2bff00c93fbefaaff3af9aabe95f8aff00f2205f7d57f9d7cd559e0fe035c6fc615f4ffc35ff00927ba3ff00d713ff00a11af980d7d3ff000dbfe49ee8ff00f5c4ff00e846a71bf0a1e0be2679c7c718ddf5ed34a2337fa31e833fc46bcbedf4fbcbb9d61b7b59a4918e02aa1afaee5b68276066863908e0175071491da5b42dbe3b7891bd5500358d3c4b84395237a985539735ce67e1d787a6f0df84a1b4bae2e2463348bfdd27b7e95c47c75bc431693640fef017948f6e07f435e9dae788b4df0fd8bdcdfdca46aa32133f331f402be67f16788e7f146bd36a136550fcb1479fbaa3a0a2842539f3b0af38c21c88fa7f41ff00917b4eff00af68ff00f4115f3dfc59ff0092837bfee27f2afa1341ff00917b4eff00af68ff00f4115f3dfc59ff00928379fee27f2a785fe2b162bf848e273451466bd33cb0a28a3340c28a28a002ae69764f7fa8c30aab15dc0b903eeae79354ebaaf0437cfa9c31b84b992dff00744fa835c78ea92a7424e2746160a5552674da8c76fab78a12c3cc223b6893241ea40638ac8d374fb8d561ba8ee4856b3708493d3ef67e9d2b32d66bdd375b9a6b86f32e729393ff003d14f040fa86af42b5b092e6d6f64fb3bc16f74a19c9189338209c7be07eb5f2952a56c24a2a93ba691f6187852c461dfb55d4c3f116ab6da9e85a6c56e4efb74d9203eca79ad4be2b71a568da6f05ae9e3cff00baa371fe58fc6b275bd0adedb4d6974f5744552ae09e54e3ad45ad4b74c96060478a4b481648a755273951915d38a92c5c609e8d33cf951fab4e56d5325d1fcab3bab6bf44da8da8dc5abfd18fca7f023f5ad6bf9525f135d69cc79bab0c267d4135c3d9cd73b731caf790c53f9fe4aa121a427be2bad907dabc756f72f80b6f60249bfd8241e2b8abe1392b73b77b2ff86269d6e6a7ca91e592c6d0ccf13fde462a7f0a583fe3e23ff7c7f3ab3aacf15cea971342b8477247bf3d6ab43ff1f117fbe3f9d7d9d29374537bd8f9e9a4aa34bb9d3fc4aff9283aaffbebff00a02d72b5d5fc4aff009283aaff00bebffa02d7295a52f811353e267b8fc0ed5525d1aff4a63fbd826f3947aab003f423f5aebfc79e161e2bf0f3da2305b88dbcc858ff007bd2be77f0bf88aebc2faec3a95b73b7e5910f4743d457d29e1ef15e95e24b349ec6e50b11f342c70e87e95c15e1284f9e27a1879c670e491f36dd78435fb3ba7b7974bb8dea71954c835e9bf0afe1fdee9fa9aebbaac46168d08b789bef648c163e9c135ec1b54f500d41777b6b616ed3dd5c470c6a3259d801533c4ce71e5b150c34212e6b94bc4ba9c5a47872faf663858e16c7b9c702be4d672eecedd58926bd1be267c404f1148ba5e98cdf6089b2efd3cd6ff0af38aeac2d2708ddf539315554e56415eb5f02ff00e42daaff00d705fe75e4b5eb3f02cffc4db55ffae0bfceaf13fc26461bf888ef3e2bff00c93fbefaaff3af9aabe94f8ac73e00befaaff3af9aeb3c1fc06b8d7ef857d3ff000d7fe49ee8ff00f5c4ff00e846be60afa7be1b11ff000af747e7fe589ffd08d2c6fc28304fde6721f163c59acf87b57b1874cbb30c7240598000e4ee35e7337c47f154ebb5b54900ff0064015d67c73ff90f699ff5ec7ff4235e555587a7174d3689c454929b49966f751bcd466335edccb3c87f8a46cd56a28ae9b24ac8e74db7a9f5d683ff0022fe9dff005ed1ff00e822bc47e25f8635ad4bc6d757367a74f342c8803a2f078af6dd088ff847f4effaf68fff0041157f8f515e442a3a736d1ebce9aa9049b3e56ff8423c4bff00407b9ffbe693fe109f12ff00d01ee7fef8afaab8f5147cb5b7d727d8c3ea70ee7c7b7769716174f6b75134534670e8c3906a1aea7e247fc943d63febaaff00e80b5cb57a30778a6cf3e6ad2b051451544852c72bc52078dcab0e841a4a315328a92b31c5d9dd1de5fca754d1ec3c4762a0dcd9011dd46be9fe7f9d769a7ea11dfda43a8452a2c320dce09fe2c60f1df3fa7233dabc9341d767d0af4ca804904836cd11e8ebfe35d3b2148e3d4b4032be9ecd97808c796d9c900fd6be5f15869d17c8f6e8ff0043e8b058b4f5fbce8357bf85f49bd4b345f2c0dae49c919cf03b0adab700f87a3e33fe8dff00b2d79cddeb37da92888ba340325d5502b038ef5dcc9aada58e836f14afba69600b1c29cbb7cbe95e3e2f0f5d538f7b9ead49d3e6ba7ba313c357369a2e9faa5dcb858c3236deecc41c01f5aa7aa5ec9a3e8175757385d535662760eb1c7d87e02987ecda32ff00696b1136f53fe896a39527d49ee471cfe55c6eabaa5ceb17ef7772d966fbabd947a0af5f0b82f6f5b9d6b1eafd0f0f1188f674f97a94a9f0ff00c7c45fef8fe74ca7c3ff001f11ff00be3f9d7d43568e878b1f88ea3e24ff00c941d57fdf5ffd016b94aeabe24ffc940d57fdf5ff00d016b95a54be043a9f1336b4ef0ddc6a4b6e6399104f13ca3703c0570a47e66b57fe10bd534db960d7c96ec1caac884e186e550411d8ee1f9573f6fadea569622ce0bb74b70db8203d0e41fe601fc28935cd4e587ca92f2568c6700b74cb6efe7cd29464d96a5048eee25f1a5a69d72cde22b987ec880c90ee24ae41c0e48f4aafa878335bbebe8e2bed77cd699246fdeeecb142a30149f9bef76f435c79f106aadf68dd7923fda7997773b8e3152c7e29d6e29c4cba84be60dd86cf4dc413fa807f0acd5292d517ed62d599a16fe0bb89edd5cde451c926d58e3753f3310c707d3ee9a53e08bd863b59aeee238219ed9ae4b95276004707df9cd6645e25d6604748efe550ff007b079eff00e2688fc4dacc52175bf9777b9cf603fa0abb5422f4fb16edfc2fe66b377a6cfa8450bdbc4d307d8583a052e48f4f9466b58f83ee34eb6b49a1d55a0f3e1fb44b30c8511940e380724ff8d726752bd6bc9af1ae1cdc4cac92484f2c194a91f9122ad2f8935743032de38681424678e142ed03e98e28719b60a5046f2f85f57d4b4ffb445ab7da6cd998162cdd881920f639fd2b32e7c2b2dac30ab5dc6d7970c0416ca872e0bec073d073daa97fc241ab798cff006e9416ce707ae4827f5029f1f893588a15892fa508adb80cf439cff3e68519a07283dcbb3f842eedfc567419665f336798b2aa121976eec81d7dbeb5a47c29af5ac6162d45bc85ba16a0a3b60671f37d326b966d56fde58e46ba91a48e3312b96e429ce467d393f9d4d16bdaac091a477d2aac6bb5577700673fce8719340a504741a9f842e216b83a86b68cf6f6e27dae8c5b616dbd3b1c9e9f8d5493c1cf03ac771a8c11cb2ccd1409b18f99b4804e7b727f4ac59b56bfb812096e5df7c4227c9fbc808207e6054fff000916afe4c917dba5db23176e7b9c67e9d07e5428c907341bd4b375e19b9b5d2a6be6990ac4c54a007270fb6adc5e08d41df4f123f96b790b4c0f96495c0cedc7738c7e759cfe27d6646919efa46f31363038c119cff3a8dbc41ab32b2b5fcc549ce3774e31c7a714ed3b0af036e1d1f535d4b51b0975b68469f22c25c3332b12db4631d29355d235ad22c2dee6e3559b74d218c22b9e0862a79cfb7a562c1afea96f7773750de48935c9dd2b8eac739cfd7351dc6b1a85d5b476f3dcb491c672a1bb739ebf5353c8ee573ab1bd69a56ad3cf70936b5240b14eb6caeccc77c8dd071d07bd49a6681e21d5248234d4a58da59a785b748d84f29549271d8ee007bd638f156b6b26f5bf9031001231dba1fafbd447c45abb42909bf98471c7e5a00d8c2e41c7e6abf90a3d9b0e78d8a374275bc992e4b19d1cac9b8e4ee1c1a8aa4b89e5bab892e2672f2c8773b1ee7d6a3ad96c62f70a28a2992145145030aded0bc5b7da1c7f6745496d724989fdfdeb06835857c3c2bc792a2d0d2955953973459dc7fc245e18bd7f3ae74b920988c3344719fca90f8ab41d3dfcdd3f4b69670302499b38ae228af3ff00b1e8decdbb7a9d7fda153b234b58d72f75cb8596edc1099088bd141acda28af4a9528528f24159238e7394e5cd2dc29d1b059918f40c09fce9b4568f6b109d8ddf196ab6dadf8b6ff51b32c6de665285860f0a07f4ac2a28a518a8ab21b77770a28a2a84145145001451450014514500145145002514b45002514b450014514500145145001451450014514500145145006d7910ff00cf24ff00be451e443ff3c93fef9145152507910ffcf24ffbe451e443ff003c93fef914514083c887fe7927fdf228f221ff009e49ff007c8a28a003c887fe7927fdf228f221ff009e49ff007c8a28a061e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145002f910ff00cf24ff00be451451401fffd90d0a656e6473747265616d0d0a656e646f626a0d0a31322030206f626a0d0a3c3c2f417574686f722850454e454c4f5045204e415448414c592054454c4c4f204a494d454e455a29202f43726561746f7228feff004d006900630072006f0073006f0066007400ae00200057006f00720064002000700061007200610020004f00660066006900630065002000330036003529202f4372656174696f6e4461746528443a32303139303730333032313835312d30352730302729202f4d6f644461746528443a32303139303730333032313835312d30352730302729202f50726f647563657228feff004d006900630072006f0073006f0066007400ae00200057006f00720064002000700061007200610020004f00660066006900630065002000330036003529203e3e0d0a656e646f626a0d0a32302030206f626a0d0a3c3c2f547970652f4f626a53746d2f4e203133322f466972737420313038312f46696c7465722f466c6174654465636f64652f4c656e67746820313939303e3e0d0a73747265616d0d0a789c9d59db6e1b37107d2fd07fe063fb90ec0eef2c8202692e6890d6356c177d088a42b1b7b61a5932e435d2fc7dcf6849cb2e86dc588013ae76499eb99c1992438aaa579a9423a5b5a29494364a3bbcb3caf478e994715a69af6c8f0f415967958ecaf5f86094735e19ad7c1fd14d798f9756050aca900a81a750d1e05b52312685a76449e12fa5880915f540324111f598d9a20df86c146948613ddad80351910188857c06b3d8a4c83a7c8f8a580c884ece6b88a4c8935516f379cc63303e402a8dfeb14f0a6a50f441397c4f0415f03d79bc87ce3d1474116d24e5a13580a014da649487de6c114068033c28a90d7e7818c242554ca92d74f51ed60218a6d42e7ae5319f87ae0efd3df465c3851454c07c11c207cc9760d4c022026c672ed2b01b5a4c12605a826b020c4701fd6147cd06856a3a0605d318c3963568935751c3f89837b2cb2067c47c0ecaee4c01bb448c0f6414869a002512c647387de71880278c4ff05b42ff8449134cd9c3493081edf111109660fce4e00a50835d08451554b286d899f095813540226b0982618085360425ad833ad4c38b9efd01f1ac8740d4b3bf60a41d0162cfb36054847ba96757c31e0472d904818960cc5e334d7a3cf0cc50c7113b1afd1c41132210423335a0b1630613fe3903fb12fbdc7aee0c123808481af3b8c09d41030fdd413c3cc0326c78177654c43c11821328e9229c49cc9584e909c1e11214064dc116cd7c051d7a388ce027cf24222604e80608308269042e83524c3e0e1c58160f2015cc8107b0c80199208a07aadaf1d07324204abc4f4c7dcc1c1c77c6cc91b833732d8040f892f003c60b3de624d835f4701f217402711c41a140701821d8829e22098464333131d9ec4c48b6313a7818137f21728879b460092c1538965fbce88e7950af4ebad3eeb83bfb723374a7e3f6ee7c7cb31aaebbf71f54ffa7ea8e2f95e13e3ffef8ed378f87bc5d5ede6d87eee56afcee6a1c6f6e7fe8bacf9f3f3fbf1b6f56cf878bbbe7c37977bd58df2d567f2daf1797c3badb35b7dd727d3b2ec7bbf3e566bd5875bf9f1dfff2ecddd1e9d9bbb3df5fbdfbede8e52fcfdebe7afecfcde5f74a12c9c7a64ca21af4f421fae943ccd387d8a70f714f1fe29f3e244843c0f6168a481684c134e6ec67d166bbdee240db04135d3a07e6aa607d1978220edc299e4592c6234514e06171214e41d3d83d646cea27f2cf84b67ea9269fed9b602273f760af45ea52d598be6dcc9de259245158d314568c19ab9b96b155cf59d70413a36d0f265bc61f689949f12c9208dce68c18e7b6cd195be58c6b7346cc10b6cd1977286726c5b348ed00fc6973f145a45d988c3b85f22468332f9e2d3eae0671a67eca06fe7f11ddcea8e2b2e57c6b481287b8a63f5d5531d7240feffec49c3a8757e58f6ff287778562da99c1f3550af9e6eac49b3d3198e7f0aa0b946f2e50c4479743f0aac1ef9b5cc1ce980ee18baff2c537f9a2f96875085e3ddf147bca29600a95cce24caeecf3ec8a6ca12cb80861ee65ab2cd3cefd2fa84393559a0f94125268ef44429555a1c92a2d2e7e7b3031eb862aa54293525a8c9739b02a9f429b4fe2e235075625536c261f2d46e60c58ac669ed8e68898f9e7c0aa04896d828839600eac4e90f6be780a8eccd9cca6ece7ec816c9b2cb5a84ffb4c251e2ae2fd6e418cae584d003135c1c484b607138d97aa7b92444d3071873f07a6ab60cd4db31193d41c58d567a9b9693662929a03ab6e9a539b2062929a03ab1224b5092226a919302eaa1d165e536864d2663a6547671764e364b1c5ed6cdf4c4e46cc845c706b05189703ab78cdfc64e4ea4ddf4e505c6cace235d73023e6c379bcfaf1a06f2e6356ae98cde2d5fd47cd95cccaa5ad393caaae655c866de1c975b159bc3a5fa8c9172b17d566f10e5dd172b8141a177a15b71777143315f165cddaa53fb9f647eda58d2be055bc66eeb272e190669297ae262faeafb7f0e4aae32c5e7585e3ea7d0b4fce64b37875ffe9e62a67e54c368b575de7f8e6a1852767b259bc3a5f74932f4ece647378e6d0c52e874ba171a157717b71473153115f14b25da87672ce9c291e53bd544ded5ab59373a699c961f56af59c2573b99aeaf56a32ed3b0639eb9a99dc64ea5c336daec9b9d0cc70ad5e429eb550e650bd62be2f15d40a8ad3a12aeffeca925402a4b8b7287158a5d1e58355d6f36b6f880eb8227207dc113939e3b6c71c707be7e4cc571cf47a737e773dacc74a558c0d9853c9b4b6a89c50a6ccaf725a99f2b2cac945e771532a72d338971391cd9ecda564b2e57dde32d8c735a407629d6d87e164b319bb93cd6af87571a3f2e6e778b18502fc554d3b979decf77bd0fbaf47c3bfe3fbe18ba23cf55bccb5de8c4377c4ffbd595fec7f9ca1ebc7cdbfdde9703e765ced1ab6d3338f29cfefd6abe57a38bd5ab084fce2e51a332cc6e5669d7f6fc7e5df0b3cec7efdb1d97efab8d97cda9b9cdfdc5e0dc3c8428eddaf8bf3ede6c1ef5757f8ffc1efd7cbc56a73f9e0c5e96a79313ce83be1a0dbe576719def97b3ae4777d7b71f60114a8fac7bb4b81e6e3f4c3ff7fe7eaaa38b87a7972e3d6ca68af37d631e35ee51131e35e9613355fcee9b69c0542ccb65ac5c60caa59f5c94c9b58c5c65c8e7ff7c32cf67e67c9a2de7cc72382b87a6729829878cb2f92f9bf2b2592e5bcbb2e52b5bb1b2452a5b97b2a5284b7d5918cb82559681929ebf365ef25570bea4cd7799f99631dfdfe59bb57c67956f937270ffa9befde63f23dc34960d0a656e6473747265616d0d0a656e646f626a0d0a3134362030206f626a0d0a5b203237382030203020302030203020302030203333332033333320302030203020302030203237382030203020302030203020302030203020302030203333332030203020302030203020302037323220373232203732322037323220363637203631312037373820373232203237382035353620302036313120383333203732322037373820363637203020373232203636372036313120373232203636372030203636372036363720302030203020302030203535362030203535362036313120353536203631312035353620333333203020363131203237382030203020323738203838392036313120363131203631312030203338392035353620333333203631312035353620302035353620302035303020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302037323220302030203020302030203020302036363720302030203020302030203020302030203020373738203020302030203020302030203020302030203020302030203020353536203020302030203020302030203020353536203020302030203020302030203020302030203631315d200d0a656e646f626a0d0a3134372030206f626a0d0a5b2032373820302030203020302030203020302033333320302030203020323738203020323738203237382030203020302030203020302030203020302030203020302030203020302030203020302030203020302036363720302030203020323738203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302035353620353536203530302035353620353536203020353536203020323232203020302032323220383333203535362035353620353536203535362033333320353030203237382035353620353030203020302035303020353030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203535365d200d0a656e646f626a0d0a3134382030206f626a0d0a3c3c2f547970652f4d657461646174612f537562747970652f584d4c2f4c656e67746820333130323e3e0d0a73747265616d0d0a3c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e3c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d22332e312d373031223e0a3c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a7064663d22687474703a2f2f6e732e61646f62652e636f6d2f7064662f312e332f223e0a3c7064663a50726f64756365723e4d6963726f736f6674c2ae20576f72642070617261204f6666696365203336353c2f7064663a50726f64756365723e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a64633d22687474703a2f2f7075726c2e6f72672f64632f656c656d656e74732f312e312f223e0a3c64633a63726561746f723e3c7264663a5365713e3c7264663a6c693e50454e454c4f5045204e415448414c592054454c4c4f204a494d454e455a3c2f7264663a6c693e3c2f7264663a5365713e3c2f64633a63726561746f723e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f223e0a3c786d703a43726561746f72546f6f6c3e4d6963726f736f6674c2ae20576f72642070617261204f6666696365203336353c2f786d703a43726561746f72546f6f6c3e3c786d703a437265617465446174653e323031392d30372d30335430323a31383a35312d30353a30303c2f786d703a437265617465446174653e3c786d703a4d6f64696679446174653e323031392d30372d30335430323a31383a35312d30353a30303c2f786d703a4d6f64696679446174653e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f223e0a3c786d704d4d3a446f63756d656e7449443e757569643a36434344454446302d463442302d343531342d423031302d4543423739303741303242443c2f786d704d4d3a446f63756d656e7449443e3c786d704d4d3a496e7374616e636549443e757569643a36434344454446302d463442302d343531342d423031302d4543423739303741303242443c2f786d704d4d3a496e7374616e636549443e3c2f7264663a4465736372697074696f6e3e0a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a3c2f7264663a5244463e3c2f783a786d706d6574613e3c3f787061636b657420656e643d2277223f3e0d0a656e6473747265616d0d0a656e646f626a0d0a3134392030206f626a0d0a3c3c2f446973706c6179446f635469746c6520747275653e3e0d0a656e646f626a0d0a3135302030206f626a0d0a3c3c2f547970652f585265662f53697a65203135302f575b2031203420325d202f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d202f46696c7465722f466c6174654465636f64652f4c656e677468203331353e3e0d0a73747265616d0d0a789c35d3e93695011406e00f15a2389d734412e18450860a219a3316a5724a249434c8106932dc879f5697d52574032d7d7d4fed1ffb597badfdee7f3b08c2dadfcf087b2c08fef2033f2332f323e2d311895cfc8a48a690c6ef8822b9a6fa301b5e4904dfb1892d6ce31bfe6dee84b9e681ff530632918503388843c8460eca7114477018b9c8471e4e218e4214e01862284612091c4711ca70022538895254601d4d388f4a9c4635aa700629d4a20667518706d4e31c1ab1861eb4a01917d08a4bb88876b4e1323ad0854e5c4137867115bdb88e6bb8891bb88d5be8c31d0ca01f4318c404eee12e46318207b88f8718c3633c421ae3788a277883493cc3734ce105a6318b19bcc41ce6f10a0b788d0f7887b758c47b7cc43296b08a157cc2063ee30bbe861fd7b1113d6ce75e44f76e447f6110fc0172a438bc0d0a656e6473747265616d0d0a656e646f626a0d0a787265660d0a30203135310d0a3030303030303030313320363535333520660d0a30303030303030303137203030303030206e0d0a30303030303030313638203030303030206e0d0a30303030303030323234203030303030206e0d0a30303030303030353234203030303030206e0d0a30303030303034393632203030303030206e0d0a30303030303035313239203030303030206e0d0a30303030303035333630203030303030206e0d0a30303030303035343133203030303030206e0d0a30303030303035343636203030303030206e0d0a30303030303035363239203030303030206e0d0a30303030303035383536203030303030206e0d0a30303030303132333331203030303030206e0d0a3030303030303030313420363535333520660d0a3030303030303030313520363535333520660d0a3030303030303030313620363535333520660d0a3030303030303030313720363535333520660d0a3030303030303030313820363535333520660d0a3030303030303030313920363535333520660d0a3030303030303030323020363535333520660d0a3030303030303030323120363535333520660d0a3030303030303030323220363535333520660d0a3030303030303030323320363535333520660d0a3030303030303030323420363535333520660d0a3030303030303030323520363535333520660d0a3030303030303030323620363535333520660d0a3030303030303030323720363535333520660d0a3030303030303030323820363535333520660d0a3030303030303030323920363535333520660d0a3030303030303030333020363535333520660d0a3030303030303030333120363535333520660d0a3030303030303030333220363535333520660d0a3030303030303030333320363535333520660d0a3030303030303030333420363535333520660d0a3030303030303030333520363535333520660d0a3030303030303030333620363535333520660d0a3030303030303030333720363535333520660d0a3030303030303030333820363535333520660d0a3030303030303030333920363535333520660d0a3030303030303030343020363535333520660d0a3030303030303030343120363535333520660d0a3030303030303030343220363535333520660d0a3030303030303030343320363535333520660d0a3030303030303030343420363535333520660d0a3030303030303030343520363535333520660d0a3030303030303030343620363535333520660d0a3030303030303030343720363535333520660d0a3030303030303030343820363535333520660d0a3030303030303030343920363535333520660d0a3030303030303030353020363535333520660d0a3030303030303030353120363535333520660d0a3030303030303030353220363535333520660d0a3030303030303030353320363535333520660d0a3030303030303030353420363535333520660d0a3030303030303030353520363535333520660d0a3030303030303030353620363535333520660d0a3030303030303030353720363535333520660d0a3030303030303030353820363535333520660d0a3030303030303030353920363535333520660d0a3030303030303030363020363535333520660d0a3030303030303030363120363535333520660d0a3030303030303030363220363535333520660d0a3030303030303030363320363535333520660d0a3030303030303030363420363535333520660d0a3030303030303030363520363535333520660d0a3030303030303030363620363535333520660d0a3030303030303030363720363535333520660d0a3030303030303030363820363535333520660d0a3030303030303030363920363535333520660d0a3030303030303030373020363535333520660d0a3030303030303030373120363535333520660d0a3030303030303030373220363535333520660d0a3030303030303030373320363535333520660d0a3030303030303030373420363535333520660d0a3030303030303030373520363535333520660d0a3030303030303030373620363535333520660d0a3030303030303030373720363535333520660d0a3030303030303030373820363535333520660d0a3030303030303030373920363535333520660d0a3030303030303030383020363535333520660d0a3030303030303030383120363535333520660d0a3030303030303030383220363535333520660d0a3030303030303030383320363535333520660d0a3030303030303030383420363535333520660d0a3030303030303030383520363535333520660d0a3030303030303030383620363535333520660d0a3030303030303030383720363535333520660d0a3030303030303030383820363535333520660d0a3030303030303030383920363535333520660d0a3030303030303030393020363535333520660d0a3030303030303030393120363535333520660d0a3030303030303030393220363535333520660d0a3030303030303030393320363535333520660d0a3030303030303030393420363535333520660d0a3030303030303030393520363535333520660d0a3030303030303030393620363535333520660d0a3030303030303030393720363535333520660d0a3030303030303030393820363535333520660d0a3030303030303030393920363535333520660d0a3030303030303031303020363535333520660d0a3030303030303031303120363535333520660d0a3030303030303031303220363535333520660d0a3030303030303031303320363535333520660d0a3030303030303031303420363535333520660d0a3030303030303031303520363535333520660d0a3030303030303031303620363535333520660d0a3030303030303031303720363535333520660d0a3030303030303031303820363535333520660d0a3030303030303031303920363535333520660d0a3030303030303031313020363535333520660d0a3030303030303031313120363535333520660d0a3030303030303031313220363535333520660d0a3030303030303031313320363535333520660d0a3030303030303031313420363535333520660d0a3030303030303031313520363535333520660d0a3030303030303031313620363535333520660d0a3030303030303031313720363535333520660d0a3030303030303031313820363535333520660d0a3030303030303031313920363535333520660d0a3030303030303031323020363535333520660d0a3030303030303031323120363535333520660d0a3030303030303031323220363535333520660d0a3030303030303031323320363535333520660d0a3030303030303031323420363535333520660d0a3030303030303031323520363535333520660d0a3030303030303031323620363535333520660d0a3030303030303031323720363535333520660d0a3030303030303031323820363535333520660d0a3030303030303031323920363535333520660d0a3030303030303031333020363535333520660d0a3030303030303031333120363535333520660d0a3030303030303031333220363535333520660d0a3030303030303031333320363535333520660d0a3030303030303031333420363535333520660d0a3030303030303031333520363535333520660d0a3030303030303031333620363535333520660d0a3030303030303031333720363535333520660d0a3030303030303031333820363535333520660d0a3030303030303031333920363535333520660d0a3030303030303031343020363535333520660d0a3030303030303031343120363535333520660d0a3030303030303031343220363535333520660d0a3030303030303031343320363535333520660d0a3030303030303031343420363535333520660d0a3030303030303031343520363535333520660d0a3030303030303030303020363535333520660d0a30303030303134373134203030303030206e0d0a30303030303135323730203030303030206e0d0a30303030303135373734203030303030206e0d0a30303030303138393630203030303030206e0d0a30303030303139303036203030303030206e0d0a747261696c65720d0a3c3c2f53697a65203135312f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d203e3e0d0a7374617274787265660d0a31393532340d0a2525454f460d0a787265660d0a3020300d0a747261696c65720d0a3c3c2f53697a65203135312f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d202f507265762031393532342f5852656653746d2031393030363e3e0d0a7374617274787265660d0a32323730330d0a2525454f46);
INSERT INTO `registro_aistencias` (`idRegistroAistencias`, `CodRegistro`, `fk_idEstudiante`, `Titulo`, `Fecha`, `Observacion`, `Validacion`, `Calificacion`, `HorasTrabajadas`, `AnexoPDF`) VALUES
(17, 'REG0017', 1, '', '2019-07-08', 'Entregado a Tiempo', 0, 0, 4, 0x255044462d312e370d0a25b5b5b5b50d0a312030206f626a0d0a3c3c2f547970652f436174616c6f672f50616765732032203020522f4c616e672865732d454329202f53747275637454726565526f6f74203133203020522f4d61726b496e666f3c3c2f4d61726b656420747275653e3e2f4d6574616461746120313438203020522f566965776572507265666572656e63657320313439203020523e3e0d0a656e646f626a0d0a322030206f626a0d0a3c3c2f547970652f50616765732f436f756e7420312f4b6964735b2033203020525d203e3e0d0a656e646f626a0d0a332030206f626a0d0a3c3c2f547970652f506167652f506172656e742032203020522f5265736f75726365733c3c2f466f6e743c3c2f46312035203020522f46322039203020523e3e2f4578744753746174653c3c2f4753372037203020522f4753382038203020523e3e2f584f626a6563743c3c2f496d6167653131203131203020523e3e2f50726f635365745b2f5044462f546578742f496d616765422f496d616765432f496d616765495d203e3e2f4d65646961426f785b2030203020373932203631325d202f436f6e74656e74732034203020522f47726f75703c3c2f547970652f47726f75702f532f5472616e73706172656e63792f43532f4465766963655247423e3e2f546162732f532f537472756374506172656e747320303e3e0d0a656e646f626a0d0a342030206f626a0d0a3c3c2f46696c7465722f466c6174654465636f64652f4c656e67746820343336333e3e0d0a73747265616d0d0a789cc55dcd6ee4c611be2fa077e071c68828f60f9b646018d895e48d8cddd55a2b3b09b2813196c69b01b4d25a2319b1df2ec79cf3043ee6ec174855ff911cb2ba7b66a8d880b53362b1eaebeeeaaaaf6a38adece8dda7c56df6f9e747af8fcf4eb2e2e8d5e2f643365bae0f4fdfcdbff8227b71729cfd78f0acc80bf88fb1bae05991550dcf14e3d9fdf2e0d99f3fcb6e0f9ebdb83c7876f425cbe097973f1c3c63205464f05694b9e259a9645ec1958f20f4f25d957d5883c6ec837e57db772f0f9efd6df6e6fcf55ccc5e5ccce5ec747ec867d989f9e7d5fc9015b3e7730eafe77fcf2ebf3a78760a16bf3e78b63b362e585e76a1694416c8e5d9e537f3c36a06866b63f7f8ec3f6fa6322d0a993341d93e3a86d136c6ea0582b838857f18e2107cf6c7c9405430fe8a02b131cdd9e9ebe32cebfb0a7b1a5f298bbc19e2b9387d899e70f66e7e28679717e025e7d9fc50ccfe3aaf66d9f1f91bf3ab57190a9d9c4ee7244d99d725054a2fc8bb0eaed337c767ede24d8602974a35148a93d3e97ca2e1b91094a1049fe04fe313a2cad900ce5b9c78bd41fea537e82578c05967efe885c9dee2c25c9cbe4567d1c2e75f9ee26bb36ce7f8f20dfe5aafe5ab53bd8ed32d9c68725512f8bf43db831f0afe9fcc6d1aedbc21eb6a605cbf980881e42a2f290493cdb254455e578495f7b3e379395b5dcd0fcbd9cdddd19bd54f7326664b1ce6cdfbf954104a51e45ca40d746cdf8869f78d5059c9452e865074d0f43f55ff17f39a7e1f139d682299503083e3e05f9ec24aea7d7b09c958877a1303ce4fbe01c66002c0b71000a4d9cd20c1d8b87f13efa6da7892e775438c62fa5d261498a3266dba58d6c08de5535b91bccc65f5e4566cc418b5f21e1202440ced3c102c940d16dacfaf973aa9bcc4d76fa70b1e90de493413c6a8322f13dd642c46c9e96354d100054f8d5153cd83220d4f6501e89a7c6a1bac5079cd7fa729c428dd5043ecf23288c2c7f8eaf2ecf81b88ce58dd65df612a1ee53dff87d0cc91e15604f209add4794359992e22b326e7e5935b29a5e6b04f6cc56697a7b5e2b2cb135bb1d965d44a4276d125cbfdaf207685bf7d40f2ca678f1f274b0415ec016aae27cc3795ca054b9becb17c534e9e6f2454f3d52e50d4c4507883f5bcac59de8c874fddf6ba383b3fc12e07d42bcf6d246595a96d4f30a8fe1b8530a49e696f3a3e9fce81792e05812f61baaa89a7ab51181ba4aa772baeeac91d49c80677780a96a3e7f70fab1f16570fd90b780781012818dc011542c5218257b8136b99575266f0a634f67ff8ccdefda397e44557923949837463c00d31e014556ed04ddea8be5340e8ace166a8cfa2ab303e78c62b640d76d00dcb6b62c84ed00035828311bf6d1b91851d22832abcf2e35339efdee70d6cb631a93e66020a72b258d9e40cefe548b93767eb958ee7f8e3167f2cd7838dbb97edbace4bd276d24a71b0cb7967a5aa82724f27ea916ad1d06a713bc51c00367567b9582d53d68bea95242121678de39656d4acbd867562b3c53de4e407ccc9234bb6a7f99ae7acda6bd10483a8cddca2b1a2cc6b6ad19ca8c1ea44438b26ed3c0b561a9cf64ef887a72c1a95cc939090b3868d16de84176df5df7b2820aeee6e46d66c4febb0d1c47e6b26599d57a2b7668aca0356b4835585d74cd969969c21c0add78c4ae34948027904ea0941cdda578fcb9fe687cdd806dbd32c4645d2559216ab84eaa1a89216cb89a62f566de7b784c85f8bde622545452ae727212167ad2c35d12166eddbb99cad96f811e93db0502a97ed8900c91fdf6bdd9460b9e44981d189260746eeb887121212d8d69b8c53ec230909396b4a29938c4667ed1dacdbafdf2fae71c1ee06ebb59fe5aae0e8b1fbac5761093207358005fcafd0d4137fb8b97497a5bf0c3faaa6e94920d9351296ec6eca6cd27163cd0a8b560c45909249d547e425fc451a8fa3744644533a128e97655e76030d670d8024d0f88b341ac7563c1a642b241e2fcd3ad21b8804b848233a88b4aa56c85f97ddeb9b265d463652d6f9485c5e9a75a4377061dae0258dcb5f0fe272c9a7834b05dcc949b38ef406ae924b9d90da152c7a93eaafcbeef54d932eb8a6e1f2d2015c0a8aa846d2f3e5af07e7cb0591b475f4d28175ac4495733598af6e50f022c129eb6e7adc36b6062fc1c387ce63c28c11d11b89c96e48efed584f0d1a8ea527113fe2ba70fb367547191bce86dbe2716db8475887b5284c4cc4def5daf484110ad1b965d353486eba2485e8e9b5082b74bba11d2f2e2da110dd89d5e1213b370e2174fe14323adae451aa6ab30a6f9ad4264fc1834d9e0eed7045b4edca981bab46fb7002eba06ae8141cb10e5121c732ff979a1d5e01f3f807be5a0ce9fd3ea62b994bcaf236bd29bb5609bd298393e84df5279bfae0344115dde431ad2e2612fa90c11e4f3be2788fc7031deff1f4474d55fc49cae83e896d1aed31704b1aecc093fa24062b590ef4074e7d5890a48c6e36d8c6cb1e03b7aca43bf058b3a18375ac7eed0f3cd62f082aa3a38aed5eec31704b7b5206ee18d25603a73e6048524657beb613b0c7c02daf4a717547c1b67275aae990a48c2e5e6d29bdc7c07be44d9025a4fe0846050bc45e2ab7bac2052265cf7ffca10205a035e76545ac00a4acf916beea946ca43d2f2d3ad2144914bdc2a06bd4b7a05590f55ba35e5ac4abb78051df4355c112c82da49316f1d2ac9ddb41a9e17b814946bd74c0a827a4f4487d232b697abd74607a3dc3a547dadd02f06bc76603e59215192d4a3afeed0372a85c4ad065cba556195d2e2568b3e5920f998172a9d5365add741c0ecaa5ae42cacbd314da7229a8d07a7067bc63e552c751581d1eb2f5ce2042eb4c41a3fd828743244dfe545b505f4e4ad115295a78addad241a7993fdde1e77cd8d75e64d7cb4c7f2671fb808faee9df5d5305cc8e3018b29c311c44ba6bcb076b30a51211918fba43aa229588fea24c9506dc551ede5a423921a86f9624298b9513dba077e5833198469404556f27298bd504dba0773540c76094df0aaa804d521623f6dba077447e2bf454219aa42cc6ceb741efd8f8569e43559349ca62143b19fd462169d37c1922d6f80c2c4dac7d7a2774f87e4c4d92659fd30915bec1510718b04fe5658cd45a3d04ebf2199cd6e3cbef3a40197de22e63d433acc7e76b1a8f2f0e43e3f2399dc663bda16604b5724b4d0ab8852405dc22798111f2e1162024e326b7353424286ee2427adca484f46c101da5f08b951d5600ffd09b9eeca4a4288b511da5f96898eaac177339bb595deb874f49aab3230e06d5463382234e758c41cf4f82734835655274c5c84e556d4d76bc39c74f82e0a9c64a9ab628ddd902bf8b7ec66227cf84f04b8aaaa7698b129e2df0bba8dbb1a8e2f829a29ca62d4a79b6c0efa2fd76f829b69ca62d4a7ab6c0efb2cc76fe43f1e5346d51da938a7f94f6989b49da531709b487d2e10bb1224a7b2815be202a12688f5742d31ea327427b027a7c915024d09e765024ed09ea71d93b80c713e7d0b85c860fe0b1dea0047aa2272dd60fbb6b4d4bb8a5a425dc3a7909cf463a426e1182426e865b5b8eb37484dcf40535b9b9096adaa03fb2de600a81924792e56682ae18f9298b0dd2a13f975edd03ddf948f29cdd2c56e6e681c538cd31f6523a3a922a6e1354c5484ea94f8fd88ae4786b091d1d4955b649caa214670bf42ed219836975b9a4287a92b228c1d902bd8baf1d83d19e88a4c87192b228bdd902bd8bea5ba18f3cebbc237a476eb640ef72c9369e5352dc38495994daa4a21fa536e66692dae039136587da40e067837447e9f0759756e2a84d4f85cb87940a5ffd381596daf494b894e995d0d4c6e86929404f8fcbaa013dbe1a68f5a8811e9778db4191d426a8c7e5e6001ecf8e43e372e93b80c77a03a4cc2e2d1976744801b790a4805b242f10e8e88464dce4b686e88e4e488f9b94909e0d4ac30afc5abc7b1480e5a12d4f96937155314223f806bd783e676c76f5b0fa497f2978758d8ff9eb038f9ad97af815f7091040d02f7a08b093b4340da45fd0f6c2b691d6f0abe15165fb20682afd29f410429c63197baa68f03bea91e5a3aae9145d31963558bf6de2b564c1782d6542bca674780629a3f1da88b8ef19f4451c99930921dbeb718f946f4859662513a2765895a739322170b7a32b46b07bce1152e5435010952700a101fa48c562e1bba8d02bcdc2ca7c18bda9ebce427b5d5be88af4432153fa7842eb67e631117a33851f3d0eeb8a8422d6483c08abb399cef1288defb1c45b2f21fa6064d25f2f5ce083c8abbb5bfc3cdf84462a30ed088881df972380a281c9dab3c124369991478bc3ca62a1094f29ddb94b666e2643133817ab62a189d2e14293516247476d945609b1515859e3246933c68f86d739f3e16df34b667109f4222311ee0ad2403a02941db7e246a49d93b1b656c710ce49df564786b36ed8a33405a4468f75d9ef5c173e721c07930ac7437bea288efd0e7519c5019b5ef16d71ec775aca288e42e5a18d3b0a63bf5352c660343c574a6e8b832aee773fada5aa21278770eca11db6d99881f7b31fe66af67e9e5de2c99497e71793596c1ad87772c4a43e32e82ffa74ccd38b37939d05c4ca0a9f2f7cc239640ab3cd740606aec894cc8bf1553ad35f5abfba795cdd67faf0ad9b6c6d0ee4ba8175bb73479dba120adeddcc59315be8972b7c798b2fd70fab8747e41257abdf40fc762ae478da0ef08721f2a36bc35cd4ec9381a60c90ebc92c5705f2e8a1656fea6a35ec97efbc8beaf1618ec50becb196f86d2fe0360c1042a683c5050df8d86f6bca1038203612cf2a84902890d230fc0d49a754e009d38826ea242d80c533292b7cb8b333b0b3db353253701b70b3477dbedbeab7db510e9a6478e8f3502cd563960304146499b4c6ca1a4abb323a61e403a509ba28e425cfc508701ddfd657f7ab79898c5ee08736e50c776d09bb56bbe41df8e6c7f9a132d7ef97d9d5bc329bf823107fbd536e960f467270e2d2ee8845c1f038ffe4b91ef065cdf76a57389a1f1dfe18b98c0e622e1b0fe95dd7d448d1f7bb619beb76dc459f0fe28cb40a7ce9ba85841d8496d317da99ed82a4ae5b03eeb2d6df97e814a4381dd8b8abdb0d53071e3550547327415578d3f31267b6e30e27cb4f4bdcf5b7d7cbdb2b7cb1825ca15309b9f177b0ce3067a811f3f19d6facb5ce1f9c37aa8e4f5216defb03e8bbec7dd8fa6ddabec93057b7ef3f81b49ef9fb870508ea1bf505adeb01d645878d3fe863396f16f0fe7b63046f59cc9b564463ba1b3f5d779fa9904c37068773616c5d43def02369915ff7de418ace7abf402e73b3d083fa112e3cb6b4e67e69be958dc35d81ee5f0ccd99724465cdf198eba863ee6d46e5c59813dd2cd67ae47a90ba410e435c5d2fd089fcbcadf349c12855e3e945c99b71343540dc939c8efde67220f653f777521e5c0fc47eaf808cec666e5ce8aee5000329604df8eb2eb8d7a3cf92c078452db1e16a6362933745284a059e2589ea0a8677e4ac55afb577f9f880a1e0de84a57fea40b2bcbfbda382fb4ec619c7d37487c6a3c1dd5a73ee1b9b37f2b992246dc1f03e044f84f71b1dead699eed26ec6f7b5fefb0f3fe31ece5c1afdd4c67b2cdf56d77778e71a6860dddeef69a09a59fd3fe31fb3b0b9e4ca64850f10e2498eb8dbe0a59078f674f2d28d8602d8266dffafff9186270cac130b7a5dd5762b123a3a918e75e341bfadeaf62beb45840d2cd8b235d364dab75019f2415408481833ad80f9b0bb2fb31117a01eacca44d247f5fe125485a3021ead3de2db3a183c824f5e43d58c14f0c1e56f323aec80011facc7935f0720e2d1c1584ba47e54c7324959383610f3f77bc5063204240c71f4ef31152c7d79c62280a8057e284991017b992603e4fd3eb6e9eb34196815506400e74689b13aaebdce888f8b9324ecee606538d0d1383a029499ce3ab3321c0b5b3b2385692bc2e80f7e9384b44b7cdd3f064ad59dfe78a6bb6fa228593dd27a6bf4330ae888a202cd95fefb2ba2c6e7f5aef0ef329e7d5c7c5832969ddc65cefffe074c92890f0d0a656e6473747265616d0d0a656e646f626a0d0a352030206f626a0d0a3c3c2f547970652f466f6e742f537562747970652f54727565547970652f4e616d652f46312f42617365466f6e742f417269616c2d426f6c644d542f456e636f64696e672f57696e416e7369456e636f64696e672f466f6e7444657363726970746f722036203020522f4669727374436861722033322f4c61737443686172203234332f57696474687320313436203020523e3e0d0a656e646f626a0d0a362030206f626a0d0a3c3c2f547970652f466f6e7444657363726970746f722f466f6e744e616d652f417269616c2d426f6c644d542f466c6167732033322f4974616c6963416e676c6520302f417363656e74203930352f44657363656e74202d3231302f436170486569676874203732382f4176675769647468203437392f4d6178576964746820323632382f466f6e74576569676874203730302f58486569676874203235302f4c656164696e672033332f5374656d562034372f466f6e7442426f785b202d363238202d3231302032303030203732385d203e3e0d0a656e646f626a0d0a372030206f626a0d0a3c3c2f547970652f4578744753746174652f424d2f4e6f726d616c2f636120313e3e0d0a656e646f626a0d0a382030206f626a0d0a3c3c2f547970652f4578744753746174652f424d2f4e6f726d616c2f434120313e3e0d0a656e646f626a0d0a392030206f626a0d0a3c3c2f547970652f466f6e742f537562747970652f54727565547970652f4e616d652f46322f42617365466f6e742f417269616c4d542f456e636f64696e672f57696e416e7369456e636f64696e672f466f6e7444657363726970746f72203130203020522f4669727374436861722033322f4c61737443686172203234332f57696474687320313437203020523e3e0d0a656e646f626a0d0a31302030206f626a0d0a3c3c2f547970652f466f6e7444657363726970746f722f466f6e744e616d652f417269616c4d542f466c6167732033322f4974616c6963416e676c6520302f417363656e74203930352f44657363656e74202d3231302f436170486569676874203732382f4176675769647468203434312f4d6178576964746820323636352f466f6e74576569676874203430302f58486569676874203235302f4c656164696e672033332f5374656d562034342f466f6e7442426f785b202d363635202d3231302032303030203732385d203e3e0d0a656e646f626a0d0a31312030206f626a0d0a3c3c2f547970652f584f626a6563742f537562747970652f496d6167652f5769647468203237372f486569676874203131342f436f6c6f7253706163652f4465766963655247422f42697473506572436f6d706f6e656e7420382f46696c7465722f4443544465636f64652f496e746572706f6c61746520747275652f4c656e67746820363239363e3e0d0a73747265616d0d0affd8ffe000104a4649460001010100dc00dc0000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080072011503012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f33a28a2bdf3e7828a28c120900e0753e94ae96e34ae1455ed2eca2be9a486490a3f96cd1003ef30ed547041e47438a85522e4e25b834ae145145686614514e450f2a21e8cc01a2f61a571b456d78bb488342f14dee9b6c58c30300a5cf3ca83fd6b16945a6ae86d59d828a28a64851451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140c5f2e4f2cc9b0f960eddd8e335b9636f3c49a968adb04d7013cbc8e1d95b2307dc138a4d2e39db4c92de58659ac6e4eefdc00cd1baf7c7d3b7bd68c68d1c51e669a68d1d25b3ba2818a90a731b0cf1cf18f515e562310eee07751a3a291058a1ba92d6f2de1cfd923f2658c6320f3f30f53cfe94bfd9a03d8e9d7285771927988232e0024127b74c568da436f677b24d6a50f9a55591d5d5449d4e0e0ff3a495adbcc79ddbe69b6fc91231568d48dc8090319f6af3feb12e7d0ecf62b975306df4b82e15ae26668fce477b7b7854bb1c1201f6191fa56310558ab0c303820d7653b44e9166516ed3aa43e628259d4619963551c0dc719279c5636a2204b062349fb3b49262395e525f03dbfad77e1715272b48e4af41257462d4907fc7c47fef8fe74ca7c3ff001f117fbe3f9d7a92d8e18ee74ff127fe4a0eabfefaff00e80b5ca5759f127fe4a0eabfefaffe80b5ca54d2f811553e20a2ad5be977f75179b6f673cb19380c8848a65cd8dd596dfb55b4b0eefbbbd48cd5732d85caed720a28a544796458e352cee405503924f414c9128abffd87ab7fd03ae7fefd9aad0d9dcdc4ed04304924ab9ca2a9246297322b95f621a2afff0061eabff40ebaff00bf668fec2d57fe81d75ff7e8d2e78f70e4976285157ffb0f55ff00a075d7fdfa347f61eabff40ebaff00bf668e78f70e49762851566e34dbeb48fccb8b49a24ce373a10334f8749d46e225961b2b89236195654241a7ccad7b872b29d157ff00b0b55ffa075d7fdfb34d7d1b538d773e9f7217d4c66973c7b8724bb14a8a1d191b6bab2b7a118a4aab8acc5a2af2e8ba9ba065d3ee4a91904467915567b79ad65314f13c720eaae30692927b072b445452d1542128a5a280128a5a2800a544695d63452cec7000ef495d1f81ada3baf14db89402103381ee2b9f155bd8d1954ec6b429fb4a8a3dcd4d234b834c5513457371705b958e5d8aa7fad3f58cdaea3e4ac4a15a1136eda32af939191d7d6b36f6faedb5dd47cb68d63498a80e3a0c9c0fe75b161acdafd93cabdb512b2ee2cf1939033ffd7af9f9d0acdaaf6bdcf5e3529a5ecf6b0cb99ecd35682e2caeb6449106668e4077484727078150406c56d35033cc1e6dc1ad99e4f5232b81c0acc9347d3aeb7496f398803cab1fe5f8568e95e178c4d6f218259f2e1b3d00008ffebd3a91a3469f349b4c21ed272b4516b45533cf799b51b6d50084742c0e771dc7fa551d63488f528da7b38ae1268c7314926f047a03dabb1bfd36e64d3e4874db6f2dc91b5a47e3af3fa66b9cd2a1d4b4df19da59dfb467cc52db53a57161f16a4e55a0f55d0deb51b254e4b7381e870460f7a7c3ff001f11ff00be3f9d687892dd2dbc477f0c63e5598e07a567c1ff001f11ff00be3f9d7d6d2a9ed68a9f7478338725471ec751f127fe4a06abfefaff00e80b5ca5755f127fe4a06abfefaffe80b5cad5d2f811353e23e8bf83a3fe28083febbcbffa15731f1d471a3fd64fe95d3fc1dff9102dff00ebbcbffa15733f1dbeee8ff593fa579f0ff783d09aff00673c6ab67c21ff0023a687ff005ff07fe8c5ac5adaf087fc8e9a1ffd8420ff00d18b5e8d4f819e7d3f891f57e063a57857c32c7fc2d3d53fedbffe875eedfc35f27dcea77ba4f89f51b8b1b878263712aef43ce371af370f172528a3d1c4c945c59f57fcb4715f2bff00c271e25ffa0c5cff00df55e97f07b5fd5758d4b524d42f65b858e252a1cf439a5530d2847998e9e2633972d8f5de3d051f2d727f122faeb4df04de5d59ccd0cea576ba9e4735e07ff09c7897fe83173ff7d52a5425515d1556bc69bb347b1fc67c7fc211c7fcfca7f5adbf86c07fc2bdd1fd7c93ff00a11af9db51f12eb3ab5b7d9efafe69e1ceed8e78cd7d15f0dbfe49ee8fff005c4ffe846aeb5374e9a4cce8d4552a368ea7e5a3e5231c578efc61d7b55d235ad3e3b0bd96dd1edcb30438c9dc6bcf2dbc7be26b59d665d56672a73873906a618694e3cc9953c4c612e568fa03c4be07d1bc4968e93daa473e0ec9e350ac0fbfad7cdde20d0ee7c3baccfa6dd2fcf19e187465ec6be94f04789078a7c3306a0ca166c98e503a6e1d6bcebe3a69e8ada56a2a3f78c1e16fa0c11fccd5d0a928cf91935e9c651e747abe8207fc23fa77fd7b47ff00a08af9f7e2c7fc940bcff713f957d07a0ffc8bfa77fd7b47ff00a08af9f3e2c7fc940bcff713f95185fe2b0c4afdd2389a28a4af4cf305a2928a005a2928a005ed5b1e16bffecef11da4cc7085b637d0d63d0090c08ea0f15cf8aa6aa51945f635a3271a89a3b6bbb510f8d6ea3651b64bc85f18e08624d7a34de1cd29a762176b4f682260985cb9556d9f520e41f635c8eb312aeada6dd4842a18a1676ef9563fa6335d45e7882cf4b682595cac9771ab1da038f9428423df033ff0335e6612a39d08f2f43d3a94d426dbea6078db4fb0b3d3b4e360a9b181f9c2e33f29ff000ae934c51fd916a071985791f4ac2f1dbc72693a6bc43084b903d3eff15b9a7c891e8f6acec15444bc93ed5e2f125dd0a76ee76e596f6922b680aff64b82f2bbff00a54ca371e9891ab26f61cf8fe2ba7c086daccbb9f4eb5a5e1d9d1adae5378dc6f272173ce379aa9af0db16b32a7fad166a07d326bc0c373471728f7d0f42b5a5453ec793ea775f6ed52eaeb39f36466cfe35041ff1f11ffbe3f9d462a483fe3e23ff007c7f3afd3a9c542928aec7c74a4e552efb9d3fc4aff9281aaffbebff00a02d72b5d57c4aff009281aaff00bebffa02d72b554fe042a9f11f45fc1dff00927f07fd7797ff0042ae67e3b74d1feb27f4ae97e0e303e00847a4f2e7fefaae73e3ac4e60d265c7c81dd73ef8af3e1fef07a33ff773c62b67c21ff23a687ff61083ff00462d6356e782e279bc71a1a460922f626fc03027f415e854f819e753f8d1f5776fc2be43d6ff00e43da8ff00d7d49ffa11afae9d82c658f40326be43d5dc3eb77eebf75ae6423fefa35c582f899dd8dd914ebd6be05ffc85b55ffae2bfcebc96bd6be05ffc85b55ffae2bfceba713fc2672e1bf888eefe2bff00c93fbefaaff3af9aabe95f8aff00f2205f7d57f9d7cd559e0fe035c6fc615f4ffc35ff00927ba3ff00d713ff00a11af980d7d3ff000dbfe49ee8ff00f5c4ff00e846a71bf0a1e0be2679c7c718ddf5ed34a2337fa31e833fc46bcbedf4fbcbb9d61b7b59a4918e02aa1afaee5b68276066863908e0175071491da5b42dbe3b7891bd5500358d3c4b84395237a985539735ce67e1d787a6f0df84a1b4bae2e2463348bfdd27b7e95c47c75bc431693640fef017948f6e07f435e9dae788b4df0fd8bdcdfdca46aa32133f331f402be67f16788e7f146bd36a136550fcb1479fbaa3a0a2842539f3b0af38c21c88fa7f41ff00917b4eff00af68ff00f4115f3dfc59ff0092837bfee27f2afa1341ff00917b4eff00af68ff00f4115f3dfc59ff00928379fee27f2a785fe2b162bf848e273451466bd33cb0a28a3340c28a28a002ae69764f7fa8c30aab15dc0b903eeae79354ebaaf0437cfa9c31b84b992dff00744fa835c78ea92a7424e2746160a5552674da8c76fab78a12c3cc223b6893241ea40638ac8d374fb8d561ba8ee4856b3708493d3ef67e9d2b32d66bdd375b9a6b86f32e729393ff003d14f040fa86af42b5b092e6d6f64fb3bc16f74a19c9189338209c7be07eb5f2952a56c24a2a93ba691f6187852c461dfb55d4c3f116ab6da9e85a6c56e4efb74d9203eca79ad4be2b71a568da6f05ae9e3cff00baa371fe58fc6b275bd0adedb4d6974f5744552ae09e54e3ad45ad4b74c96060478a4b481648a755273951915d38a92c5c609e8d33cf951fab4e56d5325d1fcab3bab6bf44da8da8dc5abfd18fca7f023f5ad6bf9525f135d69cc79bab0c267d4135c3d9cd73b731caf790c53f9fe4aa121a427be2bad907dabc756f72f80b6f60249bfd8241e2b8abe1392b73b77b2ff86269d6e6a7ca91e592c6d0ccf13fde462a7f0a583fe3e23ff7c7f3ab3aacf15cea971342b8477247bf3d6ab43ff1f117fbe3f9d7d9d29374537bd8f9e9a4aa34bb9d3fc4aff9283aaffbebff00a02d72b5d5fc4aff009283aaff00bebffa02d7295a52f811353e267b8fc0ed5525d1aff4a63fbd826f3947aab003f423f5aebfc79e161e2bf0f3da2305b88dbcc858ff007bd2be77f0bf88aebc2faec3a95b73b7e5910f4743d457d29e1ef15e95e24b349ec6e50b11f342c70e87e95c15e1284f9e27a1879c670e491f36dd78435fb3ba7b7974bb8dea71954c835e9bf0afe1fdee9fa9aebbaac46168d08b789bef648c163e9c135ec1b54f500d41777b6b616ed3dd5c470c6a3259d801533c4ce71e5b150c34212e6b94bc4ba9c5a47872faf663858e16c7b9c702be4d672eecedd58926bd1be267c404f1148ba5e98cdf6089b2efd3cd6ff0af38aeac2d2708ddf539315554e56415eb5f02ff00e42daaff00d705fe75e4b5eb3f02cffc4db55ffae0bfceaf13fc26461bf888ef3e2bff00c93fbefaaff3af9aabe94f8ac73e00befaaff3af9aeb3c1fc06b8d7ef857d3ff000d7fe49ee8ff00f5c4ff00e846be60afa7be1b11ff000af747e7fe589ffd08d2c6fc28304fde6721f163c59acf87b57b1874cbb30c7240598000e4ee35e7337c47f154ebb5b54900ff0064015d67c73ff90f699ff5ec7ff4235e555587a7174d3689c454929b49966f751bcd466335edccb3c87f8a46cd56a28ae9b24ac8e74db7a9f5d683ff0022fe9dff005ed1ff00e822bc47e25f8635ad4bc6d757367a74f342c8803a2f078af6dd088ff847f4effaf68fff0041157f8f515e442a3a736d1ebce9aa9049b3e56ff8423c4bff00407b9ffbe693fe109f12ff00d01ee7fef8afaab8f5147cb5b7d727d8c3ea70ee7c7b7769716174f6b75134534670e8c3906a1aea7e247fc943d63febaaff00e80b5cb57a30778a6cf3e6ad2b051451544852c72bc52078dcab0e841a4a315328a92b31c5d9dd1de5fca754d1ec3c4762a0dcd9011dd46be9fe7f9d769a7ea11dfda43a8452a2c320dce09fe2c60f1df3fa7233dabc9341d767d0af4ca804904836cd11e8ebfe35d3b2148e3d4b4032be9ecd97808c796d9c900fd6be5f15869d17c8f6e8ff0043e8b058b4f5fbce8357bf85f49bd4b345f2c0dae49c919cf03b0adab700f87a3e33fe8dff00b2d79cddeb37da92888ba340325d5502b038ef5dcc9aada58e836f14afba69600b1c29cbb7cbe95e3e2f0f5d538f7b9ead49d3e6ba7ba313c357369a2e9faa5dcb858c3236deecc41c01f5aa7aa5ec9a3e8175757385d535662760eb1c7d87e02987ecda32ff00696b1136f53fe896a39527d49ee471cfe55c6eabaa5ceb17ef7772d966fbabd947a0af5f0b82f6f5b9d6b1eafd0f0f1188f674f97a94a9f0ff00c7c45fef8fe74ca7c3ff001f11ff00be3f9d7d43568e878b1f88ea3e24ff00c941d57fdf5ffd016b94aeabe24ffc940d57fdf5ff00d016b95a54be043a9f1336b4ef0ddc6a4b6e6399104f13ca3703c0570a47e66b57fe10bd534db960d7c96ec1caac884e186e550411d8ee1f9573f6fadea569622ce0bb74b70db8203d0e41fe601fc28935cd4e587ca92f2568c6700b74cb6efe7cd29464d96a5048eee25f1a5a69d72cde22b987ec880c90ee24ae41c0e48f4aafa878335bbebe8e2bed77cd699246fdeeecb142a30149f9bef76f435c79f106aadf68dd7923fda7997773b8e3152c7e29d6e29c4cba84be60dd86cf4dc413fa807f0acd5292d517ed62d599a16fe0bb89edd5cde451c926d58e3753f3310c707d3ee9a53e08bd863b59aeee238219ed9ae4b95276004707df9cd6645e25d6604748efe550ff007b079eff00e2688fc4dacc52175bf9777b9cf603fa0abb5422f4fb16edfc2fe66b377a6cfa8450bdbc4d307d8583a052e48f4f9466b58f83ee34eb6b49a1d55a0f3e1fb44b30c8511940e380724ff8d726752bd6bc9af1ae1cdc4cac92484f2c194a91f9122ad2f8935743032de38681424678e142ed03e98e28719b60a5046f2f85f57d4b4ffb445ab7da6cd998162cdd881920f639fd2b32e7c2b2dac30ab5dc6d7970c0416ca872e0bec073d073daa97fc241ab798cff006e9416ce707ae4827f5029f1f893588a15892fa508adb80cf439cff3e68519a07283dcbb3f842eedfc567419665f336798b2aa121976eec81d7dbeb5a47c29af5ac6162d45bc85ba16a0a3b60671f37d326b966d56fde58e46ba91a48e3312b96e429ce467d393f9d4d16bdaac091a477d2aac6bb5577700673fce8719340a504741a9f842e216b83a86b68cf6f6e27dae8c5b616dbd3b1c9e9f8d5493c1cf03ac771a8c11cb2ccd1409b18f99b4804e7b727f4ac59b56bfb812096e5df7c4227c9fbc808207e6054fff000916afe4c917dba5db23176e7b9c67e9d07e5428c907341bd4b375e19b9b5d2a6be6990ac4c54a007270fb6adc5e08d41df4f123f96b790b4c0f96495c0cedc7738c7e759cfe27d6646919efa46f31363038c119cff3a8dbc41ab32b2b5fcc549ce3774e31c7a714ed3b0af036e1d1f535d4b51b0975b68469f22c25c3332b12db4631d29355d235ad22c2dee6e3559b74d218c22b9e0862a79cfb7a562c1afea96f7773750de48935c9dd2b8eac739cfd7351dc6b1a85d5b476f3dcb491c672a1bb739ebf5353c8ee573ab1bd69a56ad3cf70936b5240b14eb6caeccc77c8dd071d07bd49a6681e21d5248234d4a58da59a785b748d84f29549271d8ee007bd638f156b6b26f5bf9031001231dba1fafbd447c45abb42909bf98471c7e5a00d8c2e41c7e6abf90a3d9b0e78d8a374275bc992e4b19d1cac9b8e4ee1c1a8aa4b89e5bab892e2672f2c8773b1ee7d6a3ad96c62f70a28a2992145145030aded0bc5b7da1c7f6745496d724989fdfdeb06835857c3c2bc792a2d0d2955953973459dc7fc245e18bd7f3ae74b920988c3344719fca90f8ab41d3dfcdd3f4b69670302499b38ae228af3ff00b1e8decdbb7a9d7fda153b234b58d72f75cb8596edc1099088bd141acda28af4a9528528f24159238e7394e5cd2dc29d1b059918f40c09fce9b4568f6b109d8ddf196ab6dadf8b6ff51b32c6de665285860f0a07f4ac2a28a518a8ab21b77770a28a2a84145145001451450014514500145145002514b45002514b450014514500145145001451450014514500145145006d7910ff00cf24ff00be451e443ff3c93fef9145152507910ffcf24ffbe451e443ff003c93fef914514083c887fe7927fdf228f221ff009e49ff007c8a28a003c887fe7927fdf228f221ff009e49ff007c8a28a061e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145001e443ff003c93fef9147910ff00cf24ff00be45145002f910ff00cf24ff00be451451401fffd90d0a656e6473747265616d0d0a656e646f626a0d0a31322030206f626a0d0a3c3c2f417574686f722850454e454c4f5045204e415448414c592054454c4c4f204a494d454e455a29202f43726561746f7228feff004d006900630072006f0073006f0066007400ae00200057006f00720064002000700061007200610020004f00660066006900630065002000330036003529202f4372656174696f6e4461746528443a32303139303730333032313835312d30352730302729202f4d6f644461746528443a32303139303730333032313835312d30352730302729202f50726f647563657228feff004d006900630072006f0073006f0066007400ae00200057006f00720064002000700061007200610020004f00660066006900630065002000330036003529203e3e0d0a656e646f626a0d0a32302030206f626a0d0a3c3c2f547970652f4f626a53746d2f4e203133322f466972737420313038312f46696c7465722f466c6174654465636f64652f4c656e67746820313939303e3e0d0a73747265616d0d0a789c9d59db6e1b37107d2fd07fe063fb90ec0eef2c8202692e6890d6356c177d088a42b1b7b61a5932e435d2fc7dcf6849cb2e86dc588013ae76499eb99c1992438aaa579a9423a5b5a29494364a3bbcb3caf478e994715a69af6c8f0f415967958ecaf5f86094735e19ad7c1fd14d798f9756050aca900a81a750d1e05b52312685a76449e12fa5880915f540324111f598d9a20df86c146948613ddad80351910188857c06b3d8a4c83a7c8f8a580c884ece6b88a4c8935516f379cc63303e402a8dfeb14f0a6a50f441397c4f0415f03d79bc87ce3d1474116d24e5a13580a014da649487de6c114068033c28a90d7e7818c242554ca92d74f51ed60218a6d42e7ae5319f87ae0efd3df465c3851454c07c11c207cc9760d4c022026c672ed2b01b5a4c12605a826b020c4701fd6147cd06856a3a0605d318c3963568935751c3f89837b2cb2067c47c0ecaee4c01bb448c0f6414869a002512c647387de71880278c4ff05b42ff8449134cd9c3493081edf111109660fce4e00a50835d08451554b286d899f095813540226b0982618085360425ad833ad4c38b9efd01f1ac8740d4b3bf60a41d0162cfb36054847ba96757c31e0472d904818960cc5e334d7a3cf0cc50c7113b1afd1c41132210423335a0b1630613fe3903fb12fbdc7aee0c123808481af3b8c09d41030fdd413c3cc0326c78177654c43c11821328e9229c49cc9584e909c1e11214064dc116cd7c051d7a388ce027cf24222604e80608308269042e83524c3e0e1c58160f2015cc8107b0c80199208a07aadaf1d07324204abc4f4c7dcc1c1c77c6cc91b833732d8040f892f003c60b3de624d835f4701f217402711c41a140701821d8829e22098464333131d9ec4c48b6313a7818137f21728879b460092c1538965fbce88e7950af4ebad3eeb83bfb723374a7e3f6ee7c7cb31aaebbf71f54ffa7ea8e2f95e13e3ffef8ed378f87bc5d5ede6d87eee56afcee6a1c6f6e7fe8bacf9f3f3fbf1b6f56cf878bbbe7c37977bd58df2d567f2daf1797c3badb35b7dd727d3b2ec7bbf3e566bd5875bf9f1dfff2ecddd1e9d9bbb3df5fbdfbede8e52fcfdebe7afecfcde5f74a12c9c7a64ca21af4f421fae943ccd387d8a70f714f1fe29f3e244843c0f6168a481684c134e6ec67d166bbdee240db04135d3a07e6aa607d1978220edc299e4592c6234514e06171214e41d3d83d646cea27f2cf84b67ea9269fed9b602273f760af45ea52d598be6dcc9de259245158d314568c19ab9b96b155cf59d70413a36d0f265bc61f689949f12c9208dce68c18e7b6cd195be58c6b7346cc10b6cd1977286726c5b348ed00fc6973f145a45d988c3b85f22468332f9e2d3eae0671a67eca06fe7f11ddcea8e2b2e57c6b481287b8a63f5d5531d7240feffec49c3a8757e58f6ff287778562da99c1f3550af9e6eac49b3d3198e7f0aa0b946f2e50c4479743f0aac1ef9b5cc1ce980ee18baff2c537f9a2f96875085e3ddf147bca29600a95cce24caeecf3ec8a6ca12cb80861ee65ab2cd3cefd2fa84393559a0f94125268ef44429555a1c92a2d2e7e7b3031eb862aa54293525a8c9739b02a9f429b4fe2e235075625536c261f2d46e60c58ac669ed8e68898f9e7c0aa04896d828839600eac4e90f6be780a8eccd9cca6ece7ec816c9b2cb5a84ffb4c251e2ae2fd6e418cae584d003135c1c484b607138d97aa7b92444d3071873f07a6ab60cd4db31193d41c58d567a9b9693662929a03ab6e9a539b2062929a03ab1224b5092226a919302eaa1d165e536864d2663a6547671764e364b1c5ed6cdf4c4e46cc845c706b05189703ab78cdfc64e4ea4ddf4e505c6cace235d73023e6c379bcfaf1a06f2e6356ae98cde2d5fd47cd95cccaa5ad393caaae655c866de1c975b159bc3a5fa8c9172b17d566f10e5dd172b8141a177a15b71777143315f165cddaa53fb9f647eda58d2be055bc66eeb272e190669297ae262faeafb7f0e4aae32c5e7585e3ea7d0b4fce64b37875ffe9e62a67e54c368b575de7f8e6a1852767b259bc3a5f74932f4ece647378e6d0c52e874ba171a157717b71473153115f14b25da87672ce9c291e53bd544ded5ab59373a699c961f56af59c2573b99aeaf56a32ed3b0639eb9a99dc64ea5c336daec9b9d0cc70ad5e429eb550e650bd62be2f15d40a8ad3a12aeffeca925402a4b8b7287158a5d1e58355d6f36b6f880eb8227207dc113939e3b6c71c707be7e4cc571cf47a737e773dacc74a558c0d9853c9b4b6a89c50a6ccaf725a99f2b2cac945e771532a72d338971391cd9ecda564b2e57dde32d8c735a407629d6d87e164b319bb93cd6af87571a3f2e6e778b18502fc554d3b979decf77bd0fbaf47c3bfe3fbe18ba23cf55bccb5de8c4377c4ffbd595fec7f9ca1ebc7cdbfdde9703e765ced1ab6d3338f29cfefd6abe57a38bd5ab084fce2e51a332cc6e5669d7f6fc7e5df0b3cec7efdb1d97efab8d97cda9b9cdfdc5e0dc3c8428eddaf8bf3ede6c1ef5757f8ffc1efd7cbc56a73f9e0c5e96a79313ce83be1a0dbe576719def97b3ae4777d7b71f60114a8fac7bb4b81e6e3f4c3ff7fe7eaaa38b87a7972e3d6ca68af37d631e35ee51131e35e9613355fcee9b69c0542ccb65ac5c60caa59f5c94c9b58c5c65c8e7ff7c32cf67e67c9a2de7cc72382b87a6729829878cb2f92f9bf2b2592e5bcbb2e52b5bb1b2452a5b97b2a5284b7d5918cb82559681929ebf365ef25570bea4cd7799f99631dfdfe59bb57c67956f937270ffa9befde63f23dc34960d0a656e6473747265616d0d0a656e646f626a0d0a3134362030206f626a0d0a5b203237382030203020302030203020302030203333332033333320302030203020302030203237382030203020302030203020302030203020302030203333332030203020302030203020302037323220373232203732322037323220363637203631312037373820373232203237382035353620302036313120383333203732322037373820363637203020373232203636372036313120373232203636372030203636372036363720302030203020302030203535362030203535362036313120353536203631312035353620333333203020363131203237382030203020323738203838392036313120363131203631312030203338392035353620333333203631312035353620302035353620302035303020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302037323220302030203020302030203020302036363720302030203020302030203020302030203020373738203020302030203020302030203020302030203020302030203020353536203020302030203020302030203020353536203020302030203020302030203020302030203631315d200d0a656e646f626a0d0a3134372030206f626a0d0a5b2032373820302030203020302030203020302033333320302030203020323738203020323738203237382030203020302030203020302030203020302030203020302030203020302030203020302030203020302036363720302030203020323738203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302035353620353536203530302035353620353536203020353536203020323232203020302032323220383333203535362035353620353536203535362033333320353030203237382035353620353030203020302035303020353030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203020302030203535365d200d0a656e646f626a0d0a3134382030206f626a0d0a3c3c2f547970652f4d657461646174612f537562747970652f584d4c2f4c656e67746820333130323e3e0d0a73747265616d0d0a3c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e3c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d22332e312d373031223e0a3c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a7064663d22687474703a2f2f6e732e61646f62652e636f6d2f7064662f312e332f223e0a3c7064663a50726f64756365723e4d6963726f736f6674c2ae20576f72642070617261204f6666696365203336353c2f7064663a50726f64756365723e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a64633d22687474703a2f2f7075726c2e6f72672f64632f656c656d656e74732f312e312f223e0a3c64633a63726561746f723e3c7264663a5365713e3c7264663a6c693e50454e454c4f5045204e415448414c592054454c4c4f204a494d454e455a3c2f7264663a6c693e3c2f7264663a5365713e3c2f64633a63726561746f723e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f223e0a3c786d703a43726561746f72546f6f6c3e4d6963726f736f6674c2ae20576f72642070617261204f6666696365203336353c2f786d703a43726561746f72546f6f6c3e3c786d703a437265617465446174653e323031392d30372d30335430323a31383a35312d30353a30303c2f786d703a437265617465446174653e3c786d703a4d6f64696679446174653e323031392d30372d30335430323a31383a35312d30353a30303c2f786d703a4d6f64696679446174653e3c2f7264663a4465736372697074696f6e3e0a3c7264663a4465736372697074696f6e207264663a61626f75743d22222020786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f223e0a3c786d704d4d3a446f63756d656e7449443e757569643a36434344454446302d463442302d343531342d423031302d4543423739303741303242443c2f786d704d4d3a446f63756d656e7449443e3c786d704d4d3a496e7374616e636549443e757569643a36434344454446302d463442302d343531342d423031302d4543423739303741303242443c2f786d704d4d3a496e7374616e636549443e3c2f7264663a4465736372697074696f6e3e0a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a3c2f7264663a5244463e3c2f783a786d706d6574613e3c3f787061636b657420656e643d2277223f3e0d0a656e6473747265616d0d0a656e646f626a0d0a3134392030206f626a0d0a3c3c2f446973706c6179446f635469746c6520747275653e3e0d0a656e646f626a0d0a3135302030206f626a0d0a3c3c2f547970652f585265662f53697a65203135302f575b2031203420325d202f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d202f46696c7465722f466c6174654465636f64652f4c656e677468203331353e3e0d0a73747265616d0d0a789c35d3e93695011406e00f15a2389d734412e18450860a219a3316a5724a249434c8106932dc879f5697d52574032d7d7d4fed1ffb597badfdee7f3b08c2dadfcf087b2c08fef2033f2332f323e2d311895cfc8a48a690c6ef8822b9a6fa301b5e4904dfb1892d6ce31bfe6dee84b9e681ff530632918503388843c8460eca7114477018b9c8471e4e218e4214e01862284612091c4711ca70022538895254601d4d388f4a9c4635aa700629d4a20667518706d4e31c1ab1861eb4a01917d08a4bb88876b4e1323ad0854e5c4137867115bdb88e6bb8891bb88d5be8c31d0ca01f4318c404eee12e46318207b88f8718c3633c421ae3788a277883493cc3734ce105a6318b19bcc41ce6f10a0b788d0f7887b758c47b7cc43296b08a157cc2063ee30bbe861fd7b1113d6ce75e44f76e447f6110fc0172a438bc0d0a656e6473747265616d0d0a656e646f626a0d0a787265660d0a30203135310d0a3030303030303030313320363535333520660d0a30303030303030303137203030303030206e0d0a30303030303030313638203030303030206e0d0a30303030303030323234203030303030206e0d0a30303030303030353234203030303030206e0d0a30303030303034393632203030303030206e0d0a30303030303035313239203030303030206e0d0a30303030303035333630203030303030206e0d0a30303030303035343133203030303030206e0d0a30303030303035343636203030303030206e0d0a30303030303035363239203030303030206e0d0a30303030303035383536203030303030206e0d0a30303030303132333331203030303030206e0d0a3030303030303030313420363535333520660d0a3030303030303030313520363535333520660d0a3030303030303030313620363535333520660d0a3030303030303030313720363535333520660d0a3030303030303030313820363535333520660d0a3030303030303030313920363535333520660d0a3030303030303030323020363535333520660d0a3030303030303030323120363535333520660d0a3030303030303030323220363535333520660d0a3030303030303030323320363535333520660d0a3030303030303030323420363535333520660d0a3030303030303030323520363535333520660d0a3030303030303030323620363535333520660d0a3030303030303030323720363535333520660d0a3030303030303030323820363535333520660d0a3030303030303030323920363535333520660d0a3030303030303030333020363535333520660d0a3030303030303030333120363535333520660d0a3030303030303030333220363535333520660d0a3030303030303030333320363535333520660d0a3030303030303030333420363535333520660d0a3030303030303030333520363535333520660d0a3030303030303030333620363535333520660d0a3030303030303030333720363535333520660d0a3030303030303030333820363535333520660d0a3030303030303030333920363535333520660d0a3030303030303030343020363535333520660d0a3030303030303030343120363535333520660d0a3030303030303030343220363535333520660d0a3030303030303030343320363535333520660d0a3030303030303030343420363535333520660d0a3030303030303030343520363535333520660d0a3030303030303030343620363535333520660d0a3030303030303030343720363535333520660d0a3030303030303030343820363535333520660d0a3030303030303030343920363535333520660d0a3030303030303030353020363535333520660d0a3030303030303030353120363535333520660d0a3030303030303030353220363535333520660d0a3030303030303030353320363535333520660d0a3030303030303030353420363535333520660d0a3030303030303030353520363535333520660d0a3030303030303030353620363535333520660d0a3030303030303030353720363535333520660d0a3030303030303030353820363535333520660d0a3030303030303030353920363535333520660d0a3030303030303030363020363535333520660d0a3030303030303030363120363535333520660d0a3030303030303030363220363535333520660d0a3030303030303030363320363535333520660d0a3030303030303030363420363535333520660d0a3030303030303030363520363535333520660d0a3030303030303030363620363535333520660d0a3030303030303030363720363535333520660d0a3030303030303030363820363535333520660d0a3030303030303030363920363535333520660d0a3030303030303030373020363535333520660d0a3030303030303030373120363535333520660d0a3030303030303030373220363535333520660d0a3030303030303030373320363535333520660d0a3030303030303030373420363535333520660d0a3030303030303030373520363535333520660d0a3030303030303030373620363535333520660d0a3030303030303030373720363535333520660d0a3030303030303030373820363535333520660d0a3030303030303030373920363535333520660d0a3030303030303030383020363535333520660d0a3030303030303030383120363535333520660d0a3030303030303030383220363535333520660d0a3030303030303030383320363535333520660d0a3030303030303030383420363535333520660d0a3030303030303030383520363535333520660d0a3030303030303030383620363535333520660d0a3030303030303030383720363535333520660d0a3030303030303030383820363535333520660d0a3030303030303030383920363535333520660d0a3030303030303030393020363535333520660d0a3030303030303030393120363535333520660d0a3030303030303030393220363535333520660d0a3030303030303030393320363535333520660d0a3030303030303030393420363535333520660d0a3030303030303030393520363535333520660d0a3030303030303030393620363535333520660d0a3030303030303030393720363535333520660d0a3030303030303030393820363535333520660d0a3030303030303030393920363535333520660d0a3030303030303031303020363535333520660d0a3030303030303031303120363535333520660d0a3030303030303031303220363535333520660d0a3030303030303031303320363535333520660d0a3030303030303031303420363535333520660d0a3030303030303031303520363535333520660d0a3030303030303031303620363535333520660d0a3030303030303031303720363535333520660d0a3030303030303031303820363535333520660d0a3030303030303031303920363535333520660d0a3030303030303031313020363535333520660d0a3030303030303031313120363535333520660d0a3030303030303031313220363535333520660d0a3030303030303031313320363535333520660d0a3030303030303031313420363535333520660d0a3030303030303031313520363535333520660d0a3030303030303031313620363535333520660d0a3030303030303031313720363535333520660d0a3030303030303031313820363535333520660d0a3030303030303031313920363535333520660d0a3030303030303031323020363535333520660d0a3030303030303031323120363535333520660d0a3030303030303031323220363535333520660d0a3030303030303031323320363535333520660d0a3030303030303031323420363535333520660d0a3030303030303031323520363535333520660d0a3030303030303031323620363535333520660d0a3030303030303031323720363535333520660d0a3030303030303031323820363535333520660d0a3030303030303031323920363535333520660d0a3030303030303031333020363535333520660d0a3030303030303031333120363535333520660d0a3030303030303031333220363535333520660d0a3030303030303031333320363535333520660d0a3030303030303031333420363535333520660d0a3030303030303031333520363535333520660d0a3030303030303031333620363535333520660d0a3030303030303031333720363535333520660d0a3030303030303031333820363535333520660d0a3030303030303031333920363535333520660d0a3030303030303031343020363535333520660d0a3030303030303031343120363535333520660d0a3030303030303031343220363535333520660d0a3030303030303031343320363535333520660d0a3030303030303031343420363535333520660d0a3030303030303031343520363535333520660d0a3030303030303030303020363535333520660d0a30303030303134373134203030303030206e0d0a30303030303135323730203030303030206e0d0a30303030303135373734203030303030206e0d0a30303030303138393630203030303030206e0d0a30303030303139303036203030303030206e0d0a747261696c65720d0a3c3c2f53697a65203135312f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d203e3e0d0a7374617274787265660d0a31393532340d0a2525454f460d0a787265660d0a3020300d0a747261696c65720d0a3c3c2f53697a65203135312f526f6f742031203020522f496e666f203132203020522f49445b3c46304544434436434230463431343435423031304543423739303741303242443e3c46304544434436434230463431343435423031304543423739303741303242443e5d202f507265762031393532342f5852656653746d2031393030363e3e0d0a7374617274787265660d0a32323730330d0a2525454f46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rgeneral`
--

CREATE TABLE `rgeneral` (
  `idRGeneral` int(11) NOT NULL,
  `Desempeño` int(11) DEFAULT NULL,
  `Conocimiento` int(11) DEFAULT NULL,
  `Disciplina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `rol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `rol`) VALUES
(1, 'Estudiante'),
(2, 'TutorExterno'),
(3, 'TutorAcademico'),
(4, 'CordinadorTitulacion'),
(5, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubricagp1`
--

CREATE TABLE `rubricagp1` (
  `idRubricaGP1` int(11) NOT NULL,
  `Conocimiento` int(11) DEFAULT NULL,
  `Capacidad` int(11) DEFAULT NULL,
  `Desempeño` int(11) DEFAULT NULL,
  `Asistencia` int(11) DEFAULT NULL,
  `Puntaje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubricagp2`
--

CREATE TABLE `rubricagp2` (
  `idRubricaGP2` int(11) NOT NULL,
  `fk_idRGeneral` int(11) NOT NULL,
  `fk_idCompGen` int(11) NOT NULL,
  `fk_idCompProfesional` int(11) NOT NULL,
  `fk_idComp_Sociales` int(11) NOT NULL,
  `fk_idCompActitudinales` int(11) NOT NULL,
  `Puntaje` int(11) DEFAULT NULL,
  `Total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubricagp3`
--

CREATE TABLE `rubricagp3` (
  `idRubricaGP3` int(11) NOT NULL,
  `DesarrolloTema` int(11) DEFAULT NULL,
  `PlanteamientoProblema` int(11) DEFAULT NULL,
  `MarcoTeorico` int(11) DEFAULT NULL,
  `Objetivos` int(11) DEFAULT NULL,
  `Hipotesis` int(11) DEFAULT NULL,
  `Metodologia` int(11) DEFAULT NULL,
  `Bibliografia` int(11) DEFAULT NULL,
  `Total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `text_estudiante`
--

CREATE TABLE `text_estudiante` (
  `idTExt_Estudiante` int(11) NOT NULL,
  `fk_idTutorExterno` int(11) NOT NULL,
  `fk_idEstudiante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `text_estudiante`
--

INSERT INTO `text_estudiante` (`idTExt_Estudiante`, `fk_idTutorExterno`, `fk_idEstudiante`) VALUES
(1, 25, 1),
(2, 25, 2),
(3, 25, 3),
(4, 1, 4),
(5, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_gp`
--

CREATE TABLE `tipo_gp` (
  `idTipoGP` int(11) NOT NULL,
  `TipoGP` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_gp`
--

INSERT INTO `tipo_gp` (`idTipoGP`, `TipoGP`) VALUES
(1, 'Gestion Productiva'),
(2, 'Practicum'),
(3, 'tesis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_incidencias`
--

CREATE TABLE `tipo_incidencias` (
  `idTipoIncidencia` int(11) NOT NULL,
  `TipoIncidencia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_incidencias`
--

INSERT INTO `tipo_incidencias` (`idTipoIncidencia`, `TipoIncidencia`) VALUES
(1, 'Personal'),
(2, 'Academica'),
(3, 'Tecnica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutoracademico_estudiante`
--

CREATE TABLE `tutoracademico_estudiante` (
  `idTAcEst` int(11) NOT NULL,
  `fk_idTutorAcademico` int(11) NOT NULL,
  `fk_idEstudiante` int(11) NOT NULL,
  `Calificacion` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tutoracademico_estudiante`
--

INSERT INTO `tutoracademico_estudiante` (`idTAcEst`, `fk_idTutorAcademico`, `fk_idEstudiante`, `Calificacion`, `Estado`) VALUES
(1, 1, 1, NULL, '1'),
(2, 1, 2, NULL, '1'),
(3, 1, 3, NULL, '1'),
(4, 1, 4, NULL, '1'),
(5, 1, 5, NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_academico`
--

CREATE TABLE `tutor_academico` (
  `idTutorAcademico` int(11) NOT NULL,
  `CodTAaca` varchar(45) DEFAULT NULL,
  `fk_idDepartamento` int(11) NOT NULL,
  `fk_idExtension` int(11) NOT NULL,
  `fk_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tutor_academico`
--

INSERT INTO `tutor_academico` (`idTutorAcademico`, `CodTAaca`, `fk_idDepartamento`, `fk_idExtension`, `fk_idUsuario`) VALUES
(1, 'CAC0001', 1, 23, 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_externo`
--

CREATE TABLE `tutor_externo` (
  `idTutorExterno` int(11) NOT NULL,
  `CodTExt` varchar(7) DEFAULT NULL,
  `fk_idDepartamento_tex` int(11) NOT NULL,
  `fk_idExtension_tex` int(11) NOT NULL,
  `fk_idUsuario_tex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tutor_externo`
--

INSERT INTO `tutor_externo` (`idTutorExterno`, `CodTExt`, `fk_idDepartamento_tex`, `fk_idExtension_tex`, `fk_idUsuario_tex`) VALUES
(1, 'TEX0001', 12, 1, 16),
(2, 'TEX0002', 13, 2, 17),
(3, 'TEX0003', 6, 3, 18),
(4, 'TEX0004', 6, 4, 19),
(5, 'TEX0005', 14, 5, 20),
(6, 'TEX0006', 15, 6, 21),
(7, 'TEX0007', 1, 7, 22),
(8, 'TEX0008', 14, 5, 23),
(9, 'TEX0009', 1, 8, 24),
(10, 'TEX0010', 4, 9, 25),
(11, 'TEX0011', 7, 10, 26),
(12, 'TEX0012', 15, 11, 27),
(13, 'TEX0013', 5, 12, 28),
(14, 'TEX0014', 16, 13, 29),
(15, 'TEX0015', 5, 14, 30),
(16, 'TEX0016', 2, 15, 31),
(17, 'TEX0017', 6, 16, 32),
(18, 'TEX0018', 17, 17, 33),
(19, 'TEX0019', 18, 18, 34),
(20, 'TEX0020', 5, 12, 35),
(21, 'TEX0021', 16, 13, 36),
(22, 'TEX0022', 5, 14, 37),
(23, 'TEX0023', 2, 15, 38),
(24, 'TEX0024', 5, 19, 39),
(25, 'TEX0025', 3, 20, 40),
(26, 'TEX0026', 5, 14, 41),
(27, 'TEX0027', 4, 20, 42),
(28, 'TEX0028', 5, 21, 43),
(29, 'TEX0029', 6, 22, 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `PrimerNombre` varchar(45) DEFAULT NULL,
  `SegundoNombre` varchar(45) NOT NULL,
  `apellido_paterno` varchar(45) DEFAULT NULL,
  `apellido_materno` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `idRol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `cedula`, `PrimerNombre`, `SegundoNombre`, `apellido_paterno`, `apellido_materno`, `email`, `usuario`, `password`, `idRol`) VALUES
(1, '1105054444', 'Gilbert ', 'Josue', 'Solano ', 'Sotomayor', 'gjsolano@utpl.edu.ec', 'gsolano', 'fe42e8abc8730b24f1c9cee717f6dd23', 1),
(2, '1102036655', 'Cecilia ', 'Elizabth', 'Sanchez ', 'Macas', 'ceciliasanchez@utpl.edu.ec', 'csanchez', '3e638ea50338ee65556356237e2477c4', 1),
(3, '1102050606', 'Ramiro ', 'Israel', 'Vivanco ', 'Gualan', 'ramirovivanco@utpl.edu.ec', 'rvivanco', 'rvivanco123', 1),
(4, '1100005566', 'Jose ', 'Andres', 'Pullaguari ', 'Salas', 'josepullaguari@utpl.edu.ec', 'jpullaguari', 'jpullaguari123', 1),
(5, '1100665522', 'Cristian ', 'Jose', 'Macas ', 'Pineda', 'cristianmacas@utpl.edu.ec', 'cmacas', 'cmacas123', 1),
(6, '1200336655', 'Alexis ', 'Fabian', 'Montoya ', 'Parra', 'alexismontoya@utpl.edu.ec', 'amontoya', 'amontoya123', 1),
(7, '1107896562', 'Luis ', 'Enrique', 'Ortiz ', 'Rivera', 'luisortiz@utpl.edu.ec', 'lortiz', 'lortiz123', 1),
(8, '1102336547', 'Nelson ', 'Ricardo', 'Paltin ', 'Cabrera', 'nelsonpaltin@utpl.edu.ec', 'npaltin', 'npaltin123', 1),
(9, '1101012323', 'Paul', 'Enrique', 'Ramon ', 'Suquilanda', 'paulramon@utpl.edu.ec', 'pramon', 'pramon123', 1),
(10, '1102023333', 'Luis ', 'Miguel', 'Rojas ', 'Quezada', 'luisrojas@utpl.edu.ec', 'lrojas', 'lrojas123', 1),
(11, '1102026695', 'Juan', 'Jose ', 'Gaona ', 'Calva', 'juangaona@utpl.edu.ec', 'jgaona', 'jgaona123', 1),
(12, '1102226655', 'Franz ', 'David', 'Montero ', 'Calva', 'franzmontero@utpl.edu.ec', 'fmontero', 'fmontero123', 1),
(13, '1105669985', 'Lenin', 'Paul', 'Vivanco ', 'Ruiz', 'leninvivanco@utpl.edu.ec', 'lvivanco', 'lvivanco123', 1),
(14, '1105336669', 'Israel ', 'Aldeir', 'Quito ', 'Jumbo', 'israelquito@utpl.edu.ec', 'iquito', 'iquito123', 1),
(15, '1102003366', 'Amanda ', 'Cristina', 'Silva ', 'Solano', 'amandasilva@utpl.edu.ec', 'asilva', 'e15d56d1607a53480831209f550d6bd7', 1),
(16, '1102368996', 'Maria', 'Isabel', 'Loaiza ', 'Aguirre', 'miloaiza@utpl.edu.ec', 'mloaiza', 'dbb0d261f42c237de024ad28b26eeccd', 2),
(17, '1402026655', 'Luis ', 'Anibal', 'Sanchez ', '', 'gerencia@ecolac.com.ec', 'lsanchez', 'lsanchez123', 2),
(18, '1233678989', 'Priscila', '', 'Valdiviezo', '', 'pmvaldiviezo@utpl.edu.ec', 'pvaldiviezo', 'pvaldiviezo123', 2),
(19, '1702026698', 'Jorge ', 'Marcos', 'Cordero ', 'Zambrano', 'jmcordero@utpl.edu.ec', 'jcordero', 'jcordero123', 2),
(20, '1108964756', 'Paola ', 'Celia', 'Sarango', 'Lapo ', 'cpsarango@utpl.edu.ec', 'psarango', 'psarango123', 2),
(21, '1132659895', 'Maria ', 'Patricia ', 'Samaniego', '', 'mpsamaniego@utpl.edu.ec', 'msamaniego', 'msamaniego123', 2),
(22, '1922656999', 'Armando', '', 'Cabrera ', 'Silva', 'aacabrera@utpl.edu.ec', 'acabrera', 'acabrera123', 2),
(23, '1100336666', 'Cecilia ', 'Paola', 'Sarango ', 'Lapo', 'cpsarango@utpl.edu.ec', 'csarango', 'csarango123', 2),
(24, '1899885566', 'Segundo', '', 'Benitez ', 'Hurtado', 'srbenitez@utpl.edu.ec', 'sbenitez', 'sbenitez123', 2),
(25, '1100226688', 'Fernanda', '', 'Soto', '', 'fmsoto@utpl.edu.ec', 'fsoto', 'fsoto123', 2),
(26, '1103669888', 'Jose ', '', 'Raul ', 'Castro', 'jrcastro@utpl.edu.ec', 'jraul', 'jraul123', 2),
(27, '1108965401', 'Maria ', 'Daniela', 'Castillo', '', 'aploaizax@utpl.edu.ec', 'mcastillo', 'mcastillo123', 2),
(28, '1966558998', 'Ramiro', '', 'Ramirez', '', 'rlramirez@utpl.edu.ec', 'rramirez', 'rramirez123', 2),
(29, '1254544222', 'Ana ', '', 'Santos ', 'Delgado', 'aasantos@utpl.edu.ec', 'asantos', 'asantos123', 2),
(30, '1105669855', 'Carlos ', 'Alberto', 'Calderon ', 'Cordova', 'cacalderon@utpl.edu.ec', 'ccalderon', 'ccalderon123', 2),
(31, '1103336655', 'Alexandra', '', 'Gonzales', '', 'acgonzalez@utpl.edu.ec', 'agonzales', 'agonzales123', 2),
(32, '4500556699', 'Byron', '', 'Jaramillo ', 'Campoverde', 'bgjaramillo@utpl.edu.ec', 'bjaramillo', 'bjaramillo123', 2),
(33, '8899552000', 'Hugo', '', 'Ramirez', '', 'hugo.ramirez@kradac.com', 'hramirez', 'hramirez123', 2),
(34, '6699885522', 'Ramiro', '', 'Ramirez', '', 'rlramirez@utpl.edu.ec', 'rramirez', 'rramirez123', 2),
(35, '1133222266', 'Oscar ', 'Fabricio', 'Peralta', '', 'oscar.peralta@ambiente.gob.ec', 'operalta', 'operalta123', 2),
(36, '9666550022', 'Maria ', 'Belen ', 'Mora', '', 'gtenesaca@utpl.edu.ec', 'mmora', 'mmora123', 2),
(37, '6633552214', 'Janneth', '', 'Chicaiza', '', 'jachicaiza@utpl.edu.ec', 'jchicaiza', 'jchicaiza123', 2),
(38, '5536669585', 'Nelson ', '', 'Piedra', '', 'nopiedra@utpl.edu.ec', 'npiedra', 'npiedra123', 2),
(39, '1599665402', 'Audrey ', '', 'Romero', '', 'aeromero2@utpl.edu.ec', 'aromero', 'aromero123', 2),
(40, '2236598740', 'Maria ', 'Belen ', 'Moro', '', 'gtenesaca@utpl.edu.ec;\nmbmora@utpl.edu.ec', 'mmoro', 'mmoro123', 2),
(41, '1102658966', 'Maria ', 'Carmen', 'Cabrera ', '', 'mccabrerax@utpl.edu.ec\niecadme@utpl.edu.ec', 'mcabrera', 'mcabrera123', 2),
(42, '2669885524', 'Juan', 'Carlos', 'Morocho', '', 'jcmorocho@utpl.edu.ec', 'jmorocho', 'jmorocho123', 2),
(43, '2698552630', 'Rodrigo', '', 'Barba', '', 'lrbarba@utpl.edu.ec', 'rbarba', 'rbarba123', 2),
(44, '1106355896', 'Omar ', 'Alexander', 'Ruiz ', 'Vivanco', 'omaruiz@utpl.edu.ec', 'oruiz', 'ab595b95a67f1cdd82e6fa835f08f785', 3),
(45, '1548751354', 'Fernanda', 'Maricela', 'Soto', 'Guerrero', 'fmsoto@utpl.edu.ec', 'fmsoto', 'f7c5eb5906f71fdaf99ea79d35919456', 4),
(46, '1105048776', 'Ramiro', 'Israel', 'Vivanco', 'Gualan', 'rivivanco@utpl.edu.ec', 'adminrv', '14d5e056e2564a41e687273c637d8eb1', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividadesproyecto`
--
ALTER TABLE `actividadesproyecto`
  ADD PRIMARY KEY (`idActPry`),
  ADD KEY `fk_ActividadesProyecto_Proyectos1` (`fk_idProyectos`);

--
-- Indices de la tabla `actividades_registro`
--
ALTER TABLE `actividades_registro`
  ADD PRIMARY KEY (`idActividades_Registro`),
  ADD KEY `fk_Actividades_Registro_Registro_Aistencias1` (`fk_idRegistroAistencias`);

--
-- Indices de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  ADD PRIMARY KEY (`idCiclo`);

--
-- Indices de la tabla `ciclos_nivelgp`
--
ALTER TABLE `ciclos_nivelgp`
  ADD PRIMARY KEY (`idCiclos_NivelGP`),
  ADD KEY `fk_Ciclos_NivelGP_Ciclos1` (`fk_idCiclo`),
  ADD KEY `fk_Ciclos_NivelGP_NivelGP1` (`fk_idNivelGP`);

--
-- Indices de la tabla `cl_ngp_paralelo`
--
ALTER TABLE `cl_ngp_paralelo`
  ADD PRIMARY KEY (`idCl_NGP_Paralelo`),
  ADD KEY `fk_Cl_NGP_Paralelo_Paralelos1` (`fk_idParalelo`),
  ADD KEY `fk_Cl_NGP_Paralelo_Ciclos_NivelGP1` (`fk_idCiclos_NivelGP`);

--
-- Indices de la tabla `comp_actitudinales`
--
ALTER TABLE `comp_actitudinales`
  ADD PRIMARY KEY (`idCompActitudinales`);

--
-- Indices de la tabla `comp_profesional`
--
ALTER TABLE `comp_profesional`
  ADD PRIMARY KEY (`idCompProfesional`);

--
-- Indices de la tabla `comp_sociales`
--
ALTER TABLE `comp_sociales`
  ADD PRIMARY KEY (`idComp_Sociales`);

--
-- Indices de la tabla `com_genericas`
--
ALTER TABLE `com_genericas`
  ADD PRIMARY KEY (`idCompGen`);

--
-- Indices de la tabla `convenio`
--
ALTER TABLE `convenio`
  ADD PRIMARY KEY (`idConvenio`),
  ADD KEY `fk_Convenio_Empresas1` (`fk_idEmpresa_cnv`),
  ADD KEY `fk_Convenio_Coordinador_Titulacion1` (`fk_idCoordinadorTitulacion`);

--
-- Indices de la tabla `coordinador_titulacion`
--
ALTER TABLE `coordinador_titulacion`
  ADD PRIMARY KEY (`idCoordinadorTitulacion`),
  ADD KEY `fk_Coordinador_Titulacion_Departamentos1` (`fk_idDepartamento`),
  ADD KEY `fk_Coordinador_Titulacion_Extensiones1` (`fk_idExtension`),
  ADD KEY `fk_Coordinador_Titulacion_Usuarios1` (`fk_idUsuario`);

--
-- Indices de la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`idCreditos`),
  ADD KEY `fk_Creditos_CreditosECTS21` (`fk_idCreditos2`),
  ADD KEY `fk_Creditos_CreditosECTCS11` (`fk_idCreditos1`);

--
-- Indices de la tabla `creditosectcs1`
--
ALTER TABLE `creditosectcs1`
  ADD PRIMARY KEY (`idCreditos1`),
  ADD KEY `fk_CreditosECTCS1_Modalidades1` (`fk_Modalidad`);

--
-- Indices de la tabla `creditosects2`
--
ALTER TABLE `creditosects2`
  ADD PRIMARY KEY (`idCreditos2`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`idEstudiante`),
  ADD KEY `fk_Estudiantes_Ciclos1` (`fk_idCiclo`),
  ADD KEY `fk_Estudiantes_NivelGP1` (`fk_idNivelGP`),
  ADD KEY `fk_Estudiantes_Paralelos1` (`fk_idParalelo`),
  ADD KEY `fk_Estudiantes_Usuarios1` (`fk_idUsuario_Est`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`idEvaluacion`),
  ADD KEY `fk_Evaluacion_Evaluacion_Rubrica1` (`fk_idEvaluacion_Rubrica`),
  ADD KEY `fk_Evaluacion_Tutor_Externo1` (`fk_idTutorExterno`);

--
-- Indices de la tabla `evaluacion_rubrica`
--
ALTER TABLE `evaluacion_rubrica`
  ADD PRIMARY KEY (`idEvaluacionRubrica`),
  ADD KEY `fk_Evaluacion_Rubrica_RubricaGP11` (`fk_idRubricaGP1`),
  ADD KEY `fk_Evaluacion_Rubrica_RubricaGP21` (`fk_idRubricaGP2`),
  ADD KEY `fk_Evaluacion_Rubrica_RubricaGP31` (`fk_idRubricaGP3`);

--
-- Indices de la tabla `eventualidad`
--
ALTER TABLE `eventualidad`
  ADD PRIMARY KEY (`idEventualidad`),
  ADD KEY `fk_Eventualidad_Tutor_Externo1` (`fk_idTutorExterno`);

--
-- Indices de la tabla `extensiones`
--
ALTER TABLE `extensiones`
  ADD PRIMARY KEY (`idExtension`);

--
-- Indices de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD PRIMARY KEY (`idIncidencia`),
  ADD KEY `fk_Incidencias_TipoIncidencias1` (`fk_idTipoIncidencia`),
  ADD KEY `fk_Incidencias_Estudiantes1` (`fk_idEstudiante`);

--
-- Indices de la tabla `informeconsolidado`
--
ALTER TABLE `informeconsolidado`
  ADD PRIMARY KEY (`idInformeCons`),
  ADD KEY `fk_InformeConsolidado_TutorAcademico_Estudiante1` (`fk_TutorAcademico_Estudiante_idTAcEst`);

--
-- Indices de la tabla `informe_aprobaciones`
--
ALTER TABLE `informe_aprobaciones`
  ADD PRIMARY KEY (`idInformeAprob`),
  ADD KEY `fk_Informe_Aprobaciones_Coordinador_Titulacion1` (`fk_idCoordinadorTitulacion`),
  ADD KEY `fk_Informe_Aprobaciones_TutorAcademico_Estudiante1` (`fk_idTAcEst`);

--
-- Indices de la tabla `informe_bimestral`
--
ALTER TABLE `informe_bimestral`
  ADD PRIMARY KEY (`idInformeBimestral`),
  ADD KEY `fk_InformeBimestral_TipoGP1` (`fk_idTipoGP`),
  ADD KEY `fk_Informe_Bimestral_Estudiantes1` (`fk_idEstudiante`);

--
-- Indices de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  ADD PRIMARY KEY (`idInstitucion`);

--
-- Indices de la tabla `modalidades`
--
ALTER TABLE `modalidades`
  ADD PRIMARY KEY (`idModalidad`);

--
-- Indices de la tabla `nivel_gp`
--
ALTER TABLE `nivel_gp`
  ADD PRIMARY KEY (`idNivelGP`);

--
-- Indices de la tabla `paralelos`
--
ALTER TABLE `paralelos`
  ADD PRIMARY KEY (`idParalelo`);

--
-- Indices de la tabla `portafolio_academico`
--
ALTER TABLE `portafolio_academico`
  ADD PRIMARY KEY (`idPortafolio_Academico`),
  ADD KEY `fk_Portafolio_Academico_TutorAcademico_Estudiante1` (`fk_idTAcEst`),
  ADD KEY `fk_Portafolio_Academico_Informe_Bimestral1` (`fk_idInformeBimestral`),
  ADD KEY `fk_Portafolio_Academico_Registro_Aistencias1` (`fk_Registro_Aistencias_idRegistroAistencias`),
  ADD KEY `fk_Portafolio_Academico_Evaluacion1` (`fk_Evaluacion_idEvaluacion`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`idProyectos`),
  ADD KEY `fk_Proyectos_Instituciones1` (`fk_idInstitucion`),
  ADD KEY `fk_Proyectos_Empresas1` (`fk_idEmpresa`),
  ADD KEY `idTutorExterno` (`fk_idTutorExterno`);

--
-- Indices de la tabla `proyecto_estudiante`
--
ALTER TABLE `proyecto_estudiante`
  ADD PRIMARY KEY (`idProyecto_Estudiante`),
  ADD KEY `fk_Proyecto_Estudiante_Proyectos1` (`fk_idProyectos_pe`),
  ADD KEY `fk_Proyecto_Estudiante_Estudiantes1` (`fk_idEstudiante_pe`);

--
-- Indices de la tabla `proyecto_plaza_nivel`
--
ALTER TABLE `proyecto_plaza_nivel`
  ADD PRIMARY KEY (`idPryNv`),
  ADD KEY `fk_pry_nv` (`fk_pry_nv`),
  ADD KEY `fk_nvgp_nv` (`fk_nvgp_nv`);

--
-- Indices de la tabla `rediseñocurricular`
--
ALTER TABLE `rediseñocurricular`
  ADD PRIMARY KEY (`idRediseño_Curricular`),
  ADD KEY `fk_RediseñoCurricular_Rediseños1` (`fk_idRediseños`),
  ADD KEY `fk_RediseñoCurricular_Creditos1` (`fk_idCreditos`),
  ADD KEY `fk_RediseñoCurricular_Coordinador_Titulacion1` (`fk_idCoordinadorTitulacion`);

--
-- Indices de la tabla `rediseños`
--
ALTER TABLE `rediseños`
  ADD PRIMARY KEY (`idRediseños`),
  ADD KEY `fk_Rediseños_Rediseño_Curricular_21` (`fk_idRediseñoC2`),
  ADD KEY `fk_Rediseños_Rediseño_Curricular_11` (`fk_idRediseñoC1`);

--
-- Indices de la tabla `rediseño_curricular_1`
--
ALTER TABLE `rediseño_curricular_1`
  ADD PRIMARY KEY (`idRediseñoC1`),
  ADD KEY `fk_Rediseño_Curricular_1_Modalidades1` (`fk_idModalidad`);

--
-- Indices de la tabla `rediseño_curricular_2`
--
ALTER TABLE `rediseño_curricular_2`
  ADD PRIMARY KEY (`idRediseñoC2`);

--
-- Indices de la tabla `registro_aistencias`
--
ALTER TABLE `registro_aistencias`
  ADD PRIMARY KEY (`idRegistroAistencias`,`fk_idEstudiante`),
  ADD KEY `fk_Registro_Aistencias_Estudiantes1` (`fk_idEstudiante`);

--
-- Indices de la tabla `rgeneral`
--
ALTER TABLE `rgeneral`
  ADD PRIMARY KEY (`idRGeneral`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `rubricagp1`
--
ALTER TABLE `rubricagp1`
  ADD PRIMARY KEY (`idRubricaGP1`);

--
-- Indices de la tabla `rubricagp2`
--
ALTER TABLE `rubricagp2`
  ADD PRIMARY KEY (`idRubricaGP2`),
  ADD KEY `fk_RubricaGP2_RGeneral1` (`fk_idRGeneral`),
  ADD KEY `fk_RubricaGP2_Com_Genericas1` (`fk_idCompGen`),
  ADD KEY `fk_RubricaGP2_Comp_Profesional1` (`fk_idCompProfesional`),
  ADD KEY `fk_RubricaGP2_Comp_Sociales1` (`fk_idComp_Sociales`),
  ADD KEY `fk_RubricaGP2_Comp_Actitudinales1` (`fk_idCompActitudinales`);

--
-- Indices de la tabla `rubricagp3`
--
ALTER TABLE `rubricagp3`
  ADD PRIMARY KEY (`idRubricaGP3`);

--
-- Indices de la tabla `text_estudiante`
--
ALTER TABLE `text_estudiante`
  ADD PRIMARY KEY (`idTExt_Estudiante`),
  ADD KEY `fk_TExt_Estudiante_Tutor_Externo1` (`fk_idTutorExterno`),
  ADD KEY `fk_TExt_Estudiante_Estudiantes1` (`fk_idEstudiante`);

--
-- Indices de la tabla `tipo_gp`
--
ALTER TABLE `tipo_gp`
  ADD PRIMARY KEY (`idTipoGP`);

--
-- Indices de la tabla `tipo_incidencias`
--
ALTER TABLE `tipo_incidencias`
  ADD PRIMARY KEY (`idTipoIncidencia`);

--
-- Indices de la tabla `tutoracademico_estudiante`
--
ALTER TABLE `tutoracademico_estudiante`
  ADD PRIMARY KEY (`idTAcEst`),
  ADD KEY `fk_TutorAcademico_Estudiante_Tutor_Academico1` (`fk_idTutorAcademico`),
  ADD KEY `fk_TutorAcademico_Estudiante_Estudiantes1` (`fk_idEstudiante`);

--
-- Indices de la tabla `tutor_academico`
--
ALTER TABLE `tutor_academico`
  ADD PRIMARY KEY (`idTutorAcademico`),
  ADD KEY `fk_Tutor_Academico_Departamentos1` (`fk_idDepartamento`),
  ADD KEY `fk_Tutor_Academico_Extensiones1` (`fk_idExtension`),
  ADD KEY `fk_Tutor_Academico_Usuarios1` (`fk_idUsuario`);

--
-- Indices de la tabla `tutor_externo`
--
ALTER TABLE `tutor_externo`
  ADD PRIMARY KEY (`idTutorExterno`),
  ADD KEY `fk_Tutor_Externo_Departamentos1` (`fk_idDepartamento_tex`),
  ADD KEY `fk_Tutor_Externo_Extensiones1` (`fk_idExtension_tex`),
  ADD KEY `fk_Tutor_Externo_Usuarios1` (`fk_idUsuario_tex`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades_registro`
--
ALTER TABLE `actividades_registro`
  MODIFY `idActividades_Registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  MODIFY `idCiclo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ciclos_nivelgp`
--
ALTER TABLE `ciclos_nivelgp`
  MODIFY `idCiclos_NivelGP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cl_ngp_paralelo`
--
ALTER TABLE `cl_ngp_paralelo`
  MODIFY `idCl_NGP_Paralelo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comp_actitudinales`
--
ALTER TABLE `comp_actitudinales`
  MODIFY `idCompActitudinales` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comp_profesional`
--
ALTER TABLE `comp_profesional`
  MODIFY `idCompProfesional` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comp_sociales`
--
ALTER TABLE `comp_sociales`
  MODIFY `idComp_Sociales` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `com_genericas`
--
ALTER TABLE `com_genericas`
  MODIFY `idCompGen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `convenio`
--
ALTER TABLE `convenio`
  MODIFY `idConvenio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `coordinador_titulacion`
--
ALTER TABLE `coordinador_titulacion`
  MODIFY `idCoordinadorTitulacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `idCreditos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `creditosectcs1`
--
ALTER TABLE `creditosectcs1`
  MODIFY `idCreditos1` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `creditosects2`
--
ALTER TABLE `creditosects2`
  MODIFY `idCreditos2` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `idEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `idEstudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `idEvaluacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evaluacion_rubrica`
--
ALTER TABLE `evaluacion_rubrica`
  MODIFY `idEvaluacionRubrica` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eventualidad`
--
ALTER TABLE `eventualidad`
  MODIFY `idEventualidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `extensiones`
--
ALTER TABLE `extensiones`
  MODIFY `idExtension` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  MODIFY `idIncidencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `informeconsolidado`
--
ALTER TABLE `informeconsolidado`
  MODIFY `idInformeCons` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `informe_aprobaciones`
--
ALTER TABLE `informe_aprobaciones`
  MODIFY `idInformeAprob` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `informe_bimestral`
--
ALTER TABLE `informe_bimestral`
  MODIFY `idInformeBimestral` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  MODIFY `idInstitucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `nivel_gp`
--
ALTER TABLE `nivel_gp`
  MODIFY `idNivelGP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `paralelos`
--
ALTER TABLE `paralelos`
  MODIFY `idParalelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `portafolio_academico`
--
ALTER TABLE `portafolio_academico`
  MODIFY `idPortafolio_Academico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `idProyectos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `proyecto_estudiante`
--
ALTER TABLE `proyecto_estudiante`
  MODIFY `idProyecto_Estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proyecto_plaza_nivel`
--
ALTER TABLE `proyecto_plaza_nivel`
  MODIFY `idPryNv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `rediseñocurricular`
--
ALTER TABLE `rediseñocurricular`
  MODIFY `idRediseño_Curricular` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rediseños`
--
ALTER TABLE `rediseños`
  MODIFY `idRediseños` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rediseño_curricular_1`
--
ALTER TABLE `rediseño_curricular_1`
  MODIFY `idRediseñoC1` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rediseño_curricular_2`
--
ALTER TABLE `rediseño_curricular_2`
  MODIFY `idRediseñoC2` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro_aistencias`
--
ALTER TABLE `registro_aistencias`
  MODIFY `idRegistroAistencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `rgeneral`
--
ALTER TABLE `rgeneral`
  MODIFY `idRGeneral` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rubricagp1`
--
ALTER TABLE `rubricagp1`
  MODIFY `idRubricaGP1` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rubricagp3`
--
ALTER TABLE `rubricagp3`
  MODIFY `idRubricaGP3` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `text_estudiante`
--
ALTER TABLE `text_estudiante`
  MODIFY `idTExt_Estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `tipo_gp`
--
ALTER TABLE `tipo_gp`
  MODIFY `idTipoGP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_incidencias`
--
ALTER TABLE `tipo_incidencias`
  MODIFY `idTipoIncidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tutoracademico_estudiante`
--
ALTER TABLE `tutoracademico_estudiante`
  MODIFY `idTAcEst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tutor_academico`
--
ALTER TABLE `tutor_academico`
  MODIFY `idTutorAcademico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tutor_externo`
--
ALTER TABLE `tutor_externo`
  MODIFY `idTutorExterno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividadesproyecto`
--
ALTER TABLE `actividadesproyecto`
  ADD CONSTRAINT `fk_ActividadesProyecto_Proyectos1` FOREIGN KEY (`fk_idProyectos`) REFERENCES `proyectos` (`idProyectos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `actividades_registro`
--
ALTER TABLE `actividades_registro`
  ADD CONSTRAINT `fk_Actividades_Registro_Registro_Aistencias1` FOREIGN KEY (`fk_idRegistroAistencias`) REFERENCES `registro_aistencias` (`idRegistroAistencias`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ciclos_nivelgp`
--
ALTER TABLE `ciclos_nivelgp`
  ADD CONSTRAINT `fk_Ciclos_NivelGP_Ciclos1` FOREIGN KEY (`fk_idCiclo`) REFERENCES `ciclos` (`idCiclo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Ciclos_NivelGP_NivelGP1` FOREIGN KEY (`fk_idNivelGP`) REFERENCES `nivel_gp` (`idNivelGP`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cl_ngp_paralelo`
--
ALTER TABLE `cl_ngp_paralelo`
  ADD CONSTRAINT `fk_Cl_NGP_Paralelo_Ciclos_NivelGP1` FOREIGN KEY (`fk_idCiclos_NivelGP`) REFERENCES `ciclos_nivelgp` (`idCiclos_NivelGP`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cl_NGP_Paralelo_Paralelos1` FOREIGN KEY (`fk_idParalelo`) REFERENCES `paralelos` (`idParalelo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `convenio`
--
ALTER TABLE `convenio`
  ADD CONSTRAINT `fk_Convenio_Coordinador_Titulacion1` FOREIGN KEY (`fk_idCoordinadorTitulacion`) REFERENCES `coordinador_titulacion` (`idCoordinadorTitulacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Convenio_Empresas1` FOREIGN KEY (`fk_idEmpresa_cnv`) REFERENCES `empresas` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `coordinador_titulacion`
--
ALTER TABLE `coordinador_titulacion`
  ADD CONSTRAINT `fk_Coordinador_Titulacion_Departamentos1` FOREIGN KEY (`fk_idDepartamento`) REFERENCES `departamentos` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Coordinador_Titulacion_Extensiones1` FOREIGN KEY (`fk_idExtension`) REFERENCES `extensiones` (`idExtension`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Coordinador_Titulacion_Usuarios1` FOREIGN KEY (`fk_idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD CONSTRAINT `fk_Creditos_CreditosECTCS11` FOREIGN KEY (`fk_idCreditos1`) REFERENCES `creditosectcs1` (`idCreditos1`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Creditos_CreditosECTS21` FOREIGN KEY (`fk_idCreditos2`) REFERENCES `creditosects2` (`idCreditos2`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `creditosectcs1`
--
ALTER TABLE `creditosectcs1`
  ADD CONSTRAINT `fk_CreditosECTCS1_Modalidades1` FOREIGN KEY (`fk_Modalidad`) REFERENCES `modalidades` (`idModalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `fk_Estudiantes_Ciclos1` FOREIGN KEY (`fk_idCiclo`) REFERENCES `ciclos` (`idCiclo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Estudiantes_NivelGP1` FOREIGN KEY (`fk_idNivelGP`) REFERENCES `nivel_gp` (`idNivelGP`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Estudiantes_Paralelos1` FOREIGN KEY (`fk_idParalelo`) REFERENCES `paralelos` (`idParalelo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Estudiantes_Usuarios1` FOREIGN KEY (`fk_idUsuario_Est`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD CONSTRAINT `fk_Evaluacion_Evaluacion_Rubrica1` FOREIGN KEY (`fk_idEvaluacion_Rubrica`) REFERENCES `evaluacion_rubrica` (`idEvaluacionRubrica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Evaluacion_Tutor_Externo1` FOREIGN KEY (`fk_idTutorExterno`) REFERENCES `tutor_externo` (`idTutorExterno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evaluacion_rubrica`
--
ALTER TABLE `evaluacion_rubrica`
  ADD CONSTRAINT `fk_Evaluacion_Rubrica_RubricaGP11` FOREIGN KEY (`fk_idRubricaGP1`) REFERENCES `rubricagp1` (`idRubricaGP1`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Evaluacion_Rubrica_RubricaGP21` FOREIGN KEY (`fk_idRubricaGP2`) REFERENCES `rubricagp2` (`idRubricaGP2`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Evaluacion_Rubrica_RubricaGP31` FOREIGN KEY (`fk_idRubricaGP3`) REFERENCES `rubricagp3` (`idRubricaGP3`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `eventualidad`
--
ALTER TABLE `eventualidad`
  ADD CONSTRAINT `fk_Eventualidad_Tutor_Externo1` FOREIGN KEY (`fk_idTutorExterno`) REFERENCES `tutor_externo` (`idTutorExterno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD CONSTRAINT `fk_Incidencias_Estudiantes1` FOREIGN KEY (`fk_idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Incidencias_TipoIncidencias1` FOREIGN KEY (`fk_idTipoIncidencia`) REFERENCES `tipo_incidencias` (`idTipoIncidencia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `informeconsolidado`
--
ALTER TABLE `informeconsolidado`
  ADD CONSTRAINT `fk_InformeConsolidado_TutorAcademico_Estudiante1` FOREIGN KEY (`fk_TutorAcademico_Estudiante_idTAcEst`) REFERENCES `tutoracademico_estudiante` (`idTAcEst`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `informe_aprobaciones`
--
ALTER TABLE `informe_aprobaciones`
  ADD CONSTRAINT `fk_Informe_Aprobaciones_Coordinador_Titulacion1` FOREIGN KEY (`fk_idCoordinadorTitulacion`) REFERENCES `coordinador_titulacion` (`idCoordinadorTitulacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Informe_Aprobaciones_TutorAcademico_Estudiante1` FOREIGN KEY (`fk_idTAcEst`) REFERENCES `tutoracademico_estudiante` (`idTAcEst`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `informe_bimestral`
--
ALTER TABLE `informe_bimestral`
  ADD CONSTRAINT `fk_InformeBimestral_TipoGP1` FOREIGN KEY (`fk_idTipoGP`) REFERENCES `tipo_gp` (`idTipoGP`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Informe_Bimestral_Estudiantes1` FOREIGN KEY (`fk_idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `portafolio_academico`
--
ALTER TABLE `portafolio_academico`
  ADD CONSTRAINT `fk_Portafolio_Academico_Evaluacion1` FOREIGN KEY (`fk_Evaluacion_idEvaluacion`) REFERENCES `evaluacion` (`idEvaluacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Portafolio_Academico_Informe_Bimestral1` FOREIGN KEY (`fk_idInformeBimestral`) REFERENCES `informe_bimestral` (`idInformeBimestral`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Portafolio_Academico_Registro_Aistencias1` FOREIGN KEY (`fk_Registro_Aistencias_idRegistroAistencias`) REFERENCES `registro_aistencias` (`idRegistroAistencias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Portafolio_Academico_TutorAcademico_Estudiante1` FOREIGN KEY (`fk_idTAcEst`) REFERENCES `tutoracademico_estudiante` (`idTAcEst`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `fk_Proyectos_Empresas1` FOREIGN KEY (`fk_idEmpresa`) REFERENCES `empresas` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Proyectos_Instituciones1` FOREIGN KEY (`fk_idInstitucion`) REFERENCES `instituciones` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tutor_Externo1` FOREIGN KEY (`fk_idTutorExterno`) REFERENCES `tutor_externo` (`idTutorExterno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyecto_estudiante`
--
ALTER TABLE `proyecto_estudiante`
  ADD CONSTRAINT `fk_Proyecto_Estudiante_Estudiantes1` FOREIGN KEY (`fk_idEstudiante_pe`) REFERENCES `estudiantes` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Proyecto_Estudiante_Proyectos1` FOREIGN KEY (`fk_idProyectos_pe`) REFERENCES `proyectos` (`idProyectos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyecto_plaza_nivel`
--
ALTER TABLE `proyecto_plaza_nivel`
  ADD CONSTRAINT `fk_nvgp_nv` FOREIGN KEY (`fk_nvgp_nv`) REFERENCES `nivel_gp` (`idNivelGP`),
  ADD CONSTRAINT `fk_pry_nv` FOREIGN KEY (`fk_pry_nv`) REFERENCES `proyectos` (`idProyectos`);

--
-- Filtros para la tabla `rediseñocurricular`
--
ALTER TABLE `rediseñocurricular`
  ADD CONSTRAINT `fk_RediseñoCurricular_Coordinador_Titulacion1` FOREIGN KEY (`fk_idCoordinadorTitulacion`) REFERENCES `coordinador_titulacion` (`idCoordinadorTitulacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_RediseñoCurricular_Creditos1` FOREIGN KEY (`fk_idCreditos`) REFERENCES `creditos` (`idCreditos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_RediseñoCurricular_Rediseños1` FOREIGN KEY (`fk_idRediseños`) REFERENCES `rediseños` (`idRediseños`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `rediseños`
--
ALTER TABLE `rediseños`
  ADD CONSTRAINT `fk_Rediseños_Rediseño_Curricular_11` FOREIGN KEY (`fk_idRediseñoC1`) REFERENCES `rediseño_curricular_1` (`idRediseñoC1`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Rediseños_Rediseño_Curricular_21` FOREIGN KEY (`fk_idRediseñoC2`) REFERENCES `rediseño_curricular_2` (`idRediseñoC2`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `rediseño_curricular_1`
--
ALTER TABLE `rediseño_curricular_1`
  ADD CONSTRAINT `fk_Rediseño_Curricular_1_Modalidades1` FOREIGN KEY (`fk_idModalidad`) REFERENCES `modalidades` (`idModalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `registro_aistencias`
--
ALTER TABLE `registro_aistencias`
  ADD CONSTRAINT `fk_Registro_Aistencias_Estudiantes1` FOREIGN KEY (`fk_idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `rubricagp2`
--
ALTER TABLE `rubricagp2`
  ADD CONSTRAINT `fk_RubricaGP2_Com_Genericas1` FOREIGN KEY (`fk_idCompGen`) REFERENCES `com_genericas` (`idCompGen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_RubricaGP2_Comp_Actitudinales1` FOREIGN KEY (`fk_idCompActitudinales`) REFERENCES `comp_actitudinales` (`idCompActitudinales`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_RubricaGP2_Comp_Profesional1` FOREIGN KEY (`fk_idCompProfesional`) REFERENCES `comp_profesional` (`idCompProfesional`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_RubricaGP2_Comp_Sociales1` FOREIGN KEY (`fk_idComp_Sociales`) REFERENCES `comp_sociales` (`idComp_Sociales`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_RubricaGP2_RGeneral1` FOREIGN KEY (`fk_idRGeneral`) REFERENCES `rgeneral` (`idRGeneral`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `text_estudiante`
--
ALTER TABLE `text_estudiante`
  ADD CONSTRAINT `fk_TExt_Estudiante_Estudiantes1` FOREIGN KEY (`fk_idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TExt_Estudiante_Tutor_Externo1` FOREIGN KEY (`fk_idTutorExterno`) REFERENCES `tutor_externo` (`idTutorExterno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tutoracademico_estudiante`
--
ALTER TABLE `tutoracademico_estudiante`
  ADD CONSTRAINT `fk_TutorAcademico_Estudiante_Estudiantes1` FOREIGN KEY (`fk_idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TutorAcademico_Estudiante_Tutor_Academico1` FOREIGN KEY (`fk_idTutorAcademico`) REFERENCES `tutor_academico` (`idTutorAcademico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tutor_academico`
--
ALTER TABLE `tutor_academico`
  ADD CONSTRAINT `fk_Tutor_Academico_Departamentos1` FOREIGN KEY (`fk_idDepartamento`) REFERENCES `departamentos` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tutor_Academico_Extensiones1` FOREIGN KEY (`fk_idExtension`) REFERENCES `extensiones` (`idExtension`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tutor_Academico_Usuarios1` FOREIGN KEY (`fk_idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tutor_externo`
--
ALTER TABLE `tutor_externo`
  ADD CONSTRAINT `fk_Tutor_Externo_Departamentos1` FOREIGN KEY (`fk_idDepartamento_tex`) REFERENCES `departamentos` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tutor_Externo_Extensiones1` FOREIGN KEY (`fk_idExtension_tex`) REFERENCES `extensiones` (`idExtension`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tutor_Externo_Usuarios1` FOREIGN KEY (`fk_idUsuario_tex`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
