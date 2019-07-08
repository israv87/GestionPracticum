-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2019 a las 03:42:29
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
(3, 'Diseño de solución', '2019-11-05', '2019-11-16', 60, 42, 0),
(4, 'Implementación', '2019-11-19', '2020-01-19', 40, 42, 0),
(5, ' Pruebas', '2020-01-21', '2020-01-31', 30, 42, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades_registro`
--

CREATE TABLE `actividades_registro` (
  `idActividades_Registro` int(11) NOT NULL,
  `Actividad` varchar(45) DEFAULT NULL,
  `Detalle` varchar(45) DEFAULT NULL,
  `Completado` int(11) DEFAULT 1,
  `fk_idRegistroAistencias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actividades_registro`
--

INSERT INTO `actividades_registro` (`idActividades_Registro`, `Actividad`, `Detalle`, `Completado`, `fk_idRegistroAistencias`) VALUES
(1, '1', '1', 1, 1);

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
  `fk_idEmpresa` int(11) NOT NULL,
  `fk_idCoordinadorTitulacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(2, 'CRT0001', 4, 9, 45);

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
(1, 'EMP0001', 'Kradak', 'Hugo Ramirez', 'TAW', 'hugo.ramirez@kradac.com', '099128773', ''),
(2, 'EMP0002', 'MINISTERIO DEL AMBIENTE', 'Oscar Fabricio Peralta Suing', 'TAW', 'oscar.peralta@ambiente.gob.ec', '2577125', '109');

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
  `Extension` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `extensiones`
--

INSERT INTO `extensiones` (`idExtension`, `Telefono`, `Extension`) VALUES
(1, '0737014', '2316'),
(2, '2585700', '304'),
(3, '0737014', '2525'),
(4, '0737014', '2526'),
(5, '0737014', '2231'),
(6, '0737014', '2316'),
(7, '0737014', '2510'),
(8, '0737014', '2523'),
(9, '0737014', '2522'),
(10, '0737014', ' 251'),
(11, '0737014', '2787'),
(12, '0737014', '2531'),
(13, '0737014', ' '),
(14, '0737014', '2530'),
(15, '0737014', '2529'),
(16, '0737014', '2528'),
(17, '0737014', '2662'),
(18, '0737014', '3600'),
(19, '0737014', '2313'),
(20, '0737014', '2533'),
(21, '0737014', '2532'),
(22, '0737014', '2674'),
(23, '0737014', '2528');

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
  `Email` varchar(45) NOT NULL,
  `NombreProyecto` varchar(255) DEFAULT NULL,
  `Plazas` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`idProyectos`, `CodProyecto`, `fk_idInstitucion`, `fk_idEmpresa`, `fk_idTutorExterno`, `Email`, `NombreProyecto`, `Plazas`) VALUES
