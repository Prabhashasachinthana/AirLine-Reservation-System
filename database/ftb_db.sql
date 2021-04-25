-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 03:03 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ftb_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL,
  `activity` text NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `activity`, `user_id`) VALUES
(2, 'Create a new air craft', 1),
(3, 'Create a new FLight.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE IF NOT EXISTS `aircraft` (
  `aircraft_id` bigint(20) NOT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `number_of_seats` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`aircraft_id`, `manufacturer`, `model`, `number_of_seats`) VALUES
(3, 'Boeing', 'Boeing 307', 100),
(4, 'Boeing', 'Boeing 737', 300),
(16, 'Airbus', 'Airbus A220', 200),
(20, 'Airbus', 'Airbus A340', 340),
(23, 'Airbus', 'Airbus A440', 400),
(36, 'Boeing', 'Boeing 201', 180),
(40, 'Sri Lanka', 'BOIL336', 125),
(41, 'sadasd', 'asd123', 123),
(42, 'Sri Lanka', 'BOIL336', 125),
(43, 'Sri Lanka', 'BOIL336', 125);

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE IF NOT EXISTS `airport` (
  `airport_id` int(11) NOT NULL,
  `airport_code` varchar(255) DEFAULT NULL,
  `airport_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airport_id`, `airport_code`, `airport_name`, `city`, `country`, `state`) VALUES
(1, 'DAL', 'Dallas Love Field', 'Dallas', 'United States', 'Dallas'),
(2, 'DCG', 'Dubai Creek SPB', 'Dubai', 'United Arab Emirates', 'Dubai'),
(15, 'CID', 'Cedar Rapid Airport', 'IOWA', 'United States', 'Iowa'),
(19, 'CHI', 'Chicago Airport', 'Chicago', 'United States', 'Illinois'),
(31, 'CLN', 'California Airport', 'California', 'United States', 'California'),
(35, 'TEX', 'Texas Airport', 'Texas', 'United States', 'Texas'),
(38, 'SL1', 'Katunayaka', 'COLOMBO', 'Sri Lanka', 'Western');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE IF NOT EXISTS `flight` (
  `flight_id` bigint(20) NOT NULL,
  `arrival_date` date DEFAULT NULL,
  `arrival_time` varchar(255) DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `departure_time` varchar(255) DEFAULT NULL,
  `flight_charge` double NOT NULL,
  `flight_number` varchar(255) DEFAULT NULL,
  `aircraft_aircraft_id` bigint(20) DEFAULT NULL,
  `departure_airport_airport_id` int(11) DEFAULT NULL,
  `destination_airport_airport_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `arrival_date`, `arrival_time`, `departure_date`, `departure_time`, `flight_charge`, `flight_number`, `aircraft_aircraft_id`, `departure_airport_airport_id`, `destination_airport_airport_id`) VALUES
(5, '2021-03-02', '10:30', '2021-03-01', '08:00', 1200, 'dallas-dubai100', 3, 1, 2),
(6, '2021-08-02', '00:20', '2021-08-02', '10:20', 1600, 'dubai-dalas110', 3, 2, 1),
(25, '2021-08-08', '09:00', '2021-08-08', '07:00', 250, 'chi-cedar01', 3, 19, 15),
(26, '2021-08-03', '16:00', '2021-08-03', '14:00', 180, 'ced-chi05', 16, 15, 19),
(33, '2021-08-16', '21:00', '2021-08-16', '00:00', 500, 'dal - cal', 4, 1, 31),
(37, '2021-08-31', '14:40', '2021-08-31', '08:00', 650, 'IA-TEX101', 36, 15, 35),
(44, '2021-04-21', '01:05', '2021-04-21', '02:05', 2000, '15', 41, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(11),
(11),
(11),
(11),
(11),
(11);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE IF NOT EXISTS `passenger` (
  `passenger_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `passport_number` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `flight_flight_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passenger_id`, `address`, `email`, `first_name`, `last_name`, `passport_number`, `phone_number`, `flight_flight_id`) VALUES
(15, 'Maharagama', 'asd@gmail.com', 'Dilki', 'Nishadi', '12345643', '0752345678', 41),
(16, 'Bandarawela', 'asb@gmail.com', 'Asanka', 'Anuradha', '1643896', '0784321567', 42),
(40, 'Pannipitiya', 'sadf@gmail.com', 'Prabhasha', 'Wasala', '124356789', '0342342435', 43),
(67, 'Homagama', 'ass@gmail.com', 'Deshadi', 'Shashangani', '13446478', '0764356324', 12),
(234, 'Kurunegala', 'asd@gmail.com', 'Thilina', 'Dilshan', '12542456', '0703456324', 14),
(1089, 'kottawa', 'ras@gmail.com', 'Rashini', 'Wijesundara', '1234569', '0373423567', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`), ADD KEY `FKdlw7jbugyjqx8prk4p95okqtq` (`user_id`);

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`aircraft_id`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airport_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`), ADD KEY `FK98q69epkawxnm44tayvrppdbs` (`aircraft_aircraft_id`), ADD KEY `FK3oa47xgnaiy3jyqk2j1a4bdmq` (`departure_airport_airport_id`), ADD KEY `FKtk8ruym4g6f4flrcnnop2mnah` (`destination_airport_airport_id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passenger_id`), ADD KEY `FKffb69w8vqqqv7dqnf91o7yl91` (`flight_flight_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
