-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2023 at 08:15 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `A_name` varchar(15) NOT NULL,
  `A_password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `A_name`, `A_password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `D_id` int(5) NOT NULL,
  `D_name` varchar(20) NOT NULL,
  `D_password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`D_id`, `D_name`, `D_password`) VALUES
(1, 'doctor', 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `doctorbloodrequest`
--

CREATE TABLE `doctorbloodrequest` (
  `id` int(5) NOT NULL,
  `D_id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `resion` varchar(30) NOT NULL,
  `P_diseas` varchar(30) NOT NULL,
  `unit` int(5) NOT NULL,
  `p_age` int(3) NOT NULL,
  `blood_types` varchar(5) NOT NULL,
  `Status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctorbloodrequest`
--

INSERT INTO `doctorbloodrequest` (`id`, `D_id`, `name`, `resion`, `P_diseas`, `unit`, `p_age`, `blood_types`, `Status`) VALUES
(1, 1, 'sulochana', 'abc', 'abc', 5, 23, ' A+', '2');

-- --------------------------------------------------------

--
-- Table structure for table `donate_blood`
--

CREATE TABLE `donate_blood` (
  `id` int(5) NOT NULL,
  `D_id` int(5) NOT NULL,
  `unit` int(5) NOT NULL,
  `D_disease` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `Status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donate_blood`
--

INSERT INTO `donate_blood` (`id`, `D_id`, `unit`, `D_disease`, `date`, `Status`) VALUES
(1, 1, 5, 'abc', '2023-08-31 16:23:18', '1');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `D_id` int(5) NOT NULL,
  `D_fname` varchar(50) NOT NULL,
  `D_username` varchar(20) NOT NULL,
  `D_password` varchar(12) NOT NULL,
  `D_email` varchar(30) NOT NULL,
  `D_age` int(3) NOT NULL,
  `D_bloodtype` varchar(5) NOT NULL,
  `D_tel` bigint(10) NOT NULL,
  `D_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`D_id`, `D_fname`, `D_username`, `D_password`, `D_email`, `D_age`, `D_bloodtype`, `D_tel`, `D_address`) VALUES
(1, 'sulochana nawarathna', 'sulo', '1234', 'sulo@gmail.com', 23, 'A+', 123456789, 'abc,123');

-- --------------------------------------------------------

--
-- Table structure for table `donorblood_request`
--

CREATE TABLE `donorblood_request` (
  `p_id` int(5) NOT NULL,
  `donor_id` int(5) NOT NULL,
  `P_name` varchar(30) NOT NULL,
  `reasion` varchar(30) NOT NULL,
  `disease` varchar(30) NOT NULL,
  `unit` int(5) NOT NULL,
  `age` int(3) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `Status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donorblood_request`
--

INSERT INTO `donorblood_request` (`p_id`, `donor_id`, `P_name`, `reasion`, `disease`, `unit`, `age`, `bloodtype`, `Status`) VALUES
(1, 1, ' sulochana', ' abc', 'abc', 5, 23, ' A', '2');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `H_id` int(5) NOT NULL,
  `H_name` varchar(30) NOT NULL,
  `H_username` varchar(20) NOT NULL,
  `H_password` varchar(12) NOT NULL,
  `H_mail` varchar(30) NOT NULL,
  `H_tel` bigint(10) NOT NULL,
  `H_address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`H_id`, `H_name`, `H_username`, `H_password`, `H_mail`, `H_tel`, `H_address`) VALUES
(1, 'nirogya hospital', 'nirogya', 'nirogya', 'nirogya@gmail.com', 123456789, 'abc,1234'),
(2, 'abc hospital', 'abc', '123', 'abc@gmail.com', 123456789, '123abc');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `paitent_id` int(5) NOT NULL,
  `Hospital_id` int(5) NOT NULL,
  `paitent_name` varchar(30) NOT NULL,
  `paitent_reasion` varchar(30) NOT NULL,
  `paitent_diseas` varchar(30) NOT NULL,
  `paitent_age` int(3) NOT NULL,
  `paitent_blood` varchar(5) NOT NULL,
  `paitent_unit` int(5) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`paitent_id`, `Hospital_id`, `paitent_name`, `paitent_reasion`, `paitent_diseas`, `paitent_age`, `paitent_blood`, `paitent_unit`, `status`) VALUES
(1, 1, 'abc', 'efg', 'efg', 25, 'A+', 5, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`D_id`);

--
-- Indexes for table `doctorbloodrequest`
--
ALTER TABLE `doctorbloodrequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donate_blood`
--
ALTER TABLE `donate_blood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`D_id`);

--
-- Indexes for table `donorblood_request`
--
ALTER TABLE `donorblood_request`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`H_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`paitent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `D_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctorbloodrequest`
--
ALTER TABLE `doctorbloodrequest`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donate_blood`
--
ALTER TABLE `donate_blood`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `D_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donorblood_request`
--
ALTER TABLE `donorblood_request`
  MODIFY `p_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `H_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `paitent_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
