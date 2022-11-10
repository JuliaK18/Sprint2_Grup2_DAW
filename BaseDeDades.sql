-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 10-11-2022 a las 19:09:05
-- Versión del servidor: 10.5.2-MariaDB-1:10.5.2+maria~bionic
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mirmeets2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Insignies`
--

CREATE TABLE `Insignies` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estructura de tabla para la tabla `Insignies_Usuaris`
--

CREATE TABLE `Insignies_Usuaris` (
  `Id` int(11) NOT NULL,
  `IdUsuari` int(11) NOT NULL,
  `IdInsignia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Estructura de tabla para la tabla `Magrada`
--

CREATE TABLE `Magrada` (
  `Id` int(11) NOT NULL,
  `Data` datetime DEFAULT NULL,
  `IdPublicacio` int(11) NOT NULL,
  `IdUsuari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estructura de tabla para la tabla `Notificacio`
--

CREATE TABLE `Notificacio` (
  `Id` int(11) NOT NULL,
  `Tipus` varchar(50) NOT NULL,
  `Censurat` tinyint(1) DEFAULT NULL,
  `IdPublicacio` int(11) NOT NULL,
  `IdRetweet` int(11) NOT NULL,
  `IdUsuari` int(11) NOT NULL,
  `IdMagrada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Publicacio`
--

CREATE TABLE `Publicacio` (
  `Id` int(11) NOT NULL,
  `DataPublicacio` datetime NOT NULL,
  `Censurat` tinyint(1) DEFAULT NULL,
  `IdPost` int(11) NOT NULL,
  `IdComentari` int(11) NOT NULL,
  `IdUsuari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estructura de tabla para la tabla `Publicacio_Topic`
--

CREATE TABLE `Publicacio_Topic` (
  `Id` int(11) NOT NULL,
  `IdPublicacio` int(11) NOT NULL,
  `IdTopic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Estructura de tabla para la tabla `Recurs`
--

CREATE TABLE `Recurs` (
  `Id` int(11) NOT NULL,
  `TipusRecurs` varchar(50) NOT NULL,
  `Referencia` varchar(100) NOT NULL,
  `IdComentari` varchar(50) DEFAULT NULL,
  `Ocult` tinyint(1) NOT NULL,
  `IdPublicacio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Retweet`
--

CREATE TABLE `Retweet` (
  `Id` int(11) NOT NULL,
  `Data` datetime NOT NULL,
  `IdPublicacio` int(11) NOT NULL,
  `IdUsuari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipusUsuari`
--

CREATE TABLE `TipusUsuari` (
  `Id` int(11) NOT NULL,
  `TipusUsuari` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estructura de tabla para la tabla `Topic`
--

CREATE TABLE `Topic` (
  `Id` int(11) NOT NULL,
  `Topic` varchar(50) NOT NULL,
  `Censurat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Estructura de tabla para la tabla `Usuari`
--

CREATE TABLE `Usuari` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Cognom` varchar(50) DEFAULT NULL,
  `DNI` varchar(50) DEFAULT NULL,
  `Telefon` varchar(50) DEFAULT NULL,
  `DataNaixement` datetime DEFAULT NULL,
  `DataInscripcio` datetime DEFAULT NULL,
  `NomUsuari` varchar(50) NOT NULL,
  `Contrasenya` varchar(255) NOT NULL,
  `CorreuElectronic` varchar(50) NOT NULL,
  `EstatVerificacio` tinyint(1) DEFAULT NULL,
  `Bloquejat` tinyint(1) DEFAULT NULL,
  `Validat` tinyint(1) DEFAULT NULL,
  `Biografia` varchar(500) DEFAULT NULL,
  `Web` varchar(500) DEFAULT NULL,
  `IdTipusUsuari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Insignies`
--
ALTER TABLE `Insignies`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Insignies_Usuaris`
--
ALTER TABLE `Insignies_Usuaris`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdUsuari` (`IdUsuari`),
  ADD KEY `IdInsignia` (`IdInsignia`);

--
-- Indices de la tabla `Magrada`
--
ALTER TABLE `Magrada`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdPublicacio` (`IdPublicacio`),
  ADD KEY `IdUsuari` (`IdUsuari`);

--
-- Indices de la tabla `Notificacio`
--
ALTER TABLE `Notificacio`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdPublicacio` (`IdPublicacio`),
  ADD KEY `IdRetweet` (`IdRetweet`),
  ADD KEY `IdUsuari` (`IdUsuari`),
  ADD KEY `IdMagrada` (`IdMagrada`);

--
-- Indices de la tabla `Publicacio`
--
ALTER TABLE `Publicacio`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdComentari` (`IdComentari`),
  ADD KEY `IdUsuari` (`IdUsuari`);

--
-- Indices de la tabla `Publicacio_Topic`
--
ALTER TABLE `Publicacio_Topic`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdPublicacio` (`IdPublicacio`),
  ADD KEY `IdTopic` (`IdTopic`);

--
-- Indices de la tabla `Recurs`
--
ALTER TABLE `Recurs`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdPublicacio` (`IdPublicacio`);

--
-- Indices de la tabla `Retweet`
--
ALTER TABLE `Retweet`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdPublicacio` (`IdPublicacio`),
  ADD KEY `IdUsuari` (`IdUsuari`);

--
-- Indices de la tabla `TipusUsuari`
--
ALTER TABLE `TipusUsuari`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Topic`
--
ALTER TABLE `Topic`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Usuari`
--
ALTER TABLE `Usuari`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdTipusUsuari` (`IdTipusUsuari`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Insignies`
--
ALTER TABLE `Insignies`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Insignies_Usuaris`
--
ALTER TABLE `Insignies_Usuaris`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Magrada`
--
ALTER TABLE `Magrada`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Publicacio`
--
ALTER TABLE `Publicacio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Publicacio_Topic`
--
ALTER TABLE `Publicacio_Topic`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Recurs`
--
ALTER TABLE `Recurs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Retweet`
--
ALTER TABLE `Retweet`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `TipusUsuari`
--
ALTER TABLE `TipusUsuari`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Topic`
--
ALTER TABLE `Topic`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Usuari`
--
ALTER TABLE `Usuari`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Insignies_Usuaris`
--
ALTER TABLE `Insignies_Usuaris`
  ADD CONSTRAINT `insignies_usuaris_ibfk_1` FOREIGN KEY (`IdUsuari`) REFERENCES `Usuari` (`Id`),
  ADD CONSTRAINT `insignies_usuaris_ibfk_2` FOREIGN KEY (`IdInsignia`) REFERENCES `Insignies` (`Id`);

--
-- Filtros para la tabla `Magrada`
--
ALTER TABLE `Magrada`
  ADD CONSTRAINT `magrada_ibfk_1` FOREIGN KEY (`IdPublicacio`) REFERENCES `Publicacio` (`Id`),
  ADD CONSTRAINT `magrada_ibfk_2` FOREIGN KEY (`IdUsuari`) REFERENCES `Usuari` (`Id`);

--
-- Filtros para la tabla `Notificacio`
--
ALTER TABLE `Notificacio`
  ADD CONSTRAINT `notificacio_ibfk_1` FOREIGN KEY (`IdPublicacio`) REFERENCES `Publicacio` (`Id`),
  ADD CONSTRAINT `notificacio_ibfk_2` FOREIGN KEY (`IdRetweet`) REFERENCES `Retweet` (`Id`),
  ADD CONSTRAINT `notificacio_ibfk_3` FOREIGN KEY (`IdUsuari`) REFERENCES `Usuari` (`Id`),
  ADD CONSTRAINT `notificacio_ibfk_4` FOREIGN KEY (`IdMagrada`) REFERENCES `Magrada` (`Id`);

--
-- Filtros para la tabla `Publicacio`
--
ALTER TABLE `Publicacio`
  ADD CONSTRAINT `publicacio_ibfk_1` FOREIGN KEY (`IdComentari`) REFERENCES `Publicacio` (`Id`),
  ADD CONSTRAINT `publicacio_ibfk_2` FOREIGN KEY (`IdUsuari`) REFERENCES `Usuari` (`Id`);

--
-- Filtros para la tabla `Publicacio_Topic`
--
ALTER TABLE `Publicacio_Topic`
  ADD CONSTRAINT `publicacio_topic_ibfk_1` FOREIGN KEY (`IdPublicacio`) REFERENCES `Publicacio` (`Id`),
  ADD CONSTRAINT `publicacio_topic_ibfk_2` FOREIGN KEY (`IdTopic`) REFERENCES `Topic` (`Id`);

--
-- Filtros para la tabla `Recurs`
--
ALTER TABLE `Recurs`
  ADD CONSTRAINT `recurs_ibfk_1` FOREIGN KEY (`IdPublicacio`) REFERENCES `Publicacio` (`Id`);

--
-- Filtros para la tabla `Retweet`
--
ALTER TABLE `Retweet`
  ADD CONSTRAINT `retweet_ibfk_1` FOREIGN KEY (`IdPublicacio`) REFERENCES `Publicacio` (`Id`),
  ADD CONSTRAINT `retweet_ibfk_2` FOREIGN KEY (`IdUsuari`) REFERENCES `Usuari` (`Id`);

--
-- Filtros para la tabla `Usuari`
--
ALTER TABLE `Usuari`
  ADD CONSTRAINT `usuari_ibfk_1` FOREIGN KEY (`IdTipusUsuari`) REFERENCES `TipusUsuari` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
