-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2025 at 08:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Crypto_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `BTC`
--

CREATE TABLE `BTC` (
  `id` int(11) NOT NULL,
  `BTCcurrentPrice` decimal(18,2) DEFAULT NULL,
  `BTChighPrice` decimal(18,2) DEFAULT NULL,
  `BTClowPrice` decimal(18,2) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `BTC`
--

INSERT INTO `BTC` (`id`, `BTCcurrentPrice`, `BTChighPrice`, `BTClowPrice`, `timestamp`) VALUES
(1, 86713.28, 91965.04, 85653.11, '2025-12-01 18:00:02'),
(2, 86634.13, 91965.04, 85653.11, '2025-12-01 19:00:01'),
(3, 86299.10, 91965.04, 85653.11, '2025-12-01 20:00:01'),
(4, 85310.14, 91965.04, 84791.61, '2025-12-01 21:00:02'),
(5, 85929.51, 91874.79, 84791.61, '2025-12-01 22:00:02'),
(6, 86286.97, 91874.79, 84791.61, '2025-12-01 23:00:01'),
(7, 84656.22, 91874.79, 83862.25, '2025-12-02 00:00:02'),
(8, 84547.11, 91825.06, 83862.25, '2025-12-02 01:00:02'),
(9, 84972.50, 91626.32, 83862.25, '2025-12-02 02:00:01'),
(10, 84977.36, 91626.32, 83862.25, '2025-12-02 03:00:01'),
(11, 85005.47, 91626.32, 83862.25, '2025-12-02 04:00:01'),
(12, 85375.32, 91355.52, 83862.25, '2025-12-02 05:00:02'),
(13, 86437.60, 91337.16, 83862.25, '2025-12-02 06:00:01'),
(14, 86749.35, 91287.81, 83862.25, '2025-12-02 07:00:02'),
(15, 86298.82, 90398.16, 83862.25, '2025-12-02 08:00:01'),
(16, 86530.92, 87736.92, 83862.25, '2025-12-02 09:00:09'),
(17, 86449.27, 87510.28, 83862.25, '2025-12-02 10:02:58'),
(18, 86609.30, 87325.31, 83862.25, '2025-12-02 11:00:08'),
(19, 86923.60, 87325.31, 83862.25, '2025-12-02 12:00:01'),
(20, 86977.83, 87325.31, 83862.25, '2025-12-02 13:00:03'),
(21, 86982.47, 87325.31, 83862.25, '2025-12-02 14:00:02'),
(22, 87147.65, 87325.31, 83862.25, '2025-12-02 15:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `ETH`
--

CREATE TABLE `ETH` (
  `id` int(11) NOT NULL,
  `ETHcurrentPrice` decimal(18,2) DEFAULT NULL,
  `ETHhighPrice` decimal(18,2) DEFAULT NULL,
  `ETHlowPrice` decimal(18,2) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ETH`
--

INSERT INTO `ETH` (`id`, `ETHcurrentPrice`, `ETHhighPrice`, `ETHlowPrice`, `timestamp`) VALUES
(1, 2837.50, 3051.60, 2807.80, '2025-12-01 18:00:03'),
(2, 2843.74, 3051.60, 2807.80, '2025-12-01 19:00:03'),
(3, 2839.14, 3051.60, 2807.80, '2025-12-01 20:00:03'),
(4, 2819.93, 3051.60, 2798.54, '2025-12-01 21:00:04'),
(5, 2810.75, 3050.48, 2798.54, '2025-12-01 22:00:04'),
(6, 2816.16, 3049.96, 2798.54, '2025-12-01 23:00:03'),
(7, 2750.66, 3049.96, 2720.44, '2025-12-02 00:00:03'),
(8, 2728.88, 3044.87, 2720.44, '2025-12-02 01:00:04'),
(9, 2748.04, 3041.56, 2720.44, '2025-12-02 02:00:03'),
(10, 2738.11, 3041.10, 2720.44, '2025-12-02 03:00:03'),
(11, 2740.64, 3041.10, 2720.44, '2025-12-02 04:00:03'),
(12, 2754.26, 3034.88, 2720.44, '2025-12-02 05:00:04'),
(13, 2789.99, 3034.88, 2720.44, '2025-12-02 06:00:03'),
(14, 2807.82, 3034.88, 2720.44, '2025-12-02 07:00:03'),
(15, 2799.85, 2996.88, 2720.44, '2025-12-02 08:00:03'),
(16, 2794.60, 2873.02, 2720.44, '2025-12-02 09:00:13'),
(17, 2794.95, 2873.02, 2720.44, '2025-12-02 10:03:15'),
(18, 2802.67, 2848.97, 2720.44, '2025-12-02 11:00:11'),
(19, 2806.84, 2848.97, 2720.44, '2025-12-02 12:00:04'),
(20, 2806.70, 2848.97, 2720.44, '2025-12-02 13:00:05'),
(21, 2801.57, 2848.97, 2720.44, '2025-12-02 14:00:05'),
(22, 2814.02, 2848.97, 2720.44, '2025-12-02 15:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `GOLD`
--

CREATE TABLE `GOLD` (
  `id` int(11) NOT NULL,
  `AUcurrentPrice` decimal(18,2) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `GOLD`
--

INSERT INTO `GOLD` (`id`, `AUcurrentPrice`, `timestamp`) VALUES
(1, 4245.10, '2025-12-01 18:00:02'),
(2, 4255.60, '2025-12-01 19:00:02'),
(3, 4254.10, '2025-12-01 20:00:02'),
(4, 4244.30, '2025-12-01 21:00:03'),
(5, 4250.80, '2025-12-01 22:00:03'),
(6, 4238.30, '2025-12-01 23:00:02'),
(7, 4229.50, '2025-12-02 00:00:02'),
(8, 4228.80, '2025-12-02 01:00:02'),
(9, 4231.70, '2025-12-02 02:00:02'),
(10, 4239.40, '2025-12-02 03:00:02'),
(11, 4232.10, '2025-12-02 04:00:02'),
(12, 4237.10, '2025-12-02 05:00:03'),
(13, 4231.00, '2025-12-02 06:00:02'),
(14, 4230.30, '2025-12-02 07:00:02'),
(15, 4226.70, '2025-12-02 08:00:02'),
(16, 4228.10, '2025-12-02 09:00:11'),
(17, 4216.40, '2025-12-02 10:03:14'),
(18, 4220.80, '2025-12-02 11:00:09'),
(19, 4217.50, '2025-12-02 12:00:02'),
(20, 4217.60, '2025-12-02 13:00:04'),
(21, 4223.40, '2025-12-02 14:00:03'),
(22, 4212.00, '2025-12-02 15:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `SILVER`
--

CREATE TABLE `SILVER` (
  `id` int(11) NOT NULL,
  `AGcurrentPrice` decimal(18,2) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SILVER`
--

INSERT INTO `SILVER` (`id`, `AGcurrentPrice`, `timestamp`) VALUES
(1, 57.25, '2025-12-01 18:00:03'),
(2, 57.55, '2025-12-01 19:00:02'),
(3, 57.42, '2025-12-01 20:00:03'),
(4, 57.04, '2025-12-01 21:00:03'),
(5, 57.53, '2025-12-01 22:00:03'),
(6, 57.60, '2025-12-01 23:00:03'),
(7, 57.56, '2025-12-02 00:00:03'),
(8, 58.22, '2025-12-02 01:00:03'),
(9, 58.29, '2025-12-02 02:00:02'),
(10, 58.39, '2025-12-02 03:00:03'),
(11, 57.93, '2025-12-02 04:00:03'),
(12, 57.82, '2025-12-02 05:00:03'),
(13, 57.93, '2025-12-02 06:00:03'),
(14, 57.89, '2025-12-02 07:00:03'),
(15, 57.57, '2025-12-02 08:00:02'),
(16, 57.56, '2025-12-02 09:00:12'),
(17, 56.96, '2025-12-02 10:03:15'),
(18, 57.12, '2025-12-02 11:00:09'),
(19, 57.16, '2025-12-02 12:00:03'),
(20, 57.11, '2025-12-02 13:00:05'),
(21, 57.25, '2025-12-02 14:00:04'),
(22, 57.07, '2025-12-02 15:00:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BTC`
--
ALTER TABLE `BTC`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ETH`
--
ALTER TABLE `ETH`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `GOLD`
--
ALTER TABLE `GOLD`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SILVER`
--
ALTER TABLE `SILVER`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BTC`
--
ALTER TABLE `BTC`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ETH`
--
ALTER TABLE `ETH`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `GOLD`
--
ALTER TABLE `GOLD`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `SILVER`
--
ALTER TABLE `SILVER`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
