-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2025 a las 01:13:55
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `num_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `num_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Angel Gibran', 'Loaiza Garcia', '23325061070694', '0000-00-00', 1, 'angel.loaiza23@cetis107.edu.mx', '6671451436'),
(2, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '0000-00-00', 1, 'bayron.estrada23@cetis107.edu.mx', '+1(909) 516-0134'),
(3, 'Santiago', 'Lopez Aispuro', '23325061070386', '0000-00-00', 1, 'santiago.aispuro23@cetis107.edu.mx', '6673309322'),
(4, 'Victor Manuel', 'Diaz Gastelum', '23325061070728', '0000-00-00', 1, 'victor.diaz23@cetis107.edu.mx', '6677911274'),
(5, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '0000-00-00', 1, 'paolo.valdez23@cetis107.edu.mx', '6675412714'),
(6, 'Luis Angel', 'Moya Preciado', '23325061070393', '0000-00-00', 1, 'luis.moya23@cetis107.edu.mx', '6674502292'),
(7, 'Diego Joan', 'Dominguez Lizarraga', '2332061070579', '0000-00-00', 1, 'diego.dominguez23@cetis107.edu.mx', '6671412966'),
(8, 'Rosselyn', 'Esparza Uriarte', '233250610705228', '0000-00-00', 0, 'rosselyn.esparza23@cetis107.edu.mx', '6674093254'),
(9, 'krisell Bettina', 'Angulo Garcia', '23325061070627', '0000-00-00', 0, 'krisell.bettina23@cetis107.edu.mx', '6675793242'),
(10, 'Jonathan Horus', 'Zazueta Hernandez', '23325061070413', '2008-04-09', 1, 'jonathan.zazueta23@cetis107.edu.mx', '6677562259');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_academica`
--

CREATE TABLE `carga_academica` (
  `id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carga_academica`
--

INSERT INTO `carga_academica` (`id`, `clase_id`, `alumno_id`, `calificacion`) VALUES
(1, 4, 1, 10),
(2, 1, 1, 10),
(3, 2, 1, 10),
(4, 3, 1, 10),
(5, 5, 1, 10),
(6, 6, 1, 10),
(7, 7, 1, 10),
(8, 8, 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `maestro_id` int(11) NOT NULL,
  `Hora` time NOT NULL,
  `Aula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `materia_id`, `maestro_id`, `Hora`, `Aula`) VALUES
(1, 5, 7, '01:20:00', 'CC2'),
(2, 6, 4, '02:10:00', 'CC1'),
(3, 1, 1, '03:20:00', '12'),
(4, 3, 3, '04:10:00', '12'),
(5, 2, 8, '05:20:00', '12'),
(6, 8, 2, '05:50:00', '12'),
(7, 4, 10, '06:20:00', '12'),
(8, 7, 6, '07:20:00', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Construccion', 'aprendes a construir y crear planos.'),
(2, 'programacion', 'aprendes a programar y aprendes como hacer programas sencillos como base de datos, calculadoras,etc.'),
(3, 'Ofimatica', 'te enseñas programas de edicion y aprendes a usar mejor programas simples como excel, docs, etc.'),
(4, 'Contabilidad', 'aprendes a hacer calculos y pagar impuestos'),
(5, 'Electronica', 'manejar voltajes y aprender a controlar los circuito'),
(6, 'Diseño grafico', 'aprendes cosas basicas sobre el arte como la anatomia, peso, dibujar, animar, etc.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Genero` tinyint(1) NOT NULL,
  `Fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `Nombre`, `Correo`, `Genero`, `Fecha_nacimiento`) VALUES
(1, 'David Ivan Gonzalez Perez', 'David.Gonzalez@gmail.com', 1, '1980-09-03'),
(2, 'Maria Guadalupe Dominguez Lizarraga', 'Maria.Dominguez@gmail.com', 0, '1985-11-15'),
(3, 'Francisco Javier Rochin Perez', 'Francisco.Rochin@gmail.com', 1, '1999-06-06'),
(4, 'Bayron Nicholas Moya Garcia', 'Bayron.moya@gmail.com', 1, '1990-04-08'),
(5, 'Rubi Fernanda Perez Payan', 'rubi.perez@gmail.com', 0, '1992-01-31'),
(6, 'Paolo Joan Diaz Valdez', 'Paolo.Diaz@gmail.com', 1, '1987-10-28'),
(7, 'Angel Diego Arreola Camacho', 'angel.arreola@gmail.com', 1, '1995-12-04'),
(8, 'Frida Gastelum Loaiza', 'frida.gastelum@gmail.com', 0, '2000-07-01'),
(9, 'Sofia Sanchez Arbillaga', 'Sofia.Arbillaga@gmail.com', 0, '1980-08-19'),
(10, 'Veronica Hernandez Diaz', 'Veronica.hernandez@gmail.com', 0, '1999-04-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Historia', 4),
(2, 'Reaccion Quimica', 4),
(3, 'ingles', 4),
(4, 'Temas Matematicas', 4),
(5, 'Bd no relacionales', 4),
(6, 'Bd relacionales', 4),
(7, 'Tutoria', 4),
(8, 'Recursos socioemocionales', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`clase_id`),
  ADD KEY `alumno_id` (`alumno_id`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`materia_id`),
  ADD KEY `maestro_id` (`maestro_id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD CONSTRAINT `carga_academica_ibfk_1` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `carga_academica_ibfk_2` FOREIGN KEY (`clase_id`) REFERENCES `clases` (`id`);

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`maestro_id`) REFERENCES `maestros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
