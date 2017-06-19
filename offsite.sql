-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 16, 2017 at 09:14 PM
-- Server version: 5.6.20-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `offsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `fixture`
--

CREATE TABLE IF NOT EXISTS `fixture` (
`ID` int(11) unsigned NOT NULL,
  `ID_team1` int(11) NOT NULL,
  `ID_team2` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `goals_team1` int(2) DEFAULT NULL,
  `goals_team2` int(2) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=196 ;

--
-- Dumping data for table `fixture`
--

INSERT INTO `fixture` (`ID`, `ID_team1`, `ID_team2`, `date`, `goals_team1`, `goals_team2`) VALUES
(123, 20, 21, '2017-06-04 21:16:42', 0, 4),
(124, 20, 21, '2017-06-04 21:16:47', 1, 1),
(125, 20, 21, '2017-06-04 21:16:50', 0, 2),
(126, 20, 21, '2017-06-04 21:16:52', 0, 1),
(127, 21, 20, '2017-06-04 21:19:05', 0, 2),
(128, 21, 20, '2017-06-04 21:19:08', 0, 5),
(129, 21, 20, '2017-06-04 21:19:11', 0, 3),
(130, 21, 22, '2017-06-04 21:24:03', 1, 4),
(131, 21, 22, '2017-06-04 21:24:06', 1, 2),
(132, 20, 22, '2017-06-04 21:24:11', 0, 3),
(133, 20, 22, '2017-06-04 21:24:13', 0, 3),
(134, 20, 22, '2017-06-04 21:24:16', 0, 2),
(135, 20, 23, '2017-06-04 21:28:32', 0, 3),
(136, 20, 23, '2017-06-04 21:28:35', 0, 3),
(137, 20, 23, '2017-06-04 21:28:37', 0, 4),
(138, 22, 23, '2017-06-04 21:28:43', 2, 4),
(139, 22, 23, '2017-06-04 21:28:46', 0, 2),
(140, 21, 23, '2017-06-04 21:28:51', 1, 2),
(141, 20, 24, '2017-06-04 21:32:37', 2, 2),
(142, 21, 24, '2017-06-04 21:32:43', 1, 1),
(143, 22, 24, '2017-06-04 21:32:48', 1, 1),
(144, 23, 24, '2017-06-04 21:32:53', 0, 2),
(145, 20, 25, '2017-06-04 21:38:10', 0, 5),
(146, 21, 25, '2017-06-04 21:38:14', 1, 1),
(147, 22, 25, '2017-06-04 21:38:18', 0, 3),
(148, 24, 25, '2017-06-04 21:38:23', 1, 3),
(149, 23, 25, '2017-06-04 21:38:30', 0, 2),
(150, 20, 26, '2017-06-04 21:58:02', 2, 2),
(151, 20, 26, '2017-06-04 21:58:24', 0, 0),
(152, 25, 26, '2017-06-04 21:58:30', 0, 3),
(153, 25, 26, '2017-06-04 21:58:34', 1, 1),
(154, 25, 26, '2017-06-04 21:58:36', 0, 1),
(155, 25, 26, '2017-06-04 21:58:38', 1, 3),
(156, 25, 26, '2017-06-04 21:58:40', 0, 3),
(157, 25, 26, '2017-06-04 22:23:37', 0, 3),
(158, 24, 26, '2017-06-05 08:21:08', 0, 0),
(159, 24, 26, '2017-06-05 08:21:12', 0, 2),
(160, 24, 26, '2017-06-05 08:21:15', 3, 3),
(161, 24, 26, '2017-06-05 08:21:17', 2, 4),
(162, 24, 26, '2017-06-05 08:21:25', 0, 0),
(163, 26, 27, '2017-06-05 08:31:21', 1, 4),
(164, 26, 27, '2017-06-05 08:31:39', 0, 3),
(165, 26, 27, '2017-06-05 08:31:41', 0, 0),
(166, 26, 27, '2017-06-05 08:31:44', 1, 4),
(167, 26, 27, '2017-06-05 08:31:47', 0, 5),
(168, 26, 27, '2017-06-05 08:31:49', 0, 3),
(169, 26, 27, '2017-06-05 08:31:58', 0, 3),
(170, 26, 27, '2017-06-05 08:32:42', 1, 4),
(171, 26, 27, '2017-06-05 08:32:45', 2, 4),
(172, 21, 26, '2017-06-10 15:47:59', 2, 3),
(191, 25, 21, '2017-06-12 16:16:36', 0, 3),
(192, 25, 21, '2017-06-12 16:16:39', 1, 3),
(193, 25, 21, '2017-06-12 16:16:40', 1, 1),
(194, 25, 21, '2017-06-12 16:16:42', 0, 3),
(195, 25, 21, '2017-06-12 16:16:43', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `league`
--

CREATE TABLE IF NOT EXISTS `league` (
`ID` int(11) unsigned NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `league`
--

INSERT INTO `league` (`ID`, `name`) VALUES
(1, 'Premier fantasy'),
(2, 'Head2Head');

-- --------------------------------------------------------

--
-- Table structure for table `league_fixture`
--

CREATE TABLE IF NOT EXISTS `league_fixture` (
`ID` int(11) NOT NULL,
  `ID_league` int(11) NOT NULL,
  `ID_fixture` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `league_user`
--

CREATE TABLE IF NOT EXISTS `league_user` (
`ID` int(11) NOT NULL,
  `ID_league` int(11) unsigned NOT NULL,
  `ID_user` int(11) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `league_user`
--

INSERT INTO `league_user` (`ID`, `ID_league`, `ID_user`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 1, 1),
(4, 1, 2),
(5, 1, 3),
(6, 1, 4),
(7, 1, 5),
(8, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE IF NOT EXISTS `player` (
`ID` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` enum('GK','DEF','MID','FWD') NOT NULL,
  `club` varchar(75) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `overall` int(3) NOT NULL,
  `value` float NOT NULL,
  `skills` int(2) NOT NULL,
  `crossing` int(3) NOT NULL,
  `finishing` int(3) NOT NULL,
  `heading` int(3) NOT NULL,
  `short_passing` int(3) NOT NULL,
  `volleys` int(3) NOT NULL,
  `dribbling` int(3) NOT NULL,
  `curve` int(3) NOT NULL,
  `free_kicks` int(3) NOT NULL,
  `long_passing` int(3) NOT NULL,
  `ball_controll` int(3) NOT NULL,
  `acceleration` int(3) NOT NULL,
  `sprint_speed` int(3) NOT NULL,
  `agility` int(3) NOT NULL,
  `reactions` int(3) NOT NULL,
  `balance` int(3) NOT NULL,
  `shot_power` int(3) NOT NULL,
  `jumping` int(3) NOT NULL,
  `stamina` int(3) NOT NULL,
  `strength` int(3) NOT NULL,
  `long_shots` int(3) NOT NULL,
  `aggression` int(3) NOT NULL,
  `interceptions` int(3) NOT NULL,
  `positioning` int(3) NOT NULL,
  `vision` int(3) NOT NULL,
  `penalties` int(3) NOT NULL,
  `composure` int(3) NOT NULL,
  `marking` int(3) NOT NULL,
  `stand_tackle` int(3) NOT NULL,
  `slide_tackle` int(3) NOT NULL,
  `GK_diving` int(3) NOT NULL,
  `GK_handling` int(3) NOT NULL,
  `GK_kicking` int(3) NOT NULL,
  `GK_positioning` int(3) NOT NULL,
  `GK_reflexes` int(3) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=661 ;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`ID`, `name`, `position`, `club`, `photo`, `overall`, `value`, `skills`, `crossing`, `finishing`, `heading`, `short_passing`, `volleys`, `dribbling`, `curve`, `free_kicks`, `long_passing`, `ball_controll`, `acceleration`, `sprint_speed`, `agility`, `reactions`, `balance`, `shot_power`, `jumping`, `stamina`, `strength`, `long_shots`, `aggression`, `interceptions`, `positioning`, `vision`, `penalties`, `composure`, `marking`, `stand_tackle`, `slide_tackle`, `GK_diving`, `GK_handling`, `GK_kicking`, `GK_positioning`, `GK_reflexes`) VALUES
