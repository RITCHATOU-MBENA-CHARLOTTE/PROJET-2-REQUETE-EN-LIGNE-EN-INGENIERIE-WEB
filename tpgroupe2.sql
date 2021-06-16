-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 28 mai 2021 à 19:37
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tpgroupe2`
--

-- --------------------------------------------------------

--
-- Structure de la table `requete`
--

DROP TABLE IF EXISTS `requete`;
CREATE TABLE IF NOT EXISTS `requete` (
  `non_code` varchar(255) NOT NULL,
  `nom_enseignant` varchar(255) NOT NULL,
  `groupe` varchar(255) NOT NULL,
  `note_td` double DEFAULT NULL,
  `note_tpe` tinyint(1) DEFAULT NULL,
  `note_cc` double DEFAULT NULL,
  `note_ee` double DEFAULT NULL,
  `objet` varchar(255) NOT NULL,
  `date_depos` datetime NOT NULL,
  `piece_joint` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`nom_enseignant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `filiere` varchar(255) NOT NULL,
  `cycle` int(11) NOT NULL,
  `niveau` int(11) NOT NULL,
  `departement` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_matricule` (`matricule`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `matricule`, `password`, `nom`, `prenom`, `filiere`, `cycle`, `niveau`, `departement`) VALUES
(1, '17A8888FS', 'password', 'mon nom', 'mon prenom', 'info', 1, 1, 'math-info'),
(2, '17A0763FS', 'secret', 'Anf_5', '', 'info', 1, 3, 'Math-Info'),
(3, '16A0189FS', 'ERIC', 'POFINE PQTEHALET', 'ERIC', 'INFORMQTIQUE', 1, 3, 'MATHS-INFO');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
