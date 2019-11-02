-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2019 at 04:27 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(38, 'Khoirunnisa', 'nisaninis1927@gmail.com', 'default.jpg', '$2y$10$DX0IYpti.XeCA.f9q.QUmeahhB8GZgWBwETGpN5jjB2qESNhSOTCS', 1, 1, 1571201362),
(39, 'Khoirunnisa', 'nisaninis1020@gmail.com', 'profile1.jpg', '$2y$10$fNU.BhQIubihyIurzBizSO37KYzdV9.FmtuO.j/3wgmcS7Axbxeo2', 2, 1, 1571201554),
(43, 'khoirunnisa', 'ninisn031@gmail.com', 'default.jpg', '$2y$10$EwAypzdS7UDhli1BAbZQDeY.Rjn4dWKCpqafO65gso9d7oQCpFhM6', 2, 1, 1571202549);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'Admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'User', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(25, 'ninisn031@gmail.com', 'Kn0J/ROitbHn/zqytF/AUN+oDphopFPMOjkzoatwSMo=', 1571205785),
(26, 'ninisn031@gmail.com', 'uyBz2GAA/nDXyaBo7m/2+g7/fVWlEEWTLxk7I2SzVps=', 1571209608),
(27, 'ninisn031@gmail.com', '6VHL2ECv6L3ZMcv0C2PhKjR8BpdVZIb+7Re3CJO/xiQ=', 1571209983),
(28, 'ninisn031@gmail.com', '5C+SK1GZM5rSQPJ03GNN3Nt77DdbxcL4DcZb/s5jAFs=', 1571209988),
(29, 'ninisn031@gmail.com', 're2XxAJO7vnNoyQQaQycygHVqQO/7UDBXw/UDItW5yk=', 1571210730),
(30, 'ninisn031@gmail.com', '51IohnJfSk0U8xAPpVD75N/Ws+JH530XFtmoexq97gc=', 1571210787),
(31, 'ninisn031@gmail.com', '9pIcFpED9jB6mr/dPNUwUV5s4H0ELITIY2rWiciHc4o=', 1571211600),
(32, 'ninisn031@gmail.com', '5fgERIzJr1GpOAqelRb2jvJGGAKweOh8RphIbHXI8ZY=', 1571211780),
(33, 'ninisn031@gmail.com', 'w+KxIwTEt3FthwTOH0Hkuco31ez/5wPLCZt009iMy8E=', 1571211810),
(34, 'ninisn031@gmail.com', '/SXoLDh36/05ijkFDFptVH0KkBOw7ruDr3mDVTfmf1E=', 1571211835),
(35, 'ninisn031@gmail.com', 'VYmrzsHGf++Z+Bpr/TaZIEhQmiYDuMQvsi2wgfC5gAs=', 1571212081),
(36, 'ninisn031@gmail.com', 'zjRVtRg/JjAwJCRX1WLJl6y3pSs/1be2sPguaXfjRh0=', 1571212206),
(37, 'ninisn031@gmail.com', 'riVM5Uk+eDMT2VDQT4jcofrKhZYC3YucNt//VciOeN4=', 1571212267),
(38, 'ninisn031@gmail.com', 'HsPglwf8G6GyFVAOoOqUjsq7O/Xk28PYN/ZYEOjlIlY=', 1571212627),
(39, 'ninisn031@gmail.com', 'KJ3nqTkX9AzbkeAvgOfCa9C8sB8UOvRu5d4+QLBBh/o=', 1571212990),
(40, 'ninisn031@gmail.com', 'xDSiY5qTPN/OWL9I1JTf1Z+60s5yrHEr7i31tj3yULw=', 1571213736),
(41, 'ninisn031@gmail.com', 'dcQJ60fhnpHhe1QDTyhqgRrTMS8yrFzFoKe06jyeCLc=', 1571213749),
(42, 'ninisn031@gmail.com', 'l84ByLc9WUZLZrPkK9x6lbnQECiziorwVoFSudZlOH4=', 1571213755),
(43, 'ninisn031@gmail.com', 'IjkMq2HzfHnLSmfbNjxPBSrHQwzSo4HD0TQ1/0x84Lc=', 1571214604),
(44, 'ninisn031@gmail.com', 'W7Iw11YbG6zzEZR50ef5YQGsnmkEqwwl2fd+3I+kSl4=', 1571214698),
(45, 'ninisn031@gmail.com', 'Pa7oT1I0xRX4MWjzIqFR+QVsHZsMni8FMXBJLyowyNg=', 1571214878),
(46, 'ninisn031@gmail.com', 'ZQJ8umRSI3qyp19UBCiBVd5rvfzH5PjAGhaYEfXCdlA=', 1571214892),
(47, 'ninisn031@gmail.com', 'g3D0ibKRyie3JZtmfMmwBc2JceDT5axanzPExYdO7C8=', 1571214932),
(48, 'ninisn031@gmail.com', 'y/CJGhx872L7oErORp4qpEEWOHkjZvrF3w+Ce8iBGgM=', 1571215200),
(49, 'khoirunnisa27@gmail.com', 'UuEQs/LW9ihfxv2NBrhWkuRT7p5aqW7RQm6qVT+rZRU=', 1572396106),
(50, 'nisss.nisaaa27@gmail.com', 'wcW8gbwIN4rijma0PNBaLQfYRRyFPn1MXvFreoknjgE=', 1572401266);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
