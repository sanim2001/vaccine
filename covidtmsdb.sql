-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 11:11 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covidtmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `title` int(11) NOT NULL,
  `discription` varchar(220) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`title`, `discription`, `RegDate`) VALUES
(232, 'The letter asked Azmat Ullah to come to the room number 315 of the Nirbachan Bhaban in the city’s Agargaon to explain why his candidature would not be cancelled for running election campaigns before the allocation of ele', '2023-05-05 16:02:48'),
(345, ' The monitoring of excess mortality provides us with a more comprehensive understanding of the impact of COVID-19 beyond the number of COVID-19 deaths reported by countries. The World Health Organization (WHO) is trackin', '2023-05-07 04:26:06'),
(321, ' The monitoring of excess mortality provides us with a more comprehensive understanding of the impact of COVID-19 beyond the number of COVID-19 deaths reported by countries. The World Health Organization (WHO) is trackin', '2023-05-07 15:15:17'),
(134, 'For general information, the Government of Bangladesh has decided to complete the covid-19 vaccination of all students above the age of 12 years.', '2023-05-22 14:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'Admin', 'admin', 1234567890, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2023-04-24 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatients`
--

CREATE TABLE `tblpatients` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `GovtIssuedId` varchar(150) DEFAULT NULL,
  `GovtIssuedIdNo` varchar(150) DEFAULT NULL,
  `FullAddress` varchar(255) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatients`
--

INSERT INTO `tblpatients` (`id`, `FullName`, `MobileNumber`, `DateOfBirth`, `GovtIssuedId`, `GovtIssuedIdNo`, `FullAddress`, `State`, `RegistrationDate`) VALUES
(34, 'Md Jamal ', 5656453342, '2023-05-20', 'Birth Reg', '01225962333', 'Road #12, House #44, D.I.T Project, Merul Badda', 'Khulna', '2023-05-07 04:11:24'),
(35, 'Maruf ', 123456789, '2023-05-26', 'Voter id', '01775962333', 'Road #12, House #44, D.I.T Project, Merul Badda', 'Dhaka', '2023-05-07 15:12:12'),
(36, 'A R Rahman', 89325392556, '2000-02-18', 'Birth Reg', '01775112333', 'Pirojpur Sadar', 'Barishal', '2023-05-22 14:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblphlebotomist`
--

CREATE TABLE `tblphlebotomist` (
  `id` int(11) NOT NULL,
  `EmpID` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblphlebotomist`
--

INSERT INTO `tblphlebotomist` (`id`, `EmpID`, `FullName`, `MobileNumber`, `RegDate`) VALUES
(6, '121', 'Central Hospital Ltd', 1234568791, '2023-04-25 15:41:02'),
(7, '122', 'Farabi General Hospital', 1775962111, '2023-04-25 15:41:40'),
(8, '123', 'Khulna Sadar Hospital', 1234568791, '2023-05-05 11:06:53'),
(9, '124', 'Pirojpur Sador Hospital', 1115962333, '2023-05-22 14:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblreporttracking`
--

CREATE TABLE `tblreporttracking` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(40) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `PostingTime` timestamp NULL DEFAULT current_timestamp(),
  `RemarkBy` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreporttracking`
--

INSERT INTO `tblreporttracking` (`id`, `OrderNumber`, `Remark`, `Status`, `PostingTime`, `RemarkBy`) VALUES
(52, 901567594, 'no', '1st Dose', '2023-05-06 19:49:41', 2),
(53, 901567594, 'no', '2nd dose', '2023-05-06 19:50:02', 2),
(54, 901567594, 'no', 'Delivered', '2023-05-06 19:54:56', 2),
(55, 621654887, '..', 'Vaccine Request', '2023-05-07 04:15:41', 2),
(56, 621654887, '..', '1st Dose', '2023-05-07 04:16:01', 2),
(57, 621654887, '..', '2nd dose', '2023-05-07 04:16:37', 2),
(58, 621654887, '..', 'Delivered', '2023-05-07 04:17:17', 2),
(59, 614082693, 'no', 'Vaccine Request', '2023-05-07 15:13:21', 2),
(60, 614082693, 'no', '1st Dose', '2023-05-07 15:13:36', 2),
(61, 614082693, 'no', '2nd dose', '2023-05-07 15:13:48', 2),
(62, 614082693, 'no', 'Delivered', '2023-05-07 15:14:27', 2),
(63, 239932390, 'no', 'Vaccine Request', '2023-05-22 14:10:27', 2),
(64, 239932390, 'no', '1st Dose', '2023-05-22 14:10:46', 2),
(65, 239932390, 'no', '2nd dose', '2023-05-22 14:11:09', 2),
(66, 239932390, 'no', 'Delivered', '2023-05-22 14:11:39', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbltestrecord`
--

CREATE TABLE `tbltestrecord` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(14) DEFAULT NULL,
  `PatientMobileNumber` bigint(14) DEFAULT NULL,
  `TestType` varchar(100) DEFAULT NULL,
  `TestTimeSlot` varchar(120) DEFAULT NULL,
  `ReportStatus` varchar(100) DEFAULT NULL,
  `FinalReport` varchar(150) DEFAULT NULL,
  `ReportUploadTime` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NULL DEFAULT current_timestamp(),
  `AssignedtoEmpId` varchar(150) DEFAULT NULL,
  `AssigntoName` varchar(180) DEFAULT NULL,
  `AssignedTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestrecord`
--

INSERT INTO `tbltestrecord` (`id`, `OrderNumber`, `PatientMobileNumber`, `TestType`, `TestTimeSlot`, `ReportStatus`, `FinalReport`, `ReportUploadTime`, `RegistrationDate`, `AssignedtoEmpId`, `AssigntoName`, `AssignedTime`) VALUES
(33, 621654887, 5656453342, 'AstraZeneca', '2023-05-27T10:11', 'Delivered', 'c543bfab462433cb269c323e5af68afd1683433037.pdf', '07-05-2023 10:17:17 AM', '2023-05-07 04:11:24', '123', 'Md Kamal', '07-05-2023 10:13:13 AM'),
(34, 614082693, 123456789, 'Covovax', '2023-05-20T21:12', 'Delivered', '7b80ae2106a811bf9004738feac17c7d1683472467.pdf', '07-05-2023 09:14:27 PM', '2023-05-07 15:12:12', '121', 'Dr Azman Ahmed', '07-05-2023 09:13:01 PM'),
(35, 239932390, 89325392556, 'Pfizer-BioNTech', '2023-05-19T19:59', 'Delivered', 'be0d16673ce228054a272ef491b858571684764699.pdf', '22-05-2023 08:11:39 PM', '2023-05-22 14:00:15', '124', 'Pirojpur Sador Hospital', '22-05-2023 08:09:59 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatients`
--
ALTER TABLE `tblpatients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblphlebotomist`
--
ALTER TABLE `tblphlebotomist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatients`
--
ALTER TABLE `tblpatients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblphlebotomist`
--
ALTER TABLE `tblphlebotomist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
