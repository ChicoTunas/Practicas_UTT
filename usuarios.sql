-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2023 a las 11:19:09
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tarjetas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Nombre` text DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `Direccion` text DEFAULT NULL,
  `Ciudad` text DEFAULT NULL,
  `Estado` text DEFAULT NULL,
  `CP` text DEFAULT NULL,
  `Titular` text NOT NULL,
  `Tarjeta` text NOT NULL,
  `M_Exp` text NOT NULL,
  `A_Exp` text NOT NULL,
  `CVV` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Nombre`, `Email`, `Direccion`, `Ciudad`, `Estado`, `CP`, `Titular`, `Tarjeta`, `M_Exp`, `A_Exp`, `CVV`) VALUES
('Eduardo', 'eduardofl175@outlook.com', 'Infonavid Latinos', 'Tijuana', 'Baja California', '22180', 'Eduardo Flores', '522526363636525', '15', '2014', '503');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
