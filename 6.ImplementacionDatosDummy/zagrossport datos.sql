-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2019 a las 08:08:04
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

--
-- Volcado de datos para la tabla `aparato`
--

INSERT INTO `aparato` (`codigoAparato`, `descripAparato`, `estadoAparato`, `numSala`) VALUES
('1', 'Elíptica', 'Excelente', 1),
('10', 'Leg Curl', 'Excelente', 2),
('11', 'Chest Press', 'Descompuesto', 3),
('12', 'Chest Press', 'Excelente', 3),
('13', 'Abdominal Crunch', 'Excelente', 3),
('14', 'Lower Back', 'Excelente', 3),
('15', 'Shoulder Press', 'Excelente', 3),
('16', 'Delts Machine', 'Excelente', 3),
('17', 'Cinta para Correr', 'Excelente', 7),
('18', 'Cinta para Correr', 'Descompuesto', 7),
('19', 'Bicicleta Estática', 'Excelente', 7),
('2', 'Elíptica', 'En reparación', 1),
('20', 'Bicicleta Estática', 'Excelente', 7),
('3', 'Elíptica', 'Excelente', 1),
('4', 'Máquina de Step', 'Excelente', 1),
('5', 'Máquina de Step', 'Descompuesto', 1),
('6', 'Leg Extension', 'Excelente', 2),
('7', 'Leg Extension', 'Descompuesto', 2),
('8', 'Leg Press', 'En reparación', 2),
('9', 'Leg Press', 'Excelente', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asiste`
--

CREATE TABLE `asiste` (
  `codigoClase` varchar(20) NOT NULL,
  `numSocio` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asiste`
--

INSERT INTO `asiste` (`codigoClase`, `numSocio`) VALUES
('1', 1),
('1', 8),
('1', 9),
('1', 14),
('2', 2),
('2', 7),
('2', 9),
('2', 10),
('2', 14),
('3', 3),
('3', 6),
('3', 10),
('3', 13),
('3', 15),
('4', 4),
('4', 5),
('4', 13),
('4', 15),
('5', 4),
('5', 5),
('5', 9),
('6', 3),
('6', 6),
('6', 10),
('6', 13),
('7', 2),
('7', 7),
('7', 14),
('8', 1),
('8', 8),
('8', 9),
('8', 10),
('8', 15);

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

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`codigoClase`, `diaClase`, `horaClase`, `descripClase`, `numSala`, `DNIMonitor`) VALUES
('1', 'Lunes', '8:30pm', 'CrossFit', 4, '1234567890'),
('2', 'Martes', '5:00pm', 'BodyPump', 5, '2345678901'),
('3', 'Miercoles', '7:00am', 'Jukari', 6, '3456789012'),
('4', 'Jueves', '2:00pm', 'Power-Jump', 8, '4567890123'),
('5', 'Viernes', '9:00am', 'Entrenamiento Funcional', 4, '5678901234'),
('6', 'Sabado', '6:00pm', 'Spinning', 5, '6789012345'),
('7', 'Domingo', '9:00pm', 'Aerobox', 6, '4567890123'),
('8', 'Martes', '10:00pm', 'Zumba', 8, '1234567890');

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

--
-- Volcado de datos para la tabla `monitor`
--

INSERT INTO `monitor` (`DNI`, `nombreMonitor`, `telMonitor`, `titulo`, `experiencia`) VALUES
('1234567890', 'Juan Rubio', '9998654912', 'Lic. en Nutrición', '3 años como instructor en el gimnasio SmartFit'),
('2345678901', 'Pamela Jules', '9988431043', '', '10 años como instructor de CrossFit'),
('3456789012', 'Grecia López', '9997502865', 'Lic. en Rehabilitación', ''),
('4567890123', 'Joel Minas', '9997619345', 'Lic. en Psicología', '1 año como instructor de Spinning'),
('5678901234', 'Alexa Vivas', '9838548345', 'Lic. en Nutrición', '4 años como instructor de BodyPump'),
('6789012345', 'Minerva Cárdenas', '9998217364', 'Lic. en Administración de Empresas', '1 año como instructor de Aerobox');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pistasquash`
--

CREATE TABLE `pistasquash` (
  `numPista` int(5) NOT NULL,
  `ubicacionPista` varchar(20) NOT NULL,
  `estadoPista` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pistasquash`
--

