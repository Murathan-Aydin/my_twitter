-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2025 at 02:55 PM
-- Server version: 10.11.11-MariaDB-0+deb12u1
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twitter_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `following_user_id` int(11) NOT NULL,
  `followed_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`following_user_id`, `followed_user_id`, `created_at`) VALUES
(6, 8, '2025-03-12 10:43:02'),
(6, 9, '2025-03-07 16:09:58'),
(6, 10, '2025-03-07 16:10:10'),
(6, 12, '2025-03-06 09:01:50'),
(9, 5, '2025-02-27 14:18:17'),
(9, 8, '2025-03-12 14:54:28'),
(12, 6, '2025-02-28 14:53:48'),
(20, 6, '2025-03-17 15:04:28'),
(20, 8, '2025-03-17 15:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `hastag_list`
--

CREATE TABLE `hastag_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hastag_list`
--

INSERT INTO `hastag_list` (`id`, `name`, `created_at`) VALUES
(1, 'okkk', '2025-03-11 09:07:26'),
(2, 'salut', '2025-03-11 09:09:00'),
(3, 'new', '2025-03-11 15:42:39'),
(4, 'autorefrech', '2025-03-11 15:49:08'),
(5, 'reel', '2025-03-11 15:55:08'),
(6, 'nouveau', '2025-03-11 16:08:26'),
(7, 'nouv', '2025-03-11 16:08:58'),
(8, 'demain', '2025-03-11 18:34:59'),
(9, 'mehdi', '2025-03-12 09:26:25'),
(10, 'quoideneuf', '2025-03-12 09:43:06'),
(11, 'yassine', '2025-03-12 10:35:08'),
(12, 'bonjour', '2025-03-12 10:35:08'),
(13, 'je', '2025-03-12 10:42:20'),
(14, 'goat', '2025-03-12 14:50:42'),
(15, 'catchawwwwwwwwwwwww', '2025-03-12 15:23:54'),
(16, 'harrr', '2025-03-12 18:31:13'),
(17, 'jkjkj', '2025-03-13 11:19:56'),
(18, 'fin', '2025-03-16 19:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `unread` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `medias` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `type`, `from_user_id`, `to_user_id`, `message`, `unread`, `is_deleted`, `read_at`, `created_at`, `medias`) VALUES
(1, 'sender', 9, 6, 'salut', 0, 0, NULL, '2025-03-11 09:57:53', '[]'),
(2, 'receiver', 6, 9, 'salut', 0, 0, NULL, '2025-03-11 09:57:53', '[]'),
(3, 'sender', 9, 6, '', 0, 0, NULL, '2025-03-11 09:57:57', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d00925720f8.png\"}]'),
(4, 'receiver', 6, 9, '', 0, 0, NULL, '2025-03-11 09:57:57', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d00925720f8.png\"}]'),
(5, 'sender', 17, 8, 'wsh mon gars', 0, 0, NULL, '2025-03-11 12:52:12', '[]'),
(6, 'receiver', 8, 17, 'wsh mon gars', 0, 0, NULL, '2025-03-11 12:52:12', '[]'),
(7, 'sender', 17, 8, '', 0, 0, NULL, '2025-03-11 12:52:14', '[]'),
(8, 'receiver', 8, 17, '', 0, 0, NULL, '2025-03-11 12:52:14', '[]'),
(9, 'sender', 17, 8, '', 0, 0, NULL, '2025-03-11 12:52:17', '[]'),
(10, 'receiver', 8, 17, '', 0, 0, NULL, '2025-03-11 12:52:17', '[]'),
(11, 'sender', 17, 8, '', 0, 0, NULL, '2025-03-11 12:52:18', '[]'),
(12, 'receiver', 8, 17, '', 0, 0, NULL, '2025-03-11 12:52:18', '[]'),
(13, 'sender', 17, 8, '', 0, 0, NULL, '2025-03-11 12:52:18', '[]'),
(14, 'receiver', 8, 17, '', 0, 0, NULL, '2025-03-11 12:52:18', '[]'),
(15, 'sender', 17, 8, '', 0, 0, NULL, '2025-03-11 12:52:18', '[]'),
(16, 'receiver', 8, 17, '', 0, 0, NULL, '2025-03-11 12:52:18', '[]'),
(17, 'sender', 8, 17, 'ça va ?', 0, 0, NULL, '2025-03-11 12:52:21', '[]'),
(18, 'receiver', 17, 8, 'ça va ?', 0, 0, NULL, '2025-03-11 12:52:22', '[]'),
(19, 'sender', 17, 8, 'bien et toi ?', 0, 0, NULL, '2025-03-11 12:52:34', '[]'),
(20, 'receiver', 8, 17, 'bien et toi ?', 0, 0, NULL, '2025-03-11 12:52:34', '[]'),
(21, 'sender', 8, 17, '', 0, 0, NULL, '2025-03-11 12:52:35', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d0321307363.png\"}]'),
(22, 'receiver', 17, 8, '', 0, 0, NULL, '2025-03-11 12:52:35', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d0321307363.png\"}]'),
(23, 'sender', 17, 8, '', 0, 0, NULL, '2025-03-11 12:52:42', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d0321a122ee.jpeg\"}]'),
(24, 'receiver', 8, 17, '', 0, 0, NULL, '2025-03-11 12:52:42', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d0321a122ee.jpeg\"}]'),
(25, 'sender', 8, 17, 'dinguerie arcane', 0, 0, NULL, '2025-03-11 12:52:49', '[]'),
(26, 'receiver', 17, 8, 'dinguerie arcane', 0, 0, NULL, '2025-03-11 12:52:49', '[]'),
(27, 'sender', 8, 17, '', 1, 0, NULL, '2025-03-11 14:54:00', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d04e880501f.png\"}]'),
(28, 'receiver', 17, 8, '', 0, 0, NULL, '2025-03-11 14:54:00', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d04e880501f.png\"}]'),
(29, 'sender', 9, 5, 'dsds', 1, 0, NULL, '2025-03-11 15:55:48', '[]'),
(30, 'receiver', 5, 9, 'dsds', 0, 0, NULL, '2025-03-11 15:55:48', '[]'),
(31, 'sender', 8, 6, 'salut murat', 0, 0, NULL, '2025-03-12 10:38:55', '[]'),
(32, 'receiver', 6, 8, 'salut murat', 0, 0, NULL, '2025-03-12 10:38:55', '[]'),
(33, 'sender', 6, 8, 'salut ca va', 0, 0, NULL, '2025-03-12 10:39:04', '[]'),
(34, 'receiver', 8, 6, 'salut ca va', 0, 0, NULL, '2025-03-12 10:39:04', '[]'),
(35, 'sender', 8, 6, '', 0, 0, NULL, '2025-03-12 10:39:04', '[{\"type\":\"image\"}]'),
(36, 'receiver', 6, 8, '', 0, 0, NULL, '2025-03-12 10:39:04', '[{\"type\":\"image\"}]'),
(37, 'sender', 6, 8, 'regarde banniere', 0, 0, NULL, '2025-03-12 10:39:13', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d16451bcc1c.jpg\"}]'),
(38, 'receiver', 8, 6, 'regarde banniere', 0, 0, NULL, '2025-03-12 10:39:13', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d16451bcc1c.jpg\"}]'),
(39, 'sender', 8, 6, '', 0, 0, NULL, '2025-03-12 10:39:20', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d1645839c0a.png\"}]'),
(40, 'receiver', 6, 8, '', 0, 0, NULL, '2025-03-12 10:39:20', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d1645839c0a.png\"}]'),
(41, 'sender', 6, 8, 'ca c\'est flashma couille', 0, 0, NULL, '2025-03-12 10:39:29', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d164612d68e.jpg\"}]'),
(42, 'receiver', 8, 6, 'ca c\'est flashma couille', 0, 0, NULL, '2025-03-12 10:39:29', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d164612d68e.jpg\"}]'),
(43, 'sender', 8, 6, '', 0, 0, NULL, '2025-03-12 10:39:38', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d1646a3552e.jpg\"}]'),
(44, 'receiver', 6, 8, '', 0, 0, NULL, '2025-03-12 10:39:38', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d1646a3552e.jpg\"}]'),
(45, 'sender', 9, 5, 'salut', 1, 0, NULL, '2025-03-12 15:22:33', '[]'),
(46, 'receiver', 5, 9, 'salut', 0, 0, NULL, '2025-03-12 15:22:33', '[]'),
(47, 'sender', 6, 9, 'merci mehdi on t\'aime tous dans l\'quie ', 0, 0, NULL, '2025-03-12 15:24:47', '[]'),
(48, 'receiver', 9, 6, 'merci mehdi on t\'aime tous dans l\'quie ', 0, 0, NULL, '2025-03-12 15:24:47', '[]'),
(49, 'sender', 6, 9, 'equipe***', 0, 0, NULL, '2025-03-12 15:24:53', '[]'),
(50, 'receiver', 9, 6, 'equipe***', 0, 0, NULL, '2025-03-12 15:24:53', '[]'),
(51, 'sender', 8, 6, '', 0, 0, NULL, '2025-03-13 14:38:05', '[{\"type\":\"image\"}]'),
(52, 'receiver', 6, 8, '', 0, 0, NULL, '2025-03-13 14:38:05', '[{\"type\":\"image\"}]'),
(53, 'sender', 8, 6, 'salut', 0, 0, NULL, '2025-03-13 16:13:58', '[]'),
(54, 'receiver', 6, 8, 'salut', 0, 0, NULL, '2025-03-13 16:13:58', '[]'),
(55, 'sender', 19, 6, 'salut', 1, 0, NULL, '2025-03-16 19:00:48', '[]'),
(56, 'receiver', 6, 19, 'salut', 0, 0, NULL, '2025-03-16 19:00:48', '[]'),
(57, 'sender', 6, 20, 'salut ', 0, 0, NULL, '2025-03-17 15:06:45', '[]'),
(58, 'receiver', 20, 6, 'salut ', 0, 0, NULL, '2025-03-17 15:06:45', '[]'),
(59, 'sender', 6, 20, '', 0, 0, NULL, '2025-03-17 15:06:57', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d83a91c37e4.png\"}]'),
(60, 'receiver', 20, 6, '', 0, 0, NULL, '2025-03-17 15:06:57', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d83a91c37e4.png\"}]'),
(61, 'sender', 20, 6, 'salut', 1, 0, NULL, '2025-03-17 15:07:32', '[]'),
(62, 'receiver', 6, 20, 'salut', 0, 0, NULL, '2025-03-17 15:07:32', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` enum('original','retweet','quote','reply') DEFAULT NULL,
  `tweet` text DEFAULT NULL,
  `medias` text DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `parent_id`, `type`, `tweet`, `medias`, `is_deleted`, `created_at`) VALUES
