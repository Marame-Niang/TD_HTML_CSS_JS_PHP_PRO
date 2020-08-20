-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 20 août 2020 à 14:08
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
-- Structure de la table `adresse`
--

CREATE TABLE `adresse` (
  `id` int(11) UNSIGNED NOT NULL,
  `ville` varchar(20) NOT NULL,
  `dep` varchar(20) DEFAULT NULL,
  `com` varchar(20) DEFAULT NULL,
  `rue` varchar(20) DEFAULT NULL,
  `villa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`id`, `ville`, `dep`, `com`, `rue`, `villa`) VALUES
(1, 'Dakar', 'Pikine', 'Keur Massar', NULL, '11111'),
(2, 'Dakar', 'Pikine', 'Keur Massar', NULL, '22222');

-- --------------------------------------------------------

--
-- Structure de la table `affecter`
--

CREATE TABLE `affecter` (
  `id` int(11) UNSIGNED NOT NULL,
  `mat` varchar(11) NOT NULL,
  `numAgence` varchar(11) NOT NULL,
  `dateAffecter` date NOT NULL,
  `matAffecteur` varchar(11) NOT NULL,
  `etat` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE `agence` (
  `numero` varchar(11) NOT NULL,
  `adrAgence` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `agence`
--

INSERT INTO `agence` (`numero`, `adrAgence`) VALUES
('AGENCE01', 1),
('AGENCE02', 2);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `numero` varchar(11) NOT NULL,
  `mat` varchar(11) DEFAULT NULL,
  `id_entreprise` int(10) UNSIGNED DEFAULT NULL,
  `rib` int(3) NOT NULL,
  `solde` double(10,5) NOT NULL,
  `dateOuverture` date NOT NULL,
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

INSERT INTO `compte` (`numero`, `mat`, `id_entreprise`, `rib`, `solde`, `dateOuverture`, `agios`, `fraisOuverture`, `remuneration`, `dateDebut`, `dateFin`, `typeCompte`) VALUES
('9PV7GDCJ', NULL, 24, 1, 0.00000, '2020-08-20', NULL, 20000.00000, 7500.00000, '2020-08-20', '2021-10-20', 3),
('AVT78HMC', '92PDJE2E', NULL, 1, 0.00000, '2020-08-20', 10000.00000, NULL, NULL, NULL, NULL, 2),
('D2HGNJNV', '7VVFGGCU', NULL, 1, 0.00000, '2020-08-20', NULL, 25000.00000, 10000.00000, NULL, NULL, 1),
('PC8NDJEJ', NULL, 23, 1, 0.00000, '2020-08-20', NULL, 25000.00000, 10000.00000, NULL, NULL, 1),
('WV338JDM', 'P2EABW79', NULL, 1, 0.00000, '2020-08-19', NULL, 25000.00000, 10000.00000, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `id` int(11) UNSIGNED NOT NULL,
  `nom` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `budget` double(50,5) NOT NULL,
  `adr_entreprise` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`id`, `nom`, `tel`, `email`, `login`, `password`, `budget`, `adr_entreprise`) VALUES
(10, 'sococim', '7812267389', 'soco@gmail.com', NULL, NULL, 7000000.00000, 'Castor'),
(11, 'NMA', '7812267389', 'nma@gmail.com', NULL, NULL, 60000000.00000, 'Thiaroye'),
(12, 'brioche  doree', '762338743', 'brioche@gmail.com', NULL, NULL, 90000000.00000, 'Pikine'),
(13, 'brioche  doree', '762338743', 'brioche@gmail.com', NULL, NULL, 90000000.00000, 'Pikine'),
(14, 'voile', '776556575', 'voulou@gmail.com', NULL, NULL, 900000.00000, 'Mbao'),
(15, 'voile', '776556575', 'voulou@gmail.com', NULL, NULL, 900000.00000, 'Mbao'),
(16, 'voile', '776556575', 'voulou@gmail.com', NULL, NULL, 900000.00000, 'Mbao'),
(17, 'voile', '776556575', 'voulou@gmail.com', NULL, NULL, 900000.00000, 'Mbao'),
(18, 'voile', '776556575', 'voulou@gmail.com', NULL, NULL, 900000.00000, 'Mbao'),
(19, 'voile', '776556575', 'voulou@gmail.com', NULL, NULL, 900000.00000, 'Mbao'),
(20, 'voile', '776556575', 'voulou@gmail.com', NULL, NULL, 900000.00000, 'Mbao'),
(21, 'voile', '776556575', 'voulou@gmail.com', NULL, NULL, 900000.00000, 'Mbao'),
(22, 'voile', '776556575', 'voulou@gmail.com', NULL, NULL, 900000.00000, 'Mbao'),
(23, 'voile', '776556575', 'voulou@gmail.com', NULL, NULL, 900000.00000, 'Mbao'),
(24, 'voile', '776556575', 'gyjgjsdg@gmai.com', NULL, NULL, 900000.00000, 'Mbao');

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`id`, `libelle`) VALUES
(1, 'actif'),
(2, 'ferme'),
(3, 'bloque'),
(4, 'geler');

-- --------------------------------------------------------

--
-- Structure de la table `etatcompte`
--

CREATE TABLE `etatcompte` (
  `id` int(11) UNSIGNED NOT NULL,
  `numcompte` varchar(11) NOT NULL,
  `etatcompte` int(11) UNSIGNED NOT NULL,
  `dateAffecter` date NOT NULL,
  `matAffecteur` varchar(11) NOT NULL,
  `etat` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `operation`
--

CREATE TABLE `operation` (
  `id` int(11) UNSIGNED NOT NULL,
  `matEmpl` varchar(11) NOT NULL,
  `numcompte` varchar(11) NOT NULL,
  `dateOperation` date NOT NULL,
  `montant` double(10,5) NOT NULL,
  `numcomptevir` varchar(11) DEFAULT NULL,
  `taxe` double(10,5) DEFAULT NULL,
  `taxesms` double(10,5) DEFAULT NULL,
  `dateD` date DEFAULT NULL,
  `dateF` date DEFAULT NULL,
  `typeOperation` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `matricule` varchar(11) NOT NULL,
  `cin` varchar(20) DEFAULT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `sexe` varchar(10) NOT NULL,
  `dateNaiss` date NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `adrPersonne` varchar(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `raison_sociale` varchar(50) DEFAULT NULL,
  `salaire` double(10,2) DEFAULT NULL,
  `nom_employeur` varchar(50) DEFAULT NULL,
  `adr_employeur` varchar(50) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`matricule`, `cin`, `nom`, `prenom`, `sexe`, `dateNaiss`, `telephone`, `adrPersonne`, `email`, `raison_sociale`, `salaire`, `nom_employeur`, `adr_employeur`, `login`, `password`) VALUES
('7VVFGGCU', '29466880907858', 'Ndiaye', 'Ababacar', 'masculin', '1993-08-20', '7092457895', 'Guandiaye', 'adn@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('92PDJE2E', '29466880907858', 'Ndiaye', 'Ababacar', 'masculin', '1993-08-20', '7092457895', 'Guandiaye', 'adn@gmail.com', 'siti', 7989877.00, 'egkjhkjhlh', 'Medina', NULL, NULL),
('P2EABW79', '24668809078587', 'Faye', 'erhoiuijklrj', 'feminin', '1995-02-12', '77537783723', 'jbjggd', 'gogo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`id`, `libelle`) VALUES
(1, 'Administrateur'),
(2, 'Responsable des comptes'),
(3, 'Charger de compte'),
(4, 'Caissiere'),
(5, 'Client');

-- --------------------------------------------------------

--
-- Structure de la table `typecompte`
--

CREATE TABLE `typecompte` (
  `id` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typecompte`
--

INSERT INTO `typecompte` (`id`, `libelle`) VALUES
(1, 'courant'),
(2, 'simple'),
(3, 'bloque');

-- --------------------------------------------------------

--
-- Structure de la table `typeoperation`
--

CREATE TABLE `typeoperation` (
  `id` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typeoperation`
--

INSERT INTO `typeoperation` (`id`, `libelle`) VALUES
(1, 'virement'),
(2, 'depot'),
(3, 'retrait'),
(4, 'releve');

-- --------------------------------------------------------

--
-- Structure de la table `userrole`
--

CREATE TABLE `userrole` (
  `id` int(11) UNSIGNED NOT NULL,
  `mat` varchar(11) NOT NULL,
  `idProfil` int(11) UNSIGNED NOT NULL,
  `dateAffecter` date NOT NULL,
  `matAffecteur` varchar(11) NOT NULL,
  `etat` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `affecter`
--
ALTER TABLE `affecter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mat` (`mat`),
  ADD KEY `numAgence` (`numAgence`);

--
-- Index pour la table `agence`
--
ALTER TABLE `agence`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `adrAgence` (`adrAgence`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `numAgence` (`mat`),
  ADD KEY `typeCompte` (`typeCompte`),
  ADD KEY `id_entreprise` (`id_entreprise`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etatcompte`
--
ALTER TABLE `etatcompte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `numcompte` (`numcompte`),
  ADD KEY `etatcompte` (`etatcompte`);

--
-- Index pour la table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matEmpl` (`matEmpl`),
  ADD KEY `numcompte` (`numcompte`),
  ADD KEY `typeOperation` (`typeOperation`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`matricule`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typecompte`
--
ALTER TABLE `typecompte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typeoperation`
--
ALTER TABLE `typeoperation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mat` (`mat`),
  ADD KEY `idProfil` (`idProfil`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adresse`
--
ALTER TABLE `adresse`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `affecter`
--
ALTER TABLE `affecter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `etatcompte`
--
ALTER TABLE `etatcompte`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `typecompte`
--
ALTER TABLE `typecompte`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `typeoperation`
--
ALTER TABLE `typeoperation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `userrole`
--
ALTER TABLE `userrole`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affecter`
--
ALTER TABLE `affecter`
  ADD CONSTRAINT `affecter_ibfk_1` FOREIGN KEY (`mat`) REFERENCES `personne` (`matricule`),
  ADD CONSTRAINT `affecter_ibfk_2` FOREIGN KEY (`numAgence`) REFERENCES `agence` (`numero`);

--
-- Contraintes pour la table `agence`
--
ALTER TABLE `agence`
  ADD CONSTRAINT `agence_ibfk_1` FOREIGN KEY (`adrAgence`) REFERENCES `adresse` (`id`);

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `compte_ibfk_1` FOREIGN KEY (`mat`) REFERENCES `personne` (`matricule`),
  ADD CONSTRAINT `compte_ibfk_2` FOREIGN KEY (`typeCompte`) REFERENCES `typecompte` (`id`),
  ADD CONSTRAINT `compte_ibfk_3` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `etatcompte`
--
ALTER TABLE `etatcompte`
  ADD CONSTRAINT `etatcompte_ibfk_1` FOREIGN KEY (`numcompte`) REFERENCES `compte` (`numero`),
  ADD CONSTRAINT `etatcompte_ibfk_2` FOREIGN KEY (`etatcompte`) REFERENCES `etat` (`id`);

--
-- Contraintes pour la table `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`matEmpl`) REFERENCES `personne` (`matricule`),
  ADD CONSTRAINT `operation_ibfk_2` FOREIGN KEY (`numcompte`) REFERENCES `compte` (`numero`),
  ADD CONSTRAINT `operation_ibfk_3` FOREIGN KEY (`typeOperation`) REFERENCES `typeoperation` (`id`);

--
-- Contraintes pour la table `userrole`
--
ALTER TABLE `userrole`
  ADD CONSTRAINT `userrole_ibfk_1` FOREIGN KEY (`mat`) REFERENCES `personne` (`matricule`),
  ADD CONSTRAINT `userrole_ibfk_2` FOREIGN KEY (`idProfil`) REFERENCES `profil` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