INSERT INTO `pistasquash` (`numPista`, `ubicacionPista`, `estadoPista`) VALUES
(1, 'Planta Baja, Campo 1', 'Bueno'),
(2, 'Planta Baja, Campo 2', 'Bueno'),
(3, 'Planta Baja, Campo 3', 'Excelente'),
(4, 'Planta Baja, Campo 4', 'Medio'),
(5, 'Planta Baja, Campo 5', 'Excelente');

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

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`numSocio`, `numPista`, `fechaReserva`, `horaReserva`) VALUES
(1, 3, '2019-12-08', '6:00pm'),
(1, 3, '2019-12-09', '8:00am'),
(2, 1, '2019-12-07', '11:00am'),
(2, 3, '2019-12-11', '5:00pm'),
(3, 2, '2019-12-10', '5:00pm'),
(5, 4, '2019-12-07', '4:00pm'),
(6, 2, '2019-12-09', '7:00pm'),
(7, 3, '2019-12-05', '8:00pm'),
(7, 5, '2019-12-08', '3:00pm'),
(8, 1, '2019-12-13', '1:00pm'),
(10, 1, '2019-12-10', '4:00pm'),
(10, 2, '2019-12-08', '10:00am'),
(11, 5, '2019-12-11', '12:00pm'),
(12, 4, '2019-12-10', '9:00pm'),
(13, 2, '2019-12-13', '2:00pm'),
(14, 5, '2019-12-07', '7:00am');

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

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`numSala`, `M2Ocupa`, `ubicacionSala`, `tipoSala`) VALUES
(1, 100, 'Planta Alta, Edificio 1', 'Cardio'),
(2, 130, 'Planta Alta, Edifico 1', 'Muscular'),
(3, 80, 'Planta Baja, Edificio 1', 'Muscular'),
(4, 90, 'Planta Baja, Edificio1', 'General'),
(5, 100, 'Planta Alta, Edificio 2', 'General'),
(6, 95, 'Planta Alta, Edifico 2', 'General'),
(7, 50, 'Planta Baja, Edificio 2', 'Cardio'),
(8, 89, 'Planta Baja, Edificio 2', 'General');

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
-- Volcado de datos para la tabla `socio`
--

INSERT INTO `socio` (`numSocio`, `nombreSocio`, `telSocio`, `dirSocio`, `datosBancarios`, `profesionSocio`) VALUES
(1, 'Elena Medina', '9831274903', 'Calle 9, Col Prádo Chuburná', 'Bancomer XXXX-XXXX-XXXX-1234', 'Ingeniería de Software'),
(2, 'Esteban Pérez', '9990344517', 'Calle Cantaritos, Col Fco. de Montejo', 'Banamex XXXX-XXXX-XXXX-4321', 'Gastronomía'),
(3, 'Alberto Díaz', '9992113257', 'Calle 60, Col. Centro', 'Santander XXXX-XXXX-XXXX-2345', 'Química'),
(4, 'Francisto García', '9985574103', 'Calle Juan Escutia, Col. Héroes', 'BanCoppel XXXX-XXXX-XXXX-2394', 'Finanzas'),
(5, 'Hernán Hoil', '9937764021', 'Calle 42, Col. Centro', 'Banamex XXXX-XXXX-XXXX-9485', 'Arquitectura'),
(6, 'Gerardo Pacheco', '9997774212', 'Calle Madero, Col. Gran Herradura', 'HSBC XXXX-XXXX-XXXX-0982', ''),
(7, 'Andréa Guevara', '9992313875', 'Calle 23, Col. Miraflores', 'Bancomer XXXX-XXXX-XXXX-0321', 'Ingeniería en Alimentos'),
(8, 'Liliana Méndez', '9982132540', 'Calle 56, Col. Gran Herradura Poniente', 'American Express XXXX-XXXX-XXXX-2312', ''),
(9, 'Naomi Rodriguez', '9992464096', 'Calle Guacamaya, Col. Mayapan', 'Banorte XXXX-XXXX-XXXX-4567', ''),
(10, 'Paulina Fuentes', '9990954345', 'Calle 3, Col. Pensiones III', 'Banamex XXXX-XXXX-XXXX-6434', 'Rehabilitación'),
(11, 'Manuel Escalante', '9998765042', 'Calle 13, Col. Cordemex', 'Banjercito XXXX-XXXX-XXXX-9890', 'Artes Plásticas'),
(12, 'Jacinto Espinola', '9998709757', 'Calle 20, Col. Miguel Alemán', 'Banamex XXXX-XXXX-XXXX-5432', ''),
(13, 'Rodrigo Kuh', '9998811235', 'Calle 55, Col. Pacabtún', 'Bancomer XXXX-XXXX-XXXX-9324', 'Arqueología'),
(14, 'Javier Vicente', '9980946864', 'Calle 63, Col. Yucalpetén', 'BanCoppel XXXX-XXXX-XXXX-3216', 'Medicina'),
(15, 'Dalila Leon', '9993876109', 'Calle 41, Col. Tanlum', 'HSBC XXXX-XXXX-XXXX-4246', 'Literatura');

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
