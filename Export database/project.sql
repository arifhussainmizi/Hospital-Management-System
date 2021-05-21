-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 05:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientID` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `age` varchar(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodGroup` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `majorDisease` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `name`, `contact`, `age`, `gender`, `bloodGroup`, `address`, `majorDisease`) VALUES
(1, 'Santo Saha', '01623598560', '36', 'Male', 'O+', 'Banani, Dhaka', 'Yes, Kidney'),
(2, 'Susmita Afrin', '01623598560', '36', 'Female', 'O+', 'Banani, Dhaka', 'Yes, Kidney'),
(3, 'Santo Saha', '01623598560', '36', 'Male', 'O+', 'Banani, Dhaka', 'Yes, Kidney'),
(4, 'Santo Saha', '01623598560', '36', 'Male', 'O+', 'Banani, Dhaka', 'Yes, Kidney'),
(6, 'Santo Saha', '01623598560', '36', 'Male', 'O+', 'Banani, Dhaka', 'Yes, Kidney'),
(7, 'Santo Saha', '01623598560', '36', 'Male', 'O+', 'Banani, Dhaka', 'Yes, Kidney'),
(8, 'Akhon Pura', '01623598560', '36', 'Male', 'O+', 'Banani, Dhaka', 'Yes, Kidney');

-- --------------------------------------------------------

--
-- Table structure for table `patientreport`
--

CREATE TABLE `patientreport` (
  `patientID` int(10) NOT NULL,
  `symptom` varchar(200) NOT NULL,
  `diagonosis` varchar(200) NOT NULL,
  `medicines` varchar(200) NOT NULL,
  `wardReq` varchar(5) NOT NULL,
  `typeWard` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientreport`
--

INSERT INTO `patientreport` (`patientID`, `symptom`, `diagonosis`, `medicines`, `wardReq`, `typeWard`) VALUES
(1, 'Skin Problem', 'Ok', 'Ok', 'Yes', 'Single'),
(2, 'fever', 'viral fever', 'next time', 'Yes', 'General'),
(3, 'Kidnny Diseases', 'Sugger', 'null', 'Yes', 'Single'),
(4, 'Fever', 'Viral Fever', 'no', 'Yes', 'Single'),
(6, 'Diabetic', 'sugar', 'no', 'No', ''),
(7, 'Eye Problem', 'test', 'no', 'No', ''),
(8, 'Fever', 'Viral Fever', 'no', 'Yes', 'Single');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientID`);

--
-- Indexes for table `patientreport`
--
ALTER TABLE `patientreport`
  ADD PRIMARY KEY (`patientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
