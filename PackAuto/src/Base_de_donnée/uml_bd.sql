-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 19 juil. 2023 à 16:48
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `uml_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` int NOT NULL AUTO_INCREMENT,
  `nomAdmin` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `loginAdmin` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mdpAdmin` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`idAdmin`, `nomAdmin`, `loginAdmin`, `mdpAdmin`) VALUES
(1, 'koffi', 'cylkoffi', 'betsa');

-- --------------------------------------------------------

--
-- Structure de la table `assurance`
--

DROP TABLE IF EXISTS `assurance`;
CREATE TABLE IF NOT EXISTS `assurance` (
  `idAss` int NOT NULL AUTO_INCREMENT,
  `compagnie` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `numPolice` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `dateDebut` date NOT NULL,
  `dateExpir` date NOT NULL,
  `typeAss` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `montantAss` decimal(10,0) NOT NULL,
  `contactCompa` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idAss`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `assurance`
--

INSERT INTO `assurance` (`idAss`, `compagnie`, `numPolice`, `dateDebut`, `dateExpir`, `typeAss`, `montantAss`, `contactCompa`) VALUES
(1, 'NSIA Assurances', '2134536453', '2022-07-15', '2026-09-19', 'Assurance Bris de Glace', '50000', '0103204629');

-- --------------------------------------------------------

--
-- Structure de la table `boitevitesse`
--