(1, 6, NULL, 'original', 'bonjour #safaitplaisir', '[]', 0, '2025-03-11 09:04:20'),
(2, 9, NULL, 'original', '#test', '[]', 0, '2025-03-11 09:04:38'),
(3, 9, NULL, 'original', '#ok', '[]', 0, '2025-03-11 09:06:40'),
(4, 9, NULL, 'original', '#okkk', '[]', 0, '2025-03-11 09:07:26'),
(5, 6, NULL, 'original', 'zef zefefz #okkk #salut', '[]', 0, '2025-03-11 09:09:00'),
(6, 9, 5, 'reply', 'salt', '[]', 0, '2025-03-11 09:53:00'),
(7, 9, 5, 'retweet', NULL, '[]', 0, '2025-03-11 09:53:05'),
(8, 9, 5, 'quote', 'ke cite', '[]', 0, '2025-03-11 09:53:12'),
(9, 9, NULL, 'original', 'Incroyable la série !! Dommage que je me suis arrêté a l\'épisode 2 !', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d02b4adbf2b.jpeg\"}]', 0, '2025-03-11 12:23:39'),
(10, 17, NULL, 'original', 'wsh ', '[]', 0, '2025-03-11 12:51:35'),
(11, 17, NULL, 'original', '', '[]', 0, '2025-03-11 12:51:37'),
(12, 17, 10, 'retweet', NULL, '[]', 0, '2025-03-11 12:51:49'),
(13, 8, NULL, 'original', 'Vrai site #Dingue ', '[]', 0, '2025-03-11 14:15:46'),
(14, 8, NULL, 'original', 'salut ça refresh', '[]', 0, '2025-03-11 14:26:48'),
(15, 8, NULL, 'original', 'salut', '[]', 0, '2025-03-11 14:33:26'),
(16, 8, NULL, 'original', '@jhbkr jihad', '[]', 0, '2025-03-11 14:37:26'),
(17, 8, NULL, 'original', 'jih', '[]', 0, '2025-03-11 14:48:43'),
(18, 8, NULL, 'original', 'slt', '[]', 0, '2025-03-11 14:51:18'),
(19, 8, NULL, 'original', 'ko', '[]', 0, '2025-03-11 14:53:20'),
(20, 6, 19, 'reply', 'tes un mito', '[]', 0, '2025-03-11 14:59:52'),
(21, 6, 20, 'reply', 'je te jure tu mens #menteur', '[]', 0, '2025-03-11 15:00:28'),
(22, 6, 5, 'retweet', NULL, '[]', 0, '2025-03-11 15:03:55'),
(23, 6, 5, 'quote', 'reponse', '[]', 0, '2025-03-11 15:04:08'),
(24, 8, NULL, 'original', 'tweet ', '[]', 0, '2025-03-11 15:12:06'),
(25, 9, NULL, 'original', 'salut', '[]', 0, '2025-03-11 15:12:12'),
(26, 8, NULL, 'original', 'ji', '[]', 0, '2025-03-11 15:22:38'),
(27, 8, NULL, 'original', 'ji2', '[]', 0, '2025-03-11 15:23:49'),
(28, 9, NULL, 'original', 'xqwxqs', '[]', 0, '2025-03-11 15:23:58'),
(29, 9, NULL, 'original', 'huh', '[]', 0, '2025-03-11 15:29:26'),
(30, 9, 29, 'reply', '#new je répond avec un nouveau hastag', '[]', 0, '2025-03-11 15:42:39'),
(31, 6, NULL, 'original', 'salut #autorefrech', '[]', 0, '2025-03-11 15:49:08'),
(32, 9, NULL, 'original', 'a quoi sert ton million si tu prend perpette ?', '[]', 0, '2025-03-11 15:54:46'),
(33, 9, 32, 'quote', 'c #reel', '[]', 0, '2025-03-11 15:55:08'),
(34, 6, NULL, 'original', '#lecoq', '[]', 0, '2025-03-11 16:04:39'),
(35, 6, NULL, 'original', '#le', '[]', 0, '2025-03-11 16:04:56'),
(36, 9, NULL, 'original', '#okkk salut', '[]', 0, '2025-03-11 16:08:21'),
(37, 9, NULL, 'original', '#nouveau salut', '[]', 0, '2025-03-11 16:08:26'),
(38, 6, NULL, 'original', 'salut #nouv', '[]', 0, '2025-03-11 16:08:57'),
(39, 6, 37, 'retweet', NULL, '[]', 0, '2025-03-11 18:34:41'),
(40, 6, 37, 'reply', 'bonjour', '[]', 0, '2025-03-11 18:34:49'),
(41, 6, NULL, 'original', 'bonjour je poste #demain', '[]', 0, '2025-03-11 18:34:59'),
(42, 9, NULL, 'original', 'edsd', '[]', 0, '2025-03-12 09:03:11'),
(51, 6, NULL, 'original', 'salut #mehdi', '[]', 0, '2025-03-12 09:26:25'),
(52, 6, NULL, 'original', '#okkk ', '[]', 0, '2025-03-12 09:26:47'),
(53, 8, NULL, 'original', 'salut mehdi', '[]', 0, '2025-03-12 09:43:06'),
(54, 6, NULL, 'original', 'erfer #quoideneuf ', '[]', 0, '2025-03-12 09:43:06'),
(55, 6, 41, 'reply', 'je commente', '[]', 0, '2025-03-12 10:33:01'),
(56, 6, 23, 'reply', 'reponse a reponse', '[]', 0, '2025-03-12 10:33:32'),
(57, 6, 23, 'quote', 'commente', '[]', 0, '2025-03-12 10:33:49'),
(58, 6, NULL, 'original', '#yassine #bonjour #salut ', '[]', 0, '2025-03-12 10:35:08'),
(59, 8, NULL, 'original', 'salut', '[]', 0, '2025-03-12 10:39:54'),
(60, 8, NULL, 'original', 'murat t\'as le tweet ?? ', '[]', 0, '2025-03-12 10:40:39'),
(61, 8, NULL, 'original', 'j', '[]', 0, '2025-03-12 10:40:58'),
(62, 8, NULL, 'original', 'i', '[]', 0, '2025-03-12 10:41:00'),
(63, 8, NULL, 'original', 'h', '[]', 0, '2025-03-12 10:41:02'),
(64, 8, NULL, 'original', 'a', '[]', 0, '2025-03-12 10:41:05'),
(65, 8, NULL, 'original', 'd', '[]', 0, '2025-03-12 10:41:07'),
(66, 9, NULL, 'original', 'dsds', '[]', 0, '2025-03-12 10:41:17'),
(67, 6, NULL, 'original', '@jhbkr #je', '[]', 0, '2025-03-12 10:42:20'),
(68, 9, NULL, 'original', 'test gif', '[{\"type\":\"image\",\"url\":\"https://media.tenor.com/vLK4Mq3jiKIAAAAC/cat-no.gif\"}]', 0, '2025-03-12 14:32:44'),
(69, 9, NULL, 'original', '', '[{\"type\":\"image\",\"url\":\"https://media.tenor.com/vLK4Mq3jiKIAAAAC/cat-no.gif\"}]', 0, '2025-03-12 14:37:39'),
(70, 9, NULL, 'original', '', '[{\"type\":\"image\",\"url\":\"https://media.tenor.com/Meo6YUeN6OkAAAAC/kachow-cars.gif\"}]', 0, '2025-03-12 14:37:55'),
(71, 9, NULL, 'original', 'ccd', '[{\"type\":\"image\",\"url\":\"https://media.tenor.com/KOOlM01MYYYAAAAC/it%27s-wednesday.gif\"}]', 0, '2025-03-12 14:42:59'),
(72, 9, NULL, 'original', '#goat', '[{\"type\":\"image\",\"url\":\"https://media.tenor.com/dMhrDN2BNToAAAAC/yusukou-yusufabi-yusuf-yeni-yusufyeni-yusnickers-yusdeguste.gif\"}]', 0, '2025-03-12 14:50:42'),
(73, 9, 72, 'retweet', NULL, '[]', 0, '2025-03-12 14:55:14'),
(74, 8, 72, 'retweet', NULL, '[]', 0, '2025-03-12 14:55:20'),
(75, 8, NULL, 'original', '', '[{\"type\":\"image\",\"url\":\"https://media.tenor.com/KOOlM01MYYYAAAAC/it%27s-wednesday.gif\"}]', 0, '2025-03-12 15:17:04'),
(76, 8, 75, 'retweet', NULL, '[]', 0, '2025-03-12 15:17:39'),
(77, 9, NULL, 'original', 'dssd', '[]', 0, '2025-03-12 15:21:55'),
(78, 6, NULL, 'original', '@mehdi69 @jhbkr #catchawwwwwwwwwwwww', '[{\"type\":\"image\",\"url\":\"https://media.tenor.com/KTrs5hxTTjwAAAAC/lilmosey-lil.gif\"}]', 0, '2025-03-12 15:23:54'),
(79, 9, NULL, 'original', 'salut', '[]', 0, '2025-03-12 15:24:14'),
(80, 6, NULL, 'original', 'harrrr #harrr', '[{\"type\":\"image\"}]', 0, '2025-03-12 18:31:13'),
(81, 6, NULL, 'original', 'j\'ai mis le gif #harrr', '[{\"type\":\"image\",\"url\":\"https://media.tenor.com/vebWQnEO29IAAAAC/harrr-harrrlife.gif\"}]', 0, '2025-03-13 07:15:15'),
(82, 18, NULL, 'original', 'a #catchawwwwwwwwwwwww @a @popopo', '[]', 0, '2025-03-13 08:55:29'),
(83, 18, 78, 'retweet', NULL, '[]', 0, '2025-03-13 08:56:05'),
(84, 18, 78, 'reply', 'lol', '[]', 0, '2025-03-13 08:56:47'),
(85, 18, 78, 'reply', 'mol', '[]', 0, '2025-03-13 08:56:56'),
(86, 9, NULL, 'original', '😁', '[]', 1, '2025-03-13 09:18:54'),
(87, 9, NULL, 'original', '😅', '[]', 1, '2025-03-13 09:19:06'),
(89, 9, NULL, 'original', '😆😇😇😇😇😇😇', '[]', 1, '2025-03-13 10:12:36'),
(90, 9, 78, 'retweet', NULL, '[]', 0, '2025-03-13 10:14:08'),
(91, 9, NULL, 'original', 'bonjour 🍉', '[]', 1, '2025-03-13 10:16:44'),
(92, 9, NULL, 'original', 'test emoji 😣😢😢😢😅🍉🍉🍉🍉', '[]', 0, '2025-03-13 10:18:51'),
(93, 9, NULL, 'original', '', '[]', 1, '2025-03-13 10:25:24'),
(94, 9, NULL, 'original', '', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d2b2dd0da5d.jpg\"}]', 1, '2025-03-13 10:26:37'),
(96, 9, NULL, 'original', 'ssds', '[]', 1, '2025-03-13 10:28:27'),
(97, 6, NULL, 'original', 'jg #catchawwwwwwwwwwwww #jkjkj @mehdi69', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d2bf5ba761e.png\"},{\"type\":\"image\",\"url\":\"https://media.tenor.com/NIfvqzFRp1sAAAAC/crying-bawling.gif\"}]', 0, '2025-03-13 11:19:56'),
(98, 9, 65, 'quote', 'test', '[]', 0, '2025-03-13 13:09:02'),
(99, 6, NULL, 'original', '#okkk @jhbkr', '[]', 0, '2025-03-13 13:21:46'),
(100, 8, NULL, 'original', 'salut', '[]', 0, '2025-03-13 13:21:46'),
(101, 8, NULL, 'original', 'voici mon prochain fond d\'écran', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d2eda58279b.jpg\"}]', 0, '2025-03-13 14:37:25'),
(102, 8, 101, 'retweet', NULL, '[]', 0, '2025-03-13 14:37:30'),
(103, 8, NULL, 'original', '😁😁😁😁😁😁😁😁', '[]', 0, '2025-03-13 14:39:05'),
(104, 9, 101, 'retweet', NULL, '[]', 0, '2025-03-13 15:23:29'),
(105, 9, 101, 'reply', 'BHAAAA Masterclass', '[]', 0, '2025-03-13 15:24:15'),
(106, 6, NULL, 'original', 'j', '[]', 0, '2025-03-13 15:28:34'),
(107, 6, NULL, 'original', '#okkk @jhbkr wow', '[{\"type\":\"image\",\"url\":\"https://media.tenor.com/SmCIqIO5facAAAAC/hhgf.gif\"}]', 0, '2025-03-13 17:12:41'),
(108, 6, 107, 'retweet', NULL, '[]', 0, '2025-03-13 17:12:52'),
(109, 12, NULL, 'original', 'je fais la responsive de la messagerie du coup ?? ', '[]', 0, '2025-03-14 15:37:43'),
(110, 19, NULL, 'original', 'yoo c\'est la fin du projet 🫣 #fin #goat @jhbkr @mehdi69', '[{\"type\":\"image\",\"url\":\"https://media.tenor.com/dkdkY6Ig3NUAAAAC/fin-the-end.gif\"},{\"type\":\"image\",\"url\":\"https://media.tenor.com/Q4AH7fPW_YEAAAAC/party-time.gif\"},{\"type\":\"image\",\"url\":\"https://media.tenor.com/_jPDeZ5Srh8AAAAC/happy-birthday-cats.gif\"},{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d7206fbbe72.webp\"}]', 0, '2025-03-16 19:03:12'),
(111, 19, 110, 'quote', 'weee', '[]', 1, '2025-03-16 19:03:36'),
(112, 20, NULL, 'original', 'SAlut c\'est un tweet😢😢', '[{\"type\":\"image\",\"url\":\"http://198.244.233.0/api/uploads/67d8383a7b2db.png\"},{\"type\":\"video\"},{\"type\":\"image\",\"url\":\"https://media.tenor.com/846CCau46-gAAAAC/crying-cat-sad-cat.gif\"}]', 0, '2025-03-17 14:57:00'),
(113, 20, NULL, 'original', '@jhbkr #new test tweet', '[]', 0, '2025-03-17 14:57:30'),
(114, 20, 113, 'quote', 'je cite', '[]', 0, '2025-03-17 14:57:59'),
(115, 20, 113, 'retweet', NULL, '[]', 0, '2025-03-17 14:58:07'),
(116, 20, 113, 'reply', 'je commente', '[]', 0, '2025-03-17 14:58:14'),
(117, 20, 105, 'reply', 'je rep', '[]', 0, '2025-03-17 14:58:30'),
(118, 20, 116, 'reply', 'je rep', '[]', 0, '2025-03-17 14:58:54'),
(119, 20, 118, 'reply', 'rep', '[]', 0, '2025-03-17 14:59:05'),
(120, 20, 114, 'reply', 'je rep', '[]', 0, '2025-03-17 15:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `tweets_hastag`
--

CREATE TABLE `tweets_hastag` (
  `id` int(11) NOT NULL,
  `tweets_id` int(11) DEFAULT NULL,
  `hastag_list_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tweets_hastag`
--

INSERT INTO `tweets_hastag` (`id`, `tweets_id`, `hastag_list_id`, `created_at`) VALUES
(1, 4, 1, '2025-03-11 09:07:26'),
(2, 5, 1, '2025-03-11 09:09:00'),
(3, 5, 2, '2025-03-11 09:09:00'),
(4, 30, 3, '2025-03-11 15:42:39'),
(5, 31, 4, '2025-03-11 15:49:08'),
(6, 33, 5, '2025-03-11 15:55:08'),
(7, 36, 1, '2025-03-11 16:08:21'),
(8, 37, 6, '2025-03-11 16:08:26'),
(9, 38, 7, '2025-03-11 16:08:58'),
(10, 41, 8, '2025-03-11 18:34:59'),
(11, 51, 9, '2025-03-12 09:26:25'),
(12, 52, 1, '2025-03-12 09:26:47'),
(13, 54, 10, '2025-03-12 09:43:06'),
(14, 58, 11, '2025-03-12 10:35:08'),
(15, 58, 12, '2025-03-12 10:35:08'),
(16, 58, 2, '2025-03-12 10:35:09'),
(17, 67, 13, '2025-03-12 10:42:20'),
(18, 72, 14, '2025-03-12 14:50:42'),
(19, 78, 15, '2025-03-12 15:23:54'),
(20, 80, 16, '2025-03-12 18:31:13'),
(21, 81, 16, '2025-03-13 07:15:16'),
(22, 82, 15, '2025-03-13 08:55:29'),
(23, 97, 15, '2025-03-13 11:19:56'),
(24, 97, 17, '2025-03-13 11:19:56'),
(25, 99, 1, '2025-03-13 13:21:46'),
(26, 107, 1, '2025-03-13 17:12:42'),
(27, 110, 18, '2025-03-16 19:03:12'),
(28, 110, 14, '2025-03-16 19:03:12'),
(29, 113, 3, '2025-03-17 14:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `tweets_like`
--

CREATE TABLE `tweets_like` (
  `id` int(11) NOT NULL,
  `tweets_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tweets_like`
--

INSERT INTO `tweets_like` (`id`, `tweets_id`, `user_id`, `created_at`) VALUES
(1, 6, 9, '2025-03-11 09:53:03'),
(23, 9, 8, '2025-03-11 12:44:45'),
(26, 10, 17, '2025-03-11 12:51:46'),
(27, 10, 17, '2025-03-11 12:51:46'),
(28, 23, 6, '2025-03-11 15:04:38'),
(29, 33, 9, '2025-03-11 15:55:16'),
(30, 37, 6, '2025-03-11 18:34:34'),
(31, 38, 6, '2025-03-12 10:34:11'),
(36, 72, 9, '2025-03-12 14:55:11'),
(40, 101, 8, '2025-03-13 14:37:28'),
(44, 107, 6, '2025-03-13 17:12:49'),
(45, 78, 9, '2025-03-14 11:31:04'),
(52, 107, 9, '2025-03-14 19:51:24'),
(54, 110, 19, '2025-03-16 19:03:38'),
(55, 113, 20, '2025-03-17 14:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `email_verified` tinyint(1) DEFAULT 0,
  `verification_token` text DEFAULT NULL,
  `reset_password_expires` timestamp(3) NULL DEFAULT NULL,
  `reset_password_token` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `lastname`, `firstname`, `email`, `password`, `birthdate`, `icon`, `banner`, `github`, `linkedin`, `website`, `bio`, `is_deleted`, `email_verified`, `verification_token`, `reset_password_expires`, `reset_password_token`, `created_at`, `update_at`) VALUES
(5, 'johndoe6', 'doe', 'john', 'johndoe6@email.com', '$2b$10$okDfE4O0/hok9qWCShUvn.2To6KB1ABHLToEU.g9yGOk6wOBYu4eO', '2003-08-08', NULL, NULL, NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2025-02-24 10:07:31', '2025-02-24 10:07:31'),
(6, 'm.aayd', 'aydin', 'murathan', 'Murathan0308@gmail.com', '$2b$10$KUpVhRoc5UIn4M2ZbyO1Eu3dJ.liUPe51Sh.ap89kWmWE8kQolAU.', '1965-03-24', 'http://198.244.233.0/api/uploads/67d16404594f2.jpg', 'http://198.244.233.0/api/uploads/67d2f974e36bf.png', 'murathan-aydin', 'murathan-aydin', 'm-aydin.fr', 'Bonjour je suis la bio', 0, 0, NULL, NULL, NULL, '2025-02-24 10:17:57', '2025-03-17 14:32:58'),
(8, 'jhbkr', 'BAKARI', 'Jihad', 'jihad269200@gmail.com', '$2b$10$ChQRMROLrJIq9.99m2TUB.uisWGhJzjl0HY.8o5ziYAJW.V7erAKe', '2003-06-14', 'http://198.244.233.0/api/uploads/67d05acd30c24.jpg', 'http://198.244.233.0/api/uploads/67d304257c4c9.jpg', '', '', '', 'DEV | Futur grand crack', 0, 0, NULL, NULL, NULL, '2025-02-24 10:21:14', '2025-03-13 16:13:26'),
(9, 'mehdi69', 'alane', 'mehdi', 'mehdi@gmail.com', '$2b$10$0sffWegJSpdce6iHkGUnTuXTnWJcZRO2WQHSwmCsa8zQV7rHBuv0.', '2000-09-24', 'http://198.244.233.0/api/uploads/67d2d74c2df3b.webp', 'http://198.244.233.0/api/uploads/67d2eae8e4e2e.jpg', '', '', '', 'Salut c la bio de lejbdjsds', 0, 0, NULL, NULL, NULL, '2025-02-24 10:21:23', '2025-03-13 15:26:08'),
(10, 'denwamushi', 'bela', 'jessim', 'jessim@gmail.com', '$2b$10$14vPhlDiZtg9rJyqhvHw3Oi5WlEr/xc8ykosjwkcHzokQXI/RXK6C', '2005-03-03', NULL, NULL, NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2025-02-24 11:59:03', '2025-02-24 11:59:03'),
(12, 'CrackitoDev', 'erogjepro', 'reijgoperjg', 'jhbkr269@gmail.com', '$2b$10$SHaljCmnbpSQedUcuY2ACuNrDeIE5gVFK9Y85DGOa1gzT3tQnZ0p2', '2003-07-09', 'http://198.244.233.0/api/uploads/67d313919b7c0.jpg', 'http://198.244.233.0/api/uploads/67d313a9c07b6.jpg', '', '', '', '', 0, 0, NULL, NULL, NULL, '2025-02-24 14:43:08', '2025-03-13 17:20:26'),
(13, 'ezlfihzoifhzi', 'oihfeeriohgoierh', 'ihgerohgoierhg', 'gbreuigberu@gmail.com', '$2b$10$nUl7rmgTkq.zQgbmnX9TneyWBcva68CZqUEPbxJ/S8obkMCwCHjp.', '2003-07-14', NULL, NULL, NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2025-02-24 14:43:57', '2025-02-24 14:43:57'),
(14, 'jhbkr2', 'BAKARI', 'Jihad', 'jhbkr26@gmail.com', '$2b$10$3hw.MjuNgkM8lxtrqaf1QeRABWspNSKhUtNWEttAiHu2exq..Pdzi', '2003-07-14', NULL, NULL, NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2025-02-25 09:20:30', '2025-02-25 09:20:30'),
(17, 'vavoirladoc', 'Belatrous', 'Jessim', 'azertyuiop@gmail.com', '$2b$10$lW2oXrhzhVD3f1ea0EsIlenf888m8dvn.yWFXXG0JwpFiuryyAVUi', '2005-03-03', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2025-03-11 12:51:02', '2025-03-11 12:51:02'),
(18, 'a', 'a', 'a', 'a@a.a', '$2b$10$6sxdUirJ2av.gTt9fyDB.ewz5vHjhxsYEpk7lAAcYUeJne65Rr5KS', '1999-11-11', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2025-03-13 08:53:30', '2025-03-13 08:53:30'),
(19, 'murat710', 'aydin', 'murathan', 'aydmumu@gmail.com', '$2b$10$NnPDKzbdvwC5AMy/mULBnuD5OJ3927wlPBiBtgdYTO7c8TqFZ28wa', '2003-08-01', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2025-03-16 18:43:23', '2025-03-16 18:43:23'),
(20, 'mehdi2', 'ALane', 'Mehdi', 'mehdi2@gmail.com', '$2b$10$pE8/0QoYscvDb9Obg4hX3uUQn1EAQzxzCxYc4GWWSDE46RO8AxpFS', '2000-10-07', 'http://198.244.233.0/api/uploads/67d839380e21b.png', 'http://198.244.233.0/api/uploads/67d83b2298a1b.jpg', '', '', '', '', 0, 0, NULL, NULL, NULL, '2025-03-17 14:54:02', '2025-03-17 15:09:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`following_user_id`,`followed_user_id`),
  ADD KEY `followed_user_id` (`followed_user_id`);

--
-- Indexes for table `hastag_list`
--
ALTER TABLE `hastag_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `to_user_id` (`to_user_id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `tweets_hastag`
--
ALTER TABLE `tweets_hastag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tweets_id` (`tweets_id`),
  ADD KEY `hastag_list_id` (`hastag_list_id`);

--
-- Indexes for table `tweets_like`
--
ALTER TABLE `tweets_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tweets_id` (`tweets_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hastag_list`
--
ALTER TABLE `hastag_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `tweets_hastag`
--
ALTER TABLE `tweets_hastag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tweets_like`
--
ALTER TABLE `tweets_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`followed_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `tweets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tweets_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `tweets` (`id`);

--
-- Constraints for table `tweets_hastag`
--
ALTER TABLE `tweets_hastag`
  ADD CONSTRAINT `tweets_hastag_ibfk_1` FOREIGN KEY (`tweets_id`) REFERENCES `tweets` (`id`),
  ADD CONSTRAINT `tweets_hastag_ibfk_2` FOREIGN KEY (`hastag_list_id`) REFERENCES `hastag_list` (`id`);

--
-- Constraints for table `tweets_like`
--
ALTER TABLE `tweets_like`
  ADD CONSTRAINT `tweets_like_ibfk_1` FOREIGN KEY (`tweets_id`) REFERENCES `tweets` (`id`),
  ADD CONSTRAINT `tweets_like_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
