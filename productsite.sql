-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 08:16 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` bigint(20) NOT NULL,
  `added_date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `added_date`, `email`, `password`, `name`) VALUES
(1, '2022-03-23 07:41:28', 'admin@gmail.com', 'admin', 'Ninad');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `id` bigint(20) NOT NULL,
  `discount_price` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` varchar(200) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `mrp_price` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `id` int(11) NOT NULL,
  `address` varchar(235) NOT NULL,
  `added_date` timestamp NULL DEFAULT current_timestamp(),
  `email` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `pin_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`id`, `address`, `added_date`, `email`, `gender`, `name`, `password`, `phone`, `pin_code`) VALUES
(29, 'Chembur Goathan, Chembur, Mumbai', '2022-06-18 09:38:46', 'ninadpatil@gmail.com', 'Male', 'Ninad Patil', 'ninad1234', '8909876543', '400071');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `order_no` int(11) DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `mobile_number` varchar(100) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `product_name` varchar(400) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL,
  `product_selling_price` varchar(100) DEFAULT NULL,
  `product_total_price` varchar(100) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT current_timestamp(),
  `shipping_add` varchar(200) CHARACTER SET utf8 NOT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `order_no`, `customer_name`, `mobile_number`, `email_id`, `address`, `address_type`, `pincode`, `image`, `product_name`, `quantity`, `product_price`, `product_selling_price`, `product_total_price`, `order_status`, `order_date`, `shipping_add`, `payment_mode`, `payment_id`) VALUES
(37, 1001, 'Ninad Patil', '8909876543', 'ninadpatil@gmail.com', 'Chembur Goathan, Chembur, Mumbai', 'Home', '400071', '36-bz-bza-one-click-original-imag5b66azkp2tys.webp', 'Blazer Suit', 1, '12999', '6759', '6759', 'Pending', '2022-07-08 06:14:15', 'Chembur', 'COD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` bigint(20) NOT NULL,
  `active` varchar(100) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `image_name` varchar(400) DEFAULT NULL,
  `name` varchar(300) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `mrp_price` varchar(200) DEFAULT NULL,
  `product_category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `active`, `code`, `create_date`, `description`, `image`, `image_name`, `name`, `price`, `mrp_price`, `product_category`) VALUES
(1, 'Active', '3JU', '2022-03-25 06:25:30', 'Blazer suit to attend your meetings or function in style', 'C:Users\r\ninad.patilDocumentsNetBeansProjectsOnlineShoppingSystemwebupload36-bz-bza-one-click-original-imag5b66azkp2tys.webp', '36-bz-bza-one-click-original-imag5b66azkp2tys.webp', 'Blazer Suit', '6759', '12999', 'Clothing'),
(2, 'Active', 'IEZ', '2022-03-25 07:54:10', '6 GB RAM | 64 GB ROM | Expandable Upto 256 GB, SDM845 Processor', 'C:Users\r\ninad.patilDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsPocof1.jpg', 'Pocof1.jpg', 'Poco F1', '19999', '21999', 'Electronic'),
(3, 'Active', 'PLU', '2022-03-25 08:05:14', ' HD LED Backlit, IPS Anti-Glare Display (250 nits Brightness, 120 Hz Refresh Rate) Display Powered By NVIDIA GeForce GTX 1650', 'C:Users\r\ninad.patilDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsideapad-gaming.webp', 'ideapad-gaming.webp', 'Lenovo Ideapad Gaming 3 Ryzen 5 Hexa Core 4600H', '63990', '85290', 'Computers'),
(4, 'Active', 'WAV', '2022-03-25 09:17:44', 'Ultra HD (4K) LED Smart Android TV with Dolby Atmos and Dolby Vision', 'C:Users\r\ninad.patilDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsmi-tv.webp', 'mi-tv.webp', 'Mi 5X Smart TV', '40999', '59999', 'Televisions');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
