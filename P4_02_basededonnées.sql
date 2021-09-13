-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 18 août 2021 à 11:18
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `expressfood`
--
CREATE DATABASE IF NOT EXISTS `expressfood` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `expressfood`;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `commande_id` int(11) NOT NULL,
  `utilisateur_id` int(11) NOT NULL,
  `montant_total_ht` decimal(6,2) NOT NULL,
  `tva` decimal(4,2) NOT NULL DEFAULT 10.00,
  `date_de_commande` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`commande_id`, `utilisateur_id`, `montant_total_ht`, `tva`, `date_de_commande`) VALUES
(1, 10, '15.00', '5.00', '2021-07-19 14:49:38'),
(2, 11, '30.00', '5.00', '2021-07-19 14:55:44'),
(3, 12, '15.00', '5.00', '2021-07-19 14:55:50'),
(4, 13, '75.00', '5.00', '2021-07-19 15:39:55'),
(5, 14, '30.00', '5.00', '2021-07-19 15:45:00'),
(8, 15, '30.00', '10.00', '2021-07-20 12:52:32'),
(9, 16, '60.00', '10.00', '2021-07-20 12:53:15'),
(10, 17, '15.00', '10.00', '2021-07-20 12:53:23'),
(11, 18, '30.00', '10.00', '2021-07-20 12:53:34'),
(12, 19, '15.00', '10.00', '2021-07-20 12:53:41'),
(13, 10, '15.00', '10.00', '2021-07-21 13:41:47'),
(14, 11, '15.00', '10.00', '2021-07-21 13:41:47'),
(15, 12, '30.00', '10.00', '2021-07-21 13:41:47'),
(16, 13, '15.00', '10.00', '2021-07-21 13:41:47'),
(17, 14, '15.00', '10.00', '2021-07-21 13:41:47'),
(18, 15, '30.00', '10.00', '2021-07-21 13:41:47'),
(19, 16, '30.00', '10.00', '2021-07-21 13:41:47'),
(20, 17, '15.00', '10.00', '2021-07-21 13:41:47'),
(21, 18, '15.00', '10.00', '2021-07-21 13:41:47'),
(22, 19, '60.00', '10.00', '2021-07-21 13:41:47'),
(23, 10, '15.00', '10.00', '2021-07-22 14:19:05'),
(24, 11, '15.00', '10.00', '2021-07-22 14:19:05'),
(25, 12, '30.00', '10.00', '2021-07-22 14:19:05'),
(26, 13, '15.00', '10.00', '2021-07-22 14:19:05'),
(27, 14, '15.00', '10.00', '2021-07-22 14:19:05'),
(28, 15, '30.00', '10.00', '2021-07-22 14:19:05'),
(29, 16, '30.00', '10.00', '2021-07-22 14:19:05'),
(30, 17, '15.00', '10.00', '2021-07-22 14:19:05'),
(31, 18, '15.00', '10.00', '2021-07-22 14:19:05'),
(32, 19, '60.00', '10.00', '2021-07-22 14:19:05'),
(33, 10, '15.00', '10.00', '2021-07-23 14:42:30'),
(34, 11, '15.00', '10.00', '2021-07-23 14:42:30'),
(35, 12, '30.00', '10.00', '2021-07-23 14:42:30'),
(36, 13, '15.00', '10.00', '2021-07-23 14:42:30'),
(37, 14, '15.00', '10.00', '2021-07-23 14:42:30'),
(38, 15, '30.00', '10.00', '2021-07-23 14:42:30'),
(39, 16, '30.00', '10.00', '2021-07-23 14:42:30'),
(40, 17, '15.00', '10.00', '2021-07-23 14:42:30'),
(41, 18, '15.00', '10.00', '2021-07-23 14:42:30'),
(42, 19, '60.00', '10.00', '2021-07-23 14:42:30'),
(43, 10, '15.00', '10.00', '2021-07-24 15:01:09'),
(44, 11, '15.00', '10.00', '2021-07-24 15:01:09'),
(45, 12, '30.00', '10.00', '2021-07-24 15:01:09'),
(46, 13, '15.00', '10.00', '2021-07-24 15:01:09'),
(47, 14, '15.00', '10.00', '2021-07-24 15:01:09'),
(48, 15, '30.00', '10.00', '2021-07-24 15:01:09'),
(49, 16, '30.00', '10.00', '2021-07-24 15:01:09'),
(50, 17, '15.00', '10.00', '2021-07-24 15:01:09'),
(51, 18, '15.00', '10.00', '2021-07-24 15:01:09'),
(52, 19, '60.00', '10.00', '2021-07-24 15:01:09'),
(53, 10, '15.00', '10.00', '2021-07-25 15:13:06'),
(54, 11, '15.00', '10.00', '2021-07-25 15:13:06'),
(55, 12, '30.00', '10.00', '2021-07-25 15:13:06'),
(56, 13, '15.00', '10.00', '2021-07-25 15:13:06'),
(57, 14, '15.00', '10.00', '2021-07-25 15:13:06'),
(58, 15, '30.00', '10.00', '2021-07-25 15:13:06'),
(59, 16, '30.00', '10.00', '2021-07-25 15:13:06'),
(60, 17, '15.00', '10.00', '2021-07-25 15:13:06'),
(61, 18, '15.00', '10.00', '2021-07-25 15:13:06'),
(62, 19, '60.00', '10.00', '2021-07-25 15:13:06'),
(63, 10, '15.00', '10.00', '2021-07-26 15:24:36'),
(64, 11, '15.00', '10.00', '2021-07-26 15:24:36'),
(65, 12, '30.00', '10.00', '2021-07-26 15:24:36'),
(66, 13, '15.00', '10.00', '2021-07-26 15:24:36'),
(67, 14, '15.00', '10.00', '2021-07-26 15:24:36'),
(68, 15, '30.00', '10.00', '2021-07-26 15:24:36'),
(69, 16, '30.00', '10.00', '2021-07-26 15:24:36'),
(70, 17, '15.00', '10.00', '2021-07-26 15:24:36'),
(71, 18, '15.00', '10.00', '2021-07-26 15:24:36'),
(72, 19, '60.00', '10.00', '2021-07-26 15:24:36'),
(73, 10, '15.00', '10.00', '2021-07-27 15:34:23'),
(74, 11, '15.00', '10.00', '2021-07-27 15:34:23'),
(75, 12, '30.00', '10.00', '2021-07-27 15:34:23'),
(76, 13, '15.00', '10.00', '2021-07-27 15:34:23'),
(77, 14, '15.00', '10.00', '2021-07-27 15:34:23'),
(78, 15, '30.00', '10.00', '2021-07-27 15:34:23'),
(79, 16, '30.00', '10.00', '2021-07-27 15:34:23'),
(80, 17, '15.00', '10.00', '2021-07-27 15:34:23'),
(81, 18, '15.00', '10.00', '2021-07-27 15:34:23'),
(82, 19, '60.00', '10.00', '2021-07-27 15:34:26'),
(83, 10, '15.00', '10.00', '2021-07-28 15:59:49'),
(84, 11, '15.00', '10.00', '2021-07-28 15:59:49'),
(85, 12, '30.00', '10.00', '2021-07-28 15:59:49'),
(86, 13, '15.00', '10.00', '2021-07-28 15:59:49'),
(87, 14, '15.00', '10.00', '2021-07-28 15:59:49'),
(88, 15, '30.00', '10.00', '2021-07-28 15:59:49'),
(89, 16, '30.00', '10.00', '2021-07-28 15:59:49'),
(90, 17, '15.00', '10.00', '2021-07-28 15:59:49'),
(91, 18, '15.00', '10.00', '2021-07-28 15:59:49'),
(92, 19, '60.00', '10.00', '2021-07-28 15:59:49');

