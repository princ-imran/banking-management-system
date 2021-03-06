-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 16, 2018 at 06:11 AM
-- Server version: 10.0.36-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mutualfriends_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `share` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` int(255) NOT NULL,
  `paid` int(255) NOT NULL,
  `due` int(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `share`, `month`, `year`, `paid`, `due`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 0, 'February', 2016, 5000, 200, '2018-10-09 11:11:27', '2018-10-13 16:30:49', 2),
(8, 0, 'July', 2018, 5400, 200, '2018-10-11 14:17:21', '2018-10-13 12:01:27', 12),
(9, 0, 'April', 2016, 18000, 0, '2018-10-15 07:27:37', '2018-10-15 07:29:08', 16);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '0000-00-00', '0000-00-00'),
(2, 'Member', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `rule_user`
--

CREATE TABLE `rule_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule_user`
--

INSERT INTO `rule_user` (`id`, `user_id`, `rule_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_config`
--

CREATE TABLE `site_config` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `company_contact` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_config`
--

INSERT INTO `site_config` (`id`, `company_name`, `company_email`, `company_contact`, `image`, `create_at`, `update_at`) VALUES
(1, 'Startup Landing Page For Your Product', 'mutualfriendsml@gmail.com', '01845720092', '75902049a5.png', '2018-10-13 00:00:01', '2018-10-15 07:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `supar_admin`
--

CREATE TABLE `supar_admin` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supar_admin`
--

INSERT INTO `supar_admin` (`id`, `name`, `email`, `password`, `image`) VALUES
(1, 'Imran', 'imran@gmail.com', '3fc88f88a7f0b7edc9614732917daadb', 'admin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `nid_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `nid_number`, `address`, `image`) VALUES
(2, 'Imran Hoshain', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', '01602565647', '19945879654863', 'A-74, Bank Colony, DHaka', '50f26a5edd.jpg'),
(12, 'Solayman Hossain', 'solaymang3@gmail.com', '337990b7b877f6b27b4c03ec6a989923', '1680145879', '19952627205000022', 'A 82/4, Bank Colony, Savar, Dhaka', '25fd0ed2b2.jpg'),
(15, 'Santanu Ray', 'new@gmail.com', '83b4ef5ae4bb360c96628aecda974200', '018856954455', '19775684566545455', 'A-74, Bank Colony, DHakasdfs', '097c4fddcf.jpg'),
(16, 'Jabed', 'jabed@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0172569874', '1997456987456978', 'Monipur Dhaka', '5dd97198e9.jpg'),
(17, 'Solayman Hossian', 'solaymanict@gmail.com', '6ad1d24f02e3d6b0e69fbe70691002bd', '0001680795394', '19952026275000022', 'A-75/2, Bank Colony, Savar, Dhaka.', '622e1e9e60.jpg'),
(18, 'Imran', 'i4u.imraan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01789546987', '199369874569847', 'A-74, Bank Colony, Dhaka', 'b6e1c56d4b.jpg'),
(19, 'Santanu Ray', 'iforuimran@gmail.com', 'c33367701511b4f6020ec61ded352059', '0191536987', '198856974566654', 'A-74, Bank Colony, Dhaka', '44a4c09cce.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule_user`
--
ALTER TABLE `rule_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rule_id` (`rule_id`);

--
-- Indexes for table `site_config`
--
ALTER TABLE `site_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supar_admin`
--
ALTER TABLE `supar_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rule_user`
--
ALTER TABLE `rule_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_config`
--
ALTER TABLE `site_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supar_admin`
--
ALTER TABLE `supar_admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rule_user`
--
ALTER TABLE `rule_user`
  ADD CONSTRAINT `rule_user_ibfk_2` FOREIGN KEY (`rule_id`) REFERENCES `rule` (`id`),
  ADD CONSTRAINT `rule_user_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
