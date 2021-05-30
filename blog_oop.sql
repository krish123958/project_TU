-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2021 at 08:14 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(3) NOT NULL,
  `cat_id` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tag` text NOT NULL,
  `admin` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `rate` tinyint(2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `cat_id`, `title`, `content`, `tag`, `admin`, `status`, `rate`, `image`, `date`) VALUES
(53, 20, 'headerrrrr', 'i am new here', 'hey bro', 'vamsikrishnakonakalako@gmail.com', 1, 0, '713229.jpg', '2021-05-29 10:53:35'),
(55, 20, 'hlo this an demo boy', 'im a demo person', 'demo', 'vamsikrishnakonakalako@gmail.com', 1, 0, '828947.png', '2021-05-29 10:56:41'),
(56, 22, 'krish', 'krish', 'krish', 'vamsikrishnakonakalako@gmail.com', 1, 0, '307071.jpg', '2021-05-29 10:57:47'),
(58, 20, 'hlo', 'my name bilaa', 'billa', 'vamsikrishnakonakalako@gmail.com', 1, 0, '787948.jpg', '2021-05-29 11:02:45'),
(61, 21, 'vamsi', 'krish', 'who', 'vamsikrishnakonakalako@gmail.com', 1, 0, '853721.png', '2021-05-29 11:21:23'),
(62, 21, 'head', 'hloooo', 'name', 'vamsikrishnakonakalako@gmail.com', 1, 0, '439972.jpg', '2021-05-29 11:22:28'),
(63, 21, 'name', 'hloooo', 'name', 'vamsikrishnakonakalako@gmail.com', 1, 0, '162318.jpg', '2021-05-29 12:25:22'),
(66, 20, 'jhonny', 'hiiiiiii', 'jhonny', 'vamsikrishnakonakalako@gmail.com', 1, 0, '200492.jpg', '2021-05-30 02:44:17'),
(67, 22, 'Post2222', 'hiiiiiiiiiiiiiii', 'post2222', 'vamsikrishnakonakalako@gmail.com', 1, 0, '798622.jpg', '2021-05-30 03:01:26'),
(68, 22, 'Post222222', 'hloooooooooo', 'hlooooooooooo', 'vamsikrishnakonakalako@gmail.com', 1, 0, '37517.png', '2021-05-30 03:06:23'),
(69, 18, 'Post2222222', 'hloooooooooooooooooooo', 'posttttttttttttttttttttttttttttttttt', 'vamsikrishnakonakalako@gmail.com', 1, 0, '457365.jpg', '2021-05-30 03:07:41'),
(70, 21, 'djjj', 'djjjjjj', 'hloooo', 'vamsikrishnakonakalako@gmail.com', 1, 0, '742624.jpg', '2021-05-30 03:43:37'),
(71, 20, 'oooooooooo', 'oooooooooooooooo', '0000000000000000', 'vamsikrishnakonakalako@gmail.com', 1, 0, '341248.jpeg', '2021-05-30 03:55:31'),
(73, 3, '9000', '90000', '9000000', 'vamsikrishnakonakalako@gmail.com', 1, 0, '530509.jpg', '2021-05-30 04:05:48'),
(74, 5, 'new', 'new', 'new', 'vamsikrishnakonakalako@gmail.com', 1, 0, '466714.jpg', '2021-05-30 04:15:24'),
(75, 18, 'Post222222222', 'hlooooooo', 'hlooooooooo', 'vamsikrishnakonakalako@gmail.com', 1, 0, '489979.png', '2021-05-30 04:27:01'),
(77, 21, 'i did', 'i did', 'i did', '', 1, 0, '234811.jpg', '2021-05-30 04:45:17'),
(78, 21, 'headerrrrr333333333', '33333333333', '33333333333333', '', 1, 0, '540539.jpg', '2021-05-30 04:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(2) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `create_time`, `admin_name`) VALUES
(1, 'html5', 1, '2020-08-09 08:59:19', 'Shahin'),
(3, 'php', 1, '2020-08-09 08:59:31', 'Shahin'),
(5, 'python', 1, '2020-08-09 09:01:24', 'Shahin'),
(18, 'Others', 1, '2020-08-11 04:20:18', 'Shahin'),
(20, 'gadget', 1, '2020-08-11 10:39:40', 'asik'),
(21, 'Lorem Ipsum ', 1, '2020-08-11 13:12:21', 'asik'),
(22, 'BUSINESS', 1, '2020-08-14 14:06:59', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(5) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(2) NOT NULL,
  `email_id` int(2) NOT NULL,
  `user` varchar(50) NOT NULL,
  `reply` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `email_id`, `user`, `reply`, `date`) VALUES
(1, 17, 'admin', 'ffff', '2020-08-14 05:22:05'),
(2, 17, 'admin', 'ccc', '2020-08-14 05:25:39'),
(3, 17, 'admin', 'dddaaa', '2020-08-14 05:26:34'),
(4, 16, 'admin', 'ok done', '2020-08-14 05:28:35'),
(5, 15, 'admin', 'g', '2020-08-14 05:32:46'),
(6, 20, 'admin', 'ok done', '2020-08-14 05:36:26'),
(7, 20, 'admin', 'ok done', '2020-08-14 14:13:51'),
(8, 21, 'asik', 'ok ', '2020-08-15 14:26:53'),
(9, 25, 'admin', 'this id demo reply', '2020-08-15 15:05:28'),
(10, 23, 'vamsikrishnakonakalako@gmail.com', 'hey', '2021-05-30 05:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(2) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `postdisplay` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `logo`, `title`, `footer`, `postdisplay`) VALUES
(1, 'logo.png', 'Blog website using PHP OOP', '2020 © Developed by : ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(2) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `footerlink` varchar(255) NOT NULL,
  `footertxt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `facebook`, `twitter`, `instagram`, `linkedin`, `github`, `footerlink`, `footertxt`) VALUES
(1, '#', '#', '#', '#', '#', '#', 'konakala vqamsi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `role` tinyint(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `email`, `password`, `image`, `bio`, `role`, `date`) VALUES
(10, 'vamsi', 'konakala', 'vamsikrishnakonakalako@gmail.com', 'vamsikrishnakonakalako@gmail.com', '1234', '7259.jpg', '                            hello this is konakala vamsi studying gudlavalleru engineering college gudlavalleru                                                                                                                                                      ', 1, '2021-05-29 10:22:22'),
(11, '', '', 'vamsi', 'konakalavamsi@gmail.com', '1234', '', '', 2, '2021-05-30 04:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
(1, 'vamsi konakala', 'vamsikrishnakonakalako@gmail.com', '$2y$10$TLBoL4N.tVy3cOl/zJBWeeNsopF9HkspfuEpfD..jphPqLjaG0mGS', 0, 'verified'),
(2, 'vamsi konakala', 'konakalavamsi@gmail.com', '$2y$10$5GcWeKCYa1pAj/a.bYzR3e2BhKKVTPRAizcYoMf5B288.bnKltGKy', 0, 'verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
