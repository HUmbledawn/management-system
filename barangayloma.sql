-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 09:18 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barangayloma`
--

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `expire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`id`, `email`, `code`, `expire`) VALUES
(1, 'humbledawn0908@gmail.com', '43987', 1667476860),
(2, 'humbledawn0908@gmail.com', '38223', 1667476866);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity`
--

CREATE TABLE `tbl_activity` (
  `id` int(11) NOT NULL,
  `dateofactivity` date NOT NULL,
  `activity` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activityphoto`
--

CREATE TABLE `tbl_activityphoto` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `filename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangay_cert`
--

CREATE TABLE `tbl_barangay_cert` (
  `barangayID` varchar(20) NOT NULL,
  `residentID` varchar(20) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blotter`
--

CREATE TABLE `tbl_blotter` (
  `BlotterID` int(11) NOT NULL,
  `residentID` varchar(20) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `year_recorded` varchar(4) NOT NULL,
  `date_recorded` date NOT NULL,
  `complainant` varchar(50) NOT NULL,
  `c_age` int(3) NOT NULL,
  `c_address` varchar(100) NOT NULL,
  `c_contact` varchar(11) NOT NULL,
  `person_to_complain` varchar(50) NOT NULL,
  `p_age` int(3) NOT NULL,
  `p_address` varchar(100) NOT NULL,
  `p_contact` int(11) NOT NULL,
  `complaint` varchar(100) NOT NULL,
  `action_taken` varchar(50) NOT NULL,
  `complaint_status` varchar(50) NOT NULL,
  `location_of_incidence` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clearance`
--

CREATE TABLE `tbl_clearance` (
  `clearanceID` int(11) NOT NULL,
  `residentID` varchar(20) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `clearance_no` int(11) NOT NULL,
  `findings` varchar(50) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `owner_no` varchar(11) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `date_recorded` date NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donation`
--

CREATE TABLE `tbl_donation` (
  `donationID` int(11) NOT NULL,
  `residentID` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `details` varchar(100) NOT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `empoloyeeID` varchar(20) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `middleName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactNo` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `employeeType` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`empoloyeeID`, `firstName`, `middleName`, `lastName`, `username`, `password`, `contactNo`, `email`, `employeeType`, `status`) VALUES
('EMP-12312312-123123', 'Rhey Laurence', 'Marquez', 'Buday', 'rhbuday', '$2y$10$//fTKMfGvuE4S7ePNEAvCuB.rZyr4N4yoPxoermEHgT/bWoQ1yGMy', '09608208757', 'humbledawn0908@gmail.com', '0', 0),
('EMP-12312312-123123', 'Rhey Laurence', 'Marquez', 'Buday', 'rhbuday', '$2y$10$//fTKMfGvuE4S7ePNEAvCuB.rZyr4N4yoPxoermEHgT/bWoQ1yGMy', '09608208757', 'humbledawn0908@gmail.com', '0', 1),
('[value-1]', '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[value-8]', '[value-9]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_history_log`
--

CREATE TABLE `tbl_history_log` (
  `historyID` int(11) NOT NULL,
  `certificateID` varchar(20) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `action` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_household`
--

CREATE TABLE `tbl_household` (
  `householdID` int(11) NOT NULL,
  `residentID` varchar(20) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `household_no` int(5) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `household_member` int(2) NOT NULL,
  `head_of_family` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_indigency_cert`
--

CREATE TABLE `tbl_indigency_cert` (
  `indigencyCertID` varchar(20) NOT NULL,
  `residentID` varchar(20) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `indigencyPurpose` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_indigency_purpose`
--

CREATE TABLE `tbl_indigency_purpose` (
  `indigencyID` int(11) NOT NULL,
  `indigencyPurpDesc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resident_cert`
--

CREATE TABLE `tbl_resident_cert` (
  `residentcertID` varchar(20) NOT NULL,
  `residentID` varchar(20) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `residentPurpose` int(10) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resident_list`
--

CREATE TABLE `tbl_resident_list` (
  `residentID` varchar(20) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `middleName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `suffixName` varchar(100) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `bplace` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `nationalID` varchar(100) DEFAULT NULL,
  `citizenship` varchar(100) NOT NULL,
  `voter` varchar(100) DEFAULT NULL,
  `precint` varchar(100) DEFAULT NULL,
  `contactTracer` varchar(100) DEFAULT NULL,
  `lifeStatus` int(1) NOT NULL,
  `streetAddress` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resident_purpose`
--

CREATE TABLE `tbl_resident_purpose` (
  `residentPurpID` int(11) NOT NULL,
  `residentPurposeDesc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` varchar(20) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `access` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `employeeID`, `email`, `password`, `access`, `date`) VALUES
('22-1667472887-11', 'EMP-22-1667472876-11', 'humbledawn0908@gmail.com', '$2y$10$61hX4rgIz/KaRF1Z6lWN6.TWTiX8jHm0qqQMtlcodeKUS1p0zrIa2', 'staff', '2022-11-03 19:01:49'),
('22-1667795675-11', 'EMP-22-1667795659-11', 'lomadegato0908@gmail.com', '$2y$10$RrgoIvlsBDo1Eikw.XZgguBruf8WZ2rSDmrHSGESmg1jseSaAEEcm', 'admin', '2022-11-07 12:34:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `code` (`code`),
  ADD KEY `expire` (`expire`);

--
-- Indexes for table `tbl_activity`
--
ALTER TABLE `tbl_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activityphoto`
--
ALTER TABLE `tbl_activityphoto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_barangay_cert`
--
ALTER TABLE `tbl_barangay_cert`
  ADD PRIMARY KEY (`barangayID`);

--
-- Indexes for table `tbl_blotter`
--
ALTER TABLE `tbl_blotter`
  ADD PRIMARY KEY (`BlotterID`);

--
-- Indexes for table `tbl_clearance`
--
ALTER TABLE `tbl_clearance`
  ADD PRIMARY KEY (`clearanceID`);

--
-- Indexes for table `tbl_donation`
--
ALTER TABLE `tbl_donation`
  ADD PRIMARY KEY (`donationID`);

--
-- Indexes for table `tbl_history_log`
--
ALTER TABLE `tbl_history_log`
  ADD PRIMARY KEY (`historyID`);

--
-- Indexes for table `tbl_household`
--
ALTER TABLE `tbl_household`
  ADD PRIMARY KEY (`householdID`);

--
-- Indexes for table `tbl_indigency_cert`
--
ALTER TABLE `tbl_indigency_cert`
  ADD PRIMARY KEY (`indigencyCertID`);

--
-- Indexes for table `tbl_indigency_purpose`
--
ALTER TABLE `tbl_indigency_purpose`
  ADD PRIMARY KEY (`indigencyID`);

--
-- Indexes for table `tbl_resident_cert`
--
ALTER TABLE `tbl_resident_cert`
  ADD PRIMARY KEY (`residentcertID`);

--
-- Indexes for table `tbl_resident_purpose`
--
ALTER TABLE `tbl_resident_purpose`
  ADD PRIMARY KEY (`residentPurpID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_activity`
--
ALTER TABLE `tbl_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_activityphoto`
--
ALTER TABLE `tbl_activityphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_blotter`
--
ALTER TABLE `tbl_blotter`
  MODIFY `BlotterID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_clearance`
--
ALTER TABLE `tbl_clearance`
  MODIFY `clearanceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_donation`
--
ALTER TABLE `tbl_donation`
  MODIFY `donationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_history_log`
--
ALTER TABLE `tbl_history_log`
  MODIFY `historyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_household`
--
ALTER TABLE `tbl_household`
  MODIFY `householdID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_indigency_purpose`
--
ALTER TABLE `tbl_indigency_purpose`
  MODIFY `indigencyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_resident_purpose`
--
ALTER TABLE `tbl_resident_purpose`
  MODIFY `residentPurpID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
