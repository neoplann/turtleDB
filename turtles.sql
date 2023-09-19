-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 19, 2023 at 10:01 AM
-- Server version: 10.11.3-MariaDB-1
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `turtles`
--

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `ID` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `age` int(4) DEFAULT NULL,
  `status` varchar(21) DEFAULT NULL,
  `fraction` int(11) NOT NULL,
  `race` int(11) NOT NULL,
  `weapon` int(11) NOT NULL,
  `world` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`ID`, `name`, `age`, `status`, `fraction`, `race`, `weapon`, `world`) VALUES
(1, 'splinter', 69, 'ok', 0, 0, 0, 0),
(2, 'leonardo', 20, 'ok', 0, 0, 0, 0),
(3, 'raphael', 22, 'ok', 0, 0, 0, 0),
(4, 'donatello', 20, 'ok', 0, 0, 0, 0),
(5, 'michelangelo', 20, 'ok', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fraction`
--

CREATE TABLE `fraction` (
  `ID` int(11) NOT NULL,
  `fraction` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fraction`
--

INSERT INTO `fraction` (`ID`, `fraction`) VALUES
(1, 'badGuys'),
(2, 'good guys'),
(3, 'police');

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE `race` (
  `ID` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `world` varchar(30) DEFAULT NULL,
  `about` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `race`
--

INSERT INTO `race` (`ID`, `name`, `world`, `about`) VALUES
(1, 'mutants', 'earth', 'blah blah blah'),
(2, 'rats', 'dump', 'eat junk'),
(3, 'pizza', 'restaurant', 'italian food');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `login` varchar(15) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `login`, `pass`) VALUES
(1, 'amogusSUS', 'qwerty12345'),
(2, 'lmAO', '222333444qwer'),
(3, 'lmAO', '222333444qwer'),
(4, 'meIRL', 'meIRL329312');

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `ID` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `damage type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`ID`, `name`, `type`, `damage type`) VALUES
(1, 'katana', 'sword', 'melee'),
(2, 'BFG9000', 'plasma gun', 'pew pew'),
(3, 'hidden blade', 'dagger', 'ac2 weapon');

-- --------------------------------------------------------

--
-- Table structure for table `world`
--

CREATE TABLE `world` (
  `ID` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `version` varchar(15) DEFAULT NULL,
  `description` tinytext DEFAULT NULL,
  `season` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `world`
--

INSERT INTO `world` (`ID`, `name`, `version`, `description`, `season`) VALUES
(1, 'earth', '2', 'the planet where humans live', 4),
(2, 'drainage', '1', 'it stinks here', 1),
(3, 'new york', '2', 'USA USA', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fraction` (`fraction`,`race`,`weapon`,`world`);

--
-- Indexes for table `fraction`
--
ALTER TABLE `fraction`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `world`
--
ALTER TABLE `world`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fraction`
--
ALTER TABLE `fraction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `race`
--
ALTER TABLE `race`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `world`
--
ALTER TABLE `world`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
