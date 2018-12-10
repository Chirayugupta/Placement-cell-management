-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2018 at 09:39 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `revised`
--

-- --------------------------------------------------------

--
-- Table structure for table `addpdrive`
--

CREATE TABLE `addpdrive` (
  `CompanyName` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `CP` tinyint(1) NOT NULL,
  `PVenue` varchar(255) NOT NULL,
  `SSLC` float NOT NULL,
  `PU` float NOT NULL,
  `BE` float NOT NULL,
  `Backlogs` int(11) NOT NULL,
  `HofBacklogs` tinyint(1) NOT NULL,
  `DetainYears` int(11) NOT NULL,
  `ODetails` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addpdrive`
--

INSERT INTO `addpdrive` (`CompanyName`, `Date`, `CP`, `PVenue`, `SSLC`, `PU`, `BE`, `Backlogs`, `HofBacklogs`, `DetainYears`, `ODetails`) VALUES
('Amazaon', '2014-09-30', 1, 'RNSIT', 65, 65, 65, 0, 0, 0, '0'),
('Apple', '2015-07-23', 0, 'RNSIT', 98, 98, 90, 0, 0, 0, '0'),
('Deolitte', '2015-07-04', 0, '', 45, 55, 55, 8, 1, 2, ''),
('Flipkart', '2013-03-24', 0, 'RNSIT', 60, 60, 65, 0, 0, 0, '0'),
('Google', '2015-06-26', 1, 'RNSIT', 60, 65, 65, 0, 0, 0, '0'),
('HP', '2013-08-19', 1, 'RNSIT', 70, 75, 75, 0, 0, 0, '0'),
('IBM', '2015-05-12', 0, 'RNSIT', 60, 65, 65, 0, 0, 0, '0'),
('Infosis', '2015-01-10', 0, 'RNSIT', 60, 60, 60, 0, 0, 0, '0'),
('Intel', '2013-09-08', 0, 'RNSIT', 60, 65, 65, 0, 0, 0, '0'),
('Microsoft company', '2014-12-09', 0, 'RNSIT', 60, 65, 65, 0, 0, 0, '0'),
('Skype', '2014-06-10', 1, 'RNSIT', 75, 75, 75, 0, 0, 0, '0'),
('Tata Consultency Services', '2015-11-24', 1, 'RNSIT', 65, 70, 75, 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `basicdetails`
--

CREATE TABLE `basicdetails` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `USN` varchar(10) NOT NULL,
  `Mobile` bigint(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `Sem` int(11) NOT NULL,
  `Branch` varchar(15) NOT NULL,
  `SSLC` float NOT NULL,
  `PU` float NOT NULL,
  `BE` float NOT NULL,
  `Backlogs` int(11) NOT NULL,
  `HofBacklogs` tinyint(1) NOT NULL,
  `DetainYears` int(11) NOT NULL,
  `Approve` tinyint(1) NOT NULL DEFAULT '0',
  `ApprovalDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basicdetails`
--

INSERT INTO `basicdetails` (`Id`, `FirstName`, `LastName`, `USN`, `Mobile`, `Email`, `DOB`, `Sem`, `Branch`, `SSLC`, `PU`, `BE`, `Backlogs`, `HofBacklogs`, `DetainYears`, `Approve`, `ApprovalDate`) VALUES
(1, 'Satyam', 'Mittal', '1RN16IS001', 11111, 'sm@gmail.com', '1997-07-06', 1, 'ISE', 70, 70, 70, 0, 0, 0, 1, '0000-00-00'),
(2, 'Vaibhav', 'Jangid', '1RN16CS002', 22222, 'vj@gmail.com', '1996-03-08', 2, 'CSE', 75, 75, 70, 0, 0, 0, 1, '0000-00-00'),
(3, 'Vivek', 'Mishra', '1RN16IS003', 33333, 'vm@gmail.com', '1991-01-28', 6, 'ISE', 55, 55, 55, 0, 0, 0, 1, '0000-00-00'),
(4, 'Swapnil', 'Sahi', '1RN16CS004', 66666, 'ss@gmail.com', '1991-02-13', 8, 'CSE', 85, 85, 85, 0, 0, 0, 0, '0000-00-00'),
(5, 'Chirayu', 'Gupta', '1RN16CV005', 7777, 'cg@gmail.com', '1998-05-31', 7, 'CVE', 99, 99, 99, 0, 0, 0, 0, '0000-00-00'),
(6, 'Pawan', 'Prabhu', '1RN16EE006', 88888, 'pp@gmail.com', '1999-01-04', 8, 'EEE', 99, 99, 99, 0, 0, 0, 0, '0000-00-00'),
(7, 'Sharan', 'Chibber', '1RN16CV007', 99999, 'sc@gmail.com', '1997-08-13', 4, 'CVE', 65, 65, 65, 0, 0, 0, 0, '0000-00-00'),
(8, 'Shivank', 'Kumar', '1RN16EE008', 10000, 'sk@gmail.com', '1992-10-23', 4, 'EEE', 55, 55, 55, 0, 0, 0, 0, '0000-00-00'),
(9, 'Harish', 'Kumar', '1RN16IS009', 20000, 'hk@gmail.com', '1997-04-28', 4, 'ISE', 66, 63, 62, 0, 0, 0, 1, '2015-07-23'),
(10, 'Ritik', 'Agarwal', '1RN16CS010', 40000, 'dk@gmail.com', '2000-06-13', 5, 'CSE', 41, 45, 45, 0, 0, 0, 0, '0000-00-00'),
(11, 'Anant', 'Bansal', '1RN16IS011', 2147483647, 'ab@gmail.com', '2015-07-02', 4, 'ISE', 77, 66, 77, 0, 0, 0, 1, '0000-00-00'),
(12, 'Sai', 'Abhishek', '1RN16IS012', 9880796862, 'sa@gmail.com', '1994-10-22', 6, 'ISE', 91, 70, 50, 5, 0, 1, 1, '2015-08-18'),
(13, 'Swapnil', 'Sinha', '1RN16IS013', 2147483647, 'ssi@gmail.com', '2015-07-23', 7, 'ISE', 100, 100, 100, 0, 0, 0, 1, '2015-07-23'),
(14, 'Ashish', 'Singh', '1RN16IS014', 9880796862, 'as@gmail.com', '2015-08-21', 6, 'ISE', 40, 70, 50, 5, 0, 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `hlogin`
--

CREATE TABLE `hlogin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `Branch` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hlogin`
--

INSERT INTO `hlogin` (`Id`, `Name`, `Username`, `Password`, `Email`, `Question`, `Answer`, `Branch`) VALUES
(1, 'Dr.MV Sudhamani', 'MVS', '123456', 'MVS@gmail.com', 'What is your fav spot?', 'Bangalore', 'ISE');

-- --------------------------------------------------------

--
-- Table structure for table `plogin`
--

CREATE TABLE `plogin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plogin`
--

INSERT INTO `plogin` (`Id`, `Name`, `Username`, `Password`, `Email`, `Question`, `Answer`) VALUES
(1, 'Kiran', 'kiran', '123', 'k@gmail.com', 'What is your fav spot?', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `prilogin`
--

CREATE TABLE `prilogin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prilogin`
--

INSERT INTO `prilogin` (`Id`, `Name`, `Username`, `Password`, `Email`, `Question`, `Answer`) VALUES
(1, 'MK Venkatesha', 'MKV', '123456', 'mkv@gmail.com', 'What is your fav spot?', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `slogin`
--

CREATE TABLE `slogin` (
  `id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `USN` varchar(10) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slogin`
--

INSERT INTO `slogin` (`id`, `Name`, `USN`, `PASSWORD`, `Email`, `Question`, `Answer`) VALUES
(1, 'Satyam', '1RN16IS001', '123', 'sm@gmail.com', 'What is your fav spot?', 'cricket'),
(2, 'Vaibhav', '1RN16CS002', '123', 'vj@gmil.com', 'what is your fav spot?', 'mysore'),
(3, 'Vivek', '1RN16IS003', '123', 'vm@gmail.com', 'What is your fav dish?', 'chicken'),
(4, 'Swapnil', '1RN16cS004', '123', 'ss@gmail.com', 'What is your nickname?', 'ladki'),
(5, 'Chirayu', '1RN16CV005', '123', 'cg@gmail.com', 'What is your fav spot?', 'New York'),
(8, 'Pawan', '1RN16CV006', '123', 'pp@gmail.com', 'What is your fav spot?', 'Manali'),
(9, '', '', '', '', '', ''),
(10, 'Sharan', '1RN16CV007', '123', 'sc@gmail.com', 'What is your nickname?', 'Gunda'),
(11, 'Shivank', '1RN16IS008', '123', 'sk@gmail.com', 'What is your fav spot?', 'Manali');

-- --------------------------------------------------------

--
-- Table structure for table `updatedrive`
--

CREATE TABLE `updatedrive` (
  `USN` varchar(10) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `CompanyName` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Attendence` tinyint(1) NOT NULL,
  `WT` tinyint(1) NOT NULL,
  `GD` tinyint(1) NOT NULL,
  `Techical` tinyint(1) NOT NULL,
  `Placed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updatedrive`
--

INSERT INTO `updatedrive` (`USN`, `Name`, `CompanyName`, `Date`, `Attendence`, `WT`, `GD`, `Techical`, `Placed`) VALUES
('1RN16IS001', 'Satyam', 'Flipkart', '2015-06-26', 1, 1, 1, 1, 1),
('1RN16IS002', 'Vaibhav', 'HP', '2013-08-19', 1, 1, 1, 1, 1),
('1RN16IS003', 'Vivek', 'IBM', '2015-05-12', 1, 1, 1, 1, 1),
('1RN16CS004', 'Swapnil', 'Infyosis', '2015-01-10', 1, 1, 1, 1, 1),
('1RN16CV005', 'Chirayu', 'Intel', '2013-09-08', 1, 1, 1, 1, 1),
('1RN16EE006', 'Pawan', 'Microsoft company', '2014-12-09', 1, 1, 1, 1, 1),
('1RN16CV007', 'Sharan', 'Skype', '2014-06-10', 1, 1, 1, 1, 1),
('1RN16EE008', 'Shivank', 'Tata Consultency Services', '2015-11-24', 1, 1, 1, 1, 1),
('1RN16IS009', 'Harish', 'Amazon', '2013-03-24', 1, 1, 1, 1, 1),
('1RN16IS010', 'Ritik', 'Deolitte', '2014-09-30', 1, 1, 1, 1, 1),
('1RN16IS013', 'Swapnil', 'Flipkart', '2015-07-04', 1, 1, 1, 0, 0),
('1RN16IS011', 'Anant', 'Apple', '2015-07-23', 1, 1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addpdrive`
--
ALTER TABLE `addpdrive`
  ADD PRIMARY KEY (`CompanyName`,`Date`);

--
-- Indexes for table `basicdetails`
--
ALTER TABLE `basicdetails`
  ADD PRIMARY KEY (`Id`,`USN`,`Mobile`,`Email`);

--
-- Indexes for table `hlogin`
--
ALTER TABLE `hlogin`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`,`Email`);

--
-- Indexes for table `plogin`
--
ALTER TABLE `plogin`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`,`Email`);

--
-- Indexes for table `prilogin`
--
ALTER TABLE `prilogin`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`,`Email`);

--
-- Indexes for table `slogin`
--
ALTER TABLE `slogin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `USN` (`USN`,`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basicdetails`
--
ALTER TABLE `basicdetails`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hlogin`
--
ALTER TABLE `hlogin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plogin`
--
ALTER TABLE `plogin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prilogin`
--
ALTER TABLE `prilogin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slogin`
--
ALTER TABLE `slogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
