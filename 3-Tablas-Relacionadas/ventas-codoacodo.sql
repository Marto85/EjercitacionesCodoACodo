-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 12-11-2023 a las 16:49:21
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
-- Base de datos: `ventas-codoacodo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `dni` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`dni`, `nombre`, `apellidos`) VALUES
('10567869', 'Juan', 'Segundolo'),
('14852693', 'Elena', 'Pirulo'),
('15745897', 'Pablo', 'Supulveda'),
('19547653', 'Pedro', 'Cacarulo'),
('23478985', 'Carlos', 'Martínez'),
('26943943', 'Miguel', 'Perinola'),
('29585631', 'Ana', 'Garzola'),
('32587653', 'Laura', 'López'),
('33635878', 'Lucía', 'Filomena'),
('36457894', 'María', 'Rodríguez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(20) NOT NULL,
  `concepto` varchar(20) NOT NULL,
  `clientes_dni` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `concepto`, `clientes_dni`) VALUES
(1, 'Consumidor Final', '10567869'),
(2, 'Mayorista', '36457894'),
(3, 'Consumidor Final', '23478985'),
(4, 'Mayorista', '32587653'),
(5, 'Consumidor Final', '15745897'),
(6, 'Mayorista', '29585631'),
(7, 'Consumidor Final', '19547653'),
(8, 'Mayorista', '33635878'),
(9, 'Consumidor Final', '26943943'),
(10, 'Mayorista', '14852693');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineascompra`
--

CREATE TABLE `lineascompra` (
  `numero` int(20) NOT NULL,
  `compras_id` int(20) NOT NULL,
  `producto` varchar(20) NOT NULL,
  `importe` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lineascompra`
--

INSERT INTO `lineascompra` (`numero`, `compras_id`, `producto`, `importe`) VALUES
(1, 1, 'Remera manga corta', 6000),
(2, 2, 'Toalla de Algodon', 3900),
(3, 7, 'Pantalon corto infan', 2800),
(4, 3, 'Campera rompeviento', 18000),
(5, 9, 'Gorro', 1800),
(6, 4, 'Mochila notebook', 11900),
(7, 8, 'Morral', 4900),
(8, 5, 'Zapatillas running', 58000.5),
(9, 10, 'Botines tapones goma', 48000.8),
(10, 6, 'Buzo frisa ', 14500.5),
(11, 2, 'Medias tipo soquete', 700.5),
(12, 3, 'Jean classic', 37200.5),
(13, 1, 'Chaleco de polar', 19000.5),
(14, 7, 'Joggin frisa', 25000.5),
(15, 5, 'Pantalon corto depor', 9000.5),
(16, 10, 'Bermuda algodon', 9600.5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_compras_clientes` (`clientes_dni`);

--
-- Indices de la tabla `lineascompra`
--
ALTER TABLE `lineascompra`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `fk_lineas_compra_compras` (`compras_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `lineascompra`
--
ALTER TABLE `lineascompra`
  MODIFY `numero` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_compras_clientes` FOREIGN KEY (`clientes_dni`) REFERENCES `clientes` (`dni`);

--
-- Filtros para la tabla `lineascompra`
--
ALTER TABLE `lineascompra`
  ADD CONSTRAINT `fk_lineas_compra_compras` FOREIGN KEY (`compras_id`) REFERENCES `compras` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
