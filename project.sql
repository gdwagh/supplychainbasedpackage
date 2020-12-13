-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 02:37 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `collector`
--

CREATE TABLE `collector` (
  `c_id` int(20) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_mob` varchar(10) NOT NULL,
  `c_area` varchar(20) NOT NULL,
  `c_pass` varchar(20) NOT NULL,
  `c_user_count` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collector`
--

INSERT INTO `collector` (`c_id`, `c_name`, `c_mob`, `c_area`, `c_pass`, `c_user_count`) VALUES
(2001, 'Gita', '9876543210', 'shanti nagar', 'abc123', '5'),
(2002, 'Sita', '1223456789', 'vidya nagar', 'pqr123', '4'),
(2003, 'ram', '9867065346', 'balaji nagar', 'xyz123', '6');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(20) NOT NULL,
  `p_name` varchar(20) NOT NULL,
  `p_date` date NOT NULL,
  `p_company` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_date`, `p_company`) VALUES
(1001, 'Milk', '2020-11-03', 'ABC'),
(1002, 'Milk', '2020-11-04', 'XYZ'),
(1003, 'Milk', '2020-11-05', 'PQR');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `u_id` int(20) NOT NULL,
  `p_id` int(20) NOT NULL,
  `u_p_received` varchar(20) NOT NULL,
  `l_p_s` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`u_id`, `p_id`, `u_p_received`, `l_p_s`) VALUES
(3001, 1001, 'yes', '10'),
(3002, 1002, 'yes', '5'),
(3003, 1003, 'no', '0');

-- --------------------------------------------------------

--
-- Table structure for table `submit_process`
--

CREATE TABLE `submit_process` (
  `u_id` int(20) NOT NULL,
  `p_id` int(20) NOT NULL,
  `c_id` int(20) NOT NULL,
  `msg` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submit_process`
--

INSERT INTO `submit_process` (`u_id`, `p_id`, `c_id`, `msg`) VALUES
(3001, 1001, 2001, 'thanks '),
(3002, 1002, 2002, 'thank you'),
(3003, 1003, 2003, 'nice work');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(20) NOT NULL,
  `u_name` varchar(20) NOT NULL,
  `u_pass` varchar(20) NOT NULL,
  `u_mob` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_pass`, `u_mob`) VALUES
(3001, 'roshan', 'abc123', '9867453412'),
(3002, 'rahul', 'pqr123', '7896454321'),
(3003, 'pankaj', 'xyz123', '9756432310');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
