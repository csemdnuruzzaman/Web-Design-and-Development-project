-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 05:47 PM
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
-- Database: `students_information`
--

-- --------------------------------------------------------

--
-- Table structure for table `std_info`
--

CREATE TABLE `std_info` (
  `id` int(150) NOT NULL,
  `name` varchar(200) NOT NULL,
  `roll` int(200) NOT NULL,
  `reg` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `technology` varchar(100) NOT NULL,
  `session` varchar(50) NOT NULL,
  `institute` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `schoolname` varchar(300) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `std_info`
--

INSERT INTO `std_info` (`id`, `name`, `roll`, `reg`, `email`, `semester`, `technology`, `session`, `institute`, `address`, `dob`, `schoolname`, `gender`, `created`) VALUES
(1, 'MD.NURUZZAMAN', 435296, 1502055291, 'tech@gmail.com', '7th', 'Computer', '19-20', 'Jessore Polytechnic Institute', 'Agardari, Satkhira Sadar, Satkhira', '2003-05-02', 'Satkhira Govt. Technical School and College', 'Male', '31-03-23 07:17:08'),
(2, 'Rakib Hassan', 60, 5465456, 'rakib@gmail.com', '5th', 'Computer', '30-31', 'Vomra polytechnic Institute', 'vomra, satkhira', '02-05-2010', 'Agardar school', 'Female', '02-03-2022'),
(3, 'Abdur Rahmman', 536452, 2147483647, 'abdur@gmail.com', '4th', 'Electronics', '20-21', 'Dhaka Polytechnic Institute', 'Savar, Dhaka', '2023-03-01', 'Dhaka govt. school', 'on', '31-03-23 07:59:46'),
(5, 'MD. NURUZZAMAN', 435296, 1502055291, 'nuruzzamanphone@gmail.com', '7th', 'Computer', '19-20', 'Satkhira Polytechnic Institute', 'Agardari, Satkhira Sadar, Satkhira', '2003-05-02', 'Satkhira Govt. Technical School and College', 'on', '31-03-23 09:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `name`, `email`, `pass`, `username`) VALUES
(1, 'MD.NURUZZAMAN', 'nuruzzamanpolytechnic@gmail.com', '340a1ecf86e9e86815e135fed00c2db6', 'nuruzzaman'),
(2, 'Abdur Rahmman', 'abdur@gmail.com', '163a184b327e545c42a8db5b10f0c6f2', 'abdur163'),
(3, 'Rakib ', 'rakib@gmail.com', '700c8b805a3e2a265b01c77614cd8b21', 'raki700c'),
(4, 'Muhammad Nuruzzaman', 'muhammad@gmail.com', '1fc4f4e86b0e23ef8aef44ce69325cc4', 'muham1fc4'),
(5, 'Muhammad Nuruzzaman', 'muhammad@gmail.com', '1fc4f4e86b0e23ef8aef44ce69325cc4', 'muham1fc4'),
(6, 'Abdur Rahmman', 'abdurrahmman@yahoo.com', 'b1f611493ecbc06defffca054ba06696', 'abdurb1f6'),
(7, 'Rashida', 'rashida@gmail.com', '8843028fefce50a6de50acdf064ded27', 'rashi8843'),
(8, 'Rohim', 'rohim@gmail.com', '8843028fefce50a6de50acdf064ded27', 'rohim8843');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `std_info`
--
ALTER TABLE `std_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `std_info`
--
ALTER TABLE `std_info`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
