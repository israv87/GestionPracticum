-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2020 a las 07:31:33
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `idProyectos` int(11) NOT NULL,
  `Actividad` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `Porcentaje` int(11) DEFAULT NULL,
  `Completado` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades_registro`
--

CREATE TABLE `actividades_registro` (
  `idActividades_Registro` int(11) NOT NULL,
  `Actividad` varchar(45) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `HEntrada` time DEFAULT NULL,
  `HSalida` time DEFAULT NULL,
  `HorasTrabajadas` int(11) DEFAULT NULL,
  `idRegistroAistencias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `idArchivo` int(11) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_proyecto`
--

CREATE TABLE `asignacion_proyecto` (
  `idAsignacion` int(11) NOT NULL,
  `idProyectos` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comp_actitudinales`
--

CREATE TABLE `comp_actitudinales` (
  `idCompAct` int(11) NOT NULL,
  `confianza` int(11) DEFAULT NULL,
  `profesionalismo` int(11) DEFAULT NULL,
  `asumeCargo` int(11) DEFAULT NULL,
  `esfuerzo` int(11) DEFAULT NULL,
  `integridad` int(11) DEFAULT NULL,
  `puntaje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `idEmpresa` int(11) NOT NULL,
  `Convenio` varchar(100) DEFAULT NULL,
  `Estado` varchar(25) DEFAULT NULL,
  `Detalle` varchar(100) DEFAULT NULL,
  `Vigencia_desde` date DEFAULT NULL,
  `vigencia_hasta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `convenio`
--

INSERT INTO `convenio` (`idConvenio`, `idEmpresa`, `Convenio`, `Estado`, `Detalle`, `Vigencia_desde`, `vigencia_hasta`) VALUES
(1, 1, 'Ninguno', 'Vigente', 'Ninguno', '0000-00-00', NULL),
(2, 2, 'UTPL-ANT', 'Vigente', 'Ninguno', '0000-00-00', '0000-00-00'),
(3, 3, 'UTPL-NODO', 'Vigente', 'Ninguno', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencias`
--

CREATE TABLE `dependencias` (
  `idDependencia` int(11) NOT NULL,
  `Area_utpl` varchar(15) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dependencias`
--

INSERT INTO `dependencias` (`idDependencia`, `Area_utpl`, `departamento`) VALUES
(1, 'Técnica', 'Departamento de Ciencias de la Computación y Electrónica'),
(2, 'Técnica', 'Titulación de Sistemas Informáticos y computación'),
(3, 'Técnica', 'Laboratorio de Ciencia de Datos'),
(4, 'Técnica', 'Asociación de Docentes UTPL'),
(5, 'Técnica', 'NODOLAB'),
(6, 'Técnica', 'Observatorio de Sociedad de la información y las Telecomuncaciones OBSIYT'),
(7, 'Técnica', 'Dirección de Tecnologías para la Educación'),
(8, 'Técnica', 'CONSYS (Control, Automation and Intelligent Systems Research Group)'),
(9, 'Técnica', 'DIRECCIÓN DE INNOVACIÓN, FORMACIÓN Y EVALUACIÓN DOCENTE'),
(10, 'Técnica', 'Vicerrectorado Académico'),
(11, 'Técnica', 'Dirección de Tecnologías para la Educación - Videoconferencias'),
(12, 'Técnica', 'DCCE - SDTAW'),
(13, 'Técnica', 'DCCE - SDIA'),
(14, 'Técnica', 'Inteligencia Artificial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ev`
--

CREATE TABLE `detalle_ev` (
  `idDetalle` int(11) NOT NULL,
  `idEvaluacion` int(11) NOT NULL,
  `idRubricaGP1` int(11) NOT NULL,
  `idRubricaGP2` int(11) NOT NULL,
  `idRubricaGP3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `idEmpresa` int(11) NOT NULL,
  `nombreEmpresa` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `areaEsp` varchar(255) DEFAULT NULL,
  `paginaWeb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`idEmpresa`, `nombreEmpresa`, `direccion`, `correo`, `telefono`, `tipo`, `areaEsp`, `paginaWeb`) VALUES
(1, 'UTPL', 'San Cayetano Alto, Calle París, Loja', NULL, '073701444', 'Grande', 'Educación', 'www.utpl.edu.ec'),
(2, 'ANT', 'AV. DE LOS PALTAS Y MANUEL AGUSTÍN AGUIRRE CIUDADELA LOS OPERADORES, PISO 1.', 'rlramirez@utpl.edu.ec', '072110404', 'Grande', 'Tránsito', 'www.ant.gob.ec'),
(3, 'NODO', 'Los Geranios, Centro de Negocios QUOHUB,Loja - Ecuador', ' nodolabs@electritelecom.com', '0980590333', 'PYME', 'Robótica', 'nodo.com.ec');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entregables`
--

CREATE TABLE `entregables` (
  `idEntregable` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `idArchivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `idEstudiante` int(11) NOT NULL,
  `cedula` varchar(10) DEFAULT NULL,
  `primerNombre` varchar(50) DEFAULT NULL,
  `segundoNombre` varchar(50) DEFAULT NULL,
  `apellidoPaterno` varchar(50) DEFAULT NULL,
  `apellidoMaterno` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `nivelGp` varchar(255) DEFAULT NULL,
  `paralelo` varchar(1) DEFAULT NULL,
  `ciclo` int(11) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`idEstudiante`, `cedula`, `primerNombre`, `segundoNombre`, `apellidoPaterno`, `apellidoMaterno`, `email`, `email2`, `nivelGp`, `paralelo`, `ciclo`, `idUsuario`) VALUES
(1, '1105181083', 'DAVID', 'ERNESTO', 'PARDO', 'CUENCA', 'depardo3@utpl.edu.ec', 'pardodavid10@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 1),
(2, '1718402991', 'HEIDY', 'XIMENA', 'PUCHAICELA', 'REMACHE', 'hxpuchaicela@utpl.edu.ec', 'hxime16@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 2),
(3, '1950029403', 'JHONATHAN', 'JOSE', 'RAMIREZ', 'CHILLOGALLI', 'jjramirez8@utpl.edu.ec', 'jonatanramirezx_123@hotmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 3),
(4, '1900734151', 'CRISTIAN', 'JOSE', 'MACAS', 'PINEDA', 'cjmacas@utpl.edu.ec', 'cristianmacas93@hotmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 4),
(5, '1106014929', 'CINTHYA', 'ALEXANDRA', 'MEDINA', 'CABRERA', 'camedina12@utpl.edu.ec', 'cinthyamc3000@gmail.com', 'FORMACION EN ACADEMIAS GP 3.1', 'A', 7, 5),
(6, '1150088050', 'JORGE', 'ENRIQUE', 'SARMIENTO', 'ORDONEZ', 'jesarmiento3@utpl.edu.ec', 'jorgitosar2000@gmail.com', 'PRACTICA EN CITTES GP 2.1', 'A', 5, 6),
(7, '1150084745', 'ANTSE', 'SANTIAGO', 'CACERES', 'VEGA', 'ascaceres2@utpl.edu.ec', 'antsecv13@hotmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 7),
(8, '1900873124', 'MARJAN', 'ALDAIR', 'CELI', 'SALINAS', 'maceli7@utpl.edu.ec', 'marjamazliga@gmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 8),
(9, '1104471733', 'RODRIGO', 'JAVIER', 'ESTRADA', 'ALEJANDRO', 'rjestrada2@utpl.edu.ec', 'javier261997@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 9),
(10, '1104811367', 'JASON', 'JOSE', 'CASTILLO', 'PULLA', 'jjcastillo12@utpl.edu.ec', 'jasson_72@hotmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 10),
(11, '1150100517', 'FRANZ', 'DAVID', 'BURNEO', 'MONTEROS', 'fdburneo@utpl.edu.ec', 'franzdavidburneo@gmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 11),
(12, '1150369872', 'JOSE', 'LUIS', 'URDIALES', 'CUENCA', 'jlurdiales1@utpl.edu.ec', 'jose-urdiales@hotmail.com', 'PRACTICA EN CITTES GP 2.1', 'A', 5, 12),
(13, '1900849124', 'PAUL', 'ENRIQUE', 'RAMON', 'SUQUILANDA', 'peramon@utpl.edu.ec', 'paul98-18@hotmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 13),
(14, '1105795569', 'PAUL', 'XAVIER', 'SANCHEZ', 'VALVERDE', 'pxsanchez2@utpl.edu.ec', 'paxasaval1003@gmail.com', 'PRACTICA EN CITTES GP 2.1', 'A', 5, 14),
(15, '1726000027', 'EDUARDO', 'ANDRES', 'RIERA', 'TAPIA', 'eariera1@utpl.edu.ec', 'eduardorieratapia@gmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 15),
(16, '1150033494', 'ENRIQUE', 'ALEJANDRO', 'FUERTES', 'CEVALLOS', 'eafuertes1@utpl.edu.ec', 'alejofuce@gmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 16),
(17, '1105369340', 'OSWALDO', 'DANILO', 'MENDOZA', 'CAPA', 'odmendoza@utpl.edu.ec', 'danilo.mendozacapa@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 17),
(18, '1105817306', 'JIMMY', 'GABRIEL', 'GOMEZ', 'LOZANO', 'jggomez8@utpl.edu.ec', 'jimmygomez1998@hotmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 18),
(19, '1104724545', 'JUAN', 'PABLO', 'PACHAR', 'VINAN', 'jppachar@utpl.edu.ec', 'jpablopachar1993@gmail.com', 'FORMACION EN ACADEMIAS GP 3.1', 'A', 7, 19),
(20, '1105137234', 'CARLOS', 'HOMERO', 'JUCA', 'VITERI', 'chjuca@utpl.edu.ec', 'junio55.jj@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 20),
(21, '1105852428', 'VICTOR', 'HUGO', 'MARTINEZ', 'GONZAGA', 'vhmartinez5@utpl.edu.ec', 'victormartinezg1998@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 21),
(22, '1105947426', 'EDWIN', 'ANDRES', 'RUIZ', 'BACULIMA', 'earuiz9@utpl.edu.ec', '2695646andres@gmail.com', 'PRACTICA EN CITTES GP 2.1', 'A', 5, 22),
(23, '1104122021', 'JEFFERSON', 'ANDRES', 'NUNEZ', 'COFRE', 'janunez8@utpl.edu.ec', 'jecfmaatrixxx@gmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 23),
(24, '1105666034', 'JHANDRY', 'DAVID', 'LOPEZ', 'MONTANO', 'jdlopez12@utpl.edu.ec', 'jhandry13@hotmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 24),
(25, '1105723991', 'GILSON', 'JOEL', 'SALAS', 'TORRES', 'gjsalas1@utpl.edu.ec', 'gilson_joel@hotmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 25),
(26, '1104113889', 'BRUNO', 'ALEXANDER', 'ESPARZA', 'CARCHI', 'baesparza@utpl.edu.ec', 'andre_hurt@hotmail.es', 'FORMACION EN ACADEMIAS GP 3.1', 'A', 7, 26),
(27, '1104745540', 'DAVID', 'ALEJANDRO', 'BURNEO', 'VALENCIA', 'daburneo1@utpl.edu.ec', 'daburneo1@utpl.edu.ec', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 27),
(28, '1105760647', 'CHRISTIAN', 'FERNANDO', 'JIMBO', 'GRANDA', 'cfjimbo@utpl.edu.ec', 'c_fjimbo@hotmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 28),
(29, '1900892140', 'JOSE', 'ARMANDO', 'CALVA', 'MACAS', 'jacalva4@utpl.edu.ec', 'josearmando192@hotmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 29),
(30, '1104602576', 'JORDY', 'ALEXANDER', 'CELI', 'MANCHENO', 'jaceli11@utpl.edu.ec', 'alexanderceli96@gmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 30),
(31, '1104048713', 'JONATHAN', 'ANDRES', 'ROSERO', 'SOTO', 'jarosero7@utpl.edu.ec', 'jars9605@hotmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 31),
(32, '1103761266', 'NORMAN', 'ANDRES', 'ROMAN', 'BUSTOS', 'naroman@utpl.edu.ec', 'andresrombus@gmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 32),
(33, '1105030843', 'PABLO', 'FERNANDO', 'PICON', 'AYORA', 'pfpicon@utpl.edu.ec', 'pablofercho99@outlook.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 33),
(34, '1105707341', 'JEFFERSON', 'HERNAN', 'SARANGO', 'VEGA', 'jhsarango3@utpl.edu.ec', 'jeffersonk132008@hotmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 34),
(35, '1105975062', 'MARIO', 'DAVID', 'VALAREZO', 'MINGA', 'mdvalarezo2@utpl.edu.ec', 'madx1029@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 35),
(36, '1104690415', 'ROOSEVELT', 'JAVIER', 'JARAMILLO', 'ARIAS', 'rjjaramillo1@utpl.edu.ec', 'rusby09@hotmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 36),
(37, '1104752140', 'JIMMY', 'ANDRESS', 'PORTILLA', 'GUAMAN', 'japortilla1@utpl.edu.ec', 'japortilla13an@hotmail.com', 'PRACTICA EN CITTES GP 2.1', 'A', 5, 37),
(38, '1104045537', 'ACCEL', 'DANIEL', 'QUINTEROS', 'SANCHEZ', 'adquinteros1@utpl.edu.ec', 'acceldaniel1997@yahoo.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 38),
(39, '1900814946', 'ANDERSON', 'GIARDEL', 'AGUIRRE', 'ESPINOZA', 'agaguirre5@utpl.edu.ec', 'anderstar46@gmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 39),
(40, '1105229189', 'LUIS', 'DANIEL', 'ERAZO', 'ARMIJOS', 'lderazo1@utpl.edu.ec', 'luiyi.darmijos@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 40),
(41, '1105721854', 'MAURICIO', 'ANDRES', 'SARANGO', 'IDROVO', 'masarango5@utpl.edu.ec', 'mauro_021094@hotmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 41),
(42, '1105874448', 'DAVID', 'ALEJANDRO', 'PAREDES', 'SINCHIRI', 'daparedes7@utpl.edu.ec', 'davizparedez@hotmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 42),
(43, '1104844616', 'LUIS', 'ANGEL', 'CELI', 'MONTANO', 'laceli7@utpl.edu.ec', 'luisceli25@gmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 43),
(44, '1105799298', 'JOSE', 'BENHUR', 'ROMERO', 'SALCEDO', 'jbromero3@utpl.edu.ec', 'jobenromsal@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 44),
(45, '1105094021', 'JEAN', 'PIERRE', 'CHUQUIMARCA', 'FLORES', 'jpchuquimarca@utpl.edu.ec', 'jeanchuquimarca12@gmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 45),
(46, '1105435042', 'JUAN', 'ANDRES', 'RAMON', 'ZHIGUI', 'jaramon8@utpl.edu.ec', 'jarz_1998@yahoo.es', 'FORMACION EN ACADEMIAS GP 3.1', 'A', 7, 46),
(47, '1150169041', 'JOSUE', 'SEBASTIAN', 'ROJAS', 'GARRIDO', 'jsrojas4@utpl.edu.ec', 'jsebastianrojas19@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 47),
(48, '1106060658', 'JUAN', 'FRANCISCO', 'CEVALLOS', 'VALDIVIESO', 'jfcevallos8@utpl.edu.ec', 'cevallosjuanfrancisco@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 48),
(49, '1900797141', 'ISRAEL', 'ALEJANDRO', 'ORTIZ', 'AGILA', 'iaortiz@utpl.edu.ec', 'isralejo21@hotmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 49),
(50, '1105182479', 'JEFFERSON', 'MARCELO', 'GONZALEZ', 'GONZALES', 'jmgonzalez6@utpl.edu.ec', 'marcelolatino.mx@gmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 50),
(51, '1106057985', 'ANDRES', 'EMANUEL', 'PALACIOS', 'ORELLANA', 'aepalacios7@utpl.edu.ec', 'andrespala2000@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 51),
(52, '1105668840', 'JHON', 'JOSUE', 'CALLE', 'CASTILLO', 'jjcalle3@utpl.edu.ec', 'draelizacas@gmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 52),
(53, '1104566607', 'FRANKLIN', 'LEONEL', 'VELEZ', 'JIMENEZ', 'flvelez@utpl.edu.ec', 'velez011@hotmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 53),
(54, '1105583064', 'DENNIS', 'LEONARDO', 'JIMENEZ', 'CHALAN', 'dljimenez2@utpl.edu.ec', 'dennisleonardojimenezdh@gmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 54),
(55, '1105834079', 'JUAN', 'JOSE', 'YANANGOMEZ', 'SALINAS', 'jjyanangomez@utpl.edu.ec', 'juanyasa_04@hotmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 55),
(56, '1105702474', 'JUNIOR', 'STALIN', 'MAZA', 'FAICAN', 'jsmaza3@utpl.edu.ec', 'juniormaza69@gmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 56),
(57, '1104130024', 'KEVIN', 'RAUL', 'CONDOLO', 'JIMENEZ', 'krcondolo@utpl.edu.ec', 'kevincondolo@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 57),
(58, '1105611311', 'RENATO', 'JOHAO', 'BALCAZAR', 'LOAIZA', 'rjbalcazar@utpl.edu.ec', 'renatojbl99@gmail.com', 'FORMACION EN ACADEMIAS GP 3.1', 'A', 7, 58),
(59, '1105800427', 'BRYAN', 'PAUL', 'PILCO', 'MUNOZ', 'bppilco1@utpl.edu.ec', 'bryan.pilco@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 59),
(60, '1106040551', 'JAIRO', 'SANTIAGO', 'GONZALEZ', 'COSTA', 'jsgonzalez13@utpl.edu.ec', 'jairo99gc@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 60),
(61, '706315256', 'CARLOS', 'ANDRES', 'VARGAS', 'RAMIREZ', 'cavargas10@utpl.edu.ec', 'carvarjr_95@hotmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 61),
(62, '1105840241', 'ALEXIS', 'FABIAN', 'MONTOYA', 'PARRA', 'afmontoya2@utpl.edu.ec', 'alexisxxx95@gmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 62),
(63, '104699053', 'MIGUEL', 'ANGEL', 'MOROCHO', 'MOROCHO', 'mamorocho15@utpl.edu.ec', 'morochomiguel56@gmail.com', 'PRACTICA EN CITTES GP 2.1', 'A', 5, 63),
(64, '1104685811', 'LENIN', 'PAUL', 'SANCHEZ', 'CAPA', 'lpsanchez6@utpl.edu.ec', 'lensan777@gmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 64),
(65, '1104813173', 'CARLOS', 'ALFREDO', 'CARAGUAY', 'AGUINSACA', 'cacaraguay1@utpl.edu.ec', 'car.94@hotmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 65),
(66, '1150671632', 'JORGE', 'ALCIVAR', 'HURTADO', 'DUARTE', 'jahurtado11@utpl.edu.ec', 'jahurtadod@outlook.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 66),
(67, '1104960446', 'LUIS', 'EDUARDO', 'DIAZ', 'AREVALO', 'lediaz5@utpl.edu.ec', 'www.luisdiaz@gmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 67),
(68, '1104113889', 'BRUNO', 'ALEXANDER', 'ESPARZA', 'CARCHI', 'baesparza@utpl.edu.ec', 'andre_hurt@hotmail.es', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 68),
(69, '1104999535', 'CARLOS', 'ANDRES', 'CASTILLO', 'GIRON', 'cacastillo19@utpl.edu.ec', 'carloscastillo090916@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 69),
(70, '1105846958', 'PABLO', 'ANDRES', 'SIGUENZA', 'OCHOA', 'pasiguenza@utpl.edu.ec', 'pabloxx1998@gmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 70),
(71, '106294242', 'FRANKLIN', 'OLIVER', 'ESPINOZA', 'TITUANA', 'foespinoza@utpl.edu.ec', 'frankiuversapbe7@gmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 71),
(72, '1104984693', 'MARIO', 'ISAAC', 'CALVA', 'ABAD', 'micalva@utpl.edu.ec', 'maiscal1999@gmail.com', 'FORMACION EN ACADEMIAS GP 1.3', 'A', 4, 72),
(73, '1104280977', 'EDUARDO', 'FRANCISCO', 'SARANGO', 'AJILA', 'efsaraango@utpl.edu.ec', 'efas_24_69@hotmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 73),
(74, '1105177818', 'JOSE', 'MELKISEDEH', 'ABAD', 'TROYA', 'jmabad2@utpl.edu.ec', 'jmabad2@utpl.edu.ec', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 74),
(75, '1719626754', 'LUIS', 'ALFREDO', 'JARAMILLO', 'UDAY', 'lajaramillo5@utpl.edu.ec', 'jaramilloluis66@gmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 75),
(76, '1105179103', 'GERSON', 'MOISES', 'SANTOS', 'SALAZAR', 'gmsantos2@utpl.edu.ec', 'gersantos1234@gmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 76),
(77, '1104014699', 'NELSON', 'RICARDO', 'PALTIN', 'CABRERA', 'nrpaltin@utpl.edu.ec', 'nelsonricardopaltincabrera@gmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 77),
(78, '1150027504', 'CECILIA', 'ELIZABETH', 'SANCHEZ', 'MACAS', 'cesanchez11@utpl.edu.ec', 'cecielimacas2910@gmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 78),
(79, '1105048779', 'RAMIRO', 'ISRAEL', 'VIVANCO', 'GUALAN', 'rivivanco@utpl.edu.ec', 'halo_ramiro@hotmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 79),
(80, '1150296877', 'JOSEPH', 'RAFAEL', 'MONTENEGRO', 'ORDONEZ', 'jrmontenegro1@utpl.edu.ec', 'rafaelmon14@gmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 80),
(81, '1105587388', 'KELVIN', 'RICARDO', 'ARROBO', 'CASTILLO', 'krarrobo1@utpl.edu.ec', 'ricardoarrobo@hotmail.com', 'PRACTICAS EN CITTES GP 3.2', 'A', 8, 81),
(82, '1802643864', 'CESAR', 'VINICIO', 'SARABIA', 'RUEDA', 'cvsarabia@utpl.edu.ec', 'pyv2ec@hotmail.com', 'PRACTICA EN CITTES GP 2.2', 'A', 6, 82),
(83, '1105002867', 'DANIEL', 'ALEJANDRO', 'ULLOA', 'MARQUEZ', 'daulloa2@utpl.edu.ec', 'danielulloam@gmail.com', 'FORMACION EN ACADEMIAS GP 3.1', 'A', 7, 83),
(84, '1105148959', 'JOSE', 'LUIS', 'DIAZ', 'GONZALEZ', 'jldiaz4@utpl.edu.ec', 'josethp1@hotmail.com', 'FORMACION EN ACADEMIAS GP 3.1', 'A', 7, 84);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `idEvaluacion` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `bimestre` int(11) DEFAULT NULL,
  `idEstudiante` int(11) NOT NULL,
  `idTutorExterno` int(11) NOT NULL,
  `calificacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventualidades`
--

CREATE TABLE `eventualidades` (
  `idEventualidad` int(11) NOT NULL,
  `CodIncidencia` varchar(7) DEFAULT NULL,
  `Titulo` varchar(45) DEFAULT NULL,
  `Lugar` varchar(100) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Detalle` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `idArchivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_estudiantes`
--

CREATE TABLE `lista_estudiantes` (
  `idLista` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL,
  `idTutorAcademico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portafolio_academico`
--

CREATE TABLE `portafolio_academico` (
  `idPortafolio` int(11) NOT NULL,
  `idTutorAcademico` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `Observacion` varchar(255) DEFAULT NULL,
  `estudiantes_idEstudiante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `idProyectos` int(11) NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  `nombreProyecto` varchar(255) DEFAULT NULL,
  `idDependencia` int(11) NOT NULL,
  `idTutorExterno` int(11) NOT NULL,
  `plazasTotales` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`idProyectos`, `idEmpresa`, `nombreProyecto`, `idDependencia`, `idTutorExterno`, `plazasTotales`) VALUES
(1, 2, 'Gestión de datos y soluciones informáticas con la Agencia Nacional de Transito Loja', 1, 1, 2),
(2, 1, 'Sistema para la Gestión del Prácticum', 2, 2, 2),
(3, 1, 'Desarrollo de Software para proyecto de Lojacar', 1, 3, 2),
(4, 1, 'Twitter Data Collector', 3, 4, 2),
(5, 1, 'Diseño, elaboración, funcionamiento y servicios complementarios de la página web de la Asociación de Docentes UTPL', 4, 5, 4),
(6, 3, '\"Educación sin barreras\"', 5, 6, 4),
(7, 1, 'Estudio del desarrollo de software en el Ecuador', 6, 7, 2),
(8, 1, 'Cursos virtuales', 7, 8, 3),
(9, 1, 'Implementación de una tecnología colaborativa para el levantamiento de datos ambientales y de uso de espacios públicos en ciudades digitales', 1, 9, 2),
(10, 1, 'Prototipo para la ubicación de libros en el ambiente de la biblioteca', 1, 9, 3),
(11, 1, 'Evaluación automática de ensayos académicos', 1, 9, 2),
(12, 1, 'Pueblos y nacionalidades', 7, 10, 4),
(13, 1, 'vr UTPL Virtual Reality 3D', 7, 10, 1),
(14, 1, 'vr UTPL Virtual Reality 3D', 7, 11, 1),
(15, 1, 'vr UTPL Virtual Reality 3D', 7, 11, 1),
(16, 1, 'vr UTPL Virtual Reality 3D', 7, 12, 2),
(17, 1, 'vr UTPL Virtual Reality 3D', 7, 12, 1),
(18, 1, 'vr UTPL Virtual Reality 3D', 7, 11, 1),
(19, 1, 'Desarrollar un aplicación móvil que interactúe con elementos físicos reales y con juegos educativos digitales.', 8, 13, 3),
(20, 1, 'Desarrollo e integración de portal web para difusión de información y resultados de los proyectos actuales del Grupo CONSYS.', 8, 13, 2),
(21, 1, 'SISTEMA TRIDIMENSIONAL PARA FERIA DE EMPLEO - UTPL ALUMNI', 9, 14, 3),
(22, 1, 'SISTEMA DE GESTIÓN PARA LA FORMACION DOCENTE', 9, 14, 2),
(23, 1, 'SISTEMA DE GESTION PARA ADMINISTRACIÓN DEL SITIO WEB ASCENDERE', 9, 14, 2),
(24, 1, 'SISTEMA DE GESTIÓN DE INVENTARIO PARA EL LABORATORIO DE INVESTIGACION E INNOVACION DOCENTE', 9, 14, 2),
(25, 1, 'APLICACION MOVIL PARA EL LABORATORIO DE INVESTIGACION E INNOVACION DOCENTE', 9, 14, 2),
(26, 1, 'SISTEMA PARA LA GESTIÓN DE PROYECTOS DE INNOVACIÓN', 9, 14, 2),
(27, 1, 'Aplicación móvil para el Laboratorio de Innovación e Investigación Docente', 9, 14, 3),
(28, 1, 'Gamificación para audiencias de casos judiciales', 9, 14, 3),
(29, 1, 'Sistema de Gestión del Proyecto Mentores (Digitalización del Proyecto Mentores, e inclusión del análisis estadístico para identificar factores encaminados a disminuir la deserción de estudiantes de primer y segundo ciclo)', 10, 15, 2),
(30, 1, 'Proyecto Ascendere – UTPL Rank (Plataforma para ayudar a postulantes de colegio a prepararse para rendir la prueba de admisión previo ingreso a la modalidad presencial de la UTPL', 10, 15, 3),
(31, 1, 'Construcción de un repositorio de datos para la aplicación de algoritmos', 1, 16, 2),
(32, 1, 'Administración de ZOOM Cloud Storage para material académico de docentes de la MAD UTPL', 11, 17, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_plaza_nivel`
--

CREATE TABLE `proyecto_plaza_nivel` (
  `idPryNv` int(11) NOT NULL,
  `idProyecto` int(11) NOT NULL,
  `nivelGP` varchar(3) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyecto_plaza_nivel`
--

INSERT INTO `proyecto_plaza_nivel` (`idPryNv`, `idProyecto`, `nivelGP`, `numero`, `estado`) VALUES
(1, 1, '2.2', 1, 'Disponible'),
(2, 1, '3.1', 1, 'Disponible'),
(3, 2, '3.2', 2, 'Disponible'),
(4, 3, '2.2', 1, 'Disponible'),
(5, 3, '3.2', 1, 'Disponible'),
(6, 4, '2.1', 1, 'Disponible'),
(7, 4, '3.2', 1, 'Disponible'),
(8, 5, '1.3', 2, 'Disponible'),
(9, 5, '2.2', 2, 'Disponible'),
(10, 6, '1.3', 2, 'Disponible'),
(11, 6, '2.2', 1, 'Disponible'),
(12, 6, '3.2', 1, 'Disponible'),
(13, 7, '1.3', 2, 'Disponible'),
(14, 8, '1.3', 2, 'Disponible'),
(15, 8, '2.2', 1, 'Disponible'),
(16, 9, '2.2', 2, 'Disponible'),
(17, 10, '1.3', 2, 'Disponible'),
(18, 10, '3.1', 1, 'Disponible'),
(19, 11, '2.1', 1, 'Disponible'),
(20, 11, '3.2', 1, 'Disponible'),
(21, 12, '1.3', 2, 'Disponible'),
(22, 12, '3.2', 2, 'Disponible'),
(23, 13, '2.2', 1, 'Disponible'),
(24, 14, '3.2', 1, 'Disponible'),
(25, 15, '2.2', 1, 'Disponible'),
(26, 16, '1.3', 1, 'Disponible'),
(27, 16, '2.2', 1, 'Disponible'),
(28, 16, '3.2', 1, 'Disponible'),
(29, 17, '2.2', 1, 'Disponible'),
(30, 18, '3.2', 1, 'Disponible'),
(31, 19, '3.2', 3, 'Disponible'),
(32, 20, '1.3', 1, 'Disponible'),
(33, 20, '2.2', 1, 'Disponible'),
(34, 21, '2.2', 2, 'Disponible'),
(35, 22, '2.2', 1, 'Disponible'),
(36, 22, '3.2', 1, 'Disponible'),
(37, 23, '2.2', 1, 'Disponible'),
(38, 23, '3.2', 1, 'Disponible'),
(39, 24, '2.1', 1, 'Disponible'),
(40, 24, '2.2', 1, 'Disponible'),
(41, 25, '2.2', 2, 'Disponible'),
(42, 26, '2.2', 1, 'Disponible'),
(43, 26, '3.2', 1, 'Disponible'),
(44, 27, '2.1', 1, 'Disponible'),
(45, 27, '2.2', 1, 'Disponible'),
(46, 27, '3.1', 1, 'Disponible'),
(47, 28, '2.2', 3, 'Disponible'),
(48, 29, '1.3', 1, 'Disponible'),
(49, 29, '3.2', 1, 'Disponible'),
(50, 30, '1.3', 1, 'Disponible'),
(51, 30, '3.2', 1, 'Disponible'),
(52, 30, '3.1', 1, 'Disponible'),
(53, 31, '1.3', 1, 'Disponible'),
(54, 31, '3.2', 1, 'Disponible'),
(55, 32, '1.3', 2, 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_aistencias`
--

CREATE TABLE `registro_aistencias` (
  `idRegistroAistencias` int(11) NOT NULL,
  `CodRegistro` varchar(7) DEFAULT NULL,
  `idEstudiante` int(11) NOT NULL,
  `Titulo` varchar(45) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Observacion` varchar(50) DEFAULT NULL,
  `Validacion` int(11) DEFAULT 0,
  `Calificacion` double DEFAULT 0,
  `HorasTrabajadas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `Puntaje` int(11) DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `idRGeneral` int(11) NOT NULL,
  `idCompGen` int(11) NOT NULL,
  `idComp_Sociales` int(11) NOT NULL,
  `idCompProfesional` int(11) NOT NULL,
  `idCompAct` int(11) NOT NULL
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
-- Estructura de tabla para la tabla `tutor_academico`
--

CREATE TABLE `tutor_academico` (
  `idTutorAcademico` int(11) NOT NULL,
  `cedula` varchar(10) DEFAULT NULL,
  `pNombre` varchar(45) DEFAULT NULL,
  `sNombre` varchar(45) DEFAULT NULL,
  `aPaterno` varchar(45) DEFAULT NULL,
  `aMaterno` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  `idDependencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tutor_academico`
--

INSERT INTO `tutor_academico` (`idTutorAcademico`, `cedula`, `pNombre`, `sNombre`, `aPaterno`, `aMaterno`, `email`, `idUsuario`, `idDependencia`) VALUES
(1, '1103594741', 'IRMA ', 'ELIZABETH', 'CADME ', 'SAMANIEGO', 'iecadme@utpl.edu.ec', 102, 12),
(2, '1103475685', 'OMAR ', 'ALEXANDER', 'RUIZ ', 'VIVANCO', 'oaruiz@utpl.edu.ec', 103, 13),
(3, '1103328157', 'JUAN ', 'CARLOS', 'MOROCHO', 'YUNGA', 'jcmorocho@utpl.edu.ec', 104, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_externo`
--

CREATE TABLE `tutor_externo` (
  `idTutorExterno` int(11) NOT NULL,
  `primerNombre` varchar(50) DEFAULT NULL,
  `segundoNombre` varchar(50) DEFAULT NULL,
  `apellidoPaterno` varchar(50) DEFAULT NULL,
  `apellidoMaterno` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  `idDependencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tutor_externo`
--

INSERT INTO `tutor_externo` (`idTutorExterno`, `primerNombre`, `segundoNombre`, `apellidoPaterno`, `apellidoMaterno`, `email`, `telefono`, `idUsuario`, `idDependencia`) VALUES
(1, 'Ramiro', 'Leonardo', 'Ramírez', 'Coronel', 'rlramirez@utpl.edu.ec', '3701444 ext 2531', 85, 1),
(2, 'Fernanda', 'Maricela', 'Soto', 'Guerrero', 'fmsoto@utpl.edu.ec', '3701444 ext 2522', 86, 2),
(3, 'Roddy', 'Andrés', 'Correa', 'Tenesaca', 'racorrea2@utpl.edu.ec', '986245602', 87, 1),
(4, 'Jorge', 'Afranio', 'Lķpez', 'Vargas', 'jalopez2@utpl.edu.ec', '3701444, Ext. 2532', 88, 3),
(5, 'Roberto', 'Carlos', 'Cuenca', 'Jiménez', 'rccuenca@utpl.edu.ec', '0998653486/072370144', 89, 4),
(6, 'David', 'Israel', 'Ruiz', 'Cabrera', 'davidruiz@gmail.com', '998487957', 90, 5),
(7, 'Germania', 'Rocío', 'Rodríguez', 'Morales', 'grrodriguez@utpl.edu.ec', '984811391', 91, 6),
(8, 'Mayra', 'Eugenia', 'Armijos', NULL, 'mearmijos1@utpl.edu.ec', '0992322635/095953158', 92, 7),
(9, 'Alexandra', 'Cristina', 'González', 'Eras', 'acgonzalez@utpl.edu.ec', '992818359', 93, 1),
(10, 'Dunia', 'Inés', 'Jara', 'Roa', 'dijara@utpl.edu.ec', '3701444 ext 2228', 94, 7),
(11, 'Martha', 'Vannesa', 'Agila', 'Palacios', 'mvagila@utpl.edu.ec', '3701444 ext 2206', 95, 7),
(12, 'Celia', 'Paola', 'Sarango', 'Lapo', 'cpsarango@utpl.edu.ec', '3701444 ext. 2231', 96, 7),
(13, 'Carlos', 'Alberto', 'Calderķn', 'Cķrdova', 'cacalderon@utpl.edu.ec', '962125506', 97, 8),
(14, 'MARIA', 'ISABEL', 'LOAIZA', 'AGUIRRE', 'miloaiza@utpl.edu.ec', '992795566', 98, 9),
(15, 'Paola', 'Salomé', 'Andrade', 'Abarca', 'psandrade@utpl.edu.ec', '984424724', 99, 10),
(16, 'Priscila', 'Marisela', 'Valdiviezo', 'Díaz', 'pmvaldiviezo@utpl.edu.ec', '3701444 ext 2525', 100, 14),
(17, 'Jaime', 'Fabricio', 'Paredes', 'Muņoz', 'jfparedes@utpl.edu.ec', '0983486088 / 0982238', 101, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `Rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `usuario`, `password`, `Rol`) VALUES
(1, 'depardo', '551d466a875cd31fb10b5f9b7157770c', '1'),
(2, 'hxpuchaicela', '63f8745e07b99c783c7b5bcb45e843d4', '1'),
(3, 'jjramirez', '298a83dec0d98178c5d512b2b0fc16d0', '1'),
(4, 'cjmacas', 'f6fc1206b9953cd1ed705701b9433c83', '1'),
(5, 'camedina', 'e89911512a68f9524ec21629c16cdd74', '1'),
(6, 'jesarmiento', '20ef56f3fbf3f166db38def026113321', '1'),
(7, 'ascaceres', 'e1bd62f5063e6383fe8d5a1c01a37ba9', '1'),
(8, 'maceli', 'fc82320a328dbfe409e5e9e4239015bb', '1'),
(9, 'rjestrada', '94fa724fba9a26696f5b3a8314ddcb49', '1'),
(10, 'jjcastillo', 'a50df0360bd7d3259cb8311fd12e6b94', '1'),
(11, 'fdburneo', '28f0f2ee79e2c1fce1ce8735fc18d7dc', '1'),
(12, 'jlurdiales', '5cc6e52df43829dfc143d73608af30a3', '1'),
(13, 'peramon', '1faf3323d249695cb0438fa3de27660d', '1'),
(14, 'pxsanchez', '4a2c2244c3c7d97f979f33cb730ac878', '1'),
(15, 'eariera', '3c0ddd6267cf44c567fda235eb22be22', '1'),
(16, 'eafuertes', 'c462c5769373079979799ae742abfc93', '1'),
(17, 'odmendoza', '3c6f3799d1f73622ae8b72682f8bd0b7', '1'),
(18, 'jggomez', '3add383b7ac00ecbc72e4e8888785582', '1'),
(19, 'jppachar', '3c980fec0f27bfc4d8e6bc96c2928071', '1'),
(20, 'chjuca', 'a4707cf51d5b86c9c96e039e52fa875c', '1'),
(21, 'vhmartinez', '9371a6a4d12863a01f15f40b10e1b2a2', '1'),
(22, 'earuiz', 'acd88084b9edb43d22aa28055e1e4bd6', '1'),
(23, 'janunez', '98ace85cbb03a7c07b5d393fcb791541', '1'),
(24, 'jdlopez', 'f3d3e866870793e9373d3548ee875100', '1'),
(25, 'gjsalas', 'f9ebc1d9297eea8bec0114bafce95009', '1'),
(26, 'baesparza', '8545f122cd80aa5ae3628a8015a43197', '1'),
(27, 'daburneo', 'bf264180e939aca14e790ffc241c8ae9', '1'),
(28, 'cfjimbo', '8d0d029ac97d3655a3251d69082f2d28', '1'),
(29, 'jacalva', 'a58866c4fcf49b9ab6d51bf5854bfa2d', '1'),
(30, 'jaceli', '7e92c69f46ee7ec39b302738dffae1d8', '1'),
(31, 'jarosero', 'fd5e0b0238b99fce74adb409c6bb2955', '1'),
(32, 'naroman', '2920d428a12a545434392a84bb431f0a', '1'),
(33, 'pfpicon', '8a0427342746895eab0b4e6c85c294b8', '1'),
(34, 'jhsarango', '7932774834774da3b2ec1df9445c577c', '1'),
(35, 'mdvalarezo', '1b3b95e865f127d5d7de4421d4e054fb', '1'),
(36, 'rjjaramillo', 'cdd83a37b0debb6fea922f087c4576dc', '1'),
(37, 'japortilla', 'f4ef5537575bf79131ddfe3148b84199', '1'),
(38, 'adquinteros', 'da8076f3d5a0998ded1dbd021a05b832', '1'),
(39, 'agaguirre', 'b73d767640d394eb48fb3ef5dd72ea52', '1'),
(40, 'lderazo', '92d685dfe6c7978c431b6eba9014419e', '1'),
(41, 'masarango', '9334d358f50c09330463fc98dd1e84ef', '1'),
(42, 'daparedes', '2eeb4f448a0bc52e0c633f307f38ba09', '1'),
(43, 'laceli', '8524c33e8f108a491d18ffa318f2eba0', '1'),
(44, 'jbromero', 'a2b66ed1cff0109dd6203c99f3470ff4', '1'),
(45, 'jpchuquimarca', 'eefa767ae3308c2ee2b8e0e878393db2', '1'),
(46, 'jaramon', '3fb1bd8b6c18371e7a42cf27bea7ddcb', '1'),
(47, 'jsrojas', '9260848543ee2c4fb208764c04c5ece3', '1'),
(48, 'jfcevallos', '0e284dc56251dd2e4c72a4ebfa37c768', '1'),
(49, 'iaortiz', '3a1f89d6c935679096e0cb3c06f3c5f5', '1'),
(50, 'jmgonzalez', '16ecf66c9f6f02e23716ec2a23956289', '1'),
(51, 'aepalacios', '25ec143815e2d4ea06a5d233ea72cf93', '1'),
(52, 'jjcalle', '84df21ee8ad98bdfa36bad3495eb2287', '1'),
(53, 'flvelez', '47bd2481dd9bc445039617291a3aa20a', '1'),
(54, 'dljimenez', '43f991cce299cd3c85f43a01640d5f05', '1'),
(55, 'jjyanangomez', '87ffeface4dcee37bbe75bef0ca9ebcb', '1'),
(56, 'jsmaza', 'e226e3d5a4724cbfa32df255f113fdf6', '1'),
(57, 'krcondolo', 'adf9d444d7c78af4c10a4e4c65d11015', '1'),
(58, 'rjbalcazar', 'd110e694b6cbc6d064793acb315d1e76', '1'),
(59, 'bppilco', '096151e54553051057491792efea4d9f', '1'),
(60, 'jsgonzalez', 'fd780687c8d3ec53b1253d7fb3b448b7', '1'),
(61, 'cavargas', '63d7df483d48054c3a82a64bbf1d3e1a', '1'),
(62, 'afmontoya', '86d7d40ff87b47b608e53dc31ebf2b20', '1'),
(63, 'mamorocho', '15d951f1e844b85595e64919508e01df', '1'),
(64, 'lpsanchez', 'fedd9bbc489381bb48ed3d5afee69a15', '1'),
(65, 'cacaraguay', 'a5090573022b23055adb80296e04cab2', '1'),
(66, 'jahurtado', 'bf3e3a95819b0f9bc6e03196589ede5b', '1'),
(67, 'lediaz', '99e62f9c0cbd72dcdb48ed781580fd0c', '1'),
(68, 'baesparza', 'fb8fc33e7d0cee9f86f550e04f90ee23', '1'),
(69, 'cacastillo', 'e0187b33a419974e79cdfd9728b8df51', '1'),
(70, 'pasiguenza', 'ec5c2c1e9f83f5659d56ec0bf5cea301', '1'),
(71, 'foespinoza', '72aafe9d6cfe80501387f5347aa7207f', '1'),
(72, 'micalva', 'e2650008550a63197b5f7a5cc1de69d1', '1'),
(73, 'efsarango', '1ae21ee57f635633e2cabfc4c5cc7d9b', '1'),
(74, 'jmabad', 'fc259170e8f87954c45254ab24b0576c', '1'),
(75, 'lajaramillo', '87cc2972a6cc31b858dda312f7497e73', '1'),
(76, 'gmsantos', 'b4743f20efe434c6765ac5d7604b028f', '1'),
(77, 'nrpaltin', 'ab25db250c8dd4bea39825581accde74', '1'),
(78, 'cesanchez', '3e638ea50338ee65556356237e2477c4', '1'),
(79, 'rivivanco', 'f3a24c9d7ba70aa28cd386a5023bca89', '1'),
(80, 'jrmontenegro', '3c0e04a04c0369354e8fa2753b57d38b', '1'),
(81, 'krarrobo', 'bc80fdd26cfce4008a8b857667bdb8e0', '1'),
(82, 'cvsarabia', '5658d19442595bda5f00dadbb0c91ba3', '1'),
(83, 'daulloa', '377b33260c56b55efbf1e07840818eff', '1'),
(84, 'jldiaz', '4a34d9ad16d30337548031574e86f69f', '1'),
(85, 'rramirez', '74ee3ed3ec039c88f266d3cbabd7d7f7', '2'),
(86, 'fsoto', 'df4e8c5541312d65c109dd58bdd2ed56', '2'),
(87, 'rcorrea', '159982d000a9b4bc1dfeffdad79b80af', '2'),
(88, 'jlopez', 'ded54718b0331bcdab489a8d3b346880', '2'),
(89, 'rcuenca', 'f3a044ebd2563792491469da1caa3daa', '2'),
(90, 'druiz', 'a2b432016805d88516ac72b7e9bfaa35', '2'),
(91, 'grodriguez', '22856f79f4a2ece18cd50af29a42ce90', '2'),
(92, 'marmijos', 'ee555a5a0712f36209beda1515a7dfe1', '2'),
(93, 'agonzalez', '8efa59b1e672381ab8a3a919dbbb08c3', '2'),
(94, 'djara', '997c1af9df2d9f765ffbb7c9a2b22256', '2'),
(95, 'magila', '394ce62e3d622c6294e14c0817689e32', '2'),
(96, 'csarango', '899b610f25890df5f2fa5f234c8d97a4', '2'),
(97, 'ccalderon', '1bcf6542e678584be0fd770a488d260f', '2'),
(98, 'mloaiza', 'dbb0d261f42c237de024ad28b26eeccd', '2'),
(99, 'pandrade', '033878398670a3e5929a07058a914c27', '2'),
(100, 'pvaldiviezo', 'c816659f40552576ff3760587498ea95', '2'),
(101, 'jparedes', '1ff5e6033e87e27467ecd2d24bec84ca', '2'),
(102, 'icadme', '2186a28531d79da095a6a42f66f378aa', '3'),
(103, 'oruiz', 'ab595b95a67f1cdd82e6fa835f08f785', '3'),
(104, 'jcmorocho', '26c4ee471a21ccd6f589f8a999e7b1f0', '3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividadesproyecto`
--
ALTER TABLE `actividadesproyecto`
  ADD PRIMARY KEY (`idActPry`),
  ADD KEY `fk_actividadesproyecto_proyectos1_idx` (`idProyectos`);

--
-- Indices de la tabla `actividades_registro`
--
ALTER TABLE `actividades_registro`
  ADD PRIMARY KEY (`idActividades_Registro`),
  ADD KEY `fk_actividades_registro_registro_aistencias1_idx` (`idRegistroAistencias`);

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`idArchivo`);

--
-- Indices de la tabla `asignacion_proyecto`
--
ALTER TABLE `asignacion_proyecto`
  ADD PRIMARY KEY (`idAsignacion`),
  ADD KEY `fk_Asignacion_Proyecto_proyectos1_idx` (`idProyectos`),
  ADD KEY `fk_Asignacion_Proyecto_estudiantes1_idx` (`idEstudiante`);

--
-- Indices de la tabla `comp_actitudinales`
--
ALTER TABLE `comp_actitudinales`
  ADD PRIMARY KEY (`idCompAct`);

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
  ADD KEY `fk_convenio_empresas1_idx` (`idEmpresa`);

--
-- Indices de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  ADD PRIMARY KEY (`idDependencia`);

--
-- Indices de la tabla `detalle_ev`
--
ALTER TABLE `detalle_ev`
  ADD PRIMARY KEY (`idDetalle`),
  ADD KEY `fk_detalle_ev_evaluacion1_idx` (`idEvaluacion`),
  ADD KEY `fk_detalle_ev_rubricagp11_idx` (`idRubricaGP1`),
  ADD KEY `fk_detalle_ev_rubricagp21_idx` (`idRubricaGP2`),
  ADD KEY `fk_detalle_ev_rubricagp31_idx` (`idRubricaGP3`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Indices de la tabla `entregables`
--
ALTER TABLE `entregables`
  ADD PRIMARY KEY (`idEntregable`),
  ADD KEY `fk_entregables_estudiantes1_idx` (`idEstudiante`),
  ADD KEY `fk_entregables_Archivos1_idx` (`idArchivo`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`idEstudiante`),
  ADD KEY `fk_estudiantes_usuarios1_idx` (`idUsuario`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`idEvaluacion`),
  ADD KEY `fk_evaluacion_estudiantes1_idx` (`idEstudiante`),
  ADD KEY `fk_evaluacion_tutor_externo1_idx` (`idTutorExterno`);

--
-- Indices de la tabla `eventualidades`
--
ALTER TABLE `eventualidades`
  ADD PRIMARY KEY (`idEventualidad`),
  ADD KEY `fk_Eventualidades_Archivos1_idx` (`idArchivo`);

--
-- Indices de la tabla `lista_estudiantes`
--
ALTER TABLE `lista_estudiantes`
  ADD PRIMARY KEY (`idLista`),
  ADD KEY `fk_est_list_idx` (`idEstudiante`),
  ADD KEY `fk_t_act_list_idx` (`idTutorAcademico`);

--
-- Indices de la tabla `portafolio_academico`
--
ALTER TABLE `portafolio_academico`
  ADD PRIMARY KEY (`idPortafolio`),
  ADD KEY `fk_portafolio_academico_tutor_academico1_idx` (`idTutorAcademico`),
  ADD KEY `fk_portafolio_academico_estudiantes1_idx` (`estudiantes_idEstudiante`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`idProyectos`),
  ADD KEY `fk_proyectos_empresas1_idx` (`idEmpresa`),
  ADD KEY `fk_proyectos_dependencias1_idx` (`idDependencia`),
  ADD KEY `fk_proyectos_tutor_externo1_idx` (`idTutorExterno`);

--
-- Indices de la tabla `proyecto_plaza_nivel`
--
ALTER TABLE `proyecto_plaza_nivel`
  ADD PRIMARY KEY (`idPryNv`),
  ADD KEY `fk_proyecto_plaza_nivel_proyectos1_idx` (`idProyecto`);

--
-- Indices de la tabla `registro_aistencias`
--
ALTER TABLE `registro_aistencias`
  ADD PRIMARY KEY (`idRegistroAistencias`),
  ADD KEY `fk_registro_aistencias_estudiantes1_idx` (`idEstudiante`);

--
-- Indices de la tabla `rgeneral`
--
ALTER TABLE `rgeneral`
  ADD PRIMARY KEY (`idRGeneral`);

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
  ADD KEY `fk_rubricagp2_rgeneral1_idx` (`idRGeneral`),
  ADD KEY `fk_rubricagp2_com_genericas1_idx` (`idCompGen`),
  ADD KEY `fk_rubricagp2_comp_sociales1_idx` (`idComp_Sociales`),
  ADD KEY `fk_rubricagp2_comp_profesional1_idx` (`idCompProfesional`),
  ADD KEY `fk_rubricagp2_comp_actitudinales1_idx` (`idCompAct`);

--
-- Indices de la tabla `rubricagp3`
--
ALTER TABLE `rubricagp3`
  ADD PRIMARY KEY (`idRubricaGP3`);

--
-- Indices de la tabla `tutor_academico`
--
ALTER TABLE `tutor_academico`
  ADD PRIMARY KEY (`idTutorAcademico`),
  ADD KEY `fk_tutor_academico_usuarios1_idx` (`idUsuario`),
  ADD KEY `fk_tutor_academico_dependencias1_idx` (`idDependencia`);

--
-- Indices de la tabla `tutor_externo`
--
ALTER TABLE `tutor_externo`
  ADD PRIMARY KEY (`idTutorExterno`),
  ADD KEY `fk_tutor_externo_usuarios1_idx` (`idUsuario`),
  ADD KEY `fk_tutor_externo_dependencias1_idx` (`idDependencia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividadesproyecto`
--
ALTER TABLE `actividadesproyecto`
  MODIFY `idActPry` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `actividades_registro`
--
ALTER TABLE `actividades_registro`
  MODIFY `idActividades_Registro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `idArchivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignacion_proyecto`
--
ALTER TABLE `asignacion_proyecto`
  MODIFY `idAsignacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comp_actitudinales`
--
ALTER TABLE `comp_actitudinales`
  MODIFY `idCompAct` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `idConvenio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  MODIFY `idDependencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `detalle_ev`
--
ALTER TABLE `detalle_ev`
  MODIFY `idDetalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `idEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `entregables`
--
ALTER TABLE `entregables`
  MODIFY `idEntregable` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `idEstudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `idEvaluacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eventualidades`
--
ALTER TABLE `eventualidades`
  MODIFY `idEventualidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lista_estudiantes`
--
ALTER TABLE `lista_estudiantes`
  MODIFY `idLista` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `portafolio_academico`
--
ALTER TABLE `portafolio_academico`
  MODIFY `idPortafolio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `idProyectos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `proyecto_plaza_nivel`
--
ALTER TABLE `proyecto_plaza_nivel`
  MODIFY `idPryNv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `registro_aistencias`
--
ALTER TABLE `registro_aistencias`
  MODIFY `idRegistroAistencias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rgeneral`
--
ALTER TABLE `rgeneral`
  MODIFY `idRGeneral` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rubricagp1`
--
ALTER TABLE `rubricagp1`
  MODIFY `idRubricaGP1` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rubricagp2`
--
ALTER TABLE `rubricagp2`
  MODIFY `idRubricaGP2` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rubricagp3`
--
ALTER TABLE `rubricagp3`
  MODIFY `idRubricaGP3` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tutor_academico`
--
ALTER TABLE `tutor_academico`
  MODIFY `idTutorAcademico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tutor_externo`
--
ALTER TABLE `tutor_externo`
  MODIFY `idTutorExterno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividadesproyecto`
--
ALTER TABLE `actividadesproyecto`
  ADD CONSTRAINT `fk_actividadesproyecto_proyectos1` FOREIGN KEY (`idProyectos`) REFERENCES `proyectos` (`idProyectos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `actividades_registro`
--
ALTER TABLE `actividades_registro`
  ADD CONSTRAINT `fk_actividades_registro_registro_aistencias1` FOREIGN KEY (`idRegistroAistencias`) REFERENCES `registro_aistencias` (`idRegistroAistencias`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asignacion_proyecto`
--
ALTER TABLE `asignacion_proyecto`
  ADD CONSTRAINT `fk_Asignacion_Proyecto_estudiantes1` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Asignacion_Proyecto_proyectos1` FOREIGN KEY (`idProyectos`) REFERENCES `proyectos` (`idProyectos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `convenio`
--
ALTER TABLE `convenio`
  ADD CONSTRAINT `fk_convenio_empresas1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresas` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_ev`
--
ALTER TABLE `detalle_ev`
  ADD CONSTRAINT `fk_detalle_ev_evaluacion1` FOREIGN KEY (`idEvaluacion`) REFERENCES `evaluacion` (`idEvaluacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_ev_rubricagp11` FOREIGN KEY (`idRubricaGP1`) REFERENCES `rubricagp1` (`idRubricaGP1`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_ev_rubricagp21` FOREIGN KEY (`idRubricaGP2`) REFERENCES `rubricagp2` (`idRubricaGP2`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_ev_rubricagp31` FOREIGN KEY (`idRubricaGP3`) REFERENCES `rubricagp3` (`idRubricaGP3`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `entregables`
--
ALTER TABLE `entregables`
  ADD CONSTRAINT `fk_entregables_Archivos1` FOREIGN KEY (`idArchivo`) REFERENCES `archivos` (`idArchivo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_entregables_estudiantes1` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `fk_estudiantes_usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD CONSTRAINT `fk_evaluacion_estudiantes1` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_evaluacion_tutor_externo1` FOREIGN KEY (`idTutorExterno`) REFERENCES `tutor_externo` (`idTutorExterno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `eventualidades`
--
ALTER TABLE `eventualidades`
  ADD CONSTRAINT `fk_Eventualidades_Archivos1` FOREIGN KEY (`idArchivo`) REFERENCES `archivos` (`idArchivo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `lista_estudiantes`
--
ALTER TABLE `lista_estudiantes`
  ADD CONSTRAINT `fk_est_list` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_t_act_list` FOREIGN KEY (`idTutorAcademico`) REFERENCES `tutor_academico` (`idTutorAcademico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `portafolio_academico`
--
ALTER TABLE `portafolio_academico`
  ADD CONSTRAINT `fk_portafolio_academico_estudiantes1` FOREIGN KEY (`estudiantes_idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_portafolio_academico_tutor_academico1` FOREIGN KEY (`idTutorAcademico`) REFERENCES `tutor_academico` (`idTutorAcademico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `fk_proyectos_dependencias1` FOREIGN KEY (`idDependencia`) REFERENCES `dependencias` (`idDependencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyectos_empresas1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresas` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyectos_tutor_externo1` FOREIGN KEY (`idTutorExterno`) REFERENCES `tutor_externo` (`idTutorExterno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyecto_plaza_nivel`
--
ALTER TABLE `proyecto_plaza_nivel`
  ADD CONSTRAINT `fk_proyecto_plaza_nivel_proyectos1` FOREIGN KEY (`idProyecto`) REFERENCES `proyectos` (`idProyectos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `registro_aistencias`
--
ALTER TABLE `registro_aistencias`
  ADD CONSTRAINT `fk_registro_aistencias_estudiantes1` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `rubricagp2`
--
ALTER TABLE `rubricagp2`
  ADD CONSTRAINT `fk_rubricagp2_com_genericas1` FOREIGN KEY (`idCompGen`) REFERENCES `com_genericas` (`idCompGen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rubricagp2_comp_actitudinales1` FOREIGN KEY (`idCompAct`) REFERENCES `comp_actitudinales` (`idCompAct`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rubricagp2_comp_profesional1` FOREIGN KEY (`idCompProfesional`) REFERENCES `comp_profesional` (`idCompProfesional`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rubricagp2_comp_sociales1` FOREIGN KEY (`idComp_Sociales`) REFERENCES `comp_sociales` (`idComp_Sociales`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rubricagp2_rgeneral1` FOREIGN KEY (`idRGeneral`) REFERENCES `rgeneral` (`idRGeneral`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tutor_academico`
--
ALTER TABLE `tutor_academico`
  ADD CONSTRAINT `fk_tutor_academico_dependencias1` FOREIGN KEY (`idDependencia`) REFERENCES `dependencias` (`idDependencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tutor_academico_usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tutor_externo`
--
ALTER TABLE `tutor_externo`
  ADD CONSTRAINT `fk_tutor_externo_dependencias1` FOREIGN KEY (`idDependencia`) REFERENCES `dependencias` (`idDependencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tutor_externo_usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
