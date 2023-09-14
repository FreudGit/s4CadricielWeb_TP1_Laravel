-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 13 sep. 2023 à 21:10
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `CadricielWebTP1`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `ville_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `adresse`, `phone`, `email`, `date_de_naissance`, `ville_id`, `created_at`, `updated_at`) VALUES
(1, 'Noelia Pacocha', '304 Flatley StationPort Gunner, NC 87225-8979', '281.816.7878', 'keeling.zackary@example.com', '1995-05-24', 8, '2023-09-10 22:17:09', '2023-09-13 23:05:55'),
(2, 'Courtney Lockman', '1201 Elva Forge Apt. 440\nMetzfurt, DC 88575', '+1-231-456-5821', 'ike93@example.org', '1991-01-31', 6, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(3, 'Maida Wuckert', '6928 O\'Conner Extensions Apt. 787\nNew Quintonberg, NC 11691-0912', '(325) 585-1402', 'paula.dickinson@example.org', '1997-09-01', 7, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(4, 'Albin Lang', '246 Douglas Hollow\nKozeyhaven, SC 36433-0535', '+12398067081', 'ola17@example.com', '2003-07-05', 4, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(5, 'Jazlyn Rath', '448 Maurice Throughway Apt. 658\nWest Eda, GA 11018-2328', '480-596-8413', 'colton22@example.org', '1981-06-10', 12, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(6, 'Jermain Johnson', '703 Nadia Spur Suite 655\nPedrochester, KS 93086-1584', '360.297.9509', 'yyundt@example.org', '2003-01-21', 12, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(7, 'Angelo Ward', '18473 Stokes Lodge Suite 309\nD\'Amoreland, ME 44777', '469-648-0938', 'reagan90@example.com', '1984-08-01', 3, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(8, 'Gabriel Ward', '2346 Nelda Creek Suite 701\nMcDermottberg, SC 89978-1599', '+1 (432) 630-2960', 'xzboncak@example.com', '1991-01-16', 15, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(9, 'Lyla Bode', '58085 Nicolas Forks\nEast Uriel, AZ 86772-2102', '970-655-7832', 'simonis.natalie@example.net', '1998-05-31', 2, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(10, 'Samanta Kris', '76625 Kuhlman Streets Suite 108\nMarquardtview, NE 89182-8447', '878-858-7242', 'hagenes.maybelle@example.com', '1975-05-19', 7, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(11, 'Jimmy Krajcik', '3957 Pfannerstill Avenue Apt. 979\nAntoinetteland, IA 19719', '+12406481741', 'kuhic.novella@example.org', '1992-03-16', 15, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(12, 'Morgan Rosenbaum', '3752 Savanna Radial Apt. 781\nLake Maiyaberg, MS 75840-2942', '(801) 869-6912', 'elbert.goyette@example.net', '1979-01-24', 12, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(13, 'Margarett Roberts', '41894 Jessie Station\nElizaside, MA 68014-1343', '+1 (234) 615-5012', 'jeremy21@example.org', '2003-10-15', 2, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(14, 'Nathan Osinski', '60965 Amalia Estate Apt. 733\nOrlandmouth, AL 19136-6589', '(980) 257-6779', 'krystal22@example.com', '1985-07-28', 13, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(15, 'Jayce Ullrich', '537 Idell Throughway Suite 925\nRogahnmouth, PA 87559-6354', '562.476.7326', 'cronin.evangeline@example.org', '1983-11-21', 6, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(16, 'Nasir Stamm', '40196 Barton Mill\nLangstad, MS 00532', '283.607.3923', 'stehr.nichole@example.com', '2002-02-24', 12, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(17, 'Philip Turner', '93105 Prosacco Radial\nSouth Jermeymouth, MN 08264-7742', '1-828-444-8754', 'rosetta.ziemann@example.net', '1997-12-08', 14, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(18, 'Jermey Johns', '62545 Christiansen Light Suite 827\nKubmouth, MS 29421', '+1-434-544-4707', 'joey51@example.org', '2000-09-09', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(19, 'Esperanza Berge', '181 Ally Islands Suite 748\nLake Abrahamfurt, AZ 70011-1743', '1-380-613-1016', 'qlehner@example.org', '1975-01-09', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(20, 'Brielle Runolfsson', '39889 Gerardo Centers Apt. 371\nEast Zack, OR 25682-9293', '254-618-6134', 'ckiehn@example.net', '2000-11-13', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(21, 'Euna Wunsch', '43798 Considine Pike Suite 251\nPort Lilyport, AK 94271', '(915) 800-1264', 'gabrielle.volkman@example.com', '1991-03-04', 1, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(22, 'Hans Collier', '24223 Edwina Plain Suite 276\nTraceyport, MI 15621', '+1.386.240.8359', 'gschroeder@example.net', '1986-02-01', 14, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(23, 'Holden Vandervort', '872 Bernardo Lodge\nReynoldshire, UT 95233', '1-515-776-2035', 'elouise28@example.org', '1978-10-25', 2, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(24, 'Royce Leuschke', '36524 Cremin Knolls Suite 091\nLake Retha, VA 80500', '520.624.7728', 'zula.reynolds@example.org', '1998-09-22', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(25, 'Lorna Reilly', '470 Muller Corner\nEast Ashlynnberg, AK 74653-5427', '(973) 499-0290', 'vharber@example.net', '1972-12-05', 4, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(26, 'Flavio Deckow', '6508 Alek Harbors Suite 783\nMannside, ME 92782-1597', '(520) 712-1942', 'breanna.gusikowski@example.com', '2002-09-25', 2, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(27, 'Garett Bailey', '27470 Larson Forks Suite 570\nWalshton, WI 65448-9714', '+1.725.514.7441', 'myrtie58@example.com', '1982-04-29', 6, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(28, 'Adrian Krajcik', '64156 Mariam Landing\nPort Iciefort, GA 43434', '+1.267.951.3874', 'vschimmel@example.com', '1981-01-18', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(29, 'Mikel Abbott', '28138 Pouros Groves\nRogersfort, OK 63520', '1-682-452-5463', 'marilou.kerluke@example.net', '1998-09-16', 14, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(30, 'Nicole Windler', '573 Harris Inlet\nJenkinsshire, AL 30245-7841', '1-628-620-2106', 'jabari78@example.org', '1983-01-14', 4, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(31, 'Brain Littel', '20561 Ankunding Freeway Suite 994\nPort Anikachester, NM 19656-8511', '+1 (754) 849-6270', 'osmith@example.org', '1988-12-20', 4, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(32, 'Katlynn Brakus', '30909 Jaydon Walks Suite 680\nLittleshire, IL 41508-8747', '551-368-5812', 'hyatt.layla@example.com', '1994-06-01', 8, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(33, 'Rudolph Powlowski', '2670 Autumn Canyon Apt. 119\nSouth Trycialand, CT 13515', '1-216-488-3515', 'bdeckow@example.com', '1982-10-21', 4, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(34, 'Miles Kuphal', '3742 Schumm Rue\nNew Karson, NH 71274', '1-626-797-3518', 'neva.fisher@example.com', '2000-07-19', 5, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(35, 'Jan Denesik', '70778 Donavon Summit\nPort Jayde, MI 42856-4309', '+1.217.290.9894', 'andreanne.smith@example.com', '1985-10-25', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(36, 'Demetris Gutkowski', '178 Allene Drive\nSouth Lavon, NE 10211', '1-540-740-4654', 'iward@example.com', '1978-04-02', 2, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(37, 'Katlynn Doyle', '52881 Newell Prairie\nKayceeport, MA 21663', '301.612.8686', 'bterry@example.com', '1981-10-04', 13, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(38, 'Garrison Kshlerin', '92377 Pfeffer Cliff\nStromanbury, HI 80450-1346', '1-319-442-4207', 'kbreitenberg@example.com', '1998-06-10', 3, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(39, 'Jacky Gleason', '274 Konopelski Square\nOkunevatown, VA 68354', '301.578.5564', 'pgutmann@example.org', '1977-02-18', 2, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(40, 'Johnny Volkman', '384 Katherine Crest Apt. 814\nEast Palmaport, CA 25713-1698', '+1 (301) 712-7555', 'arno.lockman@example.com', '1983-10-18', 5, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(41, 'Damon Beatty', '3771 Dashawn Pike Suite 215\nPort Krisville, PA 36876', '920-489-9950', 'myrtle39@example.com', '2001-07-28', 15, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(42, 'Elsa Rice', '86726 Lubowitz Summit Suite 167\nMaverickberg, WV 36568-0207', '225-802-6297', 'heaney.giovanni@example.net', '1971-11-18', 3, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(43, 'Devante Schmeler', '38819 Hayes Mountains\nWest Clotilde, HI 93209-8917', '+1 (520) 248-9118', 'kory.stehr@example.org', '1986-07-02', 8, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(44, 'Jaclyn O\'Connell', '26012 Powlowski Burg Apt. 042\nReynoldsshire, CT 03980', '916-743-2504', 'patience.cole@example.com', '1980-01-11', 3, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(45, 'Cleo Schumm', '54176 Moen Estate Apt. 073\nBaumbachville, MI 83356-5417', '463-862-5300', 'trantow.carrie@example.net', '1978-08-31', 14, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(46, 'Wallace Abshire', '4887 Flatley Circles\nLake Westonberg, ND 82241', '+1-607-747-8057', 'jovanny40@example.org', '1991-04-16', 3, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(47, 'Gloria Kihn', '5572 Alisha Well\nCarmelohaven, VT 08705', '+1-281-716-4204', 'balistreri.rowland@example.com', '1973-03-22', 12, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(48, 'Johathan Krajcik', '90695 Mollie Tunnel\nLarkintown, KS 80278', '380-880-0500', 'thompson.reba@example.com', '1971-03-26', 12, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(49, 'Noah Cormier', '922 Murazik Meadow Suite 422\nEffertzchester, WA 11793-0769', '907.358.0098', 'addison.waters@example.org', '1984-12-31', 10, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(50, 'Ward Ankunding', '189 Eulalia Key Apt. 807\nNorth Coty, NV 25859-2885', '(417) 670-9897', 'xrowe@example.org', '1998-12-17', 12, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(51, 'Raphael Skiles', '61501 O\'Keefe Stravenue\nPort Denaborough, VA 46356-7325', '985-386-6803', 'dubuque.brianne@example.com', '1992-11-09', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(52, 'Maiya Stanton', '6624 Daisy Station Suite 960\nKristastad, TX 73974', '(725) 384-0330', 'adams.joe@example.net', '1991-08-26', 6, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(53, 'Amara Rutherford', '86486 Wilkinson Corner\nFraneckihaven, IL 56396-2996', '(914) 751-5547', 'velda83@example.net', '1980-11-06', 4, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(54, 'Clyde Leffler', '35487 Joaquin Trafficway\nDickiview, IA 17085', '775.740.3563', 'ugerhold@example.com', '1971-01-11', 8, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(55, 'Burnice Volkman', '21747 Velva Way\nWest Colten, MS 00558', '+1.458.819.3171', 'vandervort.sherwood@example.com', '1985-08-12', 12, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(56, 'Alejandrin Wilderman', '47328 Reichert Trail\nNorth Josieshire, CA 66968-4276', '(707) 456-0748', 'wisozk.luisa@example.com', '1982-01-24', 8, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(57, 'Lane Runolfsdottir', '46727 Sydnie Valley Suite 119\nJordanechester, AR 77860-9156', '678-316-8889', 'king.matt@example.com', '1998-10-31', 10, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(58, 'Idella Romaguera', '853 Sid Road\nKelsitown, AR 66118-4109', '+1-970-721-0061', 'skrajcik@example.com', '1992-06-25', 2, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(59, 'Ruth Klocko', '1687 Audreanne Trail\nLake Constanceburgh, MT 38642-1249', '+1.231.439.0808', 'vmurazik@example.com', '1993-02-14', 4, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(60, 'Sheila Green', '3382 Ernestina Wells\nSouth Minachester, DE 58666', '+13418140388', 'omari96@example.net', '1994-09-29', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(61, 'Geo Hirthe', '85100 Alexis Fields\nArlenefurt, GA 03167-9135', '+1.740.591.3854', 'tanner.cremin@example.net', '1972-06-18', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(62, 'Claudie Heller', '9338 Derick Squares\nWiegandville, TX 57004-2025', '1-661-937-1226', 'hayes.janessa@example.net', '2003-01-06', 4, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(63, 'Annette Mohr', '8079 Cole Dale Suite 577\nSouth Destinistad, AL 09674-1056', '+1-540-487-4975', 'maya88@example.com', '1984-12-09', 7, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(64, 'Presley Cruickshank', '277 Wade Spur\nPercyhaven, WV 57907', '+1.820.387.4410', 'schimmel.elijah@example.com', '1979-07-12', 13, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(65, 'Jerome Weber', '9087 Dangelo Circle Suite 078\nPort Flavio, MN 20658-7734', '413.808.9051', 'uschumm@example.com', '1985-07-15', 5, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(66, 'Cecilia Miller', '450 Corene Forge\nNew Bill, CO 77160', '(458) 504-0073', 'talon.hessel@example.com', '2000-04-22', 14, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(67, 'Rodger Green', '22434 Halvorson Causeway Suite 385\nFeilport, CT 48166', '(651) 229-9702', 'maryjane.nikolaus@example.com', '1999-12-05', 2, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(68, 'Jed Renner', '576 Morar Neck\nWest Brock, PA 69256', '734-786-8352', 'yhudson@example.com', '1975-05-23', 14, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(69, 'Nichole Abbott', '335 Runolfsdottir Gardens Suite 229\nAminahaven, WI 27441-3060', '650-799-6658', 'bartell.alessia@example.org', '1985-07-14', 15, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(70, 'Euna Langworth', '4444 Champlin Land Suite 558\nPagacview, NY 93363', '+1-484-544-0390', 'veum.marlene@example.net', '1970-08-13', 5, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(71, 'Eleanore Jacobi', '14471 Wyman Mission Apt. 435\nReillytown, SD 44334', '952.904.1008', 'dooley.cale@example.net', '1970-12-05', 4, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(72, 'Pete Connelly', '43584 Prince Lodge\nToreyhaven, OR 07212-1350', '1-870-688-0994', 'dankunding@example.net', '1972-06-05', 7, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(73, 'Loma Padberg', '88822 Toy Cliff Suite 061\nEast Jesus, IL 28495', '980-576-6098', 'alexzander18@example.com', '1997-03-08', 13, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(74, 'Eriberto Muller', '389 Raoul River\nRyleyshire, DE 09556-8473', '+1-651-986-3246', 'ferry.dora@example.org', '2003-01-05', 4, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(75, 'Noah Douglas', '3740 Kaleb Drive Suite 584\nDamianview, OH 41886-3866', '458.320.6645', 'lamont40@example.org', '1988-08-18', 4, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(76, 'Ezekiel Monahan', '4961 Jody Throughway Apt. 656\nSouth Antwan, TX 42566', '479-857-8331', 'nwalker@example.net', '1973-07-04', 8, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(77, 'Eloisa Sanford', '2927 Danny Mission Suite 385\nDeontestad, NC 65694-9828', '+1.678.300.4824', 'betsy.miller@example.org', '1992-06-09', 7, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(78, 'Erick Brown', '482 Chauncey Locks\nHeathcoteshire, RI 24975', '352-434-7417', 'angela38@example.net', '1990-09-13', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(79, 'Camilla Connelly', '79284 Lew Circle Suite 276\nDouglasside, ID 33371-9886', '360.680.2351', 'satterfield.alexane@example.net', '1976-12-24', 6, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(80, 'Marjory Schiller', '38253 Ferry Plaza Suite 412\nLake Gwendolynborough, OR 78367', '+1-347-532-9305', 'arunte@example.net', '1971-01-14', 15, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(81, 'Florine Morissette', '6530 Mitchell Passage Apt. 486\nToyhaven, NM 64996', '+1.309.918.5655', 'mackenzie44@example.com', '1986-07-17', 8, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(82, 'Bridget Parisian', '5015 Emmalee Turnpike Apt. 222\nAngelicastad, FL 93971-9545', '(857) 775-1203', 'obalistreri@example.org', '1991-10-08', 2, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(83, 'Marge Spencer', '43290 Reece Inlet\nLyricburgh, ME 33420-3779', '636.819.2907', 'rhett.aufderhar@example.com', '1979-10-29', 8, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(84, 'Coy Watsica', '879 Balistreri Avenue\nEast Asia, NY 60767-9783', '906.928.6472', 'lucinda27@example.com', '1979-02-15', 15, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(85, 'Tamara Cartwright', '68974 Bartell Junctions\nLake Shannamouth, ID 96581', '(386) 834-0014', 'haley.federico@example.net', '1988-07-01', 13, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(86, 'Melyna Greenfelder', '9482 Hoppe Road\nNew Roberto, KY 01375-5285', '+18589405672', 'johnnie.hansen@example.net', '1989-07-27', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(87, 'Jena Kertzmann', '830 Alaina Pine\nPort Aprilside, WV 31853-0756', '1-609-859-5597', 'will.nella@example.com', '1977-11-11', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(88, 'Rosalee Satterfield', '896 Pierre Station\nWest Emilyton, AL 36319', '1-425-772-2535', 'graciela.romaguera@example.com', '1983-04-29', 15, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(89, 'Daphnee Aufderhar', '35811 Stokes Branch Apt. 458\nShanahanmouth, MN 76086-7594', '(805) 918-0394', 'qgislason@example.net', '1997-11-10', 15, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(90, 'Isabella Quigley', '17941 Anjali Villages Apt. 503\nFeestfort, AK 26705', '+1 (239) 327-4892', 'runte.terrill@example.org', '1990-07-26', 12, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(91, 'Josiane Prohaska', '820 Dickinson Spur\nEast Yasmineside, ID 29483', '+1 (608) 959-4208', 'halie.lemke@example.net', '1996-04-12', 6, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(92, 'Barney Herman', '269 Bartell Mission\nNorth Chaya, AR 15370-0388', '(364) 998-0889', 'eliezer76@example.org', '1990-08-15', 3, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(93, 'Abner Abernathy', '914 Trinity Well\nLeoniefort, VT 65423', '1-850-442-6297', 'ecollier@example.net', '1976-11-05', 2, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(94, 'Treva Wunsch', '17537 Darron Drive\nLake Rutheton, NY 53970-0460', '(503) 566-7888', 'adela.larson@example.org', '2002-04-01', 11, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(95, 'Harry McDermott', '562 Freda Crossroad\nEast Yazminview, RI 71677', '+19562501609', 'beth22@example.com', '1976-07-01', 6, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(96, 'Ryleigh Zemlak', '9896 Coty Field Suite 973\nWest Lucio, OR 76698', '(231) 669-6236', 'rahul.casper@example.org', '1991-05-13', 12, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(97, 'Matteo Green', '1273 Bernhard Neck Apt. 889\nCarlottafort, NM 67592', '1-260-440-5851', 'willy75@example.com', '1996-09-24', 8, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(98, 'Stephany Maggio', '992 Marcelo Bypass Apt. 679\nAdolphuston, DC 96293', '+14693872266', 'virgil90@example.org', '1978-07-05', 9, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(99, 'Devan Paucek', '777 Harris Cape Suite 340\nPort Linda, MI 87104-9937', '743.671.0033', 'kianna.barrows@example.org', '1985-04-15', 8, '2023-09-10 22:17:09', '2023-09-10 22:17:09'),
(100, 'Brennon Smith', '998 Mills Heights\nNew Stephan, CO 69988-7096', '(940) 333-3638', 'yhettinger@example.org', '1973-05-30', 9, '2023-09-10 22:17:09', '2023-09-10 22:17:09');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_09_164322_create_villes_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Lake Dina', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(2, 'Rorytown', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(3, 'Tierrafurt', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(4, 'Larkinberg', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(5, 'North Kenyaville', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(6, 'Antonettamouth', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(7, 'West River', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(8, 'North Rosie', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(9, 'East Nina', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(10, 'Marvinbury', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(11, 'Albertmouth', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(12, 'Pollichville', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(13, 'East Royal', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(14, 'West Claudine', '2023-09-10 22:07:25', '2023-09-10 22:07:25'),
(15, 'North Einofort', '2023-09-10 22:07:25', '2023-09-10 22:07:25');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
