-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 28 déc. 2020 à 23:02
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gds`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `id_utili_admin` varchar(100) NOT NULL,
  PRIMARY KEY (`id_utili_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande_seance`
--

DROP TABLE IF EXISTS `demande_seance`;
CREATE TABLE IF NOT EXISTS `demande_seance` (
  `id_demande_seance` int(11) NOT NULL AUTO_INCREMENT,
  `date_propose_seance` date NOT NULL,
  `heure_propose_seance` time NOT NULL,
  `id_stage` int(11) NOT NULL,
  `validation` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_demande_seance`),
  KEY `id_stage` (`id_stage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande_soutenance`
--

DROP TABLE IF EXISTS `demande_soutenance`;
CREATE TABLE IF NOT EXISTS `demande_soutenance` (
  `id_demande_soutenance` int(11) NOT NULL AUTO_INCREMENT,
  `id_stage` int(11) NOT NULL,
  `file_evaluation` longblob NOT NULL,
  `file_rapport_stage` longblob NOT NULL,
  `file_attestation_stage` longblob NOT NULL,
  `date_propose_sout` date NOT NULL,
  `heure_propose_sout` time NOT NULL,
  `commentaire` varchar(500) NOT NULL,
  `validation` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_demande_soutenance`),
  KEY `id_stage` (`id_stage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande_stage`
--

DROP TABLE IF EXISTS `demande_stage`;
CREATE TABLE IF NOT EXISTS `demande_stage` (
  `id_demande_stage` int(11) NOT NULL AUTO_INCREMENT,
  `id_utili_stagiaire` varchar(100) NOT NULL,
  `file_Convention` longblob NOT NULL,
  `nom_entreprise` varchar(100) NOT NULL,
  `adresse_entreprise` varchar(100) NOT NULL,
  `telephone_entreprise` varchar(20) NOT NULL,
  `secteur_entreprise` varchar(100) NOT NULL,
  `email_entreprise` varchar(50) NOT NULL,
  `nom_prenom_res_ent` varchar(100) NOT NULL,
  `telephone_res_ent` varchar(100) NOT NULL,
  `email_res_ent` varchar(100) NOT NULL,
  `validation` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_demande_stage`),
  KEY `id_utili_stagiaire` (`id_utili_stagiaire`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `encadrant`
--

DROP TABLE IF EXISTS `encadrant`;
CREATE TABLE IF NOT EXISTS `encadrant` (
  `id_enseig_encad` varchar(100) NOT NULL,
  PRIMARY KEY (`id_enseig_encad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
CREATE TABLE IF NOT EXISTS `enseignant` (
  `id_utili_ensei` varchar(100) NOT NULL,
  `id_filiere` varchar(100) NOT NULL,
  PRIMARY KEY (`id_utili_ensei`),
  KEY `id_filiere` (`id_filiere`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

DROP TABLE IF EXISTS `filiere`;
CREATE TABLE IF NOT EXISTS `filiere` (
  `id_filiere` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id_filiere`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `gerant`
--

DROP TABLE IF EXISTS `gerant`;
CREATE TABLE IF NOT EXISTS `gerant` (
  `id_enseig_gerant` varchar(100) NOT NULL,
  `id_filiere` varchar(100) NOT NULL,
  PRIMARY KEY (`id_enseig_gerant`),
  KEY `id_filiere` (`id_filiere`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jury`
--

DROP TABLE IF EXISTS `jury`;
CREATE TABLE IF NOT EXISTS `jury` (
  `id_utili_ensei` varchar(100) NOT NULL,
  `id_soutenance` int(11) NOT NULL,
  PRIMARY KEY (`id_utili_ensei`,`id_soutenance`),
  KEY `id_soutenance` (`id_soutenance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `id_promo` varchar(100) NOT NULL,
  `id_filiere` varchar(100) NOT NULL,
  `niveau` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id_promo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `seance`
--

DROP TABLE IF EXISTS `seance`;
CREATE TABLE IF NOT EXISTS `seance` (
  `id_seance` int(11) NOT NULL AUTO_INCREMENT,
  `id_demande_seance` int(11) NOT NULL,
  `salle` varchar(100) NOT NULL,
  `date_seance` date NOT NULL,
  `heure_seance` time NOT NULL,
  `observation` varchar(500) NOT NULL,
  PRIMARY KEY (`id_seance`),
  KEY `id_demande_seance` (`id_demande_seance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `soutenance`
--

DROP TABLE IF EXISTS `soutenance`;
CREATE TABLE IF NOT EXISTS `soutenance` (
  `id_soutenance` int(11) NOT NULL AUTO_INCREMENT,
  `id_demande_soutenance` int(11) NOT NULL,
  `date_soutenance` date NOT NULL,
  `heure_soutenance` time NOT NULL,
  `Commentaire` varchar(500) NOT NULL,
  PRIMARY KEY (`id_soutenance`),
  KEY `id_demande_soutenance` (`id_demande_soutenance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

DROP TABLE IF EXISTS `stage`;
CREATE TABLE IF NOT EXISTS `stage` (
  `id_stage` int(11) NOT NULL AUTO_INCREMENT,
  `id_demande_stage` int(11) NOT NULL,
  PRIMARY KEY (`id_stage`),
  KEY `id_demande_stage` (`id_demande_stage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stagiaire`
--

DROP TABLE IF EXISTS `stagiaire`;
CREATE TABLE IF NOT EXISTS `stagiaire` (
  `id_utili_stagiaire` varchar(100) NOT NULL,
  `id_promotion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_utili_stagiaire`),
  KEY `id_promotion` (`id_promotion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` varchar(100) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `adresse` varchar(500) NOT NULL,
  `ville` varchar(100) NOT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD CONSTRAINT `administrateur_ibfk_1` FOREIGN KEY (`id_utili_admin`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `demande_seance`
--
ALTER TABLE `demande_seance`
  ADD CONSTRAINT `demande_seance_ibfk_1` FOREIGN KEY (`id_stage`) REFERENCES `stage` (`id_stage`);

--
-- Contraintes pour la table `demande_soutenance`
--
ALTER TABLE `demande_soutenance`
  ADD CONSTRAINT `demande_soutenance_ibfk_1` FOREIGN KEY (`id_stage`) REFERENCES `stage` (`id_stage`);

--
-- Contraintes pour la table `demande_stage`
--
ALTER TABLE `demande_stage`
  ADD CONSTRAINT `demande_stage_ibfk_1` FOREIGN KEY (`id_utili_stagiaire`) REFERENCES `stagiaire` (`id_utili_stagiaire`) ON DELETE CASCADE;

--
-- Contraintes pour la table `encadrant`
--
ALTER TABLE `encadrant`
  ADD CONSTRAINT `encadrant_ibfk_1` FOREIGN KEY (`id_enseig_encad`) REFERENCES `enseignant` (`id_utili_ensei`) ON DELETE CASCADE;

--
-- Contraintes pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `enseignant_ibfk_1` FOREIGN KEY (`id_utili_ensei`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE CASCADE,
  ADD CONSTRAINT `enseignant_ibfk_2` FOREIGN KEY (`id_filiere`) REFERENCES `filiere` (`id_filiere`);

--
-- Contraintes pour la table `gerant`
--
ALTER TABLE `gerant`
  ADD CONSTRAINT `gerant_ibfk_1` FOREIGN KEY (`id_enseig_gerant`) REFERENCES `enseignant` (`id_utili_ensei`) ON DELETE CASCADE,
  ADD CONSTRAINT `gerant_ibfk_2` FOREIGN KEY (`id_filiere`) REFERENCES `filiere` (`id_filiere`);

--
-- Contraintes pour la table `jury`
--
ALTER TABLE `jury`
  ADD CONSTRAINT `jury_ibfk_1` FOREIGN KEY (`id_utili_ensei`) REFERENCES `enseignant` (`id_utili_ensei`),
  ADD CONSTRAINT `jury_ibfk_2` FOREIGN KEY (`id_soutenance`) REFERENCES `soutenance` (`id_soutenance`);

--
-- Contraintes pour la table `seance`
--
ALTER TABLE `seance`
  ADD CONSTRAINT `seance_ibfk_1` FOREIGN KEY (`id_demande_seance`) REFERENCES `demande_seance` (`id_demande_seance`);

--
-- Contraintes pour la table `soutenance`
--
ALTER TABLE `soutenance`
  ADD CONSTRAINT `soutenance_ibfk_1` FOREIGN KEY (`id_demande_soutenance`) REFERENCES `demande_soutenance` (`id_demande_soutenance`);

--
-- Contraintes pour la table `stage`
--
ALTER TABLE `stage`
  ADD CONSTRAINT `stage_ibfk_1` FOREIGN KEY (`id_demande_stage`) REFERENCES `demande_stage` (`id_demande_stage`);

--
-- Contraintes pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  ADD CONSTRAINT `stagiaire_ibfk_1` FOREIGN KEY (`id_utili_stagiaire`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE CASCADE,
  ADD CONSTRAINT `stagiaire_ibfk_2` FOREIGN KEY (`id_promotion`) REFERENCES `promotion` (`id_promo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
