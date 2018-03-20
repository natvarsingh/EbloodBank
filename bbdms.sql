-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2018 at 06:10 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '9899c2578a42792fed2838cf9c1e3f04', '2018-03-19 17:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(6, 'Sharwan Kumar', '9571010799', 'asharwanmalviya@gmail.com', 'Male', 22, 'AB+', 'Takhagarh', 'I want to donate my blood to require people. ', '2018-03-20 04:10:57', 1),
(7, 'Natvar Singh', '9587851925', 'natvar.singh92@gmail.com', 'Male', 24, 'AB-', 'Karola', ' I want to Donate my blood to happy to use', '2018-03-20 04:12:02', 1),
(8, 'Dinesh Yadav', '9979579590', 'dinesh.yadav@gmail.com', 'Male', 26, 'O+', 'Mumbai', 'happy to Use ', '2018-03-20 04:12:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(7, 'A-', '2018-03-20 04:07:44'),
(8, 'AB-', '2018-03-20 04:07:59'),
(9, 'A+', '2018-03-20 04:08:15'),
(10, 'AB+', '2018-03-20 04:08:58'),
(11, 'B+', '2018-03-20 04:09:04'),
(12, 'B-', '2018-03-20 04:09:07'),
(13, 'O+', '2018-03-20 04:09:11'),
(14, 'O-', '2018-03-20 04:09:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Rajasthan Hackthaon 4.0, Jaipur', 'NATVAR.SINGH@RAJASTHAN.IN', '9587851925');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(5, 'Sharwan Kumar', 'natvar.singh92@gmail.com', '7742826264', 'i want to help you', '2018-03-20 05:41:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<p style=\"margin-right: 20px; margin-bottom: 18px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; font-family: Helvetica, Arial, sans-serif; vertical-align: baseline; line-height: 18px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">There is a constant need for regular blood supply because blood can be stored for only a limited time before use. Regular blood donations by a sufficient number of healthy people are needed to ensure that safe blood will be available whenever and wherever it is needed.</span></p><p style=\"margin-right: 20px; margin-bottom: 18px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; font-family: Helvetica, Arial, sans-serif; vertical-align: baseline; line-height: 18px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">Blood is the most precious gift that anyone can give to another person — the gift of life. A decision to donate your blood can save a life, or even several if your blood is separated into its components — red cells, platelets and plasma — which can be used individually for patients with specific conditions.</span></p>'),
(3, 'About Us ', 'aboutus', '																				<p style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: HelveticaNeue, Arial, sans-serif; font-size: 15px;\">E-Blood Bank is help to provide Blood for need person in rural area as on request basis.&nbsp;&nbsp;</p><p style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: HelveticaNeue, Arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(54, 54, 54); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">It is a familiar fact that donating blood could reduce the risk of heart disease and could stimulate the generation of red blood cells.&nbsp;</span><b style=\"font-family: &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; color: rgb(0, 0, 0); font-size: 12px; padding: 0px; margin: 0px; text-align: justify;\">Blood donation periodically promotes healthy life</b><span style=\"color: rgb(54, 54, 54); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">. A Little inclination to enroll yourself in <span style=\"font-weight: bold;\">E-Blood Bank Rajasthan</span> would&nbsp;</span><b style=\"font-family: &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; color: rgb(0, 0, 0); font-size: 12px; padding: 0px; margin: 0px; text-align: justify;\">save a life</b><span style=\"color: rgb(54, 54, 54); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp;or in days to come. As a matter of&nbsp;</span><b style=\"font-family: &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; color: rgb(0, 0, 0); font-size: 12px; padding: 0px; margin: 0px; text-align: justify;\">support to this noble cause</b><span style=\"color: rgb(54, 54, 54); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp;kindly join us and also refer to your friends, relatives and social contacts.</span><br></p>\r\n										\r\n										');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
