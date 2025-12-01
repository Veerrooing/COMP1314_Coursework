-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2025 at 10:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- CREATE DATABASE

CREATE DATABASE IF NOT EXISTS 'Cryto_DB';
USE 'Crypto_DB'

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

-- --------------------------------------------------------

--
-- Table structure for table `GOLD`
--

CREATE TABLE `GOLD` (
  `id` int(11) NOT NULL,
  `AUcurrentPrice` decimal(18,2) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ETH`
--
ALTER TABLE `ETH`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GOLD`
--
ALTER TABLE `GOLD`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SILVER`
--
ALTER TABLE `SILVER`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
