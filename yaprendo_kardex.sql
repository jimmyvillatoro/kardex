-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-06-2021 a las 15:16:26
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `yaprendo_kardex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Idalu` int(11) NOT NULL,
  `Matricula` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `Nombres` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Apellidos` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Movil` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Sexo` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `Nacimiento` date NOT NULL,
  `Pass` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `Estadocivil` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Posturareligiosa` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Estado` int(11) NOT NULL,
  `Foto` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `Idesc` int(11) NOT NULL,
  `Idcar` int(11) DEFAULT NULL,
  `Idcic` int(11) DEFAULT NULL,
  `Idsal` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Idalu`, `Matricula`, `Nombres`, `Apellidos`, `Correo`, `Movil`, `Sexo`, `Nacimiento`, `Pass`, `Estadocivil`, `Posturareligiosa`, `Fecha`, `Estado`, `Foto`, `Idesc`, `Idcar`, `Idcic`, `Idsal`) VALUES
(1, '0001', 'Alma Lorena', 'Rodríguez Moreno', 'alu01@kardex.com', '9613283039', '', '0000-00-00', '1234', '', '', '2021-01-09', 1, '', 1, 1, 1, 1),
(2, '0002', 'Aimara Carolina', 'Saldaña Martinez', 'alu02@kardex.com', '9613283039', '', '0000-00-00', '1234', '', '', '2021-01-09', 1, '', 1, 1, 1, 1),
(3, '0003', 'Luz Mariela', 'Rodríguez Chacón', 'alu03@kardex.com', '9613283039', '', '0000-00-00', '1234', '', '', '2021-01-09', 1, '', 1, 1, 1, 1),
(4, '0003', 'Jimmy Jair', 'Villatoro Saldaña', 'alu04@kardex.com', '9613283039', '', '0000-00-00', '1234', '', '', '2021-01-09', 1, '', 1, 1, 1, 1),
(5, '0003', 'Braulio Andres', 'Villatoro Ochoa', 'alu05@kardex.com', '9613283039', '', '0000-00-00', '1234', '', '', '2021-01-09', 1, '', 1, 1, 1, 1),
(6, '0003', 'Paloma Sarayu', 'Villatoro Rodriguez', 'alu06@kardex.com', '9613283039', '', '0000-00-00', '1234', '', '', '2021-01-09', 1, '', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `Idcal` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Parcial` int(11) NOT NULL,
  `Trabajo` float NOT NULL,
  `Tarea` float NOT NULL,
  `Examen` float NOT NULL,
  `Total` float NOT NULL,
  `Faltas` int(11) NOT NULL,
  `Nota` text COLLATE latin1_spanish_ci NOT NULL,
  `Idmat` int(11) DEFAULT NULL,
  `Iddoc` int(11) DEFAULT NULL,
  `Idalu` int(11) DEFAULT NULL,
  `Idcic` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `Idcar` int(11) NOT NULL,
  `Carrera` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `Revoe` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Tiempo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Dia` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Idesc` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`Idcar`, `Carrera`, `Revoe`, `Tiempo`, `Dia`, `Idesc`) VALUES
(1, 'Teologia Basica', 'en tramite', '1 año', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos`
--

CREATE TABLE `ciclos` (
  `Idcic` int(11) NOT NULL,
  `Ciclo` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Sistema` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Estado` int(11) NOT NULL,
  `Idcar` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `ciclos`
--

INSERT INTO `ciclos` (`Idcic`, `Ciclo`, `Sistema`, `Estado`, `Idcar`) VALUES
(1, 'Enero - Abril 2021', 'EN LÍNEA', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegiaturas`
--

CREATE TABLE `colegiaturas` (
  `Idcol` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Folio` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Descripcion` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `Grado` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Mes` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Costo` float NOT NULL,
  `Descuento` float NOT NULL,
  `Recargo` float NOT NULL,
  `Importe` float NOT NULL,
  `Iva` float NOT NULL,
  `Total` float NOT NULL,
  `Letras` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `Estado` int(11) NOT NULL,
  `Idusu` int(11) DEFAULT NULL,
  `Idalu` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleh`
--

CREATE TABLE `detalleh` (
  `Idh` int(11) NOT NULL,
  `Horas` int(11) NOT NULL,
  `Dia` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `Horario` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Idmd` int(11) DEFAULT NULL,
  `Iddh` int(11) DEFAULT NULL,
  `Idsal` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallemd`
--

CREATE TABLE `detallemd` (
  `Idmd` int(11) NOT NULL,
  `Horas` int(11) NOT NULL,
  `Asignadas` int(11) NOT NULL,
  `Iddoc` int(11) DEFAULT NULL,
  `Idmat` int(11) DEFAULT NULL,
  `Idcic` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `Iddoc` int(11) NOT NULL,
  `Nombres` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Apellidos` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Movil` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Sexo` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `Nacimiento` date NOT NULL,
  `Pass` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `Estadocivil` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Posturareligiosa` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Foto` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `Estado` int(11) NOT NULL,
  `Idesc` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`Iddoc`, `Nombres`, `Apellidos`, `Correo`, `Movil`, `Sexo`, `Nacimiento`, `Pass`, `Estadocivil`, `Posturareligiosa`, `Fecha`, `Foto`, `Estado`, `Idesc`) VALUES
(1, 'demo01', 'demostracion', 'doc01@kardex.com', '9613283039', '', '0000-00-00', '1234', '', '', '2021-01-09', '', 1, 1),
(2, 'demo02', 'demostracion', 'doc02@kardex.com', '9613283039', '', '0000-00-00', '1234', '', '', '2021-01-09', '', 1, 1),
(3, 'demo03', 'demostracion', 'doc03@kardex.com', '9613283039', '', '0000-00-00', '1234', '', '', '2021-01-09', '', 1, 1),
(4, 'demo04', 'demostracion', 'doc04@kardex.com', '9613283039', '', '0000-00-00', '1234', '', '', '2021-01-09', '', 1, 1),
(5, 'demo05', 'demostracion', 'doc05@kardex.com', '9613283039', '', '0000-00-00', '1234', '', '', '2021-01-09', '', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentesh`
--

CREATE TABLE `docentesh` (
  `Iddh` int(11) NOT NULL,
  `Dia` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `Horario` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Estado` int(11) NOT NULL,
  `Ideh` int(11) NOT NULL,
  `Iddoc` int(11) NOT NULL,
  `Idcic` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuelas`
--

CREATE TABLE `escuelas` (
  `Idesc` int(11) NOT NULL,
  `Escuela` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `Ubicacion` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `Telefono` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Rector` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Revoe` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Firma` text COLLATE latin1_spanish_ci NOT NULL,
  `Iva` float NOT NULL,
  `Logo` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Estado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `escuelas`
--

INSERT INTO `escuelas` (`Idesc`, `Escuela`, `Ubicacion`, `Telefono`, `Correo`, `Rector`, `Revoe`, `Firma`, `Iva`, `Logo`, `Fecha`, `Estado`) VALUES
(1, 'Semilla de Vida Eterna (programa Pastoral)', 'en linea', '9611245795', 'soporte@yaprendo.com', 'Jair Velasco', 'en tramite', 'ninguna', 0.16, 'semilla.jpg', '2021-01-08', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuelash`
--

CREATE TABLE `escuelash` (
  `Ideh` int(11) NOT NULL,
  `Dia` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Inicioh` time NOT NULL,
  `Finh` time NOT NULL,
  `Horario` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Idesc` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `escuelash`
--

INSERT INTO `escuelash` (`Ideh`, `Dia`, `Inicioh`, `Finh`, `Horario`, `Idesc`) VALUES
(1, 'Lunes - Domingo', '07:00:00', '07:50:00', '07:00 - 07:50', 1),
(2, 'Lunes - Domingo', '07:50:00', '08:30:00', '07:50 - 08:30', 1),
(3, 'Lunes - Domingo', '08:30:00', '09:20:00', '08:30 - 09:20', 1),
(4, 'Lunes - Domingo', '09:20:00', '10:30:00', '09:20 - 10:30', 1),
(5, 'Lunes - Domingo', '11:00:00', '11:50:00', '11:00 - 11:50', 1),
(6, 'Lunes - Domingo', '11:50:00', '12:40:00', '11:50 - 12:40', 1),
(7, 'Lunes - Domingo', '12:40:00', '01:30:00', '12:40 - 01:30', 1),
(8, 'Lunes - Domingo', '13:30:00', '14:20:00', '13:30 - 14:20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `Idgra` int(11) NOT NULL,
  `Grado` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Costo` float NOT NULL,
  `Idgram` int(11) DEFAULT NULL,
  `Idcar` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`Idgra`, `Grado`, `Costo`, `Idgram`, `Idcar`) VALUES
(1, 'PRIMERO', 25, 1, 1),
(2, 'SEGUNDO', 0, 2, 1),
(3, 'SEGUNDO\r\n', 0, 0, 1),
(4, 'TERCERO', 0, 3, 1),
(5, 'CUARTO', 0, 4, 1),
(6, 'TERCERO\r\n', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `Idmat` int(11) NOT NULL,
  `Materia` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `HorasClase` int(11) NOT NULL,
  `Costo` float NOT NULL,
  `Idgra` int(11) DEFAULT NULL,
  `Idcar` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`Idmat`, `Materia`, `HorasClase`, `Costo`, `Idgra`, `Idcar`) VALUES
(1, 'Técnicas de Estudio', 1, 7.23, 1, 1),
(2, 'Introducción a la Biblia', 1, 7.23, 1, 1),
(3, 'Técnica Bíblica', 1, 7.23, 1, 1),
(4, 'Ética Bíblica ', 1, 7.23, 1, 1),
(5, 'Introducción a la Teología ', 1, 7.23, 1, 1),
(6, 'Vida Cristiana', 1, 7.23, 2, 1),
(7, 'Geografía Bíblica', 1, 7.23, 2, 1),
(8, 'Homilética I', 1, 7.23, 2, 1),
(9, 'Hermenéutica I', 1, 7.23, 2, 1),
(10, 'Antiguo Testamento', 1, 7.23, 3, 1),
(11, 'Exégesis', 1, 7.23, 3, 1),
(12, 'Homilética II', 1, 7.23, 3, 1),
(13, 'La Doctrina I', 1, 7.23, 3, 1),
(14, 'Nuevo Testamento', 1, 7.23, 4, 1),
(15, 'Hermenéutica II', 1, 7.23, 4, 1),
(16, 'Evangelismo', 1, 7.23, 4, 1),
(17, 'Las Religiones', 1, 7.23, 4, 1),
(18, ' La Doctrina II', 1, 7.23, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `Idpag` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Folio` int(11) NOT NULL,
  `Asignada` float NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Materia` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Costo` float NOT NULL,
  `Importe` float NOT NULL,
  `Descuento` float NOT NULL,
  `Subtotal` float NOT NULL,
  `Total` float NOT NULL,
  `Letras` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `Estado` int(11) NOT NULL,
  `Idusu` int(11) NOT NULL,
  `Idmd` int(11) NOT NULL,
  `Iddoc` int(11) DEFAULT NULL,
  `Idmat` int(11) NOT NULL,
  `Idesc` int(11) DEFAULT NULL,
  `Idcic` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salones`
--

CREATE TABLE `salones` (
  `Idsal` int(11) NOT NULL,
  `Turno` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Grado` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Grupo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Idgra` int(11) NOT NULL,
  `Idcic` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `salones`
--

INSERT INTO `salones` (`Idsal`, `Turno`, `Grado`, `Grupo`, `Idgra`, `Idcic`) VALUES
(1, 'Mixto', 'PRIMERO', 'A', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Idusu` int(11) NOT NULL,
  `Nombres` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Apellidos` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Movil` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Pass` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `Foto` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `Estado` int(11) NOT NULL,
  `Idesc` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Idusu`, `Nombres`, `Apellidos`, `Correo`, `Movil`, `Pass`, `Foto`, `Estado`, `Idesc`) VALUES
(1, 'Jair', 'Velasco', 'ce@kardex.com', '9611245795', '1234', '16233312007072600037930920467247.jpg', 1, 1),
(4, 'Rita', 'Echeverria', 'caja@kardex.com', '9613283039', '1234', 'cajero01.jpg', 2, 1),
(7, 'José Alejandro ', 'Medina santos ', 'jams_260296@icloud.com', '9681072184', 'Ale260296', '', 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Idalu`),
  ADD KEY `Idcar` (`Idcar`,`Idcic`,`Idsal`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`Idcal`),
  ADD KEY `Idmat` (`Idmat`,`Iddoc`,`Idalu`,`Idcic`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`Idcar`),
  ADD KEY `Idesc` (`Idesc`);

--
-- Indices de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  ADD PRIMARY KEY (`Idcic`),
  ADD KEY `Idcar` (`Idcar`);

--
-- Indices de la tabla `colegiaturas`
--
ALTER TABLE `colegiaturas`
  ADD PRIMARY KEY (`Idcol`),
  ADD KEY `Idusu` (`Idusu`,`Idalu`);

--
-- Indices de la tabla `detalleh`
--
ALTER TABLE `detalleh`
  ADD PRIMARY KEY (`Idh`),
  ADD KEY `Idcic` (`Idmd`,`Iddh`,`Idsal`);

--
-- Indices de la tabla `detallemd`
--
ALTER TABLE `detallemd`
  ADD PRIMARY KEY (`Idmd`),
  ADD KEY `Iddoc` (`Iddoc`,`Idmat`,`Idcic`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`Iddoc`),
  ADD KEY `Idesc` (`Idesc`);

--
-- Indices de la tabla `docentesh`
--
ALTER TABLE `docentesh`
  ADD PRIMARY KEY (`Iddh`);

--
-- Indices de la tabla `escuelas`
--
ALTER TABLE `escuelas`
  ADD PRIMARY KEY (`Idesc`);

--
-- Indices de la tabla `escuelash`
--
ALTER TABLE `escuelash`
  ADD PRIMARY KEY (`Ideh`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`Idgra`),
  ADD KEY `Idcar` (`Idcar`),
  ADD KEY `Idgram` (`Idgram`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`Idmat`),
  ADD KEY `Idgra` (`Idgra`,`Idcar`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`Idpag`),
  ADD KEY `Idh` (`Iddoc`,`Idesc`,`Idcic`);

--
-- Indices de la tabla `salones`
--
ALTER TABLE `salones`
  ADD PRIMARY KEY (`Idsal`),
  ADD KEY `Idcic` (`Idcic`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Idusu`),
  ADD KEY `Idesc` (`Idesc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `Idalu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `Idcal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `Idcar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  MODIFY `Idcic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `colegiaturas`
--
ALTER TABLE `colegiaturas`
  MODIFY `Idcol` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalleh`
--
ALTER TABLE `detalleh`
  MODIFY `Idh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallemd`
--
ALTER TABLE `detallemd`
  MODIFY `Idmd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `Iddoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `docentesh`
--
ALTER TABLE `docentesh`
  MODIFY `Iddh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `escuelas`
--
ALTER TABLE `escuelas`
  MODIFY `Idesc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `escuelash`
--
ALTER TABLE `escuelash`
  MODIFY `Ideh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `Idgra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `Idmat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `Idpag` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `salones`
--
ALTER TABLE `salones`
  MODIFY `Idsal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Idusu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
