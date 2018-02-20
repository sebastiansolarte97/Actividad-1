-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2018 a las 04:37:42
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diaro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` int(11) NOT NULL,
  `identificacion` int(50) NOT NULL,
  `nombre_1` varchar(50) NOT NULL,
  `nombre_2` varchar(50) NOT NULL,
  `apellido_1` varchar(50) NOT NULL,
  `apellido_2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `identificacion`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`) VALUES
(3, 2147483647, 'Alejandro', 'andres', 'murillo', 'Martinez'),
(4, 34998389, 'andres', 'Stiven', 'Duran ', 'Martinez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_informacion`
--

CREATE TABLE `estudiante_informacion` (
  `id` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_informacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Volcado de datos para la tabla `estudiante_informacion`
--

INSERT INTO `estudiante_informacion` (`id`, `id_estudiante`, `id_informacion`) VALUES
(1, 3, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion`
--

CREATE TABLE `informacion` (
  `id` int(11) NOT NULL,
  `actividades` varchar(50) NOT NULL,
  `llamados_aten` varchar(50) NOT NULL,
  `horario` varchar(50) NOT NULL,
  `estado_aca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Volcado de datos para la tabla `informacion`
--

INSERT INTO `informacion` (`id`, `actividades`, `llamados_aten`, `horario`, `estado_aca`) VALUES
(7, 'Jean day', 'Pelea con compañeros', 'matematicas - lunes a las 8', 'sobresaliente'),
(8, 'Semana cultural', 'Ausencia de clases', 'Lunes 9am a 12pm', 'aceptable'),
(9, 'Semana cultural', 'Pelea con compañeros', 'Grupo A: jueves 2pm a 4pm', 'sobresaliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padresflia`
--

CREATE TABLE `padresflia` (
  `id` int(11) NOT NULL,
  `identificacion` int(50) NOT NULL,
  `nombre_1` varchar(50) NOT NULL,
  `nombre_2` varchar(50) NOT NULL,
  `apellido_1` varchar(50) NOT NULL,
  `apellido_2` varchar(50) NOT NULL,
  `num_cel` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Volcado de datos para la tabla `padresflia`
--

INSERT INTO `padresflia` (`id`, `identificacion`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`, `num_cel`) VALUES
(3, 34998389, 'Maira', 'luz', 'Duran ', 'Martinez', 2147483647),
(4, 76312408, 'Evelio', 'andres', 'solarte', 'saez', 2147483647),
(5, 76312408, 'Evelio', 'andres', 'solarte', 'saez', 2147483647),
(6, 1067955887, 'andres', 'felipe', 'solarte', 'Martinez', 2147483647),
(7, 35968456, 'Roquelina', 'Rosa', 'Carrascal', 'Perez', 2147483647),
(8, 1067555684, 'Maria', 'Rosa', 'Macea', 'Portillo', 7842108);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` int(11) NOT NULL,
  `identificacion` int(50) NOT NULL,
  `nombre_1` varchar(50) NOT NULL,
  `nombre_2` varchar(50) NOT NULL,
  `apellido_1` varchar(50) NOT NULL,
  `apellido_2` varchar(50) NOT NULL,
  `num_cel` varchar(50) NOT NULL,
  `cargo_aca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `identificacion`, `nombre_1`, `nombre_2`, `apellido_1`, `apellido_2`, `num_cel`, `cargo_aca`) VALUES
(1, 1067955887, 'sebastian', 'andres', 'solarte', 'saez', '3113870854', 'Jefe del área de tecnología '),
(2, 30456542, 'Rudy', 'Alean', 'murillo', 'Acosta', '3004356589', 'Jefe del área de matemáticas  '),
(3, 808760965, 'Gabriel', 'José', 'Martinez', 'Lopez', '3145591202', 'Jefe del área de ciencias sociales ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiante_informacion`
--
ALTER TABLE `estudiante_informacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_estudiante_informacion_estudiante` (`id_estudiante`),
  ADD KEY `FK_estudiante_informacion_informacion` (`id_informacion`);

--
-- Indices de la tabla `informacion`
--
ALTER TABLE `informacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `padresflia`
--
ALTER TABLE `padresflia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `informacion`
--
ALTER TABLE `informacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `padresflia`
--
ALTER TABLE `padresflia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante_informacion`
--
ALTER TABLE `estudiante_informacion`
  ADD CONSTRAINT `FK_estudiante_informacion_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_estudiante_informacion_informacion` FOREIGN KEY (`id_informacion`) REFERENCES `informacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
