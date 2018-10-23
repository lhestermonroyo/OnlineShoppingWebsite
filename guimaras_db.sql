-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2018 at 12:01 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guimaras_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_tbl`
--

CREATE TABLE `accounts_tbl` (
  `acc_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `acc_type` varchar(100) NOT NULL,
  `acc_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_tbl`
--

INSERT INTO `accounts_tbl` (`acc_id`, `email`, `password`, `acc_type`, `acc_created`) VALUES
(5, 'admin@email.com', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2018-02-14 23:40:27'),
(9, 'admin2@email.com', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2018-02-28 05:21:30'),
(12, 'sample@email.com', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2018-02-28 06:03:46'),
(15, 'seller@email.com', 'e10adc3949ba59abbe56e057f20f883e', 'Seller', '2018-03-19 07:23:20'),
(16, 'seller2@email.com', 'e10adc3949ba59abbe56e057f20f883e', 'Seller', '2018-04-09 05:38:42'),
(19, 'test@email.com', 'e10adc3949ba59abbe56e057f20f883e', 'Seller', '2018-04-09 06:43:28'),
(20, 'carlgumban@email.com', 'e10adc3949ba59abbe56e057f20f883e', 'Seller', '2018-04-28 05:04:56'),
(21, 'bababelos@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Seller', '2018-05-09 11:42:45'),
(25, 'erenyeager@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Costumer', '2018-05-12 04:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `account_logs`
--

CREATE TABLE `account_logs` (
  `log_id` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `log_type` varchar(100) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_logs`
--

INSERT INTO `account_logs` (`log_id`, `acc_id`, `log_type`, `log_time`) VALUES
(1, 20, 'Log In', '2018-05-12 03:19:47'),
(2, 20, 'Log Out', '2018-05-12 03:29:22'),
(3, 21, 'Log In', '2018-05-12 03:29:33'),
(4, 21, 'Log Out', '2018-05-12 03:36:50'),
(5, 16, 'Log In', '2018-05-12 03:37:48'),
(6, 24, 'Log Out', '2018-05-12 03:45:08'),
(7, 16, 'Log Out', '2018-05-12 03:47:45'),
(8, 5, 'Log In', '2018-05-12 03:47:51'),
(9, 5, 'Log Out', '2018-05-12 03:55:22'),
(10, 15, 'Log In', '2018-05-12 03:55:35'),
(11, 25, 'Log In', '2018-05-12 04:07:13'),
(12, 15, 'Log Out', '2018-05-12 04:14:24'),
(13, 25, 'Log In', '2018-05-14 09:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `admins_tbl`
--

CREATE TABLE `admins_tbl` (
  `acc_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins_tbl`
--

INSERT INTO `admins_tbl` (`acc_id`, `firstname`, `lastname`) VALUES
(5, 'Jarvis', 'OS'),
(9, 'Jarvis', 'OS 2'),
(10, 'Sample', 'Sample'),
(12, 'Sample', 'Sample');

-- --------------------------------------------------------

--
-- Table structure for table `carts_tbl`
--

CREATE TABLE `carts_tbl` (
  `cart_id` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `cart_status` varchar(100) NOT NULL,
  `cart_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts_tbl`
--

INSERT INTO `carts_tbl` (`cart_id`, `acc_id`, `item_id`, `quantity`, `total_price`, `cart_status`, `cart_added`) VALUES
(1, 25, 17, '2', '200.00', 'Checkout', '2018-05-12 04:10:04'),
(2, 25, 21, '1', '149.50', 'Checkout', '2018-05-12 04:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories_tbl`
--

CREATE TABLE `categories_tbl` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories_tbl`
--

INSERT INTO `categories_tbl` (`cat_id`, `category_name`) VALUES
(21, 'Foods'),
(23, 'Delicacies'),
(25, 'Souviners'),
(26, 'Clothings'),
(27, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `costumers_tbl`
--

CREATE TABLE `costumers_tbl` (
  `acc_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `birthdate` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `profile_photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costumers_tbl`
--

INSERT INTO `costumers_tbl` (`acc_id`, `firstname`, `lastname`, `birthdate`, `age`, `gender`, `address`, `profile_photo`) VALUES
(25, 'Eren', 'Yeager', '1995-02-10', '23', 'Male', 'Zhiganshina District, Wall Rose', '../profile-photos/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `deliverydetails_tbl`
--

CREATE TABLE `deliverydetails_tbl` (
  `acc_id` int(11) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `telephone_number` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `address_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliverydetails_tbl`
--

INSERT INTO `deliverydetails_tbl` (`acc_id`, `mobile_number`, `telephone_number`, `address`, `address_details`) VALUES
(25, '1234567890', '1234567890', 'Zhiganshina District, Wall Rose', 'Ut enim ad minim veniam, quis nostrud exercitation.');

-- --------------------------------------------------------

--
-- Table structure for table `fees_tbl`
--

CREATE TABLE `fees_tbl` (
  `fee_id` int(11) NOT NULL,
  `service_fee` varchar(100) NOT NULL,
  `delivery_fee` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items_quantity_tbl`
--

CREATE TABLE `items_quantity_tbl` (
  `item_id` int(11) NOT NULL,
  `quantity` text NOT NULL,
  `quantity_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items_quantity_tbl`
--

INSERT INTO `items_quantity_tbl` (`item_id`, `quantity`, `quantity_updated`) VALUES
(1, '200', '2018-05-12 03:21:37'),
(2, '100', '2018-05-12 03:22:52'),
(3, '250', '2018-05-12 03:23:50'),
(4, '500', '2018-05-12 03:25:39'),
(5, '500', '2018-05-12 03:26:15'),
(6, '500', '2018-05-12 03:27:28'),
(7, '500', '2018-05-12 03:28:15'),
(8, '100', '2018-05-12 03:30:21'),
(9, '100', '2018-05-12 03:31:06'),
(10, '100', '2018-05-12 03:32:01'),
(11, '100', '2018-05-12 03:33:35'),
(12, '150', '2018-05-12 03:34:43'),
(13, '100', '2018-05-12 03:38:31'),
(15, '100', '2018-05-12 03:47:04'),
(16, '100', '2018-05-12 03:46:51'),
(17, '98', '2018-05-12 04:12:35'),
(18, '100', '2018-05-12 03:56:45'),
(19, '100', '2018-05-12 03:59:32'),
(20, '100', '2018-05-12 03:58:20'),
(21, '99', '2018-05-12 04:12:36'),
(22, '0', '2018-05-12 03:59:57'),
(23, '100', '2018-05-12 04:00:32'),
(24, '100', '2018-05-12 04:01:09'),
(25, '100', '2018-05-12 04:03:52'),
(26, '100', '2018-05-12 04:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `items_tbl`
--

CREATE TABLE `items_tbl` (
  `item_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `unit` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `item_status` varchar(100) NOT NULL,
  `item_photo` text NOT NULL,
  `item_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items_tbl`
--

INSERT INTO `items_tbl` (`item_id`, `seller_id`, `cat_id`, `name`, `description`, `unit`, `price`, `item_status`, `item_photo`, `item_added`) VALUES
(1, 20, 27, 'Coke Zero', 'Now you can browse privately, and other people who use this device wonâ€™t see your activity. However, downloads and bookmarks will be saved.', 'Bottle', '30.00', 'New', '../uploads/item-photos/wp-2.jpg', '2018-05-12 03:21:26'),
(2, 20, 27, 'Coke Litro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Bottle', '28.00', 'New', '../uploads/item-photos/anonymous-mask-vector-hd-wallpaper-1920x1200-5660.jpg', '2018-05-12 03:22:45'),
(3, 20, 27, 'Coke Sakto', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Bottle', '10.00', 'New', '../uploads/item-photos/auto-vw-vw-bus-vehicle-163711.jpeg', '2018-05-12 03:23:43'),
(4, 20, 21, 'Spanish Bread', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '6.00', 'New', '../uploads/item-photos/domenico-loia-272251.jpg', '2018-05-12 03:25:31'),
(5, 20, 21, 'Cheese Bread', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '6.00', 'New', '../uploads/item-photos/fall-autumn-red-season.jpg', '2018-05-12 03:26:10'),
(6, 20, 21, 'Malunggay Pandesal', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '2.50', 'New', '../uploads/item-photos/golden-gate-bridge-awesome-wallpaper.jpg', '2018-05-12 03:27:20'),
(7, 20, 21, 'Pandesal', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '1.50', 'New', '../uploads/item-photos/pexels-photo.jpg', '2018-05-12 03:27:58'),
(8, 21, 23, 'Peanut Butter Spread', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '50.00', 'New', '../uploads/item-photos/pexels-photo-88212.jpeg', '2018-05-12 03:30:14'),
(9, 21, 23, 'Cheese Spread', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '50.00', 'New', '../uploads/item-photos/pexels-photo-257897.jpeg', '2018-05-12 03:30:52'),
(10, 21, 23, 'Tuna Spread', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '60.00', 'New', '../uploads/item-photos/london-black-and-white.jpg', '2018-05-12 03:31:56'),
(11, 21, 23, 'Jackfruit Jam Spread', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '60.00', 'New', '../uploads/item-photos/natural-light-couples-photography-whimsical-walk-1600x1066.jpg', '2018-05-12 03:33:00'),
(12, 21, 23, 'Mango Jam Spread', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '80.00', 'New', '../uploads/item-photos/patrik-gothe-21749.jpg', '2018-05-12 03:34:37'),
(13, 16, 25, 'Guimaras Map', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '50.00', 'New', '../uploads/item-photos/iron20man.jpg', '2018-05-12 03:38:26'),
(15, 16, 25, 'Mango Souviner 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '75.00', 'New', '../uploads/item-photos/london-in-black-and-white_00441545.jpg', '2018-05-12 03:40:15'),
(16, 16, 25, 'Mango Souviner 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '75.00', 'New', '../uploads/item-photos/pexels-photo-131723.jpeg', '2018-05-12 03:46:46'),
(17, 15, 25, 'Guimaras Map 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '100.00', 'New', '../uploads/item-photos/pexels-photo-41433.jpeg', '2018-05-12 03:55:58'),
(18, 15, 25, 'Guimaras Map 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '100.00', 'New', '../uploads/item-photos/pexels-photo-164183.jpeg', '2018-05-12 03:56:19'),
(19, 15, 26, 'GM T-shirt White', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '149.50 ', 'New', '../uploads/item-photos/pexels-photo-213407.jpeg', '2018-05-12 03:57:26'),
(20, 15, 26, 'GM T-shirt White 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '149.50 ', 'New', '../uploads/item-photos/pexels-photo-128458.jpeg', '2018-05-12 03:58:07'),
(21, 15, 26, 'GM T-shirt Black', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '149.50 ', 'New', '../uploads/item-photos/rawpixel-com-323215.jpg', '2018-05-12 03:59:11'),
(22, 15, 26, 'GM T-shirt Black 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '149.50 ', 'New', '../uploads/item-photos/pexels-photo-221166.jpeg', '2018-05-12 03:59:57'),
(23, 15, 26, 'GM Gray Cap', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '100.00', 'New', '../uploads/item-photos/pexels-photo-248797.jpeg', '2018-05-12 04:00:18'),
(24, 15, 26, 'GM Gray Cap 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '100.00', 'New', '../uploads/item-photos/rawpixel-com-323215.jpg', '2018-05-12 04:01:02'),
(25, 15, 26, 'GM Cap White', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '100.00', 'New', '../uploads/item-photos/naruto-hokage-wallpaper-1920x1080.jpg', '2018-05-12 04:03:15'),
(26, 15, 26, 'GM Cap Black', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.', 'Piece', '100.00', 'New', '../uploads/item-photos/naruto-hokage-wallpapers-1080p.jpg', '2018-05-12 04:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `item_features_tbl`
--

CREATE TABLE `item_features_tbl` (
  `feat_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `feature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_features_tbl`
--

INSERT INTO `item_features_tbl` (`feat_id`, `item_id`, `feature`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(2, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(3, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(4, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(5, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(6, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(7, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(8, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(9, 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(10, 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(11, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(12, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(13, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(14, 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(15, 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(16, 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(17, 7, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(18, 7, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(19, 8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(20, 8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(21, 9, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(22, 9, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(23, 10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(24, 10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(25, 11, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(26, 11, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(27, 12, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(28, 12, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(29, 13, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(30, 13, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(33, 16, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(34, 16, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(35, 15, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(36, 15, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(37, 17, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(38, 17, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(39, 18, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(40, 18, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(41, 19, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(42, 19, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(43, 20, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(44, 21, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(45, 21, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(46, 23, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(47, 23, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(48, 24, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(49, 25, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(50, 25, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(51, 26, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.'),
(52, 26, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labor.');

-- --------------------------------------------------------

--
-- Table structure for table `messages_tbl`
--

CREATE TABLE `messages_tbl` (
  `mes_id` int(11) NOT NULL,
  `costumer` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `convo_started` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_items_tbl`
--

CREATE TABLE `orders_items_tbl` (
  `orders_items_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_items_tbl`
--

INSERT INTO `orders_items_tbl` (`orders_items_id`, `order_id`, `item_id`) VALUES
(1, 1, 17),
(2, 1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `orders_tbl`
--

CREATE TABLE `orders_tbl` (
  `order_id` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `order_price` varchar(100) NOT NULL,
  `order_deliverydate` varchar(100) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `order_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_tbl`
--

INSERT INTO `orders_tbl` (`order_id`, `acc_id`, `order_price`, `order_deliverydate`, `order_status`, `payment_type`, `order_added`) VALUES
(1, 25, '349.5', '2018-05-16 06:12:36am', 'To be Delivered', 'COD', '2018-05-12 04:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `sellers_tbl`
--

CREATE TABLE `sellers_tbl` (
  `acc_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellers_tbl`
--

INSERT INTO `sellers_tbl` (`acc_id`, `firstname`, `lastname`, `mobile_number`, `address`) VALUES
(15, 'Seller', 'One', '09123456789', 'Iloilo City'),
(16, 'Pedro', 'Perez', '09123456789', 'Iloilo'),
(19, 'Test', 'Sample', '09123456789', 'Test'),
(20, 'Carl', 'Gumban', '09987654321', 'Buenavista, Guimaras'),
(21, 'Baba', 'Belos', '09123456789', 'Buenavista, Guimaras');

-- --------------------------------------------------------

--
-- Table structure for table `threads_tbl`
--

CREATE TABLE `threads_tbl` (
  `th_id` int(11) NOT NULL,
  `mes_id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `message` text NOT NULL,
  `th_status` varchar(100) NOT NULL,
  `th_sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `threads_tbl`
--

INSERT INTO `threads_tbl` (`th_id`, `mes_id`, `sender`, `receiver`, `message`, `th_status`, `th_sent`) VALUES
(1, 1, 3, 20, 'Hello!', 'Read', '2018-05-03 01:16:48'),
(2, 1, 20, 3, 'Hello too!', 'Read', '2018-05-03 01:17:18'),
(3, 1, 20, 3, 'What''s or business?', 'Read', '2018-05-03 02:03:45'),
(4, 1, 3, 20, 'Test', 'Read', '2018-05-03 02:04:42'),
(5, 1, 20, 3, 'Hey!', 'Read', '2018-05-03 02:40:51'),
(6, 1, 3, 20, 'Tee', 'Read', '2018-05-03 02:42:04'),
(7, 2, 3, 15, 'Boo', 'Read', '2018-05-03 02:43:07'),
(8, 2, 15, 3, 'Baa', 'Unread', '2018-05-03 02:43:51'),
(9, 1, 3, 20, 'Boss', 'Read', '2018-05-03 03:02:20'),
(10, 1, 3, 20, 'Hoy', 'Read', '2018-05-03 03:02:25'),
(11, 3, 22, 21, 'Banana', 'Read', '2018-05-04 00:45:16'),
(12, 3, 21, 22, 'Bananaaa', 'Read', '2018-05-04 00:46:11'),
(13, 3, 22, 21, 'Ok', 'Read', '2018-05-04 00:46:22'),
(14, 4, 1, 20, 'Is it too much to ask?', 'Read', '2018-05-05 05:10:10'),
(15, 1, 20, 3, 'Yes?', 'Unread', '2018-05-05 05:27:59'),
(16, 4, 20, 1, 'Yes?', 'Read', '2018-05-05 05:28:14'),
(17, 4, 1, 20, 'Nothing', 'Unread', '2018-05-05 05:31:11'),
(18, 4, 20, 1, 'Go', 'Read', '2018-05-05 05:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `units_tbl`
--

CREATE TABLE `units_tbl` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units_tbl`
--

INSERT INTO `units_tbl` (`unit_id`, `unit_name`) VALUES
(3, 'Piece'),
(4, 'Bottle'),
(5, 'Pack'),
(6, 'Dozen'),
(7, 'Box'),
(8, 'Sack'),
(9, 'Gallon');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists_tbl`
--

CREATE TABLE `wishlists_tbl` (
  `wish_id` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `wish_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_tbl`
--
ALTER TABLE `accounts_tbl`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `account_logs`
--
ALTER TABLE `account_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `admins_tbl`
--
ALTER TABLE `admins_tbl`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `carts_tbl`
--
ALTER TABLE `carts_tbl`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories_tbl`
--
ALTER TABLE `categories_tbl`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `costumers_tbl`
--
ALTER TABLE `costumers_tbl`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `deliverydetails_tbl`
--
ALTER TABLE `deliverydetails_tbl`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `fees_tbl`
--
ALTER TABLE `fees_tbl`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `items_quantity_tbl`
--
ALTER TABLE `items_quantity_tbl`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `items_tbl`
--
ALTER TABLE `items_tbl`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_features_tbl`
--
ALTER TABLE `item_features_tbl`
  ADD PRIMARY KEY (`feat_id`);

--
-- Indexes for table `messages_tbl`
--
ALTER TABLE `messages_tbl`
  ADD PRIMARY KEY (`mes_id`);

--
-- Indexes for table `orders_items_tbl`
--
ALTER TABLE `orders_items_tbl`
  ADD PRIMARY KEY (`orders_items_id`);

--
-- Indexes for table `orders_tbl`
--
ALTER TABLE `orders_tbl`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `sellers_tbl`
--
ALTER TABLE `sellers_tbl`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `threads_tbl`
--
ALTER TABLE `threads_tbl`
  ADD PRIMARY KEY (`th_id`);

--
-- Indexes for table `units_tbl`
--
ALTER TABLE `units_tbl`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `wishlists_tbl`
--
ALTER TABLE `wishlists_tbl`
  ADD PRIMARY KEY (`wish_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_tbl`
--
ALTER TABLE `accounts_tbl`
  MODIFY `acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `account_logs`
--
ALTER TABLE `account_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `carts_tbl`
--
ALTER TABLE `carts_tbl`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories_tbl`
--
ALTER TABLE `categories_tbl`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `fees_tbl`
--
ALTER TABLE `fees_tbl`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items_tbl`
--
ALTER TABLE `items_tbl`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `item_features_tbl`
--
ALTER TABLE `item_features_tbl`
  MODIFY `feat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `messages_tbl`
--
ALTER TABLE `messages_tbl`
  MODIFY `mes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_items_tbl`
--
ALTER TABLE `orders_items_tbl`
  MODIFY `orders_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders_tbl`
--
ALTER TABLE `orders_tbl`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `threads_tbl`
--
ALTER TABLE `threads_tbl`
  MODIFY `th_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `units_tbl`
--
ALTER TABLE `units_tbl`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wishlists_tbl`
--
ALTER TABLE `wishlists_tbl`
  MODIFY `wish_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
