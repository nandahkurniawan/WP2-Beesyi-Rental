-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 02:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcategories`
--

CREATE TABLE `tblcategories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategories`
--

INSERT INTO `tblcategories` (`category_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'bus', '2023-05-01 00:00:00', '2023-05-28 10:03:14'),
(2, 'truck', '2023-05-01 00:00:00', '2023-05-28 10:03:14'),
(3, 'elf', '2023-05-12 11:11:56', '2023-05-28 10:03:14'),
(4, 'mobil', '2023-05-17 18:02:15', '2023-05-28 10:03:14'),
(5, 'motor', '2023-05-17 19:34:48', '2023-05-28 10:03:14'),
(6, 'sepeda', '2023-05-02 05:31:24', '2023-05-28 10:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `order_details` text NOT NULL,
  `order_total` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`order_id`, `customer_name`, `order_details`, `order_total`, `created_at`, `updated_at`, `order_number`) VALUES
(14, 'Agus', '[{\"product_id\":\"6\",\"product_price\":\"1700000\",\"qty\":\"1\"},{\"product_id\":\"18\",\"product_price\":\"110000\",\"qty\":\"1\"}]', 1810000, '2023-05-28 13:07:20', '2023-05-28 11:07:20', 'CA_30418'),
(15, 'Marlin Monroe', '[{\"product_id\":\"4\",\"product_price\":\"1200000\",\"qty\":\"10\"},{\"product_id\":\"16\",\"product_price\":\"90000\",\"qty\":\"2\"},{\"product_id\":\"6\",\"product_price\":\"1700000\",\"qty\":\"5\"}]', 20680000, '2023-05-28 13:24:19', '2023-05-28 11:24:19', 'CA_01465');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`product_id`, `product_name`, `category_id`, `product_price`, `created_at`, `updated_at`) VALUES
(1, 'Arimbi', 1, 2000000, '0000-00-00 00:00:00', '2023-05-28 10:58:31'),
(2, 'Bima Suci', 1, 2100000, '0000-00-00 00:00:00', '2023-05-28 10:58:31'),
(3, 'Haryanto', 1, 2500000, '0000-00-00 00:00:00', '2023-05-28 10:58:31'),
(4, 'Hino Pick Up', 2, 1200000, '0000-00-00 00:00:00', '2023-05-28 10:58:31'),
(5, 'Hino Engkel', 2, 1500000, '0000-00-00 00:00:00', '2023-05-28 10:58:31'),
(6, 'Hino Tronton', 2, 1700000, '0000-00-00 00:00:00', '2023-05-28 10:58:31'),
(7, 'Isuzu Kecil', 3, 800000, '0000-00-00 00:00:00', '2023-05-28 10:58:31'),
(8, 'Isuzu Sedang', 3, 900000, '0000-00-00 00:00:00', '2023-05-28 10:58:31'),
(9, 'Isuzu Besar', 3, 1100000, '0000-00-00 00:00:00', '2023-05-28 10:58:31'),
(10, 'Toyota Avanza', 4, 550000, '0000-00-00 00:00:00', '2023-05-28 10:58:31'),
(11, 'Daihatsu Xenia', 4, 600000, '0000-00-00 00:00:00', '2023-05-28 10:58:31'),
(12, 'Mitsubishi X-Pander', 4, 800000, '0000-00-00 00:00:00', '2023-05-28 10:58:31'),
(13, 'Honda Scoopy', 5, 120000, '2023-05-17 18:39:20', '2023-05-28 10:58:31'),
(14, 'Honda Vario 125', 5, 150000, '2023-05-17 18:40:08', '2023-05-28 10:58:31'),
(15, 'Yamaha N-MAX', 5, 200000, '2023-05-17 18:40:48', '2023-05-28 10:58:31'),
(16, 'United Bike Mini', 6, 90000, '2023-05-17 18:41:33', '2023-05-28 10:58:31'),
(17, 'United Mount Bike', 6, 100000, '2023-05-17 18:42:29', '2023-05-28 10:58:31'),
(18, 'United Bike BMX', 6, 110000, '2023-05-17 18:42:57', '2023-05-28 10:58:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcategories`
--
ALTER TABLE `tblcategories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategories`
--
ALTER TABLE `tblcategories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
