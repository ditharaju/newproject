-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2016 at 01:44 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rp0011`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `busid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `groupname` varchar(30) NOT NULL,
  `Identifier` varchar(20) NOT NULL,
  `SearchTerm` varchar(20) NOT NULL,
  `Title1` varchar(30) NOT NULL,
  `Description` varchar(30) NOT NULL,
  `others` varchar(40) NOT NULL,
  `createdby` varchar(30) NOT NULL,
  `createddate` date NOT NULL,
  `changedby` varchar(30) NOT NULL,
  `changedate` date NOT NULL,
  `filename` varchar(30) NOT NULL,
  `filetype` varchar(30) NOT NULL,
  `filesize` int(11) NOT NULL,
  `filecontent` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `password`, `username`) VALUES
('Admin', 'password', 'Admin'),
('Anand', '12345', 'Anand'),
('Raahul', '12345', 'Raahul');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `groupid` int(11) NOT NULL,
  `groupname` varchar(20) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `createdon` date NOT NULL,
  `business` varchar(5) NOT NULL DEFAULT 'NO',
  `client` varchar(5) NOT NULL DEFAULT 'NO',
  `company` varchar(5) NOT NULL DEFAULT 'NO',
  `contact` varchar(5) NOT NULL DEFAULT 'NO',
  `finance` varchar(5) NOT NULL DEFAULT 'NO',
  `hr` varchar(5) NOT NULL DEFAULT 'NO',
  `payroll` varchar(5) NOT NULL DEFAULT 'NO',
  `pmo` varchar(5) NOT NULL DEFAULT 'NO',
  `project` varchar(5) NOT NULL DEFAULT 'NO',
  `friend` varchar(5) NOT NULL DEFAULT 'NO',
  `staff` varchar(5) NOT NULL DEFAULT 'NO',
  `talent` varchar(5) NOT NULL DEFAULT 'NO',
  `task` varchar(5) NOT NULL DEFAULT 'NO',
  `emailid` varchar(100) NOT NULL DEFAULT 'NO',
  `admin` varchar(5) NOT NULL DEFAULT 'NO',
  `family` varchar(5) NOT NULL DEFAULT 'NO',
  `personal` varchar(5) NOT NULL DEFAULT 'NO',
  `library` varchar(5) NOT NULL DEFAULT 'NO',
  `learning` varchar(5) NOT NULL DEFAULT 'NO',
  `gta` varchar(5) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`groupid`, `groupname`, `userid`, `username`, `password`, `createdon`, `business`, `client`, `company`, `contact`, `finance`, `hr`, `payroll`, `pmo`, `project`, `friend`, `staff`, `talent`, `task`, `emailid`, `admin`, `family`, `personal`, `library`, `learning`, `gta`) VALUES
(10, 'Raak', 1000, 'Anand Selvaraj', '12345', '2016-08-24', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'selvaraj.anand@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', 'YES'),
(14, 'Anandi', 1008, 'Anandi', 'kamal123', '2016-08-28', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'raahulkamal@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', ''),
(15, 'Decision Analytics', 1011, 'Rama Venkat', 'das12345', '2016-08-28', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'decisionanalyticssg@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', ''),
(15, 'Decision Analytics', 1012, 'Anand', 'das12345', '2016-08-28', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'selvaraj.anand@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', ''),
(14, 'Anandi', 1013, 'Anand Selva', 'kamal123', '2016-08-28', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'selvaraj.anand@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', ''),
(16, 'Mohammed Shahir', 1018, 'Shahir', '12345', '2016-08-28', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'mohammed.shahir@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', ''),
(16, 'Mohammed Shahir', 1019, 'Sherin', '12345', '2016-08-28', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'sherin75@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', ''),
(16, 'Mohammed Shahir', 1020, 'Ricku', '12345', '2016-08-28', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'ricku2000@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', ''),
(16, 'Mohammed Shahir', 1021, 'Rinu', '12345', '2016-08-28', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'mohammed.shahir@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', ''),
(14, 'Anandi', 1022, 'Raahul', 'kamal123', '2016-08-28', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'NO', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'anand.raahul@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', ''),
(17, 'TDG', 1023, 'Shahir', '12345', '2016-08-28', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'mohammed.shahir@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', ''),
(17, 'TDG', 1024, 'Haseeb Saqaf', '12345', '2016-08-28', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'haseebsaqaf@hotmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', ''),
(10, 'Raak', 1031, 'Mannatharaj', '12345', '2016-08-24', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'mannatharaj@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', 'YES'),
(10, 'Raak', 1032, 'Anand Selvaraj1', '12345', '2016-08-24', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'selvaraj.anand@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', 'YES'),
(18, 'eOrg Testers', 1033, 'Jahnavi', '12345', '2016-09-01', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'jahu.upputuri@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', 'YES'),
(18, 'eOrg Testers', 1034, 'Uma', '12345', '2016-09-01', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'uma.oguri@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', 'YES'),
(18, 'eOrg Testers', 1035, 'Mrudula', '12345', '2016-09-01', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'mrudula7menikonda@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', 'YES'),
(18, 'eOrg Testers', 1036, 'Raju', '12345', '2016-09-01', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'mannatharaj@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', 'YES'),
(18, 'eOrg Testers', 1037, 'AnandS', '12345', '2016-09-01', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'YES', 'selvaraj.anand@gmail.com', 'NO', 'YES', 'YES', 'YES', 'YES', 'YES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`busid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `busid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1038;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
