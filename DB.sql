-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2022 a las 19:48:35
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes`
--

CREATE TABLE `participantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `fecha_reg` int(15) NOT NULL,
  `rut` int(10) NOT NULL,
  `edad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `participantes`
--

INSERT INTO `participantes` (`id`, `nombre`, `email`, `fecha_reg`, `rut`, `edad`) VALUES
(78, 'martina delgado', 'prueba@gmail.com', 20, 13258, 234),
(79, 'luis', 'prueba@gmail.com', 20, 13258, 24),
(80, 'martina delgado', 'prueba@gmail.com', 20, 13258, 0),
(81, 'martina delgado', 'prueba@gmail.com', 20, 13258, 19),
(82, 'martina delgado', 'prueba@gmail.com', 20, 13258, 19),
(83, 'luis', 'prueba@gmail.com', 20, 13258, 54),
(84, 'Lista de gastos', 'prueba@gmail.com', 20, 13258, 43),
(85, 'martina delgado', 'prueba@gmail.com', 20, 13258, 22),
(86, 'raul', 'prueba@gmail.com', 20, 13258, 65),
(87, 'Pancho', 'prueba@gmail.com', 20, 13258, 33),
(88, 'luis', 'prueba@gmail.com', 20, 13258, 55),
(89, 'pedrito', 'prueba@gmail.com', 20, 13258, 33);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `participantes`
--
ALTER TABLE `participantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `participantes`
--
ALTER TABLE `participantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
