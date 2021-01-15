-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 15 jan. 2021 à 14:35
-- Version du serveur :  10.3.25-MariaDB-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `micro-url`
--

-- --------------------------------------------------------

--
-- Structure de la table `assoc_keywords_url`
--

CREATE TABLE `assoc_keywords_url` (
  `assoc_url_keywords_id` int(11) NOT NULL,
  `assoc_url_id` int(11) NOT NULL,
  `assoc_keywords_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `assoc_keywords_url`
--

INSERT INTO `assoc_keywords_url` (`assoc_url_keywords_id`, `assoc_url_id`, `assoc_keywords_id`) VALUES
(1, 83, 1),
(2, 83, 1),
(3, 83, 1);

-- --------------------------------------------------------

--
-- Structure de la table `keywords`
--

CREATE TABLE `keywords` (
  `keywords_id` int(11) NOT NULL,
  `keywords_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `keywords`
--

INSERT INTO `keywords` (`keywords_id`, `keywords_name`) VALUES
(1, 'piratage'),
(2, 'piratage'),
(3, 'piratage'),
(4, 'piratage'),
(5, 'piratage'),
(6, 'piratage'),
(7, 'piratage'),
(8, 'piratage');

-- --------------------------------------------------------

--
-- Structure de la table `url`
--

CREATE TABLE `url` (
  `url_id` int(11) NOT NULL,
  `url_name` text NOT NULL,
  `shortcut` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `url`
--

INSERT INTO `url` (`url_id`, `url_name`, `shortcut`, `datetime`, `description`) VALUES
(1, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(2, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(3, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(4, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(5, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(6, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(7, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(8, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(9, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(10, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(11, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(12, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(13, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(14, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(15, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(16, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(17, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(18, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(19, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(20, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(21, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(22, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(23, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(24, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(25, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(26, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(27, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(28, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(29, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(30, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(31, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(32, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(33, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(34, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(35, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(36, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(37, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(38, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(39, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(40, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(41, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(49, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(50, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(51, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(52, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(53, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(54, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(55, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(56, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(57, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(58, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(59, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(60, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(61, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(62, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(63, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:11:25', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(64, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(65, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:15:14', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(66, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(67, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:20:09', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(68, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(69, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:20:34', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(70, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(71, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:21:04', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(72, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(73, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:22:12', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(74, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(75, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:24:18', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(76, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(77, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:41:58', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(78, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(79, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:50:57', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(80, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(81, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:54:17', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(82, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(83, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:56:07', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(84, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(85, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(86, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(87, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(88, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(89, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(90, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(91, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(92, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(93, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel'),
(94, 'https://www.mobilityurban.fr/roue-electrique-1/', 'MOBURBAN', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `assoc_keywords_url`
--
ALTER TABLE `assoc_keywords_url`
  ADD PRIMARY KEY (`assoc_url_keywords_id`),
  ADD KEY `assoc_url_id` (`assoc_url_id`),
  ADD KEY `assoc_keywords_id` (`assoc_keywords_id`);

--
-- Index pour la table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`keywords_id`);

--
-- Index pour la table `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`url_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `assoc_keywords_url`
--
ALTER TABLE `assoc_keywords_url`
  MODIFY `assoc_url_keywords_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `keywords_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `url`
--
ALTER TABLE `url`
  MODIFY `url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `assoc_keywords_url`
--
ALTER TABLE `assoc_keywords_url`
  ADD CONSTRAINT `assoc_keywords_url_ibfk_1` FOREIGN KEY (`assoc_url_id`) REFERENCES `url` (`url_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assoc_keywords_url_ibfk_2` FOREIGN KEY (`assoc_keywords_id`) REFERENCES `keywords` (`keywords_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
