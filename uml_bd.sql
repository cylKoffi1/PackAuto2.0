-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 12 juil. 2023 à 09:14
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
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `idMarque` int NOT NULL AUTO_INCREMENT,
  `libMarque` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idMarque`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`idMarque`, `libMarque`) VALUES
(1, 'mercedes'),
(2, 'Audi'),
(3, 'peugeot'),
(4, 'toyota'),
(5, 'mitsubishi'),
(6, 'Suzuki');

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
-- Structure de la table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `idVoit` int NOT NULL AUTO_INCREMENT,
  `matVoiture` text COLLATE utf8mb4_general_ci NOT NULL,
  `nbrePlace` int NOT NULL,
  `puissanceMax` int NOT NULL,
  `idMarque` int NOT NULL,
  `idBoiteV` int NOT NULL,
  `idCarburant` int NOT NULL,
  `idTemperature` int NOT NULL,
  `Date` date NOT NULL,
  `photoV` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idVoit`),
  KEY `idDate` (`Date`),
  KEY `idMarque` (`idMarque`,`idBoiteV`,`idCarburant`,`idTemperature`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`idVoit`, `matVoiture`, `nbrePlace`, `puissanceMax`, `idMarque`, `idBoiteV`, `idCarburant`, `idTemperature`, `Date`, `photoV`) VALUES
(5, 'AB 123 CD', 4, 120, 4, 1, 1, 1, '2023-07-11', 'C:\\Users\\cylko\\OneDrive\\Documents\\NetBeansProjects\\PackAuto\\PackAuto\\src\\voitureImg\\toyota bz4x.jpeg'),
(6, 'AV 133 CI', 4, 125, 1, 1, 2, 2, '2023-07-11', 'C:\\Users\\cylko\\OneDrive\\Documents\\NetBeansProjects\\PackAuto\\PackAuto\\src\\voitureImg\\Mercedes-Maybach_S_680_Haute_Voiture_concept_009.jpg'),
(7, 'DC 843 CI', 2, 110, 1, 1, 2, 1, '2023-07-11', 'C:\\Users\\cylko\\OneDrive\\Documents\\NetBeansProjects\\PackAuto\\PackAuto\\src\\voitureImg\\mercedes.jpeg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
