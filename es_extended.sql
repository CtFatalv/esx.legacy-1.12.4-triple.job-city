-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : sam. 27 juil. 2024 à 22:13
-- Version du serveur : 10.11.8-MariaDB-ubu2204
-- Version de PHP : 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `es_extended`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Savings account', 0),
('society_abatteur', 'Abatteur', 1),
('society_agriculteur', 'Agriculteur', 1),
('society_ambulance', 'EMS', 1),
('society_bucheron', 'Bûcheron', 1),
('society_cardealer', 'Cardealer', 1),
('society_mechanic', 'Mechanic', 1),
('society_mineur', 'Mineur', 1),
('society_nightclub', 'Nightclub', 1),
('society_police', 'Police', 1),
('society_shop01', 'Shop01', 1),
('society_shop02', 'Shop02', 1),
('society_shop03', 'Shop03', 1),
('society_shop04', 'Shop04', 1),
('society_shop05', 'Shop05', 1),
('society_shop06', 'Shop06', 1),
('society_shop07', 'Shop07', 1),
('society_shop08', 'Shop08', 1),
('society_shop09', 'Shop09', 1),
('society_shop10', 'Shop10', 1),
('society_shop11', 'Shop11', 1),
('society_shop12', 'Shop12', 1),
('society_shop13', 'Shop13', 1),
('society_shop14', 'Shop14', 1),
('society_shop15', 'Shop15', 1),
('society_shop16', 'Shop16', 1),
('society_shop17', 'Shop17', 1),
('society_shop18', 'Shop18', 1),
('society_shop19', 'Shop19', 1),
('society_shop20', 'Shop20', 1),
('society_tailleur', 'Tailleur', 1),
('society_taxi', 'Taxi', 1),
('society_vigneron', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `banking`
--

CREATE TABLE `banking` (
  `identifier` varchar(46) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` int(64) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `balance` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `sender` varchar(60) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Abus du klaxon', 30, 0),
(2, 'Traverser une ligne continue', 40, 0),
(3, 'Conduite à contre sens', 250, 0),
(4, 'Demi-tour illégal', 250, 0),
(5, 'Conduite hors route illégalement', 170, 0),
(6, 'Refuser un ordre légitime', 30, 0),
(7, 'Arrêt illégal du véhicule', 150, 0),
(8, 'Stationnement illégal', 70, 0),
(9, 'Ne pas céder la priorité à droite', 70, 0),
(10, 'Non-respect des informations sur le véhicule', 90, 0),
(11, 'Griller un Stop', 105, 0),
(12, 'Griller un feu rouge', 130, 0),
(13, 'Passage illégal', 100, 0),
(14, 'Conduire un véhicule illégal', 100, 0),
(15, 'Conduire sans permis', 1500, 0),
(16, 'Délit de fuite', 800, 0),
(17, 'Vitesse supérieure à < 5 mph', 90, 0),
(18, 'Vitesse supérieure à 5-15 mph', 120, 0),
(19, 'Vitesse supérieure à 15-30 mph', 180, 0),
(20, 'Vitesse supérieure à > 30 mph', 300, 0),
(21, 'Entrave à la fluidité du trafic', 110, 1),
(22, 'Ivresse publique', 90, 1),
(23, 'Conduite désordonnée', 90, 1),
(24, 'Entrave à la justice', 130, 1),
(25, 'Insultes envers les civils', 75, 1),
(26, 'Non-respect envers un LEO', 110, 1),
(27, 'Menace verbale envers un civil', 90, 1),
(28, 'Menace verbale envers un LEO', 150, 1),
(29, 'Fournir de fausses informations', 250, 1),
(30, 'Tentative de Corruption', 1500, 1),
(31, 'Brandir une arme dans la ville', 120, 2),
(32, 'Brandir une arme mortelle dans la ville', 300, 2),
(33, 'Pas de permis Armes à feu', 600, 2),
(34, 'Possession arme illégale', 700, 2),
(35, 'Possession outils de cambriolage', 300, 2),
(36, 'Grand Theft Auto', 1800, 2),
(37, 'Intention de vendre/déranger une substance illégale', 1500, 2),
(38, 'Fabrication de substance illégale', 1500, 2),
(39, 'Possession de substance illégale', 650, 2),
(40, 'Enlèver un civil', 1500, 2),
(41, 'Kidnapper un LEO', 2000, 2),
(42, 'Vol', 650, 2),
(43, 'Vol à main armée magasin', 650, 2),
(44, 'Vol à main armée banque', 1500, 2),
(45, 'Assaut contre un civil', 2000, 3),
(46, 'Assaut envers LEO', 2500, 3),
(47, 'Tentative de meurtre  envers un civil', 3000, 3),
(48, 'Tentative de meurtre envers un LEO', 5000, 3),
(49, 'Meurtre envers un civil', 10000, 3),
(50, 'Meurtre envers un LEO', 30000, 3),
(51, 'Homicide involontaire', 1800, 3),
(52, 'Fraude', 2000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('abatteur', 'Abatteur', 1),
('agriculteur', 'Agriculteur', 1),
('ambulance', 'EMS', 1),
('bucheron', 'Bûcheron', 1),
('cardealer', 'Concessionnaire', 1),
('mechanic', 'Mechanicien', 1),
('mineur', 'Mineur', 1),
('nightclub', 'Nightclub', 1),
('offpolice', 'Off Policier', 1),
('police', 'Policier', 1),
('shop01', 'Shop01', 1),
('shop02', 'Shop02', 1),
('shop03', 'Shop03', 1),
('shop04', 'Shop04', 1),
('shop05', 'Shop05', 1),
('shop06', 'Shop06', 1),
('shop07', 'Shop07', 1),
('shop08', 'Shop08', 1),
('shop09', 'Shop09', 1),
('shop10', 'Shop10', 1),
('shop11', 'Shop11', 1),
('shop12', 'Shop12', 1),
('shop13', 'Shop13', 1),
('shop14', 'Shop14', 1),
('shop15', 'Shop15', 1),
('shop16', 'Shop16', 1),
('shop17', 'Shop17', 1),
('shop18', 'Shop18', 1),
('shop19', 'Shop19', 1),
('shop20', 'Shop20', 1),
('tailleur', 'Tailleur', 1),
('taxi', 'Taxi', 1),
('unemployed', 'Chômeur', 0),
('unemployed2', 'Chômeur2', 1),
('unemployed3', 'Chômeur3', 1),
('vigneron', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Chômeur', 0, '{}', '{}'),
(2, 'unemployed2', 0, 'unemployed2', 'Chômeur2', 0, '{}', '{}'),
(3, 'unemployed3', 0, 'unemployed3', 'Chômeur3', 0, '{}', '{}'),
(4, 'police', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(5, 'police', 1, 'officer', 'Officier', 0, '{}', '{}'),
(6, 'police', 2, 'sergeant', 'Sergent', 0, '{}', '{}'),
(7, 'police', 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
(8, 'police', 4, 'boss', 'Capitaine', 0, '{}', '{}'),
(9, 'offpolice', 0, 'offrecruit', 'Off Recrue', 0, '{}', '{}'),
(10, 'offpolice', 1, 'offofficer', 'Off Officier', 0, '{}', '{}'),
(11, 'offpolice', 2, 'offsergeant', 'Off Sergent', 0, '{}', '{}'),
(12, 'offpolice', 3, 'offlieutenant', 'Off Lieutenant', 0, '{}', '{}'),
(13, 'offpolice', 4, 'offboss', 'Off Capitaine', 0, '{}', '{}'),
(14, 'ambulance', 0, 'ambulance', 'Ambulancier', 0, '{}', '{}'),
(15, 'ambulance', 1, 'doctor', 'Docteur', 0, '{}', '{}'),
(16, 'ambulance', 2, 'chief_doctor', 'Chef', 0, '{}', '{}'),
(17, 'ambulance', 3, 'boss', 'Patron', 0, '{}', '{}'),
(18, 'taxi', 0, 'recrue', 'Recrue', 0, '{}', '{}'),
(19, 'taxi', 1, 'novice', 'Apprenti', 0, '{}', '{}'),
(20, 'taxi', 2, 'experimente', 'Employé', 0, '{}', '{}'),
(21, 'taxi', 3, 'uber', 'Chef', 0, '{}', '{}'),
(22, 'taxi', 4, 'boss', 'Patron', 0, '{}', '{}'),
(23, 'mechanic', 0, 'recrue', 'Recrue', 0, '{}', '{}'),
(24, 'mechanic', 1, 'novice', 'Apprenti', 0, '{}', '{}'),
(25, 'mechanic', 2, 'experimente', 'Employé', 0, '{}', '{}'),
(26, 'mechanic', 3, 'chief', 'Chef', 0, '{}', '{}'),
(27, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(28, 'cardealer', 0, 'recruit', 'Recrue', 0, '{}', '{}'),
(29, 'cardealer', 1, 'novice', 'Apprenti', 0, '{}', '{}'),
(30, 'cardealer', 2, 'experienced', 'Employé', 0, '{}', '{}'),
(31, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(32, 'nightclub', 0, 'barman', 'Barman', 0, '{}', '{}'),
(33, 'nightclub', 1, 'dancer', 'Danseur', 0, '{}', '{}'),
(34, 'nightclub', 2, 'chef', 'Chef', 0, '{}', '{}'),
(35, 'nightclub', 3, 'boss', 'Patron', 0, '{}', '{}'),
(36, 'abatteur', 0, 'employee', 'Employé', 0, '{}', '{}'),
(37, 'abatteur', 1, 'chef', 'Chef', 0, '{}', '{}'),
(38, 'abatteur', 2, 'boss', 'Patron', 0, '{}', '{}'),
(39, 'vigneron', 0, 'employee', 'Employé', 0, '{}', '{}'),
(40, 'vigneron', 1, 'chef', 'Chef', 0, '{}', '{}'),
(41, 'vigneron', 2, 'boss', 'Patron', 0, '{}', '{}'),
(42, 'agriculteur', 0, 'employee', 'Employé', 0, '{}', '{}'),
(43, 'agriculteur', 1, 'chef', 'Chef', 0, '{}', '{}'),
(44, 'agriculteur', 2, 'boss', 'Patron', 0, '{}', '{}'),
(45, 'mineur', 0, 'employee', 'Employé', 0, '{}', '{}'),
(46, 'mineur', 1, 'chef', 'Chef', 0, '{}', '{}'),
(47, 'mineur', 2, 'boss', 'Patron', 0, '{}', '{}'),
(48, 'bucheron', 0, 'employee', 'Employé', 0, '{}', '{}'),
(49, 'bucheron', 1, 'chef', 'Chef', 0, '{}', '{}'),
(50, 'bucheron', 2, 'boss', 'Patron', 0, '{}', '{}'),
(51, 'tailleur', 0, 'employee', 'Employé', 0, '{}', '{}'),
(52, 'tailleur', 1, 'chef', 'Chef', 0, '{}', '{}'),
(53, 'tailleur', 2, 'boss', 'Patron', 0, '{}', '{}'),
(54, 'shop01', 0, 'employee', 'Employé', 0, '{}', '{}'),
(55, 'shop01', 1, 'boss', 'Patron', 0, '{}', '{}'),
(56, 'shop02', 0, 'employee', 'Employé', 0, '{}', '{}'),
(57, 'shop02', 1, 'boss', 'Patron', 0, '{}', '{}'),
(58, 'shop03', 0, 'employee', 'Employé', 0, '{}', '{}'),
(59, 'shop03', 1, 'boss', 'Patron', 0, '{}', '{}'),
(60, 'shop04', 0, 'employee', 'Employé', 0, '{}', '{}'),
(61, 'shop04', 1, 'boss', 'Patron', 0, '{}', '{}'),
(62, 'shop05', 0, 'employee', 'Employé', 0, '{}', '{}'),
(63, 'shop05', 1, 'boss', 'Patron', 0, '{}', '{}'),
(64, 'shop06', 0, 'employee', 'Employé', 0, '{}', '{}'),
(65, 'shop06', 1, 'boss', 'Patron', 0, '{}', '{}'),
(66, 'shop07', 0, 'employee', 'Employé', 0, '{}', '{}'),
(67, 'shop07', 1, 'boss', 'Patron', 0, '{}', '{}'),
(68, 'shop08', 0, 'employee', 'Employé', 0, '{}', '{}'),
(69, 'shop08', 1, 'boss', 'Patron', 0, '{}', '{}'),
(70, 'shop09', 0, 'employee', 'Employé', 0, '{}', '{}'),
(71, 'shop09', 1, 'boss', 'Patron', 0, '{}', '{}'),
(72, 'shop10', 0, 'employee', 'Employé', 0, '{}', '{}'),
(73, 'shop10', 1, 'boss', 'Patron', 0, '{}', '{}'),
(74, 'shop11', 0, 'employee', 'Employé', 0, '{}', '{}'),
(75, 'shop11', 1, 'boss', 'Patron', 0, '{}', '{}'),
(76, 'shop12', 0, 'employee', 'Employé', 0, '{}', '{}'),
(77, 'shop12', 1, 'boss', 'Patron', 0, '{}', '{}'),
(78, 'shop13', 0, 'employee', 'Employé', 0, '{}', '{}'),
(79, 'shop13', 1, 'boss', 'Patron', 0, '{}', '{}'),
(80, 'shop14', 0, 'employee', 'Employé', 0, '{}', '{}'),
(81, 'shop14', 1, 'boss', 'Patron', 0, '{}', '{}'),
(82, 'shop15', 0, 'employee', 'Employé', 0, '{}', '{}'),
(83, 'shop15', 1, 'boss', 'Patron', 0, '{}', '{}'),
(84, 'shop16', 0, 'employee', 'Employé', 0, '{}', '{}'),
(85, 'shop16', 1, 'boss', 'Patron', 0, '{}', '{}'),
(86, 'shop17', 0, 'employee', 'Employé', 0, '{}', '{}'),
(87, 'shop17', 1, 'boss', 'Patron', 0, '{}', '{}'),
(88, 'shop18', 0, 'employee', 'Employé', 0, '{}', '{}'),
(89, 'shop18', 1, 'boss', 'Patron', 0, '{}', '{}'),
(90, 'shop19', 0, 'employee', 'Employé', 0, '{}', '{}'),
(91, 'shop19', 1, 'boss', 'Patron', 0, '{}', '{}'),
(92, 'shop20', 0, 'employee', 'Employé', 0, '{}', '{}'),
(93, 'shop20', 1, 'boss', 'Patron', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('permis_aviation', 'Permis Aviation'),
('permis_bateau', 'Permis Bateau'),
('permis_camion', 'Permis Camion'),
('permis_moto', 'Permis Moto'),
('permis_voiture', 'Permis Voiture'),
('t_weapon', 'Licence Théorique Arme'),
('weapon', 'Permis Arme');

-- --------------------------------------------------------

--
-- Structure de la table `multicharacter_slots`
--

CREATE TABLE `multicharacter_slots` (
  `identifier` varchar(46) NOT NULL,
  `slots` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `owned_shops`
--

CREATE TABLE `owned_shops` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `ShopName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `owned_shops`
--

INSERT INTO `owned_shops` (`id`, `identifier`, `ShopName`) VALUES
(1, '0', 'shop01'),
(2, '0', 'shop02'),
(3, '0', 'shop03'),
(4, '0', 'shop04'),
(5, '0', 'shop05'),
(6, '0', 'shop06'),
(7, '0', 'shop07'),
(8, '0', 'shop08'),
(9, '0', 'shop09'),
(10, '0', 'shop10'),
(11, '0', 'shop11'),
(12, '0', 'shop12'),
(13, '0', 'shop13'),
(14, '0', 'shop14'),
(15, '0', 'shop15'),
(16, '0', 'shop16'),
(17, '0', 'shop17'),
(18, '0', 'shop18'),
(19, '0', 'shop19'),
(20, '0', 'shop20');

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `id` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `plate` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'car',
  `job` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stored` tinyint(1) DEFAULT NULL,
  `parking` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SandyShores',
  `mileage` float DEFAULT 0,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL,
  `garage_id` varchar(32) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ox_doorlock`
--

CREATE TABLE `ox_doorlock` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ox_doorlock`
--

INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
(1, 'mrpd locker rooms', '{\"maxDistance\":2,\"heading\":90,\"coords\":{\"x\":450.1041259765625,\"y\":-985.7384033203125,\"z\":30.83930206298828},\"groups\":{\"police\":0},\"state\":1,\"model\":1557126584,\"hideUi\":false}'),
(2, 'mrpd cells/briefing', '{\"maxDistance\":2,\"coords\":{\"x\":444.7078552246094,\"y\":-989.4454345703125,\"z\":30.83930206298828},\"doors\":[{\"model\":185711165,\"coords\":{\"x\":446.0079345703125,\"y\":-989.4454345703125,\"z\":30.83930206298828},\"heading\":0},{\"model\":185711165,\"coords\":{\"x\":443.40777587890627,\"y\":-989.4454345703125,\"z\":30.83930206298828},\"heading\":180}],\"groups\":{\"police\":0},\"state\":1,\"hideUi\":false}'),
(3, 'mrpd cell 3', '{\"maxDistance\":2,\"heading\":90,\"coords\":{\"x\":461.8065185546875,\"y\":-1001.9515380859375,\"z\":25.06442832946777},\"lockSound\":\"metal-locker\",\"groups\":{\"police\":0},\"state\":1,\"unlockSound\":\"metallic-creak\",\"model\":631614199,\"hideUi\":false}'),
(4, 'mrpd back entrance', '{\"maxDistance\":2,\"coords\":{\"x\":468.6697692871094,\"y\":-1014.4520263671875,\"z\":26.5362319946289},\"doors\":[{\"model\":-2023754432,\"coords\":{\"x\":467.37164306640627,\"y\":-1014.4520263671875,\"z\":26.5362319946289},\"heading\":0},{\"model\":-2023754432,\"coords\":{\"x\":469.9678955078125,\"y\":-1014.4520263671875,\"z\":26.5362319946289},\"heading\":180}],\"groups\":{\"police\":0},\"state\":1,\"hideUi\":false}'),
(5, 'mrpd cells security door', '{\"maxDistance\":2,\"heading\":0,\"coords\":{\"x\":464.1282958984375,\"y\":-1003.5386962890625,\"z\":25.00598907470703},\"autolock\":5,\"groups\":{\"police\":0},\"state\":1,\"model\":-1033001619,\"hideUi\":false}'),
(6, 'mrpd cell 2', '{\"maxDistance\":2,\"heading\":90,\"coords\":{\"x\":461.8064880371094,\"y\":-998.3082885742188,\"z\":25.06442832946777},\"lockSound\":\"metal-locker\",\"groups\":{\"police\":0},\"state\":1,\"unlockSound\":\"metallic-creak\",\"model\":631614199,\"hideUi\":false}'),
(7, 'mrpd captain\'s office', '{\"maxDistance\":2,\"heading\":180,\"coords\":{\"x\":446.57281494140627,\"y\":-980.0105590820313,\"z\":30.83930206298828},\"groups\":{\"police\":0},\"state\":1,\"model\":-1320876379,\"hideUi\":false}'),
(8, 'mrpd gate', '{\"maxDistance\":6,\"heading\":90,\"coords\":{\"x\":488.894775390625,\"y\":-1017.2102661132813,\"z\":27.14714050292968},\"groups\":{\"police\":0},\"auto\":true,\"state\":1,\"model\":-1603817716,\"hideUi\":false}'),
(9, 'mrpd cell 1', '{\"maxDistance\":2,\"heading\":270,\"coords\":{\"x\":461.8065185546875,\"y\":-993.7586059570313,\"z\":25.06442832946777},\"lockSound\":\"metal-locker\",\"groups\":{\"police\":0},\"state\":1,\"unlockSound\":\"metallic-creak\",\"model\":631614199,\"hideUi\":false}'),
(10, 'mrpd cells main', '{\"maxDistance\":2,\"heading\":360,\"coords\":{\"x\":463.92010498046877,\"y\":-992.6640625,\"z\":25.06442832946777},\"lockSound\":\"metal-locker\",\"groups\":{\"police\":0},\"state\":1,\"unlockSound\":\"metallic-creak\",\"model\":631614199,\"hideUi\":false}'),
(11, 'mrpd armoury', '{\"maxDistance\":2,\"heading\":270,\"coords\":{\"x\":453.08428955078127,\"y\":-982.5794677734375,\"z\":30.81926536560058},\"autolock\":5,\"groups\":{\"police\":0},\"state\":1,\"model\":749848321,\"hideUi\":false}');

-- --------------------------------------------------------

--
-- Structure de la table `ox_inventory`
--

CREATE TABLE `ox_inventory` (
  `owner` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `playerskins`
--

CREATE TABLE `playerskins` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `player_outfits`
--

CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `player_outfit_codes`
--

CREATE TABLE `player_outfit_codes` (
  `id` int(11) NOT NULL,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rcannabis`
--

CREATE TABLE `rcannabis` (
  `id` int(10) UNSIGNED NOT NULL,
  `stage` int(3) UNSIGNED NOT NULL DEFAULT 1,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `soil` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(46) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(20) DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT 0,
  `job3` varchar(20) DEFAULT 'unemployed3',
  `job3_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `pincode` int(11) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Index pour la table `banking`
--
ALTER TABLE `banking`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `multicharacter_slots`
--
ALTER TABLE `multicharacter_slots`
  ADD PRIMARY KEY (`identifier`) USING BTREE,
  ADD KEY `slots` (`slots`) USING BTREE;

--
-- Index pour la table `owned_shops`
--
ALTER TABLE `owned_shops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ox_inventory`
--
ALTER TABLE `ox_inventory`
  ADD UNIQUE KEY `owner` (`owner`,`name`);

--
-- Index pour la table `playerskins`
--
ALTER TABLE `playerskins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `active` (`active`);

--
-- Index pour la table `player_outfits`
--
ALTER TABLE `player_outfits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Index pour la table `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_player_outfit_codes_player_outfits` (`outfitid`);

--
-- Index pour la table `rcannabis`
--
ALTER TABLE `rcannabis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stage` (`stage`,`time`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `index_users_phone_number` (`phone_number`);

--
-- Index pour la table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_contacts_identifier_name_number` (`identifier`,`name`,`number`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `banking`
--
ALTER TABLE `banking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pour la table `owned_shops`
--
ALTER TABLE `owned_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `playerskins`
--
ALTER TABLE `playerskins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `player_outfits`
--
ALTER TABLE `player_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rcannabis`
--
ALTER TABLE `rcannabis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
