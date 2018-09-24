-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2018 at 05:44 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zalegousers`
--

-- --------------------------------------------------------

--
-- Table structure for table `zalego_user`
--

CREATE TABLE `zalego_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zalego_user`
--

INSERT INTO `zalego_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `email`, `is_staff`, `is_active`, `date_joined`, `first_name`, `last_name`) VALUES
(1, 'pbkdf2_sha256$120000$vEqhOxySUdk2$l2ArGYeIt97FE8fCZMglWbKjpGM7q32EHvZw3GWMFsY=', '2018-09-24 13:37:17.070503', 0, 'david@gmail.com', '', 0, 1, '2018-09-24 12:23:47.022332', 'DAVID', 'MUGAMBI'),
(2, 'pbkdf2_sha256$120000$ni7eGxT7sGLs$b9SJUAY5nqCZjgSZR1p82iBJqsKlgniRs5GiuAIX/SM=', NULL, 0, 'mary@wairimu.com', '', 0, 1, '2018-09-24 13:21:47.319654', 'mary', 'wairimu'),
(3, 'pbkdf2_sha256$120000$NxZ6Ub9UyXqx$z8Bsoojen4gb8gM+MgJneMhsOg+WqY7JrIY5Q9SoyeQ=', NULL, 0, 'steve@makumi.com', '', 0, 1, '2018-09-24 13:24:39.380374', 'steve', 'makumi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zalego_user`
--
ALTER TABLE `zalego_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zalego_user`
--
ALTER TABLE `zalego_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
