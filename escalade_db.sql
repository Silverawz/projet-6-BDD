-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 29 oct. 2019 à 15:09
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
-- Base de données :  `escalade_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `commentaire_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `commentaire_description` varchar(255) DEFAULT NULL,
  `spot_spot_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`commentaire_id`),
  KEY `FKsim7kssnld7a03j8cios6osh5` (`spot_spot_id`),
  KEY `FKnxdc2ad1nq0dstrheq6tmsoo6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`commentaire_id`, `commentaire_description`, `spot_spot_id`, `user_id`) VALUES
(26, 'ccccccccccccccccccccccccccccccppp', 2, 2),
(27, 'eeeeeeeeeeeeee', 2, 2),
(30, 'contenue inapropriéaaa', 20, 4),
(31, 'fbdbfdbndbndc', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(13),
(13);

-- --------------------------------------------------------

--
-- Structure de la table `longueur`
--

DROP TABLE IF EXISTS `longueur`;
CREATE TABLE IF NOT EXISTS `longueur` (
  `longueur_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `longueur_cotation` varchar(3) DEFAULT NULL,
  `longueur_name` varchar(30) DEFAULT NULL,
  `voie_voie_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`longueur_id`),
  KEY `FKghrocrbw2t6ocjbkkb38cdo4t` (`voie_voie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `longueur`
--

INSERT INTO `longueur` (`longueur_id`, `longueur_cotation`, `longueur_name`, `voie_voie_id`) VALUES
(1, '5a', 'aaaaaa', 1),
(3, '3', 'dsvsbvb', 1),
(4, '3', 'paris', 5);

-- --------------------------------------------------------

--
-- Structure de la table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE IF NOT EXISTS `persistent_logins` (
  `username` varchar(100) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL,
  PRIMARY KEY (`series`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` bigint(20) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(0, 'ADMIN'),
(1, 'MEMBER');

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

DROP TABLE IF EXISTS `secteur`;
CREATE TABLE IF NOT EXISTS `secteur` (
  `secteur_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `secteur_name` varchar(30) DEFAULT NULL,
  `spot_spot_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`secteur_id`),
  KEY `FK76os08b8a0b6l34dfxk47f5sj` (`spot_spot_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `secteur`
--

INSERT INTO `secteur` (`secteur_id`, `secteur_name`, `spot_spot_id`) VALUES
(1, 'secteurun', 2),
(3, 'fdbbsbbs', 2),
(4, 'dsvvsvs', 6),
(5, 'paris', 20);

-- --------------------------------------------------------

--
-- Structure de la table `spot`
--

DROP TABLE IF EXISTS `spot`;
CREATE TABLE IF NOT EXISTS `spot` (
  `spot_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_equipped` bit(1) DEFAULT NULL,
  `is_official` bit(1) DEFAULT NULL,
  `spot_lieu` varchar(30) DEFAULT NULL,
  `spot_name` varchar(30) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`spot_id`),
  KEY `FKmq47ra92ib4lihvk99xmct1eb` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `spot`
--

INSERT INTO `spot` (`spot_id`, `is_equipped`, `is_official`, `spot_lieu`, `spot_name`, `user_id`) VALUES
(2, b'1', b'1', 'bfbfbaaavdvv', 'ghjghjghj', 1),
(3, b'1', b'1', 'fvfb', 'dfdv', 1),
(4, b'0', b'0', 'bgbgbx', 'bgbfdf', 1),
(5, b'0', b'1', 'vdvd', 'cdvd', 1),
(6, b'1', b'0', 'bbrb', 'grinvriv', 2),
(7, b'1', b'0', 'lieu0', 'name0', 1),
(8, b'1', b'0', 'lieu1', 'name1', 1),
(9, b'1', b'1', 'lieu2', 'name2', 1),
(10, b'1', b'0', 'lieu3', 'name3', 1),
(11, b'1', b'0', 'lieu4', 'name4', 1),
(12, b'1', b'0', 'lieu5', 'name5', 1),
(13, b'1', b'0', 'lieu6', 'name6', 1),
(20, b'0', b'1', 'paris', 'paris', 4);

-- --------------------------------------------------------

--
-- Structure de la table `topo`
--

DROP TABLE IF EXISTS `topo`;
CREATE TABLE IF NOT EXISTS `topo` (
  `topo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_available` bit(1) DEFAULT NULL,
  `topo_description` varchar(255) DEFAULT NULL,
  `topo_lieu` varchar(30) DEFAULT NULL,
  `topo_name` varchar(30) DEFAULT NULL,
  `user_owner_of_the_topo_id` bigint(20) DEFAULT NULL,
  `user_reserving_the_topo_id` bigint(20) DEFAULT NULL,
  `topo_date_parution` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`topo_id`),
  KEY `FKb4ws27gml7i1wpj34sedh2jb9` (`user_owner_of_the_topo_id`),
  KEY `FK96btcrkd24lg26dnkr61t5rxj` (`user_reserving_the_topo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `topo`
--

INSERT INTO `topo` (`topo_id`, `is_available`, `topo_description`, `topo_lieu`, `topo_name`, `user_owner_of_the_topo_id`, `user_reserving_the_topo_id`, `topo_date_parution`) VALUES
(1, b'0', 'descriptionooonlbn', 'dngnnaaaghkbndsd', 'gfnfgngnnddvk', 1, NULL, '08.06.1988'),
(3, b'0', 'jhhhhhhhhhhhhhhhhhhh', 'mllllllllllllllgvvv', 'gfnfgngnndscvcv', 1, 2, '09.07.2001'),
(5, b'0', 'enrbrebrebbrb', 'rtnrntrnrtn', 'trhrnhrntn', 2, 1, '09.07.2001'),
(6, b'0', 'description', 'paris', 'paris', 4, 3, '09.07.1950'),
(7, b'0', 'fbbbbbbbbbbbbb', 'bffffffffffffdsb', 'fedfdefffffff', 1, 2, '09.07.2000'),
(8, b'0', 'nnfnnfnjfnfnfsvaaasdvsvsvv', 'dngnnvsvdsvsv', 'gfnfgngnndscvcvdcdcdc', 1, 2, '09.07.2000'),
(9, b'1', 'bbbbbbbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbbbbbbb', 'vbbbbbbbbbbbbbbbbbbb', 1, NULL, '09.07.2000');

-- --------------------------------------------------------

--
-- Structure de la table `topo_user_request`
--

DROP TABLE IF EXISTS `topo_user_request`;
CREATE TABLE IF NOT EXISTS `topo_user_request` (
  `topo_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`topo_id`,`user_id`),
  KEY `FK2jar178aabkmekm6038hvn4b5` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `active`, `email`, `firstname`, `lastname`, `password`) VALUES
(1, 1, 'nicolas@hotmail.com', 'nicolas', 'deroussen', '$2a$10$eXpebeqKmgOyeRyNgdnFsutjlRAgKSslvGZvabAmP4DOk7uCiFVu.'),
(2, 1, 'nicolas@hotmail.fr', 'jack', 'pierre', '$2a$10$cLXSJ6hgWxLxmLktfDEp3Oz2LFGZMQK9vb51/9BK.rkbpHCSz6a46'),
(3, 1, 'nicolas@hotmail.uk', 'popopo', 'lolollo', '$2a$10$3.WXhJ7DNpCOmFsDQLM/ueASW6yV/VqPo4MVjQupQV7zLSN1QNLmu'),
(4, 1, 'nicolas@hotmail.us', 'popopo', 'lolollo', '$2a$10$F/FJMb7kKGIj6oWP1k23P./hhykK5ngxEKKNvYh2AZYQW/eScR2mu'),
(12, 1, 'blanc@a.com', 'laurent', 'blanc', '$2a$10$J5tMynQmm.DdLnE1rPmIo.eu0sM3AifTrZwX4zHVd.giVOJu8etNS');

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 0),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `voie`
--

DROP TABLE IF EXISTS `voie`;
CREATE TABLE IF NOT EXISTS `voie` (
  `voie_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `voie_cotation` varchar(3) DEFAULT NULL,
  `voie_name` varchar(30) DEFAULT NULL,
  `secteur_secteur_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`voie_id`),
  KEY `FKksk7fd7oktnvd6g6p0kap5lo6` (`secteur_secteur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `voie`
--

INSERT INTO `voie` (`voie_id`, `voie_cotation`, `voie_name`, `secteur_secteur_id`) VALUES
(1, '3', 'noieunun', 1),
(4, '4', 'bfbbvsdv', 1),
(5, '3', 'paris', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