(1, 'PRO0001', 1, 1, 1, 'miloaiza@utpl.edu.ec', 'Proyecto ASCENDERE', '3'),
(2, 'PRO0002', 2, 1, 2, 'gerencia@ecolac.com.ec', '1. software para que el personal de la UTPL pueda hacer sus pedidos de producto a ECOLAC. 2 Necesitamos apoyo para desarrollar la pagina web de la institución  ', '2'),
(3, 'PRO0003', 1, 1, 3, 'pmvaldiviezo@utpl.edu.ec', 'Implementación de algoritmos de aprendizaje automático en python', '1'),
(4, 'PRO0004', 1, 1, 4, 'jmcordero@utpl.edu.ec', 'APP móvil para el  posicionamiento en interiores que permita mejorar la orientación mediante el uso de dispositivos beacon.', '2'),
(5, 'PRO0005', 1, 1, 5, 'cpsarango@utpl.edu.ec', 'Colocar un manual interactivo en el aplicativo de virtopsia', '1'),
(6, 'PRO0006', 1, 1, 6, 'mpsamaniego@utpl.edu.ec', 'Explotación de Datos Técnicos de Los Sistemas UTPL', '2'),
(7, 'PRO0007', 1, 1, 7, 'aacabrera@utpl.edu.ec', 'Diseño y construcción de sistemas respaldos para la toma de decisiones estratégicas u operativas en el sector industrial', '2'),
(8, 'PRO0008', 1, 1, 5, 'cpsarango@utpl.edu.ec', 'Mundos Virtuales', '2'),
(9, 'PRO0009', 1, 1, 9, 'srbenitez@utpl.edu.ec', 'RECITEC – Gestión de residuos computacionales', '5'),
(10, 'PRO0010', 1, 1, 10, 'fmsoto@utpl.edu.ec', 'Automatización de la gestión del prácticum.\nProyecto piloto: Titulación de Sistemas Informáticos y Computación', '3'),
(11, 'PRO0011', 1, 1, 11, 'jrcastro@utpl.edu.ec', 'Minería de datos en procesos industriales', '2'),
(12, 'PRO0012', 1, 1, 12, 'cpsarango@utpl.edu.ec - jbsamaniego@utpl.edu.', 'Aplicativo de realidad aumentada para turismo ', '2'),
(13, 'PRO0013', 1, 1, 13, 'aploaizax@utpl.edu.ec', 'Página web Planificación y desarrollo del currículo ', '2'),
(14, 'PRO0014', 1, 1, 19, 'rlramirez@utpl.edu.ec', 'Células culturales acoplado al proyecto de fototeca para la digitalización de los contenidos. Desarrollo de software', '4'),
(15, 'PRO0015', 1, 1, 19, 'rlramirez@utpl.edu.ec', 'Investigación, desarrollo e implementación de una herramienta de chat para la modalidad a distancia de la UTPL que mejore la enseñanza aprendizaje entre el docente y el estudiante. ', '4'),
(16, 'PRO0016', 1, 1, 19, 'rlramirez@utpl.edu.ec', 'Desarrollo de una aplicación interactiva entre profesor - alumno para el uso de dispositivos móviles en el aula.', '2'),
(17, 'PRO0017', 1, 1, 10, 'fmsoto@utpl.edu.ec', 'Automatización de los procesos del área técnica', '3'),
(18, 'PRO0018', 1, 1, 14, 'aasantos@utpl.edu.ec', 'Diseñar un modelo para medir el impacto de la vinculación UTPL\n', '2'),
(19, 'PRO0019', 1, 1, 15, 'cacalderon@utpl.edu.ec', 'Diseño y desarrollo de un portal web para la difusión de los resultados del proyecto de investigación “Axes”, como un medio para establecer un canal de comunicación divulgativo entre el Grupo de Investigación “ConSysUTPL” y la Sociedad.', '2'),
(20, 'PRO0020', 1, 1, 15, 'cacalderon@utpl.edu.ec', 'Desarrollo de una aplicación móvil Android, que gestione y controle un algoritmo de aprendizaje automático aplicado a imágenes capturadas por el Smartphone.\n(Miniaturización del prototipo del proyecto Axes)', '2'),
(21, 'PRO0021', 1, 1, 16, 'acgonzalez@utpl.edu.ec', 'Reconocimiento de entidades en documentos resultantes de procesos OCR, aplicado a casos de convalidación de estudios', '2'),
(22, 'PRO0022', 1, 1, 6, 'acgonzalez@utpl.edu.ec', 'Prototipo de anaquel inteligente para la gestión de libros de la Biblioteca UTPL', '3'),
(23, 'PRO0023', 1, 1, 17, 'bgjaramillo@utpl.edu.ec', 'Sistema de gestión automática de la infraestructura de networking de la UTPL mediante Cisco Prime', '2'),
(24, 'PRO0024', 3, 1, 18, 'hugo.ramirez@kradac.com', 'Desarrollo web, movil y QA en aplicaciones internas de la empresa', '11'),
(25, 'PRO0025', 1, 1, 19, 'rlramirez@utpl.edu.ec', 'Levantamiento de informacion de los sensores existentes en la UTPL', '2'),
(26, 'PRO0026', 4, 2, 20, 'oscar.peralta@ambiente.gob.ec', 'App móvil para el Parque Nacional Podocarpus', '2'),
(27, 'PRO0027', 1, 1, 21, 'gtenesaca@utpl.edu.ec', 'Análisis de algoritmos de estimación de resultados para Big Data con datos semánticos', '2'),
(28, 'PRO0028', 1, 1, 22, 'jachicaiza@utpl.edu.ec', 'TIC para la promoción de habilidades de pensamiento computacional y aprendizaje autónomo', '2'),
(29, 'PRO0029', 1, 1, 27, 'rlramirez@utpl.edu.ec\njcmorocho@utpl.edu.ec', 'Proyecto de servicio comunitario escuela \"Calandria\"\"-Vilcabamba\"', '8'),
(30, 'PRO0030', 1, 1, 27, 'rlramirez@utpl.edu.ec\njcmorocho@utpl.edu.ec', 'Proyecto de educación vial', '4'),
(31, 'PRO0031', 1, 1, 27, 'rlramirez@utpl.edu.ec\njcmorocho@utpl.edu.ec', 'Proyecto aula Móvil', '2'),
(32, 'PRO0032', 1, 1, 23, 'nopiedra@utpl.edu.ec', 'Base de conocimiento para el idioma Quichua', '3'),
(33, 'PRO0033', 1, 1, 24, 'aeromero2@utpl.edu.ec', 'Herramienta para evaluación de calidad de metadatos en repositorios', '1'),
(34, 'PRO0034', 1, 1, 23, 'nopiedra@utpl.edu.ec', 'Interfaz de comunicación para utilización de datos abiertos utilizando grafos de conocimiento', '1'),
(35, 'PRO0035', 1, 1, 21, 'gtenesaca@utpl.edu.ec;\nmbmora@utpl.edu.ec', 'Predicción de datos analizados en Apache Pig para estimaciones de resultados', '2'),
(36, 'PRO0036', 1, 1, 26, 'mccabrerax@utpl.edu.ec\niecadme@utpl.edu.ec', 'Desarrollo de componentes como complemento a plataformas de EdX ', '2'),
(37, 'PRO0037', 1, 1, 27, 'jcmorocho@utpl.edu.ec', 'Consultas a base de datos por voz', '1'),
(38, 'PRO0038', 1, 1, 25, 'fmsoto@utpl.edu.ec', 'Proyecto de Innovación - Casa Abierta Itinerante', '3'),
(39, 'PRO0039', 1, 1, 28, 'lrbarba@utpl.edu.ec', 'Clasificador-video par actores de la movilidad como alternativa a conteos volumétricos manuales', '2'),
(40, 'PRO0040', 1, 1, 24, 'aeromero2@utpl.edu.ec', 'Evaluación de herramientas de learning analitycs en LMS open source', '1'),
(41, 'PRO0041', 1, 1, 24, 'aeromero2@utpl.edu.ec', 'Levantamiento de información de plataformas del movimiento de recursos abiertos', '1'),
(42, 'PRO0042', 1, 1, 25, 'fmsoto@utpl.edu.ec', 'Gestion del Practicum', '3');

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
  `HoraEntrada` datetime DEFAULT NULL,
  `HoraSalida` datetime DEFAULT NULL,
  `Observacion` varchar(50) DEFAULT NULL,
  `Validacion` int(11) DEFAULT NULL,
  `Calificacion` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registro_aistencias`
--

INSERT INTO `registro_aistencias` (`idRegistroAistencias`, `CodRegistro`, `fk_idEstudiante`, `Titulo`, `Fecha`, `HoraEntrada`, `HoraSalida`, `Observacion`, `Validacion`, `Calificacion`) VALUES
(1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(2, 'Practicum');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_incidencias`
--

