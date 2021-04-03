-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2020 at 06:02 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `data12`
--

CREATE TABLE `data12` (
  `ROLL_NO` varchar(10) NOT NULL,
  `LABNO` int(50) NOT NULL,
  `PCNO` int(5) NOT NULL,
  `SUBJECT` varchar(20) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TIME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data12`
--

INSERT INTO `data12` (`ROLL_NO`, `LABNO`, `PCNO`, `SUBJECT`, `DATE`, `TIME`) VALUES
('1025', 616, 45, 'fdg', '02-01-2020', '12.30-2.30'),
('1045', 788, 12, 'eng', '02-01-2020', '10.30-12.30'),
('19it500', 23, 32, 'DSA', '07-01-2020', '10.30-12.30'),
('19it5022', 542, 11, 'PCOM', '08-01-2020', '10.30-12.30'),
('76', 234, 11, 'JPL', '05-01-2020', '12.30-2.30'),
('IT324', 234, 22, 'PCOM', '05-01-2020', '10.30-12.30');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `id` int(11) NOT NULL,
  `RollNo` varchar(50) NOT NULL,
  `LABNO` int(4) NOT NULL,
  `PCNO` int(2) NOT NULL,
  `DATE` varchar(20) NOT NULL,
  `TIME` varchar(20) NOT NULL,
  `Categories` varchar(50) NOT NULL,
  `Issue` varchar(200) NOT NULL,
  `COMMENT` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`id`, `RollNo`, `LABNO`, `PCNO`, `DATE`, `TIME`, `Categories`, `Issue`, `COMMENT`) VALUES
(1, '100', 626, 56, '02-01-2020', '8.30-10.30', 'Software', 'delay_in_File_downloading', ''),
(7, '76', 543, 12, '05-01-2020', '8.30-10.30', 'Software', 'Viruses_and_malicious_programs', ''),
(8, '76', 56, 54, '05-01-2020', '12.30-2.30', 'Hardware', 'Visual_glitches', ''),
(9, '76', 43, 22, '05-01-2020', '12.30-2.30', 'Hardware', 'Overheating', 'yes'),
(10, 'IT324', 342, 12, '05-01-2020', '2.30-4.30', 'Hardware', 'Visual_glitches', ''),
(11, '19it500', 234, 2, '07-01-2020', '12.30-2.30', 'Hardware', 'Internet_Issues', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `issue12`
--

CREATE TABLE `issue12` (
  `id` int(11) NOT NULL,
  `RollNo` varchar(50) NOT NULL,
  `LABNO` int(4) NOT NULL,
  `PCNO` int(2) NOT NULL,
  `DATE` varchar(20) NOT NULL,
  `TIME` varchar(20) NOT NULL,
  `Categories` varchar(50) NOT NULL,
  `Issue` varchar(200) NOT NULL,
  `COMMENT` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue12`
--

INSERT INTO `issue12` (`id`, `RollNo`, `LABNO`, `PCNO`, `DATE`, `TIME`, `Categories`, `Issue`, `COMMENT`) VALUES
(12, '19it5022', 312, 1, '08-01-2020', '10.30-12.30', 'Hardware', 'Internet_Issues', 'screen');

-- --------------------------------------------------------

--
-- Table structure for table `loginstd`
--

CREATE TABLE `loginstd` (
  `RollNo` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginstd`
--

INSERT INTO `loginstd` (`RollNo`, `password`) VALUES
('55', 'a'),
('76', 'pp'),
('55', 'a'),
('arya', '19it5022'),
('arya', '19it5022'),
('19it5022', '5882985c8b1e2dce2763072d56a1d6e5');

-- --------------------------------------------------------

--
-- Table structure for table `loginstf`
--

CREATE TABLE `loginstf` (
  `StaffId` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginstf`
--

INSERT INTO `loginstf` (`StaffId`, `password`) VALUES
('100', '123'),
('100', '123'),
('100', '123'),
('100', '123'),
('76', 'pp'),
('100', '123'),
('100', '123'),
('arya', '2675'),
('arya', '2675'),
('rashi', '2675'),
('rashi', '2675'),
('2675', '2d841879342d2b31b3b569165f2c8bd7');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Name` varchar(50) NOT NULL,
  `StaffId` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Department` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `passwordrepeat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Name`, `StaffId`, `Email`, `Department`, `password`, `passwordrepeat`) VALUES
('vinay', '100', 'so@gmail.com', 'IT', '123', '123'),
('unnati', '1042', 'unna@gmail.com', 'INFORMATION TECHNOLO', 'unnati', 'unnati'),
('shuu', '1045', 'unnati@gmail.com', 'CE', 'hii', 'hii'),
('divya', '1089', 'di@gmail.com', 'CE', 'erd', 'erd'),
('neha', '222', 'n@gmail.com', 'ELECTRONICS & TELECOMMUNICATION', 'ne', 'ne'),
('rashi', '2675', 'rashi@gmail.com', 'COMPUTER', '2d841879342d2b31b3b569165f2c8bd7', '2d841879342d2b31b3b569165f2c8bd7'),
('stf', 'IT123', 'stf@gmail.com', 'INFORMATION TECHNOLOGY', 'stf', 'stf');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Name` varchar(50) NOT NULL,
  `RollNo` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Department` varchar(60) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `passwordrepeat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `RollNo`, `Email`, `Department`, `Year`, `password`, `passwordrepeat`) VALUES
('chavaa', '100', 'cha@gmail.com', 'INFORMATION TECHNOLOGY', 'SE', '78945', '78945'),
('chaitali', '1025', 'cc@gmail.com', 'COMPUTER', 'SE', '456', '456'),
('Unnati', '1045', 'unna@gmail.com', 'INFORMATION TECHNOLOGY', 'SE', 'unnati', 'unnati'),
('amit', '19it500', 'amit@gmail.com', 'ELECTRONICS', 'THIRD YEAR', 'amit', 'amit'),
('arya', '19it5022', 'arya@gmail.com', 'INSTRUMENTATION', 'THIRD YEAR', '5882985c8b1e2dce2763072d56a1d6e5', '5882985c8b1e2dce2763072d56a1d6e5'),
('nisha', '232', 'nisha@gmail.com', 'ELECTRONICS & TELECOMMUNICATION', 'THIRD YEAR', '5f4dcc3b', '69f05031'),
('ppp', '76', 'pp@gmail.com', 'INFORMATION TECHNOLOGY', 'THIRD YEAR', 'pp', 'pp'),
('shivani', '7894', 'shivani@gmail.com', 'INFORMATION TECHNOLOGY', 'SE', '123', '123'),
('std', 'IT324', 'std@gmail.com', 'INFORMATION TECHNOLOGY', 'SECOND YEAR', 'std', 'std');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data12`
--
ALTER TABLE `data12`
  ADD PRIMARY KEY (`ROLL_NO`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue12`
--
ALTER TABLE `issue12`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffId`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`RollNo`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `issue12`
--
ALTER TABLE `issue12`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
