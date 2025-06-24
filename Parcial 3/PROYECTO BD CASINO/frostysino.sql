-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2025 a las 22:05:59
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `frostysino`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casino`
--

CREATE TABLE `casino` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Edad` int(100) NOT NULL,
  `Tipo_de_apuesta` varchar(100) NOT NULL,
  `Fondos` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `casino`
--

INSERT INTO `casino` (`id`, `Nombre`, `Edad`, `Tipo_de_apuesta`, `Fondos`) VALUES
(1, 'Manuel', 30, 'Poker', 3000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `casino`
--
ALTER TABLE `casino`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `casino`
--
ALTER TABLE `casino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
