-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2017 at 11:38 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab8db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` varchar(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`) VALUES
('d', 'Drinks', 'Purees made from the finest of Venusian insects, government-inspected.', 'catd.png'),
('m', 'Mains', 'Made from only the finest ingredients found deep in the Martian jungle, and harvested or slaughtered by academy-trained druids, we bring you 45 day aged premium \"meat\".', 'catm.png'),
('s', 'Sides', 'Perfect accompaniments to our mains, these side dish pairings have been exclsisvely formulated by Ben & Jerry.', 'cats.png');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('a4b032f0b694f10a93a24fe5d44bea7d3adb42d8', '::1', 1491521898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313532313636313b),
('f1fefe66f4934adf1d2aa505e8c4e63a099ea810', '::1', 1491522213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313532323030323b),
('61825fa69b23bfc690e88c50e04eb6247868cff9', '::1', 1491522430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313532323430303b),
('0fc20852f342e3f547a420e145e227638d15f57d', '127.0.0.1', 1491522722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313532323731363b75736572726f6c657c733a353a2261646d696e223b),
('d2dbb3d2591b3b74e65a403641074ac0aaac3461', '::1', 1491523995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313532333730393b),
('18204257080a0628a0f786b16200d1a4e8410785', '::1', 1491524247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313532343138363b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a303a7b7d7d75736572726f6c657c733a353a2261646d696e223b),
('9768805fc394709ad650c30ee2382a5af243704a', '::1', 1491524506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313532343530343b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a303a7b7d7d75736572726f6c657c733a353a2261646d696e223b),
('2255097c947881909c7ebf1dc83b8af5f8094430', '::1', 1491772237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313737323134383b75736572726f6c657c733a353a2261646d696e223b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a303a7b7d7d),
('3b830a0e5433a3878fec2ae48e7d47dc5c73ced4', '127.0.0.1', 1491772913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313737323635353b75736572726f6c657c733a353a2261646d696e223b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a303a7b7d7d),
('5e777d006ca84e2bf96e802dee077e8d2a8ad79f', '127.0.0.1', 1491773254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313737323936303b75736572726f6c657c733a353a2261646d696e223b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a303a7b7d7d6b65797c733a313a2231223b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a363a22436865657365223b733a31313a226465736372697074696f6e223b733a39383a224c65617665207468697320726177206d696c6b2c20626565667920616e6420737765657420636865657365206f757420666f7220616e20686f7572206265666f72652073657276696e6720616e64207061697220776974682070656172206a616d2e223b733a353a227072696365223b733a343a22322e3935223b733a373a2270696374757265223b733a353a22312e706e67223b733a383a2263617465676f7279223b733a313a2273223b7d),
('a7c63bb2ce14b458cee7fec8e821d5e37eb91cf5', '127.0.0.1', 1491773452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313737333236363b75736572726f6c657c733a353a2261646d696e223b6b65797c4e3b7265636f72647c4f3a383a22737464436c617373223a363a7b733a323a226964223b733a333a22383437223b733a343a226e616d65223b733a353a2248656c6c6f223b733a31313a226465736372697074696f6e223b733a32373a224973206974206d6520796f75277265206c6f6f6b696e6720666f72223b733a353a227072696365223b733a343a22302e3530223b733a373a2270696374757265223b733a303a22223b733a383a2263617465676f7279223b733a313a226d223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `category` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `price`, `picture`, `category`) VALUES
(1, 'Cheese', 'Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.', '2.95', '1.png', 's'),
(2, 'Turkey', 'Roasted, succulent, stuffed, lovingly sliced turkey breast', '5.95', '2.png', 'm'),
(6, 'Donut', 'Disgustingly sweet, topped with artery clogging chocolate and then sprinkled with Pixie dust', '1.25', '6.png', 's'),
(10, 'Bubbly', '1964 Moet Charmon, made from grapes crushed by elves with clean feet, perfectly chilled.', '14.50', '10.png', 'd'),
(11, 'Ice Cream', 'Combination of decadent chocolate topped with luscious strawberry, churned by gifted virgins using only cream from the Tajima strain of wagyu cattle', '3.75', '11.png', 's'),
(8, 'Hot Dog', 'Pork trimmings mixed with powdered preservatives, flavourings, red colouring and drenched in water before being squeezed into plastic tubes. Topped with onions, bacon, chili or cheese - no extra charge.', '6.90', '8.png', 'm'),
(25, 'Burger', 'Half-pound of beef, topped with bacon and served with your choice of a slice of American cheese, red onion, sliced tomato, and Heart Attack Grill\'s own unique special sauce.', '9.99', 'burger.png', 'm'),
(21, 'Coffee', 'A delicious cup of the nectar of life, saviour of students, morning kick-starter; made with freshly grounds that you don\'t want to know where they came from!', '2.95', 'coffee.png', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE `orderitems` (
  `order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `num` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `customer` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`order`,`item`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`num`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
