-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 11:49 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptopphongvu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(1, 'a@b.com', '123'),
(2, 'asad@gmail.com', '123'),
(3, 'c@d.com', '123'),
(4, 'e@b.com', '123'),
(5, 'a@f.com', '123'),
(6, 'g@h.com', '123'),
(7, 'i@j.com', '123'),
(8, 'k@l.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'DELL'),
(2, 'LENOVO'),
(3, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(11) DEFAULT NULL,
  `ip_add` varchar(16) DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(1, '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`) VALUES
(1, 'Window'),
(2, 'MacOS'),
(6, 'Linux');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `items` text DEFAULT NULL,
  `order_date` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `items`, `order_date`, `price`) VALUES
(30, 31, '6', '12/16/2020 09:33:30 am', 700),
(27, 2, '3', '12/15/2020 12:13:50 pm', 2380),
(28, 2, '4,3,3', '12/15/2020 05:32:30 pm', 2720),
(29, 30, '4', '12/16/2020 06:42:53 am', 340),
(26, 2, '4', '12/15/2020 08:44:41 am', 340);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`, `customer_id`, `product_id`, `payment_date`) VALUES
(1, 1330, 2, 7, '2017-01-17 01:30:44'),
(2, 360, 2, 5, '2017-01-17 01:33:20'),
(3, 490, 2, 10, '2017-01-17 01:33:20'),
(4, 460, 2, 12, '2017-01-17 01:34:32'),
(5, 800, 2, 8, '2017-01-17 01:35:13'),
(6, 1330, 2, 7, '2017-01-17 01:37:30'),
(7, 360, 1, 5, '2017-01-17 01:37:30'),
(8, 490, 2, 5, '2017-01-17 01:37:30'),
(9, 460, 4, 5, '2017-01-17 01:37:30'),
(10, 800, 7, 5, '2017-01-17 01:37:30'),
(11, 460, 1, 5, '2017-01-17 01:37:30'),
(12, 360, 3, 5, '2017-01-17 01:37:30'),
(13, 800, 5, 5, '2017-01-17 01:37:30'),
(14, 4460, 8, 5, '2017-01-17 01:37:30'),
(15, 360, 9, 5, '2017-01-17 01:37:30'),
(16, 1190, 1, 3, '2017-01-17 06:37:43'),
(17, 360, 1, 5, '2017-01-17 06:37:43'),
(18, 890, 1, 2, '2017-01-17 06:37:43'),
(19, 4460, 1, 1, '2017-01-17 08:32:10'),
(20, 910, 1, 9, '2017-01-18 11:28:17'),
(21, 490, 1, 10, '2017-05-29 18:07:02'),
(22, 800, 1, 8, '2017-05-29 18:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `product_title` text NOT NULL,
  `product_img1` text DEFAULT NULL,
  `product_img2` text DEFAULT NULL,
  `product_img3` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `product_desc` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `status` text DEFAULT NULL,
  `trending` int(1) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `brand_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `price`, `product_desc`, `status`, `trending`, `quantity`) VALUES
(1, 1, 2, '2017-01-16 22:14:24', 'Lenovo Thinkpad T480', 'Lenovo/lenovo-thinkpad-t480-ThinkPadT480.jpg', '', '', 4460, 'Create on-the-go with the versatility of a  hinge, the power of a vibrant, 15-inch diagonal screen, a long battery life and peace of mind privacy features.\r\n', 'on', 1, 50),
(4, 1, 2, '2017-01-16 22:29:29', 'Lenovo Thinkpad T480s', 'Lenovo/Lenovo-ThinkPad-T480s-1.jpg', '', '', 340, 'Create on-the-go with the versatility of a  hinge, the power of a vibrant, 15-inch diagonal screen, a long battery life and peace of mind privacy features.\r\n', 'on', 1, 50),
(2, 1, 2, '2017-01-16 22:16:34', 'Lenovo Thinkpad X1 Carbon Gen 6', 'Lenovo/x1-carbon-gen-6-1.jpg', '', '', 890, 'Create on-the-go with the versatility of a  hinge, the power of a vibrant, 15-inch diagonal screen, a long battery life and peace of mind privacy features.\r\n', 'on', 1, 39),
(3, 1, 1, '2017-01-16 22:18:13', 'Dell Precision 7750', 'Dell/dell-precision-7750_1603863992.gif', '', '', 1190, 'Create on-the-go with the versatility of a  hinge, the power of a vibrant, 15-inch diagonal screen, a long battery life and peace of mind privacy features.\r\n', 'on', 1, 41),
(5, 2, 3, '2017-01-16 22:30:36', 'Macbook Air 2017', 'Apple/macair2017_1583404193.png', '', '', 360, '\r\nMacBook Pro features a quad-core Intel processor for up to 90 percent faster performance. A brilliant and colorful Retina display with True Tone technology for a more comfortable viewing experience. A backlit Magic Keyboard and Touch ID. And dynamic, contextual controls with the Touch Bar. So you can take productivity to the next level.\r\n', 'on', 0, 12),
(6, 2, 3, '2017-01-16 22:31:43', 'Macbook Air 2018', 'Apple/macair2018(3)_1583404339.png', '', '', 700, '\r\nMacBook Pro features a quad-core Intel processor for up to 90 percent faster performance.A brilliant and colorful Retina display with True Tone technology for a more comfortable viewing experience. A backlit Magic Keyboard and Touch ID. And dynamic, contextual controls with the Touch Bar. So you can take productivity to the next level.\r\n', 'on', 0, 23),
(7, 1, 2, '2017-01-16 22:34:28', 'Lenovo Xiaoxin Air 15', 'Lenovo/Lenovo-Xiaoxin-Air-15-2019-released-Core-i5-MX250-ITB-SSD-01.webp', '', '', 450, 'Create on-the-go with the versatility of a  hinge, the power of a vibrant, 15-inch diagonal screen, a long battery life and peace of mind privacy features.\r\n', 'on', 0, 9),
(16, 1, 2, NULL, 'Lenovo Thinkpad T490s', '1607972837721T490s.jfif', NULL, NULL, 1000, NULL, NULL, 0, 20),
(8, 2, 3, '2017-01-16 22:36:04', 'Macbook Pro 2015', '1607966624277dell-3521.jfif', '', '', 801, 'MacBook Pro features a quad-core Intel processor for up to 90 percent faster performance. A brilliant and colorful Retina display with True Tone technology for a more comfortable viewing experience. A backlit Magic Keyboard and Touch ID. And dynamic, contextual controls with the Touch Bar. So you can take productivity to the next level.\r\n', 'on', 0, 50),
(12, 1, 1, '2017-01-17 00:48:23', 'Dell 3521', 'Dell/dell-3521.jfif', '', '', 460, 'Create on-the-go with the versatility of a  hinge, the power of a vibrant, 15-inch diagonal screen, a long battery life and peace of mind privacy features.\r\n \r\n', 'on', 0, 49);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_role` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `user_fname` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_country` text DEFAULT NULL,
  `user_city` text DEFAULT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_contact` varchar(255) DEFAULT NULL,
  `avatar` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_role`, `user_fname`, `user_email`, `user_pass`, `user_country`, `user_city`, `user_address`, `user_contact`, `avatar`) VALUES
