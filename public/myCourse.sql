-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2017 at 07:30 AM
-- Server version: 5.7.16
-- PHP Version: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gidz3460`
--

-- --------------------------------------------------------

--
-- Table structure for table `myCourse`
--

CREATE TABLE `myCourse` (
  `courseID` text NOT NULL,
  `title` text NOT NULL,
  `instructor` text NOT NULL,
  `term` text NOT NULL,
  `website` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myCourse`
--

INSERT INTO `myCourse` (`courseID`, `title`, `instructor`, `term`, `website`) VALUES
('CP464', 'Selected Topics In Hardware', 'Nora Znotinas', 'Winter 2017', 'https://bohr.wlu.ca/nznotinas/cp464/'),
('CP372', 'Computer Networks', 'Evgueni V. Zima', 'Winter 2017', 'https://bohr.wlu.ca/ezima/CP_372/'),
('CP476', 'Internet Computing', 'Hongbing Fan', 'Winter 2017', 'https://bohr.wlu.ca/hfan/cp476/17/index.php'),
('PC475', 'Design of Control Systems', 'Maher Ahmed', 'Winter 2017', 'https://legacy.wlu.ca/page.php?grp_id=509&p=9378');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