-- --------------------------------------------------------

--
-- Structure de la table `dessert`
--

CREATE TABLE `dessert` (
  `dessert_id` int(11) NOT NULL,
  `nom_dessert` varchar(45) NOT NULL,
  `description_dessert` text NOT NULL,
  `photo_dessert` varchar(50) NOT NULL,
  `prix_dessert` decimal(4,2) NOT NULL,
  `stock_dessert` int(3) DEFAULT NULL,
  `dessert_du_jour` tinyint(1) NOT NULL DEFAULT 0,
  `date_dessert_dispo` date DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `dessert`
--

INSERT INTO `dessert` (`dessert_id`, `nom_dessert`, `description_dessert`, `photo_dessert`, `prix_dessert`, `stock_dessert`, `dessert_du_jour`, `date_dessert_dispo`, `date_creation`) VALUES
(1, 'Mousse au chocolat', 'Mousse au chocolat avec pépites', '', '3.50', 0, 0, '2021-07-19', '2021-07-19 08:55:29'),
(2, 'Alléluia', 'Pâte à choux, glacée de losanges d\'angélique ', '', '3.50', 0, 0, '2021-07-19', '2021-07-19 08:55:29'),
(3, 'Amandină', ' Gâteau éponge au chocolat fourré à la crème d\'amandes ', '', '3.50', 0, 0, '2021-07-20', '2021-07-19 08:55:29'),
(4, 'Ardéchois à la crème de marrons', 'Gâteau à base de crème de marrons et parfumé au rhum', '', '3.50', 0, 0, '2021-07-20', '2021-07-19 08:55:29'),
(5, 'Gâteau des anges', 'Gâteau moelleux et aéré à base de blancs d\'œufs montés en neige', '', '3.50', 0, 0, '2021-07-21', '2021-07-19 08:55:29'),
(6, 'Salade de fruits', 'Composé d\'un mélange de fruits. La salade de fruits peut se déguster en toutes saisons.', '', '3.50', 0, 0, '2021-07-21', '2021-07-19 08:55:29'),
(7, 'Alfajor', 'Pâtisseries à base de pâte d\'amandes, de noix et miel', '', '3.50', 0, 0, '2021-07-22', '2021-07-19 08:55:29'),
(8, 'Baba au rhum', 'Savarin servi imbibé d\'un sirop au rhum', '', '3.50', 0, 0, '2021-07-22', '2021-07-19 08:55:29'),
(9, 'Baklava', 'Gâteau à base de pâte phyllo (pâte feuilletée), de sirop de sucre et de noix', '', '3.50', 0, 0, '2021-07-23', '2021-07-19 08:55:29'),
(10, 'Barquette aux marrons ', 'Gâteau à base de mousse à la crème de marrons', '', '3.50', 0, 0, '2021-07-23', '2021-07-19 08:55:29'),
(11, 'Bavarois ', 'Entremet à base de mousse de fruits', '', '3.50', 0, 0, '2021-07-24', '2021-07-19 08:55:29'),
(12, 'Bichon au citron', 'Chausson en pâte feuilletée caramélisée, et fourré de crème de citron. ', '', '3.50', 0, 0, '2021-07-24', '2021-07-19 08:55:29'),
(13, 'Bodink', 'Pâtisserie bruxelloise à base de pain, d\'œufs, de sucre candi et de raisins de Corinthe', '', '3.50', 0, 0, '2021-07-25', '2021-07-19 08:55:29'),
(14, 'Canelé', 'petit gâteau bordelais, à pâte molle et tendre, parfumée au rhum et à la vanille', '', '3.50', 0, 0, '2021-07-25', '2021-07-19 08:55:29'),
(15, 'Charlotte', 'Charlotte au pommes, croûte de biscuits à la cuillère', '', '3.50', 0, 0, '2021-07-26', '2021-07-19 08:55:29'),
(16, 'Tarte conversation', 'La tarte pâtisserie faite de pâte feuilletée fourrée de crème frangipane avec un glaçage royal', '', '3.50', 0, 0, '2021-07-26', '2021-07-19 08:55:29'),
(17, 'Cookie', 'Biscuit aux pépites de chocolat, fait avec des brisures et pépites de chocolat', '', '3.50', 0, 0, '2021-07-27', '2021-07-19 08:55:29'),
(18, 'Divorcé', 'Pâtisserie constituée de deux boules en pâte à choux, farcies de crème pâtissière. L\'un des choux est parfumé au chocolat alors que le second est parfumé au café. La face supérieure des choux est recouverte de fondant du même parfum que la crème pâtissière', '', '3.50', 0, 0, '2021-07-27', '2021-07-19 08:55:29'),
(19, 'Fondant au chocolat', 'Gâteau au chocolat à la texture fondante. ', '', '3.50', 27, 1, '2021-07-28', '2021-07-19 08:55:29'),
(20, 'Fraisier', 'Pâtisserie à base de fraises, de génoise, de crème et recouverte d\'une mince couche de pâte d\'amande', '', '3.50', 27, 1, '2021-07-28', '2021-07-19 08:55:29');

-- --------------------------------------------------------

--
-- Structure de la table `details_commande`
--

CREATE TABLE `details_commande` (
  `details_commande_id` int(11) NOT NULL,
  `commande_id` int(11) NOT NULL,
  `plat_id` int(11) DEFAULT NULL,
  `qte_plat` int(2) DEFAULT NULL,
  `prix_ht_plat` decimal(4,2) DEFAULT NULL,
  `dessert_id` int(11) DEFAULT NULL,
  `qte_dessert` int(2) DEFAULT NULL,
  `prix_ht_dessert` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `details_commande`
--

INSERT INTO `details_commande` (`details_commande_id`, `commande_id`, `plat_id`, `qte_plat`, `prix_ht_plat`, `dessert_id`, `qte_dessert`, `prix_ht_dessert`) VALUES
(1, 1, 1, 1, '11.50', 2, 1, '3.50'),
(12, 2, 2, 2, '11.50', 1, 1, '3.50'),
(13, 2, NULL, NULL, NULL, 2, 1, '3.50'),
(14, 3, 2, 1, '11.50', 2, 1, '3.50'),
(15, 4, 2, 2, '11.50', 2, 2, '3.50'),
(16, 4, 1, 3, '11.50', 1, 3, '3.50'),
(17, 5, 2, 2, '11.50', 2, 2, '3.50'),
(18, 8, 3, 2, '11.50', 3, 2, '3.50'),
(19, 9, 3, 2, '11.50', 3, 2, '3.50'),
(20, 9, 4, 2, '11.50', 4, 2, '3.50'),
(21, 10, 3, 1, '11.50', 4, 1, '3.50'),
(22, 11, 3, 2, '11.50', 4, 2, '3.50'),
(23, 12, 3, 1, '11.50', 3, 1, '3.50'),
(24, 13, 5, 1, '11.50', 6, 1, '3.50'),
(25, 14, 5, 1, '11.50', 5, 1, '3.50'),
(26, 15, 5, 1, '11.50', 5, 1, '3.50'),
(27, 15, 6, 1, '11.50', 6, 1, '3.50'),
(28, 16, 6, 1, '11.50', 5, 1, '3.50'),
(29, 17, 6, 1, '11.50', 6, 1, '3.50'),
(30, 18, 5, 2, '11.50', 5, 2, '3.50'),
(31, 19, 6, 2, '11.50', 6, 2, '3.50'),
(32, 20, 5, 1, '11.50', 6, 1, '3.50'),
(33, 21, 6, 1, '11.50', 6, 1, '3.50'),
(34, 22, 6, 4, '11.50', 6, 2, '3.50'),
(35, 22, NULL, NULL, NULL, 5, 2, '3.50'),
(36, 23, 7, 1, '11.50', 8, 1, '3.50'),
(37, 24, 7, 1, '11.50', 7, 1, '3.50'),
(38, 25, 7, 1, '11.50', 7, 1, '3.50'),
(39, 25, 8, 1, '11.50', 8, 1, '3.50'),
(40, 26, 8, 1, '11.50', 7, 1, '3.50'),
(41, 27, 8, 1, '11.50', 8, 1, '3.50'),
(42, 28, 7, 2, '11.50', 7, 2, '3.50'),
(43, 29, 8, 2, '11.50', 8, 2, '3.50'),
(44, 30, 7, 1, '11.50', 8, 1, '3.50'),
(45, 31, 8, 1, '11.50', 8, 1, '3.50'),
(46, 32, 8, 4, '11.50', 8, 2, '3.50'),
(47, 32, NULL, NULL, NULL, 7, 2, '3.50'),
(48, 33, 9, 1, '11.50', 10, 1, '3.50'),
(49, 34, 9, 1, '11.50', 9, 1, '3.50'),
(50, 35, 9, 1, '11.50', 9, 1, '3.50'),
(51, 35, 10, 1, '11.50', 10, 1, '3.50'),
(52, 36, 10, 1, '11.50', 9, 1, '3.50'),
(53, 37, 10, 1, '11.50', 10, 1, '3.50'),
(54, 38, 9, 2, '11.50', 9, 2, '3.50'),
(55, 39, 10, 2, '11.50', 10, 2, '3.50'),
(56, 40, 9, 1, '11.50', 10, 1, '3.50'),
(57, 41, 10, 1, '11.50', 10, 1, '3.50'),
(58, 42, 10, 4, '11.50', 10, 2, '3.50'),
(59, 42, NULL, NULL, NULL, 9, 2, '3.50'),
(60, 43, 11, 1, '11.50', 12, 1, '3.50'),
(61, 44, 11, 1, '11.50', 11, 1, '3.50'),
(62, 45, 11, 1, '11.50', 11, 1, '3.50'),
(63, 45, 12, 1, '11.50', 12, 1, '3.50'),
(64, 46, 12, 1, '11.50', 11, 1, '3.50'),
(65, 47, 12, 1, '11.50', 12, 1, '3.50'),
(66, 48, 11, 2, '11.50', 11, 2, '3.50'),
(67, 49, 12, 2, '11.50', 12, 2, '3.50'),
(68, 50, 11, 1, '11.50', 12, 1, '3.50'),
(69, 51, 12, 1, '11.50', 12, 1, '3.50'),
(70, 52, 12, 4, '11.50', 12, 2, '3.50'),
(71, 52, NULL, NULL, NULL, 11, 2, '3.50'),
(72, 53, 13, 1, '11.50', 14, 1, '3.50'),
(73, 54, 13, 1, '11.50', 13, 1, '3.50'),
(74, 55, 13, 1, '11.50', 13, 1, '3.50'),
(75, 55, 14, 1, '11.50', 14, 1, '3.50'),
(76, 56, 14, 1, '11.50', 13, 1, '3.50'),
(77, 57, 14, 1, '11.50', 14, 1, '3.50'),
(78, 58, 13, 2, '11.50', 13, 2, '3.50'),
(79, 59, 14, 2, '11.50', 14, 2, '3.50'),
(80, 60, 13, 1, '11.50', 14, 1, '3.50'),
(81, 61, 14, 1, '11.50', 14, 1, '3.50'),
(82, 62, 14, 4, '11.50', 14, 2, '3.50'),
(83, 62, NULL, NULL, NULL, 13, 2, '3.50'),
(84, 63, 15, 1, '11.50', 16, 1, '3.50'),
(85, 64, 15, 1, '11.50', 15, 1, '3.50'),
(86, 65, 15, 1, '11.50', 15, 1, '3.50'),
(87, 65, 16, 1, '11.50', 16, 1, '3.50'),
(88, 66, 16, 1, '11.50', 15, 1, '3.50'),
(89, 67, 16, 1, '11.50', 16, 1, '3.50'),
(90, 68, 15, 2, '11.50', 15, 2, '3.50'),
(91, 69, 16, 2, '11.50', 16, 2, '3.50'),
(92, 70, 15, 1, '11.50', 16, 1, '3.50'),
(93, 71, 16, 1, '11.50', 16, 1, '3.50'),
(94, 72, 16, 4, '11.50', 16, 2, '3.50'),
(95, 72, NULL, NULL, NULL, 15, 2, '3.50'),
(96, 73, 17, 1, '11.50', 18, 1, '3.50'),
(97, 74, 17, 1, '11.50', 17, 1, '3.50'),
(98, 75, 17, 1, '11.50', 17, 1, '3.50'),
(99, 75, 18, 1, '11.50', 18, 1, '3.50'),
(100, 76, 18, 1, '11.50', 17, 1, '3.50'),
(101, 77, 18, 1, '11.50', 18, 1, '3.50'),
(102, 78, 17, 2, '11.50', 17, 2, '3.50'),
(103, 79, 18, 2, '11.50', 18, 2, '3.50'),
(104, 80, 17, 1, '11.50', 18, 1, '3.50'),
(105, 81, 18, 1, '11.50', 18, 1, '3.50'),
(106, 82, 18, 4, '11.50', 18, 2, '3.50'),
(107, 82, NULL, NULL, NULL, 17, 2, '3.50');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `facture_id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `code_postal` int(5) NOT NULL,
  `ville` varchar(45) NOT NULL,
  `telephone` int(10) NOT NULL,
  `montant_total_ht` decimal(6,2) NOT NULL,
  `tva` decimal(4,2) NOT NULL,
  `date_facture` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `paiement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`facture_id`, `nom`, `prenom`, `adresse`, `code_postal`, `ville`, `telephone`, `montant_total_ht`, `tva`, `date_facture`, `paiement_id`) VALUES
(1, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, '15.00', '10.00', '2021-07-19 15:10:49', 1),
(2, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, '30.00', '10.00', '2021-07-19 15:10:49', 2),
(3, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, '15.00', '10.00', '2021-07-19 15:10:49', 3),
(4, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, '75.00', '10.00', '2021-07-19 15:10:49', 4),
(5, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, '30.00', '10.00', '2021-07-19 15:10:49', 5),
(6, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, '30.00', '10.00', '2021-07-20 16:02:37', 6),
(7, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, '60.00', '10.00', '2021-07-20 16:02:37', 7),
(8, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, '15.00', '10.00', '2021-07-20 16:02:37', 8),
(9, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, '30.00', '10.00', '2021-07-20 16:02:37', 9),
(10, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, '15.00', '10.00', '2021-07-20 16:02:37', 10),
(11, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, '15.00', '10.00', '2021-07-21 16:03:08', 11),
(12, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, '15.00', '10.00', '2021-07-21 16:03:08', 12),
(13, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, '30.00', '10.00', '2021-07-21 16:03:08', 13),
(14, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, '15.00', '10.00', '2021-07-21 16:03:08', 14),
(15, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, '15.00', '10.00', '2021-07-21 16:03:08', 15),
(16, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, '30.00', '10.00', '2021-07-21 16:03:08', 16),
(17, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, '30.00', '10.00', '2021-07-21 16:03:08', 17),
(18, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, '15.00', '10.00', '2021-07-21 16:03:08', 18),
(19, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, '15.00', '10.00', '2021-07-21 16:04:35', 19),
(20, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, '60.00', '10.00', '2021-07-21 16:04:40', 20),
(21, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, '15.00', '10.00', '2021-07-22 16:04:46', 21),
(22, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, '15.00', '10.00', '2021-07-22 16:04:46', 22),
(23, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, '30.00', '10.00', '2021-07-22 16:04:46', 23),
(24, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, '15.00', '10.00', '2021-07-22 16:04:46', 24),
(25, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, '15.00', '10.00', '2021-07-22 16:04:46', 25),
(26, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, '30.00', '10.00', '2021-07-22 16:04:46', 26),
(27, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, '30.00', '10.00', '2021-07-22 16:04:46', 27),
(28, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, '15.00', '10.00', '2021-07-22 16:04:46', 28),
(29, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, '15.00', '10.00', '2021-07-22 16:04:46', 29),
(30, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, '60.00', '10.00', '2021-07-22 16:04:46', 30),
(31, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, '15.00', '10.00', '2021-07-23 16:06:30', 31),
(32, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, '15.00', '10.00', '2021-07-23 16:06:30', 32),
(33, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, '30.00', '10.00', '2021-07-23 16:06:30', 33),
(34, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, '15.00', '10.00', '2021-07-23 16:06:30', 34),
(35, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, '15.00', '10.00', '2021-07-23 16:06:30', 35),
(36, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, '30.00', '10.00', '2021-07-23 16:06:30', 36),
(37, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, '30.00', '10.00', '2021-07-23 16:06:30', 37),
(38, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, '15.00', '10.00', '2021-07-23 16:06:30', 38),
(39, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, '15.00', '10.00', '2021-07-23 16:06:30', 39),
(40, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, '60.00', '10.00', '2021-07-23 16:06:30', 40),
(41, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, '15.00', '10.00', '2021-07-24 16:06:30', 41),
(42, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, '15.00', '10.00', '2021-07-24 16:06:30', 42),
(43, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, '30.00', '10.00', '2021-07-24 16:06:30', 43),
(44, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, '15.00', '10.00', '2021-07-24 16:06:30', 44),
(45, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, '15.00', '10.00', '2021-07-24 16:06:30', 45),
(46, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, '30.00', '10.00', '2021-07-24 16:06:30', 46),
(47, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, '30.00', '10.00', '2021-07-24 16:06:30', 47),
(48, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, '15.00', '10.00', '2021-07-24 16:06:30', 48),
(49, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, '15.00', '10.00', '2021-07-24 16:06:30', 49),
(50, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, '60.00', '10.00', '2021-07-24 16:06:30', 50),
(51, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, '15.00', '10.00', '2021-07-25 16:06:30', 51),
(52, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, '15.00', '10.00', '2021-07-25 16:06:30', 52),
(53, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, '30.00', '10.00', '2021-07-25 16:06:30', 53),
(54, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, '15.00', '10.00', '2021-07-25 16:06:30', 54),
(55, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, '15.00', '10.00', '2021-07-25 16:06:30', 55),
(56, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, '30.00', '10.00', '2021-07-25 16:06:30', 56),
(57, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, '30.00', '10.00', '2021-07-25 16:06:30', 57),
(58, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, '15.00', '10.00', '2021-07-25 16:06:30', 58),
(59, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, '15.00', '10.00', '2021-07-25 16:06:30', 59),
(60, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, '60.00', '10.00', '2021-07-25 16:06:30', 60),
(61, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, '15.00', '10.00', '2021-07-26 16:06:30', 61),
(62, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, '15.00', '10.00', '2021-07-26 16:06:30', 62),
(63, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, '30.00', '10.00', '2021-07-26 16:06:30', 63),
(64, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, '15.00', '10.00', '2021-07-26 16:06:30', 64),
(65, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, '15.00', '10.00', '2021-07-26 16:06:30', 65),
(66, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, '30.00', '10.00', '2021-07-26 16:06:30', 66),
(67, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, '30.00', '10.00', '2021-07-26 16:06:30', 67),
(68, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, '15.00', '10.00', '2021-07-26 16:06:30', 68),
(69, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, '15.00', '10.00', '2021-07-26 16:06:30', 69),
(70, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, '60.00', '10.00', '2021-07-26 16:06:30', 70),
(71, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, '15.00', '10.00', '2021-07-27 16:06:30', 71),
(72, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, '15.00', '10.00', '2021-07-27 16:06:30', 72),
(73, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, '30.00', '10.00', '2021-07-27 16:06:30', 73),
(74, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, '15.00', '10.00', '2021-07-27 16:06:30', 74),
(75, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, '15.00', '10.00', '2021-07-27 16:06:30', 75),
(76, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, '30.00', '10.00', '2021-07-27 16:06:30', 76),
(77, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, '30.00', '10.00', '2021-07-27 16:06:30', 77),
(78, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, '15.00', '10.00', '2021-07-27 16:06:30', 78),
(79, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, '15.00', '10.00', '2021-07-27 16:06:30', 79),
(80, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, '60.00', '10.00', '2021-07-27 16:06:30', 80),
(81, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, '15.00', '10.00', '2021-07-28 16:06:30', 81),
(82, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, '15.00', '10.00', '2021-07-28 16:06:30', 82),
(83, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, '30.00', '10.00', '2021-07-28 16:06:30', 83),
(84, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, '15.00', '10.00', '2021-07-28 16:06:30', 84),
(85, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, '15.00', '10.00', '2021-07-28 16:06:30', 85),
(87, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, '30.00', '10.00', '2021-07-28 16:06:30', 86),
(88, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, '30.00', '10.00', '2021-07-28 16:06:30', 87),
(89, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, '15.00', '10.00', '2021-07-28 16:06:30', 88),
(90, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, '15.00', '10.00', '2021-07-28 16:06:30', 89),
(91, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, '60.00', '10.00', '2021-07-28 16:06:30', 90);

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `livraison_id` int(11) NOT NULL,
  `commande_id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `code_postal` int(5) NOT NULL,
  `ville` varchar(45) NOT NULL,
  `telephone` int(10) NOT NULL,
  `statut_livraison` enum('En attente','En cours','Livrée','Annulée') NOT NULL DEFAULT 'En attente',
  `date_livraison` datetime DEFAULT NULL,
  `livreur_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livraison`
--

INSERT INTO `livraison` (`livraison_id`, `commande_id`, `nom`, `prenom`, `adresse`, `code_postal`, `ville`, `telephone`, `statut_livraison`, `date_livraison`, `livreur_id`) VALUES
(1, 1, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, 'Livrée', '2021-07-19 16:55:08', 5),
(5, 2, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, 'Livrée', '2021-07-19 17:10:08', 6),
(6, 3, 'autre nom12', 'autre prenom 12', 'autre adresse 12', 78120, 'Rambouillet', 617171717, 'Livrée', '2021-07-19 17:06:35', 7),
(7, 4, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, 'Livrée', '2021-07-19 17:49:22', 8),
(8, 5, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, 'Livrée', '2021-07-19 17:52:44', 9),
(9, 8, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, 'Livrée', '2021-07-20 15:10:00', 5),
(10, 9, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, 'Livrée', '2021-07-20 15:12:05', 6),
(11, 10, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, 'Livrée', '2021-07-20 15:05:25', 7),
(12, 11, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, 'Livrée', '2021-07-20 15:00:55', 8),
(13, 12, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, 'Livrée', '2021-07-20 15:23:45', 9),
(14, 13, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, 'Livrée', '2021-07-21 15:52:00', 5),
(15, 14, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, 'Livrée', '2021-07-21 15:52:05', 6),
(16, 15, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, 'Livrée', '2021-07-21 15:52:25', 7),
(17, 16, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, 'Livrée', '2021-07-21 15:52:55', 8),
(18, 17, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, 'Livrée', '2021-07-21 15:52:45', 9),
(19, 18, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, 'Livrée', '2021-07-21 15:58:45', 5),
(20, 19, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, 'Livrée', '2021-07-21 15:58:45', 6),
(21, 20, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, 'Livrée', '2021-07-21 15:58:45', 7),
(22, 21, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, 'Livrée', '2021-07-21 15:58:45', 8),
(23, 22, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, 'Livrée', '2021-07-21 15:58:45', 9),
(24, 23, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, 'Livrée', '2021-07-22 16:26:00', 5),
(25, 24, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, 'Livrée', '2021-07-22 16:26:05', 6),
(26, 25, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, 'Livrée', '2021-07-22 16:26:25', 7),
(27, 26, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, 'Livrée', '2021-07-22 16:26:55', 8),
(28, 27, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, 'Livrée', '2021-07-22 16:26:45', 9),
(29, 28, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, 'Livrée', '2021-07-22 16:35:45', 5),
(30, 29, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, 'Livrée', '2021-07-22 16:35:45', 6),
(31, 30, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, 'Livrée', '2021-07-22 16:35:45', 7),
(32, 31, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, 'Livrée', '2021-07-22 16:35:45', 8),
(33, 32, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, 'Livrée', '2021-07-22 16:35:45', 9),
(34, 33, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, 'Livrée', '2021-07-23 17:05:00', 5),
(35, 34, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, 'Livrée', '2021-07-23 16:55:05', 6),
(36, 35, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, 'Livrée', '2021-07-23 16:55:25', 7),
(37, 36, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, 'Livrée', '2021-07-23 16:55:55', 8),
(38, 37, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, 'Livrée', '2021-07-23 16:55:45', 9),
(39, 38, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, 'Livrée', '2021-07-23 16:59:45', 5),
(40, 39, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, 'Livrée', '2021-07-23 16:59:45', 6),
(41, 40, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, 'Livrée', '2021-07-23 16:59:45', 7),
(42, 41, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, 'Livrée', '2021-07-23 16:59:45', 8),
(43, 42, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, 'Livrée', '2021-07-23 16:59:45', 9),
(44, 43, 'Ourkessa', 'Cécile', 'adresse10', 78120, 'Rambouillet', 615151515, 'Livrée', '2021-07-24 17:15:00', 5),
(45, 44, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, 'Livrée', '2021-07-24 17:15:00', 6),
(46, 45, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, 'Livrée', '2021-07-24 17:15:00', 7),
(47, 46, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, 'Livrée', '2021-07-24 17:15:00', 8),
(48, 47, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, 'Livrée', '2021-07-24 17:15:00', 9),
(49, 48, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, 'Livrée', '2021-07-24 17:18:00', 5),
(50, 49, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, 'Livrée', '2021-07-24 17:18:00', 6),
(51, 50, 'Alavanille', 'Douglas', 'adresse17', 78120, 'Rambouillet', 622222222, 'Livrée', '2021-07-24 17:18:00', 7),
(52, 51, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, 'Livrée', '2021-07-24 17:18:00', 8),
(53, 52, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, 'Livrée', '2021-07-24 17:18:00', 9),
(54, 53, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, 'Livrée', '2021-07-25 17:25:00', 5),
(55, 54, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, 'Livrée', '2021-07-25 17:25:00', 6),
(56, 55, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, 'Livrée', '2021-07-25 17:25:00', 7),
(57, 56, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, 'Livrée', '2021-07-25 17:25:00', 8),
(58, 57, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, 'Livrée', '2021-07-25 17:25:00', 9),
(59, 58, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, 'Livrée', '2021-07-25 17:28:00', 5),
(60, 59, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, 'Livrée', '2021-07-25 17:28:00', 6),
(61, 60, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, 'Livrée', '2021-07-25 17:28:00', 7),
(62, 61, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, 'Livrée', '2021-07-25 17:28:00', 8),
(63, 62, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, 'Livrée', '2021-07-25 17:28:00', 9),
(64, 63, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, 'Livrée', '2021-07-26 17:34:00', 5),
(65, 64, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, 'Livrée', '2021-07-26 17:34:00', 6),
(66, 65, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, 'Livrée', '2021-07-26 17:34:00', 7),
(67, 66, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, 'Livrée', '2021-07-26 17:34:00', 8),
(68, 67, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, 'Livrée', '2021-07-26 17:34:00', 9),
(69, 68, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, 'Livrée', '2021-07-26 17:40:00', 5),
(70, 69, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, 'Livrée', '2021-07-26 17:40:00', 6),
(71, 70, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, 'Livrée', '2021-07-26 17:40:00', 7),
(72, 71, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, 'Livrée', '2021-07-26 17:40:00', 8),
(73, 72, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, 'Livrée', '2021-07-26 17:40:00', 9),
(74, 73, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, 'Livrée', '2021-07-27 17:45:00', 5),
(75, 74, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, 'Livrée', '2021-07-27 17:45:00', 6),
(76, 75, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, 'Livrée', '2021-07-27 17:45:00', 7),
(77, 76, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, 'Livrée', '2021-07-27 17:45:00', 8),
(78, 77, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, 'Livrée', '2021-07-27 17:45:00', 9),
(79, 78, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, 'Livrée', '2021-07-27 17:51:00', 5),
(80, 79, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, 'Livrée', '2021-07-27 17:51:00', 6),
(81, 80, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, 'Livrée', '2021-07-27 17:51:00', 7),
(82, 81, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, 'Livrée', '2021-07-27 17:51:00', 8),
(83, 82, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, 'Livrée', '2021-07-27 17:50:50', 9),
(84, 83, 'nom10', 'prenom10', 'adresse10', 78120, 'Rambouillet', 615151515, 'Livrée', '2021-07-28 18:13:00', 5),
(85, 84, 'nom11', 'prenom11', 'adresse11', 78120, 'Rambouillet', 616161616, 'Livrée', '2021-07-28 18:13:00', 6),
(86, 85, 'nom12', 'prenom12', 'adresse12', 78120, 'Rambouillet', 617171717, 'Livrée', '2021-07-28 18:13:00', 7),
(87, 86, 'nom13', 'prenom13', 'adresse13', 78120, 'Rambouillet', 618181818, 'Livrée', '2021-07-28 18:13:00', 8),
(88, 87, 'nom14', 'prenom14', 'adresse14', 78120, 'Rambouillet', 619191919, 'Livrée', '2021-07-28 18:13:00', 9),
(89, 88, 'nom15', 'prenom15', 'adresse15', 78120, 'Rambouillet', 620202020, 'Livrée', '2021-07-28 18:21:07', 5),
(90, 89, 'nom16', 'prenom16', 'adresse16', 78120, 'Rambouillet', 621212121, 'En cours', NULL, 6),
(91, 90, 'nom17', 'prenom17', 'adresse17', 78120, 'Rambouillet', 622222222, 'En cours', NULL, 7),
(92, 91, 'nom18', 'prenom18', 'adresse18', 78120, 'Rambouillet', 623232323, 'En cours', NULL, 8),
(93, 92, 'nom19', 'prenom19', 'adresse19', 78120, 'Rambouillet', 624242424, 'Livrée', '2021-07-28 18:25:00', 9);

-- --------------------------------------------------------

--
-- Structure de la table `livreur`
--

CREATE TABLE `livreur` (
  `livreur_id` int(11) NOT NULL,
  `stock_plat_1` int(2) DEFAULT NULL,
  `stock_dessert_1` int(2) DEFAULT NULL,
  `stock_plat_2` int(2) DEFAULT NULL,
  `stock_dessert_2` int(2) DEFAULT NULL,
  `statut_livreur` enum('Non disponible','Disponible','En livraison','En réappro') NOT NULL DEFAULT 'Non disponible',
  `position_latitude` decimal(9,6) DEFAULT NULL,
  `position_longitude` decimal(9,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livreur`
--

INSERT INTO `livreur` (`livreur_id`, `stock_plat_1`, `stock_dessert_1`, `stock_plat_2`, `stock_dessert_2`, `statut_livreur`, `position_latitude`, `position_longitude`) VALUES
(5, 4, 5, 5, 4, 'Disponible', '48.643868', '1.829079'),
(6, 5, 4, 3, 4, 'En livraison', '48.643868', '1.829079'),
(7, 5, 5, 4, 4, 'En livraison', '48.643868', '1.829079'),
(8, 3, 2, 3, 3, 'En livraison', '48.643868', '1.829079'),
(9, 0, 0, 0, 0, 'En réappro', '48.643868', '1.829079');

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `paiement_id` int(11) NOT NULL,
  `type_paiement` enum('En ligne','A la livraison') NOT NULL,
  `statut_paiement` enum('Payé','En attente de livraison') NOT NULL,
  `moyen_paiement` enum('CB','En liquide') NOT NULL,
  `commande_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `paiement`
--

INSERT INTO `paiement` (`paiement_id`, `type_paiement`, `statut_paiement`, `moyen_paiement`, `commande_id`) VALUES
(1, 'En ligne', 'Payé', 'CB', 1),
(2, 'En ligne', 'Payé', 'CB', 2),
(3, 'En ligne', 'Payé', 'CB', 3),
(4, 'En ligne', 'Payé', 'CB', 4),
(5, 'En ligne', 'Payé', 'CB', 5),
(6, 'A la livraison', 'Payé', 'En liquide', 8),
(7, 'En ligne', 'Payé', 'CB', 9),
(8, 'En ligne', 'Payé', 'CB', 10),
(9, 'En ligne', 'Payé', 'CB', 11),
(10, 'A la livraison', 'Payé', 'En liquide', 12),
(11, 'A la livraison', 'Payé', 'CB', 13),
(12, 'En ligne', 'Payé', 'CB', 14),
(13, 'En ligne', 'Payé', 'CB', 15),
(14, 'En ligne', 'Payé', 'CB', 16),
(15, 'A la livraison', 'Payé', 'En liquide', 17),
(16, 'En ligne', 'Payé', 'CB', 18),
(17, 'En ligne', 'Payé', 'CB', 19),
(18, 'En ligne', 'Payé', 'CB', 20),
(19, 'En ligne', 'Payé', 'CB', 21),
(20, 'En ligne', 'Payé', 'CB', 22),
(21, 'En ligne', 'Payé', 'CB', 23),
(22, 'En ligne', 'Payé', 'CB', 24),
(23, 'En ligne', 'Payé', 'CB', 25),
(24, 'En ligne', 'Payé', 'CB', 26),
(25, 'En ligne', 'Payé', 'CB', 27),
(26, 'A la livraison', 'Payé', 'En liquide', 28),
(27, 'A la livraison', 'Payé', 'En liquide', 29),
(28, 'A la livraison', 'Payé', 'En liquide', 30),
(29, 'En ligne', 'Payé', 'CB', 31),
(30, 'En ligne', 'Payé', 'CB', 32),
(31, 'En ligne', 'Payé', 'CB', 33),
(32, 'En ligne', 'Payé', 'CB', 34),
(33, 'En ligne', 'Payé', 'CB', 35),
(34, 'En ligne', 'Payé', 'CB', 36),
(35, 'En ligne', 'Payé', 'CB', 37),
(36, 'En ligne', 'Payé', 'CB', 38),
(37, 'En ligne', 'Payé', 'CB', 39),
(38, 'En ligne', 'Payé', 'CB', 40),
(39, 'En ligne', 'Payé', 'CB', 41),
(40, 'En ligne', 'Payé', 'CB', 42),
(41, 'A la livraison', 'Payé', 'CB', 43),
(42, 'A la livraison', 'Payé', 'CB', 44),
(43, 'A la livraison', 'Payé', 'CB', 45),
(44, 'En ligne', 'Payé', 'CB', 46),
(45, 'En ligne', 'Payé', 'CB', 47),
(46, 'En ligne', 'Payé', 'CB', 48),
(47, 'En ligne', 'Payé', 'CB', 49),
(48, 'En ligne', 'Payé', 'CB', 50),
(49, 'En ligne', 'Payé', 'CB', 51),
(50, 'En ligne', 'Payé', 'CB', 52),
(51, 'En ligne', 'Payé', 'CB', 53),
(52, 'En ligne', 'Payé', 'CB', 54),
(53, 'En ligne', 'Payé', 'CB', 55),
(54, 'En ligne', 'Payé', 'CB', 56),
(55, 'En ligne', 'Payé', 'CB', 57),
(56, 'En ligne', 'Payé', 'CB', 58),
(57, 'En ligne', 'Payé', 'CB', 59),
(58, 'En ligne', 'Payé', 'CB', 60),
(59, 'En ligne', 'Payé', 'CB', 61),
(60, 'En ligne', 'Payé', 'CB', 62),
(61, 'En ligne', 'Payé', 'CB', 63),
(62, 'En ligne', 'Payé', 'CB', 64),
(63, 'En ligne', 'Payé', 'CB', 65),
(64, 'A la livraison', 'Payé', 'CB', 66),
(65, 'En ligne', 'Payé', 'CB', 67),
(66, 'A la livraison', 'Payé', 'CB', 68),
(67, 'A la livraison', 'Payé', 'CB', 69),
(68, 'A la livraison', 'Payé', 'CB', 70),
(69, 'En ligne', 'Payé', 'CB', 71),
(70, 'En ligne', 'Payé', 'CB', 72),
(71, 'En ligne', 'Payé', 'CB', 73),
(72, 'En ligne', 'Payé', 'CB', 74),
(73, 'En ligne', 'Payé', 'CB', 75),
(74, 'En ligne', 'Payé', 'CB', 76),
(75, 'En ligne', 'Payé', 'CB', 77),
(76, 'En ligne', 'Payé', 'CB', 78),
(77, 'En ligne', 'Payé', 'CB', 79),
(78, 'En ligne', 'Payé', 'CB', 80),
(79, 'A la livraison', 'Payé', 'CB', 81),
(80, 'A la livraison', 'Payé', 'CB', 82),
(81, 'En ligne', 'Payé', 'CB', 83),
(82, 'En ligne', 'Payé', 'CB', 84),
(83, 'A la livraison', 'Payé', 'En liquide', 85),
(84, 'En ligne', 'Payé', 'CB', 86),
(85, 'En ligne', 'Payé', 'CB', 87),
(86, 'En ligne', 'Payé', 'CB', 88),
(87, 'En ligne', 'Payé', 'CB', 89),
(88, 'En ligne', 'Payé', 'CB', 90),
(89, 'En ligne', 'Payé', 'CB', 91),
(90, 'A la livraison', 'Payé', 'En liquide', 92);

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

CREATE TABLE `plat` (
  `plat_id` int(11) NOT NULL,
  `nom_plat` varchar(45) NOT NULL,
  `description_plat` text NOT NULL,
  `photo_plat` varchar(50) NOT NULL,
  `prix_plat` decimal(4,2) NOT NULL,
  `stock_plat` int(3) DEFAULT NULL,
  `plat_du_jour` tinyint(1) NOT NULL DEFAULT 0,
  `date_plat_dispo` date DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `plat`
--

INSERT INTO `plat` (`plat_id`, `nom_plat`, `description_plat`, `photo_plat`, `prix_plat`, `stock_plat`, `plat_du_jour`, `date_plat_dispo`, `date_creation`) VALUES
(1, 'Cassoulet', 'Originaire du Languedoc-Roussillon, ce plat est composé de haricots blancs, de cuisses de canard et de viande de porc (sous différentes formes).', '', '11.50', 0, 0, '2021-07-19', '2021-07-19 08:55:29'),
(2, 'Poulet basquaise', 'Le Poulet Basquaise est un plat complet où la viande est rendue moelleuse par une piperade, une sauce composée de jambon de Bayonne, poivrons, tomates et piment d’Espelette.', '', '11.50', 0, 0, '2021-07-19', '2021-07-19 08:55:29'),
(3, 'Mouclade charentaise', 'Les moules de Bouchot sont cuisinées avec des échalotes, des gousses d’ail, des bouquets garnis, des épices, des œufs, de la crème et, surtout du Pineau des Charentes.', '', '11.50', 0, 0, '2021-07-20', '2021-07-19 08:55:29'),
(4, 'Carbonnade flamande', 'Il s’agit d’un plat de bœuf, mijoté dans de la bière blonde et des aromates. On y ajoute en fin de cuisson un peu de pain d’épice traditionnel moutardé afin de donner encore plus de goût à ce plat sucré-salé.', '', '11.50', 0, 0, '2021-07-20', '2021-07-19 08:55:29'),
(5, 'Quiche lorraine', 'Tarte garnie avec un appareil composé de crème fraîche, de lait, d’œufs, de noix de muscade ainsi que de lardons grillés. Ces derniers ingrédients lui confèrent un petit goût fumé, tant apprécié au quatre coins de la France.', '', '11.50', 0, 0, '2021-07-21', '2021-07-19 08:55:29'),
(6, 'Gratin dauphinois', 'Composé de pommes de terre cuites en rondelles, crème fraîche, lait et noix de muscade.', '', '11.50', 0, 0, '2021-07-21', '2021-07-19 08:55:29'),
(7, 'Tartiflette', 'Gratin à base de pommes de terre, de lardons, d’oignons et de reblochon, un fromage savoyard.', '', '11.50', 0, 0, '2021-07-22', '2021-07-19 08:55:29'),
(8, 'Bouillabaisse', 'Soupe corsée, typique de la région de Marseille. Ce plat est constitué de poissons variés, de coquillages, de tomates, d’aromates du Sud, de moutarde et de jaunes d’œuf.', '', '11.50', 0, 0, '2021-07-22', '2021-07-19 08:55:29'),
(9, 'Bœuf bourguignon', 'Plat familial traditionnel. Il s’agit de morceaux de bœuf mijotés dans du vin rouge avec des légumes racines et des champignons.', '', '11.50', 0, 0, '2021-07-23', '2021-07-19 08:55:29'),
(10, 'Blanquette de veau', 'Plat mijoté, préparé avec de l’épaule de veau, de la crème, un bouillon à base de carottes, d’oignons et de champignons', '', '11.50', 0, 0, '2021-07-23', '2021-07-19 08:55:29'),
(11, 'Pot-au-feu', 'Plat familial et traditionnel français par excellence. Il s’agit d’un plat de bœuf qui cuit longtemps et à feu très doux dans un bouillon de carottes, navets et poireaux.', '', '11.50', 0, 0, '2021-07-24', '2021-07-19 08:55:29'),
(12, 'Coq-au-vin', 'Il s’agit d’une variante du célèbre bœuf bourguignon cuisinée à base de coq mariné dans du vin rouge, des lardons et des champignons.', '', '11.50', 0, 0, '2021-07-24', '2021-07-19 08:55:29'),
(13, 'Hachis Parmentier', 'Composé de deux couches : une première est de la viande hachée à laquelle le chef a ajouté des aromates, la seconde couche est une purée maison, gratinée', '', '11.50', 0, 0, '2021-07-25', '2021-07-19 08:55:29'),
(14, 'Choucroute', 'Plat à base de chou fermenté accompagné de pommes de terre, de lard et de diverses sortes de saucisses.', '', '11.50', 0, 0, '2021-07-25', '2021-07-19 08:55:29'),
(15, 'Cuisses de grenouilles', 'Elles sont panées avec un peu d’oignon. La chair est délicate et le goût proche de celui de la volaille tout en étant moelleuse.', '', '11.50', 0, 0, '2021-07-26', '2021-07-19 08:55:29'),
(16, 'Paella', 'elle est préparée à base de viande de lapin, de poulet, d’escargots et de riz.', '', '11.50', 0, 0, '2021-07-26', '2021-07-19 08:55:29'),
(17, 'Pulpo a Feira', 'Plat dont l’ingrédient principal est le poulpe. Servi en tranches avec un filet d\'huile d\'olive, du gros sel, du paprika et accompagné de pommes de terre bouillies.', '', '11.50', 0, 0, '2021-07-27', '2021-07-19 08:55:29'),
(18, 'Les fèves au lard', 'Plat typique québécois. Il est composé de haricots blancs, du lard, des oignons, de la mélasse et du sirop d’érable.', '', '11.50', 0, 0, '2021-07-27', '2021-07-19 08:55:29'),
(19, 'La tourtière', 'Cette délicieuse tourte à la viande se compose d’un fond de tarte garni de boeuf, puis assaisonné d’épices avant d’être cuite au four.', '', '11.50', 27, 1, '2021-07-28', '2021-07-19 08:55:29'),
(20, 'Machbous', 'Le plat se compose de riz basmati servi avec du poulet et des légumes variés, rehaussés par les puissants arômes des épices arabes.', '', '11.50', 27, 1, '2021-07-28', '2021-07-19 08:55:29');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `utilisateur_id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mot_de_passe` varchar(45) NOT NULL,
  `role` enum('admin','cuisto','livreur','client') NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `code_postal` int(5) NOT NULL,
  `ville` varchar(45) NOT NULL,
  `telephone` int(10) NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`utilisateur_id`, `nom`, `prenom`, `email`, `mot_de_passe`, `role`, `adresse`, `code_postal`, `ville`, `telephone`, `date_creation`) VALUES
(1, 'Fonfek', 'Sophie', 'admin@gmail.com', 'admin1', 'admin', 'adresse1', 78120, 'Rambouillet', 606060606, '2021-07-19 13:31:35'),
(2, 'Nana', 'Juda', 'admin2@gmail.com', 'admin2', 'admin', 'adresse2', 78120, 'Rambouillet', 607070707, '2021-07-19 13:31:35'),
(3, 'Deblouze', 'Agathe', 'cuisinier@gmail.com', 'cuisto1', 'cuisto', 'adresse3', 78120, 'Rambouillet', 608080808, '2021-07-19 13:31:35'),
(4, 'Mensoif', 'Gérard', 'cuisinier2@gmail.com', 'cuisto2', 'cuisto', 'adresse4', 78120, 'Rambouillet', 609090909, '2021-07-19 13:31:35'),
(5, 'Zarella', 'Maude', 'livreur@gmail.com', 'livreur1', 'livreur', 'adresse5', 78120, 'Rambouillet', 610101010, '2021-07-19 13:31:35'),
(6, 'Avuleur', 'Edith', 'livreur2@gmail.com', 'livreur2', 'livreur', 'adresse6', 78120, 'Rambouillet', 611111111, '2021-07-19 13:31:35'),
(7, 'Dissoir', 'Alain', 'livreur3@gmail.com', 'livreur3', 'livreur', 'adresse7', 78120, 'Rambouillet', 612121212, '2021-07-19 13:31:35'),
(8, 'Scott', 'Debby', 'livreur4@gmail.com', 'livreur4', 'livreur', 'adresse8', 78120, 'Rambouillet', 613131313, '2021-07-19 13:31:35'),
(9, 'Zola', 'Gordon', 'livreur5@gmail.com', 'livreur5', 'livreur', 'adresse9', 78120, 'Rambouillet', 614141414, '2021-07-19 13:31:35'),
(10, 'Ourkessa', 'Cécile', 'client1@gmail.com', 'client1', 'client', 'adresse10', 78120, 'Rambouillet', 615151515, '2021-07-19 13:31:35'),
(11, 'Serolle', 'Jessica', 'client2@gmail.com', 'client2', 'client', 'adresse11', 78120, 'Rambouillet', 616161616, '2021-07-19 13:31:35'),
(12, 'Tare', 'Guy', 'client3@gmail.com', 'client3', 'client', 'adresse12', 78120, 'Rambouillet', 617171717, '2021-07-19 13:31:35'),
(13, 'Touille', 'Sacha', 'client4@gmail.com', 'client4', 'client', 'adresse13', 78120, 'Rambouillet', 618181818, '2021-07-19 13:31:35'),
(14, 'Aire', 'Axel', 'client5@gmail.com', 'client5', 'client', 'adresse14', 78120, 'Rambouillet', 619191919, '2021-07-19 13:31:35'),
(15, 'Sérien', 'Jean', 'client6@gmail.com', 'client6', 'client', 'adresse15', 78120, 'Rambouillet', 620202020, '2021-07-19 13:31:35'),
(16, 'Atrovite', 'Yves', 'client7@gmail.com', 'client7', 'client', 'adresse16', 78120, 'Rambouillet', 621212121, '2021-07-19 13:31:35'),
(17, 'Alavanille', 'Douglas', 'client8@gmail.com', 'client8', 'client', 'adresse17', 78120, 'Rambouillet', 622222222, '2021-07-19 13:31:35'),
(18, 'Caman', 'Medhi', 'client9@gmail.com', 'client9', 'client', 'adresse18', 78120, 'Rambouillet', 623232323, '2021-07-19 13:31:35'),
(19, 'Naidauchaude', 'Robby', 'client10@gmail.com', 'client10', 'client', 'adresse19', 78120, 'Rambouillet', 624242424, '2021-07-19 13:31:35');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`commande_id`),
  ADD KEY `utilisateur_commande_fk` (`utilisateur_id`);

--
-- Index pour la table `dessert`
--
ALTER TABLE `dessert`
  ADD PRIMARY KEY (`dessert_id`);

--
-- Index pour la table `details_commande`
--
ALTER TABLE `details_commande`
  ADD PRIMARY KEY (`details_commande_id`),
  ADD KEY `plat_details_commande_fk` (`plat_id`),
  ADD KEY `dessert_details_commande_fk` (`dessert_id`),
  ADD KEY `commande_details_commande_fk` (`commande_id`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`facture_id`),
  ADD KEY `paiement_facture_fk` (`paiement_id`);

--
-- Index pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`livraison_id`),
  ADD KEY `livreur_livraison_fk` (`livreur_id`),
  ADD KEY `commande_livraison_fk` (`commande_id`);

--
-- Index pour la table `livreur`
--
ALTER TABLE `livreur`
  ADD PRIMARY KEY (`livreur_id`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`paiement_id`),
  ADD KEY `commande_paiement_fk` (`commande_id`);

--
-- Index pour la table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`plat_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`utilisateur_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `commande_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT pour la table `dessert`
--
ALTER TABLE `dessert`
  MODIFY `dessert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `details_commande`
--
ALTER TABLE `details_commande`
  MODIFY `details_commande_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `facture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT pour la table `livraison`
--
ALTER TABLE `livraison`
  MODIFY `livraison_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `paiement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `plat`
--
ALTER TABLE `plat`
  MODIFY `plat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `utilisateur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `utilisateur_commande_fk` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`utilisateur_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `details_commande`
--
ALTER TABLE `details_commande`
  ADD CONSTRAINT `commande_details_commande_fk` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`commande_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `dessert_details_commande_fk` FOREIGN KEY (`dessert_id`) REFERENCES `dessert` (`dessert_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `plat_details_commande_fk` FOREIGN KEY (`plat_id`) REFERENCES `plat` (`plat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `paiement_facture_fk` FOREIGN KEY (`paiement_id`) REFERENCES `paiement` (`paiement_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `commande_livraison_fk` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`commande_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `livreur_livraison_fk` FOREIGN KEY (`livreur_id`) REFERENCES `livreur` (`livreur_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `livreur`
--
ALTER TABLE `livreur`
  ADD CONSTRAINT `utilisateur_livreur_fk` FOREIGN KEY (`livreur_id`) REFERENCES `utilisateur` (`utilisateur_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `commande_paiement_fk` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`commande_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
