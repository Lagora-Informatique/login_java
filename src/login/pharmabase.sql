-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 30 mai 2022 à 03:36
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pharmabase`
--

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE `connexion` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `connexion`
--

INSERT INTO `connexion` (`id`, `login`, `password`) VALUES
(1, 'sibylassana95', 'Lassana9554');

-- --------------------------------------------------------

--
-- Structure de la table `mouv`
--

CREATE TABLE `mouv` (
  `id` int(11) NOT NULL,
  `code` varchar(40) DEFAULT NULL,
  `nom` varchar(70) DEFAULT NULL,
  `datexp` varchar(50) DEFAULT NULL,
  `nature` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mouv`
--

INSERT INTO `mouv` (`id`, `code`, `nom`, `datexp`, `nature`) VALUES
(1, 'PARA', 'PARACETAMOL', '2019-08-20', 'Depot'),
(2, 'IBU', 'IBUPROFEN', '2019-08-21', 'Retrait'),
(3, 'QUIN', 'QUININE', '2019-08-22', 'Depot'),
(4, 'VERM', 'VERMOX', '2019-08-23', 'Retrait'),
(5, 'ARTH', 'ARTHEMETER', '2019-08-24', 'Depot');

-- --------------------------------------------------------

--
-- Structure de la table `mouvement`
--

CREATE TABLE `mouvement` (
  `id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prix` int(11) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `datexp` varchar(50) DEFAULT NULL,
  `nature` varchar(10) DEFAULT NULL,
  `jour` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mouvement`
--

INSERT INTO `mouvement` (`id`, `code`, `nom`, `prix`, `quantite`, `datexp`, `nature`, `jour`) VALUES
(10, 'QUIN', 'QUININE', 100, 50, '2021-09-30', 'Depot', '2019-08-29'),
(11, 'QUIN', 'QUININE', 100, 60, '2020-11-23', 'Depot', '2019-08-29'),
(12, 'QUIN', 'QUININE', 100, 8, '2018-09-06', 'Depot', '2019-08-28'),
(13, 'QUIN', 'QUININE', 100, 20, '2021-09-30', 'Retrait', '2019-08-28'),
(14, 'QUIN', 'QUININE', 100, 5, '2019-07-30', 'Depot', '2019-08-28'),
(15, 'QUIN', 'QUININE', 100, 1, '2019-09-01', 'Depot', '2019-08-29'),
(16, 'QUIN', 'QUININE', 100, 1, '2019-09-01', 'Retrait', '2019-08-28'),
(17, 'QUIN', 'QUININE', 100, 3, '2019-07-30', 'Retrait', '2019-08-29'),
(18, 'QUIN', 'QUININE', 100, 2, '2019-07-30', 'Retrait', '2019-08-28'),
(19, 'QUIN', 'QUININE', 100, 10, '2020-11-23', 'Retrait', '2019-08-28'),
(20, 'PARA', 'PARACETAMOL', 100, 15, '2019-08-10', 'Depot', '2019-08-28'),
(21, 'BACT', 'BACTRIME', 400, 30, '2021-09-30', 'Depot', '2019-08-29'),
(22, 'PARA', 'PARACETAMOL', 100, 5, '2019-08-10', 'Retrait', '2019-08-28'),
(23, 'QUIN', 'QUININE', 100, 14, '2021-09-30', 'Retrait', '2019-08-28'),
(24, 'QUIN', 'QUININE', 100, 9, '2021-09-30', 'Retrait', '2012-12-22'),
(25, 'IBU', 'IBUPROFEN', 200, 85, '2020-11-23', 'Depot', '2019-08-28'),
(26, 'IBU', 'IBUPROFEN', 200, 6, '2020-11-23', 'Retrait', '2019-08-28'),
(27, 'IBU', 'IBUPROFEN', 200, 6, '2020-11-23', 'Retrait', '2019-08-28'),
(36, 'Lasma', 'Lassana', 1000, 12, '2024-04-02', 'Depot', '2022-05-29');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue1`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vue1` (
`id` int(11)
,`code` varchar(40)
,`nom` varchar(100)
,`prix` int(11)
,`quantite` bigint(12)
,`datexp` varchar(50)
,`nature` varchar(10)
,`jour` varchar(50)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vuedate`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vuedate` (
`code` varchar(40)
,`nom` varchar(100)
,`prix` int(11)
,`stock` decimal(41,0)
,`datexp` varchar(50)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vuemontant`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vuemontant` (
`code` varchar(40)
,`nom` varchar(100)
,`prix` int(11)
,`stock` decimal(41,0)
,`montant` decimal(51,0)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vuevente`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vuevente` (
`code` varchar(40)
,`nom` varchar(100)
,`prix` int(11)
,`quantite` decimal(32,0)
,`montant` decimal(42,0)
,`jour` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure de la vue `vue1`
--
DROP TABLE IF EXISTS `vue1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue1`  AS SELECT `mouvement`.`id` AS `id`, `mouvement`.`code` AS `code`, `mouvement`.`nom` AS `nom`, `mouvement`.`prix` AS `prix`, `mouvement`.`quantite` AS `quantite`, `mouvement`.`datexp` AS `datexp`, `mouvement`.`nature` AS `nature`, `mouvement`.`jour` AS `jour` FROM `mouvement` WHERE `mouvement`.`nature` = 'Depot' ;

-- --------------------------------------------------------

--
-- Structure de la vue `vuedate`
--
DROP TABLE IF EXISTS `vuedate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vuedate`  AS SELECT `vue1`.`code` AS `code`, `vue1`.`nom` AS `nom`, `vue1`.`prix` AS `prix`, sum(`vue1`.`quantite`) AS `stock`, `vue1`.`datexp` AS `datexp` FROM `vue1` GROUP BY `vue1`.`nom`, `vue1`.`datexp` ;

-- --------------------------------------------------------

--
-- Structure de la vue `vuemontant`
--
DROP TABLE IF EXISTS `vuemontant`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vuemontant`  AS SELECT `vue1`.`code` AS `code`, `vue1`.`nom` AS `nom`, `vue1`.`prix` AS `prix`, sum(`vue1`.`quantite`) AS `stock`, `vue1`.`prix`* sum(`vue1`.`quantite`) AS `montant` FROM `vue1` GROUP BY `vue1`.`nom` ;

-- --------------------------------------------------------

--
-- Structure de la vue `vuevente`
--
DROP TABLE IF EXISTS `vuevente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vuevente`  AS SELECT `mouvement`.`code` AS `code`, `mouvement`.`nom` AS `nom`, `mouvement`.`prix` AS `prix`, sum(`mouvement`.`quantite`) AS `quantite`, `mouvement`.`prix`* sum(`mouvement`.`quantite`) AS `montant`, `mouvement`.`jour` AS `jour` FROM `mouvement` WHERE `mouvement`.`nature` = 'Retrait' GROUP BY `mouvement`.`nom`, `mouvement`.`jour` ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `connexion`
--
ALTER TABLE `connexion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mouv`
--
ALTER TABLE `mouv`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mouvement`
--
ALTER TABLE `mouvement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `connexion`
--
ALTER TABLE `connexion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `mouv`
--
ALTER TABLE `mouv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `mouvement`
--
ALTER TABLE `mouvement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
