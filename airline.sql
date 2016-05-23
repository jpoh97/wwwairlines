-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2016 a las 05:06:01
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `airline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aeropuerto`
--

CREATE TABLE `aeropuerto` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `ciudad` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aeropuerto`
--

INSERT INTO `aeropuerto` (`id`, `nombre`, `ciudad`) VALUES
(1, 'Jose Maria Cordoba', 1),
(2, 'El dorado', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asiento`
--

CREATE TABLE `asiento` (
  `id` int(10) NOT NULL,
  `cabina` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asiento`
--

INSERT INTO `asiento` (`id`, `cabina`) VALUES
(2, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avion`
--

CREATE TABLE `avion` (
  `id` varchar(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `avion`
--

INSERT INTO `avion` (`id`, `nombre`) VALUES
('747', 'Boeing'),
('A320', 'EgyptAir');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabina`
--

CREATE TABLE `cabina` (
  `id` int(10) NOT NULL,
  `tipo` int(2) DEFAULT NULL,
  `avion` varchar(10) DEFAULT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cabina`
--

INSERT INTO `cabina` (`id`, `tipo`, `avion`, `capacidad`) VALUES
(1, 1, '747', 500),
(2, 2, '747', 200),
(3, 2, 'A320', 5000),
(4, 1, 'A320', 300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id` int(4) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id`, `nombre`, `estado`) VALUES
(1, 'Medellín', 1),
(2, 'Bogota', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escala`
--

CREATE TABLE `escala` (
  `id` int(10) NOT NULL,
  `idvuelo` int(10) DEFAULT NULL,
  `aeropuerto` int(10) DEFAULT NULL,
  `idavion` varchar(10) DEFAULT NULL,
  `hora` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `escala`
--

INSERT INTO `escala` (`id`, `idvuelo`, `aeropuerto`, `idavion`, `hora`) VALUES
(1, 1, 1, '747', '2016-05-30 00:00:00'),
(2, 2, 2, 'A320', '2016-05-31 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(4) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `pais` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`, `pais`) VALUES
(1, 'Antioquia', 1),
(2, 'Cundinamarca', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(4) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`) VALUES
(1, 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE `socio` (
  `tipoid` varchar(2) NOT NULL,
  `numeroid` int(15) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `pais_nacimiento` int(4) DEFAULT NULL,
  `pais_residencia` int(4) DEFAULT NULL,
  `departamento` int(4) DEFAULT NULL,
  `ciudad` int(4) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocabina`
--

CREATE TABLE `tipocabina` (
  `id` int(2) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipocabina`
--

INSERT INTO `tipocabina` (`id`, `nombre`) VALUES
(1, 'ejecutivo'),
(2, 'economico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiquete`
--

CREATE TABLE `tiquete` (
  `vuelo` int(10) NOT NULL,
  `asiento` int(10) NOT NULL,
  `precio` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

CREATE TABLE `vuelo` (
  `id` int(10) NOT NULL,
  `aeropuerto_salida` int(4) DEFAULT NULL,
  `aeropuerto_llegada` int(4) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vuelo`
--

INSERT INTO `vuelo` (`id`, `aeropuerto_salida`, `aeropuerto_llegada`, `fecha`) VALUES
(1, 1, 2, '2016-05-28 00:00:00'),
(2, 2, 1, '2016-06-24 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vueloxcabina`
--

CREATE TABLE `vueloxcabina` (
  `idvuelo` int(10) NOT NULL,
  `idcabina` int(10) NOT NULL,
  `precio` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vueloxcabina`
--

INSERT INTO `vueloxcabina` (`idvuelo`, `idcabina`, `precio`) VALUES
(1, 1, 200000),
(1, 2, 400000),
(2, 3, 5000000),
(2, 4, 300000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aeropuerto`
--
ALTER TABLE `aeropuerto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ciudad` (`ciudad`);

--
-- Indices de la tabla `asiento`
--
ALTER TABLE `asiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cabina` (`cabina`);

--
-- Indices de la tabla `avion`
--
ALTER TABLE `avion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cabina`
--
ALTER TABLE `cabina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo` (`tipo`),
  ADD KEY `avion` (`avion`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estado` (`estado`);

--
-- Indices de la tabla `escala`
--
ALTER TABLE `escala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idvuelo` (`idvuelo`),
  ADD KEY `idavion` (`idavion`),
  ADD KEY `aeropuerto` (`aeropuerto`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pais` (`pais`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`tipoid`,`numeroid`);

--
-- Indices de la tabla `tipocabina`
--
ALTER TABLE `tipocabina`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiquete`
--
ALTER TABLE `tiquete`
  ADD PRIMARY KEY (`vuelo`,`asiento`),
  ADD KEY `asiento` (`asiento`);

--
-- Indices de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aeropuerto_salida` (`aeropuerto_salida`),
  ADD KEY `aeropuerto_llegada` (`aeropuerto_llegada`);

--
-- Indices de la tabla `vueloxcabina`
--
ALTER TABLE `vueloxcabina`
  ADD PRIMARY KEY (`idvuelo`,`idcabina`),
  ADD KEY `idcabina` (`idcabina`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `escala`
--
ALTER TABLE `escala`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aeropuerto`
--
ALTER TABLE `aeropuerto`
  ADD CONSTRAINT `aeropuerto_ibfk_1` FOREIGN KEY (`ciudad`) REFERENCES `ciudad` (`id`);

--
-- Filtros para la tabla `asiento`
--
ALTER TABLE `asiento`
  ADD CONSTRAINT `asiento_ibfk_1` FOREIGN KEY (`cabina`) REFERENCES `cabina` (`id`);

--
-- Filtros para la tabla `cabina`
--
ALTER TABLE `cabina`
  ADD CONSTRAINT `cabina_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipocabina` (`id`),
  ADD CONSTRAINT `cabina_ibfk_2` FOREIGN KEY (`avion`) REFERENCES `avion` (`id`);

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`estado`) REFERENCES `estado` (`id`);

--
-- Filtros para la tabla `escala`
--
ALTER TABLE `escala`
  ADD CONSTRAINT `escala_ibfk_1` FOREIGN KEY (`idvuelo`) REFERENCES `vuelo` (`id`),
  ADD CONSTRAINT `escala_ibfk_2` FOREIGN KEY (`idavion`) REFERENCES `avion` (`id`),
  ADD CONSTRAINT `escala_ibfk_3` FOREIGN KEY (`aeropuerto`) REFERENCES `aeropuerto` (`id`);

--
-- Filtros para la tabla `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`pais`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `tiquete`
--
ALTER TABLE `tiquete`
  ADD CONSTRAINT `tiquete_ibfk_1` FOREIGN KEY (`vuelo`) REFERENCES `vuelo` (`id`),
  ADD CONSTRAINT `tiquete_ibfk_2` FOREIGN KEY (`asiento`) REFERENCES `asiento` (`id`);

--
-- Filtros para la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD CONSTRAINT `vuelo_ibfk_1` FOREIGN KEY (`aeropuerto_salida`) REFERENCES `aeropuerto` (`id`),
  ADD CONSTRAINT `vuelo_ibfk_2` FOREIGN KEY (`aeropuerto_llegada`) REFERENCES `aeropuerto` (`id`);

--
-- Filtros para la tabla `vueloxcabina`
--
ALTER TABLE `vueloxcabina`
  ADD CONSTRAINT `vueloxcabina_ibfk_2` FOREIGN KEY (`idcabina`) REFERENCES `cabina` (`id`),
  ADD CONSTRAINT `vueloxcabina_ibfk_3` FOREIGN KEY (`idvuelo`) REFERENCES `vuelo` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