(2, 'Nicolás Otamendi', 'DEF', 'Manchester City', 'https://cdn.sofifa.org/17/players/192366.png', 83, 18.5, 2, 52, 53, 85, 71, 56, 41, 50, 39, 66, 64, 68, 71, 71, 78, 62, 69, 90, 78, 80, 56, 90, 82, 49, 45, 44, 75, 80, 83, 84, 12, 5, 8, 11, 12),
(3, 'Yaya Touré', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/20289.png', 84, 18, 3, 67, 82, 74, 86, 68, 79, 80, 85, 83, 82, 69, 74, 60, 82, 55, 86, 65, 74, 91, 85, 78, 60, 80, 85, 89, 83, 66, 76, 75, 13, 14, 6, 12, 8),
(4, 'Gaël Clichy', 'DEF', 'Manchester City', 'https://cdn.sofifa.org/17/players/152554.png', 78, 6, 2, 75, 34, 70, 64, 59, 71, 64, 38, 69, 76, 80, 83, 77, 72, 75, 52, 70, 82, 66, 43, 55, 76, 66, 59, 45, 73, 74, 79, 77, 10, 11, 9, 11, 6),
(5, 'Bacary Sagna', 'DEF', 'Manchester City', 'https://cdn.sofifa.org/17/players/163419.png', 81, 7, 3, 74, 40, 79, 70, 56, 74, 66, 47, 64, 75, 75, 74, 68, 80, 76, 69, 84, 84, 81, 62, 75, 79, 66, 59, 59, 84, 84, 84, 84, 11, 9, 7, 9, 9),
(6, 'Vincent Kompany', 'DEF', 'Manchester City', 'https://cdn.sofifa.org/17/players/139720.png', 86, 28, 2, 61, 45, 84, 69, 46, 63, 61, 52, 66, 66, 68, 69, 60, 83, 42, 75, 73, 68, 89, 55, 87, 77, 41, 59, 63, 85, 85, 88, 86, 10, 9, 5, 8, 6),
(7, 'Willy Caballero', 'GK', 'Manchester City', 'https://cdn.sofifa.org/17/players/139062.png', 79, 6.5, 1, 12, 11, 22, 33, 13, 12, 23, 11, 48, 30, 49, 54, 39, 75, 55, 23, 70, 44, 76, 14, 30, 22, 7, 38, 16, 56, 15, 11, 12, 80, 75, 72, 78, 81),
(8, 'Kevin De Bruyne', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/192985.png', 88, 65.5, 4, 90, 83, 53, 89, 82, 85, 81, 84, 82, 86, 76, 78, 78, 88, 75, 85, 65, 85, 73, 86, 68, 52, 84, 88, 77, 84, 30, 39, 40, 15, 13, 5, 10, 13),
(9, 'Leroy Sané', 'FWD', 'Manchester City', 'https://cdn.sofifa.org/17/players/222492.png', 82, 31, 3, 75, 78, 72, 75, 64, 87, 82, 62, 64, 84, 92, 93, 87, 79, 84, 78, 66, 80, 70, 77, 58, 32, 82, 68, 63, 76, 26, 32, 35, 8, 12, 9, 9, 14),
(10, 'Sergio Agüero', 'FWD', 'Manchester City', 'https://cdn.sofifa.org/17/players/153079.png', 89, 61.5, 4, 70, 90, 68, 79, 85, 89, 82, 72, 63, 89, 92, 86, 86, 88, 90, 87, 80, 74, 73, 84, 57, 24, 91, 83, 80, 90, 13, 20, 12, 13, 15, 6, 11, 14),
(11, 'Raheem Sterling', 'FWD', 'Manchester City', 'https://cdn.sofifa.org/17/players/202652.png', 83, 31.5, 4, 72, 73, 38, 81, 59, 86, 64, 49, 67, 84, 94, 92, 90, 79, 91, 68, 60, 75, 64, 70, 34, 26, 81, 76, 63, 74, 48, 58, 54, 15, 12, 12, 15, 9),
(12, 'Gabriel Fernando de Jesus', 'FWD', 'Manchester City', 'https://cdn.sofifa.org/17/players/230666.png', 79, 17, 5, 66, 82, 63, 74, 67, 85, 76, 54, 66, 83, 88, 85, 92, 82, 91, 73, 69, 84, 63, 72, 56, 32, 81, 73, 75, 84, 20, 17, 19, 13, 8, 6, 6, 15),
(13, 'David Josué Jimenez Silva', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/168542.png', 87, 41.5, 4, 85, 70, 54, 91, 80, 85, 83, 77, 78, 90, 72, 65, 92, 84, 88, 71, 66, 73, 56, 74, 51, 41, 81, 92, 77, 92, 23, 42, 29, 1, 1, 1, 1, 1),
(14, 'Aleksandar Kolarov', 'DEF', 'Manchester City', 'https://cdn.sofifa.org/17/players/185103.png', 80, 10, 2, 90, 55, 79, 73, 64, 78, 85, 81, 77, 74, 69, 66, 64, 79, 58, 91, 81, 77, 78, 80, 84, 80, 69, 76, 74, 85, 75, 83, 82, 16, 15, 8, 16, 6),
(15, 'John Stones', 'DEF', 'Manchester City', 'https://cdn.sofifa.org/17/players/203574.png', 80, 17.5, 2, 62, 29, 77, 80, 27, 70, 46, 29, 71, 79, 75, 75, 64, 77, 57, 46, 72, 80, 78, 38, 73, 77, 48, 59, 37, 81, 80, 83, 81, 7, 15, 11, 10, 8),
(16, 'Fernando Luiz Rosa', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/135507.png', 82, 13, 3, 68, 70, 55, 82, 76, 78, 70, 71, 81, 76, 77, 77, 79, 82, 79, 83, 72, 82, 73, 81, 87, 86, 68, 75, 61, 64, 73, 81, 78, 12, 11, 5, 13, 7),
(17, 'Jesús Navas González', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/146536.png', 79, 9, 3, 77, 60, 47, 76, 75, 82, 80, 46, 72, 80, 89, 88, 87, 77, 87, 75, 62, 79, 34, 70, 50, 33, 74, 73, 56, 70, 27, 20, 26, 10, 10, 15, 7, 13),
(18, 'Pablo Zabaleta', 'DEF', 'Manchester City', 'https://cdn.sofifa.org/17/players/142784.png', 80, 9, 3, 75, 49, 76, 72, 53, 73, 68, 66, 64, 76, 67, 67, 69, 85, 66, 66, 84, 76, 79, 57, 88, 85, 71, 66, 64, 70, 81, 84, 82, 10, 14, 15, 7, 5),
(19, 'Angus Gunn', 'GK', 'Manchester City', 'https://cdn.sofifa.org/17/players/216325.png', 65, 1.1, 1, 14, 15, 14, 32, 19, 20, 20, 15, 41, 27, 48, 49, 40, 62, 42, 24, 64, 31, 64, 17, 28, 22, 14, 35, 34, 33, 14, 16, 14, 64, 66, 66, 64, 63),
(20, 'Manuel Agudo Durán', 'FWD', 'Manchester City', 'https://cdn.sofifa.org/17/players/199561.png', 81, 16, 4, 79, 79, 45, 76, 65, 80, 83, 80, 67, 82, 79, 75, 83, 84, 81, 74, 63, 74, 62, 80, 73, 58, 82, 79, 74, 82, 30, 39, 25, 10, 15, 12, 8, 8),
(21, 'Kelechi Iheanacho', 'FWD', 'Manchester City', 'https://cdn.sofifa.org/17/players/225719.png', 75, 7.5, 3, 48, 79, 60, 66, 69, 73, 67, 53, 58, 75, 89, 85, 79, 70, 70, 76, 58, 68, 74, 66, 56, 17, 79, 65, 74, 72, 15, 22, 12, 8, 7, 7, 11, 15),
(22, 'Aleix García Serrano', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/228813.png', 64, 0.875, 3, 54, 61, 43, 74, 44, 65, 65, 50, 72, 71, 66, 67, 72, 51, 81, 62, 55, 61, 48, 51, 45, 42, 48, 67, 49, 70, 44, 46, 48, 16, 8, 9, 10, 7),
(23, 'Claudio Bravo', 'GK', 'Manchester City', 'https://cdn.sofifa.org/17/players/174543.png', 82, 14.5, 1, 12, 13, 18, 32, 11, 13, 25, 60, 31, 15, 58, 54, 64, 77, 64, 22, 81, 44, 70, 21, 40, 23, 15, 71, 23, 60, 11, 18, 19, 81, 83, 87, 77, 81),
(24, 'İlkay Gündoğan', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/186942.png', 85, 39, 4, 74, 69, 49, 90, 75, 87, 81, 74, 83, 88, 77, 74, 85, 87, 83, 77, 62, 73, 74, 74, 68, 79, 77, 87, 76, 86, 57, 64, 64, 11, 14, 5, 5, 13),
(25, 'Tosin Adarabioyo', 'DEF', 'Manchester City', 'https://cdn.sofifa.org/17/players/222104.png', 63, 0.575, 2, 30, 30, 65, 59, 25, 44, 26, 22, 49, 62, 65, 60, 58, 54, 56, 31, 68, 75, 73, 22, 52, 52, 28, 32, 35, 70, 61, 66, 63, 14, 11, 11, 8, 9),
(26, 'Brahim Díaz', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/231410.png', 65, 1, 3, 43, 62, 30, 63, 44, 73, 62, 47, 48, 72, 82, 78, 83, 46, 82, 61, 57, 61, 39, 50, 28, 20, 61, 58, 58, 57, 22, 23, 21, 13, 9, 13, 10, 6),
(27, 'Fabian Delph', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/183427.png', 78, 9.5, 3, 69, 63, 53, 80, 59, 83, 72, 48, 76, 79, 79, 77, 89, 72, 86, 80, 72, 89, 64, 73, 82, 75, 71, 72, 65, 76, 63, 73, 71, 10, 9, 14, 11, 6),
(28, 'Fernando Reges', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/184134.png', 78, 6.5, 2, 60, 54, 70, 70, 41, 62, 65, 53, 68, 72, 66, 68, 74, 79, 57, 76, 72, 84, 81, 68, 87, 83, 59, 62, 54, 76, 78, 79, 82, 1, 1, 1, 1, 1),
(29, 'Paolo Fernándes Cantin', 'FWD', 'Manchester City', 'https://cdn.sofifa.org/17/players/223979.png', 61, 0.475, 3, 52, 61, 38, 58, 54, 62, 57, 48, 49, 60, 77, 79, 80, 49, 88, 68, 46, 68, 47, 65, 48, 37, 58, 52, 59, 55, 40, 20, 16, 14, 15, 7, 15, 8),
(30, 'Thierry Ambrose', 'FWD', 'Manchester City', 'https://cdn.sofifa.org/17/players/221350.png', 66, 1.3, 2, 45, 68, 64, 53, 49, 67, 48, 31, 35, 67, 87, 86, 77, 55, 72, 67, 76, 58, 57, 49, 34, 19, 66, 61, 60, 54, 20, 21, 29, 9, 11, 16, 11, 7),
(31, 'Cameron Humphreys-Grant', 'DEF', 'Manchester City', 'https://cdn.sofifa.org/17/players/223963.png', 62, 0.475, 2, 48, 24, 60, 55, 26, 45, 33, 35, 51, 50, 72, 70, 63, 56, 72, 44, 76, 64, 70, 33, 56, 54, 50, 39, 40, 37, 66, 65, 58, 7, 14, 16, 12, 6),
(32, 'Aaron Nemane', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/223977.png', 60, 0.35, 3, 50, 54, 35, 47, 34, 66, 41, 29, 39, 58, 85, 87, 78, 53, 74, 50, 48, 62, 34, 41, 42, 14, 56, 55, 59, 47, 14, 19, 12, 14, 14, 14, 15, 6),
(33, 'Sinan Bytyqi', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/216321.png', 64, 0.625, 3, 52, 56, 50, 66, 55, 68, 61, 66, 59, 67, 70, 69, 71, 60, 63, 63, 59, 53, 62, 56, 61, 27, 54, 63, 60, 60, 33, 44, 38, 9, 13, 13, 15, 13),
(34, 'Will Patching', 'MID', 'Manchester City', 'https://cdn.sofifa.org/17/players/229718.png', 59, 0.29, 3, 50, 47, 43, 65, 39, 60, 65, 70, 64, 63, 70, 69, 65, 53, 70, 68, 60, 55, 38, 57, 43, 43, 42, 62, 40, 53, 37, 40, 39, 6, 7, 12, 5, 10),
(35, 'Nathaniel Clyne', 'DEF', 'Liverpool', 'https://cdn.sofifa.org/17/players/190456.png', 82, 20.5, 3, 80, 54, 66, 76, 45, 77, 64, 39, 67, 75, 86, 86, 84, 75, 76, 74, 67, 87, 71, 69, 76, 77, 72, 64, 46, 75, 81, 83, 86, 10, 11, 13, 15, 7),
(36, 'Simon Mignolet', 'GK', 'Liverpool', 'https://cdn.sofifa.org/17/players/173426.png', 80, 12.5, 1, 11, 11, 16, 39, 16, 14, 16, 12, 34, 24, 55, 59, 28, 76, 42, 45, 69, 31, 72, 16, 34, 21, 16, 40, 41, 66, 13, 14, 16, 80, 76, 65, 74, 84),
(37, 'Joel Matip', 'DEF', 'Liverpool', 'https://cdn.sofifa.org/17/players/197061.png', 83, 24.5, 2, 54, 36, 88, 77, 50, 68, 63, 22, 77, 71, 67, 77, 58, 81, 50, 66, 65, 75, 80, 48, 79, 84, 51, 72, 42, 80, 85, 85, 79, 11, 15, 10, 7, 10),
(38, 'Jordan Henderson', 'MID', 'Liverpool', 'https://cdn.sofifa.org/17/players/183711.png', 82, 20, 3, 81, 67, 65, 85, 72, 74, 80, 74, 83, 80, 76, 73, 74, 79, 71, 75, 81, 93, 76, 71, 80, 79, 74, 82, 64, 78, 73, 80, 76, 7, 13, 7, 9, 13),
(39, 'Dejan Lovren', 'DEF', 'Liverpool', 'https://cdn.sofifa.org/17/players/195086.png', 81, 16.5, 2, 59, 33, 77, 68, 42, 64, 26, 18, 66, 67, 61, 58, 54, 75, 41, 63, 82, 70, 85, 34, 87, 82, 21, 56, 52, 75, 80, 84, 85, 14, 14, 13, 10, 7),
(40, 'Adam Lallana', 'MID', 'Liverpool', 'https://cdn.sofifa.org/17/players/180819.png', 83, 22.5, 4, 74, 79, 67, 86, 72, 85, 77, 66, 78, 86, 76, 74, 83, 78, 76, 72, 73, 89, 67, 72, 74, 68, 77, 83, 70, 80, 60, 68, 62, 6, 15, 14, 8, 11),
(41, 'James Milner', 'DEF', 'Liverpool', 'https://cdn.sofifa.org/17/players/138412.png', 80, 10, 3, 85, 68, 69, 84, 79, 77, 81, 77, 81, 78, 71, 69, 73, 84, 73, 85, 64, 91, 73, 79, 77, 76, 77, 77, 83, 86, 76, 77, 79, 1, 1, 1, 1, 1),
(42, 'Divock Origi', 'FWD', 'Liverpool', 'https://cdn.sofifa.org/17/players/213135.png', 79, 15, 4, 69, 79, 73, 75, 70, 78, 54, 40, 59, 76, 87, 85, 77, 76, 62, 77, 75, 74, 82, 69, 69, 28, 80, 71, 65, 70, 30, 24, 18, 15, 13, 16, 11, 15),
(43, 'Philippe Coutinho Correia', 'FWD', 'Liverpool', 'https://cdn.sofifa.org/17/players/189242.png', 86, 52, 4, 77, 73, 47, 85, 75, 88, 84, 79, 78, 88, 89, 77, 91, 81, 91, 79, 59, 79, 61, 85, 55, 30, 83, 87, 64, 79, 24, 44, 40, 12, 7, 9, 14, 6),
(44, 'Roberto Firmino Barbosa de Oliveira', 'FWD', 'Liverpool', 'https://cdn.sofifa.org/17/players/201942.png', 83, 31.5, 4, 72, 82, 73, 83, 78, 87, 80, 67, 76, 85, 79, 79, 82, 81, 81, 79, 81, 86, 76, 78, 64, 37, 84, 83, 72, 76, 30, 64, 42, 8, 11, 9, 6, 10),
(45, 'Georginio Wijnaldum', 'MID', 'Liverpool', 'https://cdn.sofifa.org/17/players/181291.png', 81, 20.5, 3, 67, 76, 74, 82, 73, 85, 76, 70, 74, 84, 79, 85, 82, 82, 80, 77, 82, 87, 70, 71, 64, 70, 82, 76, 74, 79, 59, 67, 64, 16, 6, 14, 12, 6),
(46, 'Emre Can', 'MID', 'Liverpool', 'https://cdn.sofifa.org/17/players/208333.png', 79, 14, 3, 70, 60, 70, 80, 61, 76, 68, 65, 79, 80, 72, 77, 75, 77, 72, 78, 76, 86, 84, 72, 83, 79, 73, 78, 60, 74, 78, 80, 79, 14, 8, 8, 13, 11),
(47, 'Lucas Pezzini Leiva', 'MID', 'Liverpool', 'https://cdn.sofifa.org/17/players/176266.png', 80, 10.5, 2, 63, 23, 65, 77, 47, 69, 66, 47, 73, 74, 55, 53, 70, 78, 73, 71, 82, 77, 76, 35, 83, 85, 49, 69, 61, 78, 78, 80, 79, 10, 8, 8, 5, 6),
(48, 'Ragnar Klavan', 'DEF', 'Liverpool', 'https://cdn.sofifa.org/17/players/140620.png', 78, 6, 2, 52, 38, 78, 72, 34, 56, 48, 34, 73, 70, 63, 65, 61, 75, 56, 67, 76, 75, 79, 56, 77, 75, 38, 60, 44, 74, 79, 81, 77, 11, 15, 11, 10, 12),
(49, 'Daniel Sturridge', 'FWD', 'Liverpool', 'https://cdn.sofifa.org/17/players/171833.png', 83, 27.5, 4, 62, 84, 73, 75, 76, 82, 62, 68, 62, 81, 80, 82, 78, 81, 64, 83, 74, 70, 71, 83, 60, 22, 84, 74, 75, 81, 15, 24, 12, 7, 15, 9, 5, 13),
(50, 'Alberto Moreno Pérez', 'DEF', 'Liverpool', 'https://cdn.sofifa.org/17/players/205566.png', 76, 5.5, 2, 79, 65, 61, 74, 35, 77, 59, 40, 64, 81, 89, 89, 86, 68, 87, 80, 85, 85, 63, 74, 83, 68, 73, 58, 54, 57, 62, 71, 76, 10, 14, 9, 10, 11),
(51, 'Trent Alexander-Arnold', 'DEF', 'Liverpool', 'https://cdn.sofifa.org/17/players/231281.png', 68, 1.5, 2, 66, 58, 58, 74, 41, 65, 52, 50, 67, 61, 83, 83, 74, 60, 75, 62, 66, 81, 57, 46, 67, 60, 62, 63, 55, 64, 62, 63, 63, 14, 15, 14, 6, 7),
(52, 'Loris Karius', 'GK', 'Liverpool', 'https://cdn.sofifa.org/17/players/203775.png', 82, 23, 1, 14, 18, 14, 35, 14, 16, 12, 14, 37, 23, 51, 50, 51, 82, 43, 20, 74, 36, 55, 16, 18, 13, 8, 45, 19, 34, 13, 11, 13, 84, 75, 76, 79, 85),
(53, 'Marko Grujić', 'MID', 'Liverpool', 'https://cdn.sofifa.org/17/players/232099.png', 71, 3.6, 2, 60, 70, 69, 74, 61, 67, 60, 43, 71, 72, 68, 75, 56, 64, 53, 75, 74, 79, 77, 62, 75, 71, 72, 66, 57, 60, 66, 73, 71, 9, 14, 8, 12, 13),
(54, 'Danny Ings', 'FWD', 'Liverpool', 'https://cdn.sofifa.org/17/players/195859.png', 77, 10, 3, 62, 77, 71, 69, 66, 78, 57, 36, 61, 77, 89, 84, 79, 74, 82, 74, 81, 81, 73, 67, 60, 39, 79, 68, 68, 70, 33, 24, 27, 10, 13, 12, 16, 6),
(55, 'Joe Gomez', 'DEF', 'Liverpool', 'https://cdn.sofifa.org/17/players/225100.png', 70, 1.9, 2, 57, 26, 69, 65, 24, 65, 41, 29, 53, 65, 79, 79, 64, 65, 70, 41, 64, 67, 78, 26, 63, 62, 51, 39, 26, 63, 69, 71, 72, 8, 13, 14, 7, 7),
(56, 'Sadio Mané', 'FWD', 'Liverpool', 'https://cdn.sofifa.org/17/players/208722.png', 82, 26, 4, 72, 81, 53, 76, 66, 85, 74, 64, 72, 83, 94, 92, 88, 78, 85, 77, 75, 83, 72, 66, 71, 31, 82, 77, 71, 76, 33, 35, 38, 10, 10, 15, 7, 14),
(57, 'Kevin Stewart', 'MID', 'Liverpool', 'https://cdn.sofifa.org/17/players/206538.png', 72, 2.5, 3, 56, 51, 64, 76, 25, 63, 41, 29, 65, 70, 75, 73, 68, 65, 73, 64, 70, 74, 77, 61, 73, 71, 61, 69, 44, 63, 72, 73, 71, 13, 7, 8, 10, 13),
(58, 'Sheyi Ojo', 'MID', 'Liverpool', 'https://cdn.sofifa.org/17/players/224021.png', 64, 0.875, 3, 54, 63, 44, 67, 44, 69, 52, 50, 57, 59, 82, 85, 74, 53, 67, 56, 42, 56, 62, 56, 40, 28, 58, 50, 66, 56, 24, 33, 32, 12, 10, 6, 10, 16),
(59, 'Rhian Brewster', 'FWD', 'Liverpool', 'https://cdn.sofifa.org/17/players/238460.png', 60, 0.35, 3, 46, 63, 55, 50, 47, 56, 41, 41, 48, 58, 83, 80, 75, 59, 77, 54, 69, 64, 56, 55, 40, 12, 58, 54, 55, 55, 20, 17, 17, 7, 12, 10, 8, 5),
(60, 'Harry Wilson', 'FWD', 'Liverpool', 'https://cdn.sofifa.org/17/players/220710.png', 61, 0.475, 2, 55, 61, 47, 56, 50, 63, 56, 62, 54, 62, 81, 79, 69, 42, 84, 60, 45, 52, 43, 53, 31, 21, 56, 52, 61, 53, 36, 37, 36, 7, 13, 9, 15, 7),
(61, 'Oviemuno Ejaria', 'MID', 'Liverpool', 'https://cdn.sofifa.org/17/players/236246.png', 66, 1.2, 3, 56, 57, 57, 74, 56, 68, 60, 49, 71, 77, 73, 76, 61, 63, 61, 67, 58, 60, 75, 47, 46, 27, 50, 55, 57, 60, 45, 47, 57, 15, 9, 11, 14, 10),
(62, 'Connor Randall', 'DEF', 'Liverpool', 'https://cdn.sofifa.org/17/players/216299.png', 56, 0.2, 3, 37, 44, 30, 62, 59, 58, 52, 32, 57, 57, 67, 62, 39, 57, 57, 49, 46, 55, 69, 58, 57, 54, 50, 54, 56, 58, 49, 60, 61, 13, 6, 9, 6, 12),
(63, 'Conor Masterson', 'DEF', 'Liverpool', 'https://cdn.sofifa.org/17/players/232102.png', 60, 0.325, 2, 29, 30, 62, 35, 33, 33, 28, 37, 32, 35, 61, 55, 44, 50, 47, 46, 60, 57, 70, 22, 56, 62, 33, 36, 43, 50, 55, 64, 63, 9, 7, 10, 6, 12),
(64, 'Alexander Manninger', 'GK', 'Liverpool', 'https://cdn.sofifa.org/17/players/6895.png', 73, 0.5, 1, 12, 12, 13, 22, 14, 13, 15, 15, 17, 14, 39, 40, 48, 76, 45, 22, 70, 31, 74, 11, 39, 16, 9, 14, 17, 62, 11, 14, 15, 72, 72, 53, 72, 74),
(65, 'Ben Woodburn', 'FWD', 'Liverpool', 'https://cdn.sofifa.org/17/players/236248.png', 63, 0.65, 3, 43, 61, 44, 62, 45, 64, 47, 43, 51, 65, 86, 76, 78, 60, 80, 66, 60, 64, 55, 59, 31, 28, 63, 51, 62, 54, 16, 15, 21, 14, 7, 7, 8, 12),
(66, 'Antonio Valencia', 'DEF', 'Manchester United', 'https://cdn.sofifa.org/17/players/167905.png', 82, 14, 3, 85, 58, 64, 77, 69, 82, 69, 66, 69, 81, 88, 86, 74, 85, 87, 85, 68, 89, 85, 62, 85, 81, 78, 71, 55, 85, 79, 82, 77, 16, 11, 10, 7, 7),
(67, 'Eric Bailly', 'DEF', 'Manchester United', 'https://cdn.sofifa.org/17/players/225508.png', 83, 28.5, 2, 41, 33, 79, 72, 36, 59, 46, 43, 60, 63, 81, 83, 76, 77, 65, 55, 86, 83, 84, 48, 86, 85, 44, 49, 46, 74, 83, 85, 87, 14, 14, 10, 9, 8),
(68, 'Jordan Williams', 'DEF', 'Liverpool', 'https://cdn.sofifa.org/17/players/224017.png', 59, 0.25, 2, 49, 42, 57, 64, 38, 53, 44, 51, 61, 55, 54, 54, 57, 52, 65, 43, 60, 48, 72, 39, 58, 49, 37, 61, 53, 43, 54, 60, 58, 8, 6, 9, 16, 7),
(69, 'Paulo Alves', 'MID', 'Liverpool', 'https://cdn.sofifa.org/17/players/237966.png', 60, 0.28, 3, 52, 52, 48, 62, 51, 60, 56, 52, 63, 62, 63, 65, 70, 60, 68, 63, 56, 54, 50, 46, 47, 33, 48, 62, 55, 64, 45, 48, 47, 11, 12, 7, 9, 15),
(70, 'David De Gea Quintana', 'GK', 'Manchester United', 'https://cdn.sofifa.org/17/players/193080.png', 90, 68.5, 1, 17, 13, 21, 39, 13, 18, 21, 19, 38, 31, 57, 58, 60, 88, 43, 31, 67, 40, 64, 12, 38, 30, 12, 68, 40, 64, 13, 21, 13, 88, 85, 87, 86, 90),
(71, 'Daley Blind', 'DEF', 'Manchester United', 'https://cdn.sofifa.org/17/players/190815.png', 81, 16, 2, 77, 46, 71, 81, 62, 73, 80, 62, 81, 80, 65, 58, 73, 85, 75, 68, 71, 86, 73, 64, 70, 86, 64, 79, 56, 86, 82, 84, 77, 12, 9, 10, 14, 10),
(72, 'Ander Herrera Agüera', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/191740.png', 84, 32.5, 4, 74, 71, 60, 86, 67, 81, 80, 65, 80, 86, 79, 68, 85, 85, 84, 72, 63, 88, 67, 72, 87, 84, 78, 86, 79, 82, 76, 76, 71, 9, 12, 15, 9, 8),
(73, 'Matteo Darmian', 'DEF', 'Manchester United', 'https://cdn.sofifa.org/17/players/184392.png', 80, 13.5, 3, 71, 55, 70, 75, 59, 74, 69, 35, 66, 75, 80, 80, 80, 80, 78, 69, 72, 87, 65, 56, 76, 79, 64, 63, 45, 76, 81, 84, 82, 6, 7, 7, 12, 7),
(74, 'Paul Pogba', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/195864.png', 88, 71.5, 5, 78, 71, 73, 85, 84, 89, 84, 82, 88, 90, 75, 79, 79, 86, 61, 90, 85, 91, 91, 87, 72, 70, 84, 87, 76, 83, 68, 73, 73, 5, 6, 2, 4, 3),
(75, 'Anthony Martial', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/211300.png', 82, 29, 4, 73, 80, 70, 75, 74, 88, 76, 54, 58, 84, 92, 91, 85, 81, 85, 84, 80, 80, 80, 72, 59, 42, 79, 70, 71, 78, 35, 39, 38, 9, 8, 8, 15, 11),
(76, 'Henrikh Mkhitaryan', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/192883.png', 86, 39, 4, 80, 77, 53, 85, 81, 87, 83, 64, 73, 89, 88, 84, 89, 83, 85, 87, 72, 85, 63, 75, 69, 68, 83, 85, 72, 67, 49, 53, 55, 5, 11, 14, 5, 7),
(77, 'Juan Manuel Mata García', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/178088.png', 85, 33, 3, 83, 80, 63, 86, 71, 83, 84, 84, 77, 88, 75, 63, 89, 85, 89, 75, 72, 74, 43, 70, 52, 39, 84, 87, 81, 85, 25, 28, 21, 9, 10, 14, 5, 8),
(78, 'Wayne Rooney', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/54050.png', 82, 18.5, 3, 78, 82, 75, 79, 85, 76, 84, 81, 84, 80, 69, 73, 76, 82, 77, 86, 80, 82, 83, 83, 81, 54, 82, 81, 79, 88, 48, 54, 37, 10, 11, 13, 8, 7),
(79, 'Marcus Rashford', 'FWD', 'Manchester United', 'https://cdn.sofifa.org/17/players/231677.png', 78, 12.5, 3, 70, 75, 68, 74, 73, 83, 70, 70, 56, 79, 92, 91, 86, 76, 76, 79, 66, 83, 65, 64, 60, 38, 81, 70, 74, 71, 22, 25, 25, 11, 6, 15, 7, 14),
(80, 'Marouane Fellaini', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/176944.png', 79, 8, 3, 61, 70, 91, 78, 71, 72, 62, 46, 66, 82, 54, 55, 50, 78, 52, 75, 65, 84, 92, 72, 94, 73, 79, 74, 64, 77, 72, 76, 66, 8, 6, 9, 15, 16),
(81, 'Michael Carrick', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/21146.png', 82, 6, 2, 72, 59, 73, 87, 67, 71, 68, 59, 85, 80, 53, 52, 58, 85, 63, 78, 72, 69, 66, 71, 67, 83, 66, 85, 64, 85, 75, 79, 72, 13, 12, 11, 15, 9),
(82, 'Jesse Lingard', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/207494.png', 78, 10.5, 3, 71, 72, 61, 75, 64, 78, 72, 56, 65, 82, 85, 84, 84, 76, 84, 74, 65, 81, 54, 72, 63, 47, 78, 75, 65, 65, 49, 46, 41, 14, 10, 8, 13, 9),
(83, 'Ashley Young', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/152908.png', 78, 7.5, 4, 84, 69, 51, 74, 75, 79, 84, 72, 66, 79, 83, 78, 84, 77, 77, 75, 57, 70, 56, 73, 55, 65, 70, 77, 65, 63, 56, 59, 61, 16, 10, 15, 16, 15),
(84, 'Luke Shaw', 'DEF', 'Manchester United', 'https://cdn.sofifa.org/17/players/205988.png', 79, 11.5, 2, 78, 44, 67, 75, 58, 79, 63, 58, 64, 76, 83, 88, 80, 77, 75, 62, 68, 78, 80, 48, 74, 78, 73, 65, 53, 75, 79, 80, 78, 10, 12, 13, 7, 7),
(85, 'Phil Jones', 'DEF', 'Manchester United', 'https://cdn.sofifa.org/17/players/194957.png', 80, 15.5, 2, 64, 50, 75, 75, 60, 60, 38, 35, 67, 69, 55, 68, 43, 78, 62, 68, 83, 80, 80, 59, 85, 79, 42, 59, 55, 73, 81, 82, 82, 10, 8, 6, 16, 11),
(86, 'Zlatan Ibrahimović', 'FWD', 'Manchester United', 'https://cdn.sofifa.org/17/players/41236.png', 90, 36.5, 4, 76, 90, 80, 84, 93, 85, 82, 82, 76, 90, 68, 72, 86, 85, 41, 93, 72, 75, 93, 88, 84, 20, 86, 83, 91, 91, 15, 41, 27, 13, 15, 10, 9, 12),
(87, 'Chris Smalling', 'DEF', 'Manchester United', 'https://cdn.sofifa.org/17/players/189881.png', 83, 22.5, 2, 52, 50, 85, 66, 54, 59, 49, 22, 63, 61, 76, 77, 60, 83, 48, 42, 75, 79, 87, 35, 82, 81, 48, 49, 52, 76, 80, 83, 81, 10, 15, 16, 15, 15),
(88, 'Sergio Romero', 'GK', 'Manchester United', 'https://cdn.sofifa.org/17/players/173373.png', 80, 12, 1, 11, 14, 12, 38, 17, 12, 12, 13, 36, 25, 47, 44, 52, 79, 44, 14, 63, 35, 75, 11, 33, 21, 11, 44, 16, 52, 14, 11, 15, 77, 75, 81, 78, 83),
(89, 'Axel Tuanzebe', 'DEF', 'Manchester United', 'https://cdn.sofifa.org/17/players/231485.png', 69, 1.8, 2, 33, 26, 66, 67, 37, 63, 36, 37, 54, 63, 74, 77, 62, 60, 65, 46, 73, 66, 71, 34, 70, 62, 31, 35, 50, 64, 68, 72, 68, 5, 8, 5, 13, 12),
(90, 'Marcos Rojo', 'DEF', 'Manchester United', 'https://cdn.sofifa.org/17/players/201862.png', 83, 22.5, 3, 75, 52, 83, 72, 49, 69, 67, 57, 73, 71, 74, 74, 73, 79, 65, 79, 86, 81, 83, 63, 91, 80, 59, 57, 64, 74, 79, 83, 83, 7, 8, 12, 15, 10),
(91, 'Timothy Fosu-Mensah', 'DEF', 'Manchester United', 'https://cdn.sofifa.org/17/players/232270.png', 71, 2.8, 2, 59, 57, 70, 73, 55, 65, 56, 34, 70, 63, 79, 80, 70, 63, 65, 79, 76, 67, 79, 56, 83, 74, 54, 58, 48, 64, 69, 72, 74, 11, 8, 8, 7, 11),
(92, 'Joel Castro Pereira', 'GK', 'Manchester United', 'https://cdn.sofifa.org/17/players/212710.png', 67, 1.5, 1, 10, 12, 11, 36, 7, 11, 9, 11, 20, 20, 43, 43, 34, 68, 44, 12, 54, 34, 56, 11, 22, 20, 14, 55, 12, 64, 13, 11, 9, 67, 66, 59, 64, 69),
(93, 'Scott McTominay', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/237238.png', 58, 0.28, 2, 28, 64, 76, 58, 51, 55, 38, 34, 40, 62, 51, 55, 53, 50, 44, 60, 65, 60, 68, 57, 54, 26, 66, 55, 69, 53, 25, 24, 24, 9, 6, 6, 10, 11),
(94, 'Joshua Harrop', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/213692.png', 62, 0.475, 3, 42, 55, 42, 63, 41, 66, 43, 45, 60, 66, 65, 70, 66, 50, 68, 58, 52, 57, 46, 57, 46, 25, 49, 60, 56, 60, 38, 40, 40, 10, 6, 14, 7, 7),
(95, 'DJ Buffonge', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/237697.png', 61, 0.425, 3, 53, 53, 55, 72, 49, 68, 63, 51, 70, 67, 74, 74, 60, 61, 67, 65, 59, 45, 51, 46, 49, 28, 52, 58, 63, 63, 42, 49, 48, 14, 7, 7, 13, 7),
(96, 'Callum Gribbin', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/237698.png', 63, 0.65, 3, 62, 45, 54, 66, 44, 68, 58, 72, 60, 67, 73, 74, 56, 60, 67, 65, 55, 64, 44, 55, 50, 42, 59, 56, 48, 51, 40, 35, 40, 7, 11, 12, 7, 14),
(97, 'Zachary Dearnley', 'MID', 'Manchester United', 'https://cdn.sofifa.org/17/players/237699.png', 61, 0.425, 3, 55, 55, 62, 59, 42, 64, 48, 48, 57, 63, 72, 71, 52, 52, 67, 66, 56, 55, 58, 46, 64, 48, 60, 55, 53, 46, 30, 30, 31, 7, 8, 11, 7, 11),
(98, 'Demetri Mitchell', 'DEF', 'Manchester United', 'https://cdn.sofifa.org/17/players/237310.png', 59, 0.29, 3, 58, 57, 58, 56, 50, 68, 44, 36, 49, 67, 77, 76, 63, 54, 65, 61, 65, 58, 55, 64, 42, 46, 45, 49, 64, 57, 54, 57, 57, 13, 7, 12, 9, 12),
(99, 'Petr Čech', 'GK', 'Arsenal', 'https://cdn.sofifa.org/17/players/48940.png', 88, 34, 1, 19, 12, 19, 35, 17, 12, 13, 19, 33, 22, 40, 44, 49, 86, 34, 21, 51, 32, 65, 11, 17, 23, 13, 53, 23, 70, 11, 13, 12, 83, 90, 77, 84, 85),
(100, 'James Wilson', 'FWD', 'Manchester United', 'https://cdn.sofifa.org/17/players/213642.png', 69, 1.7, 2, 45, 70, 62, 59, 57, 68, 49, 42, 52, 69, 79, 79, 65, 66, 71, 67, 64, 68, 67, 59, 36, 24, 71, 60, 67, 60, 16, 23, 24, 9, 15, 14, 8, 16),
(101, 'Regan Poole', 'DEF', 'Manchester United', 'https://cdn.sofifa.org/17/players/225557.png', 64, 0.75, 2, 28, 21, 62, 64, 25, 52, 32, 30, 62, 53, 71, 67, 64, 59, 69, 32, 74, 69, 68, 32, 65, 57, 41, 49, 37, 55, 65, 64, 61, 16, 15, 13, 7, 12),
(102, 'Héctor Bellerín Moruno', 'DEF', 'Arsenal', 'https://cdn.sofifa.org/17/players/203747.png', 80, 18, 3, 74, 52, 60, 74, 41, 76, 63, 50, 59, 77, 96, 94, 84, 77, 77, 52, 65, 84, 61, 43, 72, 76, 67, 63, 62, 67, 75, 76, 80, 8, 14, 14, 13, 12),
(103, 'Shkodran Mustafi', 'DEF', 'Arsenal', 'https://cdn.sofifa.org/17/players/192227.png', 84, 32.5, 2, 51, 58, 81, 77, 51, 53, 55, 47, 69, 70, 67, 73, 66, 81, 69, 66, 85, 74, 81, 52, 79, 85, 50, 55, 54, 71, 82, 83, 85, 11, 9, 15, 10, 6),
(104, 'Laurent Koscielny', 'DEF', 'Arsenal', 'https://cdn.sofifa.org/17/players/165229.png', 85, 24, 2, 54, 32, 84, 76, 35, 62, 22, 49, 69, 67, 78, 80, 70, 82, 62, 54, 86, 77, 76, 47, 90, 86, 31, 56, 51, 80, 83, 87, 86, 13, 11, 9, 11, 7),
(105, 'Francis Coquelin', 'MID', 'Arsenal', 'https://cdn.sofifa.org/17/players/189271.png', 79, 10, 3, 60, 41, 60, 75, 43, 72, 55, 41, 71, 78, 69, 70, 76, 74, 85, 71, 80, 83, 76, 57, 92, 85, 62, 67, 52, 74, 77, 80, 80, 9, 9, 8, 10, 15),
(106, 'Theo Walcott', 'MID', 'Arsenal', 'https://cdn.sofifa.org/17/players/164859.png', 81, 16.5, 3, 77, 82, 58, 75, 72, 81, 76, 74, 65, 79, 92, 93, 83, 79, 79, 76, 66, 75, 62, 69, 65, 35, 81, 73, 74, 78, 33, 39, 36, 11, 8, 9, 9, 8),
(107, 'Granit Xhaka', 'MID', 'Arsenal', 'https://cdn.sofifa.org/17/players/199503.png', 82, 22.5, 3, 68, 49, 62, 85, 50, 70, 68, 70, 89, 80, 48, 54, 55, 83, 62, 88, 40, 79, 76, 85, 90, 76, 77, 86, 59, 73, 71, 75, 68, 7, 8, 11, 7, 13),
(108, 'Mesut Özil', 'MID', 'Arsenal', 'https://cdn.sofifa.org/17/players/176635.png', 89, 62, 4, 82, 75, 54, 89, 77, 86, 84, 79, 84, 90, 77, 68, 84, 87, 70, 70, 52, 69, 56, 76, 48, 24, 84, 93, 67, 73, 22, 16, 19, 6, 14, 10, 6, 14),
(109, 'Danny Welbeck', 'FWD', 'Arsenal', 'https://cdn.sofifa.org/17/players/186146.png', 80, 18, 3, 69, 77, 75, 77, 76, 81, 61, 62, 64, 78, 87, 85, 85, 78, 64, 77, 80, 84, 78, 70, 77, 22, 81, 72, 70, 76, 23, 38, 33, 9, 10, 6, 12, 16),
(110, 'Olivier Giroud', 'FWD', 'Arsenal', 'https://cdn.sofifa.org/17/players/178509.png', 83, 23, 2, 63, 84, 88, 77, 82, 72, 70, 65, 56, 82, 60, 58, 59, 83, 52, 84, 82, 79, 88, 76, 76, 41, 84, 75, 81, 78, 26, 37, 20, 12, 15, 11, 6, 5),
(111, 'Lucas Pérez Martínez', 'FWD', 'Arsenal', 'https://cdn.sofifa.org/17/players/199354.png', 81, 17.5, 4, 74, 85, 68, 77, 79, 81, 83, 78, 70, 82, 78, 78, 74, 81, 75, 83, 65, 74, 73, 82, 69, 38, 81, 76, 79, 76, 24, 24, 26, 14, 8, 8, 10, 10),
(112, 'Ignacio Monreal Eraso', 'DEF', 'Arsenal', 'https://cdn.sofifa.org/17/players/177604.png', 80, 10, 2, 78, 39, 67, 77, 56, 73, 74, 59, 61, 77, 75, 75, 74, 79, 72, 71, 75, 84, 65, 61, 74, 82, 61, 66, 61, 79, 79, 82, 81, 7, 5, 9, 3, 5),
(113, 'Alex Oxlade-Chamberlain', 'MID', 'Arsenal', 'https://cdn.sofifa.org/17/players/198784.png', 80, 19, 4, 75, 68, 39, 77, 58, 85, 67, 53, 73, 82, 89, 89, 84, 74, 88, 75, 65, 76, 70, 74, 66, 51, 74, 72, 69, 68, 52, 57, 54, 16, 9, 6, 9, 9),
(114, 'Alexis Sánchez', 'FWD', 'Arsenal', 'https://cdn.sofifa.org/17/players/184941.png', 88, 55, 4, 80, 85, 70, 80, 83, 89, 78, 78, 73, 86, 88, 84, 90, 87, 87, 84, 85, 85, 72, 81, 80, 42, 86, 82, 77, 82, 30, 39, 35, 10, 10, 15, 12, 13),
(115, 'Mohamed Elneny', 'MID', 'Arsenal', 'https://cdn.sofifa.org/17/players/213051.png', 77, 8, 3, 68, 57, 57, 79, 39, 68, 69, 61, 74, 76, 61, 64, 67, 72, 62, 71, 70, 92, 72, 67, 74, 77, 63, 70, 62, 73, 70, 75, 72, 7, 15, 15, 12, 6),
(116, 'Kieran Gibbs', 'DEF', 'Arsenal', 'https://cdn.sofifa.org/17/players/186115.png', 78, 7, 3, 76, 47, 68, 74, 47, 74, 64, 52, 65, 75, 79, 83, 73, 77, 74, 67, 70, 77, 69, 60, 72, 79, 63, 65, 63, 77, 76, 79, 78, 6, 11, 8, 9, 15),
(117, 'Gabriel Armando de Abreu', 'DEF', 'Arsenal', 'https://cdn.sofifa.org/17/players/201305.png', 79, 10.5, 2, 67, 51, 77, 69, 48, 60, 55, 46, 69, 65, 68, 72, 69, 78, 71, 61, 75, 74, 77, 57, 78, 79, 51, 61, 51, 61, 80, 83, 80, 15, 6, 15, 15, 7),
(118, 'Aaron Ramsey', 'MID', 'Arsenal', 'https://cdn.sofifa.org/17/players/186561.png', 83, 27.5, 3, 75, 73, 58, 85, 79, 81, 70, 70, 80, 84, 69, 69, 77, 82, 75, 81, 65, 90, 69, 75, 74, 70, 83, 80, 75, 80, 60, 72, 67, 6, 11, 5, 10, 8),
(119, 'David Ospina', 'GK', 'Arsenal', 'https://cdn.sofifa.org/17/players/176550.png', 79, 9.5, 1, 11, 10, 15, 36, 12, 12, 10, 13, 32, 32, 34, 34, 44, 70, 50, 35, 75, 29, 38, 12, 20, 25, 16, 40, 26, 29, 10, 13, 12, 83, 71, 78, 77, 84),
(120, 'Santiago Cazorla González', 'MID', 'Arsenal', 'https://cdn.sofifa.org/17/players/146562.png', 85, 28.5, 4, 85, 77, 58, 86, 72, 86, 86, 78, 83, 87, 73, 63, 82, 84, 91, 78, 70, 72, 59, 80, 64, 64, 81, 85, 80, 88, 58, 64, 52, 6, 9, 5, 7, 15),
(121, 'Alex Iwobi', 'MID', 'Arsenal', 'https://cdn.sofifa.org/17/players/213655.png', 74, 6, 3, 52, 63, 42, 80, 48, 83, 50, 40, 57, 83, 78, 77, 77, 74, 76, 67, 50, 70, 73, 54, 46, 24, 69, 75, 56, 72, 29, 26, 23, 14, 7, 12, 14, 11),
(122, 'Mathieu Debuchy', 'DEF', 'Arsenal', 'https://cdn.sofifa.org/17/players/158626.png', 79, 7, 3, 79, 59, 74, 75, 62, 72, 74, 61, 73, 74, 75, 72, 76, 72, 74, 74, 81, 83, 71, 68, 80, 75, 64, 64, 66, 76, 78, 79, 78, 8, 9, 7, 15, 10),
(123, 'Carl Jenkinson', 'DEF', 'Arsenal', 'https://cdn.sofifa.org/17/players/200841.png', 73, 3.1, 2, 73, 41, 60, 69, 60, 68, 60, 52, 64, 68, 68, 78, 62, 70, 68, 72, 64, 78, 74, 41, 71, 69, 67, 62, 49, 62, 74, 75, 74, 12, 15, 15, 11, 12),
(124, 'Jeff Reine-Adelaïde', 'MID', 'Arsenal', 'https://cdn.sofifa.org/17/players/228509.png', 63, 0.65, 3, 41, 41, 54, 68, 46, 72, 46, 43, 62, 59, 82, 75, 79, 62, 59, 63, 64, 54, 57, 46, 45, 47, 62, 61, 53, 43, 41, 41, 42, 10, 15, 11, 16, 8),
(125, 'Per Mertesacker', 'DEF', 'Arsenal', 'https://cdn.sofifa.org/17/players/53612.png', 82, 13, 2, 38, 36, 86, 67, 30, 39, 39, 45, 58, 65, 26, 28, 29, 83, 28, 71, 32, 61, 85, 25, 69, 86, 43, 58, 42, 87, 86, 87, 84, 12, 13, 5, 12, 8),
(126, 'Ainsley Maitland-Niles', 'MID', 'Arsenal', 'https://cdn.sofifa.org/17/players/225782.png', 64, 0.7, 3, 60, 51, 38, 68, 39, 65, 44, 36, 66, 63, 79, 75, 74, 62, 70, 58, 58, 72, 68, 54, 58, 61, 56, 60, 54, 55, 57, 59, 58, 15, 9, 7, 10, 13),
(127, 'Rob Holding', 'DEF', 'Arsenal', 'https://cdn.sofifa.org/17/players/228295.png', 70, 2.3, 2, 52, 30, 64, 62, 27, 66, 33, 30, 44, 69, 64, 66, 60, 66, 71, 48, 73, 76, 75, 27, 67, 68, 40, 55, 38, 71, 70, 71, 71, 14, 11, 10, 14, 13),
(128, 'Emiliano Martinez', 'GK', 'Arsenal', 'https://cdn.sofifa.org/17/players/202811.png', 69, 1.2, 1, 22, 16, 26, 27, 23, 13, 22, 20, 46, 26, 59, 57, 49, 57, 49, 28, 60, 14, 70, 26, 37, 13, 12, 49, 42, 37, 12, 20, 20, 71, 66, 73, 66, 72),
(129, 'Chris Willock', 'MID', 'Arsenal', 'https://cdn.sofifa.org/17/players/225785.png', 60, 0.35, 3, 35, 57, 38, 55, 43, 69, 43, 30, 43, 61, 83, 82, 65, 55, 73, 50, 56, 61, 52, 46, 27, 23, 60, 50, 60, 45, 16, 11, 16, 9, 10, 8, 9, 9),
(130, 'Ryan Huddart', 'GK', 'Arsenal', 'https://cdn.sofifa.org/17/players/222255.png', 58, 0.16, 1, 13, 19, 14, 23, 12, 17, 21, 15, 18, 27, 39, 40, 32, 58, 46, 21, 52, 32, 59, 20, 19, 24, 12, 12, 32, 32, 21, 16, 13, 63, 55, 55, 49, 60),
(131, 'Yaya Sanogo', 'FWD', 'Arsenal', 'https://cdn.sofifa.org/17/players/196932.png', 69, 1.4, 3, 39, 67, 73, 63, 59, 62, 45, 41, 51, 63, 69, 69, 53, 65, 32, 75, 75, 65, 80, 50, 46, 36, 71, 52, 61, 66, 17, 21, 19, 16, 13, 8, 15, 11),
(132, 'Donyell Malen', 'FWD', 'Arsenal', 'https://cdn.sofifa.org/17/players/231447.png', 63, 0.65, 2, 42, 65, 64, 57, 43, 59, 46, 35, 35, 54, 77, 80, 50, 63, 65, 54, 64, 50, 73, 59, 38, 19, 62, 54, 75, 50, 22, 17, 16, 7, 9, 9, 10, 14),
(133, 'Tolaji Bola', 'DEF', 'Arsenal', 'https://cdn.sofifa.org/17/players/233441.png', 58, 0.23, 2, 32, 30, 60, 43, 35, 33, 29, 32, 29, 41, 63, 60, 48, 53, 62, 41, 66, 57, 63, 29, 50, 54, 32, 36, 42, 45, 50, 65, 68, 8, 13, 6, 12, 5),
(134, 'Joel Robles Blázquez', 'GK', 'Everton', 'https://cdn.sofifa.org/17/players/195668.png', 76, 5.5, 1, 12, 11, 12, 15, 13, 15, 11, 20, 26, 25, 49, 52, 47, 67, 41, 36, 64, 30, 72, 11, 23, 22, 16, 38, 15, 37, 15, 11, 14, 78, 75, 75, 75, 77),
(135, 'Mason Holgate', 'DEF', 'Everton', 'https://cdn.sofifa.org/17/players/225024.png', 67, 1.3, 2, 40, 37, 62, 68, 40, 65, 39, 35, 59, 67, 80, 81, 65, 65, 57, 51, 57, 74, 75, 42, 63, 56, 50, 45, 40, 69, 65, 71, 70, 13, 12, 9, 8, 16),
(136, 'Idrissa Gueye', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/193474.png', 82, 19, 2, 60, 50, 69, 80, 32, 75, 33, 43, 76, 79, 80, 77, 75, 81, 83, 80, 85, 88, 76, 67, 80, 85, 67, 72, 54, 80, 78, 85, 84, 8, 6, 8, 12, 13),
(137, 'Leighton Baines', 'DEF', 'Everton', 'https://cdn.sofifa.org/17/players/163631.png', 83, 14.5, 3, 88, 70, 74, 81, 63, 78, 81, 82, 74, 79, 76, 75, 75, 80, 85, 84, 72, 86, 69, 75, 74, 80, 75, 76, 90, 81, 81, 82, 82, 8, 15, 10, 13, 12),
(138, 'Phil Jagielka', 'DEF', 'Everton', 'https://cdn.sofifa.org/17/players/53914.png', 80, 6.5, 2, 55, 30, 79, 71, 44, 49, 55, 31, 66, 62, 60, 64, 51, 74, 64, 69, 83, 74, 83, 54, 79, 81, 51, 39, 68, 78, 81, 84, 81, 32, 33, 38, 32, 34),
(139, 'Ashley Williams', 'DEF', 'Everton', 'https://cdn.sofifa.org/17/players/163824.png', 83, 15, 2, 32, 37, 79, 72, 34, 57, 34, 23, 74, 69, 68, 72, 58, 81, 59, 64, 86, 73, 86, 40, 83, 83, 28, 53, 45, 80, 81, 85, 80, 7, 10, 16, 7, 10),
(140, 'Kevin Mirallas', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/172175.png', 82, 19, 4, 82, 78, 64, 80, 76, 84, 77, 76, 77, 85, 87, 86, 83, 76, 74, 77, 73, 76, 61, 76, 58, 35, 80, 67, 75, 74, 40, 55, 53, 8, 10, 14, 13, 15),
(141, 'Morgan Schneiderlin', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/177358.png', 82, 19, 2, 65, 64, 71, 83, 56, 75, 68, 61, 79, 79, 69, 66, 73, 81, 71, 71, 72, 90, 77, 56, 84, 84, 67, 73, 56, 83, 76, 82, 80, 6, 11, 12, 14, 7),
(142, 'Tom Davies', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/230005.png', 68, 1.7, 3, 44, 54, 52, 74, 40, 71, 43, 38, 65, 73, 72, 75, 63, 62, 75, 48, 57, 77, 66, 47, 73, 56, 60, 70, 42, 63, 48, 64, 58, 11, 12, 9, 14, 10),
(143, 'Ross Barkley', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/199189.png', 81, 23, 3, 65, 69, 65, 84, 61, 85, 68, 70, 78, 86, 80, 80, 70, 77, 59, 80, 63, 74, 79, 79, 73, 45, 71, 81, 65, 80, 56, 60, 52, 9, 14, 12, 6, 10),
(144, 'Romelu Lukaku', 'FWD', 'Everton', 'https://cdn.sofifa.org/17/players/192505.png', 85, 46, 3, 68, 88, 84, 71, 76, 76, 64, 66, 68, 79, 82, 89, 62, 77, 48, 88, 71, 80, 93, 74, 72, 27, 87, 70, 80, 84, 27, 30, 30, 8, 15, 14, 7, 10),
(145, 'Enner Valencia', 'FWD', 'Everton', 'https://cdn.sofifa.org/17/players/220295.png', 76, 6, 3, 70, 75, 74, 68, 61, 75, 71, 65, 63, 72, 86, 85, 76, 72, 74, 84, 90, 85, 68, 74, 50, 42, 73, 62, 70, 75, 37, 40, 42, 9, 12, 16, 9, 8),
(146, 'Ademola Lookman', 'FWD', 'Everton', 'https://cdn.sofifa.org/17/players/230899.png', 65, 1, 2, 51, 65, 49, 53, 58, 70, 48, 34, 39, 61, 84, 84, 82, 59, 80, 70, 68, 58, 54, 69, 68, 13, 66, 44, 65, 60, 16, 13, 12, 12, 12, 9, 15, 6),
(147, 'Dominic Calvert-Lewin', 'FWD', 'Everton', 'https://cdn.sofifa.org/17/players/221479.png', 63, 0.7, 2, 46, 65, 52, 50, 59, 65, 42, 42, 35, 61, 80, 82, 82, 57, 71, 65, 67, 69, 58, 56, 49, 34, 63, 54, 54, 55, 23, 31, 21, 12, 12, 8, 7, 11),
(148, 'Gareth Barry', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/6826.png', 80, 2.4, 2, 80, 56, 74, 83, 65, 68, 78, 78, 74, 76, 32, 34, 52, 78, 63, 77, 70, 79, 77, 71, 80, 82, 58, 74, 72, 81, 79, 80, 80, 7, 13, 9, 7, 12),
(149, 'Aaron Lennon', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/152747.png', 78, 8, 3, 78, 67, 28, 76, 68, 84, 63, 55, 54, 81, 87, 86, 93, 74, 92, 64, 70, 80, 59, 57, 57, 42, 71, 73, 62, 80, 40, 37, 37, 14, 7, 7, 16, 11),
(150, 'Matthew Pennington', 'DEF', 'Everton', 'https://cdn.sofifa.org/17/players/216791.png', 66, 0.875, 2, 61, 30, 64, 60, 36, 46, 35, 34, 53, 54, 72, 74, 49, 53, 57, 44, 74, 69, 75, 26, 60, 59, 31, 31, 48, 47, 67, 68, 64, 12, 12, 7, 12, 11),
(151, 'Séamus Coleman', 'DEF', 'Everton', 'https://cdn.sofifa.org/17/players/180216.png', 82, 16, 3, 81, 65, 67, 77, 64, 78, 42, 35, 70, 77, 79, 79, 77, 81, 74, 75, 72, 90, 73, 68, 78, 77, 76, 70, 60, 76, 83, 84, 84, 5, 15, 10, 13, 7),
(152, 'Arouna Koné', 'FWD', 'Everton', 'https://cdn.sofifa.org/17/players/122849.png', 75, 3.3, 3, 61, 73, 71, 67, 71, 73, 57, 56, 49, 75, 75, 76, 73, 71, 61, 80, 78, 73, 83, 68, 47, 28, 73, 66, 67, 72, 22, 43, 26, 10, 6, 7, 12, 7),
(153, 'Maarten Stekelenburg', 'GK', 'Everton', 'https://cdn.sofifa.org/17/players/2147.png', 76, 3.8, 1, 18, 11, 14, 39, 11, 12, 13, 13, 37, 31, 35, 45, 35, 73, 27, 13, 55, 30, 77, 11, 41, 26, 13, 41, 23, 63, 18, 15, 14, 78, 73, 81, 74, 76),
(154, 'Muhamed Bešić', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/200765.png', 76, 7, 2, 45, 51, 67, 75, 41, 71, 52, 57, 69, 78, 68, 75, 78, 72, 75, 55, 82, 69, 74, 48, 84, 77, 46, 65, 48, 76, 74, 77, 81, 14, 7, 13, 7, 12),
(155, 'Ramiro Funes Mori', 'DEF', 'Everton', 'https://cdn.sofifa.org/17/players/199667.png', 77, 7.5, 2, 73, 40, 80, 67, 25, 63, 49, 58, 55, 69, 69, 75, 66, 71, 61, 69, 78, 75, 79, 56, 83, 74, 49, 47, 52, 46, 75, 78, 76, 9, 9, 13, 10, 7),
(156, 'Yannick Bolasie', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/189157.png', 78, 8.5, 5, 75, 64, 51, 71, 51, 87, 62, 49, 67, 83, 89, 89, 84, 74, 76, 81, 60, 80, 82, 71, 76, 31, 69, 63, 65, 69, 27, 34, 17, 8, 9, 12, 14, 6),
(157, 'Kieran Dowell', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/226401.png', 65, 1, 3, 54, 64, 52, 63, 56, 68, 56, 51, 63, 68, 73, 73, 73, 60, 73, 67, 52, 59, 47, 65, 48, 33, 56, 59, 54, 63, 46, 49, 52, 8, 13, 7, 14, 8),
(158, 'James McCarthy', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/188253.png', 81, 17.5, 3, 68, 57, 63, 82, 61, 78, 64, 64, 81, 77, 75, 69, 66, 75, 71, 67, 66, 91, 78, 65, 79, 79, 63, 72, 60, 77, 81, 79, 78, 12, 11, 8, 10, 13),
(159, 'Mateusz Hewelt', 'GK', 'Everton', 'https://cdn.sofifa.org/17/players/229345.png', 58, 0.25, 1, 13, 10, 13, 25, 10, 13, 16, 17, 24, 17, 47, 42, 30, 57, 66, 30, 60, 24, 40, 12, 30, 23, 17, 17, 26, 22, 21, 19, 19, 65, 47, 48, 55, 62),
(160, 'Courtney Duffus', 'FWD', 'Everton', 'https://cdn.sofifa.org/17/players/216794.png', 60, 0.28, 3, 36, 64, 50, 61, 55, 61, 63, 38, 48, 57, 69, 54, 58, 63, 63, 67, 51, 58, 67, 64, 40, 22, 46, 62, 57, 54, 23, 24, 24, 9, 11, 10, 6, 10),
(161, 'Antonee Robinson', 'DEF', 'Everton', 'https://cdn.sofifa.org/17/players/229348.png', 60, 0.325, 2, 55, 33, 52, 37, 32, 65, 35, 39, 33, 52, 67, 64, 54, 63, 67, 32, 54, 57, 42, 31, 55, 60, 49, 40, 45, 42, 59, 64, 65, 12, 9, 15, 14, 9),
(162, 'Harry Charsley', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/225383.png', 61, 0.325, 2, 51, 49, 58, 68, 58, 63, 63, 48, 68, 68, 55, 57, 61, 59, 69, 53, 54, 47, 44, 44, 49, 28, 56, 63, 56, 61, 47, 55, 57, 10, 7, 7, 11, 9),
(163, 'Luke Garbutt', 'DEF', 'Everton', 'https://cdn.sofifa.org/17/players/192319.png', 70, 1.7, 2, 75, 45, 59, 70, 44, 66, 76, 74, 63, 70, 74, 74, 70, 66, 69, 58, 71, 76, 66, 63, 67, 64, 64, 63, 43, 63, 68, 67, 69, 14, 9, 6, 15, 10),
(164, 'Joe Williams', 'MID', 'Everton', 'https://cdn.sofifa.org/17/players/224265.png', 57, 0.19, 2, 58, 53, 54, 71, 51, 69, 56, 52, 71, 64, 68, 62, 56, 45, 69, 61, 52, 50, 45, 44, 46, 26, 42, 35, 59, 63, 50, 57, 60, 14, 9, 10, 10, 9),
(165, 'David Henen', 'FWD', 'Everton', 'https://cdn.sofifa.org/17/players/208668.png', 60, 0.425, 4, 53, 59, 54, 57, 54, 68, 51, 52, 44, 65, 69, 74, 72, 48, 62, 61, 65, 56, 68, 58, 47, 28, 49, 44, 53, 52, 15, 19, 12, 11, 14, 15, 16, 9),
(166, 'Bassala Sambou', 'FWD', 'Everton', 'https://cdn.sofifa.org/17/players/231503.png', 54, 0.14, 2, 27, 58, 45, 37, 37, 45, 32, 34, 33, 47, 79, 80, 71, 50, 58, 46, 59, 52, 67, 49, 40, 17, 54, 42, 56, 46, 15, 15, 16, 7, 14, 7, 7, 10),
(167, 'Victor Moses', 'DEF', 'Chelsea', 'https://cdn.sofifa.org/17/players/172962.png', 78, 8.5, 4, 74, 70, 69, 71, 63, 84, 75, 61, 69, 80, 86, 84, 80, 74, 83, 75, 66, 84, 80, 68, 42, 69, 76, 71, 71, 65, 63, 70, 64, 9, 7, 8, 16, 16),
(168, 'César Azpilicueta Tanco', 'DEF', 'Chelsea', 'https://cdn.sofifa.org/17/players/184432.png', 83, 20, 3, 79, 46, 73, 80, 54, 70, 66, 58, 74, 77, 79, 79, 75, 88, 73, 68, 75, 88, 74, 60, 76, 85, 64, 68, 66, 66, 87, 88, 87, 13, 9, 10, 6, 5),
(169, 'Thibaut Courtois', 'GK', 'Chelsea', 'https://cdn.sofifa.org/17/players/192119.png', 89, 65.5, 1, 14, 14, 13, 32, 12, 13, 19, 11, 31, 23, 46, 52, 61, 81, 45, 36, 68, 38, 70, 17, 23, 15, 13, 44, 27, 52, 11, 18, 16, 84, 91, 69, 86, 89),
(170, 'David Luiz Moreira Marinho', 'DEF', 'Chelsea', 'https://cdn.sofifa.org/17/players/179944.png', 84, 22, 3, 68, 56, 82, 79, 67, 66, 70, 76, 78, 79, 72, 73, 74, 79, 56, 77, 82, 77, 77, 71, 84, 82, 54, 69, 75, 74, 80, 85, 84, 11, 12, 10, 7, 14),
(171, 'Marcos Alonso Mendoza', 'DEF', 'Chelsea', 'https://cdn.sofifa.org/17/players/192638.png', 79, 10.5, 3, 78, 62, 70, 75, 52, 78, 65, 73, 72, 78, 76, 82, 69, 82, 58, 77, 68, 90, 78, 75, 70, 70, 70, 65, 64, 72, 74, 77, 76, 9, 7, 13, 9, 12),
(172, 'N''Golo Kanté', 'MID', 'Chelsea', 'https://cdn.sofifa.org/17/players/215914.png', 83, 28.5, 3, 67, 65, 54, 84, 56, 76, 49, 49, 79, 79, 83, 81, 80, 85, 90, 72, 79, 94, 76, 66, 90, 91, 69, 76, 54, 84, 75, 89, 85, 15, 12, 10, 7, 10),
(173, 'Nemanja Matić', 'MID', 'Chelsea', 'https://cdn.sofifa.org/17/players/191202.png', 84, 24, 3, 68, 64, 77, 83, 74, 72, 68, 67, 80, 79, 66, 68, 57, 82, 53, 78, 71, 90, 90, 75, 83, 86, 68, 77, 69, 85, 76, 83, 77, 7, 15, 12, 14, 9),
(174, 'Gary Cahill', 'DEF', 'Chelsea', 'https://cdn.sofifa.org/17/players/164468.png', 83, 17, 2, 28, 56, 86, 65, 47, 58, 48, 27, 61, 63, 69, 66, 62, 84, 51, 63, 82, 68, 78, 66, 78, 83, 45, 56, 53, 77, 83, 85, 84, 5, 12, 9, 5, 12),
(175, 'Pedro Rodríguez Ledesma', 'FWD', 'Chelsea', 'https://cdn.sofifa.org/17/players/189505.png', 83, 23, 4, 78, 81, 55, 83, 70, 84, 81, 57, 70, 85, 86, 80, 84, 83, 82, 71, 67, 80, 56, 73, 56, 49, 84, 74, 66, 72, 30, 32, 31, 5, 11, 12, 15, 9),
(176, 'Eden Hazard', 'FWD', 'Chelsea', 'https://cdn.sofifa.org/17/players/183277.png', 89, 71.5, 4, 80, 81, 57, 84, 79, 93, 82, 79, 80, 91, 93, 87, 92, 85, 90, 79, 59, 77, 65, 82, 54, 41, 85, 86, 86, 86, 25, 27, 22, 11, 12, 6, 8, 8),
(177, 'Michy Batshuayi', 'FWD', 'Chelsea', 'https://cdn.sofifa.org/17/players/204529.png', 80, 19.5, 3, 65, 83, 73, 64, 74, 78, 61, 46, 36, 77, 81, 84, 84, 79, 78, 83, 81, 65, 82, 76, 59, 23, 83, 63, 67, 81, 16, 26, 22, 9, 10, 16, 7, 15),
(178, 'Diego da Silva Costa', 'FWD', 'Chelsea', 'https://cdn.sofifa.org/17/players/179844.png', 86, 41, 3, 65, 89, 82, 67, 82, 79, 62, 59, 52, 83, 76, 78, 58, 85, 52, 84, 64, 85, 91, 72, 93, 40, 88, 74, 76, 84, 28, 39, 34, 11, 13, 12, 8, 11),
(179, 'Francesc Fàbregas i Soler', 'MID', 'Chelsea', 'https://cdn.sofifa.org/17/players/162895.png', 86, 36, 3, 85, 76, 74, 91, 81, 80, 77, 81, 90, 86, 65, 62, 65, 81, 77, 77, 68, 80, 64, 75, 45, 50, 78, 91, 80, 92, 60, 63, 62, 6, 10, 8, 15, 15),
(180, 'John Terry', 'DEF', 'Chelsea', 'https://cdn.sofifa.org/17/players/13732.png', 81, 2.9, 2, 42, 46, 90, 66, 55, 45, 44, 31, 62, 60, 33, 34, 44, 81, 46, 61, 80, 63, 85, 33, 80, 83, 38, 59, 52, 82, 82, 82, 81, 14, 5, 6, 15, 8),
(181, 'Ruben Loftus-Cheek', 'MID', 'Chelsea', 'https://cdn.sofifa.org/17/players/213666.png', 68, 1.9, 2, 36, 61, 57, 75, 31, 68, 31, 31, 65, 70, 69, 73, 62, 55, 71, 51, 60, 76, 78, 47, 52, 62, 68, 67, 45, 71, 64, 67, 61, 11, 7, 12, 15, 13),
(182, 'Willian Borges da Silva', 'MID', 'Chelsea', 'https://cdn.sofifa.org/17/players/180403.png', 85, 33, 4, 75, 75, 29, 82, 59, 87, 80, 85, 77, 86, 92, 86, 87, 81, 82, 71, 46, 86, 61, 80, 44, 55, 78, 83, 60, 74, 43, 62, 51, 14, 12, 13, 7, 13),
(183, 'Kurt Zouma', 'DEF', 'Chelsea', 'https://cdn.sofifa.org/17/players/204311.png', 80, 18.5, 2, 54, 47, 77, 62, 47, 48, 59, 60, 56, 67, 69, 77, 48, 75, 52, 56, 86, 72, 85, 49, 82, 78, 53, 57, 61, 74, 80, 83, 80, 14, 14, 7, 9, 15),
(184, 'Asmir Begović', 'GK', 'Chelsea', 'https://cdn.sofifa.org/17/players/172723.png', 83, 20, 1, 14, 12, 12, 26, 12, 16, 17, 15, 32, 24, 52, 58, 53, 79, 41, 28, 38, 36, 80, 12, 42, 21, 11, 31, 40, 62, 13, 11, 12, 83, 81, 74, 80, 84),
(185, 'Nathaniel Chalobah', 'MID', 'Chelsea', 'https://cdn.sofifa.org/17/players/205897.png', 71, 2.8, 2, 42, 41, 68, 75, 29, 70, 51, 38, 70, 73, 72, 68, 76, 69, 58, 71, 71, 68, 74, 67, 65, 69, 54, 72, 49, 71, 66, 69, 66, 12, 9, 15, 8, 8),
(186, 'Ola Aina', 'DEF', 'Chelsea', 'https://cdn.sofifa.org/17/players/224656.png', 63, 0.6, 2, 60, 33, 51, 46, 36, 64, 42, 37, 43, 56, 77, 79, 63, 56, 78, 32, 61, 62, 64, 35, 57, 63, 54, 38, 49, 37, 62, 64, 66, 7, 14, 10, 10, 9),
(187, 'Eduardo dos Reis Carvalho', 'GK', 'Chelsea', 'https://cdn.sofifa.org/17/players/163873.png', 75, 2.9, 1, 13, 20, 12, 22, 11, 11, 11, 14, 32, 32, 46, 44, 60, 68, 58, 38, 75, 20, 72, 18, 28, 24, 11, 42, 37, 53, 13, 20, 20, 75, 74, 71, 78, 75),
(188, 'Robert Kenedy Nunes do Nascimento', 'MID', 'Chelsea', 'https://cdn.sofifa.org/17/players/215639.png', 73, 4.6, 3, 63, 64, 66, 68, 55, 78, 60, 54, 65, 77, 86, 79, 85, 66, 62, 75, 69, 75, 70, 66, 34, 52, 68, 66, 67, 64, 43, 48, 44, 11, 15, 11, 15, 12),
(189, 'Nathan Aké', 'DEF', 'Chelsea', 'https://cdn.sofifa.org/17/players/208920.png', 75, 6, 2, 64, 41, 69, 75, 52, 63, 63, 59, 72, 69, 77, 79, 66, 73, 63, 63, 77, 75, 76, 56, 64, 76, 44, 53, 48, 68, 73, 77, 74, 10, 7, 7, 16, 10),
(190, 'Dominic Solanke', 'FWD', 'Chelsea', 'https://cdn.sofifa.org/17/players/225539.png', 69, 1.7, 3, 54, 69, 62, 71, 67, 73, 54, 42, 58, 76, 78, 75, 73, 54, 70, 68, 69, 65, 68, 59, 31, 22, 64, 63, 71, 52, 24, 15, 22, 9, 15, 14, 9, 10),
(191, 'Charly Musonda', 'MID', 'Chelsea', 'https://cdn.sofifa.org/17/players/204233.png', 76, 7.5, 5, 71, 66, 39, 73, 52, 83, 64, 52, 70, 80, 89, 87, 92, 72, 83, 69, 44, 62, 46, 62, 32, 21, 66, 67, 54, 42, 21, 20, 22, 6, 6, 7, 8, 9),
(192, 'Iké Ugbo', 'FWD', 'Chelsea', 'https://cdn.sofifa.org/17/players/233045.png', 56, 0.2, 3, 37, 58, 56, 41, 42, 50, 38, 28, 28, 52, 79, 74, 51, 42, 52, 52, 47, 46, 56, 34, 61, 21, 59, 49, 52, 48, 17, 15, 19, 11, 13, 5, 13, 11),
(193, 'Todd Kane', 'DEF', 'Chelsea', 'https://cdn.sofifa.org/17/players/204847.png', 70, 1.6, 2, 68, 32, 51, 62, 34, 68, 41, 35, 55, 66, 77, 78, 65, 66, 68, 68, 65, 78, 64, 51, 65, 65, 59, 39, 50, 55, 69, 69, 74, 9, 13, 16, 14, 6),
(194, 'Dujon Sterling', 'DEF', 'Chelsea', 'https://cdn.sofifa.org/17/players/238071.png', 60, 0.35, 3, 50, 36, 56, 54, 29, 69, 35, 34, 31, 52, 64, 65, 58, 58, 53, 37, 57, 59, 69, 35, 59, 54, 42, 43, 43, 42, 60, 64, 67, 11, 8, 8, 7, 5),
(195, 'Kyle Scott', 'MID', 'Chelsea', 'https://cdn.sofifa.org/17/players/232757.png', 58, 0.26, 3, 53, 47, 31, 61, 48, 61, 54, 52, 57, 60, 62, 65, 71, 48, 68, 52, 34, 56, 34, 51, 46, 41, 48, 65, 50, 62, 34, 52, 51, 12, 12, 9, 11, 9),
(196, 'Trevoh Chalobah', 'DEF', 'Chelsea', 'https://cdn.sofifa.org/17/players/230918.png', 57, 0.2, 2, 48, 32, 56, 49, 34, 46, 48, 46, 46, 49, 76, 75, 51, 54, 62, 46, 64, 52, 63, 31, 51, 56, 34, 36, 42, 48, 52, 57, 55, 5, 5, 9, 9, 7),
(197, 'Jordan Houghton', 'MID', 'Chelsea', 'https://cdn.sofifa.org/17/players/213665.png', 61, 0.375, 2, 44, 49, 50, 68, 49, 54, 61, 59, 67, 64, 75, 66, 43, 50, 61, 50, 73, 76, 64, 49, 65, 55, 50, 52, 39, 63, 64, 59, 51, 12, 7, 8, 11, 15),
(198, 'Bradley Collins', 'GK', 'Chelsea', 'https://cdn.sofifa.org/17/players/225543.png', 58, 0.19, 1, 20, 15, 21, 29, 19, 20, 19, 12, 26, 27, 41, 45, 33, 56, 63, 26, 55, 25, 51, 16, 20, 20, 11, 23, 25, 28, 13, 19, 17, 60, 53, 56, 52, 63),
(199, 'Cédric Ricardo Alves Soares', 'DEF', 'Southampton', 'https://cdn.sofifa.org/17/players/201118.png', 79, 11, 2, 79, 57, 65, 75, 68, 76, 66, 64, 69, 76, 83, 83, 76, 76, 83, 80, 73, 87, 62, 78, 75, 76, 71, 65, 60, 69, 76, 78, 79, 11, 14, 12, 12, 11),
(200, 'Jack Stephens', 'DEF', 'Southampton', 'https://cdn.sofifa.org/17/players/202697.png', 68, 1.2, 2, 47, 36, 65, 63, 34, 53, 55, 58, 53, 59, 57, 67, 60, 55, 59, 49, 65, 66, 74, 42, 56, 66, 47, 44, 42, 54, 68, 72, 69, 13, 10, 11, 13, 10),
(201, 'Mason Mount', 'MID', 'Chelsea', 'https://cdn.sofifa.org/17/players/233064.png', 58, 0.29, 3, 50, 54, 31, 58, 43, 56, 50, 52, 53, 55, 72, 66, 68, 45, 67, 61, 34, 54, 31, 58, 41, 32, 53, 61, 60, 56, 26, 34, 31, 11, 12, 13, 8, 12),
(202, 'Maya Yoshida', 'DEF', 'Southampton', 'https://cdn.sofifa.org/17/players/191648.png', 75, 3.4, 2, 23, 34, 74, 63, 56, 57, 38, 33, 52, 63, 67, 66, 74, 73, 62, 50, 85, 75, 78, 41, 66, 69, 42, 50, 54, 65, 76, 79, 76, 12, 16, 8, 6, 13),
(203, 'Oriol Romeu Vidal', 'MID', 'Southampton', 'https://cdn.sofifa.org/17/players/199576.png', 75, 4.6, 2, 37, 25, 65, 78, 22, 55, 49, 53, 71, 71, 66, 55, 60, 66, 59, 60, 67, 75, 84, 43, 83, 76, 50, 70, 54, 72, 73, 77, 68, 12, 14, 10, 11, 16),
(204, 'Fraser Forster', 'GK', 'Southampton', 'https://cdn.sofifa.org/17/players/172203.png', 78, 8, 1, 19, 13, 13, 27, 19, 20, 10, 19, 19, 33, 32, 35, 32, 70, 42, 36, 59, 29, 80, 12, 43, 22, 13, 44, 22, 34, 13, 13, 12, 74, 80, 69, 78, 83),
(205, 'Ryan Bertrand', 'DEF', 'Southampton', 'https://cdn.sofifa.org/17/players/169705.png', 80, 13.5, 2, 79, 41, 69, 76, 43, 75, 74, 66, 70, 77, 81, 79, 76, 76, 68, 59, 71, 83, 72, 54, 73, 77, 63, 51, 52, 76, 79, 82, 82, 11, 13, 15, 10, 15),
(206, 'Manolo Gabbiadini', 'FWD', 'Southampton', 'https://cdn.sofifa.org/17/players/198683.png', 80, 19, 3, 70, 81, 73, 74, 73, 80, 78, 82, 64, 84, 79, 79, 74, 75, 56, 87, 76, 69, 76, 89, 57, 18, 78, 72, 72, 71, 18, 24, 20, 12, 11, 11, 5, 5),
(207, 'James Ward-Prowse', 'MID', 'Southampton', 'https://cdn.sofifa.org/17/players/205569.png', 76, 7.5, 3, 88, 53, 57, 81, 51, 71, 86, 79, 80, 78, 69, 68, 74, 73, 79, 74, 68, 76, 64, 70, 67, 65, 61, 82, 64, 79, 55, 65, 62, 12, 12, 10, 15, 15);
INSERT INTO `player` (`ID`, `name`, `position`, `club`, `photo`, `overall`, `value`, `skills`, `crossing`, `finishing`, `heading`, `short_passing`, `volleys`, `dribbling`, `curve`, `free_kicks`, `long_passing`, `ball_controll`, `acceleration`, `sprint_speed`, `agility`, `reactions`, `balance`, `shot_power`, `jumping`, `stamina`, `strength`, `long_shots`, `aggression`, `interceptions`, `positioning`, `vision`, `penalties`, `composure`, `marking`, `stand_tackle`, `slide_tackle`, `GK_diving`, `GK_handling`, `GK_kicking`, `GK_positioning`, `GK_reflexes`) VALUES
(208, 'Steven Davis', 'MID', 'Southampton', 'https://cdn.sofifa.org/17/players/151508.png', 77, 5.5, 3, 75, 58, 53, 80, 64, 76, 73, 69, 77, 77, 67, 67, 79, 80, 76, 63, 82, 86, 67, 63, 74, 67, 68, 75, 62, 84, 66, 71, 67, 9, 7, 13, 9, 11),
(209, 'Dušan Tadić', 'MID', 'Southampton', 'https://cdn.sofifa.org/17/players/199434.png', 80, 14.5, 4, 79, 65, 63, 81, 73, 83, 83, 76, 77, 85, 72, 70, 81, 80, 80, 69, 65, 73, 64, 66, 56, 31, 73, 84, 78, 79, 40, 34, 26, 11, 11, 14, 9, 16),
(210, 'Nathan Redmond', 'MID', 'Southampton', 'https://cdn.sofifa.org/17/players/198719.png', 75, 6, 4, 71, 68, 33, 69, 55, 79, 69, 65, 63, 77, 89, 86, 90, 63, 84, 71, 48, 72, 45, 71, 38, 22, 71, 72, 60, 62, 18, 26, 30, 12, 14, 16, 6, 10),
(211, 'Shane Long', 'FWD', 'Southampton', 'https://cdn.sofifa.org/17/players/169216.png', 76, 5, 3, 70, 73, 75, 62, 70, 73, 54, 37, 49, 75, 84, 84, 74, 77, 73, 76, 93, 84, 79, 67, 80, 42, 77, 63, 78, 70, 36, 27, 24, 11, 13, 10, 11, 10),
(212, 'Alex McCarthy', 'GK', 'Southampton', 'https://cdn.sofifa.org/17/players/189324.png', 76, 5, 1, 11, 17, 16, 33, 12, 17, 15, 18, 35, 17, 58, 56, 35, 69, 43, 20, 68, 35, 63, 14, 35, 22, 16, 50, 41, 63, 13, 13, 12, 78, 73, 61, 74, 81),
(213, 'Sofiane Boufal', 'FWD', 'Southampton', 'https://cdn.sofifa.org/17/players/211381.png', 79, 14, 5, 70, 72, 35, 76, 70, 87, 71, 69, 66, 86, 86, 85, 90, 70, 85, 71, 34, 67, 40, 69, 47, 19, 76, 73, 69, 69, 44, 40, 32, 9, 16, 10, 14, 7),
(214, 'Martín Cáceres', 'DEF', 'Southampton', 'https://cdn.sofifa.org/17/players/182495.png', 80, 10.5, 2, 68, 37, 76, 65, 65, 60, 68, 41, 65, 65, 79, 79, 81, 74, 79, 70, 93, 75, 75, 59, 78, 84, 50, 58, 50, 76, 84, 81, 79, 2, 3, 4, 2, 4),
(215, 'Jay Rodriguez', 'MID', 'Southampton', 'https://cdn.sofifa.org/17/players/169792.png', 77, 7, 3, 70, 79, 76, 76, 74, 79, 69, 29, 66, 75, 79, 84, 79, 77, 65, 75, 81, 85, 71, 74, 41, 44, 80, 69, 71, 74, 16, 28, 21, 12, 12, 16, 14, 9),
(216, 'Jordy Clasie', 'MID', 'Southampton', 'https://cdn.sofifa.org/17/players/199422.png', 78, 10.5, 2, 70, 34, 27, 81, 73, 70, 80, 70, 78, 80, 68, 65, 75, 79, 90, 77, 56, 76, 69, 71, 85, 80, 65, 83, 64, 71, 64, 73, 61, 11, 11, 14, 10, 7),
(217, 'Pierre-Emile Højbjerg', 'MID', 'Southampton', 'https://cdn.sofifa.org/17/players/213648.png', 75, 5.5, 3, 66, 52, 60, 76, 60, 75, 69, 70, 74, 77, 68, 68, 73, 75, 75, 76, 64, 78, 75, 73, 78, 74, 62, 74, 51, 69, 65, 72, 64, 9, 7, 12, 11, 11),
(218, 'Stuart Taylor', 'GK', 'Southampton', 'https://cdn.sofifa.org/17/players/50723.png', 67, 0.425, 1, 13, 11, 20, 28, 12, 11, 13, 11, 18, 26, 51, 52, 54, 68, 51, 25, 32, 44, 76, 13, 40, 24, 13, 21, 41, 62, 11, 12, 12, 64, 70, 63, 65, 67),
(219, 'Virgil van Dijk', 'DEF', 'Southampton', 'https://cdn.sofifa.org/17/players/203376.png', 83, 25.5, 2, 53, 55, 77, 74, 45, 69, 60, 70, 76, 73, 74, 76, 57, 74, 51, 81, 81, 74, 92, 64, 76, 83, 41, 59, 62, 87, 83, 85, 82, 13, 10, 13, 11, 11),
(220, 'Charlie Austin', 'FWD', 'Southampton', 'https://cdn.sofifa.org/17/players/195671.png', 78, 10, 2, 56, 82, 81, 59, 72, 66, 59, 43, 46, 74, 66, 74, 65, 78, 55, 83, 82, 74, 81, 71, 67, 47, 83, 61, 77, 78, 31, 37, 22, 9, 11, 7, 9, 13),
(221, 'Josh Sims', 'MID', 'Southampton', 'https://cdn.sofifa.org/17/players/218660.png', 63, 0.675, 2, 58, 57, 42, 61, 54, 68, 58, 45, 52, 65, 82, 83, 61, 46, 78, 58, 45, 58, 54, 53, 37, 20, 53, 56, 67, 55, 26, 31, 36, 10, 10, 13, 11, 9),
(222, 'Cuco Martina', 'DEF', 'Southampton', 'https://cdn.sofifa.org/17/players/204519.png', 70, 1.1, 2, 70, 45, 65, 62, 44, 62, 60, 45, 60, 61, 72, 74, 70, 71, 60, 61, 85, 77, 72, 60, 71, 69, 53, 59, 51, 71, 68, 72, 69, 13, 14, 14, 14, 12),
(223, 'Matt Targett', 'DEF', 'Southampton', 'https://cdn.sofifa.org/17/players/218659.png', 68, 1.5, 2, 70, 36, 56, 64, 37, 64, 63, 62, 62, 61, 77, 78, 72, 57, 65, 34, 61, 68, 63, 38, 63, 66, 49, 40, 51, 54, 64, 71, 68, 10, 15, 8, 11, 14),
(224, 'Florin Gardoş', 'DEF', 'Southampton', 'https://cdn.sofifa.org/17/players/204210.png', 73, 2.7, 2, 58, 54, 74, 64, 53, 59, 35, 46, 64, 63, 55, 53, 51, 70, 53, 37, 62, 69, 78, 49, 73, 72, 37, 40, 50, 64, 73, 73, 71, 10, 9, 16, 15, 11),
(225, 'Harrison Reed', 'MID', 'Southampton', 'https://cdn.sofifa.org/17/players/205990.png', 69, 1.4, 2, 59, 49, 46, 74, 40, 62, 58, 51, 66, 66, 69, 68, 74, 58, 85, 58, 56, 74, 65, 53, 80, 64, 55, 66, 49, 66, 62, 70, 68, 7, 12, 14, 10, 11),
(226, 'Jérémy Pied', 'DEF', 'Southampton', 'https://cdn.sofifa.org/17/players/183916.png', 75, 3.3, 3, 78, 68, 71, 77, 69, 75, 75, 73, 75, 75, 77, 78, 78, 68, 77, 83, 70, 80, 69, 74, 77, 73, 70, 67, 63, 73, 71, 72, 70, 13, 9, 7, 15, 7),
(227, 'Jake Hesketh', 'MID', 'Southampton', 'https://cdn.sofifa.org/17/players/222922.png', 64, 0.95, 3, 57, 52, 51, 72, 47, 65, 61, 51, 62, 67, 68, 68, 83, 55, 84, 53, 67, 55, 34, 34, 45, 28, 45, 70, 59, 70, 44, 57, 55, 13, 11, 10, 10, 12),
(228, 'Lloyd Isgrove', 'MID', 'Southampton', 'https://cdn.sofifa.org/17/players/203331.png', 67, 0.975, 3, 62, 52, 46, 59, 47, 68, 53, 43, 56, 66, 88, 87, 79, 60, 79, 52, 72, 70, 57, 47, 51, 24, 61, 60, 49, 52, 34, 40, 16, 9, 11, 7, 12, 9),
(229, 'Will Wood', 'DEF', 'Southampton', 'https://cdn.sofifa.org/17/players/228578.png', 59, 0.24, 2, 53, 31, 57, 47, 38, 53, 43, 37, 38, 51, 69, 71, 59, 57, 78, 32, 57, 64, 45, 34, 58, 57, 53, 41, 44, 43, 53, 61, 56, 15, 6, 10, 6, 9),
(230, 'Mouez Hassen', 'GK', 'Southampton', 'https://cdn.sofifa.org/17/players/209483.png', 69, 1.2, 1, 20, 15, 16, 24, 16, 13, 10, 14, 23, 24, 48, 48, 63, 62, 51, 18, 69, 30, 45, 14, 20, 16, 12, 31, 21, 29, 12, 16, 12, 75, 63, 64, 70, 69),
(231, 'Hugo Lloris', 'GK', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/167948.png', 88, 45, 1, 13, 10, 10, 27, 11, 10, 11, 10, 31, 34, 65, 63, 55, 84, 54, 23, 74, 41, 43, 14, 31, 27, 10, 30, 40, 64, 12, 10, 18, 87, 87, 68, 82, 90),
(232, 'Sam McQueen', 'DEF', 'Southampton', 'https://cdn.sofifa.org/17/players/215756.png', 64, 0.65, 2, 67, 47, 47, 60, 42, 68, 67, 47, 57, 65, 74, 78, 74, 62, 73, 48, 61, 61, 62, 51, 55, 56, 47, 57, 52, 57, 62, 67, 61, 12, 12, 12, 7, 9),
(233, 'Ryan Seager', 'FWD', 'Southampton', 'https://cdn.sofifa.org/17/players/213900.png', 63, 0.6, 2, 43, 65, 55, 60, 62, 61, 51, 48, 46, 60, 70, 69, 56, 51, 69, 63, 67, 59, 65, 62, 34, 16, 64, 50, 64, 51, 22, 21, 21, 7, 9, 8, 16, 6),
(234, 'Toby Alderweireld', 'DEF', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/184087.png', 85, 31, 2, 64, 45, 83, 77, 38, 61, 63, 69, 81, 70, 63, 69, 60, 84, 49, 86, 83, 75, 81, 66, 79, 86, 56, 64, 60, 81, 86, 88, 83, 16, 6, 14, 16, 14),
(235, 'Kyle Walker', 'DEF', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/188377.png', 82, 20, 2, 79, 51, 74, 74, 57, 75, 76, 71, 67, 75, 87, 93, 70, 77, 73, 86, 83, 90, 77, 68, 78, 75, 66, 69, 63, 75, 79, 81, 84, 12, 6, 16, 15, 8),
(236, 'Jan Vertonghen', 'DEF', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/172871.png', 83, 17.5, 2, 68, 60, 82, 78, 52, 70, 58, 73, 74, 74, 69, 66, 62, 81, 55, 86, 80, 79, 81, 68, 83, 83, 63, 65, 68, 82, 81, 85, 81, 6, 10, 9, 12, 7),
(237, 'Ben Davies', 'DEF', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/205923.png', 78, 9.5, 2, 75, 51, 63, 74, 37, 71, 64, 48, 68, 76, 79, 77, 72, 72, 65, 59, 70, 81, 71, 43, 61, 74, 60, 69, 54, 74, 80, 79, 81, 11, 7, 6, 7, 14),
(238, 'Moussa Dembélé', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/162240.png', 82, 19, 4, 65, 66, 69, 84, 77, 86, 65, 55, 79, 86, 78, 77, 83, 80, 74, 85, 77, 82, 90, 72, 74, 78, 71, 77, 67, 86, 68, 80, 67, 16, 14, 11, 16, 14),
(239, 'Dele Alli', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/211117.png', 82, 30, 3, 68, 81, 72, 83, 72, 81, 67, 53, 74, 83, 77, 76, 74, 83, 59, 75, 69, 88, 70, 76, 84, 67, 85, 82, 58, 82, 57, 60, 57, 7, 6, 9, 11, 8),
(240, 'Christian Eriksen', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/190460.png', 86, 52, 4, 85, 76, 52, 89, 69, 84, 85, 87, 86, 86, 79, 74, 78, 82, 82, 80, 57, 88, 54, 81, 44, 55, 81, 89, 67, 82, 38, 56, 22, 9, 14, 7, 7, 6),
(241, 'Victor Wanyama', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/188942.png', 80, 15.5, 2, 63, 63, 73, 75, 62, 74, 62, 57, 68, 74, 64, 71, 72, 81, 66, 79, 81, 85, 92, 65, 90, 81, 65, 67, 65, 76, 77, 84, 79, 6, 14, 10, 13, 16),
(242, 'Moussa Sissoko', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/183394.png', 79, 10.5, 3, 76, 72, 70, 79, 67, 78, 75, 74, 74, 78, 79, 82, 74, 79, 63, 85, 80, 88, 86, 71, 77, 76, 76, 68, 68, 76, 69, 72, 71, 14, 8, 11, 10, 8),
(243, 'Heung Min Son', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/200104.png', 80, 18.5, 4, 75, 81, 65, 77, 73, 83, 79, 70, 62, 78, 86, 86, 79, 80, 77, 83, 65, 79, 60, 86, 60, 29, 80, 75, 71, 72, 17, 19, 23, 11, 13, 13, 6, 10),
(244, 'Josh Onomah', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/222079.png', 71, 3.4, 3, 53, 56, 45, 74, 52, 74, 54, 49, 65, 70, 84, 79, 78, 64, 75, 62, 44, 62, 50, 56, 45, 36, 69, 68, 42, 59, 36, 36, 26, 6, 13, 12, 9, 10),
(245, 'Eric Dier', 'DEF', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/202335.png', 79, 12, 2, 67, 44, 83, 75, 52, 60, 54, 77, 76, 68, 55, 66, 56, 69, 40, 83, 71, 81, 84, 72, 80, 79, 53, 66, 70, 78, 76, 80, 81, 11, 14, 6, 13, 9),
(246, 'Vincent Janssen', 'FWD', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/226537.png', 77, 9.5, 2, 33, 81, 73, 74, 66, 68, 54, 39, 31, 75, 72, 76, 64, 75, 70, 83, 75, 81, 80, 68, 77, 13, 79, 50, 81, 75, 19, 19, 22, 13, 7, 11, 15, 16),
(247, 'Georges-Kévin Nkoudou', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/219732.png', 77, 9.5, 3, 74, 71, 49, 74, 74, 79, 74, 58, 62, 76, 92, 92, 85, 77, 88, 72, 55, 72, 64, 74, 48, 21, 76, 69, 67, 75, 35, 37, 42, 10, 13, 8, 6, 13),
(248, 'Harry Kane', 'FWD', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/202126.png', 85, 46, 3, 70, 88, 83, 75, 70, 77, 71, 66, 67, 82, 69, 77, 74, 85, 62, 86, 70, 84, 84, 80, 74, 35, 86, 72, 82, 83, 41, 36, 38, 8, 10, 11, 14, 11),
(249, 'Erik Lamela', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/170368.png', 81, 21, 4, 77, 75, 71, 83, 80, 86, 83, 79, 73, 83, 81, 77, 78, 77, 71, 80, 64, 82, 57, 82, 74, 43, 79, 81, 75, 73, 37, 47, 39, 10, 15, 11, 8, 13),
(250, 'Cameron Carter-Vickers', 'DEF', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/228174.png', 67, 1.3, 2, 33, 17, 61, 59, 26, 44, 27, 30, 46, 56, 62, 72, 56, 61, 60, 36, 74, 65, 80, 16, 58, 61, 27, 41, 38, 56, 67, 69, 66, 13, 6, 8, 16, 10),
(251, 'Pau López Sabata', 'GK', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/221087.png', 73, 3.7, 1, 24, 19, 15, 30, 24, 17, 23, 21, 25, 15, 45, 52, 40, 71, 57, 21, 60, 42, 52, 24, 39, 16, 20, 26, 25, 22, 12, 20, 11, 70, 75, 68, 74, 71),
(252, 'Kieran Trippier', 'DEF', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/186345.png', 77, 7, 3, 86, 45, 69, 71, 44, 72, 79, 68, 74, 71, 78, 78, 78, 71, 76, 77, 73, 85, 69, 66, 66, 74, 60, 77, 39, 67, 75, 74, 76, 11, 14, 8, 11, 10),
(253, 'Harry Winks', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/222400.png', 71, 3.6, 2, 62, 54, 45, 79, 50, 69, 65, 60, 73, 70, 80, 74, 77, 68, 73, 63, 54, 69, 62, 62, 58, 53, 62, 76, 51, 72, 51, 56, 53, 8, 11, 14, 13, 10),
(254, 'Danny Rose', 'DEF', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/169595.png', 81, 17, 3, 80, 57, 60, 75, 64, 79, 64, 57, 66, 76, 81, 84, 73, 79, 76, 72, 71, 83, 72, 69, 85, 79, 68, 73, 57, 74, 80, 83, 84, 10, 11, 8, 13, 13),
(255, 'Kyle Walker-Peters', 'DEF', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/227927.png', 60, 0.35, 2, 57, 25, 49, 50, 25, 57, 37, 31, 41, 55, 84, 80, 72, 53, 82, 21, 72, 68, 54, 21, 48, 55, 43, 38, 32, 39, 50, 59, 57, 9, 8, 7, 11, 12),
(256, 'Michel Vorm', 'GK', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/137677.png', 80, 10.5, 1, 13, 14, 17, 39, 12, 18, 12, 14, 35, 35, 57, 58, 67, 82, 53, 23, 73, 38, 65, 19, 23, 28, 10, 32, 41, 65, 15, 11, 14, 79, 76, 74, 76, 84),
(257, 'Thomas Glover', 'GK', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/232110.png', 55, 0.15, 1, 11, 7, 10, 22, 9, 10, 13, 10, 20, 15, 16, 31, 26, 46, 36, 19, 56, 17, 42, 6, 22, 7, 7, 24, 14, 31, 7, 12, 10, 57, 58, 57, 48, 57),
(258, 'Kevin Wimmer', 'DEF', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/209997.png', 78, 9.5, 2, 52, 21, 75, 74, 27, 63, 24, 28, 70, 67, 64, 70, 59, 78, 61, 40, 73, 63, 80, 25, 76, 79, 30, 59, 35, 75, 78, 81, 78, 13, 10, 15, 12, 11),
(259, 'Marcus Edwards', 'FWD', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/235619.png', 60, 0.4, 4, 48, 47, 33, 62, 42, 70, 60, 61, 47, 63, 72, 70, 83, 47, 90, 56, 55, 50, 28, 51, 48, 26, 57, 60, 52, 54, 26, 31, 23, 7, 12, 15, 15, 6),
(260, 'Joe Pritchard', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/231145.png', 55, 0.15, 3, 49, 50, 48, 60, 52, 54, 60, 50, 55, 58, 68, 68, 58, 56, 69, 61, 54, 42, 47, 50, 32, 41, 53, 56, 56, 49, 40, 43, 40, 8, 6, 9, 10, 11),
(261, 'Filip Lesniak', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/225999.png', 57, 0.23, 2, 56, 45, 47, 63, 45, 51, 47, 42, 60, 57, 62, 55, 59, 55, 60, 58, 47, 58, 54, 50, 51, 49, 52, 53, 43, 43, 40, 46, 39, 8, 11, 8, 8, 12),
(262, 'Alfie Whiteman', 'GK', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/236239.png', 52, 0.1, 1, 14, 9, 14, 24, 8, 12, 12, 10, 16, 13, 33, 28, 27, 40, 41, 17, 63, 24, 45, 9, 25, 9, 4, 39, 11, 22, 8, 13, 14, 56, 51, 46, 51, 54),
(263, 'Anthony Georgiou', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/233426.png', 57, 0.18, 3, 56, 36, 34, 54, 44, 61, 56, 50, 51, 56, 74, 70, 66, 48, 68, 45, 50, 55, 46, 42, 44, 26, 51, 58, 45, 45, 36, 45, 43, 10, 12, 8, 14, 10),
(264, 'Cy Goddard', 'MID', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/232251.png', 55, 0.18, 3, 55, 53, 45, 56, 51, 59, 48, 45, 53, 54, 72, 62, 73, 43, 78, 58, 47, 61, 32, 46, 38, 27, 48, 51, 60, 46, 29, 33, 28, 14, 7, 13, 13, 10),
(265, 'Antonio Barragán Fernández', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/169426.png', 73, 2.1, 2, 70, 44, 62, 65, 59, 62, 64, 51, 62, 71, 72, 73, 67, 67, 66, 61, 68, 80, 74, 53, 77, 74, 56, 52, 55, 58, 78, 75, 71, 6, 8, 11, 8, 10),
(266, 'Calum Chambers', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/205989.png', 75, 6, 2, 70, 47, 68, 73, 49, 68, 59, 49, 65, 73, 61, 70, 66, 66, 67, 52, 71, 75, 74, 56, 83, 72, 54, 54, 54, 68, 75, 79, 77, 11, 14, 12, 7, 12),
(267, 'Christian Maghoma', 'DEF', 'Tottenham Hotspur', 'https://cdn.sofifa.org/17/players/231144.png', 57, 0.17, 2, 32, 27, 63, 41, 30, 28, 28, 29, 36, 38, 60, 58, 48, 53, 61, 50, 65, 64, 51, 29, 50, 56, 29, 37, 31, 45, 59, 59, 58, 10, 10, 5, 11, 10),
(268, 'Victor Valdés Arribas', 'GK', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/106573.png', 82, 13, 1, 10, 12, 11, 27, 10, 12, 11, 12, 36, 30, 39, 45, 58, 75, 53, 29, 80, 34, 71, 10, 36, 21, 12, 38, 26, 70, 10, 12, 10, 81, 78, 75, 84, 83),
(269, 'Fábio Pereira da Silva', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/189680.png', 75, 4.2, 3, 71, 45, 56, 71, 59, 72, 57, 60, 70, 72, 85, 79, 83, 72, 84, 72, 72, 81, 59, 58, 76, 73, 66, 66, 60, 73, 71, 74, 75, 12, 10, 11, 15, 6),
(270, 'Ben Gibson', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/200408.png', 73, 3.9, 2, 28, 24, 73, 63, 20, 33, 31, 22, 55, 59, 64, 65, 56, 63, 68, 33, 75, 63, 78, 28, 60, 72, 24, 29, 21, 50, 76, 77, 74, 12, 8, 16, 16, 11),
(271, 'Adam Forshaw', 'MID', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/193910.png', 72, 2.8, 3, 68, 59, 47, 78, 59, 77, 67, 67, 74, 75, 69, 67, 78, 64, 74, 67, 33, 73, 57, 66, 59, 57, 71, 71, 66, 74, 52, 55, 54, 10, 7, 12, 13, 16),
(272, 'Marten de Roon', 'MID', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/208461.png', 75, 5, 2, 63, 62, 71, 75, 62, 65, 57, 43, 73, 72, 71, 69, 62, 79, 70, 74, 79, 89, 76, 68, 77, 81, 69, 72, 60, 72, 71, 78, 75, 14, 15, 7, 12, 12),
(273, 'Rudy Gestede', 'FWD', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/187942.png', 74, 3.5, 2, 37, 73, 84, 61, 67, 65, 50, 60, 50, 71, 68, 76, 57, 64, 52, 76, 81, 74, 90, 68, 66, 36, 74, 42, 66, 46, 16, 39, 23, 6, 13, 14, 8, 7),
(274, 'Álvaro Negredo Sánchez', 'FWD', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/146439.png', 80, 13.5, 3, 50, 80, 83, 75, 79, 72, 68, 70, 66, 77, 63, 64, 67, 76, 60, 84, 81, 65, 86, 77, 78, 32, 80, 66, 80, 69, 36, 34, 32, 11, 6, 11, 7, 13),
(275, 'Adam Clayton', 'MID', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/186385.png', 74, 3.1, 2, 65, 60, 45, 75, 40, 69, 67, 66, 72, 72, 68, 70, 70, 71, 72, 70, 59, 80, 64, 71, 82, 75, 55, 73, 66, 76, 63, 75, 72, 14, 9, 10, 12, 10),
(276, 'Patrick Bamford', 'FWD', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/206534.png', 71, 2.5, 2, 58, 74, 68, 65, 56, 70, 67, 38, 58, 74, 77, 74, 70, 66, 53, 67, 60, 67, 63, 62, 56, 54, 72, 56, 69, 67, 26, 23, 18, 9, 7, 11, 6, 16),
(277, 'Adama Traoré Diarra', 'FWD', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/213956.png', 73, 5, 4, 73, 64, 40, 70, 47, 82, 54, 42, 52, 77, 92, 93, 80, 64, 81, 71, 73, 64, 80, 49, 48, 29, 68, 43, 47, 71, 20, 23, 16, 13, 9, 11, 12, 7),
(278, 'Stewart Downing', 'MID', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/54013.png', 73, 2.4, 3, 75, 66, 62, 72, 70, 74, 80, 72, 73, 75, 70, 69, 72, 70, 73, 73, 42, 73, 61, 72, 36, 44, 70, 72, 68, 68, 41, 26, 36, 10, 12, 16, 16, 9),
(279, 'Christian Stuani', 'MID', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/186537.png', 73, 2.7, 3, 68, 74, 77, 69, 73, 71, 66, 57, 59, 72, 71, 70, 67, 79, 63, 79, 83, 84, 75, 69, 77, 36, 78, 69, 80, 77, 39, 49, 42, 16, 14, 9, 16, 8),
(280, 'Grant Leadbitter', 'MID', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/163625.png', 70, 0.95, 2, 72, 62, 58, 73, 55, 59, 59, 68, 70, 72, 63, 61, 64, 66, 69, 72, 71, 72, 71, 70, 73, 65, 64, 72, 75, 71, 68, 69, 65, 16, 8, 6, 6, 8),
(281, 'Dimitrios Konstantopoulos', 'GK', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/152690.png', 68, 0.27, 1, 10, 10, 13, 34, 19, 10, 10, 11, 12, 23, 31, 41, 42, 64, 36, 22, 55, 27, 52, 12, 12, 15, 10, 32, 18, 21, 16, 14, 18, 67, 65, 69, 69, 66),
(282, 'Brad Guzan', 'GK', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/164505.png', 71, 1.3, 1, 16, 14, 12, 26, 15, 14, 15, 11, 34, 28, 50, 47, 47, 72, 47, 24, 71, 30, 75, 15, 43, 19, 12, 45, 35, 41, 15, 15, 14, 71, 70, 58, 69, 72),
(283, 'Gastón Ramírez', 'MID', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/201508.png', 78, 10.5, 4, 74, 75, 57, 80, 71, 80, 79, 77, 73, 81, 75, 72, 83, 71, 68, 77, 70, 67, 56, 76, 69, 32, 75, 77, 73, 77, 31, 45, 39, 14, 15, 7, 7, 8),
(284, 'Adlène Guédioura', 'MID', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/183385.png', 70, 1.2, 3, 62, 62, 63, 73, 64, 68, 36, 56, 71, 71, 69, 72, 65, 65, 67, 83, 74, 76, 81, 72, 81, 64, 59, 68, 57, 70, 60, 66, 65, 13, 14, 14, 12, 6),
(285, 'Bernardo Espinosa', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/186521.png', 76, 5, 2, 51, 39, 78, 73, 44, 40, 51, 42, 61, 63, 56, 60, 53, 62, 45, 56, 75, 63, 84, 42, 80, 74, 33, 49, 52, 70, 77, 77, 73, 11, 15, 12, 9, 12),
(286, 'Viktor Fischer', 'FWD', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/203965.png', 74, 4.8, 3, 64, 71, 55, 80, 73, 76, 68, 65, 68, 78, 76, 77, 77, 74, 68, 74, 56, 68, 64, 69, 60, 39, 74, 73, 63, 71, 30, 36, 20, 13, 14, 6, 14, 15),
(287, 'Daniel Sanchez Ayala', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/194334.png', 73, 3.1, 2, 33, 36, 76, 58, 29, 58, 41, 32, 60, 65, 66, 65, 62, 67, 50, 45, 68, 68, 75, 32, 72, 73, 40, 60, 37, 68, 74, 74, 70, 15, 8, 15, 6, 10),
(288, 'Dael Fry', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/229682.png', 66, 1.1, 2, 24, 25, 69, 42, 26, 30, 28, 22, 33, 58, 66, 69, 38, 64, 68, 40, 75, 64, 66, 25, 61, 66, 27, 56, 36, 64, 66, 68, 67, 10, 8, 12, 14, 7),
(289, 'George Friend', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/188168.png', 73, 2.2, 2, 66, 52, 68, 68, 34, 74, 67, 57, 59, 69, 75, 73, 71, 65, 50, 65, 72, 85, 82, 58, 62, 70, 64, 53, 50, 62, 73, 76, 74, 11, 13, 15, 6, 12),
(290, 'Jordan McGhee', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/214924.png', 59, 0.24, 2, 46, 19, 58, 57, 25, 42, 38, 27, 47, 48, 64, 66, 57, 54, 61, 41, 80, 62, 71, 23, 57, 59, 24, 31, 37, 39, 60, 63, 60, 10, 15, 15, 15, 16),
(291, 'James Husband', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/205596.png', 65, 0.6, 2, 62, 49, 54, 54, 36, 63, 34, 32, 49, 65, 70, 72, 60, 54, 67, 34, 60, 73, 59, 33, 54, 62, 60, 49, 43, 56, 64, 65, 65, 8, 10, 14, 14, 15),
(292, 'Bradley Fewster', 'FWD', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/216867.png', 60, 0.425, 2, 34, 67, 56, 50, 44, 49, 41, 31, 33, 57, 81, 80, 60, 51, 73, 55, 60, 57, 63, 51, 35, 22, 53, 45, 51, 54, 14, 22, 18, 14, 11, 7, 9, 14),
(293, 'Hayden Coulson', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/230807.png', 53, 0.1, 2, 47, 25, 45, 29, 28, 56, 31, 30, 29, 41, 65, 61, 59, 51, 72, 28, 61, 58, 49, 26, 51, 56, 50, 37, 34, 38, 46, 55, 59, 14, 13, 11, 9, 7),
(294, 'Lewis Maloney', 'MID', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/229684.png', 51, 0.07, 2, 39, 31, 50, 59, 42, 47, 41, 39, 55, 44, 64, 65, 68, 50, 80, 53, 55, 60, 45, 34, 54, 40, 54, 47, 39, 41, 33, 48, 50, 9, 13, 6, 6, 9),
(295, 'Alex Pattison', 'MID', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/230812.png', 53, 0.11, 2, 40, 28, 51, 61, 39, 48, 33, 40, 57, 53, 68, 66, 50, 56, 73, 51, 57, 64, 48, 42, 59, 44, 51, 44, 44, 40, 41, 47, 53, 11, 6, 9, 8, 14),
(296, 'Ben Liddle', 'MID', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/237479.png', 61, 0.375, 3, 43, 39, 56, 77, 43, 56, 47, 46, 63, 61, 69, 65, 50, 55, 78, 70, 58, 57, 52, 43, 64, 46, 55, 55, 54, 47, 49, 56, 54, 14, 10, 6, 8, 10),
(297, 'Kasper Schmeichel', 'GK', 'Leicester City', 'https://cdn.sofifa.org/17/players/163587.png', 83, 22.5, 1, 18, 12, 16, 21, 15, 12, 13, 15, 18, 24, 62, 60, 62, 80, 47, 36, 60, 35, 62, 14, 33, 20, 14, 59, 26, 41, 14, 14, 13, 83, 82, 82, 80, 86),
(298, 'Wes Morgan', 'DEF', 'Leicester City', 'https://cdn.sofifa.org/17/players/136113.png', 77, 4, 2, 17, 19, 76, 56, 23, 58, 14, 18, 47, 62, 46, 54, 31, 76, 52, 52, 76, 73, 91, 35, 79, 78, 39, 49, 17, 62, 77, 78, 76, 14, 10, 6, 7, 8),
(299, 'Nathan McGinley', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/234645.png', 57, 0.22, 2, 45, 37, 51, 31, 36, 70, 35, 36, 30, 36, 61, 56, 59, 59, 43, 32, 58, 55, 45, 29, 56, 61, 46, 39, 45, 38, 57, 68, 67, 13, 14, 12, 9, 6),
(300, 'Robert Huth', 'DEF', 'Leicester City', 'https://cdn.sofifa.org/17/players/137785.png', 78, 5.5, 2, 31, 46, 83, 61, 56, 31, 30, 59, 67, 53, 32, 49, 26, 75, 42, 75, 51, 76, 93, 54, 91, 76, 34, 32, 54, 56, 78, 77, 77, 9, 16, 10, 15, 9),
(301, 'Danny Simpson', 'DEF', 'Leicester City', 'https://cdn.sofifa.org/17/players/169600.png', 75, 3, 2, 68, 27, 70, 64, 50, 64, 44, 32, 58, 67, 76, 72, 64, 75, 81, 37, 79, 79, 72, 54, 79, 77, 58, 63, 54, 60, 75, 77, 76, 10, 15, 13, 9, 11),
(302, 'Christian Fuchs', 'DEF', 'Leicester City', 'https://cdn.sofifa.org/17/players/139313.png', 77, 4.8, 3, 84, 57, 76, 76, 70, 70, 86, 80, 74, 75, 66, 66, 66, 75, 60, 83, 76, 81, 75, 79, 78, 76, 74, 73, 68, 70, 74, 77, 77, 14, 12, 15, 16, 13),
(303, 'Riyad Mahrez', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/204485.png', 84, 33, 5, 80, 77, 45, 80, 71, 88, 79, 75, 76, 90, 86, 79, 92, 75, 82, 76, 59, 77, 57, 73, 40, 38, 80, 79, 72, 82, 25, 27, 21, 15, 9, 13, 11, 6),
(304, 'Shinji Okazaki', 'FWD', 'Leicester City', 'https://cdn.sofifa.org/17/players/194365.png', 78, 8, 3, 66, 75, 74, 73, 75, 76, 53, 50, 63, 77, 79, 74, 85, 84, 69, 77, 90, 83, 69, 68, 80, 45, 82, 68, 74, 70, 34, 48, 34, 10, 6, 14, 6, 6),
(305, 'Matthew Elsdon', 'DEF', 'Middlesbrough', 'https://cdn.sofifa.org/17/players/230808.png', 52, 0.09, 2, 24, 26, 47, 32, 27, 22, 28, 26, 24, 28, 58, 55, 45, 43, 67, 42, 67, 64, 56, 22, 42, 48, 29, 26, 33, 40, 52, 62, 57, 15, 5, 6, 11, 13),
(306, 'Onyinye Ndidi', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/226790.png', 76, 6.5, 2, 50, 44, 73, 73, 66, 63, 57, 29, 69, 72, 76, 78, 68, 73, 65, 78, 78, 88, 75, 70, 74, 78, 41, 65, 35, 71, 72, 79, 78, 13, 14, 7, 7, 13),
(307, 'Danny Drinkwater', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/186132.png', 80, 16, 3, 64, 61, 61, 81, 63, 73, 70, 69, 83, 80, 68, 68, 69, 79, 78, 76, 56, 83, 74, 73, 74, 76, 74, 77, 53, 77, 70, 79, 76, 12, 6, 8, 9, 12),
(308, 'Jamie Vardy', 'FWD', 'Leicester City', 'https://cdn.sofifa.org/17/players/208830.png', 81, 16.5, 3, 63, 84, 64, 66, 75, 75, 59, 48, 48, 76, 94, 92, 77, 84, 79, 85, 74, 90, 69, 68, 92, 49, 85, 72, 76, 78, 48, 52, 51, 15, 14, 7, 15, 11),
(309, 'Marc Albrighton', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/183130.png', 77, 7, 3, 83, 69, 42, 72, 72, 77, 82, 71, 68, 76, 80, 78, 79, 70, 77, 71, 60, 85, 61, 67, 73, 56, 72, 74, 60, 66, 41, 47, 45, 15, 9, 8, 15, 14),
(310, 'Daniel Amartey', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/212883.png', 74, 4.6, 2, 49, 46, 71, 74, 68, 69, 44, 32, 71, 70, 76, 78, 66, 76, 68, 83, 84, 90, 84, 71, 82, 72, 42, 59, 51, 71, 65, 73, 71, 13, 13, 13, 8, 15),
(311, 'Islam Slimani', 'FWD', 'Leicester City', 'https://cdn.sofifa.org/17/players/217699.png', 82, 20.5, 2, 58, 80, 92, 73, 79, 75, 73, 47, 61, 76, 70, 76, 66, 84, 57, 78, 87, 91, 85, 71, 88, 54, 86, 72, 74, 79, 34, 48, 24, 10, 9, 6, 15, 11),
(312, 'Nampalys Mendy', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/198861.png', 77, 8, 3, 67, 49, 65, 79, 43, 70, 69, 48, 71, 78, 75, 73, 80, 73, 83, 62, 79, 85, 75, 64, 79, 76, 55, 69, 55, 70, 75, 76, 75, 14, 12, 9, 12, 15),
(313, 'Ahmed Musa', 'FWD', 'Leicester City', 'https://cdn.sofifa.org/17/players/201818.png', 76, 7.5, 4, 67, 78, 64, 64, 75, 78, 60, 48, 52, 76, 95, 92, 88, 79, 85, 78, 80, 91, 45, 73, 33, 24, 77, 66, 69, 72, 20, 28, 24, 7, 12, 13, 15, 14),
(314, 'Ben Chilwell', 'DEF', 'Leicester City', 'https://cdn.sofifa.org/17/players/229984.png', 69, 1.6, 2, 68, 38, 55, 65, 39, 72, 60, 46, 59, 69, 82, 78, 70, 64, 68, 39, 74, 73, 61, 35, 69, 64, 65, 65, 50, 65, 65, 68, 67, 10, 7, 14, 7, 10),
(315, 'Demarai Gray', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/220633.png', 72, 3.7, 3, 62, 66, 31, 65, 50, 80, 60, 42, 56, 76, 91, 88, 90, 64, 82, 70, 55, 71, 54, 64, 33, 23, 65, 57, 58, 64, 21, 23, 20, 6, 11, 11, 13, 10),
(316, 'Ron-Robert Zieler', 'GK', 'Leicester City', 'https://cdn.sofifa.org/17/players/186148.png', 80, 13, 1, 15, 10, 13, 25, 12, 12, 11, 10, 22, 22, 46, 50, 43, 80, 41, 21, 69, 32, 55, 14, 32, 21, 15, 39, 24, 61, 11, 12, 13, 78, 79, 66, 81, 81),
(317, 'Leonardo Ulloa', 'FWD', 'Leicester City', 'https://cdn.sofifa.org/17/players/165788.png', 74, 3.3, 2, 51, 74, 85, 69, 72, 70, 54, 56, 63, 70, 54, 54, 56, 75, 57, 76, 73, 67, 87, 62, 72, 33, 76, 61, 72, 71, 27, 48, 45, 13, 8, 8, 16, 11),
(318, 'Yohan Benalouane', 'DEF', 'Leicester City', 'https://cdn.sofifa.org/17/players/183288.png', 75, 3.1, 2, 61, 24, 67, 64, 48, 47, 51, 52, 63, 60, 69, 68, 60, 67, 63, 68, 79, 67, 82, 39, 79, 78, 46, 40, 38, 59, 73, 76, 75, 14, 13, 9, 14, 15),
(319, 'Andy King', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/186578.png', 72, 2.1, 2, 61, 70, 73, 73, 69, 69, 64, 59, 69, 73, 68, 65, 68, 72, 60, 72, 71, 71, 72, 72, 51, 65, 72, 69, 63, 69, 64, 68, 63, 8, 6, 7, 10, 6),
(320, 'Marcin Wasilewski', 'DEF', 'Leicester City', 'https://cdn.sofifa.org/17/players/148569.png', 70, 0, 2, 64, 47, 76, 57, 37, 37, 53, 65, 53, 46, 30, 44, 33, 61, 34, 77, 55, 34, 85, 52, 89, 69, 49, 43, 69, 65, 65, 68, 68, 6, 16, 14, 7, 6),
(321, 'Bartosz Kapustka', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/216003.png', 71, 2.6, 3, 62, 62, 56, 73, 46, 70, 62, 49, 68, 70, 83, 78, 76, 68, 75, 65, 70, 76, 49, 61, 41, 45, 62, 71, 55, 61, 55, 43, 50, 6, 10, 9, 12, 14),
(322, 'Molla Wagué', 'DEF', 'Leicester City', 'https://cdn.sofifa.org/17/players/205243.png', 74, 3.5, 2, 36, 31, 73, 46, 25, 36, 30, 29, 51, 51, 55, 65, 50, 69, 52, 44, 68, 66, 91, 29, 77, 71, 29, 36, 34, 62, 75, 75, 73, 13, 9, 5, 6, 6),
(323, 'Ben Hamer', 'GK', 'Leicester City', 'https://cdn.sofifa.org/17/players/170008.png', 67, 0.7, 1, 11, 20, 11, 25, 14, 18, 13, 12, 30, 23, 45, 45, 51, 60, 56, 23, 54, 35, 64, 18, 34, 23, 16, 39, 22, 56, 12, 12, 12, 71, 64, 63, 64, 68),
(324, 'Hamza Choudhury', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/228332.png', 64, 0.575, 3, 43, 35, 61, 65, 42, 61, 45, 48, 59, 58, 71, 76, 66, 56, 74, 70, 61, 65, 73, 38, 78, 61, 37, 56, 51, 59, 64, 64, 62, 9, 14, 8, 10, 11),
(325, 'Admiral Muskwe', 'FWD', 'Leicester City', 'https://cdn.sofifa.org/17/players/234743.png', 57, 0.23, 3, 35, 56, 62, 49, 48, 53, 47, 48, 42, 60, 62, 68, 64, 49, 52, 56, 65, 60, 60, 43, 52, 26, 54, 47, 55, 48, 25, 25, 24, 8, 14, 14, 7, 12),
(326, 'Dylan Watts', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/236364.png', 55, 0.14, 3, 51, 39, 41, 56, 43, 60, 56, 57, 52, 51, 69, 65, 65, 57, 65, 47, 49, 49, 49, 38, 42, 33, 45, 55, 46, 56, 36, 39, 36, 9, 8, 13, 14, 12),
(327, 'Joshua Debayo', 'DEF', 'Leicester City', 'https://cdn.sofifa.org/17/players/220774.png', 57, 0.13, 2, 47, 24, 58, 40, 38, 51, 29, 33, 35, 49, 64, 64, 57, 56, 65, 43, 68, 58, 60, 31, 56, 59, 32, 38, 48, 51, 55, 62, 59, 12, 6, 11, 7, 9),
(328, 'Brandon Fox', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/226048.png', 53, 0.09, 2, 38, 45, 54, 52, 56, 55, 57, 38, 43, 52, 68, 67, 71, 55, 77, 52, 59, 51, 39, 45, 40, 18, 50, 55, 48, 50, 17, 23, 20, 9, 8, 13, 10, 12),
(329, 'Darnell Johnson', 'DEF', 'Leicester City', 'https://cdn.sofifa.org/17/players/235051.png', 56, 0.17, 2, 43, 29, 52, 45, 33, 47, 35, 29, 42, 49, 67, 72, 58, 49, 52, 45, 63, 59, 72, 31, 54, 50, 45, 41, 33, 49, 51, 57, 55, 9, 10, 13, 14, 13),
(330, 'Daniel Iversen', 'GK', 'Leicester City', 'https://cdn.sofifa.org/17/players/228410.png', 58, 0.23, 1, 17, 14, 16, 27, 20, 11, 16, 11, 21, 16, 40, 44, 32, 50, 48, 23, 59, 44, 67, 15, 19, 20, 19, 33, 21, 28, 20, 18, 13, 64, 55, 62, 50, 60),
(331, 'Jordan Pickford', 'GK', 'Sunderland', 'https://cdn.sofifa.org/17/players/204935.png', 76, 7.5, 1, 17, 19, 15, 28, 20, 14, 18, 16, 33, 21, 48, 41, 33, 68, 67, 31, 59, 44, 50, 13, 23, 24, 18, 66, 41, 27, 14, 20, 12, 74, 76, 85, 73, 78),
(332, 'Matty Miles', 'MID', 'Leicester City', 'https://cdn.sofifa.org/17/players/235321.png', 53, 0.09, 2, 53, 45, 48, 53, 35, 51, 43, 35, 46, 50, 65, 63, 58, 56, 62, 39, 57, 56, 52, 34, 57, 54, 49, 43, 44, 41, 48, 53, 48, 13, 13, 14, 8, 7),
(333, 'John O''Shea', 'DEF', 'Sunderland', 'https://cdn.sofifa.org/17/players/3484.png', 74, 0.575, 2, 53, 29, 77, 61, 32, 46, 51, 35, 57, 64, 34, 32, 49, 71, 54, 49, 61, 34, 77, 23, 75, 76, 32, 55, 47, 69, 76, 78, 73, 9, 14, 13, 10, 14),
(334, 'Bryan Oviedo', 'DEF', 'Sunderland', 'https://cdn.sofifa.org/17/players/198335.png', 72, 2, 3, 72, 61, 48, 68, 58, 75, 59, 63, 64, 73, 79, 73, 79, 72, 79, 66, 82, 79, 58, 59, 72, 69, 66, 66, 56, 69, 73, 72, 70, 11, 12, 8, 10, 16),
(335, 'Billy Jones', 'DEF', 'Sunderland', 'https://cdn.sofifa.org/17/players/138722.png', 71, 1.2, 2, 54, 53, 61, 68, 45, 70, 58, 59, 66, 67, 66, 67, 69, 70, 68, 59, 72, 81, 71, 60, 68, 75, 44, 51, 57, 61, 69, 77, 76, 6, 11, 14, 12, 15),
(336, 'Didier Ndong', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/218359.png', 74, 4.7, 2, 47, 54, 67, 77, 53, 70, 50, 42, 76, 75, 71, 69, 69, 70, 75, 74, 60, 76, 75, 62, 90, 75, 68, 69, 51, 68, 74, 77, 72, 10, 13, 16, 7, 15),
(337, 'Fabio Borini', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/186200.png', 76, 6, 3, 70, 76, 75, 75, 75, 77, 65, 61, 62, 75, 79, 77, 78, 77, 64, 76, 71, 75, 66, 66, 70, 30, 78, 69, 81, 74, 13, 26, 24, 11, 6, 8, 12, 6),
(338, 'Jack Rodwell', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/183465.png', 75, 5, 3, 68, 69, 78, 75, 66, 72, 66, 47, 72, 75, 64, 64, 73, 74, 62, 77, 78, 79, 75, 75, 73, 75, 70, 74, 57, 71, 72, 73, 66, 9, 10, 15, 11, 12),
(339, 'Lamine Koné', 'DEF', 'Sunderland', 'https://cdn.sofifa.org/17/players/184082.png', 76, 4.9, 2, 60, 34, 78, 60, 29, 46, 39, 28, 50, 62, 55, 66, 51, 71, 48, 55, 63, 71, 90, 29, 81, 75, 54, 45, 31, 64, 71, 78, 69, 6, 12, 15, 10, 13),
(340, 'Adnan Januzaj', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/208330.png', 76, 7.5, 4, 72, 66, 23, 75, 67, 84, 70, 65, 73, 81, 84, 77, 84, 69, 65, 58, 61, 59, 54, 67, 31, 21, 68, 76, 60, 64, 20, 22, 22, 15, 10, 11, 12, 7),
(341, 'Darron Gibson', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/169590.png', 77, 6.5, 2, 77, 57, 65, 82, 66, 72, 61, 71, 81, 76, 52, 64, 55, 74, 61, 82, 72, 76, 74, 80, 72, 70, 67, 76, 63, 80, 76, 76, 76, 15, 7, 12, 15, 6),
(342, 'Wahbi Khazri', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/194845.png', 79, 11.5, 3, 82, 80, 52, 81, 65, 80, 80, 83, 69, 80, 74, 77, 80, 79, 67, 81, 44, 72, 68, 84, 74, 61, 78, 79, 75, 72, 26, 49, 30, 6, 7, 11, 11, 6),
(343, 'Lee Cattermole', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/169607.png', 77, 5.5, 2, 61, 49, 66, 74, 58, 64, 57, 58, 76, 73, 67, 68, 64, 70, 71, 74, 63, 79, 78, 59, 93, 77, 47, 67, 64, 67, 72, 82, 80, 11, 9, 15, 14, 15),
(344, 'Sebastian Larsson', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/164459.png', 75, 3.4, 2, 90, 72, 66, 76, 74, 74, 86, 84, 74, 77, 51, 55, 65, 76, 75, 81, 70, 79, 67, 79, 82, 59, 70, 78, 78, 75, 64, 61, 60, 7, 11, 14, 14, 8),
(345, 'Jermain Defoe', 'FWD', 'Sunderland', 'https://cdn.sofifa.org/17/players/50542.png', 81, 11.5, 3, 54, 87, 68, 68, 83, 78, 63, 68, 43, 77, 78, 77, 83, 80, 88, 88, 74, 73, 62, 81, 63, 19, 87, 67, 71, 84, 24, 20, 11, 7, 14, 8, 10, 13),
(346, 'Victor Anichebe', 'FWD', 'Sunderland', 'https://cdn.sofifa.org/17/players/169527.png', 74, 3.4, 2, 69, 72, 72, 69, 71, 75, 31, 34, 54, 69, 66, 76, 56, 75, 44, 77, 56, 67, 87, 69, 73, 43, 73, 68, 65, 70, 44, 42, 41, 10, 6, 15, 16, 12),
(347, 'Jason Denayer', 'DEF', 'Sunderland', 'https://cdn.sofifa.org/17/players/220182.png', 74, 4.8, 2, 60, 42, 72, 71, 35, 63, 35, 29, 53, 69, 79, 78, 62, 61, 59, 51, 76, 69, 79, 36, 63, 73, 36, 46, 37, 70, 71, 79, 76, 7, 10, 15, 15, 15),
(348, 'Papy Djilobodji', 'DEF', 'Sunderland', 'https://cdn.sofifa.org/17/players/197937.png', 77, 6.5, 2, 22, 32, 74, 68, 23, 42, 27, 60, 73, 61, 70, 72, 48, 63, 47, 77, 74, 68, 86, 66, 89, 72, 38, 50, 27, 51, 73, 78, 83, 12, 13, 9, 6, 10),
(349, 'Steven Pienaar', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/50327.png', 75, 2, 4, 75, 67, 56, 79, 73, 76, 75, 76, 73, 78, 72, 64, 81, 74, 84, 75, 60, 63, 57, 71, 70, 62, 72, 79, 63, 82, 60, 34, 32, 9, 16, 12, 11, 11),
(350, 'Javier Manquillo Gaitán', 'DEF', 'Sunderland', 'https://cdn.sofifa.org/17/players/210972.png', 76, 6, 2, 79, 32, 63, 73, 37, 71, 75, 51, 66, 73, 82, 78, 74, 69, 64, 69, 68, 89, 66, 44, 67, 69, 69, 39, 46, 64, 73, 78, 75, 14, 7, 14, 12, 13),
(351, 'Joleon Lescott', 'DEF', 'Sunderland', 'https://cdn.sofifa.org/17/players/138726.png', 70, 0.6, 2, 57, 52, 76, 62, 45, 52, 42, 52, 60, 59, 37, 40, 40, 62, 46, 64, 76, 58, 74, 40, 82, 60, 39, 48, 48, 63, 70, 72, 71, 6, 6, 12, 16, 7),
(352, 'Jan Kirchhoff', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/190752.png', 77, 7.5, 2, 56, 33, 84, 78, 36, 54, 62, 23, 76, 66, 65, 74, 46, 75, 34, 48, 56, 69, 83, 41, 73, 81, 37, 68, 43, 77, 78, 79, 74, 11, 13, 12, 7, 9),
(353, 'Duncan Watmore', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/216268.png', 69, 1.6, 3, 58, 69, 49, 66, 58, 74, 67, 42, 56, 67, 84, 79, 77, 64, 82, 66, 57, 67, 59, 57, 46, 21, 67, 60, 65, 58, 28, 30, 35, 6, 15, 8, 14, 15),
(354, 'Vito Mannone', 'GK', 'Sunderland', 'https://cdn.sofifa.org/17/players/179547.png', 75, 4.1, 1, 11, 16, 14, 39, 15, 15, 12, 15, 33, 24, 59, 60, 42, 76, 44, 32, 75, 31, 67, 12, 29, 16, 12, 57, 43, 68, 19, 11, 20, 75, 72, 71, 71, 76),
(355, 'Rees Greenwood', 'FWD', 'Sunderland', 'https://cdn.sofifa.org/17/players/225462.png', 60, 0.425, 2, 35, 57, 55, 60, 52, 63, 56, 37, 54, 59, 79, 76, 66, 61, 78, 57, 58, 57, 46, 50, 34, 13, 59, 58, 61, 52, 18, 19, 21, 9, 10, 8, 10, 11),
(356, 'Paddy McNair', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/213697.png', 72, 2.9, 2, 43, 48, 72, 74, 45, 65, 49, 36, 70, 65, 65, 68, 60, 67, 63, 58, 74, 71, 75, 43, 74, 73, 51, 60, 43, 66, 73, 74, 72, 14, 8, 11, 8, 14),
(357, 'Donald Love', 'DEF', 'Sunderland', 'https://cdn.sofifa.org/17/players/213686.png', 60, 0.28, 2, 55, 25, 44, 55, 30, 56, 27, 32, 53, 53, 70, 73, 60, 57, 67, 38, 63, 61, 64, 29, 62, 62, 49, 40, 39, 49, 55, 56, 60, 8, 13, 7, 14, 9),
(358, 'George Honeyman', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/216270.png', 59, 0.23, 2, 56, 54, 47, 60, 39, 60, 56, 52, 57, 62, 69, 69, 59, 51, 65, 58, 54, 49, 56, 42, 46, 29, 50, 64, 60, 61, 46, 53, 51, 11, 15, 16, 10, 8),
(359, 'Elliot Embleton', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/235913.png', 56, 0.19, 3, 44, 42, 49, 60, 41, 54, 43, 56, 56, 56, 66, 63, 58, 54, 58, 62, 60, 56, 39, 54, 47, 49, 55, 52, 51, 46, 49, 50, 52, 6, 13, 15, 6, 13),
(360, 'Lynden Gooch', 'MID', 'Sunderland', 'https://cdn.sofifa.org/17/players/222528.png', 66, 1.2, 3, 58, 56, 51, 67, 53, 69, 55, 58, 65, 70, 82, 79, 57, 59, 78, 64, 54, 59, 65, 55, 76, 31, 54, 65, 59, 64, 47, 54, 50, 13, 13, 11, 14, 8),
(361, 'Adrián San Miguel Castillo', 'GK', 'West Ham United', 'https://cdn.sofifa.org/17/players/194911.png', 79, 8.5, 1, 12, 16, 15, 21, 12, 15, 12, 17, 32, 23, 46, 44, 53, 72, 48, 40, 69, 38, 59, 20, 38, 25, 12, 32, 44, 36, 14, 19, 14, 81, 76, 69, 75, 85),
(362, 'Josh Maja', 'FWD', 'Sunderland', 'https://cdn.sofifa.org/17/players/235161.png', 60, 0.35, 3, 43, 62, 50, 54, 54, 61, 61, 37, 49, 62, 71, 77, 55, 58, 64, 66, 52, 50, 56, 55, 38, 14, 47, 52, 63, 51, 17, 22, 23, 14, 8, 15, 5, 7),
(363, 'Joel Asoro', 'FWD', 'Sunderland', 'https://cdn.sofifa.org/17/players/235855.png', 63, 0.65, 3, 35, 64, 56, 60, 55, 73, 51, 39, 47, 65, 89, 87, 74, 55, 78, 66, 58, 58, 57, 54, 36, 18, 42, 58, 60, 55, 22, 17, 20, 8, 11, 12, 11, 11),
(364, 'Winston Reid', 'DEF', 'West Ham United', 'https://cdn.sofifa.org/17/players/176285.png', 80, 13, 2, 28, 46, 83, 62, 30, 43, 33, 38, 62, 57, 71, 74, 57, 79, 43, 72, 74, 76, 81, 53, 84, 80, 42, 44, 55, 72, 81, 81, 82, 13, 15, 9, 10, 12),
(365, 'Sam Byram', 'DEF', 'West Ham United', 'https://cdn.sofifa.org/17/players/208892.png', 73, 3.3, 2, 70, 62, 66, 70, 43, 72, 55, 33, 65, 73, 77, 78, 77, 73, 70, 66, 79, 79, 70, 60, 68, 67, 65, 68, 50, 72, 69, 71, 70, 10, 9, 15, 16, 13),
(366, 'Michael Simões Domingues', 'GK', 'Sunderland', 'https://cdn.sofifa.org/17/players/198511.png', 71, 1.7, 1, 9, 13, 10, 29, 14, 19, 18, 12, 25, 20, 37, 32, 32, 62, 35, 17, 54, 39, 75, 19, 31, 22, 12, 32, 14, 31, 13, 10, 9, 73, 67, 68, 70, 73),
(367, 'Josh Robson', 'DEF', 'Sunderland', 'https://cdn.sofifa.org/17/players/230861.png', 56, 0.18, 2, 46, 28, 53, 37, 29, 63, 40, 42, 32, 41, 62, 55, 58, 60, 49, 31, 56, 59, 49, 29, 64, 57, 42, 41, 47, 42, 54, 64, 65, 6, 11, 5, 13, 5),
(368, 'José Miguel da Rocha Fonte', 'DEF', 'West Ham United', 'https://cdn.sofifa.org/17/players/171791.png', 82, 11.5, 2, 36, 40, 77, 63, 34, 59, 33, 32, 54, 64, 52, 53, 62, 85, 56, 29, 73, 69, 82, 29, 84, 83, 40, 55, 43, 62, 82, 84, 81, 7, 11, 16, 10, 6),
(369, 'James Collins', 'DEF', 'West Ham United', 'https://cdn.sofifa.org/17/players/19292.png', 76, 3.1, 2, 38, 38, 81, 59, 36, 38, 29, 64, 65, 59, 47, 34, 33, 70, 34, 70, 62, 67, 85, 51, 85, 75, 34, 54, 51, 63, 74, 78, 77, 15, 12, 10, 15, 11),
(370, 'Mark Noble', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/152879.png', 77, 6.5, 3, 71, 61, 62, 79, 69, 74, 71, 67, 78, 76, 49, 50, 66, 73, 74, 74, 59, 89, 71, 68, 81, 76, 64, 79, 88, 79, 65, 75, 75, 7, 6, 14, 16, 11),
(371, 'Aaron Cresswell', 'DEF', 'West Ham United', 'https://cdn.sofifa.org/17/players/189615.png', 76, 4.9, 2, 80, 53, 58, 72, 45, 76, 75, 69, 68, 75, 78, 78, 78, 68, 90, 71, 85, 83, 57, 62, 68, 71, 60, 68, 59, 72, 76, 75, 78, 14, 7, 9, 9, 12),
(372, 'Cheikhou Kouyaté', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/186801.png', 77, 7, 2, 54, 65, 80, 68, 50, 68, 39, 47, 64, 73, 76, 79, 65, 79, 60, 74, 78, 92, 86, 63, 84, 81, 72, 63, 52, 72, 70, 81, 75, 15, 8, 9, 12, 9),
(373, 'Ashley Fletcher', 'FWD', 'West Ham United', 'https://cdn.sofifa.org/17/players/213699.png', 67, 1.2, 3, 23, 66, 68, 46, 49, 66, 44, 23, 35, 67, 75, 76, 74, 67, 56, 67, 73, 64, 77, 63, 55, 22, 64, 48, 52, 63, 16, 22, 19, 14, 8, 12, 8, 8),
(374, 'Diafra Sakho', 'FWD', 'West Ham United', 'https://cdn.sofifa.org/17/players/193554.png', 75, 4.8, 3, 58, 77, 76, 62, 70, 72, 53, 62, 52, 74, 77, 77, 73, 74, 62, 72, 80, 65, 79, 64, 67, 37, 78, 56, 73, 69, 24, 23, 22, 12, 10, 9, 13, 16),
(375, 'Manuel Lanzini', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/188988.png', 80, 20, 4, 74, 69, 56, 78, 61, 86, 75, 76, 77, 85, 85, 80, 87, 73, 88, 75, 76, 79, 45, 73, 35, 23, 72, 77, 68, 75, 20, 26, 25, 14, 9, 6, 7, 15),
(376, 'Andy Carroll', 'FWD', 'West Ham United', 'https://cdn.sofifa.org/17/players/182836.png', 78, 9, 2, 64, 77, 91, 65, 74, 67, 53, 42, 56, 74, 69, 65, 62, 77, 50, 85, 84, 75, 92, 78, 85, 45, 76, 65, 73, 78, 42, 46, 43, 14, 14, 12, 10, 6),
(377, 'André Ayew', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/176571.png', 80, 14.5, 3, 80, 75, 78, 78, 65, 80, 74, 57, 71, 82, 78, 78, 86, 75, 81, 75, 92, 88, 73, 75, 78, 57, 76, 75, 71, 75, 54, 62, 60, 10, 6, 12, 7, 15),
(378, 'Robert Snodgrass', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/155946.png', 77, 6.5, 3, 80, 74, 44, 79, 65, 79, 82, 82, 71, 79, 69, 63, 75, 65, 66, 81, 60, 79, 70, 77, 82, 46, 76, 79, 73, 77, 28, 56, 41, 8, 15, 14, 12, 10),
(379, 'Darren Randolph', 'GK', 'West Ham United', 'https://cdn.sofifa.org/17/players/169697.png', 74, 2.9, 1, 11, 14, 16, 33, 16, 14, 15, 14, 34, 33, 41, 44, 50, 66, 43, 36, 61, 31, 57, 14, 29, 18, 11, 38, 30, 34, 13, 14, 14, 78, 70, 73, 71, 79),
(380, 'Arthur Masuaku', 'DEF', 'West Ham United', 'https://cdn.sofifa.org/17/players/212491.png', 75, 4.8, 3, 75, 60, 60, 71, 61, 78, 69, 48, 68, 76, 87, 84, 77, 75, 76, 77, 69, 75, 76, 71, 65, 66, 70, 71, 49, 75, 73, 74, 73, 8, 7, 10, 7, 7),
(381, 'Sofiane Feghouli', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/184881.png', 79, 10.5, 4, 78, 68, 60, 73, 68, 84, 57, 68, 67, 82, 86, 89, 86, 78, 76, 79, 72, 72, 55, 71, 53, 31, 77, 75, 62, 63, 25, 32, 31, 13, 7, 10, 10, 8),
(382, 'Edimilson Fernandes', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/215556.png', 68, 1.5, 3, 57, 66, 43, 72, 54, 71, 57, 51, 68, 71, 80, 82, 71, 58, 58, 70, 60, 76, 67, 66, 60, 42, 59, 69, 55, 63, 53, 57, 55, 12, 7, 13, 15, 13),
(383, 'Michail Antonio', 'FWD', 'West Ham United', 'https://cdn.sofifa.org/17/players/190717.png', 80, 17, 4, 73, 74, 88, 71, 69, 82, 66, 60, 67, 78, 88, 89, 86, 75, 79, 75, 84, 81, 86, 71, 75, 40, 77, 65, 73, 67, 44, 56, 53, 12, 13, 8, 14, 10),
(384, 'Jonathan Calleri', 'FWD', 'West Ham United', 'https://cdn.sofifa.org/17/players/219455.png', 76, 7.5, 3, 56, 73, 77, 66, 71, 74, 57, 35, 58, 75, 75, 76, 73, 77, 79, 77, 81, 72, 71, 69, 65, 37, 78, 67, 62, 73, 29, 39, 32, 11, 12, 8, 8, 6),
(385, 'Pedro Mba Obiang Avomo', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/200054.png', 77, 8, 2, 68, 50, 70, 80, 60, 74, 56, 62, 78, 78, 69, 70, 72, 69, 65, 74, 74, 78, 78, 63, 71, 76, 62, 77, 58, 81, 70, 79, 75, 9, 7, 7, 6, 7),
(386, 'Angelo Ogbonna', 'DEF', 'West Ham United', 'https://cdn.sofifa.org/17/players/183855.png', 80, 11, 2, 51, 25, 78, 68, 30, 61, 51, 36, 67, 59, 70, 73, 60, 64, 54, 71, 74, 70, 84, 46, 70, 84, 30, 50, 39, 79, 81, 84, 83, 5, 3, 5, 4, 4),
(387, 'Gökhan Töre', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/191032.png', 78, 10.5, 4, 78, 66, 59, 75, 70, 84, 77, 70, 77, 83, 85, 86, 83, 68, 80, 79, 58, 67, 77, 76, 83, 43, 67, 74, 70, 72, 24, 38, 32, 11, 10, 7, 12, 11),
(388, 'Håvard Nordtveit', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/182888.png', 77, 7, 2, 66, 40, 77, 73, 38, 64, 64, 66, 77, 71, 63, 64, 61, 77, 59, 72, 68, 79, 81, 66, 78, 75, 57, 69, 56, 69, 78, 79, 77, 14, 8, 9, 13, 10),
(389, 'Álvaro Arbeloa Coca', 'DEF', 'West Ham United', 'https://cdn.sofifa.org/17/players/146741.png', 74, 1.4, 2, 73, 53, 65, 71, 48, 54, 56, 47, 68, 65, 63, 68, 59, 77, 60, 72, 68, 67, 77, 47, 78, 78, 59, 57, 49, 77, 76, 76, 78, 10, 13, 9, 6, 13),
(390, 'Declan Rice', 'DEF', 'West Ham United', 'https://cdn.sofifa.org/17/players/234378.png', 57, 0.2, 2, 30, 24, 57, 43, 23, 37, 35, 20, 33, 40, 65, 60, 47, 51, 61, 46, 65, 64, 66, 26, 53, 50, 32, 34, 30, 50, 58, 60, 59, 8, 11, 14, 5, 9),
(391, 'Dan Kemp', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/238059.png', 58, 0.25, 3, 54, 42, 30, 52, 40, 63, 50, 37, 44, 60, 77, 74, 79, 56, 78, 44, 49, 53, 36, 46, 30, 27, 50, 49, 45, 54, 26, 27, 24, 11, 13, 6, 13, 10),
(392, 'Domingos Quina', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/235450.png', 62, 0.55, 4, 54, 45, 30, 59, 46, 69, 58, 43, 57, 67, 70, 72, 79, 55, 77, 55, 51, 57, 42, 56, 53, 26, 51, 59, 45, 59, 19, 27, 24, 12, 11, 8, 12, 6),
(393, 'Marcus Browne', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/231442.png', 60, 0.375, 3, 46, 51, 32, 58, 47, 65, 60, 66, 54, 63, 77, 75, 67, 45, 71, 56, 53, 58, 59, 53, 63, 22, 54, 60, 48, 54, 27, 26, 21, 12, 15, 10, 11, 10),
(394, 'Djair Parfitt-Williams', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/229928.png', 60, 0.27, 3, 52, 54, 48, 46, 53, 66, 52, 47, 42, 63, 83, 82, 81, 55, 87, 54, 55, 58, 57, 51, 39, 20, 52, 54, 45, 55, 19, 21, 16, 10, 8, 11, 5, 13),
(395, 'Doneil Henry', 'DEF', 'West Ham United', 'https://cdn.sofifa.org/17/players/201208.png', 68, 1, 2, 43, 36, 69, 58, 58, 44, 37, 40, 50, 57, 72, 69, 57, 55, 47, 71, 80, 66, 79, 47, 81, 64, 32, 47, 30, 52, 63, 64, 63, 8, 10, 10, 11, 15),
(396, 'Tunji Akinola', 'DEF', 'West Ham United', 'https://cdn.sofifa.org/17/players/231438.png', 56, 0.13, 2, 23, 21, 60, 46, 17, 29, 19, 31, 39, 38, 62, 67, 48, 43, 54, 27, 63, 68, 68, 20, 46, 56, 17, 20, 20, 49, 58, 55, 48, 6, 5, 10, 11, 14),
(397, 'Moses Makasi', 'MID', 'West Ham United', 'https://cdn.sofifa.org/17/players/225623.png', 55, 0.13, 2, 50, 41, 61, 59, 43, 57, 44, 43, 56, 59, 68, 70, 55, 40, 66, 63, 61, 65, 72, 44, 68, 55, 32, 53, 49, 51, 54, 55, 52, 8, 14, 14, 13, 10),
(398, 'Heurelho Silva Gomes', 'GK', 'Watford', 'https://cdn.sofifa.org/17/players/135451.png', 78, 4.9, 1, 15, 15, 14, 23, 13, 15, 12, 13, 19, 25, 50, 52, 56, 74, 53, 30, 76, 27, 64, 14, 40, 20, 12, 59, 41, 63, 14, 14, 15, 83, 73, 60, 75, 84),
(399, 'Sebastian Prödl', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/177578.png', 77, 5, 2, 44, 34, 85, 56, 22, 30, 32, 38, 49, 54, 53, 52, 34, 73, 33, 47, 50, 65, 88, 32, 83, 74, 37, 46, 35, 57, 77, 80, 73, 11, 8, 12, 15, 8),
(400, 'Jose Holebas', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/182744.png', 77, 3.9, 3, 77, 61, 74, 70, 50, 73, 69, 71, 69, 75, 78, 86, 76, 71, 75, 85, 74, 84, 79, 78, 82, 68, 71, 54, 57, 77, 77, 77, 80, 15, 13, 13, 14, 16),
(401, 'Craig Cathcart', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/180706.png', 73, 2.4, 2, 39, 29, 74, 71, 30, 47, 39, 39, 61, 59, 55, 67, 64, 69, 58, 56, 70, 71, 73, 41, 69, 68, 27, 43, 28, 75, 76, 77, 73, 8, 6, 12, 9, 13),
(402, 'Miguel Angel Britos', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/189067.png', 76, 3.8, 2, 43, 37, 74, 60, 22, 47, 47, 52, 64, 58, 54, 55, 49, 66, 54, 30, 83, 61, 79, 31, 76, 75, 24, 31, 51, 66, 77, 80, 77, 12, 13, 11, 10, 11),
(403, 'Etienne Capoue', 'MID', 'Watford', 'https://cdn.sofifa.org/17/players/178213.png', 77, 7, 2, 70, 66, 70, 79, 61, 76, 61, 30, 77, 76, 65, 55, 49, 78, 55, 73, 74, 86, 77, 69, 72, 74, 71, 67, 52, 77, 75, 80, 77, 12, 11, 11, 14, 12),
(404, 'Valon Behrami', 'MID', 'Watford', 'https://cdn.sofifa.org/17/players/161805.png', 77, 4.5, 2, 69, 56, 68, 75, 69, 69, 70, 69, 72, 74, 66, 67, 71, 77, 68, 76, 70, 80, 77, 69, 90, 75, 63, 73, 72, 76, 69, 78, 78, 12, 11, 7, 15, 11),
(405, 'Tom Cleverley', 'MID', 'Watford', 'https://cdn.sofifa.org/17/players/189725.png', 78, 8.5, 3, 74, 64, 48, 83, 68, 79, 59, 62, 80, 80, 66, 74, 72, 77, 77, 74, 62, 73, 56, 75, 71, 65, 74, 77, 72, 72, 47, 59, 49, 15, 11, 9, 12, 13),
(406, 'Troy Deeney', 'FWD', 'Watford', 'https://cdn.sofifa.org/17/players/183125.png', 78, 8.5, 3, 55, 80, 82, 73, 74, 65, 68, 36, 60, 75, 69, 69, 65, 74, 74, 86, 86, 79, 92, 78, 80, 29, 77, 67, 80, 78, 33, 29, 25, 10, 11, 16, 12, 15),
(407, 'Abdoulaye Doucouré', 'MID', 'Watford', 'https://cdn.sofifa.org/17/players/208135.png', 77, 8.5, 2, 68, 70, 66, 79, 67, 75, 41, 42, 74, 78, 65, 76, 60, 70, 64, 75, 71, 83, 80, 74, 75, 78, 73, 75, 45, 70, 69, 77, 71, 15, 12, 12, 15, 14),
(408, 'Nordin Amrabat', 'MID', 'Watford', 'https://cdn.sofifa.org/17/players/183108.png', 80, 13, 4, 78, 76, 68, 79, 73, 84, 77, 68, 67, 80, 87, 85, 88, 73, 79, 81, 56, 73, 77, 72, 67, 54, 73, 78, 77, 67, 45, 65, 55, 11, 14, 7, 6, 13),
(409, 'Isaac Success', 'FWD', 'Watford', 'https://cdn.sofifa.org/17/players/222634.png', 74, 5.5, 3, 73, 69, 64, 68, 55, 77, 56, 54, 55, 79, 85, 89, 78, 68, 57, 80, 82, 65, 83, 58, 45, 20, 72, 61, 68, 46, 22, 33, 24, 8, 15, 14, 8, 10),
(410, 'M''Baye Niang', 'FWD', 'Watford', 'https://cdn.sofifa.org/17/players/204077.png', 78, 12, 4, 67, 70, 64, 72, 72, 84, 68, 66, 57, 82, 85, 92, 85, 70, 69, 86, 69, 75, 73, 74, 50, 30, 82, 75, 70, 68, 16, 24, 20, 4, 6, 4, 4, 4),
(411, 'Daryl Janmaat', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/188155.png', 77, 6.5, 3, 73, 55, 70, 70, 67, 74, 64, 56, 68, 76, 74, 75, 72, 79, 66, 76, 71, 92, 75, 64, 84, 73, 68, 70, 62, 66, 74, 77, 75, 15, 10, 7, 11, 7);
INSERT INTO `player` (`ID`, `name`, `position`, `club`, `photo`, `overall`, `value`, `skills`, `crossing`, `finishing`, `heading`, `short_passing`, `volleys`, `dribbling`, `curve`, `free_kicks`, `long_passing`, `ball_controll`, `acceleration`, `sprint_speed`, `agility`, `reactions`, `balance`, `shot_power`, `jumping`, `stamina`, `strength`, `long_shots`, `aggression`, `interceptions`, `positioning`, `vision`, `penalties`, `composure`, `marking`, `stand_tackle`, `slide_tackle`, `GK_diving`, `GK_handling`, `GK_kicking`, `GK_positioning`, `GK_reflexes`) VALUES
(412, 'Stefano Okaka', 'FWD', 'Watford', 'https://cdn.sofifa.org/17/players/178091.png', 77, 8, 2, 50, 74, 80, 71, 67, 75, 58, 48, 29, 75, 73, 78, 58, 71, 48, 81, 76, 79, 93, 69, 73, 21, 78, 62, 68, 71, 15, 25, 20, 7, 7, 7, 5, 8),
(413, 'Costel Pantilimon', 'GK', 'Watford', 'https://cdn.sofifa.org/17/players/192613.png', 77, 6, 1, 19, 11, 16, 38, 13, 15, 15, 12, 36, 22, 48, 42, 33, 69, 22, 14, 34, 31, 78, 15, 40, 27, 12, 38, 21, 65, 14, 19, 17, 74, 77, 68, 79, 78),
(414, 'Younès Kaboul', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/163418.png', 76, 3.8, 2, 56, 21, 81, 67, 34, 52, 44, 37, 54, 59, 52, 70, 53, 66, 47, 82, 78, 69, 83, 56, 84, 74, 51, 51, 54, 66, 72, 77, 74, 9, 14, 7, 9, 6),
(415, 'Mauro Zárate', 'FWD', 'Watford', 'https://cdn.sofifa.org/17/players/153177.png', 77, 7, 4, 66, 78, 56, 72, 78, 86, 81, 79, 60, 87, 82, 78, 86, 75, 74, 80, 69, 69, 62, 82, 66, 38, 78, 63, 70, 72, 22, 34, 30, 7, 16, 16, 6, 12),
(416, 'Roberto Pereyra', 'MID', 'Watford', 'https://cdn.sofifa.org/17/players/193061.png', 81, 20.5, 4, 78, 61, 60, 83, 74, 84, 78, 72, 77, 85, 81, 81, 82, 76, 75, 66, 65, 83, 64, 72, 66, 70, 80, 82, 72, 78, 64, 70, 70, 4, 5, 3, 4, 8),
(417, 'Adrian Mariappa', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/172953.png', 73, 2.2, 2, 57, 27, 76, 63, 21, 59, 33, 22, 61, 65, 75, 71, 68, 73, 76, 47, 80, 75, 77, 34, 58, 65, 53, 58, 44, 64, 76, 76, 79, 6, 15, 8, 13, 10),
(418, 'Christian Kabasele', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/190324.png', 76, 5.5, 2, 47, 53, 76, 60, 52, 59, 34, 27, 57, 64, 77, 78, 63, 71, 64, 57, 81, 82, 83, 44, 77, 74, 63, 36, 53, 64, 74, 76, 81, 14, 11, 6, 14, 16),
(419, 'Ben Watson', 'MID', 'Watford', 'https://cdn.sofifa.org/17/players/160292.png', 73, 2.6, 2, 74, 67, 58, 76, 63, 68, 80, 76, 74, 72, 64, 54, 71, 73, 75, 73, 74, 78, 70, 64, 61, 72, 64, 71, 78, 74, 64, 72, 69, 13, 8, 14, 6, 6),
(420, 'Juan Camilo Zúñiga', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/176546.png', 73, 2, 4, 76, 56, 54, 74, 66, 80, 74, 59, 70, 78, 88, 84, 88, 68, 86, 76, 68, 68, 68, 72, 71, 68, 70, 64, 67, 74, 66, 70, 74, 7, 13, 10, 9, 9),
(421, 'Brice Dja Djédjé', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/199286.png', 77, 7, 2, 71, 58, 58, 76, 31, 70, 56, 47, 66, 75, 79, 84, 77, 74, 87, 72, 67, 85, 72, 53, 85, 72, 68, 68, 58, 65, 72, 77, 79, 7, 7, 14, 14, 8),
(422, 'Giedrius Arlauskis', 'GK', 'Watford', 'https://cdn.sofifa.org/17/players/192297.png', 69, 0.875, 1, 19, 14, 15, 15, 14, 13, 16, 17, 13, 19, 33, 34, 38, 62, 56, 15, 57, 38, 40, 12, 33, 16, 13, 19, 11, 31, 12, 14, 14, 70, 64, 70, 62, 77),
(423, 'Rene Gilmartin', 'GK', 'Watford', 'https://cdn.sofifa.org/17/players/175603.png', 59, 0.13, 1, 17, 15, 14, 26, 12, 13, 11, 11, 23, 22, 52, 54, 55, 51, 28, 25, 58, 17, 70, 16, 37, 10, 16, 33, 21, 54, 14, 14, 11, 67, 54, 54, 54, 61),
(424, 'Connor Stevens', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/234709.png', 54, 0.1, 2, 32, 33, 56, 33, 29, 30, 38, 39, 31, 31, 55, 55, 48, 50, 53, 50, 66, 54, 64, 49, 59, 52, 29, 32, 40, 45, 50, 53, 52, 15, 14, 12, 13, 10),
(425, 'Ola Adeyemo', 'FWD', 'Watford', 'https://cdn.sofifa.org/17/players/225698.png', 58, 0.19, 2, 30, 56, 62, 40, 50, 55, 35, 29, 31, 54, 76, 78, 59, 55, 70, 59, 72, 53, 48, 52, 30, 19, 54, 44, 65, 49, 18, 13, 18, 14, 13, 7, 11, 13),
(426, 'Charlie Rowan', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/234708.png', 55, 0.15, 2, 28, 33, 49, 44, 32, 39, 30, 34, 49, 43, 56, 58, 55, 50, 52, 49, 66, 51, 66, 45, 67, 51, 30, 33, 45, 48, 51, 53, 52, 9, 11, 6, 14, 14),
(427, 'Brandon Mason', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/234706.png', 54, 0.13, 2, 52, 34, 36, 43, 33, 54, 44, 48, 42, 53, 78, 78, 64, 49, 72, 44, 60, 54, 42, 38, 55, 50, 47, 37, 43, 39, 50, 50, 49, 13, 7, 6, 6, 15),
(428, 'Andrew Eleftheriou', 'DEF', 'Watford', 'https://cdn.sofifa.org/17/players/234705.png', 52, 0.06, 2, 49, 33, 40, 43, 36, 50, 41, 39, 41, 48, 69, 70, 58, 46, 62, 40, 60, 53, 50, 36, 61, 49, 40, 40, 44, 39, 48, 51, 50, 13, 14, 8, 10, 14),
(429, 'Gareth McAuley', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/109852.png', 76, 0, 2, 49, 50, 85, 53, 23, 27, 39, 33, 51, 66, 50, 34, 34, 75, 33, 44, 73, 67, 79, 30, 79, 76, 45, 52, 49, 65, 77, 81, 69, 6, 11, 12, 10, 13),
(430, 'Ben Foster', 'GK', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/163155.png', 80, 10, 1, 15, 18, 14, 36, 14, 14, 15, 17, 32, 25, 50, 48, 45, 72, 50, 27, 75, 32, 57, 14, 15, 23, 14, 42, 41, 67, 15, 15, 14, 79, 79, 73, 77, 84),
(431, 'Carl Stewart', 'MID', 'Watford', 'https://cdn.sofifa.org/17/players/231279.png', 48, 0.07, 2, 39, 26, 44, 52, 30, 45, 32, 36, 53, 49, 67, 60, 54, 48, 78, 53, 56, 59, 44, 36, 50, 42, 50, 40, 35, 39, 35, 39, 43, 12, 13, 7, 14, 10),
(432, 'Ogo Obi', 'FWD', 'Watford', 'https://cdn.sofifa.org/17/players/237459.png', 59, 0.3, 3, 43, 59, 55, 48, 46, 53, 46, 39, 39, 58, 79, 81, 56, 59, 57, 58, 55, 56, 49, 57, 36, 13, 53, 57, 55, 55, 23, 18, 22, 7, 14, 9, 10, 8),
(433, 'Jonny Evans', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/169588.png', 79, 8, 2, 52, 28, 81, 72, 46, 39, 32, 25, 62, 68, 69, 67, 50, 78, 57, 42, 80, 69, 73, 25, 78, 81, 28, 45, 44, 68, 78, 81, 82, 12, 16, 16, 15, 8),
(434, 'Craig Dawson', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/194806.png', 71, 1.5, 2, 60, 49, 80, 57, 20, 50, 40, 24, 60, 67, 64, 68, 62, 65, 50, 57, 81, 79, 76, 14, 69, 73, 56, 51, 66, 65, 70, 77, 71, 7, 8, 7, 7, 5),
(435, 'Allan Nyom', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/192667.png', 78, 6.5, 2, 75, 27, 69, 65, 44, 68, 68, 30, 64, 72, 76, 82, 50, 73, 50, 74, 57, 86, 87, 66, 80, 75, 51, 54, 37, 57, 77, 83, 81, 12, 8, 9, 9, 14),
(436, 'Jake Livermore', 'MID', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/189059.png', 75, 4.6, 2, 65, 64, 69, 78, 59, 72, 69, 58, 75, 75, 68, 68, 65, 74, 73, 72, 72, 85, 77, 69, 83, 76, 61, 73, 57, 79, 70, 72, 66, 9, 15, 8, 10, 9),
(437, 'Darren Fletcher', 'MID', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/138782.png', 76, 4, 2, 72, 65, 83, 82, 60, 65, 65, 47, 79, 75, 55, 53, 62, 80, 59, 77, 70, 76, 70, 73, 80, 84, 57, 68, 62, 83, 79, 81, 78, 10, 16, 7, 10, 9),
(438, 'James Morrison', 'MID', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/162981.png', 76, 4.9, 3, 83, 72, 54, 78, 83, 78, 64, 63, 73, 77, 69, 68, 77, 75, 77, 80, 51, 77, 59, 78, 69, 59, 73, 74, 69, 74, 55, 60, 64, 11, 6, 11, 16, 10),
(439, 'Nacer Chadli', 'MID', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/200529.png', 78, 8.5, 3, 75, 76, 67, 77, 73, 83, 77, 78, 68, 80, 76, 78, 65, 75, 54, 81, 71, 79, 83, 76, 59, 43, 77, 76, 76, 79, 37, 48, 44, 12, 11, 12, 10, 13),
(440, 'Matt Phillips', 'MID', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/188166.png', 76, 6, 3, 77, 68, 55, 66, 45, 78, 70, 48, 65, 74, 90, 88, 81, 66, 71, 80, 51, 74, 78, 74, 55, 28, 67, 68, 61, 63, 29, 40, 35, 14, 16, 16, 10, 10),
(441, 'Salomón Rondón', 'FWD', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/189250.png', 81, 20, 3, 48, 81, 88, 69, 75, 75, 53, 52, 40, 78, 76, 77, 72, 73, 48, 86, 72, 68, 91, 70, 72, 33, 82, 53, 62, 75, 25, 23, 13, 13, 13, 7, 5, 14),
(442, 'James McClean', 'MID', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/198489.png', 74, 3.4, 4, 73, 67, 71, 69, 59, 78, 68, 66, 65, 73, 74, 78, 75, 71, 73, 69, 72, 79, 70, 65, 78, 51, 73, 70, 65, 71, 59, 56, 60, 6, 16, 16, 15, 15),
(443, 'Marc Wilson', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/166919.png', 74, 2.7, 2, 66, 48, 69, 64, 51, 63, 44, 68, 67, 68, 67, 67, 62, 72, 61, 74, 70, 74, 70, 63, 72, 74, 59, 68, 56, 64, 75, 77, 75, 13, 6, 14, 7, 9),
(444, 'Hal Robson-Kanu', 'FWD', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/184480.png', 66, 0.65, 3, 66, 66, 54, 63, 65, 71, 61, 35, 57, 67, 72, 74, 60, 61, 58, 70, 60, 71, 74, 68, 68, 32, 60, 59, 73, 61, 40, 35, 27, 16, 7, 10, 13, 13),
(445, 'Claudio Yacob', 'MID', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/183893.png', 79, 8, 2, 34, 58, 78, 83, 23, 66, 52, 55, 74, 76, 55, 51, 59, 77, 68, 63, 76, 83, 70, 67, 85, 82, 42, 69, 66, 79, 75, 81, 74, 6, 6, 12, 9, 8),
(446, 'Sam Field', 'MID', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/233957.png', 64, 0.825, 3, 50, 41, 63, 76, 47, 61, 49, 47, 73, 63, 68, 60, 53, 62, 77, 68, 56, 75, 46, 44, 69, 50, 55, 55, 54, 45, 45, 54, 61, 12, 9, 7, 13, 10),
(447, 'Jonathan Leko', 'FWD', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/231408.png', 64, 0.825, 3, 39, 64, 64, 53, 50, 70, 46, 34, 41, 63, 89, 89, 82, 58, 69, 66, 65, 72, 67, 57, 30, 16, 60, 53, 78, 48, 20, 17, 23, 6, 12, 11, 8, 9),
(448, 'Boaz Myhill', 'GK', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/51261.png', 73, 2.1, 1, 11, 11, 13, 39, 11, 15, 13, 12, 32, 35, 41, 46, 51, 66, 48, 27, 72, 29, 63, 12, 21, 25, 13, 40, 42, 46, 13, 11, 16, 74, 71, 69, 70, 78),
(449, 'Chris Brunt', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/52306.png', 69, 0.65, 3, 86, 67, 61, 79, 58, 76, 86, 70, 78, 75, 68, 55, 65, 72, 63, 86, 76, 60, 60, 79, 67, 65, 69, 73, 74, 60, 65, 70, 62, 11, 13, 6, 16, 7),
(450, 'Brendan Galloway', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/209852.png', 68, 1.2, 2, 54, 30, 61, 69, 32, 49, 36, 34, 55, 68, 79, 82, 74, 63, 63, 51, 64, 70, 66, 40, 62, 60, 43, 49, 44, 60, 64, 70, 70, 6, 14, 9, 8, 8),
(451, 'Kane Wilson', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/235618.png', 48, 0.06, 2, 41, 24, 38, 27, 28, 46, 26, 26, 22, 31, 63, 64, 50, 53, 70, 27, 61, 56, 49, 26, 46, 50, 42, 38, 39, 31, 35, 49, 53, 8, 14, 11, 14, 9),
(452, 'Jack Rose', 'GK', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/222864.png', 60, 0.24, 1, 15, 14, 15, 29, 15, 18, 11, 19, 23, 20, 41, 43, 32, 59, 61, 24, 54, 29, 45, 21, 25, 15, 10, 31, 29, 27, 15, 18, 19, 66, 54, 53, 55, 62),
(453, 'Kyle Edwards', 'MID', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/231406.png', 61, 0.45, 3, 49, 48, 48, 59, 48, 70, 60, 48, 60, 77, 63, 63, 51, 60, 82, 65, 51, 45, 39, 42, 50, 28, 45, 55, 60, 67, 42, 41, 50, 10, 6, 5, 9, 11),
(454, 'Danny Barbir', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/237676.png', 61, 0.4, 2, 33, 21, 57, 54, 33, 41, 32, 28, 36, 55, 56, 61, 49, 50, 53, 46, 67, 59, 51, 26, 52, 62, 26, 36, 44, 46, 52, 74, 71, 13, 7, 8, 10, 10),
(455, 'Jack Fitzwater', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/231139.png', 58, 0.18, 2, 28, 28, 56, 38, 37, 29, 37, 36, 34, 35, 55, 55, 46, 50, 64, 50, 73, 61, 49, 26, 57, 56, 24, 39, 43, 51, 56, 70, 65, 14, 8, 9, 5, 15),
(456, 'Zachary Elbouzedi', 'MID', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/230847.png', 62, 0.475, 3, 50, 54, 41, 63, 50, 71, 57, 52, 63, 68, 55, 69, 55, 58, 68, 65, 56, 49, 48, 50, 42, 29, 44, 62, 60, 63, 48, 35, 41, 6, 11, 13, 10, 7),
(457, 'Callam Jones', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/215371.png', 61, 0.325, 2, 40, 32, 60, 50, 36, 29, 34, 32, 41, 46, 66, 67, 60, 52, 60, 44, 71, 67, 74, 21, 55, 61, 28, 39, 41, 51, 56, 63, 62, 13, 10, 15, 15, 6),
(458, 'Andre Wright', 'FWD', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/230895.png', 63, 0.55, 3, 36, 68, 51, 59, 56, 70, 61, 41, 47, 60, 78, 78, 52, 58, 62, 71, 58, 54, 67, 58, 37, 21, 44, 62, 71, 55, 23, 23, 21, 12, 9, 14, 5, 6),
(459, 'Dara O''Shea', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/235405.png', 58, 0.17, 2, 34, 30, 57, 38, 30, 36, 37, 28, 37, 39, 55, 56, 40, 52, 59, 48, 65, 63, 48, 22, 48, 62, 27, 33, 45, 45, 52, 71, 68, 13, 8, 7, 7, 10),
(460, 'Robbie McCourt', 'DEF', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/237677.png', 58, 0.23, 2, 44, 34, 55, 37, 29, 63, 39, 39, 32, 35, 66, 58, 54, 57, 74, 32, 61, 57, 40, 36, 55, 56, 47, 43, 49, 39, 62, 70, 68, 10, 6, 10, 6, 7),
(461, 'Jasko Keranovic', 'GK', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/235406.png', 50, 0.06, 1, 12, 5, 12, 15, 6, 5, 13, 11, 28, 14, 22, 32, 26, 37, 52, 22, 59, 21, 58, 9, 24, 12, 6, 26, 15, 27, 6, 14, 13, 45, 57, 59, 45, 51),
(462, 'Tom Heaton', 'GK', 'Burnley', 'https://cdn.sofifa.org/17/players/163264.png', 79, 8.5, 1, 13, 12, 14, 28, 12, 14, 15, 13, 31, 22, 52, 50, 54, 71, 48, 14, 69, 36, 62, 12, 31, 17, 12, 44, 24, 56, 15, 15, 13, 79, 78, 74, 79, 80),
(463, 'Matthew Lowton', 'DEF', 'Burnley', 'https://cdn.sofifa.org/17/players/199633.png', 76, 4.2, 2, 75, 52, 69, 71, 75, 71, 68, 46, 63, 73, 79, 76, 69, 76, 68, 72, 77, 83, 73, 68, 76, 74, 60, 64, 49, 74, 73, 74, 74, 11, 6, 6, 13, 7),
(464, 'Ethan Ross', 'GK', 'West Bromwich Albion', 'https://cdn.sofifa.org/17/players/233481.png', 50, 0.05, 1, 10, 9, 10, 26, 9, 13, 10, 10, 26, 16, 35, 32, 37, 35, 42, 22, 57, 50, 50, 7, 26, 10, 8, 31, 19, 26, 7, 14, 11, 46, 58, 46, 51, 47),
(465, 'Michael Keane', 'DEF', 'Burnley', 'https://cdn.sofifa.org/17/players/207599.png', 79, 12.5, 2, 59, 49, 83, 73, 30, 65, 50, 33, 70, 69, 74, 72, 63, 74, 65, 54, 82, 79, 84, 43, 64, 81, 29, 56, 48, 77, 80, 81, 78, 16, 7, 8, 14, 11),
(466, 'Ben Mee', 'DEF', 'Burnley', 'https://cdn.sofifa.org/17/players/189682.png', 75, 3.5, 2, 67, 27, 75, 61, 29, 63, 38, 31, 65, 65, 69, 69, 66, 68, 73, 60, 91, 79, 81, 39, 76, 74, 30, 50, 36, 67, 75, 74, 76, 15, 7, 12, 10, 14),
(467, 'Stephen Ward', 'DEF', 'Burnley', 'https://cdn.sofifa.org/17/players/165321.png', 74, 2.4, 3, 72, 61, 68, 70, 66, 69, 69, 55, 68, 71, 69, 70, 66, 74, 63, 61, 72, 79, 76, 52, 75, 74, 58, 64, 62, 61, 73, 74, 75, 6, 16, 13, 11, 16),
(468, 'George Boyd', 'MID', 'Burnley', 'https://cdn.sofifa.org/17/players/179592.png', 73, 2.6, 4, 72, 69, 52, 69, 68, 75, 69, 68, 68, 73, 66, 68, 78, 68, 67, 72, 50, 88, 71, 70, 47, 59, 69, 73, 71, 70, 56, 63, 59, 8, 7, 13, 11, 15),
(469, 'Ashley Westwood', 'MID', 'Burnley', 'https://cdn.sofifa.org/17/players/189280.png', 73, 3.3, 2, 76, 47, 44, 76, 48, 62, 64, 75, 79, 77, 70, 63, 73, 76, 79, 62, 63, 79, 60, 57, 49, 70, 54, 76, 55, 79, 61, 66, 64, 10, 13, 13, 7, 8),
(470, 'Jeff Hendrick', 'MID', 'Burnley', 'https://cdn.sofifa.org/17/players/200478.png', 74, 4.5, 3, 61, 66, 62, 77, 65, 72, 64, 62, 76, 73, 70, 70, 72, 70, 71, 68, 71, 81, 76, 69, 69, 73, 65, 72, 56, 71, 65, 70, 65, 12, 6, 9, 9, 14),
(471, 'Robbie Brady', 'MID', 'Burnley', 'https://cdn.sofifa.org/17/players/201884.png', 76, 6.5, 3, 80, 66, 53, 71, 62, 75, 81, 78, 75, 75, 85, 82, 77, 73, 75, 75, 75, 80, 69, 74, 51, 62, 70, 74, 65, 73, 62, 68, 71, 12, 8, 13, 7, 7),
(472, 'Ashley Barnes', 'FWD', 'Burnley', 'https://cdn.sofifa.org/17/players/186905.png', 73, 3.1, 2, 65, 74, 75, 64, 65, 71, 59, 56, 54, 76, 70, 69, 70, 68, 56, 75, 81, 78, 77, 65, 85, 35, 73, 59, 73, 67, 33, 46, 39, 6, 10, 11, 10, 10),
(473, 'Andre Gray', 'FWD', 'Burnley', 'https://cdn.sofifa.org/17/players/194138.png', 76, 7, 3, 61, 77, 65, 66, 68, 70, 53, 39, 51, 69, 91, 91, 77, 74, 76, 80, 70, 79, 79, 65, 61, 31, 79, 67, 74, 69, 20, 13, 17, 11, 16, 11, 9, 14),
(474, 'Jóhann Berg Gudmundsson', 'MID', 'Burnley', 'https://cdn.sofifa.org/17/players/191076.png', 73, 3, 3, 74, 68, 56, 69, 70, 77, 78, 78, 58, 75, 80, 78, 72, 69, 73, 84, 58, 74, 72, 74, 63, 49, 67, 70, 57, 68, 45, 50, 49, 7, 6, 14, 10, 8),
(475, 'Sam Vokes', 'FWD', 'Burnley', 'https://cdn.sofifa.org/17/players/179746.png', 74, 3.7, 2, 58, 75, 80, 67, 67, 68, 54, 46, 57, 73, 60, 65, 55, 68, 53, 78, 86, 80, 83, 68, 73, 42, 74, 67, 77, 68, 42, 29, 24, 13, 14, 9, 9, 7),
(476, 'Steven Defour', 'MID', 'Burnley', 'https://cdn.sofifa.org/17/players/170815.png', 77, 6.5, 3, 74, 66, 62, 78, 64, 74, 70, 72, 77, 77, 71, 66, 74, 78, 78, 75, 71, 72, 66, 74, 81, 81, 72, 80, 69, 76, 72, 73, 71, 7, 6, 14, 16, 10),
(477, 'Scott Arfield', 'MID', 'Burnley', 'https://cdn.sofifa.org/17/players/178287.png', 72, 2.1, 3, 70, 69, 63, 71, 58, 74, 62, 65, 68, 72, 73, 69, 74, 65, 78, 69, 72, 84, 70, 66, 42, 65, 69, 72, 62, 69, 62, 64, 60, 13, 13, 9, 13, 16),
(478, 'James Tarkowski', 'DEF', 'Burnley', 'https://cdn.sofifa.org/17/players/202695.png', 72, 2.4, 2, 51, 34, 72, 67, 40, 60, 44, 57, 65, 65, 67, 68, 62, 61, 63, 59, 74, 73, 78, 37, 71, 71, 40, 51, 39, 69, 70, 75, 71, 14, 8, 12, 9, 7),
(479, 'Jon Flanagan', 'DEF', 'Burnley', 'https://cdn.sofifa.org/17/players/201999.png', 71, 1.9, 2, 67, 43, 62, 66, 30, 67, 34, 26, 63, 73, 71, 65, 67, 60, 69, 35, 65, 62, 71, 32, 88, 68, 52, 48, 47, 67, 75, 76, 78, 7, 13, 15, 13, 15),
(480, 'Paul Robinson', 'GK', 'Burnley', 'https://cdn.sofifa.org/17/players/13914.png', 69, 0.45, 1, 20, 19, 10, 21, 20, 18, 19, 12, 40, 31, 35, 40, 36, 74, 47, 25, 70, 29, 70, 20, 36, 23, 14, 40, 13, 64, 11, 19, 20, 66, 67, 74, 71, 65),
(481, 'Dan Agyei', 'FWD', 'Burnley', 'https://cdn.sofifa.org/17/players/228382.png', 64, 0.9, 2, 39, 64, 59, 47, 49, 63, 36, 33, 40, 64, 80, 83, 66, 47, 58, 68, 70, 68, 78, 57, 60, 22, 62, 54, 59, 59, 21, 23, 25, 11, 9, 15, 10, 6),
(482, 'Kevin Long', 'DEF', 'Burnley', 'https://cdn.sofifa.org/17/players/194146.png', 67, 0.75, 2, 23, 14, 68, 45, 16, 47, 35, 32, 37, 51, 64, 62, 60, 57, 51, 56, 80, 61, 78, 25, 70, 64, 48, 30, 31, 65, 67, 69, 67, 8, 14, 7, 8, 7),
(483, 'Nick Pope', 'GK', 'Burnley', 'https://cdn.sofifa.org/17/players/203841.png', 67, 0.85, 1, 11, 14, 11, 32, 14, 13, 11, 12, 35, 24, 50, 45, 29, 52, 45, 36, 59, 32, 52, 14, 36, 17, 13, 39, 22, 37, 15, 15, 14, 72, 65, 66, 67, 69),
(484, 'Jimmy Dunne', 'DEF', 'Burnley', 'https://cdn.sofifa.org/17/players/235156.png', 60, 0.24, 2, 32, 40, 61, 58, 34, 38, 31, 28, 46, 40, 59, 61, 47, 56, 54, 44, 66, 62, 66, 28, 50, 57, 24, 37, 35, 42, 59, 60, 62, 8, 13, 14, 6, 14),
(485, 'Dean Marney', 'MID', 'Burnley', 'https://cdn.sofifa.org/17/players/152991.png', 72, 1.6, 2, 68, 65, 64, 76, 66, 70, 61, 62, 75, 68, 68, 66, 63, 69, 68, 74, 78, 83, 78, 67, 83, 74, 59, 70, 56, 74, 68, 66, 69, 15, 8, 9, 9, 8),
(486, 'Conor Mitchell', 'GK', 'Burnley', 'https://cdn.sofifa.org/17/players/223804.png', 56, 0.14, 1, 13, 13, 15, 31, 16, 18, 17, 17, 20, 24, 46, 43, 33, 47, 54, 23, 51, 30, 42, 16, 20, 12, 9, 29, 29, 19, 17, 16, 17, 57, 53, 55, 58, 56),
(487, 'Freddy Yao', 'MID', 'Burnley', 'https://cdn.sofifa.org/17/players/233515.png', 52, 0.07, 2, 34, 35, 47, 58, 41, 50, 39, 38, 53, 52, 69, 67, 59, 48, 64, 55, 57, 68, 65, 37, 54, 43, 51, 48, 45, 41, 48, 46, 53, 11, 14, 11, 14, 14),
(488, 'Bradley Jackson', 'MID', 'Burnley', 'https://cdn.sofifa.org/17/players/230604.png', 55, 0.12, 3, 54, 49, 42, 47, 47, 55, 44, 39, 44, 56, 73, 75, 70, 34, 75, 50, 49, 59, 48, 39, 35, 21, 51, 48, 45, 50, 30, 24, 23, 10, 7, 7, 14, 7),
(489, 'Arlen Birch', 'DEF', 'Burnley', 'https://cdn.sofifa.org/17/players/231639.png', 53, 0.07, 2, 48, 26, 45, 31, 24, 56, 30, 30, 26, 42, 69, 67, 59, 54, 69, 25, 55, 57, 50, 22, 56, 53, 44, 31, 35, 34, 45, 54, 56, 12, 14, 14, 13, 9),
(490, 'Tendayi Darikwa', 'DEF', 'Burnley', 'https://cdn.sofifa.org/17/players/200309.png', 70, 1.5, 3, 64, 47, 53, 62, 39, 69, 49, 43, 46, 67, 88, 91, 72, 54, 62, 49, 60, 88, 74, 44, 69, 66, 66, 60, 51, 68, 60, 63, 72, 8, 13, 12, 9, 12),
(491, 'Robbie Leitch', 'MID', 'Burnley', 'https://cdn.sofifa.org/17/players/235043.png', 58, 0.18, 3, 52, 32, 55, 69, 36, 57, 49, 45, 66, 54, 56, 62, 56, 56, 62, 56, 63, 50, 56, 41, 63, 56, 36, 51, 41, 45, 65, 70, 61, 10, 14, 7, 9, 7),
(492, 'Jamie Thomas', 'FWD', 'Burnley', 'https://cdn.sofifa.org/17/players/233833.png', 53, 0.09, 4, 30, 64, 56, 47, 41, 50, 36, 31, 30, 52, 50, 55, 84, 47, 85, 47, 68, 53, 48, 51, 32, 17, 48, 48, 62, 46, 18, 11, 15, 14, 14, 10, 9, 9),
(493, 'Harry Limb', 'FWD', 'Burnley', 'https://cdn.sofifa.org/17/players/237941.png', 56, 0.16, 3, 43, 55, 47, 49, 45, 51, 50, 39, 42, 54, 78, 76, 58, 58, 72, 53, 68, 50, 47, 52, 31, 14, 53, 34, 46, 54, 17, 19, 14, 15, 7, 8, 7, 6),
(494, 'Taofiq Olomowewe', 'DEF', 'Burnley', 'https://cdn.sofifa.org/17/players/233516.png', 53, 0.08, 2, 30, 25, 55, 47, 25, 38, 22, 23, 29, 30, 64, 55, 43, 45, 53, 36, 69, 56, 52, 19, 51, 51, 22, 34, 38, 41, 49, 56, 58, 11, 6, 7, 15, 15),
(495, 'Khius Metz', 'FWD', 'Burnley', 'https://cdn.sofifa.org/17/players/233528.png', 54, 0.11, 2, 28, 55, 46, 48, 35, 46, 36, 30, 30, 44, 91, 90, 72, 50, 71, 52, 59, 66, 56, 48, 31, 17, 49, 43, 51, 45, 11, 15, 14, 7, 9, 11, 12, 13),
(496, 'Wayne Hennessey', 'GK', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/170084.png', 74, 2.9, 1, 11, 12, 14, 12, 10, 8, 12, 11, 13, 12, 40, 41, 50, 61, 51, 34, 41, 29, 68, 10, 21, 22, 14, 58, 17, 48, 15, 18, 13, 73, 76, 82, 76, 71),
(497, 'Damien Delaney', 'DEF', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/159577.png', 74, 1, 2, 51, 32, 77, 50, 28, 28, 32, 49, 57, 55, 33, 41, 26, 72, 41, 49, 58, 72, 84, 57, 87, 71, 33, 45, 56, 56, 75, 75, 76, 6, 14, 7, 14, 11),
(498, 'Joel Ward', 'DEF', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/186392.png', 75, 3.8, 2, 73, 46, 75, 70, 33, 64, 43, 34, 69, 67, 68, 69, 66, 73, 63, 68, 66, 77, 78, 63, 74, 77, 64, 68, 40, 73, 77, 78, 77, 8, 7, 7, 10, 11),
(499, 'Patrick van Aanholt', 'DEF', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/186190.png', 75, 4.2, 3, 62, 61, 64, 73, 53, 74, 38, 61, 74, 71, 89, 88, 77, 76, 78, 70, 86, 85, 65, 64, 73, 67, 74, 64, 46, 65, 67, 76, 75, 9, 15, 7, 8, 6),
(500, 'Wilfried Zaha', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/198717.png', 80, 18.5, 4, 79, 74, 43, 71, 58, 88, 54, 51, 65, 86, 89, 90, 87, 73, 82, 75, 50, 80, 73, 62, 68, 23, 73, 73, 66, 76, 36, 30, 34, 15, 10, 15, 11, 10),
(501, 'Luka Milivojević', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/206304.png', 76, 5.5, 3, 60, 54, 74, 76, 42, 63, 62, 75, 76, 72, 62, 65, 60, 71, 60, 75, 65, 89, 76, 72, 85, 74, 64, 69, 60, 70, 75, 72, 68, 13, 9, 16, 6, 12),
(502, 'Martin Kelly', 'DEF', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/184037.png', 73, 2.7, 3, 73, 38, 77, 68, 39, 59, 60, 35, 64, 66, 62, 63, 59, 72, 56, 61, 70, 76, 79, 38, 71, 68, 42, 39, 58, 75, 74, 78, 78, 7, 11, 8, 7, 8),
(503, 'Jason Puncheon', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/152514.png', 74, 3, 3, 76, 69, 49, 75, 68, 74, 75, 76, 76, 76, 69, 72, 74, 73, 83, 74, 63, 74, 68, 70, 72, 59, 76, 76, 73, 72, 66, 63, 58, 13, 13, 14, 16, 12),
(504, 'Yohan Cabaye', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/167943.png', 80, 12.5, 3, 72, 69, 67, 81, 73, 71, 77, 77, 78, 82, 66, 68, 72, 79, 77, 78, 70, 73, 68, 76, 78, 77, 70, 79, 78, 78, 72, 75, 73, 14, 9, 16, 8, 12),
(505, 'Andros Townsend', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/194932.png', 78, 10.5, 3, 77, 74, 52, 75, 59, 82, 71, 76, 67, 79, 86, 85, 82, 70, 73, 82, 48, 78, 59, 77, 58, 21, 70, 71, 83, 68, 39, 31, 27, 13, 11, 11, 11, 13),
(506, 'Fraizer Campbell', 'FWD', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/169586.png', 71, 1.7, 3, 64, 73, 68, 62, 66, 71, 43, 58, 41, 69, 80, 76, 76, 69, 79, 70, 72, 71, 61, 62, 71, 22, 72, 57, 68, 67, 32, 35, 28, 11, 15, 9, 9, 16),
(507, 'Christian Benteke', 'FWD', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/184111.png', 81, 20.5, 3, 58, 79, 88, 72, 74, 72, 60, 67, 48, 80, 75, 79, 74, 71, 48, 85, 82, 77, 90, 76, 63, 29, 76, 73, 77, 78, 25, 30, 18, 14, 5, 12, 8, 5),
(508, 'Loïc Rémy', 'FWD', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/179527.png', 79, 10, 4, 60, 78, 77, 68, 70, 75, 66, 51, 60, 73, 83, 82, 76, 77, 65, 76, 85, 67, 74, 74, 57, 48, 81, 71, 76, 76, 23, 24, 21, 9, 10, 15, 14, 12),
(509, 'James McArthur', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/171972.png', 77, 5.5, 3, 66, 56, 66, 78, 51, 66, 54, 61, 74, 77, 67, 64, 75, 77, 78, 65, 61, 85, 73, 61, 86, 78, 72, 71, 67, 78, 73, 74, 70, 1, 1, 1, 1, 1),
(510, 'Mathieu Flamini', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/156722.png', 75, 2.4, 2, 63, 58, 70, 74, 73, 61, 65, 56, 71, 72, 63, 57, 62, 74, 72, 78, 70, 69, 73, 65, 83, 77, 69, 68, 61, 77, 73, 76, 72, 7, 12, 6, 6, 7),
(511, 'Julián Speroni', 'GK', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/49212.png', 72, 0.65, 1, 13, 13, 11, 24, 12, 12, 15, 12, 23, 14, 42, 43, 48, 68, 55, 20, 74, 33, 43, 12, 21, 17, 8, 34, 22, 35, 12, 12, 15, 75, 70, 67, 67, 74),
(512, 'Scott Dann', 'DEF', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/157665.png', 79, 7.5, 2, 30, 40, 85, 63, 29, 38, 30, 29, 65, 66, 49, 54, 50, 77, 56, 52, 72, 74, 82, 32, 73, 80, 36, 55, 30, 80, 80, 80, 78, 6, 10, 15, 7, 9),
(513, 'Jeffrey Schlupp', 'DEF', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/200759.png', 71, 1.9, 2, 64, 56, 62, 65, 64, 74, 62, 34, 55, 69, 87, 89, 81, 68, 80, 74, 77, 76, 82, 53, 70, 65, 69, 63, 68, 60, 65, 68, 68, 9, 7, 8, 10, 9),
(514, 'Steve Mandanda', 'GK', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/163705.png', 83, 18.5, 1, 14, 13, 13, 37, 13, 15, 13, 12, 28, 17, 53, 43, 52, 79, 36, 24, 74, 31, 61, 11, 37, 23, 11, 55, 11, 63, 10, 15, 13, 86, 78, 77, 77, 85),
(515, 'Bakary Sako', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/179613.png', 72, 2, 3, 75, 66, 61, 67, 68, 76, 74, 73, 63, 73, 77, 79, 74, 67, 68, 79, 60, 64, 84, 75, 75, 40, 72, 69, 70, 69, 37, 33, 35, 13, 16, 13, 7, 9),
(516, 'Mamadou Sakho', 'DEF', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/183285.png', 82, 19, 2, 60, 23, 74, 75, 20, 50, 50, 30, 68, 61, 55, 68, 61, 72, 55, 51, 82, 76, 90, 38, 86, 82, 32, 49, 40, 74, 79, 84, 80, 14, 12, 9, 7, 8),
(517, 'James Tomkins', 'DEF', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/173546.png', 76, 4.9, 2, 45, 29, 78, 63, 28, 50, 33, 31, 60, 58, 55, 56, 51, 73, 53, 40, 74, 75, 76, 29, 73, 74, 45, 50, 43, 69, 77, 79, 80, 11, 8, 6, 9, 14),
(518, 'Pape Souaré', 'DEF', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/193475.png', 75, 3.8, 2, 77, 43, 74, 71, 43, 74, 75, 69, 68, 72, 81, 77, 76, 73, 73, 65, 87, 73, 72, 54, 79, 67, 73, 64, 49, 65, 72, 73, 78, 8, 8, 14, 16, 10),
(519, 'Connor Wickham', 'FWD', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/191089.png', 74, 4.5, 2, 63, 76, 74, 63, 62, 68, 53, 69, 57, 73, 69, 73, 57, 72, 53, 79, 70, 74, 84, 69, 69, 18, 68, 60, 75, 65, 19, 28, 20, 8, 16, 6, 10, 12),
(520, 'Chung-Yong Lee', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/155355.png', 73, 2.9, 4, 69, 61, 58, 73, 66, 71, 72, 65, 66, 73, 76, 75, 76, 74, 78, 65, 70, 81, 53, 62, 56, 56, 70, 74, 63, 71, 42, 52, 43, 6, 7, 7, 8, 7),
(521, 'Joe Ledley', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/165190.png', 74, 2.5, 3, 68, 62, 72, 76, 53, 63, 69, 53, 70, 73, 62, 59, 58, 76, 72, 70, 79, 82, 78, 67, 70, 72, 67, 75, 71, 78, 72, 71, 65, 13, 13, 8, 10, 13),
(522, 'Ezekiel Fryers', 'DEF', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/206489.png', 66, 0.65, 2, 65, 35, 61, 63, 32, 67, 54, 35, 51, 62, 77, 75, 72, 66, 64, 45, 76, 67, 68, 31, 70, 55, 49, 47, 43, 57, 67, 66, 67, 7, 14, 14, 6, 11),
(523, 'Sullay Kaikai', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/212493.png', 68, 1.3, 3, 64, 65, 32, 62, 59, 75, 62, 69, 56, 71, 85, 86, 85, 47, 76, 65, 56, 61, 56, 64, 32, 32, 57, 63, 53, 48, 24, 23, 22, 15, 7, 14, 10, 15),
(524, 'Jonathan Benteke', 'FWD', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/223947.png', 61, 0.325, 2, 54, 63, 63, 57, 61, 54, 42, 37, 53, 57, 74, 70, 68, 50, 59, 58, 73, 44, 65, 58, 54, 20, 60, 41, 57, 52, 24, 24, 23, 11, 8, 11, 12, 15),
(525, 'Artur Boruc', 'GK', 'Bournemouth', 'https://cdn.sofifa.org/17/players/105846.png', 76, 2.3, 1, 12, 11, 11, 25, 13, 14, 13, 19, 34, 18, 37, 39, 40, 72, 40, 21, 73, 31, 69, 15, 38, 25, 17, 40, 21, 65, 13, 20, 20, 75, 72, 62, 74, 82),
(526, 'Luke Dreher', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/231673.png', 59, 0.29, 2, 41, 44, 49, 64, 33, 56, 48, 46, 64, 63, 69, 73, 78, 53, 71, 56, 60, 57, 65, 51, 45, 53, 42, 61, 47, 48, 45, 47, 46, 8, 10, 11, 5, 5),
(527, 'Aaron Bissaka', 'MID', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/229880.png', 56, 0.2, 3, 58, 46, 40, 50, 43, 59, 47, 45, 44, 60, 78, 76, 77, 40, 67, 51, 50, 45, 56, 47, 32, 26, 51, 47, 56, 37, 26, 27, 30, 9, 8, 6, 8, 8),
(528, 'Michael Phillips', 'DEF', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/234559.png', 55, 0.15, 3, 41, 34, 53, 60, 31, 46, 40, 42, 58, 54, 64, 65, 59, 53, 68, 52, 55, 54, 53, 49, 64, 48, 52, 50, 46, 48, 52, 54, 52, 5, 8, 8, 7, 7),
(529, 'Kleton Perntreou', 'GK', 'Crystal Palace', 'https://cdn.sofifa.org/17/players/218666.png', 52, 0.06, 1, 15, 11, 17, 26, 11, 11, 13, 10, 16, 11, 25, 23, 32, 40, 27, 17, 46, 17, 38, 10, 17, 7, 5, 26, 30, 30, 14, 11, 13, 55, 50, 48, 51, 54),
(530, 'Adam Smith', 'DEF', 'Bournemouth', 'https://cdn.sofifa.org/17/players/190885.png', 73, 2.9, 3, 71, 43, 56, 69, 40, 74, 59, 66, 61, 72, 78, 76, 75, 72, 69, 72, 53, 74, 68, 68, 62, 70, 59, 64, 48, 71, 72, 73, 71, 8, 9, 15, 9, 6),
(531, 'Charlie Daniels', 'DEF', 'Bournemouth', 'https://cdn.sofifa.org/17/players/169638.png', 74, 2.5, 2, 74, 48, 64, 73, 32, 71, 67, 68, 68, 72, 79, 78, 73, 66, 72, 68, 78, 79, 72, 46, 51, 69, 69, 72, 72, 60, 71, 76, 72, 14, 16, 13, 6, 7),
(532, 'Steve Cook', 'DEF', 'Bournemouth', 'https://cdn.sofifa.org/17/players/193011.png', 75, 4.5, 2, 40, 24, 71, 68, 31, 54, 22, 22, 60, 68, 67, 53, 56, 69, 70, 47, 71, 68, 81, 16, 74, 72, 12, 35, 20, 74, 74, 79, 73, 14, 12, 7, 14, 12),
(533, 'Simon Francis', 'DEF', 'Bournemouth', 'https://cdn.sofifa.org/17/players/135883.png', 74, 2.2, 2, 75, 25, 68, 73, 26, 69, 51, 61, 66, 73, 68, 70, 58, 67, 60, 64, 55, 76, 77, 62, 73, 71, 58, 62, 44, 69, 74, 77, 75, 12, 6, 10, 8, 12),
(534, 'Junior Stanislas', 'MID', 'Bournemouth', 'https://cdn.sofifa.org/17/players/189446.png', 72, 2.2, 4, 71, 69, 43, 72, 49, 72, 70, 75, 65, 72, 79, 84, 79, 64, 60, 69, 48, 76, 56, 66, 31, 60, 63, 71, 61, 64, 16, 27, 29, 13, 8, 6, 7, 6),
(535, 'Andrew Surman', 'MID', 'Bournemouth', 'https://cdn.sofifa.org/17/players/172768.png', 75, 3.8, 3, 68, 63, 59, 82, 55, 72, 61, 68, 76, 74, 64, 62, 63, 69, 73, 67, 71, 80, 69, 65, 68, 65, 65, 76, 67, 73, 62, 68, 62, 16, 14, 7, 16, 8),
(536, 'Harry Arter', 'MID', 'Bournemouth', 'https://cdn.sofifa.org/17/players/184469.png', 75, 4.6, 3, 62, 70, 49, 80, 63, 72, 64, 70, 75, 73, 69, 69, 76, 71, 76, 76, 70, 77, 74, 75, 84, 71, 68, 75, 68, 71, 56, 70, 58, 7, 7, 11, 10, 8),
(537, 'Lys Mousset', 'FWD', 'Bournemouth', 'https://cdn.sofifa.org/17/players/221618.png', 68, 1.4, 3, 29, 71, 67, 45, 47, 74, 34, 31, 33, 56, 85, 84, 74, 52, 65, 76, 70, 53, 74, 76, 33, 18, 66, 47, 75, 45, 14, 15, 17, 12, 14, 13, 6, 16),
(538, 'Marc Pugh', 'MID', 'Bournemouth', 'https://cdn.sofifa.org/17/players/166838.png', 72, 2, 4, 70, 68, 66, 68, 49, 77, 60, 69, 59, 73, 75, 74, 84, 60, 66, 67, 63, 78, 66, 66, 60, 37, 70, 67, 64, 66, 30, 44, 31, 14, 15, 13, 8, 10),
(539, 'Joshua King', 'FWD', 'Bournemouth', 'https://cdn.sofifa.org/17/players/185422.png', 74, 4.5, 3, 63, 75, 63, 66, 64, 77, 69, 42, 47, 72, 88, 92, 78, 70, 71, 75, 72, 73, 75, 63, 50, 36, 70, 56, 69, 61, 22, 27, 19, 12, 9, 11, 12, 7),
(540, 'Benik Afobe', 'FWD', 'Bournemouth', 'https://cdn.sofifa.org/17/players/202052.png', 74, 4.8, 3, 49, 77, 66, 67, 70, 71, 68, 57, 52, 73, 85, 82, 70, 68, 69, 68, 77, 71, 76, 67, 60, 25, 78, 65, 72, 70, 21, 22, 17, 7, 6, 9, 10, 7),
(541, 'Max Gradel', 'MID', 'Bournemouth', 'https://cdn.sofifa.org/17/players/182945.png', 77, 6.5, 4, 73, 73, 66, 74, 70, 82, 68, 74, 64, 78, 87, 86, 85, 76, 69, 73, 68, 71, 58, 71, 55, 51, 74, 70, 75, 77, 38, 40, 35, 11, 12, 8, 10, 12),
(542, 'Jordon Ibe', 'MID', 'Bournemouth', 'https://cdn.sofifa.org/17/players/205540.png', 71, 2.5, 3, 66, 65, 35, 65, 50, 77, 65, 24, 56, 74, 86, 86, 75, 64, 80, 79, 60, 69, 71, 68, 50, 46, 67, 54, 57, 62, 45, 55, 53, 13, 15, 7, 13, 13),
(543, 'Ryan Allsop', 'GK', 'Bournemouth', 'https://cdn.sofifa.org/17/players/199812.png', 64, 0.525, 1, 15, 11, 13, 35, 15, 12, 14, 12, 34, 26, 42, 42, 48, 65, 44, 22, 48, 40, 58, 15, 28, 28, 13, 30, 27, 33, 20, 11, 11, 64, 58, 65, 60, 69),
(544, 'Tyrone Mings', 'DEF', 'Bournemouth', 'https://cdn.sofifa.org/17/players/212419.png', 71, 2, 2, 70, 35, 63, 65, 30, 69, 45, 37, 59, 65, 78, 78, 73, 67, 54, 41, 64, 79, 80, 30, 73, 70, 57, 54, 32, 55, 68, 71, 70, 7, 10, 13, 7, 15),
(545, 'Ryan Fraser', 'MID', 'Bournemouth', 'https://cdn.sofifa.org/17/players/207807.png', 72, 3.1, 3, 70, 67, 25, 68, 43, 76, 70, 67, 52, 71, 89, 91, 92, 62, 92, 60, 61, 73, 47, 69, 65, 35, 67, 67, 56, 68, 53, 43, 37, 15, 14, 15, 7, 10),
(546, 'Lewis Cook', 'MID', 'Bournemouth', 'https://cdn.sofifa.org/17/players/224294.png', 70, 2.7, 3, 57, 56, 47, 75, 44, 75, 48, 57, 68, 76, 79, 74, 79, 69, 82, 60, 60, 79, 63, 57, 79, 66, 55, 66, 45, 70, 61, 66, 65, 6, 15, 12, 15, 13),
(547, 'Jack Wilshere', 'MID', 'Bournemouth', 'https://cdn.sofifa.org/17/players/189461.png', 82, 25, 3, 73, 64, 58, 84, 64, 84, 80, 72, 83, 84, 78, 73, 83, 80, 87, 75, 67, 82, 66, 73, 83, 61, 80, 85, 65, 80, 61, 63, 65, 6, 15, 15, 9, 11),
(548, 'Dan Gosling', 'MID', 'Bournemouth', 'https://cdn.sofifa.org/17/players/184749.png', 73, 3, 3, 68, 65, 61, 73, 64, 66, 57, 57, 71, 71, 66, 64, 65, 69, 72, 71, 67, 77, 64, 73, 76, 71, 77, 73, 61, 77, 66, 68, 68, 6, 15, 14, 15, 6),
(549, 'Brad Smith', 'DEF', 'Bournemouth', 'https://cdn.sofifa.org/17/players/210389.png', 65, 0.7, 2, 77, 42, 35, 62, 23, 55, 63, 27, 60, 56, 81, 83, 75, 62, 75, 40, 64, 79, 62, 49, 70, 62, 59, 50, 40, 40, 53, 60, 58, 14, 12, 15, 13, 8),
(550, 'Baily Cargill', 'DEF', 'Bournemouth', 'https://cdn.sofifa.org/17/players/215211.png', 65, 0.85, 2, 37, 30, 69, 63, 21, 60, 29, 30, 52, 54, 68, 55, 57, 54, 55, 26, 61, 56, 74, 28, 55, 60, 35, 34, 39, 45, 62, 68, 64, 7, 7, 9, 13, 9),
(551, 'Adam Federici', 'GK', 'Bournemouth', 'https://cdn.sofifa.org/17/players/164853.png', 73, 2.3, 1, 19, 18, 18, 28, 32, 19, 27, 21, 25, 27, 47, 49, 50, 72, 42, 17, 73, 41, 72, 14, 44, 22, 16, 63, 41, 61, 20, 11, 18, 73, 69, 78, 70, 73),
(552, 'Callum Wilson', 'FWD', 'Bournemouth', 'https://cdn.sofifa.org/17/players/196978.png', 76, 7, 3, 52, 79, 62, 70, 65, 73, 62, 45, 60, 75, 93, 90, 81, 70, 79, 69, 66, 77, 81, 64, 73, 40, 77, 71, 75, 78, 20, 39, 25, 10, 15, 8, 10, 6),
(553, 'Rhoys Wiggins', 'DEF', 'Bournemouth', 'https://cdn.sofifa.org/17/players/172966.png', 69, 0.775, 2, 63, 39, 53, 60, 43, 59, 44, 66, 48, 63, 64, 62, 67, 59, 80, 47, 72, 85, 72, 40, 52, 63, 52, 55, 39, 72, 72, 73, 77, 16, 15, 7, 7, 7),
(554, 'Patrick O''Flaherty', 'GK', 'Bournemouth', 'https://cdn.sofifa.org/17/players/226902.png', 54, 0.13, 1, 20, 13, 16, 23, 21, 12, 12, 13, 27, 21, 46, 40, 30, 48, 58, 23, 58, 26, 54, 16, 26, 26, 8, 11, 32, 24, 18, 15, 20, 60, 47, 50, 44, 63),
(555, 'Aaron Ramsdale', 'GK', 'Bournemouth', 'https://cdn.sofifa.org/17/players/233934.png', 59, 0.27, 1, 15, 14, 25, 21, 23, 28, 16, 29, 19, 26, 33, 36, 45, 50, 52, 35, 58, 35, 51, 24, 35, 12, 5, 41, 28, 39, 12, 11, 19, 59, 57, 49, 54, 67),
(556, 'Jordan Holmes', 'GK', 'Bournemouth', 'https://cdn.sofifa.org/17/players/231172.png', 54, 0.13, 1, 11, 8, 14, 52, 9, 12, 12, 11, 40, 40, 30, 26, 40, 50, 39, 17, 52, 41, 64, 5, 40, 9, 4, 32, 11, 40, 9, 22, 11, 51, 54, 56, 55, 52),
(557, 'Ollie Harfield', 'DEF', 'Bournemouth', 'https://cdn.sofifa.org/17/players/234247.png', 59, 0.17, 2, 64, 35, 54, 42, 35, 52, 42, 43, 32, 46, 80, 85, 67, 52, 72, 33, 62, 78, 64, 37, 55, 53, 57, 36, 41, 38, 53, 56, 52, 11, 7, 12, 13, 7),
(558, 'Matt Worthington', 'MID', 'Bournemouth', 'https://cdn.sofifa.org/17/players/237379.png', 54, 0.14, 2, 43, 33, 53, 57, 42, 51, 48, 47, 55, 53, 65, 63, 58, 54, 67, 51, 56, 60, 53, 41, 63, 49, 54, 52, 52, 42, 41, 53, 49, 9, 12, 6, 15, 11),
(559, 'Sam Surridge', 'FWD', 'Bournemouth', 'https://cdn.sofifa.org/17/players/234249.png', 56, 0.17, 2, 33, 56, 60, 48, 50, 50, 38, 28, 28, 56, 49, 55, 50, 50, 67, 57, 63, 61, 68, 50, 59, 18, 56, 49, 55, 49, 29, 26, 23, 10, 8, 7, 13, 15),
(560, 'Lee Grant', 'GK', 'Stoke City', 'https://cdn.sofifa.org/17/players/53739.png', 71, 1.2, 1, 19, 17, 14, 26, 15, 11, 17, 19, 24, 20, 56, 49, 63, 67, 45, 24, 71, 37, 69, 19, 42, 23, 14, 56, 20, 59, 12, 13, 19, 73, 64, 69, 71, 72),
(561, 'Ryan Shawcross', 'DEF', 'Stoke City', 'https://cdn.sofifa.org/17/players/169596.png', 80, 11, 2, 33, 53, 84, 63, 35, 42, 34, 24, 69, 54, 53, 53, 62, 73, 57, 44, 72, 79, 88, 28, 86, 81, 31, 50, 48, 60, 82, 81, 80, 10, 12, 7, 13, 15),
(562, 'Glen Johnson', 'DEF', 'Stoke City', 'https://cdn.sofifa.org/17/players/137782.png', 76, 3.3, 3, 75, 58, 68, 75, 56, 78, 69, 54, 70, 76, 76, 76, 73, 74, 68, 79, 77, 79, 72, 70, 73, 68, 68, 68, 60, 72, 75, 76, 77, 13, 7, 7, 6, 7),
(563, 'Jack Simpson', 'DEF', 'Bournemouth', 'https://cdn.sofifa.org/17/players/230882.png', 60, 0.35, 2, 37, 30, 63, 34, 37, 37, 29, 36, 36, 39, 55, 62, 40, 49, 62, 43, 72, 61, 64, 26, 48, 59, 27, 33, 45, 49, 59, 67, 66, 8, 6, 5, 8, 6),
(564, 'Mikael Ndjoli', 'FWD', 'Bournemouth', 'https://cdn.sofifa.org/17/players/236550.png', 58, 0.26, 2, 44, 55, 46, 52, 51, 52, 46, 41, 41, 61, 66, 66, 56, 56, 62, 66, 55, 52, 54, 56, 55, 17, 61, 55, 66, 62, 22, 28, 25, 8, 14, 12, 11, 10),
(565, 'Glenn Whelan', 'MID', 'Stoke City', 'https://cdn.sofifa.org/17/players/163303.png', 76, 3.1, 3, 71, 63, 64, 74, 59, 64, 70, 75, 70, 72, 32, 50, 69, 78, 66, 70, 68, 79, 77, 65, 82, 80, 61, 66, 65, 74, 74, 76, 71, 10, 13, 16, 16, 11),
(566, 'Bruno Martins Indi', 'DEF', 'Stoke City', 'https://cdn.sofifa.org/17/players/199550.png', 79, 11.5, 2, 71, 40, 75, 69, 34, 53, 30, 38, 69, 64, 58, 63, 53, 70, 64, 56, 58, 77, 85, 40, 86, 78, 42, 35, 38, 66, 78, 83, 78, 11, 9, 7, 15, 6),
(567, 'Erik Pieters', 'DEF', 'Stoke City', 'https://cdn.sofifa.org/17/players/178567.png', 75, 3.3, 2, 58, 32, 73, 75, 34, 64, 67, 56, 60, 73, 67, 69, 65, 71, 57, 51, 68, 78, 76, 36, 85, 76, 61, 62, 65, 67, 77, 80, 81, 16, 15, 8, 12, 10),
(568, 'Geoff Cameron', 'MID', 'Stoke City', 'https://cdn.sofifa.org/17/players/186672.png', 76, 3.8, 2, 60, 54, 73, 73, 56, 69, 60, 60, 66, 70, 68, 69, 76, 71, 53, 65, 77, 79, 75, 59, 77, 78, 62, 72, 63, 80, 77, 81, 77, 7, 16, 6, 10, 14),
(569, 'Marko Arnautović', 'MID', 'Stoke City', 'https://cdn.sofifa.org/17/players/184200.png', 82, 20, 4, 83, 75, 72, 79, 79, 84, 79, 74, 74, 85, 80, 79, 76, 73, 57, 78, 68, 79, 85, 71, 73, 53, 80, 81, 78, 77, 49, 60, 30, 14, 15, 10, 10, 15),
(570, 'Xherdan Shaqiri', 'MID', 'Stoke City', 'https://cdn.sofifa.org/17/players/193348.png', 82, 25, 4, 74, 74, 37, 80, 76, 84, 82, 78, 75, 83, 89, 84, 87, 79, 94, 84, 63, 78, 73, 78, 64, 65, 77, 79, 65, 79, 51, 52, 53, 13, 12, 12, 11, 11),
(571, 'Peter Crouch', 'FWD', 'Stoke City', 'https://cdn.sofifa.org/17/players/51257.png', 75, 1.6, 3, 59, 75, 83, 76, 80, 62, 57, 50, 63, 77, 47, 49, 56, 78, 29, 75, 34, 70, 74, 70, 70, 23, 80, 74, 74, 78, 31, 26, 20, 13, 14, 7, 10, 14),
(572, 'Mame Diouf', 'FWD', 'Stoke City', 'https://cdn.sofifa.org/17/players/187084.png', 78, 8.5, 3, 62, 80, 87, 67, 71, 65, 32, 36, 31, 70, 88, 87, 75, 76, 68, 80, 91, 79, 78, 64, 70, 51, 78, 60, 75, 73, 42, 29, 21, 1, 1, 1, 1, 1),
(573, 'Joe Allen', 'MID', 'Stoke City', 'https://cdn.sofifa.org/17/players/184716.png', 77, 8, 3, 68, 68, 44, 82, 38, 75, 58, 50, 75, 77, 67, 63, 79, 82, 91, 63, 78, 86, 58, 60, 74, 76, 69, 72, 52, 81, 68, 77, 70, 10, 13, 12, 6, 8),
(574, 'Saido Berahino', 'FWD', 'Stoke City', 'https://cdn.sofifa.org/17/players/204289.png', 76, 7.5, 3, 51, 80, 67, 62, 68, 76, 63, 61, 55, 77, 85, 80, 74, 71, 71, 81, 62, 64, 62, 68, 47, 33, 79, 54, 73, 72, 20, 18, 23, 7, 11, 14, 10, 15),
(575, 'Jonathan Walters', 'FWD', 'Stoke City', 'https://cdn.sofifa.org/17/players/138436.png', 75, 3.3, 3, 75, 75, 76, 72, 67, 72, 64, 56, 61, 73, 67, 68, 76, 77, 68, 75, 76, 91, 84, 69, 81, 61, 75, 69, 74, 73, 61, 56, 44, 8, 14, 7, 10, 6),
(576, 'Ramadan Sobhi', 'FWD', 'Stoke City', 'https://cdn.sofifa.org/17/players/233601.png', 73, 4.5, 4, 70, 60, 59, 77, 61, 78, 63, 63, 65, 79, 79, 77, 73, 55, 66, 62, 51, 68, 56, 65, 54, 33, 74, 74, 65, 76, 43, 44, 46, 12, 13, 15, 12, 10),
(577, 'Charlie Adam', 'MID', 'Stoke City', 'https://cdn.sofifa.org/17/players/155976.png', 76, 4.7, 3, 82, 74, 69, 81, 75, 72, 79, 76, 81, 76, 55, 46, 59, 73, 66, 85, 62, 65, 77, 81, 88, 56, 77, 81, 83, 74, 58, 61, 57, 8, 7, 9, 6, 6),
(578, 'Phil Bardsley', 'DEF', 'Stoke City', 'https://cdn.sofifa.org/17/players/163261.png', 73, 1.8, 2, 65, 47, 67, 68, 43, 61, 66, 33, 62, 67, 67, 67, 68, 74, 62, 83, 75, 78, 74, 66, 85, 67, 58, 35, 56, 67, 74, 76, 79, 11, 8, 9, 9, 8),
(579, 'Jack Butland', 'GK', 'Stoke City', 'https://cdn.sofifa.org/17/players/203042.png', 82, 24.5, 1, 11, 16, 12, 36, 12, 21, 12, 14, 40, 26, 51, 45, 55, 73, 55, 29, 61, 35, 59, 13, 32, 27, 16, 31, 42, 59, 16, 13, 11, 81, 83, 73, 79, 85),
(580, 'Marc Muniesa Martínez', 'DEF', 'Stoke City', 'https://cdn.sofifa.org/17/players/192766.png', 76, 6, 2, 67, 42, 70, 72, 32, 63, 66, 40, 56, 73, 54, 68, 62, 70, 66, 46, 83, 74, 68, 37, 78, 78, 61, 61, 50, 74, 74, 78, 77, 14, 12, 16, 15, 10),
(581, 'Shay Given', 'GK', 'Stoke City', 'https://cdn.sofifa.org/17/players/2651.png', 73, 0.5, 1, 12, 14, 13, 38, 20, 13, 20, 13, 33, 24, 39, 44, 45, 74, 54, 42, 73, 29, 57, 12, 43, 27, 13, 31, 44, 67, 14, 11, 12, 69, 72, 72, 76, 70),
(582, 'Giannelli Imbula', 'MID', 'Stoke City', 'https://cdn.sofifa.org/17/players/197681.png', 79, 13.5, 3, 62, 51, 62, 83, 28, 82, 65, 38, 76, 81, 79, 75, 75, 75, 74, 79, 72, 82, 72, 77, 65, 71, 75, 76, 29, 84, 65, 72, 68, 6, 11, 12, 14, 7),
(583, 'Thibaud Verlinden', 'MID', 'Stoke City', 'https://cdn.sofifa.org/17/players/237337.png', 60, 0.35, 3, 61, 47, 45, 54, 53, 73, 55, 42, 51, 66, 60, 69, 57, 44, 81, 69, 46, 50, 39, 48, 39, 20, 46, 58, 70, 52, 35, 37, 49, 9, 7, 10, 15, 12),
(584, 'Julien Ngoy', 'FWD', 'Stoke City', 'https://cdn.sofifa.org/17/players/236464.png', 63, 0.575, 3, 48, 70, 66, 51, 44, 51, 41, 43, 41, 60, 82, 80, 52, 55, 68, 56, 61, 59, 64, 55, 33, 17, 58, 54, 66, 53, 16, 18, 22, 14, 5, 12, 11, 10),
(585, 'Stephen Ireland', 'MID', 'Stoke City', 'https://cdn.sofifa.org/17/players/170570.png', 74, 3.2, 3, 63, 68, 42, 77, 80, 72, 71, 60, 64, 75, 65, 55, 76, 76, 78, 62, 60, 68, 57, 64, 60, 54, 77, 78, 66, 78, 38, 48, 50, 16, 9, 10, 11, 14),
(586, 'Wilfried Bony', 'FWD', 'Stoke City', 'https://cdn.sofifa.org/17/players/189963.png', 80, 15, 3, 45, 80, 84, 68, 76, 72, 66, 58, 45, 75, 69, 72, 67, 75, 72, 83, 86, 78, 92, 78, 70, 38, 83, 65, 77, 79, 25, 42, 28, 10, 8, 5, 7, 11),
(587, 'Ibrahim Afellay', 'MID', 'Stoke City', 'https://cdn.sofifa.org/17/players/158372.png', 79, 9.5, 4, 78, 71, 46, 81, 72, 80, 79, 75, 74, 82, 77, 77, 77, 75, 79, 75, 75, 71, 63, 76, 59, 58, 73, 76, 70, 78, 36, 67, 58, 14, 7, 10, 12, 8),
(588, 'Daniel Bachmann', 'GK', 'Stoke City', 'https://cdn.sofifa.org/17/players/209532.png', 62, 0.4, 1, 14, 17, 12, 36, 23, 14, 18, 20, 35, 22, 50, 55, 60, 69, 44, 21, 57, 36, 64, 15, 31, 26, 13, 20, 31, 22, 16, 11, 11, 60, 58, 54, 60, 65),
(589, 'Eddy Lecygne', 'MID', 'Stoke City', 'https://cdn.sofifa.org/17/players/228407.png', 60, 0.26, 2, 44, 42, 58, 67, 51, 58, 46, 47, 63, 62, 55, 68, 67, 58, 68, 54, 64, 54, 56, 47, 59, 51, 62, 57, 53, 45, 49, 47, 54, 11, 16, 14, 10, 10),
(590, 'Tom Edwards', 'DEF', 'Stoke City', 'https://cdn.sofifa.org/17/players/238319.png', 60, 0.325, 2, 56, 40, 55, 41, 32, 70, 36, 43, 37, 50, 68, 57, 59, 58, 44, 37, 60, 55, 47, 48, 57, 57, 48, 43, 50, 36, 58, 67, 69, 10, 14, 13, 6, 7),
(591, 'Harry Isted', 'GK', 'Stoke City', 'https://cdn.sofifa.org/17/players/222503.png', 56, 0.19, 1, 16, 14, 18, 29, 17, 16, 13, 14, 26, 24, 40, 48, 32, 55, 54, 24, 52, 38, 55, 21, 28, 23, 15, 20, 31, 24, 16, 14, 18, 60, 54, 54, 50, 57),
(592, 'Dom Telford', 'FWD', 'Stoke City', 'https://cdn.sofifa.org/17/players/224887.png', 56, 0.17, 2, 33, 63, 53, 49, 42, 44, 41, 29, 29, 54, 76, 73, 57, 48, 73, 62, 64, 50, 43, 63, 30, 12, 48, 47, 68, 57, 15, 13, 12, 13, 13, 15, 13, 16),
(593, 'Eldin Jakupović', 'GK', 'Hull City', 'https://cdn.sofifa.org/17/players/52326.png', 70, 1.1, 1, 11, 12, 12, 39, 22, 11, 11, 14, 34, 22, 46, 47, 38, 59, 45, 25, 66, 31, 62, 11, 45, 24, 11, 50, 22, 67, 13, 12, 11, 69, 70, 65, 69, 73),
(594, 'Ahmed Elmohamady', 'DEF', 'Hull City', 'https://cdn.sofifa.org/17/players/191005.png', 74, 2.6, 3, 78, 65, 70, 77, 60, 75, 75, 71, 69, 73, 77, 78, 72, 73, 63, 74, 81, 83, 70, 67, 59, 69, 69, 67, 59, 72, 69, 69, 67, 14, 7, 9, 10, 7),
(595, 'Harry Maguire', 'DEF', 'Hull City', 'https://cdn.sofifa.org/17/players/203263.png', 74, 4.3, 2, 41, 30, 73, 67, 27, 60, 29, 46, 65, 59, 43, 54, 38, 56, 59, 54, 70, 72, 88, 34, 75, 70, 46, 50, 40, 61, 72, 77, 73, 14, 16, 9, 14, 9),
(596, 'Andrea Ranocchia', 'DEF', 'Hull City', 'https://cdn.sofifa.org/17/players/182168.png', 75, 3.6, 2, 45, 22, 75, 65, 24, 58, 30, 34, 65, 67, 52, 54, 48, 60, 32, 59, 74, 66, 82, 31, 63, 79, 24, 59, 34, 68, 76, 80, 76, 12, 15, 11, 12, 15),
(597, 'Lazar Marković', 'MID', 'Hull City', 'https://cdn.sofifa.org/17/players/212125.png', 76, 7, 4, 67, 65, 58, 71, 68, 84, 79, 62, 57, 82, 91, 92, 88, 73, 82, 65, 66, 60, 56, 60, 41, 49, 73, 73, 70, 78, 30, 39, 36, 8, 9, 15, 6, 7),
(598, 'Alfred N''Diaye', 'MID', 'Hull City', 'https://cdn.sofifa.org/17/players/188879.png', 78, 8.5, 2, 58, 46, 55, 76, 31, 65, 36, 32, 70, 74, 66, 77, 60, 74, 57, 73, 62, 81, 93, 63, 85, 80, 46, 61, 54, 65, 75, 83, 75, 11, 7, 13, 15, 10),
(599, 'Andrew Robertson', 'DEF', 'Hull City', 'https://cdn.sofifa.org/17/players/216267.png', 74, 4.3, 2, 78, 60, 67, 68, 32, 71, 70, 30, 59, 74, 79, 85, 83, 71, 72, 67, 55, 81, 68, 61, 69, 70, 64, 69, 55, 67, 71, 73, 69, 11, 8, 10, 7, 14),
(600, 'Liam Edwards', 'DEF', 'Stoke City', 'https://cdn.sofifa.org/17/players/229779.png', 59, 0.29, 2, 34, 25, 56, 43, 35, 37, 33, 33, 35, 36, 55, 55, 41, 49, 58, 48, 68, 63, 55, 23, 54, 58, 25, 33, 41, 49, 61, 67, 66, 13, 12, 13, 10, 8),
(601, 'Mark Waddington', 'MID', 'Stoke City', 'https://cdn.sofifa.org/17/players/221545.png', 54, 0.09, 2, 48, 43, 47, 70, 42, 51, 48, 42, 66, 52, 65, 67, 58, 49, 66, 56, 53, 34, 58, 42, 40, 29, 50, 51, 51, 57, 35, 47, 51, 11, 9, 14, 14, 8),
(602, 'Evandro Goebel', 'MID', 'Hull City', 'https://cdn.sofifa.org/17/players/166080.png', 74, 3.1, 3, 73, 67, 62, 76, 70, 78, 69, 74, 73, 80, 68, 64, 76, 74, 74, 73, 64, 64, 60, 73, 61, 61, 75, 80, 79, 78, 42, 48, 34, 10, 6, 9, 10, 15),
(603, 'Oumar Niasse', 'FWD', 'Hull City', 'https://cdn.sofifa.org/17/players/208339.png', 75, 4.8, 2, 56, 75, 74, 64, 74, 73, 63, 39, 35, 72, 86, 76, 72, 70, 68, 76, 70, 78, 77, 71, 56, 35, 75, 63, 67, 69, 20, 23, 24, 16, 6, 12, 10, 8),
(604, 'Kamil Grosicki', 'MID', 'Hull City', 'https://cdn.sofifa.org/17/players/177922.png', 77, 6.5, 3, 79, 75, 69, 75, 69, 76, 64, 55, 72, 78, 85, 90, 80, 70, 70, 79, 62, 62, 64, 74, 43, 48, 75, 70, 69, 68, 15, 29, 20, 16, 10, 15, 14, 11),
(605, 'Sam Clucas', 'MID', 'Hull City', 'https://cdn.sofifa.org/17/players/193884.png', 68, 1, 3, 67, 65, 60, 68, 64, 70, 64, 65, 64, 69, 69, 75, 64, 59, 61, 64, 70, 91, 63, 66, 56, 61, 62, 68, 65, 68, 56, 59, 56, 6, 9, 9, 8, 6),
(606, 'Tom Huddlestone', 'MID', 'Hull City', 'https://cdn.sofifa.org/17/players/54033.png', 76, 4.9, 3, 76, 60, 72, 81, 79, 68, 68, 74, 79, 82, 34, 50, 34, 73, 44, 89, 57, 46, 87, 75, 77, 74, 63, 84, 72, 80, 70, 68, 66, 10, 7, 11, 9, 11),
(607, 'Dieumerci Mbokani', 'FWD', 'Hull City', 'https://cdn.sofifa.org/17/players/177392.png', 78, 8, 3, 46, 77, 79, 73, 72, 73, 48, 46, 53, 74, 76, 81, 83, 75, 66, 80, 83, 78, 83, 68, 68, 35, 76, 69, 72, 80, 16, 36, 28, 8, 6, 9, 10, 12),
(608, 'Markus Henriksen', 'MID', 'Hull City', 'https://cdn.sofifa.org/17/players/190549.png', 75, 5.5, 3, 65, 76, 72, 76, 68, 71, 47, 56, 65, 77, 62, 68, 66, 77, 60, 83, 84, 88, 78, 76, 76, 64, 73, 76, 63, 78, 64, 67, 62, 16, 15, 13, 10, 14),
(609, 'Abel Hernández', 'FWD', 'Hull City', 'https://cdn.sofifa.org/17/players/188484.png', 75, 4.5, 3, 46, 73, 73, 65, 74, 74, 78, 60, 47, 74, 87, 85, 84, 74, 68, 73, 74, 71, 80, 68, 59, 24, 74, 57, 79, 74, 19, 29, 21, 14, 6, 8, 6, 9),
(610, 'Michael Dawson', 'DEF', 'Hull City', 'https://cdn.sofifa.org/17/players/120312.png', 76, 3.1, 2, 19, 25, 81, 56, 23, 17, 23, 11, 73, 57, 32, 30, 50, 72, 54, 62, 79, 66, 80, 21, 80, 74, 35, 43, 44, 72, 78, 80, 77, 8, 6, 6, 13, 15),
(611, 'Shaun Maloney', 'MID', 'Hull City', 'https://cdn.sofifa.org/17/players/49036.png', 73, 1.9, 3, 72, 66, 60, 76, 65, 77, 71, 76, 65, 75, 69, 66, 76, 70, 81, 68, 65, 68, 55, 71, 58, 49, 68, 71, 75, 72, 19, 43, 32, 6, 14, 10, 8, 14),
(612, 'Josh Tymon', 'DEF', 'Hull City', 'https://cdn.sofifa.org/17/players/232759.png', 60, 0.325, 2, 55, 25, 41, 55, 28, 62, 47, 29, 40, 60, 66, 71, 59, 54, 73, 25, 58, 60, 44, 33, 59, 59, 37, 37, 40, 40, 59, 61, 59, 13, 13, 9, 12, 11),
(613, 'Curtis Davies', 'DEF', 'Hull City', 'https://cdn.sofifa.org/17/players/163761.png', 77, 4.5, 2, 25, 35, 78, 59, 33, 43, 26, 25, 55, 65, 68, 68, 62, 75, 56, 49, 80, 73, 84, 34, 68, 79, 42, 56, 33, 71, 77, 79, 77, 7, 9, 10, 15, 10),
(614, 'David Marshall', 'GK', 'Hull City', 'https://cdn.sofifa.org/17/players/140498.png', 75, 3.2, 1, 11, 19, 14, 21, 15, 14, 19, 14, 30, 21, 48, 50, 33, 73, 41, 22, 63, 34, 63, 12, 41, 24, 13, 42, 11, 67, 13, 14, 13, 76, 72, 67, 74, 75),
(615, 'Adama Valentin Diomande', 'FWD', 'Hull City', 'https://cdn.sofifa.org/17/players/188107.png', 71, 1.9, 2, 41, 71, 63, 53, 64, 70, 50, 35, 29, 69, 86, 78, 82, 69, 75, 72, 82, 70, 84, 66, 71, 33, 67, 44, 69, 68, 15, 17, 12, 12, 7, 10, 13, 14),
(616, 'Jarrod Bowen', 'FWD', 'Hull City', 'https://cdn.sofifa.org/17/players/224371.png', 58, 0.24, 2, 42, 57, 62, 53, 45, 57, 43, 44, 41, 56, 65, 66, 68, 56, 70, 51, 60, 58, 61, 50, 42, 18, 53, 57, 61, 51, 21, 24, 24, 14, 8, 14, 10, 7),
(617, 'Omar Elabdellaoui', 'DEF', 'Hull City', 'https://cdn.sofifa.org/17/players/190824.png', 74, 3.7, 3, 73, 42, 60, 73, 55, 75, 72, 60, 68, 74, 85, 82, 83, 71, 79, 72, 60, 80, 66, 66, 70, 69, 75, 69, 42, 66, 71, 72, 72, 8, 11, 12, 6, 6),
(618, 'David Meyler', 'MID', 'Hull City', 'https://cdn.sofifa.org/17/players/187489.png', 71, 1.8, 2, 66, 63, 71, 73, 63, 70, 50, 54, 72, 73, 54, 55, 58, 73, 58, 70, 70, 81, 78, 60, 86, 65, 65, 66, 47, 75, 61, 68, 60, 13, 9, 14, 15, 12);
INSERT INTO `player` (`ID`, `name`, `position`, `club`, `photo`, `overall`, `value`, `skills`, `crossing`, `finishing`, `heading`, `short_passing`, `volleys`, `dribbling`, `curve`, `free_kicks`, `long_passing`, `ball_controll`, `acceleration`, `sprint_speed`, `agility`, `reactions`, `balance`, `shot_power`, `jumping`, `stamina`, `strength`, `long_shots`, `aggression`, `interceptions`, `positioning`, `vision`, `penalties`, `composure`, `marking`, `stand_tackle`, `slide_tackle`, `GK_diving`, `GK_handling`, `GK_kicking`, `GK_positioning`, `GK_reflexes`) VALUES
(619, 'Will Keane', 'FWD', 'Hull City', 'https://cdn.sofifa.org/17/players/201911.png', 67, 0.975, 3, 40, 65, 62, 68, 62, 68, 48, 47, 51, 70, 75, 74, 73, 55, 63, 73, 64, 63, 62, 61, 55, 39, 64, 56, 67, 66, 32, 28, 20, 10, 11, 15, 11, 6),
(620, 'Will Mannion', 'GK', 'Hull City', 'https://cdn.sofifa.org/17/players/231681.png', 51, 0.07, 1, 14, 15, 11, 18, 14, 15, 13, 11, 21, 20, 33, 38, 32, 52, 54, 22, 52, 18, 44, 11, 17, 14, 15, 21, 22, 30, 14, 13, 12, 52, 48, 45, 48, 51),
(621, 'Moses Odubajo', 'DEF', 'Hull City', 'https://cdn.sofifa.org/17/players/202113.png', 72, 2.5, 3, 61, 61, 63, 66, 31, 70, 47, 42, 62, 68, 83, 90, 83, 63, 77, 64, 81, 79, 75, 65, 70, 67, 60, 68, 51, 66, 70, 73, 70, 14, 10, 6, 13, 14),
(622, 'Ryan Mason', 'MID', 'Hull City', 'https://cdn.sofifa.org/17/players/190683.png', 74, 3.5, 3, 70, 64, 55, 79, 64, 72, 70, 66, 75, 74, 69, 68, 74, 73, 77, 72, 48, 80, 61, 72, 79, 69, 74, 74, 69, 71, 70, 73, 69, 7, 10, 10, 16, 14),
(623, 'Daniel Batty', 'MID', 'Hull City', 'https://cdn.sofifa.org/17/players/236043.png', 56, 0.17, 3, 50, 38, 60, 58, 50, 55, 45, 39, 54, 55, 63, 67, 51, 56, 68, 60, 63, 55, 54, 45, 65, 50, 63, 56, 50, 48, 55, 58, 56, 9, 12, 10, 7, 12),
(624, 'Łukasz Fabiański', 'GK', 'Swansea City', 'https://cdn.sofifa.org/17/players/164835.png', 80, 11, 1, 14, 13, 11, 20, 17, 14, 18, 12, 32, 22, 50, 47, 52, 71, 44, 14, 68, 25, 65, 20, 43, 16, 15, 52, 22, 63, 11, 12, 13, 77, 84, 70, 78, 84),
(625, 'Ben Hinchliffe', 'FWD', 'Hull City', 'https://cdn.sofifa.org/17/players/236041.png', 59, 0.3, 2, 54, 53, 60, 58, 50, 55, 51, 49, 43, 56, 64, 57, 53, 61, 72, 60, 66, 57, 52, 54, 36, 15, 63, 49, 50, 56, 20, 14, 15, 12, 8, 12, 14, 14),
(626, 'Federico Fernández', 'DEF', 'Swansea City', 'https://cdn.sofifa.org/17/players/201988.png', 79, 8.5, 2, 23, 26, 80, 70, 21, 39, 49, 42, 56, 66, 54, 53, 48, 72, 48, 27, 76, 68, 79, 29, 78, 82, 36, 44, 42, 72, 82, 79, 78, 12, 12, 13, 14, 12),
(627, 'Kyle Naughton', 'DEF', 'Swansea City', 'https://cdn.sofifa.org/17/players/186598.png', 75, 3.3, 3, 71, 45, 70, 73, 52, 64, 43, 28, 66, 68, 76, 75, 71, 70, 71, 68, 73, 74, 68, 52, 68, 73, 54, 59, 47, 69, 71, 78, 79, 12, 10, 9, 9, 11),
(628, 'Brian Lenihan', 'DEF', 'Hull City', 'https://cdn.sofifa.org/17/players/210317.png', 63, 0.475, 2, 62, 43, 49, 67, 46, 59, 56, 38, 58, 64, 64, 63, 49, 55, 51, 55, 61, 63, 58, 52, 62, 62, 57, 51, 39, 55, 63, 67, 60, 9, 15, 9, 10, 12),
(629, 'Ellis Barkworth', 'DEF', 'Hull City', 'https://cdn.sofifa.org/17/players/236042.png', 58, 0.23, 2, 44, 40, 63, 58, 41, 54, 48, 50, 53, 56, 61, 59, 57, 55, 56, 50, 58, 53, 62, 42, 66, 52, 39, 45, 57, 45, 57, 52, 56, 6, 9, 8, 6, 7),
(630, 'Greg Olley', 'MID', 'Hull City', 'https://cdn.sofifa.org/17/players/229613.png', 50, 0.06, 2, 47, 31, 53, 57, 40, 51, 41, 34, 46, 39, 55, 60, 57, 48, 66, 53, 63, 58, 62, 41, 49, 42, 48, 50, 47, 39, 42, 47, 46, 10, 6, 10, 15, 7),
(631, 'Jack Cork', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/169706.png', 78, 8, 2, 57, 54, 71, 80, 60, 73, 39, 24, 78, 77, 64, 55, 63, 77, 71, 57, 72, 83, 72, 50, 70, 80, 65, 74, 47, 80, 71, 78, 76, 13, 11, 16, 6, 6),
(632, 'Wayne Routledge', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/54051.png', 76, 4.3, 4, 74, 69, 34, 73, 71, 83, 61, 28, 72, 77, 71, 74, 82, 73, 87, 68, 71, 69, 73, 55, 36, 39, 72, 74, 63, 69, 30, 37, 46, 15, 11, 8, 10, 15),
(633, 'Fernando Javier Llorente Torres', 'FWD', 'Swansea City', 'https://cdn.sofifa.org/17/players/162131.png', 79, 9, 2, 44, 78, 90, 71, 80, 67, 57, 40, 49, 77, 52, 57, 40, 80, 33, 79, 56, 63, 91, 64, 71, 25, 85, 70, 70, 84, 15, 25, 15, 2, 2, 3, 4, 2),
(634, 'Leroy Fer', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/186351.png', 77, 8, 3, 68, 71, 80, 79, 66, 78, 49, 44, 76, 75, 74, 76, 73, 73, 51, 85, 90, 92, 73, 78, 80, 70, 75, 73, 72, 72, 66, 70, 69, 9, 8, 14, 16, 14),
(635, 'Alfie Mawson', 'DEF', 'Swansea City', 'https://cdn.sofifa.org/17/players/208534.png', 71, 2.5, 2, 23, 52, 76, 59, 45, 47, 22, 24, 52, 60, 55, 58, 50, 64, 51, 53, 78, 60, 80, 21, 67, 71, 25, 26, 32, 67, 72, 70, 69, 14, 12, 12, 14, 10),
(636, 'Gylfi Sigurðsson', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/184484.png', 82, 23.5, 3, 82, 81, 60, 83, 75, 78, 86, 88, 77, 82, 67, 69, 72, 77, 62, 82, 70, 83, 67, 83, 57, 37, 80, 84, 80, 80, 55, 58, 57, 13, 8, 10, 15, 12),
(637, 'Tom Carroll', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/202491.png', 73, 3.8, 3, 60, 57, 46, 83, 58, 65, 66, 65, 76, 75, 69, 68, 79, 69, 74, 59, 45, 72, 33, 58, 47, 55, 67, 75, 56, 67, 53, 54, 47, 11, 10, 11, 9, 11),
(638, 'Jordan Ayew', 'FWD', 'Swansea City', 'https://cdn.sofifa.org/17/players/197756.png', 76, 7, 4, 70, 73, 76, 74, 74, 80, 77, 71, 60, 78, 77, 77, 81, 76, 72, 76, 72, 74, 74, 74, 75, 35, 72, 70, 74, 70, 23, 22, 25, 6, 8, 7, 16, 8),
(639, 'Martin Olsson', 'DEF', 'Swansea City', 'https://cdn.sofifa.org/17/players/184472.png', 75, 3.1, 3, 69, 55, 64, 69, 65, 72, 64, 53, 66, 70, 79, 86, 74, 73, 65, 75, 71, 88, 72, 64, 74, 69, 69, 66, 49, 71, 74, 76, 73, 11, 9, 7, 9, 12),
(640, 'Jefferson Montero', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/186805.png', 78, 8.5, 4, 74, 65, 50, 74, 64, 83, 76, 64, 70, 80, 91, 90, 84, 70, 85, 76, 69, 79, 68, 68, 40, 25, 73, 73, 68, 81, 24, 38, 20, 11, 11, 12, 15, 12),
(641, 'Jordi Amat Maas', 'DEF', 'Swansea City', 'https://cdn.sofifa.org/17/players/198198.png', 77, 8, 2, 31, 34, 74, 68, 28, 50, 40, 36, 52, 65, 63, 72, 59, 70, 58, 75, 78, 68, 79, 65, 82, 71, 30, 59, 28, 63, 78, 77, 80, 9, 6, 7, 16, 8),
(642, 'Sung Yueng Ki', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/180283.png', 78, 8.5, 3, 74, 73, 71, 86, 55, 77, 76, 77, 81, 81, 64, 68, 70, 67, 59, 83, 70, 72, 72, 73, 66, 54, 75, 82, 76, 84, 55, 70, 71, 14, 9, 7, 9, 10),
(643, 'Luciano Narsingh', 'FWD', 'Swansea City', 'https://cdn.sofifa.org/17/players/192362.png', 76, 5.5, 4, 76, 70, 40, 71, 62, 76, 69, 59, 42, 76, 93, 93, 82, 74, 77, 65, 34, 74, 65, 54, 28, 20, 73, 72, 58, 71, 19, 28, 22, 10, 8, 14, 8, 6),
(644, 'Stephen Kingsley', 'DEF', 'Swansea City', 'https://cdn.sofifa.org/17/players/223747.png', 70, 2, 2, 74, 33, 58, 67, 25, 69, 73, 68, 55, 67, 74, 73, 76, 62, 74, 45, 79, 74, 61, 32, 60, 65, 67, 55, 46, 55, 70, 73, 70, 11, 6, 8, 14, 12),
(645, 'Kristoffer Nordfeldt', 'GK', 'Swansea City', 'https://cdn.sofifa.org/17/players/192129.png', 73, 2.8, 1, 11, 13, 13, 41, 11, 14, 20, 11, 26, 24, 55, 52, 58, 70, 46, 19, 83, 33, 74, 12, 24, 23, 15, 30, 13, 18, 13, 13, 15, 73, 66, 66, 74, 78),
(646, 'Nathan Dyer', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/173436.png', 76, 5, 4, 64, 75, 32, 74, 52, 80, 58, 42, 65, 77, 88, 84, 85, 67, 95, 75, 70, 80, 56, 74, 69, 35, 73, 66, 70, 67, 33, 45, 48, 12, 11, 14, 8, 16),
(647, 'Àngel Rangel Zaragoza', 'DEF', 'Swansea City', 'https://cdn.sofifa.org/17/players/153938.png', 76, 2.2, 3, 80, 56, 76, 70, 43, 73, 63, 57, 71, 75, 64, 55, 68, 75, 55, 66, 75, 75, 76, 59, 68, 82, 65, 71, 59, 80, 78, 80, 77, 13, 16, 8, 6, 6),
(648, 'Mike van der Hoorn', 'DEF', 'Swansea City', 'https://cdn.sofifa.org/17/players/207725.png', 74, 3.8, 2, 36, 42, 80, 57, 26, 45, 33, 31, 62, 54, 40, 66, 37, 62, 40, 73, 83, 59, 85, 31, 64, 70, 40, 37, 40, 59, 75, 78, 70, 7, 11, 15, 10, 15),
(649, 'Leon Britton', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/140415.png', 77, 3.1, 3, 65, 55, 41, 85, 47, 76, 61, 58, 79, 81, 52, 54, 77, 78, 91, 51, 70, 70, 58, 48, 77, 73, 55, 82, 59, 86, 70, 75, 69, 10, 16, 7, 7, 15),
(650, 'Jay Fulton', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/221890.png', 67, 1.1, 2, 54, 52, 76, 73, 45, 63, 49, 33, 67, 72, 69, 68, 70, 57, 64, 67, 57, 69, 76, 50, 75, 66, 57, 64, 51, 67, 70, 71, 73, 11, 11, 8, 11, 7),
(651, 'Gerhard Tremmel', 'GK', 'Swansea City', 'https://cdn.sofifa.org/17/players/29183.png', 71, 0.5, 1, 12, 15, 14, 23, 13, 14, 15, 13, 22, 24, 42, 46, 34, 74, 39, 14, 68, 30, 69, 11, 41, 25, 12, 11, 41, 61, 13, 12, 13, 70, 69, 61, 71, 72),
(652, 'Borja González Tomás', 'FWD', 'Swansea City', 'https://cdn.sofifa.org/17/players/194996.png', 78, 11.5, 2, 51, 78, 77, 66, 80, 69, 68, 46, 44, 80, 58, 67, 61, 78, 41, 81, 56, 60, 89, 73, 61, 23, 83, 65, 72, 70, 14, 32, 24, 6, 9, 10, 9, 13),
(653, 'Ryan Blair', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/232544.png', 58, 0.29, 3, 53, 52, 52, 64, 55, 61, 54, 50, 60, 65, 64, 60, 59, 56, 59, 66, 57, 53, 62, 45, 40, 30, 55, 55, 64, 61, 42, 52, 55, 7, 15, 7, 11, 8),
(654, 'Adam King', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/212388.png', 59, 0.28, 2, 43, 54, 48, 66, 37, 58, 42, 41, 61, 59, 68, 70, 70, 57, 75, 66, 67, 65, 56, 47, 64, 40, 56, 54, 47, 43, 39, 50, 49, 7, 7, 12, 13, 16),
(655, 'Daniel James', 'FWD', 'Swansea City', 'https://cdn.sofifa.org/17/players/232104.png', 60, 0.4, 3, 56, 58, 44, 54, 50, 66, 48, 44, 43, 59, 83, 81, 75, 42, 71, 71, 53, 51, 56, 40, 39, 21, 52, 54, 55, 49, 25, 27, 31, 7, 6, 11, 15, 9),
(656, 'Oliver McBurnie', 'FWD', 'Swansea City', 'https://cdn.sofifa.org/17/players/220031.png', 62, 0.625, 2, 36, 65, 62, 52, 50, 50, 42, 31, 37, 54, 71, 69, 59, 61, 62, 66, 66, 72, 65, 54, 27, 21, 61, 48, 59, 49, 12, 19, 14, 13, 11, 12, 13, 13),
(657, 'George Byers', 'MID', 'Swansea City', 'https://cdn.sofifa.org/17/players/224855.png', 54, 0.16, 2, 11, 43, 41, 68, 45, 54, 48, 47, 64, 53, 55, 68, 58, 54, 69, 55, 57, 48, 56, 42, 40, 27, 45, 48, 53, 60, 34, 39, 53, 15, 10, 10, 16, 8),
(658, 'Kenji Gorré', 'FWD', 'Swansea City', 'https://cdn.sofifa.org/17/players/213694.png', 65, 0.775, 3, 59, 60, 40, 63, 53, 68, 64, 36, 50, 67, 75, 68, 72, 66, 65, 72, 45, 55, 67, 66, 43, 36, 62, 62, 52, 50, 30, 36, 33, 7, 16, 8, 13, 10),
(659, 'Mark Birighitti', 'GK', 'Swansea City', 'https://cdn.sofifa.org/17/players/188278.png', 68, 0.95, 1, 12, 11, 11, 29, 15, 13, 12, 11, 17, 16, 46, 50, 67, 59, 41, 19, 67, 32, 62, 12, 33, 23, 9, 33, 14, 31, 11, 14, 14, 70, 65, 64, 67, 73),
(660, 'Connor Roberts', 'DEF', 'Swansea City', 'https://cdn.sofifa.org/17/players/225147.png', 60, 0.375, 2, 59, 32, 51, 54, 14, 55, 34, 18, 49, 55, 70, 70, 71, 50, 70, 36, 59, 65, 55, 19, 58, 58, 44, 42, 41, 44, 56, 60, 59, 6, 12, 8, 12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
`ID` int(11) unsigned NOT NULL,
  `ID_user` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `budget` float NOT NULL DEFAULT '350',
  `value` float NOT NULL DEFAULT '0',
  `transfers` int(3) NOT NULL DEFAULT '15',
  `formation` enum('4-3-3','4-5-1','4-4-2','3-5-2','5-3-2','5-4-1') NOT NULL DEFAULT '4-4-2',
  `is_playable` tinyint(4) NOT NULL DEFAULT '0',
  `gks` int(2) NOT NULL DEFAULT '0',
  `defs` int(2) NOT NULL DEFAULT '0',
  `mids` int(2) NOT NULL DEFAULT '0',
  `fwds` int(2) NOT NULL DEFAULT '0',
  `wins` int(3) NOT NULL DEFAULT '0',
  `draws` int(3) NOT NULL DEFAULT '0',
  `losses` int(3) NOT NULL DEFAULT '0',
  `points` int(3) NOT NULL DEFAULT '0',
  `goals_for` int(4) NOT NULL DEFAULT '0',
  `goals_against` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`ID`, `ID_user`, `name`, `budget`, `value`, `transfers`, `formation`, `is_playable`, `gks`, `defs`, `mids`, `fwds`, `wins`, `draws`, `losses`, `points`, `goals_for`, `goals_against`) VALUES
(20, 49, 'Teem', 0.85, 349.15, 12, '4-4-2', 1, 2, 5, 5, 3, 12, 10, 11, 46, 53, 40),
(21, 50, 'User team', 1.855, 348.145, 9, '4-3-3', 1, 2, 5, 5, 3, 9, 8, 11, 35, 39, 48),
(22, 51, 'Team :)', 1.55, 348.45, 3, '4-4-2', 1, 2, 5, 5, 3, 3, 1, 5, 10, 10, 19),
(23, 52, 'Fantasee', 11, 339, 5, '3-5-2', 1, 2, 5, 5, 3, 5, 0, 4, 15, 17, 13),
(24, 53, 'Winners', 1.06, 348.94, 3, '4-3-3', 1, 2, 5, 5, 3, 3, 8, 5, 17, 17, 23),
(25, 54, 'Hunters', 1.485, 348.515, 11, '4-5-1', 1, 2, 5, 5, 3, 11, 5, 6, 38, 35, 29),
(26, 55, 'Dornava Scorers', 56, 294, 8, '4-4-2', 1, 2, 5, 5, 3, 9, 7, 8, 34, 42, 34),
(27, 56, 'Marko Mlakar 5000', 161.4, 188.6, 3, '4-4-2', 1, 2, 5, 5, 3, 3, 1, 5, 10, 14, 21);

-- --------------------------------------------------------

--
-- Table structure for table `team_player`
--

CREATE TABLE IF NOT EXISTS `team_player` (
`ID` int(11) unsigned NOT NULL,
  `ID_team` int(11) NOT NULL,
  `ID_player` int(11) NOT NULL,
  `in_starting_XI` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=699 ;

--
-- Dumping data for table `team_player`
--

INSERT INTO `team_player` (`ID`, `ID_team`, `ID_player`, `in_starting_XI`) VALUES
(549, 20, 70, 1),
(550, 20, 86, 1),
(551, 20, 74, 1),
(552, 20, 480, 0),
(553, 20, 234, 1),
(554, 20, 67, 1),
(555, 20, 84, 1),
(556, 20, 368, 1),
(557, 20, 420, 0),
(558, 20, 243, 1),
(559, 20, 587, 1),
(560, 20, 640, 1),
(561, 20, 642, 0),
(562, 20, 100, 0),
(563, 20, 178, 1),
(564, 21, 176, 1),
(565, 21, 231, 1),
(566, 21, 620, 0),
(567, 21, 219, 1),
(568, 21, 6, 1),
(569, 21, 37, 1),
(570, 21, 104, 1),
(571, 21, 101, 0),
(572, 21, 72, 1),
(573, 21, 173, 1),
(574, 21, 81, 0),
(575, 21, 636, 1),
(576, 21, 162, 0),
(577, 21, 56, 1),
(578, 21, 308, 1),
(579, 22, 514, 1),
(580, 22, 659, 0),
(581, 22, 87, 1),
(582, 22, 90, 1),
(583, 22, 35, 1),
(584, 22, 15, 1),
(585, 22, 174, 0),
(586, 22, 570, 1),
(587, 22, 547, 1),
(588, 22, 107, 1),
(589, 22, 249, 1),
(590, 22, 416, 0),
(591, 22, 383, 0),
(592, 22, 144, 1),
(593, 22, 43, 1),
(594, 23, 108, 1),
(595, 23, 176, 1),
(596, 23, 13, 1),
(597, 23, 316, 1),
(598, 23, 92, 0),
(599, 23, 199, 0),
(600, 23, 386, 1),
(601, 23, 90, 0),
(602, 23, 170, 1),
(603, 23, 35, 1),
(604, 23, 182, 1),
(605, 23, 81, 1),
(606, 23, 121, 1),
(607, 23, 633, 1),
(608, 23, 572, 0),
(609, 24, 248, 1),
(610, 24, 231, 1),
(611, 24, 24, 1),
(612, 24, 76, 1),
(613, 24, 86, 1),
(614, 24, 486, 0),
(615, 24, 67, 1),
(616, 24, 234, 1),
(617, 24, 183, 0),
(618, 24, 2, 1),
(619, 24, 236, 1),
(620, 24, 602, 0),
(621, 24, 565, 0),
(622, 24, 649, 1),
(623, 24, 441, 1),
(624, 25, 74, 1),
(625, 25, 70, 1),
(626, 25, 86, 1),
(627, 25, 452, 0),
(628, 25, 219, 1),
(629, 25, 35, 1),
(630, 25, 168, 1),
(631, 25, 235, 1),
(632, 25, 254, 0),
(633, 25, 209, 1),
(634, 25, 377, 1),
(635, 25, 241, 1),
(636, 25, 58, 1),
(637, 25, 110, 0),
(638, 25, 259, 0),
(669, 26, 23, 1),
(670, 26, 361, 0),
(671, 26, 15, 0),
(672, 26, 236, 1),
(673, 26, 174, 1),
(674, 26, 254, 1),
(675, 26, 39, 1),
(676, 26, 173, 1),
(677, 26, 636, 1),
(678, 26, 143, 1),
(679, 26, 40, 1),
(680, 26, 107, 0),
(681, 26, 12, 0),
(682, 26, 308, 1),
(683, 26, 86, 1),
(684, 27, 99, 1),
(685, 27, 19, 0),
(686, 27, 566, 1),
(687, 27, 84, 1),
(688, 27, 368, 1),
(689, 27, 561, 1),
(690, 27, 117, 0),
(691, 27, 307, 0),
(692, 27, 241, 1),
(693, 27, 377, 1),
(694, 27, 209, 1),
(695, 27, 46, 1),
(696, 27, 412, 0),
(697, 27, 21, 1),
(698, 27, 313, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE IF NOT EXISTS `transfer` (
`ID` int(11) unsigned NOT NULL,
  `ID_player` int(11) NOT NULL,
  `ID_user` int(11) NOT NULL,
  `in_out` enum('out','in') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`ID` int(11) unsigned NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `email` varchar(260) NOT NULL,
  `prestige` int(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `username`, `password`, `email`, `prestige`) VALUES
(49, 'rok', '$2a$10$VJQLlWijIQazwc8MeNX8GeK3dlcxTREVI8DuN7EqBzl9n646.MEZK', 'rok@gmail.com', 0),
(50, 'user', '$2a$10$q/URTm7NnuZFc/J/9K34YepKkcQz5IZyK2fLX7qNL/O7hd/GjOtC6', 'user@gmail.com', 0),
(51, 'test:)', '$2a$10$2GogL59W5sFPjrRCUMJXwOhY/XdiCYX2iSLsj7d/VTVSeKQUzzNIu', 'test@gmail.com', 0),
(52, 'fanta', '$2a$10$ROX1tWc3t2DVcgPA1HGXU.FAlYK2sida1NukxJ6we1IdKfauGACT2', 'fantasy@gmail.com', 0),
(53, 'win', '$2a$10$Bmh5JQPrIVrjQTF0ICgc3ONdNZ9PDyxeKaL9eQOcX1noe/fSPLUP.', 'coke@cola.com', 0),
(54, 'mike_hunt', '$2a$10$4ZxWOGpyjmp3enTlKAvf3uugrDmqozIPQV75iwwKgZBZHAEyW8PC2', 'con@gmail.com', 0),
(55, 'Martin', '$2a$10$lhHHjoHOzh6avVdYA44FG.XMHAI0pCocBVnKGa9OZkzhuYsBMDbiO', 'martin@martin', 0),
(56, 'Marko', '$2a$10$.wv.2q7Cmb6ixlUFxxy8de0Qv9qDQdoIRf8Iixzso3dHuFZ2pSb.2', 'marko@marko', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fixture`
--
ALTER TABLE `fixture`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `league`
--
ALTER TABLE `league`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `league_fixture`
--
ALTER TABLE `league_fixture`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `league_user`
--
ALTER TABLE `league_user`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `team_player`
--
ALTER TABLE `team_player`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fixture`
--
ALTER TABLE `fixture`
MODIFY `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `league`
--
ALTER TABLE `league`
MODIFY `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `league_fixture`
--
ALTER TABLE `league_fixture`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `league_user`
--
ALTER TABLE `league_user`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=661;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
MODIFY `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `team_player`
--
ALTER TABLE `team_player`
MODIFY `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=699;
--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
MODIFY `ID` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
