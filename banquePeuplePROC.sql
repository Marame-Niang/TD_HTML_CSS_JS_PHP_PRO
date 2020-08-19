-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 19 août 2020 à 13:00
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `BanquePeuplePROC`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `numero` varchar(11) NOT NULL,
  `mat` varchar(11) DEFAULT NULL,
  `rib` int(3) NOT NULL,
  `solde` double(10,5) NOT NULL,
  `dateOuverture` date NOT NULL,
  `nomEmpl` varchar(50) DEFAULT NULL,
  `telEmpl` varchar(20) DEFAULT NULL,
  `agios` double(10,5) DEFAULT NULL,
  `fraisOuverture` double(10,5) DEFAULT NULL,
  `remuneration` double(10,5) DEFAULT NULL,
  `dateDebut` date DEFAULT NULL,
  `dateFin` date DEFAULT NULL,
  `typeCompte` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`numero`, `mat`, `rib`, `solde`, `dateOuverture`, `nomEmpl`, `telEmpl`, `agios`, `fraisOuverture`, `remuneration`, `dateDebut`, `dateFin`, `typeCompte`) VALUES
('3B9JN9EP', 'CMRJAA6E', 1, 0.00000, '2020-08-18', NULL, NULL, NULL, 25000.00000, 10000.00000, NULL, NULL, 1),
('3FM273E8', 'A2JKUEM9', 1, 0.00000, '2020-08-19', NULL, NULL, NULL, 25000.00000, 10000.00000, '2020-08-19', '2021-08-19', 3),
('MM3DCR7B', 'CMRJAA6E', 1, 0.00000, '2020-08-18', NULL, NULL, NULL, 25000.00000, 10000.00000, NULL, NULL, 1),
('NHENVVK8', 'MBMJBHTJ', 1, 0.00000, '2020-08-19', NULL, NULL, NULL, 25000.00000, 10000.00000, NULL, NULL, 1),
('UKV2RKBM', 'T3RPMUGK', 1, 0.00000, '2020-08-19', NULL, NULL, 10000.00000, NULL, NULL, NULL, NULL, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `numAgence` (`mat`),
  ADD KEY `typeCompte` (`typeCompte`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `compte_ibfk_1` FOREIGN KEY (`mat`) REFERENCES `personne` (`matricule`),
  ADD CONSTRAINT `compte_ibfk_2` FOREIGN KEY (`typeCompte`) REFERENCES `typecompte` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
