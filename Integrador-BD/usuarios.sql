-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 07-11-2023 a las 20:56:16
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
-- Base de datos: `eventiadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dni` int(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `calle` varchar(30) NOT NULL,
  `numero` int(10) NOT NULL,
  `piso` int(10) DEFAULT NULL,
  `depto` varchar(10) DEFAULT NULL,
  `localidad` varchar(20) NOT NULL,
  `partido` varchar(20) NOT NULL,
  `provincia` varchar(20) NOT NULL,
  `telefono` int(20) NOT NULL,
  `imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `dni`, `password`, `calle`, `numero`, `piso`, `depto`, `localidad`, `partido`, `provincia`, `telefono`, `imagen`) VALUES
(1, 'Juan', 'Pérez', 'juan@example.com', 12345678, 'clave123', 'Calle A', 123, 2, 'A', 'Ciudad A', 'Partido A', 'Provincia A', 1122334455, 'imagen1.jpg'),
(2, 'María', 'Gómez', 'maria@example.com', 87654321, 'password456', 'Calle B', 456, NULL, NULL, 'Ciudad B', 'Partido B', 'Provincia B', 2147483647, 'imagen2.jpg'),
(3, 'Carlos', 'López', 'carlos@example.com', 98765432, 'test1234', 'Calle C', 789, 3, 'B', 'Ciudad C', 'Partido C', 'Provincia C', 1234875690, 'imagen3.jpg'),
(4, 'Ana', 'Martínez', 'ana@example.com', 23456789, 'abc987', 'Calle D', 345, NULL, NULL, 'Ciudad D', 'Partido D', 'Provincia D', 2147483647, 'imagen4.jpg'),
(5, 'Luis', 'Rodríguez', 'luis@example.com', 34567890, 'mypassword', 'Calle E', 567, 4, 'C', 'Ciudad E', 'Partido E', 'Provincia E', 2147483647, 'imagen5.jpg'),
(6, 'Laura', 'Fernández', 'laura@example.com', 45678901, 'securepass', 'Calle F', 678, NULL, NULL, 'Ciudad F', 'Partido F', 'Provincia F', 1122998877, 'imagen6.jpg'),
(7, 'Pedro', 'Sánchez', 'pedro@example.com', 56789012, 'newpass', 'Calle G', 789, 5, 'A', 'Ciudad G', 'Partido G', 'Provincia G', 2147483647, 'imagen7.jpg'),
(8, 'Marta', 'García', 'marta@example.com', 67890123, 'password123', 'Calle H', 890, NULL, NULL, 'Ciudad H', 'Partido H', 'Provincia H', 2147483647, 'imagen8.jpg'),
(9, 'Javier', 'López', 'javier@example.com', 78901234, 'mypassword123', 'Calle I', 901, 6, 'B', 'Ciudad I', 'Partido I', 'Provincia I', 2147483647, 'imagen9.jpg'),
(10, 'Silvia', 'Torres', 'silvia@example.com', 89012345, 'testpass', 'Calle J', 123, NULL, NULL, 'Ciudad J', 'Partido J', 'Provincia J', 2147483647, 'imagen10.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