DROP TABLE IF EXISTS `boitevitesse`;
CREATE TABLE IF NOT EXISTS `boitevitesse` (
  `idBoiteV` int NOT NULL AUTO_INCREMENT,
  `libBoiteV` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idBoiteV`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `boitevitesse`
--

INSERT INTO `boitevitesse` (`idBoiteV`, `libBoiteV`) VALUES
(1, 'Boite automatique'),
(2, 'Boite manuelle');

-- --------------------------------------------------------

--
-- Structure de la table `carburant`
--

DROP TABLE IF EXISTS `carburant`;
CREATE TABLE IF NOT EXISTS `carburant` (
  `idCarburant` int NOT NULL AUTO_INCREMENT,
  `libCarburant` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idCarburant`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `carburant`
--

INSERT INTO `carburant` (`idCarburant`, `libCarburant`) VALUES
(1, 'essence super sans plomb'),
(2, 'gasoil');

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

DROP TABLE IF EXISTS `chauffeur`;
CREATE TABLE IF NOT EXISTS `chauffeur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `adresse` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `numéroPermis` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `dateEmbauche` date NOT NULL,
  `dateFinContrat` date NOT NULL,
  `dateObtentionPermis` date NOT NULL,
  `dateValiditéPermis` date NOT NULL,
  `ville` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` int NOT NULL,
  `salaire` decimal(10,0) NOT NULL,
  `disponibilité` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `photoChauf` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chauffeur`
--

INSERT INTO `chauffeur` (`id`, `nom`, `prenom`, `adresse`, `numéroPermis`, `dateEmbauche`, `dateFinContrat`, `dateObtentionPermis`, `dateValiditéPermis`, `ville`, `email`, `telephone`, `salaire`, `disponibilité`, `photoChauf`) VALUES
(1, 'Koffi', 'jean claude', 'Bassam, monkeville', '567938321', '2019-07-13', '2025-07-13', '2019-08-21', '2026-08-21', 'Grand-Bassam', 'jeanclaude@gmail.com', 708764521, '150000', 'disponible', 'C:\\Users\\cylko\\OneDrive\\Dcument de cours\\X.JPG');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int NOT NULL,
  `nomCl` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prenomCl` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lieuNaiss` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `dateNaiss` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `nomCl`, `prenomCl`, `lieuNaiss`, `dateNaiss`) VALUES
(0, 'diomande', 'dely ange', 'Abidjan', '1997-07-10'),
(0, 'kouassi', 'jean noel', 'Abidjan', '1993-11-02');

-- --------------------------------------------------------

--
-- Structure de la table `consommation`
--

DROP TABLE IF EXISTS `consommation`;
CREATE TABLE IF NOT EXISTS `consommation` (
  `idCon` int NOT NULL,
  `dateCon` date NOT NULL,
  `quantitéCon` int NOT NULL,
  `kilometrage` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `datecirculation`
--

DROP TABLE IF EXISTS `datecirculation`;
CREATE TABLE IF NOT EXISTS `datecirculation` (
  `idDate` int NOT NULL AUTO_INCREMENT,
  `libDate` date NOT NULL,
  PRIMARY KEY (`idDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `enregistrementrespopark`
--

DROP TABLE IF EXISTS `enregistrementrespopark`;
CREATE TABLE IF NOT EXISTS `enregistrementrespopark` (
  `nomRP` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prenomRP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DateNaisseRP` date NOT NULL,
  `LieuNaissRP` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MatriculeRP` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mailRP` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mdpRP` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`MatriculeRP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `entretien`
--

DROP TABLE IF EXISTS `entretien`;
CREATE TABLE IF NOT EXISTS `entretien` (
  `idEntretien` int NOT NULL AUTO_INCREMENT,
  `dateEntretien` date NOT NULL,
  `compagni` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `DescEntretien` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `coutEntretien` decimal(10,0) NOT NULL,
  `matVoiture` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `numero` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `kilometrage` int NOT NULL,
  `prochainVisite` date NOT NULL,
  PRIMARY KEY (`idEntretien`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `entretien`
--

INSERT INTO `entretien` (`idEntretien`, `dateEntretien`, `compagni`, `DescEntretien`, `coutEntretien`, `matVoiture`, `numero`, `kilometrage`, `prochainVisite`) VALUES
(1, '2023-06-16', 'SIBAuto', 'moteur défaillant que nous avons changé ', '200000', '3224AF02', '0103020304', 55000, '2024-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE IF NOT EXISTS `evaluation` (
  `idEvaluation` int NOT NULL AUTO_INCREMENT,
  `idChauffeur` int DEFAULT NULL,
  `idClient` int DEFAULT NULL,
  `dateEvaluation` date DEFAULT NULL,
  `noteConduite` int DEFAULT NULL,
  `commentaires` text COLLATE utf8mb4_general_ci,
  `courtoisie` int DEFAULT NULL,
  `ponctualite` int DEFAULT NULL,
  `connaissanceItineraires` int DEFAULT NULL,
  `pointDepart` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pointArrivee` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `duree` int DEFAULT NULL,
  `note` double NOT NULL,
  PRIMARY KEY (`idEvaluation`),
  KEY `idChauffeur` (`idChauffeur`),
  KEY `idClient` (`idClient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gamme`
--

DROP TABLE IF EXISTS `gamme`;
CREATE TABLE IF NOT EXISTS `gamme` (
  `idGamme` int NOT NULL AUTO_INCREMENT,
  `libGamme` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `idMarque` int NOT NULL,
  PRIMARY KEY (`idGamme`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gamme`
--

INSERT INTO `gamme` (`idGamme`, `libGamme`, `idMarque`) VALUES
(1, 'Classe A', 1),
(2, 'Classe B', 1),
(3, 'Classe C', 1),
(4, 'Classe E', 1),
(5, 'Classe S', 1),
(6, 'GLA', 1),
(7, 'GLC', 1),
(8, 'GLE', 1),
(9, 'GLS', 1),
(10, 'AMG GT', 1),
(11, 'Série 1', 2),
(12, 'Série 2', 2),
(13, 'Série 3', 2),
(14, 'Série 4', 2),
(15, 'Série 5', 2),
(16, 'X1', 2),
(17, 'X3', 2),
(18, 'X5', 2),
(19, 'X6', 2),
(20, 'i3', 2),
(21, 'A1', 3),
(22, 'A3', 3),
(23, 'A4', 3),
(24, 'A5', 3),
(25, 'A6', 3),
(26, 'Q3', 3),
(27, 'Q5', 3),
(28, 'Q7', 3),
(29, 'Q8', 3),
(30, 'TT', 3),
(31, 'Yaris', 4),
(32, 'Corolla', 4),
(33, 'Camry', 4),
(34, 'Rav4', 4),
(35, 'Highlander', 4),
(36, 'C-HR', 4),
(37, 'Sienna', 4),
(38, 'Tacoma', 4),
(39, 'Tundra', 4),
(40, 'Prius', 4),
(41, 'Civic', 5),
(42, 'Accord', 5),
(43, 'HR-V', 5),
(44, 'CR-V', 5),
(45, 'Pilot', 5),
(46, 'Odyssey', 5),
(47, 'Ridgeline', 5),
(48, 'Insight', 5),
(49, 'Fit', 5),
(50, 'Clarity', 5),
(51, 'Fiesta', 6),
(52, 'Focus', 6),
(53, 'Fusion', 6),
(54, 'Mustang', 6),
(55, 'Escape', 6),
(56, 'Edge', 6),
(57, 'Explorer', 6),
(58, 'Expedition', 6),
(59, 'Ranger', 6),
(60, 'F-150', 6),
(61, 'Spark', 7),
(62, 'Sonic', 7),
(63, 'Cruze', 7),
(64, 'Malibu', 7),
(65, 'Impala', 7),
(66, 'Trax', 7),
(67, 'Equinox', 7),
(68, 'Traverse', 7),
(69, 'Tahoe', 7),
(70, 'Suburban', 7),
(71, 'Polo', 8),
(72, 'Golf', 8),
(73, 'Passat', 8),
(74, 'Arteon', 8),
(75, 'Tiguan', 8),
(76, 'Atlas', 8),
(77, 'Touareg', 8),
(78, 'Jetta', 8),
(79, 'Beetle', 8),
(80, 'ID.4', 8);

-- --------------------------------------------------------

--
-- Structure de la table `locationv`
--

DROP TABLE IF EXISTS `locationv`;
CREATE TABLE IF NOT EXISTS `locationv` (
  `idLoca` int NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `idClient` int NOT NULL,
  `idCon` int NOT NULL,
  `matVoiture` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `idMarque` int NOT NULL AUTO_INCREMENT,
  `libMarque` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idMarque`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`idMarque`, `libMarque`) VALUES
(1, 'Mercedes-Benz'),
(2, 'BMW'),
(3, 'Audi'),
(4, 'Toyota'),
(5, 'Honda'),
(6, 'Ford'),
(7, 'Chevrolet'),
(8, 'Volkswagen'),
(9, 'Nissan'),
(10, 'Hyundai');

-- --------------------------------------------------------

--
-- Structure de la table `modele`
--

DROP TABLE IF EXISTS `modele`;
CREATE TABLE IF NOT EXISTS `modele` (
  `idModele` int NOT NULL AUTO_INCREMENT,
  `libModele` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `idGamme` int NOT NULL,
  PRIMARY KEY (`idModele`)
) ENGINE=MyISAM AUTO_INCREMENT=449 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `modele`
--

INSERT INTO `modele` (`idModele`, `libModele`, `idGamme`) VALUES
(1, 'A180', 1),
(2, 'A200', 1),
(3, 'A220', 1),
(4, 'A250', 1),
(5, 'A35 AMG', 1),
(6, 'A45 AMG', 1),
(7, 'A180d', 1),
(8, 'A200d', 1),
(9, 'A220d', 1),
(10, 'A250e', 1),
(11, 'B180', 2),
(12, 'B200', 2),
(13, 'B220', 2),
(14, 'B250', 2),
(15, 'B35 AMG', 2),
(16, 'B200d', 2),
(17, 'B220d', 2),
(18, 'B250e', 2),
(19, 'B200d', 2),
(20, 'B220d', 2),
(21, 'C180', 3),
(22, 'C200', 3),
(23, 'C220', 3),
(24, 'C300', 3),
(25, 'C43 AMG', 3),
(26, 'C63 AMG', 3),
(27, 'C180d', 3),
(28, 'C200d', 3),
(29, 'C220d', 3),
(30, 'C300e', 3),
(31, 'E200', 4),
(32, 'E300', 4),
(33, 'E350', 4),
(34, 'E450', 4),
(35, 'E53 AMG', 4),
(36, 'E63 AMG', 4),
(37, 'E300e', 4),
(38, 'E300de', 4),
(39, 'E400d', 4),
(40, 'E53 AMG 4MATIC+', 4),
(41, 'S350', 5),
(42, 'S450', 5),
(43, 'S500', 5),
(44, 'S560', 5),
(45, 'S63 AMG', 5),
(46, 'S65 AMG', 5),
(47, 'S500e', 5),
(48, 'S560e', 5),
(49, 'S450 4MATIC', 5),
(50, 'S560 4MATIC', 5),
(51, 'GLA 200', 6),
(52, 'GLA 250', 6),
(53, 'GLA 35 AMG', 6),
(54, 'GLA 200d', 6),
(55, 'GLA 200d 4MATIC', 6),
(56, 'GLA 250 4MATIC', 6),
(57, 'GLA 45 AMG 4MATIC', 6),
(58, 'GLA 250e', 6),
(59, 'GLA 200d', 6),
(60, 'GLA 200d 4MATIC', 6),
(61, 'GLC 200', 7),
(62, 'GLC 300', 7),
(63, 'GLC 43 AMG', 7),
(64, 'GLC 63 AMG', 7),
(65, 'GLC 300e', 7),
(66, 'GLC 220d', 7),
(67, 'GLC 300d', 7),
(68, 'GLC 400d', 7),
(69, 'GLC 43 AMG 4MATIC', 7),
(70, 'GLC 63 AMG 4MATIC', 7),
(71, 'GLE 350', 8),
(72, 'GLE 450', 8),
(73, 'GLE 53 AMG', 8),
(74, 'GLE 63 AMG', 8),
(75, 'GLE 300d', 8),
(76, 'GLE 350de', 8),
(77, 'GLE 450 4MATIC', 8),
(78, 'GLE 53 AMG 4MATIC+', 8),
(79, 'GLE 63 AMG 4MATIC', 8),
(80, 'GLE 300d 4MATIC', 8),
(81, 'GLS 450', 9),
(82, 'GLS 580', 9),
(83, 'GLS 63 AMG', 9),
(84, 'GLS 450 4MATIC', 9),
(85, 'GLS 580 4MATIC', 9),
(86, 'GLS 63 AMG 4MATIC', 9),
(87, 'GLS 450', 9),
(88, 'GLS 580', 9),
(89, 'GLS 63 AMG', 9),
(90, 'GLS 450 4MATIC', 9),
(91, 'AMG GT', 10),
(92, 'AMG GT S', 10),
(93, 'AMG GT C', 10),
(94, 'AMG GT R', 10),
(95, 'AMG GT Roadster', 10),
(96, 'AMG GT S Roadster', 10),
(97, 'AMG GT C Roadster', 10),
(98, 'AMG GT R Roadster', 10),
(99, 'AMG GT Black Series', 10),
(100, 'AMG GT R Pro', 10),
(101, '118i', 11),
(102, '120i', 11),
(103, 'M135i', 11),
(104, '118d', 11),
(105, '120d', 11),
(106, 'M135d', 11),
(107, '118i xDrive', 11),
(108, '120i xDrive', 11),
(109, 'M135i xDrive', 11),
(110, '118d xDrive', 11),
(111, '218i', 12),
(112, '220i', 12),
(113, 'M240i', 12),
(114, '218d', 12),
(115, '220d', 12),
(116, 'M240d', 12),
(117, '218i xDrive', 12),
(118, '220i xDrive', 12),
(119, 'M240i xDrive', 12),
(120, '218d xDrive', 12),
(121, '318i', 13),
(122, '320i', 13),
(123, '330i', 13),
(124, 'M340i', 13),
(125, '318d', 13),
(126, '320d', 13),
(127, '330d', 13),
(128, 'M340d', 13),
(129, '318i xDrive', 13),
(130, '320i xDrive', 13),
(131, '420i', 14),
(132, '430i', 14),
(133, 'M440i', 14),
(134, '420d', 14),
(135, '430d', 14),
(136, 'M440d', 14),
(137, '420i xDrive', 14),
(138, '430i xDrive', 14),
(139, 'M440i xDrive', 14),
(140, '420d xDrive', 14),
(141, '520i', 15),
(142, '530i', 15),
(143, '540i', 15),
(144, 'M550i', 15),
(145, '520d', 15),
(146, '530d', 15),
(147, '540d', 15),
(148, '520i xDrive', 15),
(149, '530i xDrive', 15),
(150, '540i xDrive', 15),
(151, 'X1 sDrive18i', 16),
(152, 'X1 sDrive20i', 16),
(153, 'X1 xDrive20i', 16),
(154, 'X1 sDrive18d', 16),
(155, 'X1 sDrive20d', 16),
(156, 'X1 xDrive20d', 16),
(157, 'X1 xDrive25e', 16),
(158, 'X1 xDrive25d', 16),
(159, 'X1 xDrive25i', 16),
(160, 'X1 xDrive25e', 16),
(161, 'X3 sDrive20i', 17),
(162, 'X3 xDrive20i', 17),
(163, 'X3 xDrive30i', 17),
(164, 'X3 M40i', 17),
(165, 'X3 sDrive20d', 17),
(166, 'X3 xDrive20d', 17),
(167, 'X3 xDrive30d', 17),
(168, 'X3 M40d', 17),
(169, 'X3 xDrive30e', 17),
(170, 'X3 M', 17),
(171, 'X5 xDrive40i', 18),
(172, 'X5 xDrive45e', 18),
(173, 'X5 xDrive50i', 18),
(174, 'X5 M50i', 18),
(175, 'X5 xDrive30d', 18),
(176, 'X5 M50d', 18),
(177, 'X5 xDrive45e', 18),
(178, 'X5 xDrive40d', 18),
(179, 'X6 xDrive40i', 19),
(180, 'X6 xDrive50i', 19),
(181, 'X6 M50i', 19),
(182, 'X6 xDrive30d', 19),
(183, 'X6 xDrive40d', 19),
(184, 'X6 M50d', 19),
(185, 'X6 M', 19),
(186, 'i3 120 Ah', 20),
(187, 'i3s 120 Ah', 20),
(188, 'A1 Sportback', 21),
(189, 'A1 Citycarver', 21),
(190, 'A3 Sportback', 22),
(191, 'A3 Sedan', 22),
(192, 'A3 Cabriolet', 22),
(193, 'A4 Berline', 23),
(194, 'A4 Avant', 23),
(195, 'A4 allroad quattro', 23),
(196, 'S4 Berline', 23),
(197, 'S4 Avant', 23),
(198, 'A4 Berline', 23),
(199, 'A5 Coupé', 24),
(200, 'A5 Sportback', 24),
(201, 'A5 Cabriolet', 24),
(202, 'S5 Coupé', 24),
(203, 'S5 Sportback', 24),
(204, 'A6 Berline', 25),
(205, 'A6 Avant', 25),
(206, 'A6 allroad quattro', 25),
(207, 'S6 Berline', 25),
(208, 'S6 Avant', 25),
(209, 'Q3', 26),
(210, 'Q3 Sportback', 26),
(211, 'Q5', 27),
(212, 'Q5 Sportback', 27),
(213, 'SQ5', 27),
(214, 'Q7', 28),
(215, 'SQ7', 28),
(216, 'Q8', 29),
(217, 'SQ8', 29),
(218, 'TT Coupé', 30),
(219, 'TT Roadster', 30),
(220, 'Yaris', 31),
(221, 'Yaris Cross', 31),
(222, 'Yaris GR', 31),
(223, 'Corolla Berline', 32),
(224, 'Corolla Touring Sports', 32),
(225, 'Corolla GR Sport', 32),
(226, 'Camry', 33),
(227, 'Rav4', 34),
(228, 'Rav4 Plug-in', 34),
(229, 'Rav4 Hybrid', 34),
(230, 'Highlander', 35),
(231, 'C-HR', 36),
(232, 'Sienna', 37),
(233, 'Tacoma', 38),
(234, 'Tundra', 39),
(235, 'Prius', 40),
(236, 'Civic Berline', 41),
(237, 'Civic Coupé', 41),
(238, 'Civic Hatchback', 41),
(239, 'Civic Type R', 41),
(240, 'Accord Berline', 42),
(241, 'Accord Hybrid', 42),
(242, 'HR-V', 43),
(243, 'CR-V', 44),
(244, 'CR-V Hybrid', 44),
(245, 'Pilot', 45),
(246, 'Odyssey', 46),
(247, 'Ridgeline', 47),
(248, 'Insight', 48),
(249, 'Fit', 49),
(250, 'Clarity Fuel Cell', 50),
(251, 'Clarity Electric', 50),
(252, 'Clarity Plug-in Hybrid', 50),
(253, 'Clarity Fuel Cell', 50),
(254, 'Clarity Electric', 50),
(255, 'Clarity Plug-in Hybrid', 50),
(256, 'Golf', 51),
(257, 'Golf GTI', 51),
(258, 'Golf R', 51),
(259, 'Golf GTE', 51),
(260, 'Golf GTD', 51),
(261, 'e-Golf', 51),
(262, 'Golf Variant', 51),
(263, 'Golf Alltrack', 51),
(264, 'Golf Sportsvan', 51),
(265, 'Golf R Variant', 51),
(266, 'Polo', 52),
(267, 'Polo GTI', 52),
(268, 'Polo GTI+', 52),
(269, 'Polo Beats', 52),
(270, 'Polo Life', 52),
(271, 'Polo Style', 52),
(272, 'Polo Comfortline', 52),
(273, 'Polo Highline', 52),
(274, 'Polo Match', 52),
(275, 'Polo R-Line', 52),
(276, 'Passat Berline', 53),
(277, 'Passat Variant', 53),
(278, 'Passat GTE', 53),
(279, 'Passat Alltrack', 53),
(280, 'Passat R-Line', 53),
(281, 'Passat Business', 53),
(282, 'Passat Executive', 53),
(283, 'Passat Lounge', 53),
(284, 'Passat R', 53),
(285, 'Passat Exclusive', 53),
(286, 'Tiguan', 54),
(287, 'Tiguan R-Line', 54),
(288, 'Tiguan Allspace', 54),
(289, 'Tiguan Allspace R-Line', 54),
(290, 'Tiguan Allspace Business', 54),
(291, 'Tiguan Life', 54),
(292, 'Tiguan Elegance', 54),
(293, 'Tiguan Style', 54),
(294, 'Tiguan Comfortline', 54),
(295, 'Tiguan Highline', 54),
(296, 'Touareg', 55),
(297, 'Touareg R', 55),
(298, 'Touareg Elegance', 55),
(299, 'Touareg Executive', 55),
(300, 'Touareg Adventure', 55),
(301, 'Touareg Premium', 55),
(302, 'Touareg Atmosphere', 55),
(303, 'Touareg Innovation', 55),
(304, 'Touareg Atmosphere Plus', 55),
(305, 'Touareg Innovation Plus', 55),
(306, 'Clio', 56),
(307, 'Clio E-TECH Hybrid', 56),
(308, 'Clio RS Line', 56),
(309, 'Clio Initiale Paris', 56),
(310, 'Clio Business', 56),
(311, 'Clio Limited', 56),
(312, 'Clio Zen', 56),
(313, 'Clio Intens', 56),
(314, 'Clio R.S.', 56),
(315, 'Clio Trophy', 56),
(316, 'Captur', 57),
(317, 'Captur E-TECH Plug-in Hybrid', 57),
(318, 'Captur RS Line', 57),
(319, 'Captur Initiale Paris', 57),
(320, 'Captur Business', 57),
(321, 'Captur Limited', 57),
(322, 'Captur Zen', 57),
(323, 'Captur Intens', 57),
(324, 'Captur R.S.', 57),
(325, 'Captur Trophy', 57),
(326, 'Megane Berline', 58),
(327, 'Megane Estate', 58),
(328, 'Megane RS', 58),
(329, 'Megane E-TECH Plug-in Hybrid', 58),
(330, 'Megane RS Line', 58),
(331, 'Megane Business', 58),
(332, 'Megane Limited', 58),
(333, 'Megane Zen', 58),
(334, 'Megane Intens', 58),
(335, 'Megane R.S.', 58),
(336, 'Kadjar', 59),
(337, 'Kadjar E-TECH Plug-in Hybrid', 59),
(338, 'Kadjar RS Line', 59),
(339, 'Kadjar Business', 59),
(340, 'Kadjar Limited', 59),
(341, 'Kadjar Zen', 59),
(342, 'Kadjar Intens', 59),
(343, 'Kadjar R.S.', 59),
(344, 'Kadjar Trophy', 59),
(345, 'Kadjar Initiale Paris', 59),
(346, 'Zoe', 60),
(347, 'Zoe E-TECH Electric', 60),
(348, 'Zoe Série Limitée', 60),
(349, 'Zoe Business', 60),
(350, 'Zoe Zen', 60),
(351, 'Zoe Intens', 60),
(352, 'Zoe R.S.', 60),
(353, 'Zoe Trophy', 60),
(354, 'Zoe Initiale Paris', 60),
(355, 'Zoe GT Line', 60),
(356, 'Giulia', 61),
(357, 'Giulia Quadrifoglio', 61),
(358, 'Giulia Veloce', 61),
(359, 'Giulia Super', 61),
(360, 'Giulia Sprint', 61),
(361, 'Giulia Business', 61),
(362, 'Giulia Speciale', 61),
(363, 'Giulia Executive', 61),
(364, 'Giulia Ti', 61),
(365, 'Giulia Lusso', 61),
(366, 'Stelvio', 62),
(367, 'Stelvio Quadrifoglio', 62),
(368, 'Stelvio Veloce', 62),
(369, 'Stelvio Super', 62),
(370, 'Stelvio Sprint', 62),
(371, 'Stelvio Business', 62),
(372, 'Stelvio Speciale', 62),
(373, 'Stelvio Executive', 62),
(374, 'Stelvio Ti', 62),
(375, 'Stelvio Lusso', 62),
(376, '911 Carrera', 63),
(377, '911 Carrera 4', 63),
(378, '911 Carrera S', 63),
(379, '911 Carrera 4S', 63),
(380, '911 Turbo', 63),
(381, '911 Turbo S', 63),
(382, '911 GT3', 63),
(383, '911 GT3 RS', 63),
(384, '911 GT2 RS', 63),
(385, '911 Targa 4', 63),
(386, 'Cayenne', 64),
(387, 'Cayenne S', 64),
(388, 'Cayenne E-Hybrid', 64),
(389, 'Cayenne Turbo', 64),
(390, 'Cayenne Turbo S', 64),
(391, 'Cayenne GTS', 64),
(392, 'Cayenne Coupe', 64),
(393, 'Cayenne Coupe S', 64),
(394, 'Cayenne Coupe E-Hybrid', 64),
(395, 'Cayenne Coupe Turbo', 64),
(396, 'Macan', 65),
(397, 'Macan S', 65),
(398, 'Macan GTS', 65),
(399, 'Macan Turbo', 65),
(400, 'Macan Turbo S', 65),
(401, 'Macan E-Hybrid', 65),
(402, 'Macan Coupe', 65),
(403, 'Macan Coupe S', 65),
(404, 'Macan Coupe GTS', 65),
(405, 'Macan Coupe Turbo', 65),
(406, 'X5', 66),
(407, 'X5 M50i', 66),
(408, 'X5 M', 66),
(409, 'X5 M Competition', 66),
(410, 'X5 xLine', 66),
(411, 'X5 M50d', 66),
(412, 'X5 xDrive45e', 66),
(413, 'X6', 67),
(414, 'X6 M50i', 67),
(415, 'X6 M', 67),
(416, 'X6 M Competition', 67),
(417, 'X6 xLine', 67),
(418, 'X6 M50d', 67),
(419, 'X6 M50i', 67),
(420, 'X6 M', 67),
(421, 'i3', 68),
(422, 'i3s', 68),
(423, 'A1 Sportback', 69),
(424, 'A1 Citycarver', 69),
(425, 'A3 Berline', 70),
(426, 'A3 Sportback', 70),
(427, 'A4 Berline', 71),
(428, 'A4 Avant', 71),
(429, 'A5 Coupé', 72),
(430, 'A5 Sportback', 72),
(431, 'A5 Cabriolet', 72),
(432, 'A6 Berline', 73),
(433, 'A6 Avant', 73),
(434, 'A6 Allroad', 73),
(435, 'Q3', 74),
(436, 'Q3 Sportback', 74),
(437, 'Q5', 75),
(438, 'Q5 Sportback', 75),
(439, 'Q7', 76),
(440, 'Q7 e-tron', 76),
(441, 'Q8', 77),
(442, 'Q8 e-tron', 77),
(443, 'TT Coupé', 78),
(444, 'TT Roadster', 78),
(445, 'Yaris', 79),
(446, 'Yaris Hybrid', 79),
(447, 'Corolla Berline', 80),
(448, 'Corolla Touring Sports', 80);

-- --------------------------------------------------------

--
-- Structure de la table `temperature`
--

DROP TABLE IF EXISTS `temperature`;
CREATE TABLE IF NOT EXISTS `temperature` (
  `idTemperature` int NOT NULL AUTO_INCREMENT,
  `libTemperature` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idTemperature`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `temperature`
--

INSERT INTO `temperature` (`idTemperature`, `libTemperature`) VALUES
(1, 'Ventilation'),
(2, 'Climatisation'),
(3, 'Chauffage');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

DROP TABLE IF EXISTS `ville`;
CREATE TABLE IF NOT EXISTS `ville` (
  `idVille` int NOT NULL,
  `libVille` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`idVille`, `libVille`) VALUES
(1, 'Abidjan'),
(2, 'Yamoussoukro'),
(3, 'Bouaké'),
(4, 'Daloa'),
(5, 'San Pedro'),
(6, 'Korhogo'),
(7, 'Man'),
(8, 'Abengourou'),
(9, 'Gagnoa'),
(10, 'Divo'),
(11, 'Anyama'),
(12, 'Agboville'),
(13, 'Grand-Bassam'),
(14, 'Bingerville'),
(15, 'Séguela'),
(16, 'Toumodi'),
(17, 'Bondoukou'),
(18, 'Odienne'),
(19, 'Ferkessédougou'),
(20, 'Odienné');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `idVoit` int NOT NULL AUTO_INCREMENT,
  `matVoiture` text COLLATE utf8mb4_general_ci NOT NULL,
  `nbrePlace` int NOT NULL,
  `puissanceMax` int NOT NULL,
  `idMarque` int NOT NULL,
  `idModele` int NOT NULL,
  `idGamme` int NOT NULL,
  `idBoiteV` int NOT NULL,
  `idCarburant` int NOT NULL,
  `idTemperature` int NOT NULL,
  `Date` date NOT NULL,
  `photoV` text COLLATE utf8mb4_general_ci NOT NULL,
  `idAss` int NOT NULL,
  `kilometrage` int NOT NULL,
  PRIMARY KEY (`idVoit`),
  KEY `idDate` (`Date`),
  KEY `idMarque` (`idMarque`,`idBoiteV`,`idCarburant`,`idTemperature`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`idVoit`, `matVoiture`, `nbrePlace`, `puissanceMax`, `idMarque`, `idModele`, `idGamme`, `idBoiteV`, `idCarburant`, `idTemperature`, `Date`, `photoV`, `idAss`, `kilometrage`) VALUES
(1, '6425EH05', 4, 250, 4, 223, 32, 2, 2, 2, '2020-05-16', 'C:\\Users\\cylko\\OneDrive\\Documents\\NetBeansProjects\\PackAuto\\PackAuto\\src\\voitureImg\\peugeot.jpeg', 1, 50000),
(2, '3224AF02', 4, 210, 2, 124, 13, 1, 2, 3, '2023-07-16', 'C:\\Users\\cylko\\OneDrive\\Documents\\NetBeansProjects\\PackAuto\\PackAuto\\src\\voitureImg\\mercedes.jpeg', 1, 55000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
