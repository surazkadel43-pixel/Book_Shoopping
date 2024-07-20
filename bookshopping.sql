-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 04:59 AM
-- Server version: 8.0.33
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `published_date` date NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `average_rating` decimal(3,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `image_url`, `published_date`, `isbn`, `created_at`, `updated_at`, `average_rating`) VALUES
(212, 'Book Title 1', 'Author 1', 'This is a description for book 1', 'https://via.placeholder.com/200x300?text=Book+1', '2011-12-02', '9793222168437', '2024-07-14 22:25:35', '2024-07-14 22:25:37', 2.00),
(213, 'Book Title 2', 'Author 2', 'This is a description for book 2', 'https://via.placeholder.com/200x300?text=Book+2', '2004-09-11', '5946774462180', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 2.00),
(214, 'Book Title 3', 'Author 3', 'This is a description for book 3', 'https://via.placeholder.com/200x300?text=Book+3', '2018-06-14', '1321784892372', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 3.00),
(215, 'Book Title 4', 'Author 4', 'This is a description for book 4', 'https://via.placeholder.com/200x300?text=Book+4', '2006-04-13', '5041208228499', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 2.75),
(216, 'Book Title 5', 'Author 5', 'This is a description for book 5', 'https://via.placeholder.com/200x300?text=Book+5', '2012-04-21', '8166217143199', '2024-07-14 22:25:35', '2024-07-14 22:25:37', 4.00),
(217, 'Book Title 6', 'Author 6', 'This is a description for book 6', 'https://via.placeholder.com/200x300?text=Book+6', '2006-02-12', '7326396658523', '2024-07-14 22:25:35', '2024-07-14 22:25:37', 2.00),
(218, 'Book Title 7', 'Author 7', 'This is a description for book 7', 'https://via.placeholder.com/200x300?text=Book+7', '2011-02-06', '3903411858284', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 3.00),
(219, 'Book Title 8', 'Author 8', 'This is a description for book 8', 'https://via.placeholder.com/200x300?text=Book+8', '2016-02-18', '5101381959024', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 2.00),
(220, 'Book Title 9', 'Author 9', 'This is a description for book 9', 'https://via.placeholder.com/200x300?text=Book+9', '2011-03-03', '6958722640082', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 2.50),
(221, 'Book Title 10', 'Author 10', 'This is a description for book 10', 'https://via.placeholder.com/200x300?text=Book+10', '2012-04-26', '5939286192171', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 4.00),
(222, 'Book Title 11', 'Author 11', 'This is a description for book 11', 'https://via.placeholder.com/200x300?text=Book+11', '2022-04-13', '5478639045477', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 2.00),
(223, 'Book Title 12', 'Author 12', 'This is a description for book 12', 'https://via.placeholder.com/200x300?text=Book+12', '2012-12-08', '7643009832015', '2024-07-14 22:25:35', '2024-07-14 22:25:37', 5.00),
(224, 'Book Title 13', 'Author 13', 'This is a description for book 13', 'https://via.placeholder.com/200x300?text=Book+13', '2023-05-01', '1564047483806', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 2.00),
(225, 'Book Title 14', 'Author 14', 'This is a description for book 14', 'https://via.placeholder.com/200x300?text=Book+14', '2016-09-30', '4348313551327', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 2.50),
(226, 'Book Title 15', 'Author 15', 'This is a description for book 15', 'https://via.placeholder.com/200x300?text=Book+15', '2009-08-05', '8913664716587', '2024-07-14 22:25:35', '2024-07-14 22:25:37', 2.00),
(227, 'Book Title 16', 'Author 16', 'This is a description for book 16', 'https://via.placeholder.com/200x300?text=Book+16', '2012-06-06', '6839414255779', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 4.00),
(228, 'Book Title 17', 'Author 17', 'This is a description for book 17', 'https://via.placeholder.com/200x300?text=Book+17', '2020-02-05', '1104618720609', '2024-07-14 22:25:35', '2024-07-15 12:58:38', 3.50),
(229, 'Book Title 18', 'Author 18', 'This is a description for book 18', 'https://via.placeholder.com/200x300?text=Book+18', '2013-05-07', '2108002061611', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 3.50),
(230, 'Book Title 19', 'Author 19', 'This is a description for book 19', 'https://via.placeholder.com/200x300?text=Book+19', '2014-08-30', '2545047872868', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 4.00),
(231, 'Book Title 20', 'Author 20', 'This is a description for book 20', 'https://via.placeholder.com/200x300?text=Book+20', '2021-12-12', '2144909789156', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 3.00),
(232, 'Book Title 21', 'Author 21', 'This is a description for book 21', 'https://via.placeholder.com/200x300?text=Book+21', '2004-08-05', '8785235098637', '2024-07-14 22:25:35', '2024-07-14 22:25:37', 3.25),
(233, 'Book Title 22', 'Author 22', 'This is a description for book 22', 'https://via.placeholder.com/200x300?text=Book+22', '2018-02-16', '6457964551067', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 5.00),
(234, 'Book Title 23', 'Author 23', 'This is a description for book 23', 'https://via.placeholder.com/200x300?text=Book+23', '2003-10-20', '7057837972122', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 3.00),
(235, 'Book Title 24', 'Author 24', 'This is a description for book 24', 'https://via.placeholder.com/200x300?text=Book+24', '2001-12-13', '8620458530036', '2024-07-14 22:25:35', '2024-07-14 22:25:37', 2.67),
(236, 'Book Title 25', 'Author 25', 'This is a description for book 25', 'https://via.placeholder.com/200x300?text=Book+25', '2003-09-09', '1117282656572', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 4.00),
(237, 'Book Title 26', 'Author 26', 'This is a description for book 26', 'https://via.placeholder.com/200x300?text=Book+26', '2017-01-29', '6589999019468', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 4.00),
(238, 'Book Title 27', 'Author 27', 'This is a description for book 27', 'https://via.placeholder.com/200x300?text=Book+27', '2011-08-18', '7150386774485', '2024-07-14 22:25:35', '2024-07-14 22:25:37', 2.25),
(239, 'Book Title 28', 'Author 28', 'This is a description for book 28', 'https://via.placeholder.com/200x300?text=Book+28', '2000-05-12', '8247400783575', '2024-07-14 22:25:35', '2024-07-14 22:25:37', 2.33),
(240, 'Book Title 29', 'Author 29', 'This is a description for book 29', 'https://via.placeholder.com/200x300?text=Book+29', '2012-06-06', '1976906737427', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 2.50),
(241, 'Book Title 30', 'Author 30', 'This is a description for book 30', 'https://via.placeholder.com/200x300?text=Book+30', '2002-04-28', '4207346693536', '2024-07-14 22:25:35', '2024-07-14 22:25:36', 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `book_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`book_id`, `category_id`, `created_at`, `updated_at`) VALUES
(225, 213, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(221, 214, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(234, 214, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(234, 215, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(224, 216, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(241, 216, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(231, 217, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(240, 217, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(212, 218, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(229, 218, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(232, 218, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(239, 218, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(221, 219, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(235, 219, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(219, 220, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(233, 220, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(239, 221, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(220, 222, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(240, 222, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(214, 223, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(226, 223, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(231, 223, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(229, 224, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(231, 224, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(237, 224, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(215, 225, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(218, 225, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(222, 225, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(223, 225, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(227, 225, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(230, 225, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(213, 227, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(238, 228, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(216, 229, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(227, 229, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(230, 229, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(230, 230, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(240, 230, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(218, 231, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(226, 231, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(241, 232, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(217, 233, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(233, 234, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(235, 234, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(215, 235, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(227, 235, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(214, 236, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(217, 236, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(221, 236, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(225, 236, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(236, 236, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(217, 238, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(224, 238, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(237, 238, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(239, 238, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(219, 239, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(215, 240, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(228, 240, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(216, 241, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(224, 241, '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(220, 242, '2024-07-14 22:25:35', '2024-07-14 22:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(213, 'Fiction', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(214, 'Non-Fiction', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(215, 'Science', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(216, 'Math', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(217, 'History', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(218, 'Biography', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(219, 'Fantasy', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(220, 'Adventure', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(221, 'Romance', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(222, 'Mystery', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(223, 'Horror', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(224, 'Thriller', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(225, 'Science Fiction', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(226, 'Poetry', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(227, 'Drama', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(228, 'Self-Help', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(229, 'Health', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(230, 'Travel', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(231, 'Children\'s', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(232, 'Religion', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(233, 'Spirituality', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(234, 'Humor', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(235, 'Business', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(236, 'Education', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(237, 'Cooking', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(238, 'Art', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(239, 'Music', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(240, 'Sports', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(241, 'Politics', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(242, 'Technology', '2024-07-14 22:25:35', '2024-07-14 22:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `book_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `review` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`book_id`, `user_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(212, 19, 2, 'This is a review for book 212 by user 19', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(213, 19, 2, 'This is a review for book 213 by user 19', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(214, 19, 5, 'This is a review for book 214 by user 19', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(214, 20, 1, 'This is a review for book 214 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(215, 18, 1, 'This is a review for book 215 by user 18', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(215, 19, 4, 'This is a review for book 215 by user 19', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(215, 20, 2, 'This is a review for book 215 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(215, 21, 4, 'This is a review for book 215 by user 21', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(216, 18, 5, 'This is a review for book 216 by user 18', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(216, 19, 2, 'This is a review for book 216 by user 19', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(216, 20, 5, 'This is a review for book 216 by user 20', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(216, 21, 4, 'This is a review for book 216 by user 21', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(217, 18, 3, 'This is a review for book 217 by user 18', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(217, 20, 1, 'This is a review for book 217 by user 20', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(217, 21, 2, 'This is a review for book 217 by user 21', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(218, 18, 3, 'This is a review for book 218 by user 18', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(219, 19, 1, 'This is a review for book 219 by user 19', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(219, 20, 4, 'This is a review for book 219 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(219, 21, 1, 'This is a review for book 219 by user 21', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(220, 18, 4, 'This is a review for book 220 by user 18', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(220, 19, 1, 'This is a review for book 220 by user 19', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(220, 20, 1, 'This is a review for book 220 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(220, 21, 4, 'This is a review for book 220 by user 21', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(221, 21, 4, 'This is a review for book 221 by user 21', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(222, 18, 1, 'This is a review for book 222 by user 18', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(222, 19, 1, 'This is a review for book 222 by user 19', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(222, 20, 2, 'This is a review for book 222 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(222, 21, 4, 'This is a review for book 222 by user 21', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(223, 18, 5, 'This is a review for book 223 by user 18', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(223, 20, 5, 'This is a review for book 223 by user 20', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(223, 21, 5, 'This is a review for book 223 by user 21', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(224, 19, 2, 'This is a review for book 224 by user 19', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(224, 20, 2, 'This is a review for book 224 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(225, 18, 4, 'This is a review for book 225 by user 18', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(225, 20, 1, 'This is a review for book 225 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(226, 18, 2, 'This is a review for book 226 by user 18', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(226, 19, 2, 'This is a review for book 226 by user 19', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(226, 21, 2, 'This is a review for book 226 by user 21', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(227, 18, 5, 'This is a review for book 227 by user 18', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(227, 19, 5, 'This is a review for book 227 by user 19', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(227, 20, 4, 'This is a review for book 227 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(227, 21, 2, 'This is a review for book 227 by user 21', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(228, 18, 2, 'This is a review for book 228 by user 18', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(228, 19, 5, 'This is a review for book 228 by user 19', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(228, 20, 4, 'This is a review for book 228 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(228, 22, 3, 'sdgdg', '2024-07-15 12:58:38', '2024-07-15 12:58:38'),
(229, 18, 2, 'This is a review for book 229 by user 18', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(229, 20, 5, 'This is a review for book 229 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(230, 19, 3, 'This is a review for book 230 by user 19', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(230, 21, 5, 'This is a review for book 230 by user 21', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(231, 18, 5, 'This is a review for book 231 by user 18', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(231, 20, 1, 'This is a review for book 231 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(232, 18, 1, 'This is a review for book 232 by user 18', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(232, 19, 4, 'This is a review for book 232 by user 19', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(232, 20, 5, 'This is a review for book 232 by user 20', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(232, 21, 3, 'This is a review for book 232 by user 21', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(233, 21, 5, 'This is a review for book 233 by user 21', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(234, 18, 2, 'This is a review for book 234 by user 18', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(234, 20, 2, 'This is a review for book 234 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(234, 21, 5, 'This is a review for book 234 by user 21', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(235, 18, 5, 'This is a review for book 235 by user 18', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(235, 19, 2, 'This is a review for book 235 by user 19', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(235, 21, 1, 'This is a review for book 235 by user 21', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(236, 21, 4, 'This is a review for book 236 by user 21', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(237, 20, 4, 'This is a review for book 237 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(237, 21, 4, 'This is a review for book 237 by user 21', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(238, 18, 4, 'This is a review for book 238 by user 18', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(238, 19, 3, 'This is a review for book 238 by user 19', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(238, 20, 1, 'This is a review for book 238 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(238, 21, 1, 'This is a review for book 238 by user 21', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(239, 18, 2, 'This is a review for book 239 by user 18', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(239, 20, 2, 'This is a review for book 239 by user 20', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(239, 21, 3, 'This is a review for book 239 by user 21', '2024-07-14 22:25:37', '2024-07-14 22:25:37'),
(240, 18, 1, 'This is a review for book 240 by user 18', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(240, 19, 4, 'This is a review for book 240 by user 19', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(241, 18, 3, 'This is a review for book 241 by user 18', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(241, 19, 5, 'This is a review for book 241 by user 19', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(241, 20, 1, 'This is a review for book 241 by user 20', '2024-07-14 22:25:36', '2024-07-14 22:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(18, 'John Doe', 'johndoe', 'johndoe@example.com', '$2y$10$VusjXmqK4SAyRXhUVdXk4.7izVlHkLFfYEtnDgwEX41gou2YWoq2q', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(19, 'Jane Smith', 'janesmith', 'janesmith@example.com', '$2y$10$QAVvzLNxtI2gUJ1S.toIteXRX2pNUSwFnKk0xH1kbr64a7VFEYcmm', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(20, 'Alice Johnson', 'alicejohnson', 'alicejohnson@example.com', '$2y$10$mtEvi3UreSw1i23nlAMzbOWP1B2lc3e8D8pgTvlB5TToWZDI3YPDG', '2024-07-14 22:25:35', '2024-07-14 22:25:35'),
(21, 'Bob Brown', 'bobbrown', 'bobbrown@example.com', '$2y$10$0vYOQjdfX0rXivC4RH1vjuOuBJWQCFlmgycy7cQxndbrJ6cQjcZs6', '2024-07-14 22:25:36', '2024-07-14 22:25:36'),
(22, 'Suraj Kandel', 'surazkadel43@gmail.com', 'surazkadel43@gmail.com', '$2y$10$Xm2x8wIe8ID055.zWmm7GOKNk.nN3VKWso5fpnwyYiMWKGOt8F9lm', '2024-07-15 12:57:30', '2024-07-15 12:57:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`category_id`,`book_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`book_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