CREATE TABLE `tipo_incidencias` (
  `idTipoIncidencia` int(11) NOT NULL,
  `TipoIncidencia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `fk_idDepartamento` int(11) NOT NULL,
  `fk_idExtension` int(11) NOT NULL,
  `fk_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tutor_externo`
--

INSERT INTO `tutor_externo` (`idTutorExterno`, `CodTExt`, `fk_idDepartamento`, `fk_idExtension`, `fk_idUsuario`) VALUES
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
  ADD KEY `fk_Convenio_Empresas1` (`fk_idEmpresa`),
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
  ADD PRIMARY KEY (`idRegistroAistencias`),
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
  ADD KEY `fk_Tutor_Externo_Departamentos1` (`fk_idDepartamento`),
  ADD KEY `fk_Tutor_Externo_Extensiones1` (`fk_idExtension`),
  ADD KEY `fk_Tutor_Externo_Usuarios1` (`fk_idUsuario`);

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
  MODIFY `idActividades_Registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `idConvenio` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `idEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `idRegistroAistencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `idTExt_Estudiante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_gp`
--
ALTER TABLE `tipo_gp`
  MODIFY `idTipoGP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_incidencias`
--
ALTER TABLE `tipo_incidencias`
  MODIFY `idTipoIncidencia` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `fk_Convenio_Empresas1` FOREIGN KEY (`fk_idEmpresa`) REFERENCES `empresas` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fk_Tutor_Externo_Departamentos1` FOREIGN KEY (`fk_idDepartamento`) REFERENCES `departamentos` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tutor_Externo_Extensiones1` FOREIGN KEY (`fk_idExtension`) REFERENCES `extensiones` (`idExtension`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tutor_Externo_Usuarios1` FOREIGN KEY (`fk_idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
