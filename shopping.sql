-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 10:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2024-02-01 16:21:18', '07-03-2024 03:36:02 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(10, 'SAREES', '', '2019-03-12 07:28:20', NULL),
(11, 'KURTIS & DRESSES', '', '2019-03-12 07:28:34', NULL),
(12, 'SALWAR SUITS', '', '2019-03-12 07:28:46', NULL),
(13, 'LEHENGAS & GOWNS ', '', '2019-03-12 07:29:02', NULL),
(16, 'SAREES', '', '2024-03-22 05:54:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(3, 4, '23', 1, '2019-03-14 04:15:22', 'Internet Banking', 'in Process'),
(4, 5, '23', 1, '2024-03-07 07:32:25', 'Debit / Credit card', NULL),
(5, 5, '27', 1, '2024-03-07 13:42:09', 'COD', NULL),
(6, 10, '24', 1, '2024-03-13 08:38:36', NULL, NULL),
(7, 12, '23', 1, '2024-03-18 13:15:56', 'Debit / Credit card', NULL),
(8, 12, '24', 1, '2024-03-18 13:15:56', 'Debit / Credit card', NULL),
(9, 13, '23', 1, '2024-03-20 08:16:45', 'COD', NULL),
(10, 14, '23', 1, '2024-03-21 04:50:11', 'COD', NULL),
(11, 14, '23', 1, '2024-03-21 04:52:23', 'Internet Banking', NULL),
(12, 15, '24', 1, '2024-03-21 08:56:03', 'COD', 'Delivered'),
(13, 1, '23', 1, '2024-03-21 08:58:34', 'Internet Banking', NULL),
(14, 1, '24', 1, '2024-03-21 08:58:34', 'Internet Banking', NULL),
(15, 16, '24', 1, '2024-03-21 09:25:28', 'COD', NULL),
(16, 15, '44', 1, '2024-03-21 13:12:00', 'Internet Banking', NULL),
(17, 17, '24', 2, '2024-03-23 03:59:29', 'COD', NULL),
(18, 18, '24', 1, '2024-03-24 07:01:41', 'Debit / Credit card', 'Delivered'),
(19, 1, '21', 1, '2024-03-31 09:56:19', 'Internet Banking', NULL),
(20, 1, '23', 1, '2024-03-31 09:56:19', 'Internet Banking', NULL),
(21, 20, '23', 1, '2024-03-31 10:13:46', 'COD', NULL),
(22, 20, '23', 1, '2024-03-31 10:15:53', 'COD', NULL),
(23, 1, '40', 1, '2024-04-01 10:13:10', 'COD', NULL),
(24, 1, '23', 1, '2024-04-01 10:24:07', NULL, NULL),
(25, 1, '24', 1, '2024-04-01 10:24:07', NULL, NULL),
(26, 1, '38', 1, '2024-04-01 10:24:07', NULL, NULL),
(27, 22, '37', 1, '2024-04-01 11:16:01', 'COD', NULL),
(28, 26, '24', 2, '2024-04-03 08:26:19', 'COD', NULL),
(29, 26, '37', 2, '2024-04-03 08:26:19', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'DONE', '2019-03-14 04:19:59'),
(2, 12, 'Delivered', 'kk', '2024-03-24 06:55:38'),
(3, 18, 'Delivered', 'hhh', '2024-03-24 13:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 7, 14, 'Blue dress', 'bibo', 1499, 1999, '<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Fabric</span> : Cotton Blend</li><li><span>Wash Care</span> : Dry Clean</li><li><span>Color</span> : Pink</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Pattern</span> : Striped</li><li><span>Work</span> : Woven</li><li><span>Back Style</span> : Closed back</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Neck-Style</span> : V Neck</li><li><span>Length</span> : Calf Length</li><li><span>Occasion</span> : Office wear,Party</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Type</span> : Kurti</li><li><span>Size</span> : XS</li></ul>\r\n									</div>', 'CV-36451-MCRAF65301883130-1544110886-Craftsvilla_1(2).jpg', 'CV-36451-MCRAF65301883130-1544110891-Craftsvilla_2.jpg', 'CV-36451-MCRAF65301883130-1544110895-Craftsvilla_3.jpg', 100, 'In Stock', '2019-03-07 10:12:20', NULL),
(23, 10, 17, 'Orange Color Silk Designer Resham Embroidery Saree', 'Craftsvilla', 1399, 2599, '<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Saree Color</span> : Orange</li><li><span>Wash Care</span> : Hand Wash</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<div align=\"justify\"><ul class=\"psd-list\"><li><span>Blouse Piece Fabric</span> : Art Silk</li><li><span>Pattern</span> : Self Designed</li><li><span>Saree Fabric</span> : Silk</li></ul></div>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Style</span> : Color Pleated Sarees</li><li><span>Saree Work</span> : Resham Embroidered</li><li><span>Blouse Piece Size</span> : 0.8 mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Length</span> : 5.5 Metres</li><li><span>Saree Size</span> : 5.5 mtr</li><li><span>Occasion</span> : Mehendi,Party</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Type</span> : Designer</li><li><span>Trasparency</span> : Non See Through</li><li><span>Has Petticoat</span> : 0</li></ul><div><br></div><div><br></div>\r\n													</div>', 'CV-35964-MCRAF74465768860-1538759548-Craftsvilla_1.jpg', 'CV-35964-MCRAF74465768860-1538759548-Craftsvilla_2.jpg', 'CV-35964-MCRAF74465768860-1538759549-Craftsvilla_3.jpg', 100, 'In Stock', '2019-03-12 07:54:04', NULL),
(24, 10, 17, 'Blue Color Silk Designer Resham Embroidery Saree', 'BIBO', 1349, 2779, '<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Saree Color</span> : Blue</li><li><span>Wash Care</span> : Hand Wash</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Blouse Piece Fabric</span> : Art Silk</li><li><span>Pattern</span> : Self Designed</li><li><span>Saree Fabric</span> : Silk</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Style</span> : Color Pleated Sarees</li><li><span>Saree Work</span> : Resham Embroidered</li><li><span>Blouse Piece Size</span> : 0.8 mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Length</span> : 5.5 Metres</li><li><span>Saree Size</span> : 5.5 mtr</li><li><span>Occasion</span> : Mehendi,Party</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Type</span> : Designer</li><li><span>Trasparency</span> : Non See Through</li><li><span>Has Petticoat</span> : 0</li></ul>\r\n													</div>', 'CV-35964-MCRAF83722140300-1538760092-Craftsvilla_1.jpg', 'CV-35964-MCRAF83722140300-1538760092-Craftsvilla_2.jpg', 'CV-35964-MCRAF83722140300-1538760092-Craftsvilla_3.jpg', 100, 'In Stock', '2019-03-12 07:56:28', NULL),
(25, 10, 17, 'Brown Color Silk Resham Embroidered Designer Saree With Unstitched Blouse Material', 'BIBO', 1599, 2999, '<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Saree Color</span> : Brown</li><li><span>Wash Care</span> : Hand Wash</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Blouse Piece Fabric</span> : Art Silk</li><li><span>Pattern</span> : Self Designed</li><li><span>Saree Fabric</span> : Silk</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Style</span> : Color Pleated Sarees</li><li><span>Saree Work</span> : Resham Embroidered</li><li><span>Blouse Piece Size</span> : 0.8 Metre</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Length</span> : 5.5 Metres</li><li><span>Occasion</span> : Festival,Party,Work wear</li><li><span>Saree Width</span> : 1.1 mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Type</span> : Designer</li><li><span>Trasparency</span> : Non See Through</li></ul>\r\n									</div>', 'CV-35964-MCRAF83824553460-1526628969-Craftsvilla_1.jpg', 'CV-35964-MCRAF83824553460-1526628976-Craftsvilla_2.jpg', '', 0, 'In Stock', '2019-03-12 07:59:11', NULL),
(26, 10, 17, 'Orange Color Silk Designer Resham Embroidery Saree', 'BIBO', 1999, 3999, '<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Saree Color</span> : Orange</li><li><span>Wash Care</span> : Hand Wash</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Fabric</span> : Art Silk</li><li><span>Style</span> : Cape Sarees</li><li><span>Saree Work</span> : Resham Embroidered</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Blouse Piece Size</span> : 0.8 mtr</li><li><span>Saree Length</span> : 5.5 Metres</li><li><span>Saree Size</span> : 5.5 mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Occasion</span> : Mehendi,Party</li><li><span>Type</span> : Designer</li><li><span>Trasparency</span> : Non See Through</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Has Petticoat</span> : 0</li></ul>\r\n									</div>', 'CV-35964-MCRAF59461489810-1538759882-Craftsvilla_1.jpg', 'CV-35964-MCRAF59461489810-1538759882-Craftsvilla_3.jpg', 'CV-35964-MCRAF59461489810-1538759882-Craftsvilla_5.jpg', 100, 'In Stock', '2019-03-12 08:03:31', NULL),
(27, 10, 18, 'Blue Color Georgette Printed Partywear Saree With Unstitched Blouse Material ', 'GLOBAL DESI', 1350, 2499, '<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Saree Color</span> : Blue</li><li><span>Wash Care</span> : Dry Clean</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Pattern</span> : Geometric</li><li><span>Saree Fabric</span> : Georgette</li><li><span>Style</span> : Readymade Saree</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Work</span> : Printed</li><li><span>Blouse Piece Size</span> : 0.8 mtr</li><li><span>Saree Length</span> : 5.5 Metres</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Size</span> : 5.5 mtr</li><li><span>Occasion</span> : Casual</li><li><span>Saree Width</span> : 1.5 mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Type</span> : Partywear</li><li><span>Trasparency</span> : Non See Through</li><li><span>Has Petticoat</span> : 0</li></ul>\r\n													</div>', 'CV-35633-MCRAF91787700350-1533223545-Craftsvilla_1.jpg', 'CV-35633-MCRAF91787700350-1533223546-Craftsvilla_3.jpg', 'CV-35633-MCRAF91787700350-1533223546-Craftsvilla_5.jpg', 100, 'In Stock', '2019-03-14 03:41:54', NULL),
(28, 10, 18, 'Peach Color Silk Blend Printed Traditional Saree With Unstitched Blouse Material ', 'FABINDIA', 1850, 2099, '<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Saree Color</span> : Peach</li><li><span>Wash Care</span> : Dry Clean</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Blouse Piece Fabric</span> : Silk Blend</li><li><span>Pattern</span> : Striped</li><li><span>Saree Fabric</span> : Silk Blend</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Style</span> : Readymade Saree</li><li><span>Saree Work</span> : Printed</li><li><span>Blouse Piece Size</span> : 0.8 mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Length</span> : 5.5 Metres</li><li><span>Saree Size</span> : 5.5 mtr</li><li><span>Occasion</span> : Casual</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Width</span> : 1.5 mtr</li><li><span>Type</span> : Traditional</li><li><span>Trasparency</span> : Non See Through</li></ul>\r\n													</div>', 'CV-35633-MCRAF13144363830-1533222846-Craftsvilla_1.jpg', 'CV-35633-MCRAF13144363830-1533222847-Craftsvilla_3.jpg', 'CV-35633-MCRAF13144363830-1533222847-Craftsvilla_5.jpg', 100, 'In Stock', '2019-03-14 03:44:24', NULL),
(29, 10, 18, 'Black Crepe Printed Party Wear Saree With Unstitched Blouse Material', 'BIBO', 999, 1899, '<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Saree Color</span> : Black</li><li><span>Wash Care</span> : Dry clean</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Blouse Piece Fabric</span> : Crepe</li><li><span>Pattern</span> : Geometric</li><li><span>Saree Fabric</span> : Crepe</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Style</span> : Readymade Saree</li><li><span>Saree Work</span> : Printed</li><li><span>Blouse Piece Size</span> : 0.8 Metre</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Length</span> : 5.5 Metres</li><li><span>Occasion</span> : Party</li><li><span>Saree Width</span> : 1.5 mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Trasparency</span> : Non See Through</li></ul>\r\n									</div>', 'CV-35633-MCRAF88916540060-1544181506-Craftsvilla_1.jpg', 'CV-35633-MCRAF88916540060-1544181510-Craftsvilla_2.jpg', 'CV-35633-MCRAF88916540060-1544181514-Craftsvilla_3.jpg', 100, 'In Stock', '2019-03-14 03:47:46', NULL),
(30, 10, 18, 'Teal Blue Color Silk Blend Printed Traditional Saree With Unstitched Blouse Material ', 'SOCH', 1899, 2499, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Saree Color</span> : Teal blue</li><li><span>Wash Care</span> : Dry Clean</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Blouse Piece Fabric</span> : Silk Blend</li><li><span>Pattern</span> : Striped</li><li><span>Saree Fabric</span> : Silk Blend</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Style</span> : Readymade Saree</li><li><span>Saree Work</span> : Printed</li><li><span>Blouse Piece Size</span> : 0.8 mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Length</span> : 5.5 Metres</li><li><span>Saree Size</span> : 5.5 mtr</li><li><span>Occasion</span> : Casual</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Width</span> : 1.5 mtr</li><li><span>Type</span> : Traditional</li><li><span>Trasparency</span> : Non See Through</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Has Petticoat</span> : 0</li></ul>\r\n									</div><br>', 'CV-35633-MCRAF33772791500-1533225000-Craftsvilla_1.jpg', 'CV-35633-MCRAF33772791500-1533225001-Craftsvilla_3.jpg', 'CV-35633-MCRAF33772791500-1533225001-Craftsvilla_5.jpg', 100, 'In Stock', '2019-03-14 03:50:56', NULL),
(31, 10, 19, 'Orange Color Cotton Saree With Traditional Pallu And Unstitched Blouse Material ', 'MASABA', 870, 1570, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Saree Color</span> : Orange</li><li><span>Wash Care</span> : Dry Clean</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Pattern</span> : Self Designed</li><li><span>Saree Fabric</span> : Cotton</li><li><span>Style</span> : Readymade Saree</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Work</span> : Jacquard</li><li><span>Blouse Piece Size</span> : 0.8 mtr</li><li><span>Saree Length</span> : 5.5 Metres</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Size</span> : 5.5 mtr</li><li><span>Occasion</span> : Casual,Festival</li><li><span>Type</span> : Designer</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Trasparency</span> : Non See Through</li><li><span>Has Petticoat</span> : 0</li></ul>\r\n									</div>\r\n								\r\n								<div class=\"col-xs-12 nopadding psd-heading\">\r\n									<p><u><b>Product Description</b></u></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										Classic Cotton saree in Orange with Golden Zari Border and \r\nTraditional Golden Zari Pallu in ellaborate design and Unstiched blouse.\r\n Make this classic Silk Blend a part of your wardrobe\r\n				 					</p>\r\n								</div>', 'CV-35655-MCRAF89157770280-1539107954-Craftsvilla_1.jpg', 'CV-35655-MCRAF89157770280-1539107955-Craftsvilla_3.jpg', 'CV-35655-MCRAF89157770280-1539107955-Craftsvilla_4.jpg', 100, 'In Stock', '2019-03-14 03:54:27', NULL),
(32, 10, 19, 'Red Color Cotton Saree With Traditional Contrast Zari Pecock Border Work And Unstitched Blouse Material ', 'MASABA', 799, 1175, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Saree Color</span> : Red</li><li><span>Wash Care</span> : Hand Wash</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Fabric</span> : Poly Cotton</li><li><span>Saree Work</span> : Woven</li><li><span>Occasion</span> : Casual</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Has Petticoat</span> : 0</li></ul><div><u><b><br></b></u></div><u><b>\r\n									</b></u></div><u><b>\r\n								\r\n								</b></u><div class=\"col-xs-12 nopadding psd-heading\"><u><b>\r\n									</b></u><p><u><b>Product Description</b></u></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										Presenting you a fantabulous assortment for casual wear with \r\nmost appealing fabric. It has an eye attaining quality with intricate \r\ndesign &amp; the border posture of this collection has a g  azing quality\r\n									</p>\r\n								</div>', 'CV-35745-MCRAF66144309020-1526893379-Craftsvilla_1.jpg', 'CV-35745-MCRAF66144309020-1526893401-Craftsvilla_3.jpg', 'CV-35745-MCRAF66144309020-1526893412-Craftsvilla_4.jpg', 100, 'In Stock', '2019-03-14 03:58:51', NULL),
(33, 10, 19, 'Black Color Cotton Blend Zallar Pallu Traditional Saree ', 'BIBO', 750, 1200, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><font size=\"3\"><u><b>Details</b></u></font></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Style</span> : Readymade Saree</li><li><span>Wash Care</span> : Dry Clean</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Blouse Piece Fabric</span> : Cotton Blend</li><li><span>Pattern</span> : Striped</li><li><span>Saree Fabric</span> : Cotton Blend</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Blouse Piece Size</span> : 0.8 Metre</li><li><span>Saree Length</span> : 5.5 Metres</li><li><span>Occasion</span> : Festival</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Type</span> : Traditional</li><li><span>Trasparency</span> : Non See Through</li></ul><div><br></div>\r\n									</div>\r\n								\r\n								<div class=\"col-xs-12 nopadding psd-heading\">\r\n									<p><font size=\"3\"><u><b>Product Description</b></u></font></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										Sareemall Black &amp; Red Festive Wear Cotton Blend Strips Saree With Unstitched Blouse\r\n									</p>\r\n								</div>', 'CV-35633-MCRAF82216808900-1523080745-Craftsvilla_1.jpg', 'CV-35633-MCRAF82216808900-1523080758-Craftsvilla_3.jpg', 'CV-35633-MCRAF82216808900-1523080774-Craftsvilla_5.jpg', 100, 'In Stock', '2019-03-14 04:03:18', NULL),
(34, 10, 19, 'Black Color Cotton Blend Zallar Pallu Traditional Saree ', 'BIBO', 750, 1200, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><font size=\"3\"><u><b>Details</b></u></font></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Style</span> : Readymade Saree</li><li><span>Wash Care</span> : Dry Clean</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Blouse Piece Fabric</span> : Cotton Blend</li><li><span>Pattern</span> : Striped</li><li><span>Saree Fabric</span> : Cotton Blend</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Blouse Piece Size</span> : 0.8 Metre</li><li><span>Saree Length</span> : 5.5 Metres</li><li><span>Occasion</span> : Festival</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Type</span> : Traditional</li><li><span>Trasparency</span> : Non See Through</li></ul><div><br></div>\r\n									</div>\r\n								\r\n								<div class=\"col-xs-12 nopadding psd-heading\">\r\n									<p><font size=\"3\"><u><b>Product Description</b></u></font></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										Sareemall Black &amp; Red Festive Wear Cotton Blend Strips Saree With Unstitched Blouse\r\n									</p>\r\n								</div>', 'CV-35633-MCRAF82216808900-1523080745-Craftsvilla_1.jpg', 'CV-35633-MCRAF82216808900-1523080758-Craftsvilla_3.jpg', 'CV-35633-MCRAF82216808900-1523080774-Craftsvilla_5.jpg', 100, 'In Stock', '2019-03-14 04:09:16', NULL),
(35, 10, 20, 'Teal Blue And Maroon Color Temple Design Silk Blend Traditional Saree ', 'SOCH', 1299, 1499, '\r\n							\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p align=\"left\"><b>Details</b></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Saree Color</span> : Teal blue</li><li><span>Wash Care</span> : Dry Clean</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Blouse Piece Work</span> : Solid</li><li><span>Pattern</span> : Self Designed</li><li><span>Saree Fabric</span> : Silk Blend</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Style</span> : Readymade Saree</li><li><span>Saree Work</span> : Solid</li><li><span>Blouse Piece Size</span> : 0.8 mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Length</span> : 5.5 Metres</li><li><span>Saree Size</span> : 5.5 mtr</li><li><span>Occasion</span> : Festival,Party</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Type</span> : Traditional</li><li><span>Trasparency</span> : Non See Through</li><li><span>Has Petticoat</span> : 0</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														\r\n									</div>\r\n								\r\n								<div class=\"col-xs-12 nopadding psd-heading\">\r\n									<p><u><b>Product Description</b></u></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										Classic Silk Blend Saree in Blue with golden zari woven work \r\nwith heavy work pallu in ellaborate design. Make this classic Silk Blend\r\n a part of your wardrobe\r\n									</p>\r\n								</div>', 'CV-35968-MCRAF71563620650-1538800548-Craftsvilla_1.jpg', 'CV-35968-MCRAF71563620650-1538800548-Craftsvilla_3.jpg', 'CV-35968-MCRAF71563620650-1538800548-Craftsvilla_4.jpg', 100, 'In Stock', '2019-03-14 04:43:36', NULL),
(36, 10, 20, 'Blue Color Silk Saree With Butta Work And Unstitched Blouse Material', 'BIBO', 2499, 2999, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Blouse Piece</span> : 1</li><li><span>Saree Color</span> : Blue</li><li><span>Wash Care</span> : Dry Clean</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Saree Fabric</span> : Silk</li><li><span>Style</span> : Readymade Saree</li><li><span>Saree Work</span> : Zari Border</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Blouse Piece Size</span> : 0.8 mtr</li><li><span>Saree Length</span> : 5.5 Metres</li><li><span>Saree Size</span> : 5.5 mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Occasion</span> : Casual</li><li><span>Type</span> : Designer</li><li><span>Trasparency</span> : Non See Through</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Has Petticoat</span> : 0</li></ul>\r\n									</div>\r\n								\r\n								<div class=\"col-xs-12 nopadding psd-heading\">\r\n									<p><u><b>Product Description</b></u></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										Classic Silk saree in Blue with Butta Work and Traditional \r\ncontrast Zari Pallu in ellaborate design and Unstiched blouse. Make this\r\n classic Silk Blend a part of your wardrobe&nbsp;\r\n								 	</p>\r\n								</div>\r\n								\r\n								', 'CV-35971-MCRAF86978978780-1538800349-Craftsvilla_1.jpg', 'CV-35971-MCRAF86978978780-1538800350-Craftsvilla_2.jpg', 'CV-35971-MCRAF86978978780-1538800350-Craftsvilla_3.jpg', 100, 'In Stock', '2019-03-14 04:46:27', NULL),
(37, 12, 27, 'Orange & Off White Mashlin Silk Embroidered Plazzo Suit', 'BIBO', 2499, 3999, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Style</span> : Pakistani Suit</li><li><span>Salwar Fabric</span> : Muslin</li><li><span>Type</span> : Designer</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Has Dupatta</span> : 1</li><li><span>Kurta Color</span> : Orange</li><li><span>Kurta Work</span> : Embroidered</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Stitching Type</span> : Semi-Stitched</li><li><span>Has Jacket</span> : 0</li><li><span>Occasion</span> : Traditional</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Kurta Fabric</span> : Cotton</li><li><span>Kurta Neck-Style</span> : Collar Neck</li></ul><div><u><b><br></b></u></div><u><b>\r\n									</b></u></div><u><b>\r\n								\r\n								</b></u><div class=\"col-xs-12 nopadding psd-heading\"><u><b>\r\n									</b></u><p><u><b>Product Description</b></u></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										Craftsvilla presents its collection of unstitched dress \r\nmaterial sets for you to choose from. Once stitched, team this set with a\r\n pair of drop earrings and heels to complete the look.\r\n					 				</p>\r\n								</div>', 'CV-35631-MCRAF79835445220-1528962063-Craftsvilla_1.jpg', 'CV-35631-MCRAF79835445220-1528962075-Craftsvilla_2.jpg', 'CV-35631-MCRAF79835445220-1528962063-Craftsvilla_1.jpg', 100, 'In Stock', '2019-03-14 05:08:14', NULL),
(38, 12, 26, 'Sky Blue Color Cotton Blend Printed Unstitched Straight Suit ', 'RANGRITI', 799, 899, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Bottom Type</span> : Patiala</li><li><span>Style</span> : Straight Suit</li><li><span>Salwar Fabric</span> : Cotton Blend</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Wash Care</span> : Dry clean</li><li><span>Pattern</span> : Geometric</li><li><span>Has Dupatta</span> : 1</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Kurta Size</span> : Free size</li><li><span>Kurta Color</span> : Sky blue</li><li><span>Dupatta Fabric</span> : Chiffon</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Has Lining</span> : 0</li><li><span>Kurta Work</span> : Printed</li><li><span>Stitching Type</span> : Unstitched</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>By Length</span> : Knee length</li><li><span>Lining Material</span> : Not Applicable</li><li><span>Bottom Length (in Metres)</span> : 2.50 Mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Occasion</span> : Party</li><li><span>Kurta Fabric</span> : Cotton Blend</li><li><span>Kurta Neck-Style</span> : Round Neck</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Top Length(in Metres)</span> : 2 Mtr</li></ul><div><br></div>\r\n									</div>\r\n								\r\n								<div class=\"col-xs-12 nopadding psd-heading\">\r\n									<p><u><b>Product Description</b></u></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										Sky Blue Printed Cotton Blend Casual Patiyala geometric Dress Material With Matching Dupatta\r\n									</p>\r\n								</div>', 'CV-35633-MCRAF22852772300-1530536147-Craftsvilla_1.jpg', 'CV-35633-MCRAF22852772300-1530536157-Craftsvilla_2.jpg', 'CV-35633-MCRAF22852772300-1530536163-Craftsvilla_3.jpg', 100, 'In Stock', '2019-03-14 05:11:02', NULL),
(39, 12, 26, 'Grey Color Cotton Blend Printed Unstitched Straight Suit ', 'SOCH', 799, 999, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Bottom Type</span> : Patiala</li><li><span>Style</span> : Straight Suit</li><li><span>Salwar Fabric</span> : Cotton Blend</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Wash Care</span> : Dry clean</li><li><span>Pattern</span> : Geometric</li><li><span>Has Dupatta</span> : 1</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Kurta Size</span> : Free size</li><li><span>Kurta Color</span> : Grey</li><li><span>Dupatta Fabric</span> : Chiffon</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Has Lining</span> : 0</li><li><span>Kurta Work</span> : Printed</li><li><span>Stitching Type</span> : Unstitched</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>By Length</span> : Knee length</li><li><span>Lining Material</span> : Not Applicable</li><li><span>Bottom Length (in Metres)</span> : 2.50 Mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Occasion</span> : Party</li><li><span>Kurta Fabric</span> : Cotton Blend</li><li><span>Kurta Neck-Style</span> : Boat Neck</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Top Length(in Metres)</span> : 2 Mtr</li></ul><div><b><br></b></div><b>\r\n									</b></div><b>\r\n								\r\n								</b><div class=\"col-xs-12 nopadding psd-heading\"><b>\r\n									</b><p><b><u>Product Description</u></b></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										Grey Printed Cotton Blend Casual Patiyala geometric Dress Material With Matching Dupatta\r\n									</p>\r\n								</div>', 'CV-35633-MCRAF17885185690-1530536105-Craftsvilla_1.jpg', 'CV-35633-MCRAF17885185690-1530536116-Craftsvilla_2.jpg', 'CV-35633-MCRAF17885185690-1530536121-Craftsvilla_3.jpg', 100, 'In Stock', '2019-03-14 05:13:44', NULL),
(40, 12, 26, 'Blue Color Cotton Embroidered 3/4th Sleeves Unstitched Straight Suit ', 'BIBO', 1099, 1499, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Bottom Type</span> : Patiala</li><li><span>Style</span> : Straight Suit</li><li><span>Salwar Fabric</span> : santoon</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Wash Care</span> : Dry clean</li><li><span>Pattern</span> : Resham Embroidery</li><li><span>Has Dupatta</span> : 1</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Kurta Size</span> : Free size</li><li><span>Kurta Color</span> : Blue</li><li><span>Dupatta Fabric</span> : Chiffon</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Has Lining</span> : 0</li><li><span>Kurta Work</span> : Embroidered</li><li><span>Stitching Type</span> : Unstitched</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>By Length</span> : Knee length</li><li><span>Lining Material</span> : Not Applicable</li><li><span>Bottom Length (in Metres)</span> : 3 mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Occasion</span> : Party</li><li><span>Kurta Fabric</span> : Cotton</li><li><span>Kurta Neck-Style</span> : Round Neck</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Top Length(in Metres)</span> : 2.1 mtr</li></ul><div><br></div>\r\n									</div>\r\n								\r\n								<div class=\"col-xs-12 nopadding psd-heading\">\r\n									<p><b><u>Product Description</u></b></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										Appear stunningly beautiful in such a Navy Blue &amp; Beige \r\ncotton Patiala Punjabi suit for women. The ethnic embroidered Salwar \r\nsuit is beautifully designed by embroidered work with Ã‚Â¾ sle eves adds a\r\n sign of attractiveness to your style statement with your look. This \r\nEmbroidery Patiala salwar suit made of Pure Cotton top and Santoon \r\nbottom with Nazneen dupatta. Since the patiala salwar is unstitched \r\ndress material ,so customer can stitch as per requirement &amp; bottom \r\nwith pleats style. It is a very comfortable outfit to wear in all \r\nseasons. Maximum possible bust size: 42 inches .\r\n									</p>\r\n								</div>', 'CV-35630-MCRAF32303038070-1507641546-Craftsvilla_1.jpg', 'CV-35630-MCRAF32303038070-1507641557-Craftsvilla_3.jpg', 'CV-35630-MCRAF32303038070-1507641562-Craftsvilla_4.jpg', 100, 'In Stock', '2019-03-14 05:16:15', NULL),
(41, 12, 27, 'Wine And Yellow Cotton Party Wear Dress Material', 'GLOBAL DESI', 699, 850, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Bottom Type</span> : Pants</li><li><span>Style</span> : Straight Suit</li><li><span>Salwar Fabric</span> : Cotton</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Wash Care</span> : Dry clean</li><li><span>Pattern</span> : Resham Embroidery</li><li><span>Has Dupatta</span> : 1</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Kurta Size</span> : Free size</li><li><span>Kurta Color</span> : Maroon</li><li><span>Dupatta Fabric</span> : Chiffon</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Has Lining</span> : 0</li><li><span>Kurta Work</span> : Embroidered</li><li><span>Stitching Type</span> : Unstitched</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>By Length</span> : Calf length</li><li><span>Lining Material</span> : Not Applicable</li><li><span>Bottom Length (in Metres)</span> : 2.5 mtr</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Occasion</span> : Party</li><li><span>Kurta Fabric</span> : Cotton</li><li><span>Kurta Neck-Style</span> : Round Neck</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Top Length(in Metres)</span> : 2.5 mtr</li></ul>\r\n									</div>\r\n								\r\n								<div class=\"col-xs-12 nopadding psd-heading\">\r\n									<p><u><b>Product Description</b></u></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										We bring you an exclusive fresh look with the designs of our \r\ncollection because fashion welcomes the change of season by turning the \r\npage of the past and introducing a host of fabulous tren ds. Look \r\nstunningly beautiful in this WINE AND YELLOW STRAIGHT PANT SUIT with \r\nDupatta. This Suit is nicely designed with beautiful EMBROIDERY. Bottom \r\nand dupatta comes along with this. This suit can be customize upto \r\nfabric limitation. Slight color variation is possible.\r\n									</p>\r\n								</div>', 'CV-35630-MCRAF66685316750-1502370689-Craftsvilla_1.jpg', 'CV-35630-MCRAF66685316750-1502370696-Craftsvilla_2.jpg', 'CV-35630-MCRAF66685316750-1502370707-Craftsvilla_3.jpg', 100, 'In Stock', '2019-03-14 05:20:41', NULL),
(42, 12, 27, 'Maahi- Lovely Lilac Foil Printed Straight Kurta With Flared Palazzo And Chiffon Dupatta', 'BIBO', 1750, 1999, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Bottom Type</span> : Palazzo</li><li><span>Style</span> : Straight Suit</li><li><span>Salwar Fabric</span> : Georgette</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Wash Care</span> : Dry Clean</li><li><span>Pattern</span> : Foil Printed</li><li><span>Has Dupatta</span> : 1</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Kurta Size</span> : S</li><li><span>Has Lining</span> : 0</li><li><span>Dupatta Fabric</span> : Chiffon</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Kurta Color</span> : Pink</li><li><span>Kurta Work</span> : Printed</li><li><span>Stitching Type</span> : Readymade</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Has Jacket</span> : 0</li><li><span>By Length</span> : Calf length</li><li><span>Lining Material</span> : Not Applicable</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Occasion</span> : Festival</li><li><span>Kurta Fabric</span> : Georgette</li><li><span>Type</span> : Designer</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Sleeves Type</span> : 3/4 Sleeves</li><li><span>Kurta Neck-Style</span> : Round Neck</li></ul><div><br></div>\r\n									</div>\r\n								\r\n								<div class=\"col-xs-12 nopadding psd-heading\">\r\n									<p><b>Product Description</b></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										Lovely Lilac Foil Printed Straight Kurta With Flared Palazzo And Chiffon Dupatta\r\n									</p>\r\n								</div>', 'CV-36556-MCRAF63379499520-1551366147-Craftsvilla_1.jpg', 'CV-36556-MCRAF63379499520-1551366148-Craftsvilla_4.jpg', 'CV-36556-MCRAF63379499520-1551366149-Craftsvilla_5.jpg', 100, 'In Stock', '2019-03-14 05:27:16', NULL),
(43, 12, 27, 'Peche- Candy Peach Straight Kurta With Gota Palazzo ', 'FABINDIA', 1699, 1850, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Bottom Type</span> : Palazzo</li><li><span>Style</span> : Straight Suit</li><li><span>Salwar Fabric</span> : Cotton Blend</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Wash Care</span> : Dry Clean</li><li><span>Type</span> : Designer</li><li><span>Has Dupatta</span> : 0</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Kurta Size</span> : XL</li><li><span>Has Lining</span> : 0</li><li><span>Kurta Color</span> : Peach</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Kurta Work</span> : Embroidered</li><li><span>Stitching Type</span> : Readymade</li><li><span>Has Jacket</span> : 0</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>By Length</span> : Calf length</li><li><span>Lining Material</span> : Not Applicable</li><li><span>Occasion</span> : Festival</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Kurta Fabric</span> : Chanderi</li><li><span>Kurta Neck-Style</span> : Chinese Collar Neck</li><li><span>Sleeves Type</span> : 3/4 Sleeves</li></ul><div><br></div>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														\r\n									</div>\r\n								\r\n								<div class=\"col-xs-12 nopadding psd-heading\">\r\n									<p><u><b>Product Description</b></u></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										Candy Peach straight kurta with Gota Palazzo\r\n									</p>\r\n								</div>', 'CV-36556-MCRAF18553966570-1547730999-Craftsvilla_2.jpg', 'CV-36556-MCRAF18553966570-1547730999-Craftsvilla_4.jpg', 'CV-36556-MCRAF18553966570-1547731000-Craftsvilla_5.jpg', 100, 'In Stock', '2019-03-14 05:29:57', NULL),
(44, 13, 31, 'Red Satin Embroidered Designer Lehenga Choli ', 'SOCH', 8999, 15999, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p align=\"left\"><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Choli</span> : 1</li><li><span>Style</span> : Designer</li><li><span>Choli Fabric</span> : Velvet</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Lehenga Size</span> : Free</li><li><span>Lehenga Fabric</span> : Satin</li><li><span>Has Dupatta</span> : 1</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Dupatta Fabric</span> : Net</li><li><span>Stitching Type</span> : Semi-Stitched</li><li><span>Lehenga Work</span> : Embroidered</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Gher Length</span> : 3 meter</li><li><span>Occasion</span> : Wedding,Party,Festival</li><li><span>Lehenga Color</span> : Red</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Wash Care</span> : Dry Clean</li></ul><div><u><b><br></b></u></div><u><b>\r\n									</b></u></div><u><b>\r\n								\r\n								</b></u><div class=\"col-xs-12 nopadding psd-heading\"><u><b>\r\n									</b></u><p><u><b>Product Description</b></u></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										This Lehenga Choli bear a sophisticated look and enhance the \r\nbeauty of the women which can be worn for functions, festivals, parties \r\nand even wedding also. You will be a centre of attractio n in the event \r\nonce you ware it. This Lehenga comes with unstitched Choli fabric \r\nmaterial so it can be stitched according to your preference and style \r\nalso.\r\n									</p>\r\n								</div>', 'CV-36035-MCRAF96477759090-1552396057-Craftsvilla_1.jpg', 'CV-36035-MCRAF96477759090-1552396069-Craftsvilla_3.jpg', 'CV-36035-MCRAF96477759090-1552396064-Craftsvilla_2.jpg', 200, 'In Stock', '2019-03-14 05:33:39', NULL),
(45, 13, 31, 'Red Satin Embroidered Designer Lehenga Choli ', 'SOCH', 8999, 15999, '\r\n								\r\n									<div class=\"col-xs-12 nopadding psd-heading\">\r\n										<p align=\"left\"><u><b>Details</b></u></p>\r\n									</div>\r\n									<div class=\"col-xs-12 col-sm-4\">\r\n										<ul class=\"psd-list\"><li><span>Has Choli</span> : 1</li><li><span>Style</span> : Designer</li><li><span>Choli Fabric</span> : Velvet</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Lehenga Size</span> : Free</li><li><span>Lehenga Fabric</span> : Satin</li><li><span>Has Dupatta</span> : 1</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Dupatta Fabric</span> : Net</li><li><span>Stitching Type</span> : Semi-Stitched</li><li><span>Lehenga Work</span> : Embroidered</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Gher Length</span> : 3 meter</li><li><span>Occasion</span> : Wedding,Party,Festival</li><li><span>Lehenga Color</span> : Red</li></ul>\r\n													</div>\r\n													<div class=\"col-xs-12 col-sm-4\">\r\n														<ul class=\"psd-list\"><li><span>Wash Care</span> : Dry Clean</li></ul><div><u><b><br></b></u></div><u><b>\r\n									</b></u></div><u><b>\r\n								\r\n								</b></u><div class=\"col-xs-12 nopadding psd-heading\"><u><b>\r\n									</b></u><p><u><b>Product Description</b></u></p>\r\n								</div>\r\n								<div class=\"col-xs-12 nopadding\">\r\n									<p class=\"show-read-more\">\r\n										This Lehenga Choli bear a sophisticated look and enhance the \r\nbeauty of the women which can be worn for functions, festivals, parties \r\nand even wedding also. You will be a centre of attractio n in the event \r\nonce you ware it. This Lehenga comes with unstitched Choli fabric \r\nmaterial so it can be stitched according to your preference and style \r\nalso.\r\n									</p>\r\n								</div>', 'CV-36035-MCRAF96477759090-1552396057-Craftsvilla_1.jpg', 'CV-36035-MCRAF96477759090-1552396069-Craftsvilla_3.jpg', 'CV-36035-MCRAF96477759090-1552396064-Craftsvilla_2.jpg', 200, 'In Stock', '2019-03-14 05:46:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(17, 10, 'Embroidered Sarees', '2019-03-12 07:31:59', '12-03-2019 01:16:11 PM'),
(18, 10, 'Printed Sarees', '2019-03-12 07:32:29', '12-03-2019 01:16:36 PM'),
(19, 10, 'woven Sarees', '2019-03-12 07:32:45', '12-03-2019 01:17:20 PM'),
(20, 10, 'Half N Half Sarees', '2019-03-12 07:33:11', '12-03-2019 01:17:46 PM'),
(21, 11, 'Kurti', '2019-03-12 07:33:50', NULL),
(22, 11, 'Tunic', '2019-03-12 07:34:20', NULL),
(23, 11, 'Straight Kurtis', '2019-03-12 07:36:09', NULL),
(24, 11, 'Flared Kurtis', '2019-03-12 07:37:05', NULL),
(26, 12, 'Patiala Suits', '2019-03-12 07:39:16', NULL),
(27, 12, 'Palazzo Suits ', '2019-03-12 07:39:34', NULL),
(30, 13, 'Party Wear ', '2019-03-12 07:43:03', NULL),
(31, 13, 'Wedding', '2019-03-12 07:43:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(54, 'ladumor@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-24 06:58:59', NULL, 0),
(61, 'mor12345@gmail.com', 0x3a3a3100000000000000000000000000, '2024-03-31 09:28:41', '31-03-2024 03:27:07 PM', 1),
(63, 'ayuu@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-01 10:09:18', NULL, 0),
(64, 'ayuu@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-01 10:09:27', NULL, 0),
(65, 'ladumorayu@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-01 10:10:16', '01-04-2024 04:40:22 PM', 1),
(66, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-01 11:11:34', '01-04-2024 04:46:55 PM', 1),
(67, 'ayuu@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-02 07:44:20', NULL, 0),
(68, 'ayush@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-02 07:44:29', NULL, 0),
(69, 'ayush@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-02 07:45:21', NULL, 0),
(70, 'ladumorayush@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-02 07:45:44', NULL, 0),
(71, 'ladumorayuu@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-02 07:46:04', NULL, 0),
(72, 'het@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-02 07:46:59', NULL, 0),
(73, 'het@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-02 07:47:19', NULL, 0),
(74, 'ayush123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-02 07:48:48', NULL, 1),
(75, 'harshravani@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-03 08:21:24', NULL, 0),
(76, 'ravaniharsh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-03 08:21:47', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(19, 'mor ayush ', 'mor12345@gmail.com', 1234567890, 'e11170b8cbd2d74102651cb967fa28e5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-31 09:28:09', NULL),
(21, 'ayush ladumor', 'ladumorayu@gmail.com', 9925574559, '691c720c3152c8686e0ff812a767c552', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-01 10:09:54', NULL),
(22, 'abc', 'abc@gmail.com', 3333333333, '900150983cd24fb0d6963f7d28e17f72', 'A B 108 SI+ITARAM', 'Gujarat', 'surat', 395010, 'ab 108 surat', 'Gujarat', 'surat', 395010, '2024-04-01 11:11:18', NULL),
(23, 'ayush ladumor', 'ladumorayush@gmail.com', 9925574555, '66049c07d9e8546699fe0872fd32d8f6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 07:45:10', NULL),
(24, 'hat', 'hat@gmail.com', 9875893851, '682ec3bc2ce54909d7af4fff75977aac', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 07:46:40', NULL),
(25, 'ayush', 'ayush123@gmail.com', 9876545789, '66049c07d9e8546699fe0872fd32d8f6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-02 07:48:32', NULL),
(26, 'harsh ravani', 'ravaniharsh@gmail.com', 9925574559, 'e807f1fcf82d132f9bb018ca6738a19f', '23fjhgj', 'Gujarat', 'surat', 395010, 'A B  sitaram', 'Gujarat', 'surat', 395010, '2024-04-03 08:20:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 26, '2019-03-12 08:03:55'),
(6, 12, 24, '2024-03-18 13:16:58'),
(7, 12, 26, '2024-03-18 13:17:11'),
(9, 17, 37, '2024-03-23 09:43:10'),
(10, 17, 24, '2024-03-23 09:43:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
