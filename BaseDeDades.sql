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
-- Volcado de datos para la tabla `Insignies`
--

INSERT INTO `Insignies` (`Id`, `Nom`) VALUES
(1, 'Wallaby, dama'),
(2, 'Lesser masked weaver'),
(3, 'Hawk, ferruginous'),
(4, 'Little grebe'),
(5, 'Turtle, snake-necked'),
(6, 'Goose, knob-nosed'),
(7, 'Bird, black-throated butcher'),
(8, 'Defassa waterbuck'),
(9, 'Eastern grey kangaroo'),
(10, 'Killer whale');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Insignies_Usuaris`
--

CREATE TABLE `Insignies_Usuaris` (
  `Id` int(11) NOT NULL,
  `IdUsuari` int(11) NOT NULL,
  `IdInsignia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Insignies_Usuaris`
--

INSERT INTO `Insignies_Usuaris` (`Id`, `IdUsuari`, `IdInsignia`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

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
-- Volcado de datos para la tabla `Magrada`
--

INSERT INTO `Magrada` (`Id`, `Data`, `IdPublicacio`, `IdUsuari`) VALUES
(1, '2022-04-11 00:00:00', 1, 1),
(2, '2022-03-07 00:00:00', 2, 2),
(3, '2022-05-12 00:00:00', 3, 3),
(4, '2022-09-01 00:00:00', 4, 4),
(5, '2023-03-17 00:00:00', 5, 5),
(6, '2022-01-18 00:00:00', 6, 6),
(7, '2022-08-13 00:00:00', 7, 7),
(8, '2022-03-09 00:00:00', 8, 8),
(9, '2022-05-31 00:00:00', 9, 9),
(10, '2023-06-09 00:00:00', 10, 10);

-- --------------------------------------------------------

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
-- Volcado de datos para la tabla `Publicacio`
--

INSERT INTO `Publicacio` (`Id`, `DataPublicacio`, `Censurat`, `IdPost`, `IdComentari`, `IdUsuari`) VALUES
(1, '2021-01-12 00:00:00', 1, 1, 1, 1),
(2, '2021-01-09 00:00:00', 0, 2, 2, 2),
(3, '2021-01-13 00:00:00', 0, 3, 3, 3),
(4, '2022-10-03 00:00:00', 0, 4, 4, 4),
(5, '2020-01-25 00:00:00', 0, 5, 5, 5),
(6, '2021-01-23 00:00:00', 0, 6, 6, 6),
(7, '2021-08-19 00:00:00', 0, 7, 7, 7),
(8, '2021-12-24 00:00:00', 1, 8, 8, 8),
(9, '2022-06-23 00:00:00', 1, 9, 9, 9),
(10, '2022-01-15 00:00:00', 1, 10, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Publicacio_Topic`
--

CREATE TABLE `Publicacio_Topic` (
  `Id` int(11) NOT NULL,
  `IdPublicacio` int(11) NOT NULL,
  `IdTopic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Publicacio_Topic`
--

INSERT INTO `Publicacio_Topic` (`Id`, `IdPublicacio`, `IdTopic`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

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
-- Volcado de datos para la tabla `TipusUsuari`
--

INSERT INTO `TipusUsuari` (`Id`, `TipusUsuari`) VALUES
(1, 'Admin'),
(2, 'Admin'),
(3, 'Normal'),
(4, 'Normal'),
(5, 'Admin'),
(6, 'Normal'),
(7, 'Admin'),
(8, 'Admin'),
(9, 'Normal'),
(10, 'Normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Topic`
--

CREATE TABLE `Topic` (
  `Id` int(11) NOT NULL,
  `Topic` varchar(50) NOT NULL,
  `Censurat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Topic`
--

INSERT INTO `Topic` (`Id`, `Topic`, `Censurat`) VALUES
(1, '', 0),
(2, '', 0),
(3, '', 1),
(4, '', 0),
(5, '', 0),
(6, '', 1),
(7, '', 0),
(8, '', 1),
(9, '', 0),
(10, '', 0);

-- --------------------------------------------------------

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
-- Volcado de datos para la tabla `Usuari`
--

INSERT INTO `Usuari` (`Id`, `Nom`, `Cognom`, `DNI`, `Telefon`, `DataNaixement`, `DataInscripcio`, `NomUsuari`, `Contrasenya`, `CorreuElectronic`, `EstatVerificacio`, `Bloquejat`, `Validat`, `Biografia`, `Web`, `IdTipusUsuari`) VALUES
(1, 'Wynny', 'Tulleth', '50428705V', '6136824900', '1996-04-23 00:00:00', '2023-02-02 00:00:00', 'wtulleth0', '4gM29KqadX3n', 'wtulleth0@utexas.edu', 1, 0, 1, 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet', '', 1),
(2, 'Krissy', 'Veryan', '66232246H', '1458906051', '1978-06-10 00:00:00', '2022-09-02 00:00:00', 'kveryan1', 'Lt3utrQt4A', 'kveryan1@paypal.com', 1, 1, 1, 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', '', 2),
(3, 'Pietra', 'Georgescu', '31868751J', '7172999614', '1981-05-30 00:00:00', '2023-06-08 00:00:00', 'pgeorgescu2', 'u7K2yHV', 'pgeorgescu2@engadget.com', 0, 0, 1, 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec', '', 3),
(4, 'Benny', 'Ondracek', '50264343K', '4994505263', '1990-03-20 00:00:00', '2021-08-13 00:00:00', 'bondracek3', 'SFkEzRE', 'bondracek3@freewebs.com', 1, 1, 0, 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet', '', 4),
(5, 'Kala', 'Scruby', '74426116B', '7927012123', '1986-04-30 00:00:00', '2022-03-10 00:00:00', 'kscruby4', 'dGPdo02mwJ', 'kscruby4@angelfire.com', 1, 0, 1, 'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo', '', 5),
(6, 'Christiana', 'Bannard', '44561300L', '3523888682', '1997-05-15 00:00:00', '2021-12-07 00:00:00', 'cbannard5', 'RTRow0', 'cbannard5@goodreads.com', 0, 0, 0, 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius', '', 6),
(7, 'Alia', 'Mattin', '19288271M', '8663618492', '1984-12-09 00:00:00', '2021-10-22 00:00:00', 'amattin6', 'UV4RaOla', 'amattin6@reverbnation.com', 1, 1, 1, 'nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut', '', 7),
(8, 'Leena', 'Appleyard', '38482464N', '5106761482', '1975-11-03 00:00:00', '2022-05-31 00:00:00', 'lappleyard7', 'juloepWnIlI', 'lappleyard7@mail.ru', 1, 0, 1, 'aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce', '', 8),
(9, 'Kai', 'Pepon', '28422781L', '7321404087', '1972-03-13 00:00:00', '2022-08-19 00:00:00', 'kpepon8', 'GW5KHqtRU', 'kpepon8@smugmug.com', 1, 1, 0, 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia', '', 9),
(10, 'Katherina', 'Asken', '50033362A', '7117432587', '1996-06-17 00:00:00', '2023-11-22 00:00:00', 'kasken9', 'MHgjqLg2', 'kasken9@patch.com', 0, 0, 1, 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum', '', 10);

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
