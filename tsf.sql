-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2021 at 10:55 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `tsf bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Aashna', 'Hedge', 400, '2021-04-17 18:58:27'),
(2, 'Aditya', 'Kumar', 200, '2021-05-23 10:00:31'),
(3, 'Manav', 'Chabra', 5000, '2021-08-01 19:01:32'),
(4, 'Unnati', 'Malharkar', 5000, '2021-10-11 23:06:15'),
(5, 'Sanket', 'Mehta', 500, '2021-11-15 04:28:24'),
(6, 'Rishabh', 'Chawla', 500, '2021-10-4 22:30:31'),
(7, 'Ashi', 'Khanna', 200, '2021-02-8 08:31:22'),
(8, 'Tanzeel', 'Khan', 520, '2021-07-19 07:39:58'),
(9, 'Arshdeep', 'Singh', 500, '2021-03-26 09:37:08'),
(10, 'Mrunal', 'Panchal', 100, '2021-01-30 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Aashna', 'aash@gmail.com', 57000),
(2, 'Aditya', 'addy@gmail.com', 22000),
(3, 'Manav', 'mnv@gmail.com', 60000),
(4, 'Unnati', 'uns@gmail.com', 55000),
(5, 'Sanket', 'sanku@gmail.com', 43000),
(6, 'Rishabh', 'rishu@gmail.com', 25000),
(7, 'Ashi', 'ashu@gmail.com', 63000),
(8, 'Tanzeel', 'tanzu@gmail.com', 45000),
(9, 'Arshdeep', 'arsh@gmail.com', 19000),
(10, 'Mrunal', 'mrunu@gmail.com', 65000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;