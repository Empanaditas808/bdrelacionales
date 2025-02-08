-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 02:08:32
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
