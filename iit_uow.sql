-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2024 at 05:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iit_uow`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answer_id`, `question_id`, `answer`, `created_date`, `created_user`) VALUES
(1, 4, 'Since none of the solutions seem to be working for you so far, try this one', '2024-05-10 02:32:14', 'MalithUD99'),
(2, 4, 'Make sure php5-mysql is installed.', '2024-05-10 02:32:34', 'MalithUD99'),
(3, 4, 'This behavior occurs when you have basic php syntax error in your code. In case when you have syntax errors the php parser does not parse the code completely and didnot display', '2024-05-10 02:33:08', 'MalithUD99'),
(4, 3, 'Try using the global namespace for your exception like this', '2024-05-10 02:38:07', 'MalithUD99'),
(5, 3, 'Refer Stripe\'s API document', '2024-05-10 02:38:28', 'MalithUD99'),
(6, 3, 'As mentioned in the comment I\'m doubtful that this is CodeIgniter\'s issue. It\'s more likely that you simply have display_errors set to off in your php.ini.', '2024-05-10 02:39:25', 'MalithUD99'),
(7, 1, 'Answer 01', '2024-05-10 03:01:22', 'MalithUD99'),
(8, 5, 'The applet makes the Java code secure and portable', '2024-05-10 18:11:19', 'TestUser01'),
(9, 5, 'Instance block, method, static block, and constructo', '2024-05-10 18:11:29', 'TestUser01'),
(10, 7, 'not an error it an run time Error\r\n', '2024-05-19 14:33:55', 'kirulu');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `question` longtext DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user` varchar(255) DEFAULT NULL,
  `answer_count` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `question`, `created_date`, `created_user`, `answer_count`, `view_count`) VALUES
(6, 'Which of the following is not a Java features?', '2024-05-16 23:00:54', 'kirulu', 0, 2),
(7, 'A PHP Error was encountered\r\n', '2024-05-19 09:11:27', 'Kirulu', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `question_tags`
--

CREATE TABLE `question_tags` (
  `question_tag_id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `add_tages` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `question_tags`
--

INSERT INTO `question_tags` (`question_tag_id`, `question_id`, `add_tages`) VALUES
(1, 1, 'php'),
(2, 2, 'codeIgniter'),
(3, 3, 'html'),
(4, 4, 'css'),
(5, 4, 'html'),
(6, 4, 'mysql'),
(7, 3, 'xampp'),
(8, 2, 'error'),
(9, 1, 'model'),
(10, 1, 'controller'),
(11, 4, 'tag'),
(12, 5, 'Dynamic'),
(13, 5, 'Neutral'),
(14, 5, 'pointers'),
(15, 5, 'oop'),
(16, 6, 'java'),
(17, 6, 'javascript'),
(18, 7, 'php');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `username`, `useremail`, `password`, `created_date`, `is_active`) VALUES
(2, 'TestUser01', 'TestUser01', 'TestUser01@gmail.com', '$2y$10$QRDQIRZksynuPPFOkuQ.K.DMbuhhjprq8yS4hi6YVVxYwNkXZufDC', '2024-05-10 18:09:04', 1),
(5, 'Kirulu Teshan Fernando', 'Kirulu', 'kiruluteshan5@gmail.com', '$2y$10$9bQCU1zTcSwZe9wHvgxz6e9b66SIEM0eefXXdTs/Xx0Q8QVDzq9dy', '2024-05-19 09:09:41', 1),
(6, 'Kirulu fernando', 'kirulu', 'kiruluteshan5@gmail.com', '$2y$10$1lFaOmCZ5uUcERc7hOIXzOtFop4YrwxC//44oU.D8uah4CFFkKDZa', '2024-05-19 20:56:52', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answer_id`) USING BTREE;

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`) USING BTREE;

--
-- Indexes for table `question_tags`
--
ALTER TABLE `question_tags`
  ADD PRIMARY KEY (`question_tag_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `question_tags`
--
ALTER TABLE `question_tags`
  MODIFY `question_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
