-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Generation Time: Oct 28, 2020 at 08:31 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docker`
--

-- --------------------------------------------------------

--
-- Table structure for table `actios`
--

CREATE TABLE `actios` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actios`
--

INSERT INTO `actios` (`id`, `name`) VALUES
(7, 'action 2'),
(8, 'action3'),
(9, 'action 4'),
(10, 'action 5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(11) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(22, 'Alex admin', 'alexx1934@ukr.net', '123', 'admin'),
(24, 'Vasil User', 'vasil1984@ukr.net', '123', 'user'),
(25, 'Jon User', 'jon1984@ukr.net', '123', 'user'),
(26, 'kate user', 'kate@ukr.net', '123', 'user'),
(27, 'kate user', 'kate@ukr.net', '123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `users_action`
--

CREATE TABLE `users_action` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `count_times` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_action`
--

INSERT INTO `users_action` (`id`, `user_id`, `action_id`, `count_times`) VALUES
(15, 19, 7, 3),
(16, 25, 7, 5),
(17, 25, 8, 7),
(18, 25, 9, 6),
(19, 25, 10, 4),
(20, 24, 7, 9),
(21, 24, 8, 4),
(22, 24, 9, 4),
(23, 24, 10, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actios`
--
ALTER TABLE `actios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_action`
--
ALTER TABLE `users_action`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actios`
--
ALTER TABLE `actios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users_action`
--
ALTER TABLE `users_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