(1, 'A', 'Phong', 'haiphong@gmail.com', 'abc', 'Vietnam', 'Ho Chi Minh', '572A Le Van Khuong, Thoi An, quan 12', '03135284998', 'phong.jpg'),
(2, 'C', 'Thien Nguyen', 'haithien@gmail.com', 'abc', 'Vietnam', 'Ho Chi Minh', '572A Le Van Khuong, Thoi An, quan 12', '0302585521', 'thien.jfif'),
(3, 'C', 'Manh', 'ngmanh@gmail.com', 'abc', 'Vietnam', 'Nghe An', 'H-12', '7777-7777777', 'manh.jfif'),
(4, 'C', 'Muhammad', 'mali@seecs.edu.pk', '15bscsmali', 'Pakistan', 'Islamabad', 'H-11', '0012-3456789', ''),
(19, 'C', 'quynh', 'nhuquynh@gmail.com', 'abc', NULL, NULL, 'H-12', NULL, ''),
(23, 'C', 'quynh', 'nhuquynhpdvcc@gmail.com', 'abc', NULL, NULL, 'h11', NULL, ''),
(24, 'C', 'gia van', 'giavan@gmail.com', '123', NULL, NULL, 'h21', NULL, ''),
(25, 'C', 'huy vuong', 'huy@gmail.com', 'bin', NULL, NULL, 'h2 0', NULL, ''),
(26, 'C', 'huy vuong', 'huy.vuong123@gmail.com', 'bin', NULL, NULL, 'ha ha ha', NULL, ''),
(28, 'C', 'phong dep trai', 'phongnguyen@gmail.com', 'bin', NULL, NULL, 'ha ha ha', '09999999', ''),
(29, 'C', 'dsadasdas', 'haha@gmail.com', '123', NULL, NULL, 'dsadasd', '0397797999', ''),
(30, 'C', 'Huy Le', 'huy.vuong@gmail.com', 'abc', NULL, NULL, '541 Le Van Sy', '0933792267', ''),
(31, 'C', 'nguyen hai phong', 'bin@gmail.com', 'bin', NULL, NULL, '572 wall street, blah Blah', '0397797998', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `c_id` (`items`(1000));

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
