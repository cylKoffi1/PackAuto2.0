-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 06 juil. 2023 à 21:22
-- Version du serveur : 8.0.30
-- Version de PHP : 8.2.8

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
-- Structure de la table `boitevitesse`
--

CREATE TABLE `boitevitesse` (
  `idBoiteV` int NOT NULL,
  `libBoiteV` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `carburant` (
  `idCarburant` int NOT NULL,
  `libCarburant` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `datecirculation` (
  `idDate` int NOT NULL,
  `libDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `enregistrementrespopark`
--

CREATE TABLE `enregistrementrespopark` (
  `nomRP` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `prenomRP` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `DateNaisseRP` date NOT NULL,
  `LieuNaissRP` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `MatriculeRP` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `mailRP` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `mdpRP` varchar(5) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `idMarque` int NOT NULL,
  `libMarque` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `temperature` (
  `idTemperature` int NOT NULL,
  `libTemperature` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `voiture` (
  `matVoiture` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nbrePlace` int NOT NULL,
  `puissanceMax` int NOT NULL,
  `idMarque` int NOT NULL,
  `idBoiteV` int NOT NULL,
  `idCarburant` int NOT NULL,
  `idTemperature` int NOT NULL,
  `idDate` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `boitevitesse`
--
ALTER TABLE `boitevitesse`
  ADD PRIMARY KEY (`idBoiteV`);

--
-- Index pour la table `carburant`
--
ALTER TABLE `carburant`
  ADD PRIMARY KEY (`idCarburant`);

--
-- Index pour la table `datecirculation`
--
ALTER TABLE `datecirculation`
  ADD PRIMARY KEY (`idDate`);

--
-- Index pour la table `enregistrementrespopark`
--
ALTER TABLE `enregistrementrespopark`
  ADD PRIMARY KEY (`MatriculeRP`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`idMarque`);

--
-- Index pour la table `temperature`
--
ALTER TABLE `temperature`
  ADD PRIMARY KEY (`idTemperature`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`matVoiture`),
  ADD KEY `idDate` (`idDate`),
  ADD KEY `idMarque` (`idMarque`,`idBoiteV`,`idCarburant`,`idTemperature`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `boitevitesse`
--
ALTER TABLE `boitevitesse`
  MODIFY `idBoiteV` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `carburant`
--
ALTER TABLE `carburant`
  MODIFY `idCarburant` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `datecirculation`
--
ALTER TABLE `datecirculation`
  MODIFY `idDate` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `idMarque` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `temperature`
--
ALTER TABLE `temperature`
  MODIFY `idTemperature` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
