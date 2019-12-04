-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2019 a las 08:47:43
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zagrossport`
--
CREATE DATABASE IF NOT EXISTS `zagrossport` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `zagrossport`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aparato`
--

CREATE TABLE `aparato` (
  `codigoAparato` varchar(20) NOT NULL,
  `descripAparato` varchar(50) NOT NULL,
  `estadoAparato` varchar(20) NOT NULL,
  `numSala` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asiste`
--

CREATE TABLE `asiste` (
  `codigoClase` varchar(20) NOT NULL,
  `numSocio` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `codigoClase` varchar(20) NOT NULL,
  `diaClase` varchar(12) NOT NULL,
  `horaClase` varchar(12) NOT NULL,
  `descripClase` varchar(50) NOT NULL,
  `numSala` int(5) NOT NULL,
  `DNIMonitor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitor`
--

CREATE TABLE `monitor` (
  `DNI` varchar(20) NOT NULL,
  `nombreMonitor` varchar(30) NOT NULL,
  `telMonitor` varchar(12) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `experiencia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pistasquash`
--

CREATE TABLE `pistasquash` (
  `numPista` int(5) NOT NULL,
  `ubicacionPista` varchar(20) NOT NULL,
  `estadoPista` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `numSocio` int(6) NOT NULL,
  `numPista` int(5) NOT NULL,
  `fechaReserva` date NOT NULL,
  `horaReserva` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `numSala` int(5) NOT NULL,
  `M2Ocupa` int(6) NOT NULL,
  `ubicacionSala` varchar(50) NOT NULL,
  `tipoSala` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE `socio` (
  `numSocio` int(6) NOT NULL,
  `nombreSocio` varchar(30) NOT NULL,
  `telSocio` varchar(12) NOT NULL,
  `dirSocio` varchar(50) NOT NULL,
  `datosBancarios` varchar(50) NOT NULL,
  `profesionSocio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aparato`
--
ALTER TABLE `aparato`
  ADD PRIMARY KEY (`codigoAparato`),
  ADD KEY `numSala` (`numSala`);

--
-- Indices de la tabla `asiste`
--
ALTER TABLE `asiste`
  ADD PRIMARY KEY (`codigoClase`,`numSocio`),
  ADD KEY `codigoClase` (`codigoClase`),
  ADD KEY `numSocio` (`numSocio`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`codigoClase`),
  ADD KEY `numSala` (`numSala`),
  ADD KEY `DNIMonitor` (`DNIMonitor`);

--
-- Indices de la tabla `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `pistasquash`
--
ALTER TABLE `pistasquash`
  ADD PRIMARY KEY (`numPista`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`numSocio`,`numPista`,`fechaReserva`,`horaReserva`),
  ADD KEY `numSocio` (`numSocio`),
  ADD KEY `numPista` (`numPista`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`numSala`);

--
-- Indices de la tabla `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`numSocio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aparato`
--
ALTER TABLE `aparato`
  ADD CONSTRAINT `aparato_ibfk_1` FOREIGN KEY (`numSala`) REFERENCES `sala` (`numSala`);

--
-- Filtros para la tabla `asiste`
--
ALTER TABLE `asiste`
  ADD CONSTRAINT `asiste_ibfk_1` FOREIGN KEY (`codigoClase`) REFERENCES `clase` (`codigoClase`),
  ADD CONSTRAINT `asiste_ibfk_2` FOREIGN KEY (`numSocio`) REFERENCES `socio` (`numSocio`);

--
-- Filtros para la tabla `clase`
--
ALTER TABLE `clase`
  ADD CONSTRAINT `clase_ibfk_1` FOREIGN KEY (`numSala`) REFERENCES `sala` (`numSala`),
  ADD CONSTRAINT `clase_ibfk_2` FOREIGN KEY (`DNIMonitor`) REFERENCES `monitor` (`DNI`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`numSocio`) REFERENCES `socio` (`numSocio`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`numPista`) REFERENCES `pistasquash` (`numPista`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
