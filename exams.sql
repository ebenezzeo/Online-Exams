-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 05:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exams`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `qtn` varchar(200) DEFAULT NULL,
  `qtn2` varchar(100) DEFAULT NULL,
  `answer` varchar(1000) DEFAULT NULL,
  `mark` varchar(20) DEFAULT NULL,
  `yansa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qtns`
--

CREATE TABLE `qtns` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `invoice` varchar(20) NOT NULL,
  `class` varchar(20) DEFAULT NULL,
  `qno` int(20) NOT NULL,
  `qtn` varchar(1000) DEFAULT NULL,
  `a` varchar(1000) DEFAULT NULL,
  `b` varchar(1000) DEFAULT NULL,
  `c` varchar(1000) DEFAULT NULL,
  `d` varchar(1000) DEFAULT NULL,
  `answer` varchar(1000) DEFAULT NULL,
  `mark` varchar(20) DEFAULT NULL,
  `tee` varchar(100) DEFAULT NULL,
  `aa` varchar(10) DEFAULT NULL,
  `bb` varchar(10) DEFAULT NULL,
  `cc` varchar(10) DEFAULT NULL,
  `dd` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qtns`
--

INSERT INTO `qtns` (`id`, `date`, `invoice`, `class`, `qno`, `qtn`, `a`, `b`, `c`, `d`, `answer`, `mark`, `tee`, `aa`, `bb`, `cc`, `dd`) VALUES
(1872, '2023-02-12', 'QS05358611', 'D10', 1, 'The following are input devices except', 'Keyboard', 'Mouse', 'Monitor', 'Scanner', 'Monitor', '2', 'ICT', NULL, NULL, '1', NULL),
(1873, '2023-02-12', 'QS05358611', 'D10', 2, 'MOUSE IS AN OUTPUT DEVICE ', 'True', 'False', '1', '1', 'False', '2', 'ICT', NULL, '1', NULL, NULL),
(1874, '2023-02-12', 'QS05358611', 'D10', 3, 'All the following are output devices except', 'Monitor', 'Printer', 'Projector', 'Scanner', 'Scanner', '2', 'ICT', NULL, NULL, NULL, '1'),
(1875, '2023-02-12', 'QS05358611', 'D10', 4, 'Which of the following key is used to refresh the computer?', 'ALT Key', 'F6', 'F5', 'F10', 'F5', '2', 'ICT', NULL, NULL, '1', NULL),
(1876, '2023-02-12', 'QS05358611', 'D10', 5, 'The Keyboard is an example of an..................', 'Input Device', 'Output Device', 'Processing Device', 'Storage', 'Input Device', '2', 'ICT', '1', NULL, NULL, NULL),
(1877, '2023-02-12', 'QS05358611', 'D10', 6, 'All the following are example of Storage Devices except', 'Floppy Disk', 'Pendrive', 'Hard Disk', 'Soft Copy', 'Soft Copy', '2', 'ICT', NULL, NULL, NULL, '1'),
(1878, '2023-02-12', 'QS05358611', 'D10', 7, 'Computer process data to give ', 'Signal', 'Information ', 'Raw Data', 'Pictures And Videos ', 'Information ', '2', 'ICT', NULL, '1', NULL, NULL),
(1879, '2023-02-12', 'QS05358611', 'D10', 8, 'All the following are word processing except ', 'MS Word', 'Excel', 'Publisher ', 'Windows', 'Windows', '2', 'ICT', NULL, NULL, NULL, '1'),
(1880, '2023-02-12', 'QS05358611', 'D10', 9, 'The shortcut for Paste is ...?', 'Ctrl+P', 'Ctrl+V', 'Windows + P', 'Alt+P', 'Ctrl+V', '2', 'ICT', NULL, '1', NULL, NULL),
(1881, '2023-02-12', 'QS05358611', 'D10', 10, 'Which of the following is a not a social Media', 'TikTok', 'Email', 'Instagram', 'Facebook', 'Email', '2', 'ICT', NULL, '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qtns`
--
ALTER TABLE `qtns`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `qtns`
--
ALTER TABLE `qtns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1882;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
