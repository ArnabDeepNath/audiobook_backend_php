-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 29, 2025 at 03:06 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u703317456_ebooks`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_pages`
--

CREATE TABLE `active_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `active_pages`
--

INSERT INTO `active_pages` (`id`, `name`, `enabled`) VALUES
(1, 'blog', 1),
(2, 'newsletter', 1);

-- --------------------------------------------------------

--
-- Table structure for table `audio_files`
--

CREATE TABLE `audio_files` (
  `id` int(255) NOT NULL,
  `audio_book_id` varchar(255) NOT NULL,
  `episodes` varchar(255) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `audio_files`
--

INSERT INTO `audio_files` (`id`, `audio_book_id`, `episodes`, `filepath`, `uploaded_at`) VALUES
(20, '43', '2', 'storage/audio/2025/03/17/5a3d6a401b64d84eaecb428152aad1f7.mp4', '2025-03-17 04:37:53'),
(22, '43', '3', 'storage/audio/2025/03/22/e679ae709f6102b69b839a9d28fa63c9.wav', '2025-03-22 16:48:59'),
(23, '43', '4', 'storage/audio/2025/03/22/44100fe5d574f4e4da42d3b7d62a34a7.wav', '2025-03-22 17:01:42'),
(24, '46', '2', 'storage/audio/2025/03/25/9653c7c7abe064823194c6c1cdd3c881.wav', '2025-03-25 17:21:50'),
(25, '74', '2', 'storage/audio/2025/04/11/c9513542b00b40e7755635f3557b2b93.mp3', '2025-04-11 12:50:30'),
(26, '77', '2', 'storage/audio/2025/04/19/f2de52d93e54ae797ebb9f07a429aae0.wav', '2025-04-19 15:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `bic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `written_by_en` varchar(255) NOT NULL,
  `written_by_as` varchar(255) NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `author_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `image`, `url`, `written_by_en`, `written_by_as`, `content_type`, `file_path`, `time`, `author_id`, `created_at`, `updated_at`) VALUES
(5, 'Mother_tounge.jpg', 'The_necessity_of_the_mother_tongue_5', '', '', 'pdf', 'storage/docs/2025/03/16/182428008df8f72f7f5d314ed19a7b85.pdf', 1741063239, '1', '2025-03-14 15:41:55', '2025-03-16 10:08:00'),
(6, 'melancholy.jpg', 'Melancholy_6', '', '', 'pdf', 'storage/docs/2025/03/16/5c8b7e6a645d9ec8884af325c55bc21e.pdf', 1741273247, '1', '2025-03-14 15:41:55', '2025-04-14 09:11:00'),
(7, 'Article_on_assamese_lang1.jpg', 'Recognition_of_Assamese_as_a_Classical_Language_and_Our_Responsibilities_7', '', '', 'pdf', 'storage/docs/2025/03/16/ab8971f41568c9c146f7afe66d65fddb.pdf', 1742120606, '1', '2025-03-16 10:23:26', '2025-03-16 10:26:27'),
(8, 'gkatha.jpg', 'GranthKths_App_What_Why_and_for_Whom_8', '', '', 'pdf', 'storage/docs/2025/03/18/89be9d21dbf707a4bb9316842bfcb77f.pdf', 1742332819, '1', '2025-03-18 21:20:19', '2025-04-14 09:07:38'),
(9, '232_272.jpeg', 'Moidam_Pratha_by_Subhalakshmi_9', '', '', 'pdf', 'storage/docs/2025/04/11/ed8f591a7ad316bc9c9b9265ad55b71f.pdf', 1744402136, '1', '2025-04-11 20:08:56', '2025-04-11 20:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `written_by` varchar(255) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `title`, `description`, `written_by`, `abbr`, `for_id`, `created_at`, `updated_at`) VALUES
(9, 'মাতৃভাষাৰ প্ৰয়োজনীয়তা', '<p>শিশুটিয়ে ওপজি পুৱাৰে পৰা যি ভাষা শুনে, নিজৰ পৰিয়ালৰ পৰা যি ভাষাত কথা ক\'বলৈ শিকে সেইয়াই মাতৃভাষা । মাতৃভাষাক প্ৰথ্ম ভাষা বুলিও কোৱা হয় ।</p>\r\n', 'প্ৰাঞ্জল বৰুৱা', 'as', 5, '2025-03-14 15:42:32', '2025-04-06 17:12:45'),
(10, 'The necessity of the mother tongue', '<p>The language a child hears from birth and learns to speak from their family is called their mother tongue. It is also known as the first language.</p>\r\n', 'Pranjal Baruah', 'en', 5, '2025-03-14 15:42:32', '2025-04-06 17:12:56'),
(11, 'দ্য মেলেন্কলি উইপাৰছ', '<p>মৃত্যু এক চিৰন্তৰ সত্য । জন্মিলে মৰিবই লাগিব; এয়া প্ৰকৃতিৰ নিয়ম । পৃথিৱীত বাস কৰা প্ৰতিটো জাতি-জনজাতিয়েই নিজ নিজ ৰীতি-নীতি অনুসৰি ....</p>\r\n', 'ড° ৰুমী নাথ', 'as', 6, '2025-03-14 15:42:32', '2025-04-14 09:11:00'),
(12, 'Melancholy', '<p>Death is an eternal truth. Whoever is born must eventually die; this is the law of nature. Every community and ethnic group in the world bids farewell to the .....</p>\r\n', 'Dr. Rumi Nath', 'en', 6, '2025-03-14 15:42:32', '2025-04-14 09:11:00'),
(13, 'অসমীয়া ভাষাৰ ধ্ৰুপদী মৰ্যদা প্ৰাপ্তি আৰু আমাৰ কৰণীয়', '<p>যোৱা ৩ অক্টোবৰ তাৰিখে অসমীয়া ভাষাক ধ্ৰুপদী ভাষাৰ মৰ্যদা দিয়া হয় ।&nbsp;</p>\r\n', 'ড° পল্লৱী ডেকা', 'as', 7, '2025-03-16 10:23:26', '2025-04-06 17:13:27'),
(14, 'Recognition of Assamese as a Classical Language and Our Responsibilities', '<p>On October 3rd, Assamese language was granted the status of a Classical Language.</p>\r\n', 'Dr. Pallavi Deka', 'en', 7, '2025-03-16 10:23:26', '2025-04-06 17:13:36'),
(15, 'গ্ৰন্থকথা এপ কি,   কিয় আৰু কাৰ কাৰণে!', '<p>গ্ৰন্থকথা এপ কি, &nbsp; কিয় আৰু কাৰ কাৰণে!</p>\r\n', 'প্ৰাঞ্জল বৰুৱা', 'as', 8, '2025-03-18 21:20:19', '2025-04-06 17:13:43'),
(16, 'GranthaKatha App- What, Why and for Whom', '<p>This article explain about why GranthaKatha App, What will be there and for whom</p>\r\n', 'Pranjal Boruah', 'en', 8, '2025-03-18 21:20:19', '2025-04-06 17:13:52'),
(17, 'আহোম স্বৰ্গদেউ সকলৰ মৈদাম', '<p>Maidam বা Pyramid of Assam) হৈছে আহোম জনগোষ্ঠীৰ লোকৰ পৰম্পৰাগত মৃতদেহ সংস্কাৰ প্ৰথা আৰু সমাধি যি বিশ্ব ঐতিহ্য ক্ষেত্ৰ হিচাপে স্বীকৃতি প্ৰাপ্ত।</p>\r\n', 'শুভ লক্ষ্মী বুঢ়াগোহাঁই', 'as', 9, '2025-04-11 20:08:56', '2025-04-14 09:09:22'),
(18, 'Moidam Pratha by Subhalakshmi ', '<p>Frang-Mai-Dam or Moidam meaning:Burial of the dead is a traditional tumulus of the Ahom religion.The royal maidams of Charaideo are listed as UNESCO world heritage site.</p>\r\n', 'Subhalakshmi Burahohain', 'en', 9, '2025-04-11 20:08:56', '2025-04-14 09:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `book_reviews`
--

CREATE TABLE `book_reviews` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `review_title` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` between 1 and 5),
  `review` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_reviews`
--

INSERT INTO `book_reviews` (`id`, `book_id`, `book_name`, `user_name`, `user_id`, `review_title`, `rating`, `review`, `created_at`) VALUES
(7, 56, 'University of Ancient India', 'Partha Sarathi Das', '40', 'Very very interesting', 3, 'Very very interesting', '2025-04-26 16:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `confirm_links`
--

CREATE TABLE `confirm_links` (
  `id` int(11) NOT NULL,
  `link` char(32) NOT NULL,
  `for_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `confirm_links`
--

INSERT INTO `confirm_links` (`id`, `link`, `for_order`) VALUES
(1, 'f0c566df6a6ceee0773af996e85c4dec', 1234),
(2, '07becae91e26d272b2172de87fbf9b8e', 1235),
(3, '04804c6398b2a01d66d4dd19a7153653', 1234),
(4, '22d33daa80c9aa981000e1b84be60178', 1235),
(5, '4cec2d971cd271fcba49fa79b18e4b85', 1236),
(6, 'a9a04ff9677190cf1a7adaffd9c84d74', 1237),
(7, '23d90f5fc8b854ccd5a4fa24744a3bf1', 1238),
(8, 'cb6420b0395200d55ef287e238e116af', 1239),
(9, '774a40fd0d4abff211092f953afac7ca', 1240),
(10, '8f1b2891e4b577acf200e4a47a6270b9', 1241),
(11, 'e2350fd2840cae9e2097d966e98803ad', 1242),
(12, '873334d245dfa229a7a8a2c7d8fed398', 1243),
(13, 'e614a5fa0b06ba1500fe0356603d60e8', 1244),
(14, '16e3e2122e278c8957f79d6bb7d3215b', 1245),
(15, '779d6303fdefe4976900588efd2a205d', 1246),
(16, '7f807623dfff2d43989b1970d24650a3', 1247),
(17, '9bd11c92f4b0d57db12d87f8011a0f3d', 1248),
(18, '3712d046f106107e881721bef2cc7936', 1249),
(19, 'ca6c34b7ae0211435a5cb52382f33f6e', 1250);

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law`
--

CREATE TABLE `cookie_law` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `cookie_law`
--

INSERT INTO `cookie_law` (`id`, `link`, `theme`, `visibility`) VALUES
(1, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law_translations`
--

CREATE TABLE `cookie_law_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `learn_more` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `cookie_law_translations`
--

INSERT INTO `cookie_law_translations` (`id`, `message`, `button_text`, `learn_more`, `abbr`, `for_id`) VALUES
(1, '', '', '', 'as', 1),
(2, '', '', '', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `valid_from_date` int(10) UNSIGNED NOT NULL,
  `valid_to_date` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1-enabled, 0-disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `activity`, `username`, `time`) VALUES
(1, 'User superadmin logged in', NULL, 1742532938),
(2, 'Go to home page', 'superadmin', 1742532938),
(3, 'Go to History', 'superadmin', 1742532949),
(4, 'Go to home page', 'superadmin', 1742532961),
(5, 'Go to History', 'superadmin', 1742532966),
(6, 'Go to shop tags', 'superadmin', 1742532971),
(7, 'Go to shop categories', 'superadmin', 1742532976),
(8, 'Go to home page', 'superadmin', 1742532978),
(9, 'Go to History', 'superadmin', 1742532982),
(10, 'Go to home page', 'superadmin', 1742533017),
(11, 'Go to Admin Users', 'superadmin', 1742533031),
(12, 'Go to Admin Users', 'superadmin', 1742533058),
(13, 'Go to Admin Users', 'superadmin', 1742533063),
(14, 'Go to Admin Users', 'superadmin', 1742533066),
(15, 'Go to Admin Users', 'superadmin', 1742533070),
(16, 'Go to Admin Users', 'superadmin', 1742533073),
(17, 'Go to Admin Users', 'superadmin', 1742533077),
(18, 'Go to Admin Users', 'superadmin', 1742533080),
(19, 'Go to Admin Users', 'superadmin', 1742533083),
(20, 'Go to Admin Users', 'superadmin', 1742533086),
(21, 'Go to shop authors', 'superadmin', 1742533114),
(22, 'Go to products', 'superadmin', 1742533205),
(23, 'Go to products', 'superadmin', 1742533225),
(24, 'Go to products', 'superadmin', 1742533242),
(25, 'Go to shop tags', 'superadmin', 1742533548),
(26, 'Go to shop tags', 'superadmin', 1742533825),
(27, 'Go to shop categories', 'superadmin', 1742533838),
(28, 'Go to products', 'superadmin', 1742533840),
(29, 'Go to home page', 'superadmin', 1742533891),
(30, 'Go to Blog Publish', 'superadmin', 1742533902),
(31, 'Go to Blog', 'superadmin', 1742533906),
(32, 'Go to shop tags', 'superadmin', 1742533916),
(33, 'Edit shop categorie to নতুন', 'superadmin', 1742533920),
(34, 'Go to shop authors', 'superadmin', 1742533924),
(35, 'Go to orders page', 'superadmin', 1742533925),
(36, 'Go to products', 'superadmin', 1742533928),
(37, 'Go to publish product', 'superadmin', 1742533930),
(38, 'Go to Blog Publish', 'superadmin', 1742533935),
(39, 'Go to Blog', 'superadmin', 1742533939),
(40, 'Go to Blog Publish', 'superadmin', 1742533944),
(41, 'Go to Blog', 'superadmin', 1742533953),
(42, 'Go to home page', 'superadmin', 1742537795),
(43, 'Go to History', 'superadmin', 1742537803),
(44, 'Go to home page', 'superadmin', 1742537811),
(45, 'Go to Admin Users', 'superadmin', 1742537817),
(46, 'User superadmin logged in', NULL, 1742620616),
(47, 'Go to home page', 'superadmin', 1742620616),
(48, 'Go to History', 'superadmin', 1742620619),
(49, 'Go to home page', 'superadmin', 1742620626),
(50, 'Go to Admin Users', 'superadmin', 1742620633),
(51, 'Go to products', 'superadmin', 1742620647),
(52, 'Go to publish product', 'superadmin', 1742620652),
(53, 'Go to publish product', 'superadmin', 1742620660),
(54, 'Go to products', 'superadmin', 1742620662),
(55, 'Go to publish product', 'superadmin', 1742620683),
(56, 'Go to products', 'superadmin', 1742620686),
(57, 'Go to products', 'superadmin', 1742620693),
(58, 'Go to products', 'superadmin', 1742620702),
(59, 'Go to products', 'superadmin', 1742620707),
(60, 'Go to products', 'superadmin', 1742620722),
(61, 'Go to publish product', 'superadmin', 1742620730),
(62, 'Go to home page', 'superadmin', 1742620747),
(63, 'Go to shop authors', 'superadmin', 1742620757),
(64, 'Edit shop author to N', 'superadmin', 1742620787),
(65, 'Edit shop author to নিৰুপমা বৰগোহাঞি', 'superadmin', 1742620798),
(66, 'Edit shop author to Nirupama Borgohain', 'superadmin', 1742620804),
(67, 'Edit shop author to Upasana Saikia', 'superadmin', 1742620825),
(68, 'Edit shop author to Upasana Saikia', 'superadmin', 1742620835),
(69, 'Edit shop author to উপাসনা শইকীয়া', 'superadmin', 1742620840),
(70, 'Go to products', 'superadmin', 1742620870),
(71, 'Go to products', 'superadmin', 1742620875),
(72, 'Go to products', 'superadmin', 1742620878),
(73, 'Go to publish product', 'superadmin', 1742620979),
(74, 'Go to products', 'superadmin', 1742620982),
(75, 'User admin logged in', NULL, 1742661570),
(76, 'Go to home page', 'admin', 1742661570),
(77, 'Go to products', 'admin', 1742661579),
(78, 'Go to products', 'admin', 1742662097),
(79, 'User admin logged in', NULL, 1742703890),
(80, 'Go to home page', 'admin', 1742703890),
(81, 'Go to products', 'admin', 1742703898),
(82, 'Go to products', 'admin', 1742703905),
(83, 'Delete product id - 37', 'admin', 1742703918),
(84, 'Go to products', 'admin', 1742703918),
(85, 'Go to products', 'admin', 1742703923),
(86, 'Delete product id - 38', 'admin', 1742703935),
(87, 'Go to products', 'admin', 1742703936),
(88, 'Go to products', 'admin', 1742703941),
(89, 'Delete product id - 39', 'admin', 1742703950),
(90, 'Go to products', 'admin', 1742703950),
(91, 'Cant login with - User: admin and Pass: admin', NULL, 1742723400),
(92, 'User superadmin logged in', NULL, 1742723418),
(93, 'Go to home page', 'superadmin', 1742723418),
(94, 'Go to products', 'superadmin', 1742723425),
(95, 'Go to publish product', 'superadmin', 1742723433),
(96, 'Go to home page', 'superadmin', 1742723462),
(97, 'Go to home page', 'superadmin', 1742723655),
(98, 'Go to shop authors', 'superadmin', 1742723658),
(99, 'Go to shop authors', 'superadmin', 1742723971),
(100, 'Go to shop authors', 'superadmin', 1742723977),
(101, 'Go to shop authors', 'superadmin', 1742724197),
(102, 'Go to shop authors', 'superadmin', 1742724286),
(103, 'Go to shop authors', 'superadmin', 1742724486),
(104, 'Go to shop authors', 'superadmin', 1742724570),
(105, 'Go to shop authors', 'superadmin', 1742724727),
(106, 'Go to shop tags', 'superadmin', 1742724738),
(107, 'Go to shop tags', 'superadmin', 1742724822),
(108, 'Go to shop tags', 'superadmin', 1742724860),
(109, 'Go to shop tags', 'superadmin', 1742724877),
(110, 'Go to shop categories', 'superadmin', 1742724885),
(111, 'Go to shop authors', 'superadmin', 1742724892),
(112, 'User superadmin logged in', NULL, 1742737637),
(113, 'Go to home page', 'superadmin', 1742737637),
(114, 'Go to shop authors', 'superadmin', 1742737649),
(115, 'Go to orders page', 'superadmin', 1742737671),
(116, 'Go to shop authors', 'superadmin', 1742737681),
(117, 'Go to shop tags', 'superadmin', 1742737683),
(118, 'Go to shop categories', 'superadmin', 1742737686),
(119, 'Go to products', 'superadmin', 1742737690),
(120, 'Go to Blog Publish', 'superadmin', 1742737701),
(121, 'Go to Blog', 'superadmin', 1742737738),
(122, 'Go to Blog Publish', 'superadmin', 1742737743),
(123, 'Go to Blog', 'superadmin', 1742737754),
(124, 'Go to Blog', 'superadmin', 1742737771),
(125, 'Go to Blog Publish', 'superadmin', 1742737775),
(126, 'Go to Templates Page', 'superadmin', 1742737800),
(127, 'Go to home page', 'superadmin', 1742737809),
(128, 'Go to Admin Users', 'superadmin', 1742737814),
(129, 'Go to home page', 'superadmin', 1742737825),
(130, 'Go to History', 'superadmin', 1742737838),
(131, 'Go to History', 'superadmin', 1742737869),
(132, 'Go to home page', 'superadmin', 1742737926),
(133, 'Go to products', 'superadmin', 1742737931),
(134, 'Go to products', 'superadmin', 1742737940),
(135, 'Go to products', 'superadmin', 1742737943),
(136, 'User admin logged in', NULL, 1742832343),
(137, 'Go to home page', 'admin', 1742832343),
(138, 'Go to products', 'admin', 1742832352),
(139, 'Go to publish product', 'admin', 1742832365),
(140, 'Go to publish product', 'admin', 1742832446),
(141, 'User admin logged in', NULL, 1742855016),
(142, 'Go to home page', 'admin', 1742855016),
(143, 'Go to Blog', 'admin', 1742855023),
(144, 'Go to Blog Publish', 'admin', 1742855028),
(145, 'Go to Blog', 'admin', 1742855095),
(146, 'Go to home page', 'admin', 1742855465),
(147, 'Go to Blog', 'admin', 1742855470),
(148, 'Go to Blog Publish', 'admin', 1742855474),
(149, 'Go to Blog', 'admin', 1742855511),
(150, 'Go to home page', 'admin', 1742855834),
(151, 'User admin logged in', NULL, 1742895045),
(152, 'Go to home page', 'admin', 1742895045),
(153, 'Go to products', 'admin', 1742895331),
(154, 'Go to products', 'admin', 1742895633),
(155, 'Delete product id - 47', 'admin', 1742895642),
(156, 'Go to products', 'admin', 1742895642),
(157, 'Go to products', 'admin', 1742895879),
(158, 'Go to products', 'admin', 1742895956),
(159, 'Go to products', 'admin', 1742896030),
(160, 'User admin logged in', NULL, 1742921899),
(161, 'Go to home page', 'admin', 1742921899),
(162, 'Go to publish product', 'admin', 1742921904),
(163, 'Go to products', 'admin', 1742922685),
(164, 'Go to products', 'admin', 1742923015),
(165, 'Go to products', 'admin', 1742923031),
(166, 'Go to shop authors', 'admin', 1742923680),
(167, 'Go to products', 'admin', 1742924034),
(168, 'Go to publish product', 'admin', 1742924096),
(169, 'Success published product', 'admin', 1742925202),
(170, 'Go to products', 'admin', 1742925203),
(171, 'Go to products', 'admin', 1742925360),
(172, 'Go to products', 'admin', 1742925370),
(173, 'Go to products', 'admin', 1742925373),
(174, 'Go to shop authors', 'admin', 1742925737),
(175, 'User superadmin logged in', NULL, 1742927425),
(176, 'Go to home page', 'superadmin', 1742927425),
(177, 'Go to shop authors', 'superadmin', 1742927428),
(178, 'Go to shop authors', 'superadmin', 1742928331),
(179, 'Go to shop authors', 'superadmin', 1742928365),
(180, 'Go to shop authors', 'superadmin', 1742928373),
(181, 'User superadmin logged in', NULL, 1742929161),
(182, 'Go to home page', 'superadmin', 1742929161),
(183, 'Go to Settings Page', 'superadmin', 1742929168),
(184, 'Go to shop authors', 'superadmin', 1742931503),
(185, 'User admin logged in', NULL, 1742931535),
(186, 'Go to home page', 'admin', 1742931536),
(187, 'Go to products', 'admin', 1742931538),
(188, 'Go to publish product', 'admin', 1742931546),
(189, 'Success updated product', 'admin', 1742931563),
(190, 'Go to products', 'admin', 1742931563),
(191, 'Go to products', 'admin', 1742931575),
(192, 'Go to publish product', 'admin', 1742931587),
(193, 'Go to products', 'admin', 1742931649),
(194, 'Go to products', 'admin', 1742931653),
(195, 'User admin logged in', NULL, 1742994982),
(196, 'Go to home page', 'admin', 1742994982),
(197, 'Go to products', 'admin', 1742994985),
(198, 'Go to publish product', 'admin', 1742994998),
(199, 'Success updated product', 'admin', 1742995019),
(200, 'Go to products', 'admin', 1742995020),
(201, 'User admin logged in', NULL, 1743008570),
(202, 'Go to home page', 'admin', 1743008571),
(203, 'Go to publish product', 'admin', 1743008575),
(204, 'Go to shop authors', 'admin', 1743008771),
(205, 'Go to shop authors', 'admin', 1743008910),
(206, 'Go to publish product', 'admin', 1743008925),
(207, 'Success published product', 'admin', 1743009363),
(208, 'Go to products', 'admin', 1743009364),
(209, 'Go to products', 'admin', 1743009383),
(210, 'Go to publish product', 'admin', 1743010528),
(211, 'Success updated product', 'admin', 1743010545),
(212, 'Go to products', 'admin', 1743010545),
(213, 'Go to publish product', 'admin', 1743011050),
(214, 'Success updated product', 'admin', 1743011068),
(215, 'Go to products', 'admin', 1743011068),
(216, 'Go to publish product', 'admin', 1743011400),
(217, 'Go to shop authors', 'admin', 1743011595),
(218, 'Go to shop authors', 'admin', 1743011699),
(219, 'Go to publish product', 'admin', 1743011707),
(220, 'Success published product', 'admin', 1743012020),
(221, 'Go to products', 'admin', 1743012020),
(222, 'Go to products', 'admin', 1743012489),
(223, 'Go to publish product', 'admin', 1743012499),
(224, 'Success updated product', 'admin', 1743012600),
(225, 'Go to products', 'admin', 1743012602),
(226, 'Go to products', 'admin', 1743012644),
(227, 'Go to publish product', 'admin', 1743012648),
(228, 'Success updated product', 'admin', 1743012665),
(229, 'Go to products', 'admin', 1743012666),
(230, 'Go to products', 'admin', 1743012682),
(231, 'Go to publish product', 'admin', 1743012691),
(232, 'Go to products', 'admin', 1743012989),
(233, 'Go to products', 'admin', 1743013061),
(234, 'Delete product id - 31', 'admin', 1743013068),
(235, 'Go to products', 'admin', 1743013068),
(236, 'Go to publish product', 'admin', 1743013079),
(237, 'Success published product', 'admin', 1743013198),
(238, 'Go to products', 'admin', 1743013198),
(239, 'Go to shop authors', 'admin', 1743014363),
(240, 'Go to shop authors', 'admin', 1743014428),
(241, 'Go to publish product', 'admin', 1743014430),
(242, 'Success published product', 'admin', 1743014627),
(243, 'Go to products', 'admin', 1743014627),
(244, 'User superadmin logged in', NULL, 1743092907),
(245, 'Go to home page', 'superadmin', 1743092907),
(246, 'Go to Settings Page', 'superadmin', 1743092915),
(247, 'User superadmin logged in', NULL, 1743097671),
(248, 'Go to home page', 'superadmin', 1743097671),
(249, 'Go to History', 'superadmin', 1743097678),
(250, 'Go to History', 'superadmin', 1743097685),
(251, 'Go to products', 'superadmin', 1743097709),
(252, 'Go to products', 'superadmin', 1743097717),
(253, 'Go to shop authors', 'superadmin', 1743097735),
(254, 'Go to shop tags', 'superadmin', 1743097778),
(255, 'Go to shop categories', 'superadmin', 1743097781),
(256, 'Go to Blog', 'superadmin', 1743097791),
(257, 'Go to File Manager', 'superadmin', 1743097798),
(258, 'Go to languages', 'superadmin', 1743097828),
(259, 'Go to Titles / Descriptions page', 'superadmin', 1743097845),
(260, 'Go to History', 'superadmin', 1743097854),
(261, 'User admin logged in', NULL, 1743099696),
(262, 'Go to home page', 'admin', 1743099696),
(263, 'Go to products', 'admin', 1743099915),
(264, 'Go to publish product', 'admin', 1743099922),
(265, 'Success updated product', 'admin', 1743099943),
(266, 'Go to products', 'admin', 1743099944),
(267, 'Go to publish product', 'admin', 1743100226),
(268, 'Success published product', 'admin', 1743100442),
(269, 'Go to products', 'admin', 1743100442),
(270, 'Go to shop authors', 'admin', 1743101814),
(271, 'Go to shop authors', 'admin', 1743101854),
(272, 'Go to publish product', 'admin', 1743101865),
(273, 'Success published product', 'admin', 1743102109),
(274, 'Go to products', 'admin', 1743102109),
(275, 'Go to products', 'admin', 1743102522),
(276, 'Go to products', 'admin', 1743102525),
(277, 'Go to shop authors', 'admin', 1743102540),
(278, 'Go to shop authors', 'admin', 1743102625),
(279, 'Go to publish product', 'admin', 1743102631),
(280, 'Success published product', 'admin', 1743102779),
(281, 'Go to products', 'admin', 1743102779),
(282, 'User admin logged in', NULL, 1743145332),
(283, 'Go to home page', 'admin', 1743145332),
(284, 'Go to shop authors', 'admin', 1743145335),
(285, 'User ashok.nath@example.com logged in', NULL, 1743145381),
(286, 'Go to home page', 'ashok.nath@example.com', 1743145381),
(287, 'User admin logged in', NULL, 1743147112),
(288, 'Go to home page', 'admin', 1743147112),
(289, 'Go to shop authors', 'admin', 1743147114),
(290, 'User ashok.nath@example.com logged in', NULL, 1743147169),
(291, 'Go to home page', 'ashok.nath@example.com', 1743147169),
(292, 'Go to publish product', 'ashok.nath@example.com', 1743147184),
(293, 'Go to products', 'ashok.nath@example.com', 1743147292),
(294, 'Go to Blog Publish', 'ashok.nath@example.com', 1743147308),
(295, 'Go to Blog', 'ashok.nath@example.com', 1743147351),
(296, 'Go to Blog Publish', 'ashok.nath@example.com', 1743147365),
(297, 'Go to Blog', 'ashok.nath@example.com', 1743147396),
(298, 'Go to publish product', 'ashok.nath@example.com', 1743149004),
(299, 'Go to products', 'ashok.nath@example.com', 1743149139),
(300, 'Go to Blog Publish', 'ashok.nath@example.com', 1743149202),
(301, 'Go to Blog', 'ashok.nath@example.com', 1743149311),
(302, 'Go to Blog Publish', 'ashok.nath@example.com', 1743149405),
(303, 'Go to Blog Publish', 'ashok.nath@example.com', 1743149415),
(304, 'User admin logged in', NULL, 1743183794),
(305, 'Go to home page', 'admin', 1743183794),
(306, 'Go to shop authors', 'admin', 1743183975),
(307, 'Go to shop authors', 'admin', 1743184077),
(308, 'Go to publish product', 'admin', 1743184616),
(309, 'Success published product', 'admin', 1743184709),
(310, 'Go to products', 'admin', 1743184709),
(311, 'Go to publish product', 'admin', 1743185752),
(312, 'Success published product', 'admin', 1743185821),
(313, 'Go to products', 'admin', 1743185822),
(314, 'Go to products', 'admin', 1743186493),
(315, 'Go to products', 'admin', 1743186503),
(316, 'Go to publish product', 'admin', 1743186516),
(317, 'Success updated product', 'admin', 1743186580),
(318, 'Go to products', 'admin', 1743186581),
(319, 'User superadmin logged in', NULL, 1743228049),
(320, 'Go to home page', 'superadmin', 1743228049),
(321, 'Go to Blog Publish', 'superadmin', 1743228052),
(322, 'Go to Blog', 'superadmin', 1743228054),
(323, 'Go to Blog Publish', 'superadmin', 1743228059),
(324, 'Go to Blog', 'superadmin', 1743228062),
(325, 'Go to shop authors', 'superadmin', 1743228072),
(326, 'Go to products', 'superadmin', 1743228080),
(327, 'Go to publish product', 'superadmin', 1743228121),
(328, 'Go to products', 'superadmin', 1743228132),
(329, 'Go to products', 'superadmin', 1743228154),
(330, 'Go to products', 'superadmin', 1743228159),
(331, 'Go to products', 'superadmin', 1743228167),
(332, 'Go to products', 'superadmin', 1743228171),
(333, 'Go to products', 'superadmin', 1743228179),
(334, 'Go to home page', 'superadmin', 1743228232),
(335, 'Go to History', 'superadmin', 1743228235),
(336, 'Cant login with - User: admin and Pass: admin', NULL, 1743605612),
(337, 'User admin logged in', NULL, 1743605628),
(338, 'Go to home page', 'admin', 1743605629),
(339, 'Go to shop authors', 'admin', 1743605631),
(340, 'Go to shop authors', 'admin', 1743606177),
(341, 'Go to publish product', 'admin', 1743606180),
(342, 'Success published product', 'admin', 1743606334),
(343, 'Go to products', 'admin', 1743606334),
(344, 'Cant login with - User: admin and Pass: admin', NULL, 1743698047),
(345, 'User admin logged in', NULL, 1743698061),
(346, 'Go to home page', 'admin', 1743698061),
(347, 'Go to products', 'admin', 1743698064),
(348, 'Go to publish product', 'admin', 1743698080),
(349, 'Go to products', 'admin', 1743698114),
(350, 'Go to products', 'admin', 1743700691),
(351, 'Go to products', 'admin', 1743700704),
(352, 'Go to products', 'admin', 1743700706),
(353, 'Go to products', 'admin', 1743700708),
(354, 'Go to products', 'admin', 1743700708),
(355, 'Go to products', 'admin', 1743700708),
(356, 'Go to products', 'admin', 1743700709),
(357, 'Go to shop authors', 'admin', 1743700941),
(358, 'Go to shop authors', 'admin', 1743701052),
(359, 'Go to publish product', 'admin', 1743701222),
(360, 'Go to publish product', 'admin', 1743702378),
(361, 'Success published product', 'admin', 1743703158),
(362, 'Go to products', 'admin', 1743703158),
(363, 'Go to publish product', 'admin', 1743703598),
(364, 'Success published product', 'admin', 1743704146),
(365, 'Go to products', 'admin', 1743704147),
(366, 'User admin logged in', NULL, 1743784770),
(367, 'Go to home page', 'admin', 1743784770),
(368, 'Go to shop authors', 'admin', 1743785546),
(369, 'Go to shop authors', 'admin', 1743785634),
(370, 'Go to publish product', 'admin', 1743785642),
(371, 'Success published product', 'admin', 1743785996),
(372, 'Go to products', 'admin', 1743785996),
(373, 'Go to shop authors', 'admin', 1743786134),
(374, 'Go to shop authors', 'admin', 1743786178),
(375, 'Go to publish product', 'admin', 1743786341),
(376, 'Success published product', 'admin', 1743786549),
(377, 'Go to products', 'admin', 1743786549),
(378, 'Go to shop authors', 'admin', 1743786954),
(379, 'Go to shop authors', 'admin', 1743787087),
(380, 'Go to publish product', 'admin', 1743787098),
(381, 'Success published product', 'admin', 1743787467),
(382, 'Go to products', 'admin', 1743787467),
(383, 'Go to shop authors', 'admin', 1743788065),
(384, 'Go to shop authors', 'admin', 1743788105),
(385, 'Go to publish product', 'admin', 1743788148),
(386, 'Success published product', 'admin', 1743788285),
(387, 'Go to products', 'admin', 1743788285),
(388, 'Go to publish product', 'admin', 1743789875),
(389, 'Success published product', 'admin', 1743790041),
(390, 'Go to products', 'admin', 1743790041),
(391, 'Go to products', 'admin', 1743790438),
(392, 'Go to products', 'admin', 1743790449),
(393, 'Go to products', 'admin', 1743790458),
(394, 'User superadmin logged in', NULL, 1743876224),
(395, 'Go to home page', 'superadmin', 1743876225),
(396, 'Go to products', 'superadmin', 1743876245),
(397, 'Go to publish product', 'superadmin', 1743876256),
(398, 'Go to products', 'superadmin', 1743876267),
(399, 'Go to products', 'superadmin', 1743876272),
(400, 'Go to products', 'superadmin', 1743876275),
(401, 'Go to shop tags', 'superadmin', 1743876400),
(402, 'Go to shop authors', 'superadmin', 1743876405),
(403, 'Go to Blog Publish', 'superadmin', 1743876436),
(404, 'Go to Blog', 'superadmin', 1743876453),
(405, 'Go to Blog Publish', 'superadmin', 1743876471),
(406, 'User superadmin logged in', NULL, 1743952085),
(407, 'Go to home page', 'superadmin', 1743952085),
(408, 'Go to Blog', 'superadmin', 1743952088),
(409, 'Go to Blog Publish', 'superadmin', 1743952091),
(410, 'User superadmin logged in', NULL, 1743960341),
(411, 'Go to home page', 'superadmin', 1743960342),
(412, 'Go to Blog', 'superadmin', 1743960345),
(413, 'Go to Blog Publish', 'superadmin', 1743960348),
(414, 'Go to Blog', 'superadmin', 1743960356),
(415, 'Go to Blog Publish', 'superadmin', 1743960846),
(416, 'User admin logged in', NULL, 1744040921),
(417, 'Go to home page', 'admin', 1744040921),
(418, 'Go to products', 'admin', 1744041542),
(419, 'Go to publish product', 'admin', 1744041544),
(420, 'Go to shop authors', 'admin', 1744041683),
(421, 'Go to shop authors', 'admin', 1744041841),
(422, 'Go to products', 'admin', 1744041850),
(423, 'Go to Blog Publish', 'admin', 1744041866),
(424, 'Go to Blog', 'admin', 1744041868),
(425, 'Go to home page', 'admin', 1744047205),
(426, 'Go to shop authors', 'admin', 1744047208),
(427, 'Go to shop authors', 'admin', 1744047350),
(428, 'Go to publish product', 'admin', 1744047354),
(429, 'Success published product', 'admin', 1744047624),
(430, 'Go to products', 'admin', 1744047627),
(431, 'Go to publish product', 'admin', 1744050627),
(432, 'Go to shop authors', 'admin', 1744050646),
(433, 'Go to publish product', 'admin', 1744050712),
(434, 'Success published product', 'admin', 1744050822),
(435, 'Go to products', 'admin', 1744050823),
(436, 'User admin logged in', NULL, 1744203918),
(437, 'Go to home page', 'admin', 1744203918),
(438, 'Go to shop tags', 'admin', 1744203920),
(439, 'Go to shop tags', 'admin', 1744203961),
(440, 'Go to shop categories', 'admin', 1744203964),
(441, 'Go to shop categories', 'admin', 1744203976),
(442, 'Go to products', 'admin', 1744203984),
(443, 'Go to publish product', 'admin', 1744203992),
(444, 'Success updated product', 'admin', 1744204006),
(445, 'Go to products', 'admin', 1744204006),
(446, 'Go to publish product', 'admin', 1744204029),
(447, 'Success updated product', 'admin', 1744204047),
(448, 'Go to products', 'admin', 1744204047),
(449, 'User admin logged in', NULL, 1744366488),
(450, 'Go to home page', 'admin', 1744366488),
(451, 'Go to home page', 'admin', 1744370729),
(452, 'Go to products', 'admin', 1744370954),
(453, 'Go to publish product', 'admin', 1744370970),
(454, 'Success published product', 'admin', 1744374389),
(455, 'Go to products', 'admin', 1744374390),
(456, 'Go to publish product', 'admin', 1744374407),
(457, 'Success published product', 'admin', 1744375006),
(458, 'Go to products', 'admin', 1744375006),
(459, 'Go to products', 'admin', 1744375412),
(460, 'Go to products', 'admin', 1744375429),
(461, 'Go to publish product', 'admin', 1744375463),
(462, 'Success updated product', 'admin', 1744375507),
(463, 'Go to products', 'admin', 1744375507),
(464, 'Go to products', 'admin', 1744375669),
(465, 'Go to home page', 'admin', 1744375843),
(466, 'Go to shop authors', 'admin', 1744375855),
(467, 'Edit shop author to Pranjal Boruah', 'admin', 1744375910),
(468, 'Edit shop author to Pranjal Boruah', 'admin', 1744375938),
(469, 'Go to products', 'admin', 1744376060),
(470, 'Go to products', 'admin', 1744376072),
(471, 'Go to publish product', 'admin', 1744376161),
(472, 'Go to products', 'admin', 1744376171),
(473, 'Delete product id - 30', 'admin', 1744376190),
(474, 'Go to products', 'admin', 1744376191),
(475, 'Go to products', 'admin', 1744376207),
(476, 'User admin logged in', NULL, 1744376645),
(477, 'Go to home page', 'admin', 1744376646),
(478, 'Go to products', 'admin', 1744376657),
(479, 'Go to products', 'admin', 1744376663),
(480, 'Go to products', 'admin', 1744376669),
(481, 'Go to products', 'admin', 1744376677),
(482, 'Go to publish product', 'admin', 1744376686),
(483, 'User admin logged in', NULL, 1744396207),
(484, 'Go to home page', 'admin', 1744396208),
(485, 'Go to Blog Publish', 'admin', 1744396243),
(486, 'Go to Blog', 'admin', 1744402137),
(487, 'Go to shop tags', 'admin', 1744402192),
(488, 'Go to shop authors', 'admin', 1744402203),
(489, 'Cant login with - User: admin and Pass: admin', NULL, 1744450089),
(490, 'Cant login with - User: admin and Pass: admin', NULL, 1744450178),
(491, 'Cant login with - User: admin and Pass: admin', NULL, 1744450205),
(492, 'Cant login with - User: admin and Pass: admin', NULL, 1744450234),
(493, 'Cant login with - User: admin and Pass: admin', NULL, 1744450279),
(494, 'Cant login with - User: admin and Pass: admin', NULL, 1744450306),
(495, 'Cant login with - User: admin and Pass: admin', NULL, 1744450535),
(496, 'Cant login with - User: admin and Pass: admin', NULL, 1744450569),
(497, 'User admin logged in', NULL, 1744451539),
(498, 'Go to home page', 'admin', 1744451539),
(499, 'Go to products', 'admin', 1744451544),
(500, 'Go to products', 'admin', 1744451550),
(501, 'Go to products', 'admin', 1744451557),
(502, 'Go to publish product', 'admin', 1744451572),
(503, 'Go to Blog', 'admin', 1744451630),
(504, 'Go to Blog Publish', 'admin', 1744451635),
(505, 'Go to Blog', 'admin', 1744451712),
(506, 'User admin logged in', NULL, 1744609147),
(507, 'Go to home page', 'admin', 1744609147),
(508, 'Go to products', 'admin', 1744609215),
(509, 'Go to products', 'admin', 1744609222),
(510, 'Go to products', 'admin', 1744609228),
(511, 'Go to products', 'admin', 1744609241),
(512, 'Go to products', 'admin', 1744609245),
(513, 'Go to products', 'admin', 1744609303),
(514, 'Go to publish product', 'admin', 1744609344),
(515, 'Go to shop authors', 'admin', 1744609402),
(516, 'Go to shop authors', 'admin', 1744609449),
(517, 'Go to products', 'admin', 1744609455),
(518, 'Go to publish product', 'admin', 1744609539),
(519, 'Go to products', 'admin', 1744609574),
(520, 'Go to products', 'admin', 1744609585),
(521, 'Go to publish product', 'admin', 1744609592),
(522, 'Go to products', 'admin', 1744609598),
(523, 'Go to products', 'admin', 1744609608),
(524, 'Go to publish product', 'admin', 1744609612),
(525, 'Go to products', 'admin', 1744609636),
(526, 'Go to products', 'admin', 1744609639),
(527, 'Go to products', 'admin', 1744609644),
(528, 'Go to products', 'admin', 1744609689),
(529, 'Go to products', 'admin', 1744609694),
(530, 'User admin logged in', NULL, 1744609844),
(531, 'Go to home page', 'admin', 1744609844),
(532, 'Go to products', 'admin', 1744609848),
(533, 'Go to products', 'admin', 1744609852),
(534, 'Go to publish product', 'admin', 1744609856),
(535, 'Success updated product', 'admin', 1744610038),
(536, 'Go to products', 'admin', 1744610039),
(537, 'Go to products', 'admin', 1744610095),
(538, 'Go to products', 'admin', 1744610100),
(539, 'Go to publish product', 'admin', 1744610104),
(540, 'Success updated product', 'admin', 1744610247),
(541, 'Go to products', 'admin', 1744610247),
(542, 'User admin logged in', NULL, 1744610507),
(543, 'Go to home page', 'admin', 1744610507),
(544, 'Go to products', 'admin', 1744610510),
(545, 'Go to products', 'admin', 1744610515),
(546, 'Go to publish product', 'admin', 1744610518),
(547, 'Success updated product', 'admin', 1744610534),
(548, 'Go to products', 'admin', 1744610534),
(549, 'Go to products', 'admin', 1744610539),
(550, 'User admin logged in', NULL, 1744621506),
(551, 'Go to home page', 'admin', 1744621506),
(552, 'Go to Blog Publish', 'admin', 1744621511),
(553, 'Go to Blog', 'admin', 1744621637),
(554, 'Go to Blog Publish', 'admin', 1744621641),
(555, 'Go to Blog', 'admin', 1744621658),
(556, 'Go to Blog Publish', 'admin', 1744621726),
(557, 'Go to Blog', 'admin', 1744621762),
(558, 'Go to Blog Publish', 'admin', 1744621817),
(559, 'Go to Blog', 'admin', 1744621860),
(560, 'Go to Blog Publish', 'admin', 1744621969),
(561, 'Go to Blog', 'admin', 1744622087),
(562, 'Go to Blog Publish', 'admin', 1744622107),
(563, 'Go to Blog', 'admin', 1744622126),
(564, 'User admin logged in', NULL, 1744655324),
(565, 'Go to home page', 'admin', 1744655324),
(566, 'Go to products', 'admin', 1744655334),
(567, 'Go to products', 'admin', 1744655340),
(568, 'Go to products', 'admin', 1744655345),
(569, 'Go to products', 'admin', 1744655353),
(570, 'Go to products', 'admin', 1744655357),
(571, 'Go to publish product', 'admin', 1744655369),
(572, 'Success updated product', 'admin', 1744655383),
(573, 'Go to products', 'admin', 1744655383),
(574, 'Cant login with - User: admin and Pass: admin', NULL, 1744719803),
(575, 'Cant login with - User: admin and Pass: admin', NULL, 1744719823),
(576, 'Cant login with - User: admin and Pass: admin', NULL, 1744719853),
(577, 'Cant login with - User: admin and Pass: admin', NULL, 1744719959),
(578, 'Cant login with - User: admin and Pass: admin', NULL, 1744719992),
(579, 'User admin logged in', NULL, 1744800215),
(580, 'Go to home page', 'admin', 1744800215),
(581, 'User admin logged in', NULL, 1744824386),
(582, 'Go to home page', 'admin', 1744824386),
(583, 'Go to shop authors', 'admin', 1744824409),
(584, 'Go to publish product', 'admin', 1744824473),
(585, 'Success published product', 'admin', 1744824779),
(586, 'Go to products', 'admin', 1744824779),
(587, 'Go to shop authors', 'admin', 1744825342),
(588, 'Go to shop authors', 'admin', 1744825923),
(589, 'Go to publish product', 'admin', 1744825928),
(590, 'Success published product', 'admin', 1744826240),
(591, 'Go to products', 'admin', 1744826240),
(592, 'Go to home page', 'admin', 1744827041),
(593, 'Go to products', 'admin', 1744827043),
(594, 'Go to products', 'admin', 1744827047),
(595, 'Delete product id - 76', 'admin', 1744827075),
(596, 'Go to products', 'admin', 1744827075),
(597, 'User admin logged in', NULL, 1744891967),
(598, 'Go to home page', 'admin', 1744891968),
(599, 'Go to publish product', 'admin', 1744891978),
(600, 'Success published product', 'admin', 1744892120),
(601, 'Go to products', 'admin', 1744892120),
(602, 'User admin logged in', NULL, 1745077862),
(603, 'Go to home page', 'admin', 1745077862),
(604, 'Go to products', 'admin', 1745077865),
(605, 'Go to products', 'admin', 1745077871),
(606, 'Go to products', 'admin', 1745077876),
(607, 'Go to publish product', 'admin', 1745077880),
(608, 'Success updated product', 'admin', 1745077904),
(609, 'Go to products', 'admin', 1745077905),
(610, 'Go to products', 'admin', 1745077917),
(611, 'User admin logged in', NULL, 1745211307),
(612, 'Go to home page', 'admin', 1745211307),
(613, 'Go to products', 'admin', 1745211309),
(614, 'Go to products', 'admin', 1745211312),
(615, 'Go to publish product', 'admin', 1745211316),
(616, 'Success updated product', 'admin', 1745211332),
(617, 'Go to products', 'admin', 1745211332),
(618, 'Go to products', 'admin', 1745211540),
(619, 'Go to publish product', 'admin', 1745211546),
(620, 'Success updated product', 'admin', 1745211563),
(621, 'Go to products', 'admin', 1745211563),
(622, 'User admin logged in', NULL, 1745333018),
(623, 'Go to home page', 'admin', 1745333018),
(624, 'Go to products', 'admin', 1745333021),
(625, 'Go to products', 'admin', 1745333025),
(626, 'Go to products', 'admin', 1745333030),
(627, 'Go to publish product', 'admin', 1745333038),
(628, 'Go to shop authors', 'admin', 1745333100),
(629, 'Go to shop authors', 'admin', 1745333134),
(630, 'Go to products', 'admin', 1745333136),
(631, 'Go to products', 'admin', 1745333141),
(632, 'Go to publish product', 'admin', 1745333149),
(633, 'Success updated product', 'admin', 1745333168),
(634, 'Go to products', 'admin', 1745333168),
(635, 'User admin logged in', NULL, 1745334343),
(636, 'Go to home page', 'admin', 1745334343),
(637, 'Go to publish product', 'admin', 1745334345),
(638, 'Go to Blog Publish', 'admin', 1745335129),
(639, 'User superadmin logged in', NULL, 1745336083),
(640, 'Go to home page', 'superadmin', 1745336083),
(641, 'Go to Settings Page', 'superadmin', 1745336089),
(642, 'Change footer contacts', 'superadmin', 1745336102),
(643, 'Go to Settings Page', 'superadmin', 1745336102),
(644, 'Cant login with - User: admin and Pass: admin', NULL, 1745345863),
(645, 'User superadmin logged in', NULL, 1745345872),
(646, 'Go to home page', 'superadmin', 1745345872),
(647, 'Go to home page', 'superadmin', 1745345880),
(648, 'Go to home page', 'superadmin', 1745346228),
(649, 'Go to home page', 'superadmin', 1745346322),
(650, 'User admin logged in', NULL, 1745411345),
(651, 'Go to home page', 'admin', 1745411345),
(652, 'Go to shop authors', 'admin', 1745411347),
(653, 'Cant login with - User: nayanjyoti.bhattacharyya@example.com and Pass: nayanjyoti.bhattacharyya@example.com', NULL, 1745411408),
(654, 'User nayanjyoti.bhattacharyya@example.com logged in', NULL, 1745411423),
(655, 'Go to home page', 'nayanjyoti.bhattacharyya@example.com', 1745411423),
(656, 'User admin logged in', NULL, 1745691203),
(657, 'Go to home page', 'admin', 1745691203),
(658, 'Go to publish product', 'admin', 1745691213),
(659, 'Go to products', 'admin', 1745691217),
(660, 'Go to shop categories', 'admin', 1745691225),
(661, 'Go to shop categories', 'admin', 1745691256),
(662, 'Go to shop tags', 'admin', 1745691257),
(663, 'Go to shop authors', 'admin', 1745691258),
(664, 'Go to Blog Publish', 'admin', 1745691261),
(665, 'Go to Blog', 'admin', 1745691271),
(666, 'Go to publish product', 'admin', 1745691516),
(667, 'Go to home page', 'admin', 1745691517);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currencyKey` varchar(5) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `abbr`, `name`, `currency`, `currencyKey`, `flag`) VALUES
(1, 'as', 'assamese', '₹', 'Rupee', 'bg.jpg'),
(2, 'en', 'english', '₹', 'Rupee', 'en.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_posts`
--

CREATE TABLE `newsletter_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `written_by_en` varchar(255) NOT NULL,
  `written_by_as` varchar(255) NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `author_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `newsletter_posts`
--

INSERT INTO `newsletter_posts` (`id`, `image`, `url`, `written_by_en`, `written_by_as`, `content_type`, `file_path`, `time`, `author_id`, `created_at`, `updated_at`) VALUES
(4, 'newsletter-1.jpg', 'Inauguration_Letter_4', '', '', 'pdf', 'storage/docs/2025/03/16/94b119e5571d1fbed9c63cfbab177a62.pdf', 1741011228, '0', '2025-03-14 15:43:43', '2025-03-23 13:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_translations`
--

CREATE TABLE `newsletter_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `written_by` varchar(255) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `newsletter_translations`
--

INSERT INTO `newsletter_translations` (`id`, `title`, `description`, `written_by`, `abbr`, `for_id`, `created_at`, `updated_at`) VALUES
(7, 'উদ্বোধনী পত্ৰ', '<p>উদ্বোধনী পত্ৰ</p>\r\n', 'জী কে এডমিন', 'as', 4, '2025-03-14 15:44:58', '2025-04-06 17:15:26'),
(8, 'Inauguration Letter', '<p>Inauguration Letter</p>\r\n', 'GK Admin', 'en', 4, '2025-03-14 15:44:58', '2025-04-06 17:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'point to public_users ID',
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'viewed status is change when change processed status',
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `products`, `date`, `referrer`, `clean_referrer`, `payment_type`, `paypal_status`, `processed`, `viewed`, `confirmed`, `discount_code`) VALUES
(3, 1234, 5, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:24:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"29\";s:6:\"folder\";s:10:\"1736704874\";s:5:\"image\";s:12:\"Aklanta3.png\";s:9:\"file_type\";s:3:\"pdf\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/02/b8a0053d9ebbd98f2d1e0f1229da8334.pdf\";s:4:\"time\";s:10:\"1736704944\";s:11:\"time_update\";s:10:\"1740940096\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"3\";s:14:\"book_author_id\";s:2:\"22\";s:7:\"tag_ids\";s:0:\"\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:38:\"AKLANTA_TURANGA_Dastabezar_Epristha_29\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"1\";s:9:\"author_id\";s:0:\"\";s:5:\"price\";s:3:\"300\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1741618368, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(4, 1235, 5, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:24:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"29\";s:6:\"folder\";s:10:\"1736704874\";s:5:\"image\";s:12:\"Aklanta3.png\";s:9:\"file_type\";s:3:\"pdf\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/02/b8a0053d9ebbd98f2d1e0f1229da8334.pdf\";s:4:\"time\";s:10:\"1736704944\";s:11:\"time_update\";s:10:\"1740940096\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"3\";s:14:\"book_author_id\";s:2:\"22\";s:7:\"tag_ids\";s:0:\"\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:38:\"AKLANTA_TURANGA_Dastabezar_Epristha_29\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"1\";s:9:\"author_id\";s:0:\"\";s:5:\"price\";s:3:\"300\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1741643450, 'https://www.google.com/', 'google.com', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(5, 1236, 1, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:24:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"29\";s:6:\"folder\";s:10:\"1736704874\";s:5:\"image\";s:12:\"Aklanta3.png\";s:9:\"file_type\";s:3:\"pdf\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/02/b8a0053d9ebbd98f2d1e0f1229da8334.pdf\";s:4:\"time\";s:10:\"1736704944\";s:11:\"time_update\";s:10:\"1740940096\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"3\";s:14:\"book_author_id\";s:2:\"22\";s:7:\"tag_ids\";s:0:\"\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:38:\"AKLANTA_TURANGA_Dastabezar_Epristha_29\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"1\";s:9:\"author_id\";s:0:\"\";s:5:\"price\";s:3:\"300\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1741670558, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(6, 1237, 1, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:24:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"43\";s:6:\"folder\";s:10:\"1741248519\";s:5:\"image\";s:32:\"University_of_Ancient_India.jpeg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/06/a3e41c960db1896fb423dc18b24333da.mp4\";s:4:\"time\";s:10:\"1741248656\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"11\";s:14:\"book_author_id\";s:2:\"27\";s:7:\"tag_ids\";s:0:\"\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:35:\"University_of_Ancient_India_Part_43\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:0:\"\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1741670612, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(7, 1238, 8, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"46\";s:6:\"folder\";s:10:\"1741681518\";s:5:\"image\";s:13:\"namghosha.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/11/606e4775bf4f016ce54c94ae19500f0e.wav\";s:4:\"time\";s:10:\"1741681774\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"13\";s:14:\"book_author_id\";s:2:\"28\";s:7:\"tag_ids\";s:1:\"6\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:17:\"Namghosha_Part_46\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-14 15:45:42\";s:10:\"updated_at\";s:19:\"2025-03-14 16:13:10\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1742302678, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(8, 1239, 5, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"29\";s:6:\"folder\";s:10:\"1736704874\";s:5:\"image\";s:12:\"Aklanta3.png\";s:9:\"file_type\";s:3:\"pdf\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/02/b8a0053d9ebbd98f2d1e0f1229da8334.pdf\";s:4:\"time\";s:10:\"1736704944\";s:11:\"time_update\";s:10:\"1740940096\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"3\";s:14:\"book_author_id\";s:2:\"22\";s:7:\"tag_ids\";s:0:\"\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:38:\"AKLANTA_TURANGA_Dastabezar_Epristha_29\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"1\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-14 15:45:42\";s:10:\"updated_at\";s:19:\"2025-03-14 16:12:55\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1743000647, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(9, 1240, 5, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"51\";s:6:\"folder\";s:10:\"1742403067\";s:5:\"image\";s:13:\"akash_sua.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/19/4f59f239a86df4252b3c2497dfa35af0.wav\";s:4:\"time\";s:10:\"1742403659\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"3\";s:14:\"book_author_id\";s:2:\"33\";s:7:\"tag_ids\";s:1:\"8\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:12:\"Akash_Sua_51\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-19 17:00:59\";s:10:\"updated_at\";s:19:\"2025-03-19 17:00:59\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1743003082, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(10, 1241, 18, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"46\";s:6:\"folder\";s:10:\"1741681518\";s:5:\"image\";s:13:\"namghosha.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/11/606e4775bf4f016ce54c94ae19500f0e.wav\";s:4:\"time\";s:10:\"1741681774\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"13\";s:14:\"book_author_id\";s:2:\"28\";s:7:\"tag_ids\";s:1:\"6\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:17:\"Namghosha_Part_46\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-14 15:45:42\";s:10:\"updated_at\";s:19:\"2025-03-14 16:13:10\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1743183747, 'https://www.google.com/', 'google.com', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(11, 1242, 22, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"42\";s:6:\"folder\";s:10:\"1741009932\";s:5:\"image\";s:13:\"nisongota.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/03/a6895b89858ca76102d9517c668a1072.wav\";s:4:\"time\";s:10:\"1741010515\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"3\";s:14:\"book_author_id\";s:2:\"25\";s:7:\"tag_ids\";s:0:\"\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:12:\"Nisongota_42\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-14 15:45:42\";s:10:\"updated_at\";s:19:\"2025-03-14 16:13:02\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1743493712, 'https://lm.facebook.com/', 'facebook.com', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(12, 1243, 23, 'a:2:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"51\";s:6:\"folder\";s:10:\"1742403067\";s:5:\"image\";s:14:\"akash_sua1.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/19/4f59f239a86df4252b3c2497dfa35af0.wav\";s:4:\"time\";s:10:\"1742403659\";s:11:\"time_update\";s:10:\"1743099943\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"3\";s:14:\"book_author_id\";s:2:\"33\";s:7:\"tag_ids\";s:1:\"8\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:12:\"Akash_Sua_51\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-19 17:00:59\";s:10:\"updated_at\";s:19:\"2025-03-27 18:25:43\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}i:1;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"54\";s:6:\"folder\";s:10:\"1743008925\";s:5:\"image\";s:18:\"Bhinna_Samatal.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/26/4c460fc1c8983de3b3d8d99a3c94f4ff.wav\";s:4:\"time\";s:10:\"1743009363\";s:11:\"time_update\";s:10:\"1743010545\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"20\";s:14:\"book_author_id\";s:2:\"36\";s:7:\"tag_ids\";s:1:\"8\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:17:\"Bhinna_Somatal_54\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-26 17:16:03\";s:10:\"updated_at\";s:19:\"2025-03-26 17:35:45\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1743587655, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(13, 1244, 23, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"58\";s:6:\"folder\";s:10:\"1743100226\";s:5:\"image\";s:15:\"pomi_jai_ji.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/27/6b006cdd0372b87fc8834ccb9beb83bd.wav\";s:4:\"time\";s:10:\"1743100442\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"20\";s:14:\"book_author_id\";s:2:\"37\";s:7:\"tag_ids\";s:1:\"8\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:14:\"Pomi_Jai_Ji_58\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-27 18:34:02\";s:10:\"updated_at\";s:19:\"2025-03-27 18:34:02\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1743587717, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(14, 1245, 25, 'a:2:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"58\";s:6:\"folder\";s:10:\"1743100226\";s:5:\"image\";s:15:\"pomi_jai_ji.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/27/6b006cdd0372b87fc8834ccb9beb83bd.wav\";s:4:\"time\";s:10:\"1743100442\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"20\";s:14:\"book_author_id\";s:2:\"37\";s:7:\"tag_ids\";s:1:\"8\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:14:\"Pomi_Jai_Ji_58\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-27 18:34:02\";s:10:\"updated_at\";s:19:\"2025-03-27 18:34:02\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}i:1;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"61\";s:6:\"folder\";s:10:\"1743184616\";s:5:\"image\";s:15:\"Dwikhandito.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/28/a336308bc5aac6d8f293732494f53bf1.wav\";s:4:\"time\";s:10:\"1743184709\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"20\";s:14:\"book_author_id\";s:2:\"41\";s:7:\"tag_ids\";s:1:\"8\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:14:\"Dwikhandito_61\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-28 17:58:29\";s:10:\"updated_at\";s:19:\"2025-03-28 17:58:29\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1743688922, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(15, 1246, 25, 'a:3:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"57\";s:6:\"folder\";s:10:\"1743014430\";s:5:\"image\";s:11:\"Binimoy.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/26/374e5fea8e8843a78e3248414e809574.wav\";s:4:\"time\";s:10:\"1743014627\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"20\";s:14:\"book_author_id\";s:2:\"38\";s:7:\"tag_ids\";s:1:\"8\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:10:\"Binimoy_57\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-26 18:43:47\";s:10:\"updated_at\";s:19:\"2025-03-26 18:43:47\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}i:1;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"58\";s:6:\"folder\";s:10:\"1743100226\";s:5:\"image\";s:15:\"pomi_jai_ji.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/27/6b006cdd0372b87fc8834ccb9beb83bd.wav\";s:4:\"time\";s:10:\"1743100442\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"20\";s:14:\"book_author_id\";s:2:\"37\";s:7:\"tag_ids\";s:1:\"8\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:14:\"Pomi_Jai_Ji_58\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-27 18:34:02\";s:10:\"updated_at\";s:19:\"2025-03-27 18:34:02\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}i:2;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"60\";s:6:\"folder\";s:10:\"1743102631\";s:5:\"image\";s:17:\"Dinantor_khuj.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/27/9ffce009e0b159f00f86f08bef3774d3.wav\";s:4:\"time\";s:10:\"1743102779\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"20\";s:14:\"book_author_id\";s:2:\"40\";s:7:\"tag_ids\";s:1:\"8\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:16:\"Dinantor_Khoj_60\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-27 19:12:59\";s:10:\"updated_at\";s:19:\"2025-03-27 19:12:59\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1743689001, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(16, 1247, 25, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"46\";s:6:\"folder\";s:10:\"1741681518\";s:5:\"image\";s:13:\"namghosha.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/11/606e4775bf4f016ce54c94ae19500f0e.wav\";s:4:\"time\";s:10:\"1741681774\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"13\";s:14:\"book_author_id\";s:2:\"28\";s:7:\"tag_ids\";s:1:\"6\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:17:\"Namghosha_Part_46\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-14 15:45:42\";s:10:\"updated_at\";s:19:\"2025-03-14 16:13:10\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1743689096, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(17, 1248, 27, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"43\";s:6:\"folder\";s:10:\"1741248519\";s:5:\"image\";s:41:\"prachin_bharatar_biswabidyalaya_audio.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/06/a3e41c960db1896fb423dc18b24333da.mp4\";s:4:\"time\";s:10:\"1741248656\";s:11:\"time_update\";s:10:\"1743011068\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"11\";s:14:\"book_author_id\";s:2:\"27\";s:7:\"tag_ids\";s:1:\"8\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:35:\"University_of_Ancient_India_Part_43\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-14 15:45:42\";s:10:\"updated_at\";s:19:\"2025-03-26 17:44:28\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1743759135, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(18, 1249, 27, 'a:2:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"46\";s:6:\"folder\";s:10:\"1741681518\";s:5:\"image\";s:13:\"namghosha.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/11/606e4775bf4f016ce54c94ae19500f0e.wav\";s:4:\"time\";s:10:\"1741681774\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"13\";s:14:\"book_author_id\";s:2:\"28\";s:7:\"tag_ids\";s:1:\"6\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:17:\"Namghosha_Part_46\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-14 15:45:42\";s:10:\"updated_at\";s:19:\"2025-03-14 16:13:10\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}i:1;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"61\";s:6:\"folder\";s:10:\"1743184616\";s:5:\"image\";s:15:\"Dwikhandito.jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/03/28/a336308bc5aac6d8f293732494f53bf1.wav\";s:4:\"time\";s:10:\"1743184709\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"20\";s:14:\"book_author_id\";s:2:\"41\";s:7:\"tag_ids\";s:1:\"8\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:14:\"Dwikhandito_61\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-03-28 17:58:29\";s:10:\"updated_at\";s:19:\"2025-03-28 17:58:29\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1743759228, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(19, 1250, 36, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:26:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"73\";s:6:\"folder\";s:10:\"1744370970\";s:5:\"image\";s:51:\"Subhalakshmi_Boragohain-Pranjit_Das_(Thumbnail).jpg\";s:9:\"file_type\";s:5:\"audio\";s:9:\"file_path\";s:60:\"storage/docs/2025/04/11/f4f627f931e5934738362c5bfa65e1c1.mp3\";s:4:\"time\";s:10:\"1744374389\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"11\";s:14:\"book_author_id\";s:0:\"\";s:7:\"tag_ids\";s:1:\"7\";s:8:\"quantity\";s:1:\"1\";s:7:\"is_free\";s:2:\"no\";s:16:\"free_description\";s:0:\"\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:9:\"Moidam_73\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:9:\"author_id\";s:1:\"1\";s:10:\"created_at\";s:19:\"2025-04-11 12:26:29\";s:10:\"updated_at\";s:19:\"2025-04-11 12:26:29\";s:5:\"price\";s:1:\"0\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1744968355, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_clients`
--

CREATE TABLE `orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(500) NOT NULL,
  `post_code` varchar(500) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `orders_clients`
--

INSERT INTO `orders_clients` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `post_code`, `notes`, `for_id`) VALUES
(3, 'fe598eecb2c8dd4ebea8c583ae7c4b937324ee15f1be9f56ac1c931102270090fd00ec7efca6e426183ea92036fc8aebf864e3cc89d28644ce28dae80b9f4114Wu4MJrO4NlrvhKOoq7w6SCeAJgSDA/eeoX+XtawKxA8=', 'ef673c7822117a484cf85868c22ea265567eddfe50a9ca897df61a535bd5ca81ae41c44c13f6910f7624e34dc8783e31a5ef3574d263b8acc0ffb9e958f7f14fL43MrZzTrtpjDDPId2pb8lJ8vuw6v79OIkExru37HWs=', 'd56e2b67a8a7223fdcdaa2741bf93c877faea57681bffcc6b20e6203230a2a60f0fff7707c6ba4aa28d2412c623409d0dc8428b21cc0ee3aa75634fb24f31365D7MclL8rIWWpiivbBh4RCHebrUwHe67XEhg5UrDtk1e6ABiHh0+Qp8vf41/VPH+H', '5b7e6858afd4e751584cc5769afd4ceb182561f3604cc1e2bf3606a5306c8e9474f546393c3372a50b0a2b6096bb1007888f59314c46f67db2000a4a7ee22281RUD0Z+qpIDgvdXqUM1ttTB60wW6cCRCYyoAg7B+BOrE=', '3732855f3461749ce1eb344b0f9021fcc0ce9a6cafbf37ff1bb6919ae3338a9c2f8e68d1f111f2164b887bb453518348cb88e72ffcbd2ad1cdf5b3b5e298e38dnDG1GXpHqltEMZsz01PWknyVkkszysYxVQ2WyL7jr3Y=', 'b127b123b72957a77d9c827f31a5da70449f7f4177ebcc853f187b31a2e2529faaf691d5007655c29df00ceb83025a6112c06d972884bbd176b18aef75b92daaI/5Lgbe3yv3jTGXhiymRdAYM5bMioGynrHhgobKD9Ks=', '8fe67230d4a75d6709f470daae0f7fd3196bc4d64d716a31c47df98a01572d67f4e1f37cde0329e5e2f9aafbb899654fd0493d1e982e12ff626fa542d2fddf01jMXlhtFIbfozgsuLh6TICA5YNJxjxgXD7HQtRX9AQxE=', '4db1522ccc755ab0985de17b6b583c6e45060a0f41daa826fee766816396fa0d750581e9c6b8b9b4ebd55f9b31d58889b1bd69f7936da102a176de65a3e24741INJW3T3b6fux9q+SclDGzrW3GbESsJ7H51B1iQYGYsU=', 3),
(4, 'ca9b55e9af176b33981cee0174127f4e8373db9c9c2f191ee5d7330cfd9bfdbd80cc4b28f5b5d96cf1e38dd23edf3343e833a2fd05c5180d2d3dd4b9eca347950f49NPUMWGru/bQEG3C+TU8N4oCG3IOkWDh8KWg81GM=', '077ffbf6a1eda5cc457f576c6d81a446a296b00246c1d4a0cec146f1a505a40edfd0dd2df1ef1550cefa315016a59ffbf87c9f721a86c7f6d7bb194916f14885tvU6c+dmiPzwXJHU/F0CPaDWw/XkxDBbwkvA4nTnQ8A=', 'c51302e0b70da7855f0985f30022297f3ba3b91ffddd5fb90a5f076aaa529a2ccee3a6c31f16c5ce07591481153053e96f05495caa0d59833ca06ef8d3b4778e3gkKb5D0WJ1+cahQUC7EyFaDJBkB13PkRNAb55QUZq8muOKEHuSAQ0TxiYI1bMEC', '04fbc4612fc4fa1f422c0c3d057e985e42818db73146ad1bf85cab442bf4fc888f0c462e112d748874564fcbd91cde654a815051b71c4974a39d6ac3376d984cHjXvylqgF0oOeD9I154f5YCk/0YLhWDq8HZJYq9eErs=', '23d3df4b4d52d103cdb577b2a18e7108a96bec0809e41b13a2bbfeb49fdf8acf0018617b17c155988a745a23f697e532e4417125b7d2c8dc723e66a5918db3d5UUAP9vZL5j36OhH+8mYoFzLR41CKjUOiLdeRt/ffo4M=', '0a3d8aa62b923e5a22d04c751e561dde18e4e7858c24405cac4cebf2dac29d499fe8160325320d8f1417dd8962d3e3f4bf813bed463dd735cf4f1d35a70cc793Gy0wFo1GVH6GVm8rQL87Taiv0G/3KAI9xFLWmGs4kx8=', 'f43f82ae9cb8a95d89d0beef800946b566a1de720ee00be435030a086de4d857e44f73c2b64c83cd436ee044f7742ec13e24dc1341fc3d8ed755b1f27ace9d7f3xwb0sE8WAOovMEwW4A7mjnlb5Img+A+J2tqq0QR0PA=', 'ed7cfca1f71825b61811a193238148398ec35cc0771d005513a9dcaaefc2dc962e6ee0e21dea5dc0310dfdec64d9804e8f706980663080319cec78dd057af065ddjF7qCNOAMBnGzSIVJw0Sy9H9MKWobfJElwknlzybo=', 4),
(5, '96d25a46378c979817ed03bc82710d38a4136b11d8689b082e2534a6ed79482ba2e8f88fd8622967edf607790b90df59833594ffa27e6a5b0d7c5cdd7a29acf0zhbr0SkqtFG7jOxqgPn+emmLQ71ZIkQwihrPXbEgJgI=', '292f2760c95543df96b4532e4d6916a47f9aee36774d823b16301a65422fb00c858cccdd7f1dd78de31d387158e46a8efdd23c6b58651eef349bfb3b1463fdc9OAYQ3RRcKQplMA1Sw4ogYiGBsH0XLh9f5I4V/ec5ZlM=', '1a40e89f095ab216f26ba2aae88d679db13bba5e57176cf302680a8e9d1aa9f86f3e624782082f76ba1a7b57376c3bebe327c01b7e388bf950f410e484f421b1G+gWP6f58z0S3hg1D8Wvcd8IwLcIeOCLeGQf0S7J7LrV58y4zYazf+NVgCNldH6M', 'eb069d77d60785f5839467cbde67ab8ec868c594872a0a45928627603ef0055b2a5e363e9de9cc89ed69fa4fc899c19109fa9a75ceb0426592e67f16f4daafb5wcMCqSo3B0rUOu4SL9CvR/PsJUtyBUTn+C+xMttJEAI=', 'c9db9852be9178f0925ac2d04c8e2d1869fa0eba50fcb8af32f0b07caee791af55e0de9e392cf16506d17b638303887cc0f87620f2b7f24987c6e36cae226b3aarb4OkIsNPv9HCLhpCka2Gx5FeU6jAQpz7kncQAidxDdNdlI/oa+dOGAQ1Qw8NWYqUjmtCH6F15FhOcv07KJdOEJp2SaIBYkywvTYu2hLZ4=', '5c836ef6f10c88916a751f363453df7c116f002138f5b86fbd2d4693e7c0161924b65e1d463f8ba20e3b4ed566f1a36c43256cda6e13919348777cb8d10012c6ed1PzX+oivAKag3OonFq64rAvjn8APqiztDDuccVAl4=', 'e5c02174a43cb5ff68cf740a3abe97867574428e4518f59c7ec8dfa58c291b963d91668cfd74172904d17fd4596715b1084d0aca7d0b45c902fa939f6c8d840ft7vugCTx+9nSrjoAGvXJq56f9Aqoz8EH/M2ZSh5jupQ=', 'b646713057bc722629ec5f6c66e47aececcf8b84ec55cc20184a48f46edc4bb88b035d1bbf37a1345472c650899ca44e779fe542957676e90881c1314d69c42dtpK4ZvY02i/JpxD/CzNy8Vv2CIJtZlb9+JrAPXdgAmo=', 5),
(6, 'ac2f5c827476c9b402d1dc1e610b7a635f578ef76a41e12af0962ff42826290872759a060fd5a0bc71e30e6b6efeec2a31aa9c141183df6ed67e2c9d766fdaecB56oR3Rvvv1Dr3+MOnegJ7tDjrD3Abn0cYB49Hy9o/I=', '13d25a563a73fc3cb00c813afdea19348fc7913bfca637854419d2e6beb1a49928d1aee3805a3ca831284ba5b6c97d4a30fb0efc8cbc27d9c3b01cb74089e8cf7mUqRqbSCEYQsl8YULZZXfGD2atuR6r1jpX+xxhtuDQ=', '09aad50eb58c175eacde64d0194bb5d73b7dbd432e1d8e22cb2f81535aff65911a66b460fd959235b999155b1a8e5df1a57e79858a34736bc9488efe53464031YpI65KUgMhRxgMSES7ISI4+fCHuBVJv41V0TrUFkZ9TiCyN9GCt0KhdP7MaGAq8x', '82b2a458e1a974054890473473034972f4d07c27e90d771240673c1bedbce6324d79b07f2eda4fc4530ce8e91e507355d78da3c5333052839fff1dbbe724eecclT64kdHJ6lQ+YZQT3Bx/K6wvppQsRzLOg87X65NWrNI=', '92da0f012a962f6ab71979710611e37ace34e1c394998c8766bae2c096cc42026801bb2a4b8efccf1458d6df8c22e39ea86b807f065bdcd13c0641fe2681b182b1bUdqDPFgNqlCxtCcpWIUhixg2eAJ9etQhTOku/nh95dBfAIfZOM9zNHsnuW3yWZvPUDIgGFcmvefP/FHVJomOTDW1JEC70XsGeBSLZiWs=', '6330f5c2a62cd54bed20a11c80c7862f3d4cdc0265a8897d0ad76696f606be0ce41637e53755115883ec92cf58bba54b9d3d034b9c2731cbce30dad1f6ef932fvl7v0LNAshho+WG2hz4V/3w19QXIKI4o/FMqjyD1GH4=', '99a8235943c5bc764ac6f397200a14ddc0b84f006b7108f13232c6a8860151af017b35d7e8b1858096ac6fc2b6f8cdbf5240a137d198acc0749d8ce94a8bf08cglmtMl8283kQmHGwzO6EbBGQYiEVyTHzC3ouQpEpcdw=', '0f6bbf36dbf9a8fc4277ba12b6aed9fa28d3359fa011bf3d55d7aef4ee8dbe1713c9b85e8618932f6b7800a685d89eae40120efa599c81a700f5e9ff64561f21CQOXt10ZCeO8oGgO27NdTTlyJ5EXll0mIWuLLUKs3g8=', 6),
(7, 'c1bd2296c55592b923fb2fd5bbcfa84ab66ef3cace3ba5a0b61a20d78ad7cea6d2b4d159b6bda4a6a48deace7e9430171e70f9ecfd85b592c3d95346f15474d3XGvtGTsXaULB6bY0qZBLFBxGnFq3ZbxoMp5gRc3SjPE=', '17ae6981d3eee7621ec68309248e9ae6919123ea8b56681c697734d3a351711089b03deae2a65c9c95a2c485ebb397c776294027e6c154cc2bbf44bd64f2a9b9Oo18rS4FvDCUEfG5bEG2eFZMRi4ifWiB9FDPGnN3nCs=', '95759dab1a5365601b6e45311222f259c37f2292878b5d39af38ab035c5a8f9fdc5910c8e4ed86c5505534da74330a91a023097eb813f93f98415b8dd50881c4haMGeWWlchshplFAk7OEQ8o37ejO5SMdNSyFo96Tp2jQoNLHiUZZHKeLLqdqXFhF', 'c96e3b5375bfb36edb8a755abb79e5b985b4548089c729c5b0643314e34788664b7089734de2c55f75a9019a79c98664d367be48c02e8c1e85fea9511e457265RGozkGxwFezC0VVC4ejBmfxA83vK9z595f8+bqKTxCY=', '87aed165e9d1d3284cad642fab386cb32598f85ff92be8cd1cb7599cb4f4c1f2f94dd8c5e4f53f64e1412fba8edd732105e12bf20d0a910d02dc40b98b67a5aesK0GUEvS4P3DW2C4/lLE3sQyPOvrcufFlWzsMx8HvhcyOu0A+GxOrHq/L6jBTzck', '6ce0434bcf45f90f33d8571f1c392ed281ded6df1bd5d6a41349424413c204e2406d3b4eccd9603a46b11b1312febd89c07d210509cb676816e5e0fd88f07303etCehNZBoE1oXjSZgWzJqsDYUlk/aZzLZKpuXImQhHs=', 'ae7230cdf07952bdb5d3c77554cbae75910cfd87f24995be61a583f043ed1f41d61cb07e452b698387872e7a914a042b33f4271a0a01589964c63645c83f209ciupic2j2XqhJa/FK02kVqX6h+ucvMlWtLUSXyeG7JwE=', '06e6de18a4239576af1edec4d4e75b95e6bb1f7301aed630b9079ce64760832b308ef0156d5bf48d136afd27ee92d5f68337142e29452bc1902007e0a18c5a573WnUj9LXNj1FshW4+cnvczH0d6S7Gj7sKBIJwXvpEYA=', 7),
(8, '796a85b6dfea790ac93acd7f921beb890c6b36e1ba88b252cb8eeee968b9688c91602e25874df4d3d33424ec3b7a30400683ec5ff76526a80131f6d8f8e9fa4eeWBNkXdD5Vo91FnJZUbuO6r3vkcZBPCk28/rkSn8fD0=', '185785c277d2f71124a25c90e22536c06ba441f6d783554dadc4da07aa3add1f8d25ff9706013af1a271257fd9cc5d0f509b6fabc5f6f0c44bb8b0bfea5e08c6+JpxQ27xkqhvVJDY0BGyXYoZzQ4etdQFL94Raqo4E6Y=', 'b2152491c6957eaef94b0a62ecfcea7389ae18f2775d313fe332e2891cfa5e2fe59ae01e617388a6f1b1a1bf6fca28e1eb1c361620b97c4cc0605860328234e1seu6uLQ2dopxlkrO0KrdoTHz53FjWHDdUg/mtu/2Sq0PfrFpJJGYIVf2/kTmpo9c', '650bd8620c8e93e0224a5fd5a8656e21845a2279cdb9ca3f3f5016a95129ce53e81271efc850bce3b8bfb57cd57dac4d627a67dfbda808e0198b627ec2b1f365KubwgO1dMKtOMPAGSL9LhaOjYSoKzr3brhjnuckgTt8=', '585f99632f19debcb727a444c0ccc5865ed1513ee9784e457937c2556b0a7726d73e6e788589d52e345b9a81751a238ac79f493f8c6405d3781227683413be1dKeEsw0VrBLqDGR5zPKFFmW3C2QCMV5XSYRdZb++QGp0=', 'bd6a03c3032ad324597e2f5c168160a02acc125222ed0f702d84f9433f79c4bcd2fa9efda7bf78ffc8fefb01b9c71448fb8ff95ee38ad166fb839cad464ab451EZ33jG9uRpy25DWUyRf42qwBg11Q8zi9tyZcvyk8R4g=', 'd2fc890ebbc7f7ecefd7332efc2c2f583843911c0dce45bc58cbbdb0d6f507c2d080ad728be339ff2e011e05155026146d851791d5312a36f2ebf6158db50825PHur+e4BqS1HMc9WMvhAgOMfYGhAKBVIwJZVfSCq/48=', '69a39ddeb379939c036a173dda3b4f2c2473c7d2b060830b284d1765901ed3173309bb065b733681757c3cccbafc8fe13799c180a0a8daaaf1dceb1642832c66ZsR+mvKg3XEARmVIgMKynmtxSWm+KJ70zlDIezeSf7g=', 8),
(9, '8c8c86076a65c8a34eb7accc9307ac4bfc1bc0425e58290f9c9af1bcdca71dc08e92630dba455393e6b9d87735407062fe6fb5c666f85f88370e935a256dc534+M19RmnBAhHiFxhPZve39fwcaSkv+xz6hqXLFaH+wR4=', '2958b128cb758f2336b5abf530810162d4bd399f6ed99ae2460a72c7f20356fd75c6ea7fee08a68587e591d9e3cfeb6e39887a185f4325cc34302900417cc229+HFI4FHotaAC+hvZjlbyGVEv1xgAKx5zFO0rCkA6pIo=', '6afca72cb829143785674d5a49f3f8f11e3ee5bcfb669c21f1c4a33c031c66da8dea1f2258ddd15858f71e521ae27b3bcfc230ab390c9d072d4fdd95cf7c0d5dok2z5S92sfRbaAmqGZUhsWAldWLsiKsiP0AMlGJq2GNj1YF6469G/5Icbmkn/Vij', '9e6b0a677a5fe01cd1d0105eb779539384cec220b4a1a4089f6abbc2a8c74c25d1bfc673160269c7a4254571955a6b86dec32c5efc3324797ec4544d8ce3c583KaNagzRBsQbNBPZy8ARFeg3ol1JZ0ifvwul7Jvm3qoc=', 'ad9613337b9824d6fc9c88081d49f92768d0219d1f7186b4664717f7df9cd968179d8ca97f01ed7c39e7549d77cf164ec031acd93067c1f71e8239d75367e124c+jlsbQUPhlArTS8UcGsG6KiafYXS1BPHsKZmEBb2p4=', '1877c0cd6c19d4a83272df139279fc0dea0d1e1b0989b096f446ae02e719228be751d4986b30afc05ea7fcc326131e9bb7a2d5ab1c8c60309c41474ad4b0d417UvA05y0mnh1Wvkg9XF6B/PC5/CBSdVEJZ8r+wkdElVU=', '632967b862cda79f11ae4c6fb7caea6821f5738cd336e54edb45bb2197dbf3b5d5fd2bc82b6c4c107f957511e4119400256a42f9fa3be316479fc0dbbe37ef61t+caqxfvJoiIcCbtg7Hno6HBqcq83eWoBQaLP//Aqkg=', '7742083043cf1845b48f10f4f98b15c556c854ca3f76b5501aaa5efae4d529b18b49ead11adaa494da0a361ac695aa383627736ef70c52af60ae1194a488d9f57zjjQcLQdakQWlXv/q6iLzQC0mCdbkd1pDpMaHRxI/M=', 9),
(10, '0cd05a3b886d93aeb5388b68d5d58ab94739e4456cc96eec503801d7e95fd6f1e1e57a9e39de56e9cdc012e9364d0f1a3b800bb043ba02f9d6593dfe194c0eb0tk4/4cX1QMr53u0hcx0ClGaW+YPezD9UhCD7ot6ijeI=', '4ecf92bf013a36455e2c992bf6a2442f043ea6e4d0c9340809f69c656816572512a2948111d4754593f29557a06911ae7166d45fdc6ebd84197772e010d9a2bdxdzWytJFk7Z6RDXUVdrvArFMkjFUYm4HO2YH14C63gU=', '8d0c1569a852df4fedd8a04bdde38aa3520d14c98ef7a93039047807a0a9399ff4ca687653c9e8cd82a2f34cdd3f7561f98ad7a67163e287ddb584271e0c0072WsHywXCbxFI6Z4Ntxfcw0mkHUnSyY2pJls3uNSkJlTCLS8/pPGkQrN1FzV7i/7eG', 'be6ba215a8e9e5fb6e5db56f442968f24e035f1f19132ab8231143ce2bf8a96c6e9bf8cef02f3e87757e4a29f91756cd02ec126a9ba05c611df6dccd4f427bf1xgai/sRv2/VJFXyDRaYI15Fjwc978lbtjC2OqQ7jqA4=', 'ea40d32b81fd03ca1b6dd19be2a3df2d8e82a62e085fa118f4b6eceac0cc8d43d2160566aa3f16f534f3142647d8e32d459b79d06812c2902bf7e100057d00fcFt+j/qx+KRJUp4bSzz3hpiR+1pJWBrPsjfruh/pe/KsTr3aQ3B/9V1tQn9STalv8', '6bd45e83d36c0b2ad1d10a6775feceaac5ec40d088d282491711e1ce5133e4b53ae3bdb9e203c246b7b1958666d3d0ffe1443c63327611a5a242efa9e680de05OFoWQadLAsWSQM/VIygMMP/HcHhWZ/XY5Tqj2IDQfc4=', '75a2242842d4b3e381996f2532215e62c803078fdd00e09fc0b1799111a5004acefcc058b3e2d14aa9b8991a160a99f1bcaf8a60750363233c4e2bf5c57467e8sHz6vxDSNS+6FpeM8ryjrwsT3VkWliE8C6lefxdLv4U=', '2d28d389646fcc9325dfd4bb86253f5787ca5d3711693d944c10d2a59ac87431b2f4a51832e86c444c9918cb83f2db3474412a01712c775bc86171fdd9c90a7bxcuLGSfpdxmKqwzPDorpYl+XFZIbnOlFAjo9VR5vBjg=', 10),
(11, 'b4f5cfd19d141c82982544c9ab90fafb6663574127d55d03a1d8e5e74b126299a62b593bdabf12364e4bdf85d15fa1216522631276c3e33b5fdc58991fff9314LCJwiyOjnXpGR/mPFd1edZsg7bh3im6XwPvqqJXGhqI=', '57c27a219f5c83d60fd146b2bebd9752c34a8ba2ebe8bb60b5848bf4aaa50e181047f5930ebfb083c3f2a291e6bfa39b23257b33bcc37dc67ce974e9ea13f39777UDo2laqPdzF52lLHWFnnyu2ZxldVFq5cOLIWKDuyI=', 'd5743dde0fda481ca44f8cd849bd24139c41a45a96ac79c6e7cdf44dc4b02a614cdeab79236328ff6a1c917f71ab86f8465f9984d8f3fbf165ba679004f9aeb7gluWjV7NW75K63XTBfSyuTkgRMLwLqryPwLAta5/Uta5mKOZjNyXqItsFxbCnBrN', '1eeb7b64e89503b613b1cd8153ecdaf46e7130b5e18a65f00fd0503772ccb5cc8f9c8333aa5a248a98d707dbb7796d9d21cfd2f93de4de652009206d2ccdb5dbmqFoKTsEKx5BzDr7vrOFZsxefpx67UvxdJne6JQFmT8=', '9f289bdfbb193f56238a6b7e2c990f1be4d694a85cbe44c7df7013cf8dcf648cd31814011226cddf9801e019b1ae0f5967f1a0fcf2647d786eb2ae73ffeaee8eAtv/hCYUiNBzOVFyQ1HYlcF/HfDSMrkMqGjE5Mh6Yoh1MYiPjgf2MJsuqDrgCUT2', 'ec04ae4176b85479662d2b08f6f4baa8cd510f846ba78013335c5a9d643a150f71039436a5444cd29e83c66ddc23dd9ad18818e45f8cb9b22dab358149c27fc7oLmRU0/Z91IyDrCMXVBtsMBPQ/nGYG/iTMOX11fJA7U=', 'da567ac5fb7b154ac8a043973e3621518ab81778cdcdc60f947823af71c1e20bb3d2271f463ed47525c12af5ecce2dc3cf52e34256ccbdffa7fd37ddaa3d7d08LJRHvOh81jgmciVZX3Hlh8fkkajQfWDQr7+MQ5pXrRg=', 'e1828dc9105e6ecf912c506d6acbeeced6f352d3658a8740da275b9fe43f1ea37a609498ce5944ad65fa5ccf66fba4e6af32c83b80aee6fe04f00fb8841ed732ewYoeXPfcRNXv6J8MeqTe8St3Vd5K5VOFFkSWp/Od8s=', 11),
(12, 'a7372d216572913f5afb803c886d49f3bbeb487692a6f47820a15e8bd85b7242764f882bddd9219c541608bb6a93f36f7c0a069a41166ce2afbbefa963404fca9RAizJ+k0FIlklCRC2gKg2nLBc3f25wgZmjLBBSSVhE=', 'd5a3d41a8c6ea8bd0aa860a457169f7c02447f94eb03246d011315dd2437fe01772eea6495c1d32a254a832372231e850cbce1ffdbc8c222032afc869cd57117nQNQE6Q5HH3zHBzFUj+RGGqISa0iKfeWzJgIA5L5PJo=', '842ede9caba3efee249d0792630742a2969beb3587e6149ce60817080b4904a2ec1467457bcb6667694746314005bfaf5d204587a76a907cb0e7c55ba37f18b4eLvQHf3dieyTkwaeNkSRVuFqDlkkDMiyEVUG0Usp0HzbFuV9mjy3VJ/H4Rl/kscg', '8d223005622e55b577cb11ca9ded00ac29db8566b8e6a617404796297f6c6afa7908291164e8b090e0e4354d36e43dadada64b0a24d8f07616670cd74876f077DVmDeVI58urpaMZr8eXNFCH4S5xZ0O8L5MImyehazWU=', '046e9ac57dfe247bbb1e960f44c38d22ecd15349b23048d1cc8516501909e9ab850679dc29b4a910da3d2c6535b8b91d738c3834c1de66555130cf0752dc9120c8Kl950v33QCGKi8Nb2OIbA8RG0T/Yuzsu+GmVSkV0ftnUtOwSumr38d4zwdRikK', '2c1b0422301d3d864c96967f48199c5f0adcbebe6eeb8265b3846e4fcfc5a0de766b3fd6118ce5fd0c84e8861a6202de8013a83455dc95a932c0a44a657d06965mkFCDT8xDHT0PZxxLTGE7uGmDPTgX/bX1ij5Jhx8mE=', '6991b90277fa0974f654ed17378ed9151166bc1e085a4e5aa5d8f21aed25cf619edf71703c95e84b59dfa92347e624e39bb0973b0f7d98452543af8b4dbe6d09JcVO11v31q9QGkc4XF+uawBJKm20EtR1TxwDJU/A/bg=', '9d5324ec636bc22e0890dc64f8fb2906a263a09c627451604fa8efdbde10c8314b3991b34212949980f0aae7c6e32371807e68153dba5ce7e4d4e87cd1f7d54a40IHjbLnSjUugqh5t3cM9PXK0oeosC3gjXIJDulg/K0=', 12),
(13, '3a66d060292055f4b70bf49e87b60559b14f19448c26da6e4990dbf049bd7a888cd029b712cea416f8222631634d0f009f53be69f3af98095f0d5c6c9dbb2791J0NOJyfGKAEYPG7LJq2iMRziJXyRBnJeWRN/GbuzZu8=', '14a0f6b461c496e537f228c8f8e1ab50a03f74dbbf0786f5013af8188e7c473486c94f7137658303b6278e44c844ad98371c560c2fcfe7cc680677fc5bc5f32ba7MTyfRw58YHOLsPxxqKQAE4y9EhZwr8wlhULix0H4k=', 'bd8f1274bd365519be1c76cdeddc7fc62aba170cb5807c40768df148bf0d2d5fd3ea538e440fefe73e7aaf477e33be0f5444167622593d25590331fb822c9a3erl/ifNVCGThnnDceV1uep5eFyn0Q7Jw0EZSyM9muAeZJL+E27Aq6Gkd+H1BrPjrI', '571d8661e0c40423cf660d0c136b1e55cfbdc4d6e6307d0c83b6debd0e3fc61971d2f69c5584520b434203ef2f70ae666c9fffac1321f72f9a9e454dbb6e0512FRn4Aind2VGjj0XV9jcE2f/nSRkJguTuNc+cbUqxYcQ=', '6c4fc30ffd3044e420a6ecea23c3542d71b73a3834643090f3d33df803a44def627bd26cce4e851cfb4323d9cc883241f7285d841c4f3817a533beda533a59dfxsWSP4h250bnLvrd/rAy60yZRV32+AW8Btvuu3Zq9EI=', '48731af63f24a9bf13233c5f0fe58f223383ed3ad8f2803f4dcfa5600a663973cdfc581e328dd4a5aab2dea123dc94f0d604b46e8f7ff2640c61bc728732abc5E8BtFU27/Fpe4Q7vPKwbCSqwh5B7wP0CcUTBXkv1cXk=', 'd203ade389654a0de03ba1213e676f595b6056b10f74dbb4ea0f4de9f73561a56a06cff2d8d40f0a1418bcb0fc7b7db10be2fd440e7a051954c509679508febbl0mhXajSjztZXW71rzXyj8O/i71Auk9U6RzIL8snYzU=', '7cfe3ae476093e4ea5565a1d32ac78fc6a36c21627a0bb68a7e1f29487dc41e4be7dc7944800a92ba515d5a0a2128067b97d7d877689928a3fa6d40b455e9a27dOQ3VKuMjeAaGW/5+G/d4BUqvEjYiJVqsMeEj+LLUUo=', 13),
(14, 'fd0eb4fe1750766ab0497230c7621a89efa77e9dd7cb8035a5dad846774471e0a5a4cc114229775ef8ff1258245591d77626cb0172e82f9423614e2302065b77YLGRxcJaGFvesHdkRP4Qaf7Awlb8UiT4vZB62wPUrQ0=', '61a2359dbc11b5ad5d9b0417da06cf7cf14ae8fdf446fa1ffcffeb06a30dc5d648a852f4209b26593599895942a3794dc95e35bdd94261d6e3d1a4d5768cac3fjQBmEX8OMx3im2mAsdzdtQEbudoIIVJyjMaOdW+6DbE=', 'e7b640f97b8e28f5eaea66790a513148a13b3edc27aae43174541d54a58c09b762340923e06f99d2c48b65b27f5ba7cedb09daa39381381e65567e062537385d/PU/H8Jn2xVjHww/sHXQh0DWm37yYumlQCWkkGJ5kyRte7bDGr1drlr9S1PGsPOV', 'c6160dbed0b6525d06766bb5802d5d3ec8ee9beb1f59f32014a808072da7181ef1a6df245d01d0879b130fe05f00a5929bb9a5ca0bc0b6398ed77ab011df13f8BtiYH+8d1CDIVjN+Rw+aH+xrlaIfm7l2kDGNFVNxaEM=', '8d2dfff2fc085ad3db43f7d2eaf69728f2b1302a4bb1e17449f46dc9ac0e9283447a7718b127ce37c78c94615f0d51037c0f96537fff3dddc2b358036a43facboAxKwB45mIs1d/xYrApn/9GOZkxR034UEceCe69o+lE=', 'f1774fa1b41d5e99c1a143cd0819fb524399af90ddbf512f27c90fc8d5da213e449d72a53c7c02e51f44c5df491b21d2bb88e438ebca479be6d47f00c86e0238dsFRaQz6Bhr15Azyv0s5aQxp6oaC4KXHa6OLOi8JMLA=', 'bb894f8ec9d7c242ed015a80cad46ed682ab3b2d97b6125790f8a5de91143db3d1aac411a0d602b5f938880231482dc30a4f10d19231db7811f9907745316611o8198NkhkEvVM658ZrABeekg/emuPUKQcakkU4kW48c=', '1b283f695b95ddefd453d3e95d21542cc7f2e4b961271fbe29a6618f67aac1c12cb94dc62db13caf3c5ae5c7fae6ef0bddf91e07be5c661518fc5482d4e9e212aC0Lz3GB3mbxm2sNIMp1zVaa5Sz4xxlG3nLT1lGZA6w=', 14),
(15, '560ca2ade82c82b7b80e681d5baaaa7f1e365429dd8ac4005dd704e8844224a7645d0ed3135f3fe3635651c0d9093f520bb513ebd0d83e20b81ced197a5bcbfdrUD90g08SMm+LC/UegkxS69KDVUnFcwhFppB39Z1RLI=', 'a22e326248324ddb9069bfab047ade4414d192c3106e81c79c39d1c42ec1ed50ac39a78b75fbe60faf1e3fbb6eff68c2d7d3664aaa7041db558c9cebec0719ae+O9gOh2cIG2Cmqm21vM4lfVSxM+KFp63pzRazkXCuv4=', '847599c172b7c68ec2317732aebbeeafa80814dc36ce543eb6bac82108bdca2b7f7f6a9e5cf388cc9f5034418769112990b521f62c4542a2d51dadc149e9c93eQM4x4QO4aP7paNft/L3p7GhiPDUqaCxvYs+5Z8KNRvsdIPWhDD/MTqSiZydV9jy5', 'c1880f77f96ab49f2d1117930b0f0ee9ef82ac9a2399710e44852c31fbeeedec49a6f843d22eac41bc604febd1691bf2f49dcc4dfc445480b05836476a0a3f82BQeedDjq59clCO8/8rfDsUoV69W4N3XvDd4PrNnmGFs=', '0fe7fc7a979d8c003bd9006a2299a207e4d988415e772811ac62348d8917974ce2167254768ab2540c2228cf59875aa73f40372328818c0f5d57db4bbba3509bGS3HtjH01CoXIIG99gf746RsoajgV+VRGy8UVz8TsPA=', '04f2d6e62d071b73ddbcd4c0e3f1da23c55e0841287b7c3bcb438c2a305ff2df2e365eba2703b78331aaf6702675c2be2cb4c0ebaf8cdac9bd69028529610320Oa9aXehxAGRGlziBotvLVqnDz5HV7qRbYnIpy/w4g1Q=', '4eff88daab5d3fdef79de56b7228c7e1e736172ce224dd47241bc93e162323aefaff7db4da7d42abef0cfb180f1a433807d65da961c78657840a1f3d95561f195nJ69iEavWpRiNVoBPLeBo0DoWjW52c36KVqa3OrFbE=', '759be86afdc7c207fb6223aa570b5af327e8624091e0bc790a41a3499325a9db053bdca2ea387839d7c11140fc3e7e0224c355e117ff681f70d71165b25889b7Qcag0fuXqtZDfKdruEOe7CN6Ch+YMis/5VQR30Xa758=', 15),
(16, '918ae6760eb7ff8e3300fd9df84947f06f40ec6736e29c5edd73e99ade5fbcc9f85df0ff0352a5704d4747960f1f9bef5acf3df73b03bcdd3abfb414d7cf3764uJaxcMwpW4cEI2r3u+MVtik8WCW4BaEqEoTgNX830yo=', '7a07425d33de726c427e8ecd856d25613da1e8b1f3b0829cf6105a285d1c4f3d3f08a1009b5d8735385cde1eb3675cdfb13596f19eaf1c111c31ae2a9f30bd3e7pDAVpfoySIgjohISoP6n4eDiBogtO2tA54OrugkLzY=', '4980955ede1d54f9364bbd9452cdb5853974eadff49c6d15c16f6f0a54a20f347f4b998dcdeaf9ec250395e1a5ff04c4d414f708e65fb82de0fb2362accb0ae7cEVJGjRxgaTYFgk0tsHQDChiZjY7Wg0GbsdGBvnU87u0dP5yxZZCgFYwCjjnkb4n', '326ce0c360b5f66f4788db6e82976c6550b5f6ad74f25743523d64cd0f8ce4a678b04b20e08936c2c5c06359ca0a67a64eb252d4ee54aa433c577abb31a57a4dN/xpZ2+cQMafpl/U5rJFkWmmJbvXxiF+zrzoHlIgvIU=', '2a5b120af7549a9d26dbab6df930683bb917e6ecb9fdd02e6d386d86c525a68e203c0a3e9f2146fa88b97adc13c9709458e9d2515540f118b72fbfa407db758ftGkDg6cJyVix34rOUD1zvlqkgu8vP/tXH3VvgxG45aA=', 'e71ef8af8b9a25be540552b0261c63a685589152f430fe1d56c0735f1282456d574598a44c23e1059b52f5f5ac3050472da31db02aba3da4f89cd0f8874625c0G+lBTwUJe+vyjOssBdePqgXJFSrwuLcSvfDahkYIOfo=', 'b32c0625bc968499b26ed6eca3d72437b97a607745f2ca7291009321cfaa0f598a54ad6193c8aee1db9ea8a549dcf86272a037c5aa52ea3c4f9c4e7164d20a94b50OHBfQGKjDb99sq5Vurfo9QOKR/6maAOXSZ3UBTGk=', '207580992ce6323f1f72fea5e7f4ce467415b6ca2f51bcb8534efe55baf7c83de4de4df92b86878e73eb3bbecbdc00eb16880ef8fa70e682a93e143c09c49d33RO9jG7z4oHEKw2VcxxqvxMolfZ1qQkPvdfTGtYD2yLk=', 16),
(17, '43cd20fb9c1722926ebc26e3383dab8055899822f3f3c224cc655ca3adb2e9a7a05fb1cc96ab34e31777f203c712995f687f87e1d43c3595635e5e58f06506ecldNVAsmzTwQoAh4OoGGSTUee5eg4McKsYcmdO6iLKwk=', 'f048c6a65b4e978d0335bab92d819cd276796c4328ae05149619b97f3fdd473556bdb91dbe8fc41efc0db06b46b040524bcbf0e6a5ad2c0a511f4df1561698c3fAFymHvcEAtCXS5oj1XZACmjjdPsxZFwSAG3cUc+x6o=', '9abb1e8355a23982255ca60acb8993111add0be4b2353cb67ae812289d4d0c629fb456af1d48fca2cc1da2823c8d5a926c032cb8f0e2a23f3022f58e5f53404eyUGw3gJ9hG9ADXb2b95rF59U8eRyaiE4Bu1iGcGFXgWJeHrOTQhPeMZT3ZiGfj5I', '165b4d0a3fdc0090f200ee09411645be3398d02b12e3a43ac893e0bc3048357f13acb84c2d4374fc99a7d05e00c4c5f2e287cb1585a93e77585d4d31c9681513koHdiuUEv6J6sulN1fEs/ejSaG9t3+yCmIJdVIy2hQo=', '8807130b010a9e1c31c349f578fc892c502b078f7cc1e77a58ea0c5caa6cade4f5c90f80a22fd9f2c4c6db05940b59b7b4ae64f3aa1055905af4164dd9732264vXMa6w5LD256f5MN+O0fdugbP1UjOrsvQXT540XYI45Rfp+zy6oCPnuU+Qf7BkzZ', '2440499b153c0932cfe16f9fb8a15938acb7331114091e4c2e14587451594dba26168a0487f07cee46ba3c20c2e2c60f97f66b11e00919b795fe569e2c862d85wtx6ZvE+h2jCbRRjiT7ho0VgbkBoXxpXCAo6/jAFQ0c=', 'e68158e73faf2addf921a5b4dd8747e063d90f96976ad35c20391b9f33dc21c49d422f0930e40e1ec03d87f9ca1f8795f5286b918cb8bf37aa24e473e388593aDUs3RfePTdwVm+0+K/vNSeOj6UegT6F9kveMCa5/daM=', '3ccf23305a30efa9351c682d6a8f8ebb7b975c81cb0131e4d55eb541c6ec4c2a26bab9b74b1e806e78ffedc0c5a88f15d782e80ebfd169f501790b2cd2d108bcMQuSN31BzIqfmr1Mo7PXqfFdB2qjbF2Eva7jZLuBaOA=', 17),
(18, 'ffde99893973af928aca0de3e391e37b851e4faad3c37865fd7b4ac21544a05efbecf5fcc140cb73015fa77817c5a1038dee4d17119da7da1b0e6538d896297e2i+yOv8xiJG+kIXU1ELpKIluA650Jdpmk47m+neQyP4=', '37758572cd5bce5db4f972de45f958bf77bda1d0e7222e88291d396bfa0f14dc2edf2c51703f04671431ffb27268c07d5426da9cc7f1616dde996b17a06a467aTUkSYJFDoPSgS++zVuhACuOSc+wXerYq9H4tTdXTKxo=', 'dcad39212cf4c5611b2411bfd1c03b8cd2722b094656b007809bb585eec35cfb02782f8b1f794fcd11b8bffea2f15aa5d2b3777687f5e6ac07c150c775b1336f5RF9urOGvXBhcogmbBXUnIn8ud8iqspPyl7/H/j19bViRyEABzY/qHiTAtvlic+I', 'b196b7d8a8b995024f884cf4e2327e74ed6b286a5b30cde7cd0f753e017b06a2218232d76ac9822e06bb758f6df989c233f3efae05ba6e06477e2a93f07a42e6V/rjcB4dDHAn1GM1mTO2j9pje0B6h7EZaby0CarCjDs=', '312c57da49eb5d1bf97d3d7f63d3673ad18ac3584197733764108508556104ea6d1eea7cf72a5b6f7519e33fb67e14d69c92277ba7bf74366fc2a34c378087ebl2U7rqMBD7W/cIjIOkFOA7fLDjIF1ivqHBs3jMOo17bQcy5Y5KVp/FZl6iGWQSZQ', 'ff75ebf902d4e86e9b1687ba6b272f34d048a10713e9fefc0fbe2360f7e9916a10199218d37f12c50e25313ece21b31c5e4303e5cc97c8e121e44efd32accc4aK/S7V8zonA/JyzIXqRjaUj2N6h8loWX41nS8TPAfZnY=', 'b78aa1040df4aabc4bb5e57f638b813bf00c30c4f1c3573601431089bf1144606f863c57099c4b891e8480020f526bffa3422bd19c951a8c458fdd20f53b7f77lUacCjf6uYDSLVw/s5z52O1mwjY+sbSxJGPcyrCD+YU=', '75ee2d4d8f937aca468465705c83681633fec511c3b31e37301295ffd6020c54eb3ab76879113100cd4fec7893f9dbcc4c5ce681f299242dc9ca41f49274b5c410LIpyyPRXec0nf/5cZZrzWH9iUpqmHjumiVn4KPaEI=', 18),
(19, 'aff7a9537b771721859fcaf323c689e23008f591a70d7717ca3486d13d51b62e436febc02a3f499cf94f56ed448f8c6acc597b8f99f73043ddccc8b1ac7765b7YaJLwRlWsKHIl3UAaj+Lg2ggejqIwkenZbcuJc0kNtU=', '185b0c6da75aa81707fb1fced8dc3f00b5a94ecda453686a12395a59a8a7a4ea5c479a14b4cd3fa1d025314fb5d12ae354e83f15d2b0cbf38ff378e9ef6acddcOmxqOxs1fpgPgwDIlp1Z+yOFid86r2M46Gw1rzuvZfc=', '282d4a98060fccda1429c1bee1e5a90b1c803ecd79c3202f849b7d26470cfebfb61b64af40f8366b6a60650eed4d0d97a5bf8f771d30b680b89eb8add5d7e563PsikxbWkd/VeIVjczxCh43WoRb+3bqVaWFljzkK90bG+bCVAJXhtaSeJOoTqcjXG', '2233c9ccd0a9193597654202b30cbbba4bd76f4555b8912249104ad1fbeed81adb2d4f0372589850fd2d699492969ea324498cc2c40a10665725c00c01c76ea3AcJMrxA2bVDB30zPnJ5L57874p58dPb2c9gvs84P+gs=', 'ad22829ef5f298301c8e0a89b9e8892d604906587b5c7d77212afc56558ddc843333385760eb906263d8dac6798dc3561fb3680534892d752ef80fa81e9f2292zXx0KupWuIWVmQk29I3gWWBJMhy6IwCEARYPmoUtqLsbGNgSCzkja/vM77r4Dy3EGDP5Gl+9NgazdBoSUFgUdDFn+1Ehg1/vmNQQ2Cpwd4RJkbSCWGWPRYrfUyRs5i8d', '17cc18c474169f6fe7fd213b32529de1192e69163227dd3bb51b1b2fbf77b08042f4ad2b5de668443570646fc4370b0ec96cda58ec8579f3fd535ecb26ee4620KVAizjYHPya8fRkfiJdS8HTC6xcISpVov5V8aiLm3/g=', '177a2e7bca61ba7f5cecd870245cb27537d86bc74205f197c177d615c424c1653e72cd554f43ba684eba519af95d30139e0168e07e453cde86cd25d2db3fc7c8JyN5S/jtIUj1vPQrQjJYwMcaXaEgsBgTOe6vDSIRFoE=', '599d735b42378f66cffb26793c3fab3d6b432bc1c003e4e28767e8a469b84cea309752e865b68a712dbd561da7505dc96cfaeae76186e9d06a467f9a2e6d280c0gwCqYFLyXP+HdQrcWBLc2VDSc57xl0pvyLJzGL0QPU=', 19);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder` int(10) UNSIGNED DEFAULT NULL COMMENT 'folder with images',
  `image` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_path` varchar(256) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL COMMENT 'time created',
  `time_update` int(10) UNSIGNED NOT NULL COMMENT 'time updated',
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `shop_categorie` int(11) NOT NULL,
  `book_author_id` varchar(255) NOT NULL,
  `tag_ids` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `is_free` varchar(255) NOT NULL,
  `free_description` varchar(255) NOT NULL,
  `procurement` int(10) UNSIGNED NOT NULL,
  `in_slider` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `virtual_products` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `brand_id` int(5) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `author_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `folder`, `image`, `file_type`, `file_path`, `time`, `time_update`, `visibility`, `shop_categorie`, `book_author_id`, `tag_ids`, `quantity`, `is_free`, `free_description`, `procurement`, `in_slider`, `url`, `virtual_products`, `brand_id`, `position`, `vendor_id`, `author_id`, `created_at`, `updated_at`) VALUES
(29, 1736704874, 'Aklanta_turango.png', 'pdf', 'storage/docs/2025/03/02/b8a0053d9ebbd98f2d1e0f1229da8334.pdf', 1736704944, 1743012665, 1, 3, '20', '8', 1, 'no', '', 0, 0, 'AKLANTA_TURANGA_Dastabezar_Epristha_29', NULL, NULL, 1, 0, '1', '2025-03-14 15:45:42', '2025-03-26 18:11:05'),
(33, 1737644918, 'sahityik_xosari.jpeg', 'pdf', 'storage/docs/2025/01/30/9d86927a388770ccb26db434913f2ec4.pdf', 1737645208, 1738245966, 1, 3, '', '', 1, '', '', 0, 0, 'Sahityik_Xosari_33', NULL, NULL, 4, 0, '5', '2025-03-14 15:45:42', '2025-03-26 18:25:30'),
(35, 1738230705, 'Mur_Jiwon_Xuworon.jpeg', 'pdf', 'storage/docs/2025/01/30/85276f9fb0873648d49a710de6cefdff.pdf', 1738230941, 0, 1, 6, '', '', 1, '', '', 0, 0, 'মৰ_জৱন_সৱৰণ_35', NULL, NULL, 6, 0, '5', '2025-03-14 15:45:42', '2025-03-26 18:28:08'),
(40, 1740234494, 'Anubhabar_Emuthi_Sabdhamala.jpeg', 'pdf', 'storage/docs/2025/02/22/256891303ed38e5cc08ee8116b3c81f4.pdf', 1740235138, 0, 1, 20, '', '', 1, '', '', 0, 0, 'Anubhabar_Emuthi_Sabdhamala_40', NULL, NULL, 11, 0, '1', '2025-03-14 15:45:42', '2025-03-26 18:30:10'),
(42, 1741009932, 'nisongota.jpg', 'audio', 'storage/docs/2025/03/03/a6895b89858ca76102d9517c668a1072.wav', 1741010515, 0, 1, 3, '25', '', 1, 'no', '', 0, 0, 'Nisongota_42', NULL, NULL, 0, 0, '1', '2025-03-14 15:45:42', '2025-03-14 16:13:02'),
(43, 1741248519, 'prachin_bharatar_biswabidyalaya_audio.jpg', 'audio', 'storage/docs/2025/03/06/a3e41c960db1896fb423dc18b24333da.mp4', 1741248656, 1743011068, 1, 11, '27', '8', 1, 'no', '', 0, 0, 'University_of_Ancient_India_Part_43', NULL, NULL, 0, 0, '1', '2025-03-14 15:45:42', '2025-03-26 17:44:28'),
(45, 1741417139, 'career.jpg', 'pdf', 'storage/docs/2025/03/08/2c2ba244c88db50abf6741054b378eba.pdf', 1741417253, 0, 1, 21, '26', '11', 1, 'no', '', 0, 0, 'Career_Planning_45', NULL, NULL, 0, 0, '1', '2025-03-14 15:45:42', '2025-03-26 18:32:58'),
(46, 1741681518, 'namghosha.jpg', 'audio', 'storage/docs/2025/03/11/606e4775bf4f016ce54c94ae19500f0e.wav', 1741681774, 0, 1, 13, '28', '6', 1, 'no', '', 0, 0, 'Namghosha_Part_46', NULL, NULL, 0, 0, '1', '2025-03-14 15:45:42', '2025-03-14 16:13:10'),
(48, 1741712617, 'কেৰিয়াৰৰ_পৰা_জীৱনলৈ.jpg', 'pdf', 'storage/docs/2025/03/11/468a80c7ee0597856f78dbe774c32f8e.pdf', 1741712714, 0, 1, 21, '29', '11', 1, 'no', '', 0, 0, 'From_Career_to_Life_48', NULL, NULL, 0, 0, '1', '2025-03-14 15:45:42', '2025-03-14 16:13:13'),
(49, 1741876363, 'Dhurakauri_aru_tiposi_sorai.jpg', 'audio', 'storage/docs/2025/03/13/ae7bb7f051706cca3ac0a8bfe7faecb7.mp4', 1741876760, 1744655383, 1, 22, '30', '12', 1, 'no', '', 0, 0, 'Dhura_Kauri_aru_Tiposi_Sorai_49', NULL, NULL, 0, 0, '1', '2025-03-14 15:45:42', '2025-04-14 18:29:43'),
(50, 1741889665, 'Ussa_siksha_aru_careeror_sujug.jpg', 'pdf', 'storage/docs/2025/03/13/56a06339802e0c2cc80b07496107372a.pdf', 1741890044, 0, 1, 21, '31', '11', 1, 'no', '', 0, 0, 'Opportunities_for_higher_education_and_career_after_passing_the_high_school_final_examination_50', NULL, NULL, 0, 0, '1', '2025-03-14 15:45:42', '2025-03-14 16:13:18'),
(51, 1742403067, 'akash_sua1.jpg', 'audio', 'storage/docs/2025/03/19/4f59f239a86df4252b3c2497dfa35af0.wav', 1742403659, 1743099943, 1, 3, '33', '8', 1, 'no', '', 0, 0, 'Akash_Sua_51', NULL, NULL, 0, 0, '1', '2025-03-19 17:00:59', '2025-03-27 18:25:43'),
(52, 1742406088, 'hridbhakh.jpg', 'audio', 'storage/docs/2025/03/19/ae746ca28d503892a1ca45a3bb93e828.wav', 1742406221, 0, 1, 3, '34', '6', 1, 'no', '', 0, 0, 'Hridbhakh_52', NULL, NULL, 0, 0, '1', '2025-03-19 17:43:41', '2025-03-19 17:43:41'),
(53, 1742924096, 'Lakhi_Nath_Bezbaruah_(Thumbnail).jpg', 'audio', 'storage/docs/2025/03/25/380953c36fee5348bfd8cf79c163fcbc.mp3', 1742925202, 1744204047, 1, 22, '30', '12', 1, 'no', '', 0, 0, 'Ajoni_Malini_Aru_Ajupa_Phool_53', NULL, NULL, 0, 0, '1', '2025-03-25 17:53:22', '2025-04-09 13:07:27'),
(54, 1743008925, 'Bhinna_Samatal.jpg', 'audio', 'storage/docs/2025/03/26/4c460fc1c8983de3b3d8d99a3c94f4ff.wav', 1743009363, 1743010545, 1, 20, '36', '8', 1, 'no', '', 0, 0, 'Bhinna_Somatal_54', NULL, NULL, 0, 0, '1', '2025-03-26 17:16:03', '2025-03-26 17:35:45'),
(55, 1743011707, 'L_pattern.jpg', 'audio', 'storage/docs/2025/03/26/f2e0709625b9dc49f4689726c0ce3bf6.wav', 1743012020, 0, 1, 20, '37', '8', 1, 'no', '', 0, 0, 'L_Pattern_55', NULL, NULL, 0, 0, '1', '2025-03-26 18:00:20', '2025-03-26 18:00:20'),
(56, 1743013079, 'University_of_Ancient_India.jpeg', 'pdf', 'storage/docs/2025/03/26/7a460811f7aec67d52bf9659216a7057.pdf', 1743013198, 0, 1, 11, '27', '8', 1, 'no', '', 0, 0, 'University_of_Ancient_India_56', NULL, NULL, 0, 0, '1', '2025-03-26 18:19:58', '2025-03-26 18:19:58'),
(57, 1743014430, 'Binimoy.jpg', 'audio', 'storage/docs/2025/03/26/374e5fea8e8843a78e3248414e809574.wav', 1743014627, 0, 1, 20, '38', '8', 1, 'no', '', 0, 0, 'Binimoy_57', NULL, NULL, 0, 0, '1', '2025-03-26 18:43:47', '2025-03-26 18:43:47'),
(58, 1743100226, 'pomi_jai_ji.jpg', 'audio', 'storage/docs/2025/03/27/6b006cdd0372b87fc8834ccb9beb83bd.wav', 1743100442, 0, 1, 20, '37', '8', 1, 'no', '', 0, 0, 'Pomi_Jai_Ji_58', NULL, NULL, 0, 0, '1', '2025-03-27 18:34:02', '2025-03-27 18:34:02'),
(59, 1743101865, 'sobir_bhrom.jpg', 'audio', 'storage/docs/2025/03/27/fab462bba383a09bb9a9cff5f6407979.wav', 1743102109, 0, 1, 20, '39', '8', 1, 'no', '', 0, 0, 'Chobir_Bhram_Bhramor_Chobi_59', NULL, NULL, 0, 0, '1', '2025-03-27 19:01:49', '2025-03-27 19:01:49'),
(60, 1743102631, 'Dinantor_khuj.jpg', 'audio', 'storage/docs/2025/03/27/9ffce009e0b159f00f86f08bef3774d3.wav', 1743102779, 0, 1, 20, '40', '8', 1, 'no', '', 0, 0, 'Dinantor_Khoj_60', NULL, NULL, 0, 0, '1', '2025-03-27 19:12:59', '2025-03-27 19:12:59'),
(61, 1743184616, 'Dwikhandito.jpg', 'audio', 'storage/docs/2025/03/28/a336308bc5aac6d8f293732494f53bf1.wav', 1743184709, 0, 1, 20, '41', '8', 1, 'no', '', 0, 0, 'Dwikhandito_61', NULL, NULL, 0, 0, '1', '2025-03-28 17:58:29', '2025-03-28 17:58:29'),
(62, 1743185752, 'Sangshrava_Sunya.jpg', 'audio', 'storage/docs/2025/03/28/51bdd3ba05082af658006b86052103b0.wav', 1743185821, 1743186580, 1, 20, '41', '8', 1, 'no', '', 0, 0, 'Sangshrava_Sunya_62', NULL, NULL, 0, 0, '1', '2025-03-28 18:17:01', '2025-03-28 18:29:40'),
(63, 1743606180, 'Antahswar.jpg', 'audio', 'storage/docs/2025/04/02/a4db1e0c29e4b7f0decd4fb23cdaad5e.wav', 1743606334, 0, 1, 20, '42', '8', 1, 'no', '', 0, 0, 'Antahswar_63', NULL, NULL, 0, 0, '1', '2025-04-02 15:05:34', '2025-04-02 15:05:34'),
(64, 1743702378, 'Axomia-Suwalir-uktir-kiodongkha.jpg', 'audio', 'storage/docs/2025/04/03/c43599146ef79abc92b30b6a982cb1ef.mp3', 1743703158, 0, 1, 7, '43', '8', 1, 'no', '', 0, 0, 'A_Portion_of_Axomiya_Suwalir_Ukti_64', NULL, NULL, 0, 0, '1', '2025-04-03 17:59:18', '2025-04-03 17:59:18'),
(65, 1743703598, 'kanchanjungar-buranji.jpg', 'audio', 'storage/docs/2025/04/03/48027728fdeda62e8e518672d681ab94.mp3', 1743704146, 0, 1, 7, '43', '8', 1, 'no', '', 0, 0, 'Kanchanjanghar_Buronji_65', NULL, NULL, 0, 0, '1', '2025-04-03 18:15:46', '2025-04-03 18:15:46'),
(66, 1743785642, 'Manuh-jonor-naam-nelson-mandela.jpg', 'audio', 'storage/docs/2025/04/04/1f7210a7bb6b9117e2a5158c584e6bb7.mp3', 1743785996, 0, 1, 7, '44', '8', 1, 'no', '', 0, 0, 'Manuh_Jonor_Naam_Nelson_Mandela_66', NULL, NULL, 0, 0, '1', '2025-04-04 16:59:56', '2025-04-04 16:59:56'),
(67, 1743786341, 'Bishwar-Chande-Chande.jpg', 'audio', 'storage/docs/2025/04/04/e8886a56492c0d8d965ccf6983b885b6.mp3', 1743786549, 0, 1, 7, '45', '8', 1, 'no', '', 0, 0, 'Bishwar_Chande_Chande_67', NULL, NULL, 0, 0, '1', '2025-04-04 17:09:09', '2025-04-04 17:09:09'),
(68, 1743787098, 'manuhe-manuh-khua.jpg', 'audio', 'storage/docs/2025/04/04/0100da44b3acc17489bd3d47d1864bac.mp3', 1743787467, 0, 1, 7, '46', '8', 1, 'no', '', 0, 0, 'Manuhe_Manuh_Khua_68', NULL, NULL, 0, 0, '1', '2025-04-04 17:24:27', '2025-04-04 17:24:27'),
(69, 1743788148, 'kabita-tumiyei.jpg', 'audio', 'storage/docs/2025/04/04/ce2a1a19e54488e55c55db8995ec5a70.wav', 1743788285, 0, 1, 20, '47', '8', 1, 'no', '', 0, 0, 'Kabita_Tumiyei_69', NULL, NULL, 0, 0, '1', '2025-04-04 17:38:05', '2025-04-04 17:38:05'),
(70, 1743789875, 'beduin-sorai.jpg', 'audio', 'storage/docs/2025/04/04/a779be7386bb63daeff655a058c6eccf.wav', 1743790041, 0, 1, 20, '34', '8', 1, 'no', '', 0, 0, 'Beduin_Sorai_70', NULL, NULL, 0, 0, '1', '2025-04-04 18:07:21', '2025-04-04 18:07:21'),
(71, 1744047354, 'Bhonga-tuponir-ronga-jun.jpg', 'audio', 'storage/docs/2025/04/07/7ed8586f7bf71ce7e6dd5e25d188ad88.wav', 1744047624, 0, 1, 20, '49', '8', 1, 'no', '', 0, 0, 'Bhonga_Tuponir_Ronga_Jun_71', NULL, NULL, 0, 0, '1', '2025-04-07 17:40:24', '2025-04-07 17:40:24'),
(72, 1744050712, 'Jagonor-Golpo.jpg', 'audio', 'storage/docs/2025/04/07/45f93af897fe08bfc64adec6fb77f6ac.wav', 1744050822, 0, 1, 20, '48', '8', 1, 'no', '', 0, 0, 'Jagonor_Golpo_72', NULL, NULL, 0, 0, '1', '2025-04-07 18:33:42', '2025-04-07 18:33:42'),
(73, 1744370970, 'moidam.jpg', 'audio', 'storage/docs/2025/04/11/f4f627f931e5934738362c5bfa65e1c1.mp3', 1744374389, 1745333168, 1, 11, '52', '7', 1, 'no', '', 0, 0, 'Moidam_73', NULL, NULL, 0, 0, '1', '2025-04-11 12:26:29', '2025-04-22 14:46:08'),
(74, 1744374407, 'Ulot-Palot.jpg', 'audio', 'storage/docs/2025/04/11/81d676f8ddb96c9cbfccd28087d66fab.mp3', 1744375006, 1744610534, 1, 9, '50', '12', 1, 'no', '', 0, 0, 'Ulot_Palot_by_Atul_Chandra_Hazarika_74', NULL, NULL, 0, 0, '1', '2025-04-11 12:36:46', '2025-04-14 06:02:14'),
(75, 1744824473, 'career-to-life.jpg', 'audio', 'storage/docs/2025/04/16/62f37725bb629db8a1ebd6af5f1b1ba2.wav', 1744824779, 1745211563, 1, 21, '29', '11', 1, 'no', '', 0, 0, 'From_Career_to_Life_75', NULL, NULL, 0, 0, '1', '2025-04-16 17:32:59', '2025-04-21 04:59:23'),
(77, 1744891978, 'spoken-english.jpg', 'audio', 'storage/docs/2025/04/17/066a391dc94d6fb8ff77c93f71484c2a.wav', 1744892120, 1745211332, 1, 21, '51', '11', 1, 'no', '', 0, 0, 'Lets_learn_Spoken_English_with_Bishaldeep_Kakoti_77', NULL, NULL, 0, 0, '1', '2025-04-17 12:15:20', '2025-04-21 04:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `products_translations`
--

CREATE TABLE `products_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `basic_description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `old_price` varchar(20) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `products_translations`
--

INSERT INTO `products_translations` (`id`, `title`, `description`, `basic_description`, `price`, `old_price`, `abbr`, `for_id`, `created_at`, `updated_at`) VALUES
(65, 'অক্লান্ত তুৰংগ দস্তাবেজৰ এপৃষ্ঠা', '<p>অক্লান্ত তুৰংগ দস্তাবেজৰ এপৃষ্ঠা</p>\r\n', '', '0', '0', 'as', 29, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(66, 'AKLANTA TURANGA: Dastabezar Epristha', '<p>AKLANTA TURANGA: Dastabezar Epristha is an assamese novel written by Nayanjyoti Bhattacharyya.</p>\r\n', '', '0', '0', 'en', 29, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(73, 'সাহিত্যিক সঁচাৰি', '<p>সাহিত্যিক সঁচাৰি</p>\r\n', '', '0', '0', 'as', 33, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(74, 'Sahityik Xosari', '<p>Sahityik Xosari by Himani Devi</p>\r\n', '', '0', '0', 'en', 33, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(77, 'মোৰ জীৱন সোঁৱৰণ', '<p>মোৰ জীৱন সোঁৱৰণ <b>ৰসৰাজ লক্ষ্মীনাথ বেজবৰুৱা</b>ৰ আত্মজীৱনী। বেজবৰুৱাই তেওঁৰ বৈশিষ্ট্যপূৰ্ণ হাস্যৰস শৈলীত তেওঁৰ জীৱনৰ ৰূপৰেখা দাঙি ধৰিছে।</p>\r\n', '<p>মোৰ জীৱন সোঁৱৰণ <b>ৰসৰাজ লক্ষ্মীনাথ বেজবৰুৱা</b>ৰ আত্মজীৱনী। বেজবৰুৱাই তেওঁৰ বৈশিষ্ট্যপূৰ্ণ হাস্যৰস শৈলীত তেওঁৰ জীৱনৰ ৰূপৰেখা দাঙি ধৰিছে।</p>\r\n', '0', '0', 'as', 35, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(78, 'Mur Jiwon Xuworon', '<p>\"Mur Jiwon Xuworon\" is the autobiography of Laxminath Bezbaruah. Bezbaruah has portrayed the outline of his life in his distinctive humorous style.</p>\r\n', '<p>\"Mur Jiwon Xuworon\" is the autobiography of Laxminath Bezbaruah. Bezbaruah has portrayed the outline of his life in his distinctive humorous style.</p>\r\n', '0', '0', 'en', 35, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(87, 'অনুভৱৰ এমুঠি শব্দমালা', '<p>হিৰণপ্ৰভা দেৱী দ্বাৰা লিখিত চুটি গল্পৰ সংকলন।</p>\r\n', '', '0', '0', 'as', 40, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(88, 'Anubhabar Emuthi Sabdhamala', '<p>A collection of short stories written by Hiran Prova Devi.</p>\r\n', '', '0', '0', 'en', 40, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(91, 'নিসঙ্গতা', '<p>হোমেন বৰগোহাঞিৰ উপন্যাস&nbsp;<strong>নিসঙ্গতা</strong>ৰ&nbsp;ওপৰত চমু&nbsp;আলোপাত কৰিছে ড° পৰিতোষ চক্ৰৱৰ্তী।&nbsp;পাঠ কৰিছে -&nbsp;<strong>সংযুক্তা চক্রৱৰ্তী</strong> ।</p>\r\n', '', '0', '0', 'as', 42, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(92, 'Nisongota', '<p data-end=\"93\" data-start=\"0\">Dr. Paritosh Chakraborty has briefly analyzed the novel <strong data-end=\"71\" data-start=\"56\">\"Nisongota\"</strong> by Homen Borgohain.</p>\r\n\r\n<p data-end=\"133\" data-is-last-node=\"\" data-is-only-node=\"\" data-start=\"95\">Reading by - <strong data-end=\"133\" data-is-last-node=\"\" data-start=\"108\">Sanjukta Chakraborty.</strong></p>\r\n', '', '0', '0', 'en', 42, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(93, 'প্ৰাচীন ভাৰতৰ বিশ্ববিদ্যালয়', '<p><b>এই গ্ৰন্থখন পণ্ডিতসকলে সাংস্কৃতিকভাৱে গুৰুত্বপূৰ্ণ বুলি বাছি লৈছে, আৰু আমি জনা সভ্যতাৰ জ্ঞানৰ ভিত্তিৰ অংশ। এই কামটো মূল শিল্পকৰ্মৰ পৰা পুনৰুত্পাদন কৰা হৈছিল, আৰু মূল কামৰ প্ৰতি যিমান পাৰি সত্য হৈ আছে। গতিকে আপুনি মূল কপিৰাইটৰ উল্লেখ, পুথিভঁৰালৰ ডাকটিকট (যিহেতু এই ৰচনাসমূহৰ বেছিভাগেই আমাৰ বিশ্বৰ আটাইতকৈ গুৰুত্বপূৰ্ণ পুথিভঁৰালসমূহত ৰখা হৈছে), আৰু অন্যান্য সংকেতসমূহ ৰচনাখনত দেখা পাব।</b></p>\r\n\r\n<p><b>এই কামটো আমেৰিকা যুক্তৰাষ্ট্ৰৰ ৰাজহুৱা ডমেইনত আছে, আৰু সম্ভৱতঃ অন্যান্য ৰাষ্ট্ৰতো। আমেৰিকাৰ ভিতৰত, আপুনি এই কামটো মুক্তভাৱে কপি আৰু বিতৰণ কৰিব পাৰে, কিয়নো কোনো সত্তাৰ (ব্যক্তিগত বা কৰ্পৰেট) কৰ্মৰ মূখ্য অংশৰ ওপৰত কপিৰাইট নাই।</b></p>\r\n', '', '0', '0', 'as', 43, '2025-03-14 15:46:19', '2025-03-17 04:42:18'),
(94, 'University of Ancient India', '<p><b>This work has been selected by scholars as being culturally important, and is part of the knowledge base of civilization as we know it. This work was reproduced from the original artifact, and remains as true to the original work as possible. Therefore, you will see the original copyright references, library stamps (as most of these works have been housed in our most important libraries around the world), and other notations in the work.<br />\r\n<br />\r\nThis work is in the public domain in the United States of America, and possibly other nations. Within the United States, you may freely copy and distribute this work, as no entity (individual or corporate) has a copyright on the body of the work.</b></p>\r\n', '', '0', '0', 'en', 43, '2025-03-14 15:46:19', '2025-03-17 04:42:02'),
(97, 'কেৰিয়াৰ পৰিকল্পনা', '<p>কেৰিয়াৰ পৰিকল্পনা</p>\r\n', '', '0', '0', 'as', 45, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(98, 'Career Planning', '<p>Career Planning</p>\r\n', '', '0', '0', 'en', 45, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(99, 'নামঘোষা', '<p>মহাপুৰুষ শ্ৰীশ্ৰী মাধৱদেৱৰ&nbsp;বিৰচিত নামঘোষা</p>\r\n\r\n<p>পাঠ কৰিছে সুৰেশ বৰুৱা</p>\r\n', '', '0', '0', 'as', 46, '2025-03-14 15:46:19', '2025-03-25 09:43:23'),
(100, 'Namghosha', '<p data-end=\"58\" data-start=\"0\"><em data-end=\"56\" data-start=\"0\">\"Namghosha\" composed by Mahapurush Shri Shri Madhavdev</em></p>\r\n\r\n<p data-end=\"85\" data-is-last-node=\"\" data-is-only-node=\"\" data-start=\"60\">Narrated by Suresh Baruah</p>\r\n', '', '0', '0', 'en', 46, '2025-03-14 15:46:19', '2025-03-25 09:43:52'),
(103, 'কেৰিয়াৰৰ পৰা জীৱনলৈ', '<p>কেৰিয়াৰৰ পৰা জীৱনলৈ</p>\r\n', '', '0', '0', 'as', 48, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(104, 'From Career to Life', '<p>From Career to Life</p>\r\n', '', '0', '0', 'en', 48, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(105, 'ঢোঁৰা কাউৰী আৰু টিপচী চৰাই', '<p>বিখ্যাত অসমীয়া লেখক লক্ষ্মীনাথ বেজবৰুৱাৰ দ্বাৰা সংকলিত বুঢ়ী আইৰ সাধু এখন জনপ্ৰিয় গল্প সংকলন। ঢোঁৰা কাউৰী আৰু টিপচী চৰাই বুঢ়ী আইৰ সাধু সংকলনৰ পৰা এটি গল্প।</p>\r\n', '', '0', '0', 'as', 49, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(106, 'Dhura Kauri aru Tiposi Sorai', '<p>Burhi Aai\'r Xadhu is a popular collection of stories compiled by the famous Assamese author Lakshminath Bezbaruah. Dhura Kauri aru Tiposi Sorai is a story from the collection of Burhi Aai\'r Xadhu.</p>\r\n', '', '0', '0', 'en', 49, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(107, 'হাইস্কুল শিক্ষান্ত পৰীক্ষাত উত্তীৰ্ণ হোৱাৰ পাছত উচ্চ শিক্ষা আৰু কেৰিয়াৰৰ সুযোগ', '<p>হাইস্কুল শিক্ষান্ত পৰীক্ষাত উত্তীৰ্ণ হোৱাৰ পাছত উচ্চ শিক্ষা আৰু কেৰিয়াৰৰ সুযোগৰ&nbsp;ওপৰত কিছু তথ্য&nbsp;।</p>\r\n', '', '0', '0', 'as', 50, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(108, 'Opportunities for higher education and career after passing the high school final examination', '<p>Some information on opportunities for higher education and careers after passing the high school final examination.</p>\r\n', '', '0', '0', 'en', 50, '2025-03-14 15:46:19', '2025-03-14 15:46:19'),
(109, 'আকাশ চোৱা', '<p>নিৰুপমা বৰগোহাঞিৰ গল্প আকাশ চোৱা। পাঠ কৰিছে মৃদুল হালৈ।</p>\r\n', '', '0', '0', 'as', 51, '2025-03-19 17:00:59', '2025-03-19 17:00:59'),
(110, 'Akash Sua', '<p>The story <strong data-end=\"27\" data-start=\"10\">\"Akash Sua\"</strong> by <strong data-end=\"53\" data-start=\"31\">Nirupama Borgohain</strong>. Narrated by <strong data-end=\"83\" data-start=\"67\">Mridul Haloi</strong>.</p>\r\n', '', '0', '0', 'en', 51, '2025-03-19 17:00:59', '2025-03-19 17:00:59'),
(111, 'হৃদভাষ', '<p>উপাসনা শইকীয়াৰ গল্প হৃদভাষ। পাঠ কৰিছে বিজয় লক্ষ্মী বৰা।</p>\r\n', '', '0', '0', 'as', 52, '2025-03-19 17:43:41', '2025-03-19 17:43:41'),
(112, 'Hridbhakh', '<p>The story <strong data-end=\"25\" data-start=\"10\">\"Hridbhakh\"</strong> by <strong data-end=\"47\" data-start=\"29\">Upasana Saikia</strong>. Narrated by <strong data-end=\"81\" data-start=\"61\">Bijoy Laxmi Bora</strong>.</p>\r\n', '', '0', '0', 'en', 52, '2025-03-19 17:43:41', '2025-03-19 17:43:41'),
(113, 'এজনী মালিনী আৰু এজোপা ফুল', '<p>এজনী মালিনী আৰু এজোপা ফুল&nbsp;– প্ৰসিদ্ধ অসমীয়া লেখক <strong>লক্ষ্মীনাথ বেজবৰুৱা</strong>ৰ এটা গল্প। <strong data-end=\"103\" data-start=\"87\">মৌচুমী শৰ্মা</strong>ৰ পাঠ।</p>\r\n', '', '0', '0', 'as', 53, '2025-03-25 17:53:22', '2025-03-25 17:53:22'),
(114, 'Ajoni Malini Aru Ajupa Phool', '<p>Ajoni Malini Aru Ajupa Phool - A story of&nbsp;famous Assamese author <strong>Lakshminath Bezbaruah</strong>.&nbsp;Reading by&nbsp; <strong>Mousumi Sharma</strong>.</p>\r\n', '', '0', '0', 'en', 53, '2025-03-25 17:53:22', '2025-03-25 17:53:22'),
(115, 'ভিন্ন সমতল', '<p>শীলভদ্ৰৰ&nbsp;গল্প&nbsp;<strong>ভিন্ন সমতল</strong>।&nbsp;পাঠ কৰিছে&nbsp;<b>মৃদুল হালৈ</b>।</p>\r\n', '', '0', '0', 'as', 54, '2025-03-26 17:16:03', '2025-03-26 17:16:03'),
(116, 'Bhinna Somatal', '<p>Shilabhadra\'s story <strong><em data-end=\"37\" data-start=\"21\">Bhinna Somatal</em></strong>. Narrated by <strong>Mridul Haloi</strong>.</p>\r\n', '', '0', '0', 'en', 54, '2025-03-26 17:16:03', '2025-03-26 17:16:03'),
(117, 'এল পেটাৰ্ণ', '<p>জুৰি বৰুৱাৰ গল্প <strong>এল পেটাৰ্ণ</strong> । পাঠ কৰিছে <strong>পল্লৱী চৌধুৰী</strong> ।</p>\r\n', '', '0', '0', 'as', 55, '2025-03-26 18:00:20', '2025-03-26 18:00:20'),
(118, 'L Pattern', '<p>The story <strong data-end=\"25\" data-start=\"10\">\"L Pattern\"</strong> by <strong data-end=\"44\" data-start=\"29\">Juri Baruah</strong>. Narrated by <strong data-end=\"79\" data-start=\"58\">Pallabi Choudhury</strong>.</p>\r\n', '', '0', '0', 'en', 55, '2025-03-26 18:00:20', '2025-03-26 18:00:20'),
(119, 'প্ৰাচীন ভাৰতৰ বিশ্ববিদ্যালয়', '<p>এই গ্ৰন্থখন পণ্ডিতসকলে সাংস্কৃতিকভাৱে গুৰুত্বপূৰ্ণ বুলি বাছি লৈছে, আৰু আমি জনা সভ্যতাৰ জ্ঞানৰ ভিত্তিৰ অংশ। এই কামটো মূল শিল্পকৰ্মৰ পৰা পুনৰুত্পাদন কৰা হৈছিল, আৰু মূল কামৰ প্ৰতি যিমান পাৰি সত্য হৈ আছে। গতিকে আপুনি মূল কপিৰাইটৰ উল্লেখ, পুথিভঁৰালৰ ডাকটিকট (যিহেতু এই ৰচনাসমূহৰ বেছিভাগেই আমাৰ বিশ্বৰ আটাইতকৈ গুৰুত্বপূৰ্ণ পুথিভঁৰালসমূহত ৰখা হৈছে), আৰু অন্যান্য সংকেতসমূহ ৰচনাখনত দেখা পাব।</p>\r\n\r\n<p>এই কামটো আমেৰিকা যুক্তৰাষ্ট্ৰৰ ৰাজহুৱা ডমেইনত আছে, আৰু সম্ভৱতঃ অন্যান্য ৰাষ্ট্ৰতো। আমেৰিকাৰ ভিতৰত, আপুনি এই কামটো মুক্তভাৱে কপি আৰু বিতৰণ কৰিব পাৰে, কিয়নো কোনো সত্তাৰ (ব্যক্তিগত বা কৰ্পৰেট) কৰ্মৰ মূখ্য অংশৰ ওপৰত কপিৰাইট নাই।</p>\r\n', '', '0', '0', 'as', 56, '2025-03-26 18:19:58', '2025-03-26 18:19:58'),
(120, 'University of Ancient India', '<p>This work has been selected by scholars as being culturally important, and is part of the knowledge base of civilization as we know it. This work was reproduced from the original artifact, and remains as true to the original work as possible. Therefore, you will see the original copyright references, library stamps (as most of these works have been housed in our most important libraries around the world), and other notations in the work.<br />\r\n<br />\r\nThis work is in the public domain in the United States of America, and possibly other nations. Within the United States, you may freely copy and distribute this work, as no entity (individual or corporate) has a copyright on the body of the work.</p>\r\n', '', '0', '0', 'en', 56, '2025-03-26 18:19:58', '2025-03-26 18:19:58'),
(121, 'বিনিময়', '<p>ডাঃ নয়নজ্যোতি শর্মাৰ গল্প <strong>বিনিময় </strong>। পাঠ কৰিছে বলেন দত্ত ।</p>\r\n', '', '0', '0', 'as', 57, '2025-03-26 18:43:47', '2025-03-26 18:43:47'),
(122, 'Binimoy', '<p>The story <strong data-end=\"23\" data-start=\"10\">\"Binimoy\"</strong> by <strong data-end=\"52\" data-start=\"27\">Dr. Nayanjyoti Sharma</strong>. Narrated by <strong data-end=\"81\" data-start=\"66\">Balen Dutta</strong>.</p>\r\n', '', '0', '0', 'en', 57, '2025-03-26 18:43:47', '2025-03-26 18:43:47'),
(123, 'পমি যায় যি', '<p><b>জুৰি বৰুৱাৰ গল্প&nbsp;<strong>পমি যায় যি</strong>&nbsp;। পাঠ কৰিছে&nbsp;<strong>পল্লৱী চৌধুৰী</strong>&nbsp;।</b></p>\r\n', '', '0', '0', 'as', 58, '2025-03-27 18:34:02', '2025-03-27 18:34:02'),
(124, 'Pomi Jai Ji', '<p><strong>The story <em data-end=\"25\" data-start=\"10\">\"Pomi Jai Ji\"</em> by Juri Baruah. Narrated by Pallabi Choudhury.</strong></p>\r\n', '', '0', '0', 'en', 58, '2025-03-27 18:34:02', '2025-03-27 18:34:02'),
(125, 'ছবিৰ ভ্ৰম, ভ্ৰমৰ ছবি', '<p><strong>জিন্তু গীতাৰ্থৰ গল্প ছবিৰ ভ্ৰম, ভ্ৰমৰ ছবি</strong>&nbsp;<b><b>। পাঠ কৰিছে&nbsp;</b></b><strong>সুদৰ্শন কৌশিক শৰ্মা</strong><b><b>&nbsp;।</b></b></p>\r\n', '', '0', '0', 'as', 59, '2025-03-27 19:01:49', '2025-03-27 19:01:49'),
(126, 'Chobir Bhram, Bhramor Chobi', '<p><strong>The story <em data-end=\"41\" data-start=\"10\">\"Chobir Bhram, Bhramor Chobi\"</em> by Jintu Gitartha. Narrated by Sudarshan Kaushik Sharma.</strong></p>\r\n', '', '0', '0', 'en', 59, '2025-03-27 19:01:49', '2025-03-27 19:01:49'),
(127, 'দিনান্তৰ খোজ', '<p><strong>জিতুমনি বৰাৰ গল্প দিনান্তৰ খোজ । পাঠ কৰিছে সুদৰ্শন কৌশিক শৰ্মা ।</strong></p>\r\n', '', '0', '0', 'as', 60, '2025-03-27 19:12:59', '2025-03-27 19:12:59'),
(128, 'Dinantor Khoj', '<p><strong>The story <em data-end=\"27\" data-start=\"10\">\"Dinantor Khoj\"</em> by Jitumoni Bora. Narrated by Sudarshan Kaushik Sharma.</strong></p>\r\n', '', '0', '0', 'en', 60, '2025-03-27 19:12:59', '2025-03-27 19:12:59'),
(129, 'দ্বিখণ্ডিত', '<p><strong>অংকিতা বৰুৱাৰ গল্প দ্বিখণ্ডিত ।</strong> <strong>পাঠ</strong> <strong>কৰিছে</strong>&nbsp;<strong>পল্লৱী</strong> <strong>চৌধুৰী</strong>&nbsp;<strong>।</strong></p>\r\n', '', '0', '0', 'as', 61, '2025-03-28 17:58:29', '2025-03-28 17:58:29'),
(130, 'Dwikhandito', '<p><strong>The story Dwikhandito by Ankita Baruah. Narrated by Pallavi Choudhury.</strong></p>\r\n', '', '0', '0', 'en', 61, '2025-03-28 17:58:29', '2025-03-28 17:58:29'),
(131, 'সংশ্ৰৱশূণ্য', '<p><strong>অংকিতা বৰুৱাৰ গল্প সংশ্ৰৱশূণ্য । পাঠ কৰিছে&nbsp;পল্লৱী চৌধুৰী&nbsp;।</strong></p>\r\n', '', '0', '0', 'as', 62, '2025-03-28 18:17:01', '2025-03-28 18:17:01'),
(132, 'Sangshrava Sunya', '<p><strong>The story Sangshrava Sunya by Ankita Baruah. Narrated by Pallavi Choudhury.</strong></p>\r\n', '', '0', '0', 'en', 62, '2025-03-28 18:17:01', '2025-03-28 18:17:01'),
(133, 'অন্তঃস্বৰ', '<p><strong>গুৰমাইল সিঙৰ গল্প অন্তঃস্বৰ । পাঠ কৰিছে গৌৰাংগ বৰা ।</strong></p>\r\n', '', '0', '0', 'as', 63, '2025-04-02 15:05:34', '2025-04-02 15:05:34'),
(134, 'Antahswar', '<p><strong>The story <em data-end=\"21\" data-start=\"10\">Antahswar</em> by Gurmail Singh. Narrated by Gauranga Bora.</strong></p>\r\n', '', '0', '0', 'en', 63, '2025-04-02 15:05:34', '2025-04-02 15:05:34'),
(135, 'অসমীয়া ছোৱালীৰ উক্তি’ৰ কিয়দংশ', '<p><strong>জ্যোতি প্ৰসাদ আগৰৱালাৰ কবিতা অসমীয়া ছোৱালীৰ উক্তি’ৰ কিয়দংশ । আবৃত্তি - ডঃ বিদূলা শৰ্মা ।</strong></p>\r\n', '', '0', '0', 'as', 64, '2025-04-03 17:59:18', '2025-04-03 17:59:18'),
(136, 'A Portion of \'Axomiya Suwalir Ukti', '<p data-end=\"97\" data-start=\"0\"><strong>A portion of Jyoti Prasad Agarwala\'s poem <strong data-end=\"68\" data-start=\"42\">\"</strong>A Portion of \'Axomiya Suwalir Ukti<strong data-end=\"68\" data-start=\"42\">\".</strong></strong></p>\r\n\r\n<p data-end=\"136\" data-start=\"99\"><strong><strong data-end=\"117\" data-start=\"99\">Recitation by:</strong> Dr. Bidula Sharma.</strong></p>\r\n', '', '0', '0', 'en', 64, '2025-04-03 17:59:18', '2025-04-03 17:59:18'),
(137, 'কাঞ্চনজঙ্ঘাৰ বুৰঞ্জী', '<p><strong>জ্যোতি প্ৰসাদ আগৰৱালাৰ কবিতা কাঞ্চনজঙ্ঘাৰ বুৰঞ্জী। আবৃত্তি - ডঃ বিনীতা বৰা দেৱ চৌধুৰী ।</strong></p>\r\n', '', '0', '0', 'as', 65, '2025-04-03 18:15:46', '2025-04-03 18:15:46'),
(138, 'Kanchanjanghar Buronji', '<p data-end=\"65\" data-start=\"0\">The poem <strong data-end=\"37\" data-start=\"9\">\"Kanchanjanghar Buronji\"</strong> by Jyoti Prasad Agarwala.</p>\r\n\r\n<p data-end=\"116\" data-start=\"67\"><strong data-end=\"85\" data-start=\"67\">Recitation by:</strong> Dr. Binita Bora Dev Choudhury.</p>\r\n', '', '0', '0', 'en', 65, '2025-04-03 18:15:46', '2025-04-03 18:15:46'),
(139, 'মানুহ জনৰ নাম নেলছন মেণ্ডেলা', '<p><strong>বিৰিঞ্চি কুমাৰ ভট্টাচাৰ্যৰ&nbsp;কবিতা&nbsp;মানুহ জনৰ নাম নেলছন মেণ্ডেলা&nbsp;।&nbsp;আবৃত্তি - উপম শইকীয়া</strong><b><strong><strong> ।</strong></strong></b></p>\r\n', '', '0', '0', 'as', 66, '2025-04-04 16:59:56', '2025-04-04 16:59:56'),
(140, 'Manuh Jonor Naam Nelson Mandela', '<p>The poem <strong data-end=\"46\" data-start=\"9\">\"Manuh Jonor Naam Nelson Mandela\"</strong> by <strong data-end=\"81\" data-start=\"50\">Birinchi Kumar Bhattacharya</strong>.<br data-end=\"85\" data-start=\"82\" />\r\nRecitation by <strong data-end=\"114\" data-start=\"99\">Upam Saikia</strong>.</p>\r\n', '', '0', '0', 'en', 66, '2025-04-04 16:59:56', '2025-04-04 16:59:56'),
(141, 'বিশ্বৰ ছন্দে ছন্দে', '<p><strong>বিষ্ণুপ্ৰসাদ ৰাভাৰ কবিতা বিশ্বৰ ছন্দে ছন্দে । আবৃত্তি - উপম শইকীয়া ।</strong></p>\r\n', '', '0', '0', 'as', 67, '2025-04-04 17:09:09', '2025-04-04 17:09:09'),
(142, 'Bishwar Chande Chande', '<p>The poem <strong data-end=\"36\" data-start=\"9\">\"Bishwar Chande Chande\"</strong> by <strong data-end=\"63\" data-start=\"40\">Bishnu Prasad Rabha</strong>.<br data-end=\"67\" data-start=\"64\" />\r\nRecitation by <strong data-end=\"96\" data-start=\"81\">Upam Saikia</strong>.</p>\r\n', '', '0', '0', 'en', 67, '2025-04-04 17:09:09', '2025-04-04 17:09:09'),
(143, 'মানুহে মানুহ খোৱা', '<p><strong>ফণীন্দ্ৰ কুমাৰ দেৱ চৌধুৰীৰ কবিতা মানুহে মানুহ খোৱা । আবৃত্তি - ডঃ বিনীতা বৰা দেৱ চৌধুৰী ।</strong></p>\r\n', '', '0', '0', 'as', 68, '2025-04-04 17:24:27', '2025-04-04 17:24:27'),
(144, 'Manuhe Manuh Khua', '<p>The poem <strong data-end=\"32\" data-start=\"9\">\"Manuhe Manuh Khua\"</strong> by <strong data-end=\"69\" data-start=\"36\">Phanindra Kumar Dev Choudhury</strong>.<br data-end=\"73\" data-start=\"70\" />\r\nRecitation by <strong data-end=\"120\" data-start=\"87\">Dr. Binita Bora Dev Choudhury</strong>.</p>\r\n', '', '0', '0', 'en', 68, '2025-04-04 17:24:27', '2025-04-04 17:24:27'),
(145, 'কবিতা তুমিয়েই', '<p><strong>ডঃ ৰাতুল ভট্টাচাৰ্যৰ গল্প কবিতা তুমিয়েই । পাঠ কৰিছে বলেন দত্ত ।</strong></p>\r\n', '', '0', '0', 'as', 69, '2025-04-04 17:38:05', '2025-04-04 17:38:05'),
(146, 'Kabita Tumiyei', '<p>The story/poem <strong data-end=\"28\" data-start=\"15\">\"Kabita Tumiyei\"</strong> by <strong data-end=\"58\" data-start=\"32\">Dr. Ratul Bhattacharya</strong>.<br data-end=\"62\" data-start=\"59\" />\r\nRecitation by <strong data-end=\"91\" data-start=\"76\">Balen Dutta</strong>.</p>\r\n', '', '0', '0', 'en', 69, '2025-04-04 17:38:05', '2025-04-04 17:38:05'),
(147, 'বেদুইন চৰাই', '<p><strong>উপাসনা শইকীয়াৰ গল্প বেদুইন চৰাই। পাঠ কৰিছে বিজয়লক্ষ্মী বৰা।</strong></p>\r\n', '', '0', '0', 'as', 70, '2025-04-04 18:07:21', '2025-04-04 18:07:21'),
(148, 'Beduin Sorai', '<p>The story <strong data-end=\"29\" data-start=\"10\">\"Beduin Sorai\"</strong> by <strong data-end=\"51\" data-start=\"33\">Upasana Saikia</strong>.<br data-end=\"55\" data-start=\"52\" />\r\nNarrated by<b>&nbsp;<strong data-end=\"81\" data-start=\"61\">Bijoy Laxmi Bora</strong>.</b></p>\r\n', '', '0', '0', 'en', 70, '2025-04-04 18:07:21', '2025-04-04 18:07:21'),
(149, 'ভঙা টোপনিৰ ৰঙা জোন', '<p><strong>নিৰ্মালি নয়নতৰাৰ গল্প ভঙা টোপনিৰ ৰঙা জোন । পাঠ কৰিছে সুদৰ্শন কৌশিক শৰ্মা ।</strong></p>\r\n', '', '0', '0', 'as', 71, '2025-04-07 17:40:24', '2025-04-07 17:40:24'),
(150, 'Bhonga Tuponir Ronga Jun', '<p><strong>Nirmali Nayantara\'s story <em data-end=\"109\" data-start=\"80\">Bhonga Tuponir Ronga Jun</em>. Narrated by Sudarshan Kaushik Sharma.</strong></p>\r\n', '', '0', '0', 'en', 71, '2025-04-07 17:40:24', '2025-04-07 17:40:24'),
(151, 'জাগনৰ গল্প', '<p><strong>সুপ্রকাশ ভূঞাৰ গল্প জাগনৰ গল্প । পাঠ কৰিছে সুদৰ্শন কৌশিক শৰ্মা ।</strong></p>\r\n', '', '0', '0', 'as', 72, '2025-04-07 18:33:42', '2025-04-07 18:33:42'),
(152, 'Jagonor Golpo', '<p><strong>Suprakash Bhuyan\'s story <em data-end=\"77\" data-start=\"62\">Jagonor Golpo</em>. Narrated by Sudarshan Kaushik Sharma.</strong></p>\r\n', '', '0', '0', 'en', 72, '2025-04-07 18:33:42', '2025-04-07 18:33:42'),
(153, 'ফ্ৰাং-মৈ-দাম বা চমুকৈ মৈ-দাম', '<p><b>ফ্ৰাং-মৈ-দাম</b>&nbsp;বা চমুকৈ&nbsp;<b>মৈ-দাম-</b></p>\r\n\r\n<p>শুভলক্ষ্মী বুঢ়াগোহাঁই</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '0', '0', 'as', 73, '2025-04-11 12:26:29', '2025-04-11 12:26:29'),
(154, 'Moidam ', '<p>Frang-Mai-Dam or Moidam for short is&nbsp;<em>a traditional tumulus of the Ahom religion</em>. The royal maidams of Charaideo are listed as UNESCO world heritage site. Recited by Subhalakshmi Buragohain,Hyderbad.</p>\r\n', '', '0', '0', 'en', 73, '2025-04-11 12:26:29', '2025-04-11 12:26:29'),
(155, 'ওলট পালট', '<h3 itemprop=\"name\">অতুল চন্দ্ৰ হাজৰিকাৰ কবিতা ওলট পালট । আবৃত্তি - মৌচুমী শৰ্মা ।</h3>\r\n', '', '0', '0', 'as', 74, '2025-04-11 12:36:46', '2025-04-14 05:53:58'),
(156, 'Ulot Palot', '<p>The poem \"Ulot Palot\" by Atul Chandra Hazarika. Recitation by: Mousumi Sharma.</p>\r\n', '', '0', '0', 'en', 74, '2025-04-11 12:36:46', '2025-04-14 05:53:58'),
(157, 'কেৰিয়াৰৰ পৰা জীৱনলৈ', '<p><strong>বিষয় :</strong>&nbsp;কেৰিয়াৰ&nbsp;আৰু আমাৰ সপোনবোৰ&nbsp;।&nbsp;</p>\r\n\r\n<p><strong>ৰচনা&nbsp;আৰু পাঠ :</strong>&nbsp;ড° প্ৰাঞ্জল কলিতা&nbsp;।</p>\r\n', '', '0', '0', 'as', 75, '2025-04-16 17:32:59', '2025-04-16 17:32:59'),
(158, 'From Career to Life', '<p><strong data-end=\"66\" data-start=\"56\">Topic:</strong> <em data-end=\"90\" data-start=\"67\">Career and Our Dreams</em><br data-end=\"93\" data-start=\"90\" />\r\n<strong data-end=\"121\" data-start=\"93\">Composition and Reading:</strong> <em data-end=\"142\" data-start=\"122\">Dr. Pranjal Kalita</em></p>\r\n', '', '0', '0', 'en', 75, '2025-04-16 17:32:59', '2025-04-16 17:32:59'),
(161, 'বিশালদীপ কাকতিৰ সৈতে শিকোঁ আহক Spoken ENGLISH', '<p><strong>বিষয়</strong><strong> : Parts of Speech</strong></p>\r\n', '', '0', '0', 'as', 77, '2025-04-17 12:15:20', '2025-04-17 12:15:20'),
(162, 'Let\'s learn Spoken English with Bishaldeep Kakoti', '<p><strong>Topic:&nbsp;Parts of Speech</strong></p>\r\n', '', '0', '0', 'en', 77, '2025-04-17 12:15:20', '2025-04-17 12:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages`
--

CREATE TABLE `seo_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `seo_pages`
--

INSERT INTO `seo_pages` (`id`, `name`) VALUES
(1, 'home'),
(2, 'checkout'),
(3, 'contacts'),
(4, 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages_translations`
--

CREATE TABLE `seo_pages_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `page_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_authors`
--

CREATE TABLE `shop_authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_for` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `shop_authors`
--

INSERT INTO `shop_authors` (`id`, `sub_for`, `position`, `created_at`, `updated_at`) VALUES
(5, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(6, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(7, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(8, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(9, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(10, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(11, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(12, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(13, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(14, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(15, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(33, 0, 0, '2025-03-19 16:42:58', '2025-03-19 16:42:58'),
(17, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(18, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(20, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(32, 0, 0, '2025-03-18 05:39:12', '2025-03-18 05:39:12'),
(23, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(24, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(25, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(26, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(27, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(28, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(29, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(30, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(31, 0, 0, '2025-03-14 15:47:22', '2025-03-14 15:47:22'),
(34, 0, 0, '2025-03-19 16:46:16', '2025-03-19 16:46:16'),
(36, 0, 0, '2025-03-26 17:08:30', '2025-03-26 17:08:30'),
(37, 0, 0, '2025-03-26 17:54:59', '2025-03-26 17:54:59'),
(38, 0, 0, '2025-03-26 18:40:28', '2025-03-26 18:40:28'),
(39, 0, 0, '2025-03-27 18:57:33', '2025-03-27 18:57:33'),
(40, 0, 0, '2025-03-27 19:10:25', '2025-03-27 19:10:25'),
(41, 0, 0, '2025-03-28 17:47:56', '2025-03-28 17:47:56'),
(42, 0, 0, '2025-04-02 15:02:56', '2025-04-02 15:02:56'),
(43, 0, 0, '2025-04-03 17:24:12', '2025-04-03 17:24:12'),
(44, 0, 0, '2025-04-04 16:53:53', '2025-04-04 16:53:53'),
(45, 0, 0, '2025-04-04 17:02:58', '2025-04-04 17:02:58'),
(46, 0, 0, '2025-04-04 17:18:07', '2025-04-04 17:18:07'),
(47, 0, 0, '2025-04-04 17:35:04', '2025-04-04 17:35:04'),
(48, 0, 0, '2025-04-07 16:04:01', '2025-04-07 16:04:01'),
(49, 0, 0, '2025-04-07 17:35:49', '2025-04-07 17:35:49'),
(50, 0, 0, '2025-04-14 05:44:08', '2025-04-14 05:44:08'),
(51, 0, 0, '2025-04-16 17:52:02', '2025-04-16 17:52:02'),
(52, 0, 0, '2025-04-22 14:45:33', '2025-04-22 14:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `shop_authors_translations`
--

CREATE TABLE `shop_authors_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` varchar(255) NOT NULL,
  `author_address` varchar(255) NOT NULL,
  `author_mobile` varchar(255) NOT NULL,
  `author_email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `shop_authors_translations`
--

INSERT INTO `shop_authors_translations` (`id`, `name`, `abbr`, `for_id`, `author_address`, `author_mobile`, `author_email`, `created_at`, `updated_at`) VALUES
(28, 'ৰীতা চৌধুৰী', 'as', '5', 'Guwahati', '9999912345', 'test@gmail.com', '2025-03-14 15:48:27', '2025-03-25 18:38:45'),
(29, 'Rita Chowdhury', 'en', '5', 'Guwahati', '9999912345', 'test@gmail.com', '2025-03-14 15:48:27', '2025-03-25 18:40:15'),
(30, 'অনুৰাধা শর্মা পূজাৰী', 'as', '6', 'Guwahati', '9999912347', 'anuradha.pujari@example.com', '2025-03-14 15:48:27', '2025-03-25 18:39:05'),
(31, 'Anuradha Sharma Pujari', 'en', '6', 'Guwahati', '9999912347', 'anuradha.pujari@example.com', '2025-03-14 15:48:27', '2025-03-25 18:40:21'),
(32, 'কাঞ্চন বৰুৱা', 'as', '7', 'Guwahati', '9999912349', 'kanchan.barua@example.com', '2025-03-14 15:48:27', '2025-03-25 18:39:16'),
(33, 'Kanchan Barua', 'en', '7', 'Guwahati', '9999912349', 'kanchan.barua@example.com', '2025-03-14 15:48:27', '2025-03-25 18:40:26'),
(34, 'বীৰেন্দ্ৰ কুমাৰ ভট্টাচাৰ্য', 'as', '8', 'Guwahati', '9999912351', 'birendra.bhattacharya@example.com', '2025-03-14 15:48:27', '2025-03-25 18:39:33'),
(35, 'Birendra Kumar Bhattacharya', 'en', '8', 'Guwahati', '9999912351', 'birendra.bhattacharya@example.com', '2025-03-14 15:48:27', '2025-03-25 18:40:31'),
(36, 'মহীম বৰা', 'as', '9', 'Guwahati', '9999912353', 'mahim.bora@example.com', '2025-03-14 15:48:27', '2025-03-25 18:39:44'),
(37, 'Mahim Bora', 'en', '9', 'Guwahati', '9999912353', 'mahim.bora@example.com', '2025-03-14 15:48:27', '2025-03-25 18:40:40'),
(38, 'মামণি ৰয়ছম গোস্বামী', 'as', '10', 'Guwahati', '9999912354', 'mamoni.goswami@example.com', '2025-03-14 15:48:27', '2025-03-25 18:40:49'),
(39, 'Mamoni Raisom Goswami', 'en', '10', 'Guwahati', '9999912354', 'mamoni.goswami@example.com', '2025-03-14 15:48:27', '2025-03-25 18:40:52'),
(40, 'হোমেন বৰগোহাঁই', 'as', '11', 'Guwahati', '9999912355', 'homen.bargohain@example.com', '2025-03-14 15:48:27', '2025-03-25 18:40:59'),
(41, 'Homen Bargohain', 'en', '11', 'Guwahati', '9999912355', 'homen.bargohain@example.com', '2025-03-14 15:48:27', '2025-03-25 18:41:02'),
(42, 'হিৰেণ ভট্টাচাৰ্য', 'as', '12', 'Guwahati', '9999912356', 'hiren.bhattacharya@example.com', '2025-03-14 15:48:27', '2025-03-25 18:41:20'),
(43, 'Hiren Bhattacharya', 'en', '12', 'Guwahati', '9999912356', 'hiren.bhattacharya@example.com', '2025-03-14 15:48:27', '2025-03-25 18:41:23'),
(44, 'হিতেশ্বৰ বৰবৰুৱা', 'as', '13', 'Guwahati', '9999912357', 'hiteswar.borbaruah@example.com', '2025-03-14 15:48:27', '2025-03-25 18:41:31'),
(45, 'Hiteswar Borbaruah', 'en', '13', 'Guwahati', '9999912357', 'hiteswar.borbaruah@example.com', '2025-03-14 15:48:27', '2025-03-25 18:41:36'),
(46, 'ভবেন্দ্ৰ নাথ শইকীয়া', 'as', '14', 'Guwahati', '9999912358', 'bhabendra.saikia@example.com', '2025-03-14 15:48:27', '2025-03-25 18:41:42'),
(47, 'Bhabendra Nath Saikia', 'en', '14', 'Guwahati', '9999912358', 'bhabendra.saikia@example.com', '2025-03-14 15:48:27', '2025-03-25 18:41:49'),
(48, 'ছয়েদ আব্দুল মালিক', 'as', '15', 'Guwahati', '9999912359', 'syed.malik@example.com', '2025-03-14 15:48:27', '2025-03-25 18:41:56'),
(49, 'Syed Abdul Malik', 'en', '15', 'Guwahati', '9999912359', 'syed.malik@example.com', '2025-03-14 15:48:27', '2025-03-25 18:42:01'),
(52, 'চন্দনা গোস্বামী', 'as', '17', 'Guwahati', '9999912360', 'chandana.goswami@example.com', '2025-03-14 15:48:27', '2025-03-25 18:42:17'),
(53, 'Chandana Goswami', 'en', '17', 'Guwahati', '9999912360', 'chandana.goswami@example.com', '2025-03-14 15:48:27', '2025-03-25 18:42:29'),
(54, 'য়েছে দৰজে ঠংচি', 'as', '18', 'Arunachal Pradesh', '9999912361', 'yeshe.thongchi@example.com', '2025-03-14 15:48:27', '2025-03-25 18:42:41'),
(55, 'Yeshe Dorje Thongchi', 'en', '18', 'Arunachal Pradesh', '9999912361', 'yeshe.thongchi@example.com', '2025-03-14 15:48:27', '2025-03-25 18:42:44'),
(58, 'নয়নজ্যোতি ভট্টাচাৰ্য্য', 'as', '20', 'Guwhati', '9999912362', 'nayanjyoti.bhattacharyya@example.com', '2025-03-14 15:48:27', '2025-03-25 18:42:50'),
(59, 'Nayanjyoti Bhattacharyya', 'en', '20', 'Guwhati', '9999912362', 'nayanjyoti.bhattacharyya@example.com', '2025-03-14 15:48:27', '2025-03-25 18:42:53'),
(64, 'হিৰণপ্ৰভা দেৱী', 'as', '23', 'Guwahati', '9999912363', 'hiran.devi@example.com', '2025-03-14 15:48:27', '2025-03-25 18:42:59'),
(65, 'Hiran Prova Devi', 'en', '23', 'Guwahati', '9999912363', 'hiran.devi@example.com', '2025-03-14 15:48:27', '2025-03-25 18:43:02'),
(66, 'প্ৰাঞ্জল বৰুৱা', 'as', '24', 'Nagaon', '9999912364', 'pranjal.barua@example.com', '2025-03-14 15:48:27', '2025-03-25 18:43:10'),
(67, 'Pranjal Boruah', 'en', '24', 'Nagaon', '9999912364', 'pranjal.barua@example.com', '2025-03-14 15:48:27', '2025-04-11 12:51:50'),
(68, 'ড° পৰিতোষ চক্ৰৱৰ্তী', 'as', '25', 'Guwahati', '9999912365', 'paritosh.chakrabarty@example.com', '2025-03-14 15:48:27', '2025-03-25 18:43:25'),
(69, 'Dr. Paritosh Chakrabarty', 'en', '25', 'Guwahati', '9999912365', 'paritosh.chakrabarty@example.com', '2025-03-14 15:48:27', '2025-03-25 18:43:28'),
(70, 'অশোক কুমাৰ নাথ', 'as', '26', 'Guwahati', '9999912366', 'ashok.nath@example.com', '2025-03-14 15:48:27', '2025-03-25 18:43:33'),
(71, 'Ashok Kumar Nath', 'en', '26', 'Guwahati', '9999912366', 'ashok.nath@example.com', '2025-03-14 15:48:27', '2025-03-25 18:43:40'),
(72, 'ড° ভৱেশ দাস', 'as', '27', 'Guwahati', '9999912367', 'bhavesh.das@example.com', '2025-03-14 15:48:27', '2025-03-25 18:43:47'),
(73, 'Dr. Bhavesh Das', 'en', '27', 'Guwahati', '9999912367', 'bhavesh.das@example.com', '2025-03-14 15:48:27', '2025-03-25 18:43:51'),
(74, 'মহাপুৰুষ শ্ৰী শ্ৰী মাধৱদেৱ', 'as', '28', 'Assam', '9999912368', 'mail@example.com', '2025-03-14 15:48:27', '2025-03-25 18:43:58'),
(75, 'Mahapurush Sri Sri Madhabdev', 'en', '28', 'Assam', '9999912368', 'mail@example.com', '2025-03-14 15:48:27', '2025-03-25 18:44:03'),
(76, 'ড° প্ৰাঞ্জল কলিতা', 'as', '29', 'Assam', '9999912369', 'pranjal.kalita@example.com', '2025-03-14 15:48:27', '2025-03-25 18:44:12'),
(77, 'Dr. Pranjal Kalita', 'en', '29', 'Assam', '9999912369', 'pranjal.kalita@example.com', '2025-03-14 15:48:27', '2025-03-25 18:44:15'),
(78, 'লক্ষ্মীনাথ বেজবৰুৱা', 'as', '30', 'Assam', '9999912370', 'laxminath.bezbaruah@example.com', '2025-03-14 15:48:27', '2025-03-25 18:44:22'),
(79, 'Laxminath Bezbaruah', 'en', '30', 'Assam', '9999912370', 'laxminath.bezbaruah@example.com', '2025-03-14 15:48:27', '2025-03-25 18:44:25'),
(80, 'ড° বুলজিৎ বুঢ়াগোহাইঁ', 'as', '31', 'Assam', '9999912371', 'buljit.buragohain@example.com', '2025-03-14 15:48:27', '2025-03-25 18:44:31'),
(81, 'Dr. Buljit Buragohain', 'en', '31', 'Assam', '9999912371', 'buljit.buragohain@example.com', '2025-03-14 15:48:27', '2025-03-25 18:44:37'),
(82, 'নুৰ ইছলাম', 'as', '32', 'Guwahati', '9999912372', 'nur@gmail.com', '2025-03-18 05:39:12', '2025-03-25 18:44:42'),
(83, 'Nur Islam', 'en', '32', 'Guwahati', '9999912372', 'nur@gmail.com', '2025-03-18 05:39:12', '2025-03-25 18:44:46'),
(84, 'নিৰুপমা বৰগোহাঞি', 'as', '33', 'Guwahati', '9999912373', 'nirupama@gmail.com', '2025-03-19 16:42:58', '2025-03-25 18:44:54'),
(85, 'Nirupama Borgohain', 'en', '33', 'Guwahati', '9999912373', 'nirupama@gmail.com', '2025-03-19 16:42:58', '2025-03-25 18:44:56'),
(86, 'উপাসনা শইকীয়া', 'as', '34', 'Assam', '9999912374', 'upasana@gmail.com', '2025-03-19 16:46:16', '2025-03-25 18:45:02'),
(87, 'Upasana Saikia', 'en', '34', 'Assam', '9999912374', 'upasana@gmail.com', '2025-03-19 16:46:16', '2025-03-25 18:45:05'),
(90, 'শীলভদ্ৰ', 'as', '36', 'Dhubri', '9999912349', 'silabhadra@granthakatha.com', '2025-03-26 17:08:30', '2025-03-26 17:08:30'),
(91, 'Silabhadra', 'en', '36', 'Dhubri', '9999912349', 'silabhadra@granthakatha.com', '2025-03-26 17:08:30', '2025-03-26 17:08:30'),
(92, 'জুৰি বৰুৱা', 'as', '37', 'Guwahati', '9999999966', 'juri@granthakatha.com', '2025-03-26 17:54:59', '2025-03-26 17:54:59'),
(93, 'Juri Baruah', 'en', '37', 'Guwahati', '9999999966', 'juri@granthakatha.com', '2025-03-26 17:54:59', '2025-03-26 17:54:59'),
(94, 'ডাঃ নয়নজ্যোতি শর্মা', 'as', '38', 'Guwahati', '9999995999', 'nayanjyoti@granthakatha.com', '2025-03-26 18:40:28', '2025-03-26 18:40:28'),
(95, 'Dr. Nayanjyoti Sarma', 'en', '38', 'Guwahati', '9999995999', 'nayanjyoti@granthakatha.com', '2025-03-26 18:40:28', '2025-03-26 18:40:28'),
(96, 'জিন্তু গীতাৰ্থ', 'as', '39', 'Assam', '9999699999', 'jintu@granthakatha.com', '2025-03-27 18:57:33', '2025-03-27 18:57:33'),
(97, 'Jintu Gitartha', 'en', '39', 'Assam', '9999699999', 'jintu@granthakatha.com', '2025-03-27 18:57:33', '2025-03-27 18:57:33'),
(98, 'জিতুমনি বৰা', 'as', '40', 'Assam', '9999999899', 'jitumoni@granthakatha.com', '2025-03-27 19:10:25', '2025-03-27 19:10:25'),
(99, 'Jitumoni Bora', 'en', '40', 'Assam', '9999999899', 'jitumoni@granthakatha.com', '2025-03-27 19:10:25', '2025-03-27 19:10:25'),
(100, 'অংকিতা বৰুৱা', 'as', '41', 'Assam', '9999997799', 'ankita@granthakatha.com', '2025-03-28 17:47:56', '2025-03-28 17:47:56'),
(101, 'Ankita Baruah', 'en', '41', 'Assam', '9999997799', 'ankita@granthakatha.com', '2025-03-28 17:47:56', '2025-03-28 17:47:56'),
(102, 'গুৰমাইল সিঙ', 'as', '42', 'Assam', '9999889999', 'gurmail@granthakatha.com', '2025-04-02 15:02:56', '2025-04-02 15:02:56'),
(103, 'Gurmail Singh', 'en', '42', 'Assam', '9999889999', 'gurmail@granthakatha.com', '2025-04-02 15:02:56', '2025-04-02 15:02:56'),
(104, 'জ্যোতি প্ৰসাদ আগৰৱালা', 'as', '43', 'Assam', '9999778999', 'jyotiprasad@granthakatha.com', '2025-04-03 17:24:12', '2025-04-03 17:24:12'),
(105, 'Jyoti Prasad Agarwala', 'en', '43', 'Assam', '9999778999', 'jyotiprasad@granthakatha.com', '2025-04-03 17:24:12', '2025-04-03 17:24:12'),
(106, 'বিৰিঞ্চি কুমাৰ ভট্টাচাৰ্য', 'as', '44', 'Assam', '9999934559', 'birinchibhattacharya@granthakatha.com', '2025-04-04 16:53:53', '2025-04-04 16:53:53'),
(107, 'Birinchi Kumar Bhattacharya', 'en', '44', 'Assam', '9999934559', 'birinchibhattacharya@granthakatha.com', '2025-04-04 16:53:53', '2025-04-04 16:53:53'),
(108, 'বিষ্ণুপ্ৰসাদ ৰাভা', 'as', '45', 'Assam', '9999912379', 'bishnurabha@granthakatha.com', '2025-04-04 17:02:58', '2025-04-04 17:02:58'),
(109, 'Bishnu Prasad Rabha', 'en', '45', 'Assam', '9999912379', 'bishnurabha@granthakatha.com', '2025-04-04 17:02:58', '2025-04-04 17:02:58'),
(110, 'ফণীন্দ্ৰ কুমাৰ দেৱ চৌধুৰী', 'as', '46', 'Assam', '9999911349', 'phanindrakumar@granthakatha.com', '2025-04-04 17:18:07', '2025-04-04 17:18:07'),
(111, 'Phanindra Kumar Dev Choudhury', 'en', '46', 'Assam', '9999911349', 'phanindrakumar@granthakatha.com', '2025-04-04 17:18:07', '2025-04-04 17:18:07'),
(112, 'ডঃ ৰাতুল ভট্টাচাৰ্য', 'as', '47', 'Assam', '9999912549', 'ratulbhattacharya@granthakatha.com', '2025-04-04 17:35:04', '2025-04-04 17:35:04'),
(113, 'Dr. Ratul Bhattacharya', 'en', '47', 'Assam', '9999912549', 'ratulbhattacharya@granthakatha.com', '2025-04-04 17:35:04', '2025-04-04 17:35:04'),
(114, 'সুপ্রকাশ ভূঞা', 'as', '48', 'Assam', '9999909999', 'suprakash@granthakatha.com', '2025-04-07 16:04:01', '2025-04-07 16:04:01'),
(115, 'Suprakash Bhuyan', 'en', '48', 'Assam', '9999909999', 'suprakash@granthakatha.com', '2025-04-07 16:04:01', '2025-04-07 16:04:01'),
(116, 'নিৰ্মালি নয়নতৰা', 'as', '49', 'Assam', '9990999999', 'nirmali@granthakatha.com', '2025-04-07 17:35:49', '2025-04-07 17:35:49'),
(117, 'Nirmali Nayantora', 'en', '49', 'Assam', '9990999999', 'nirmali@granthakatha.com', '2025-04-07 17:35:49', '2025-04-07 17:35:49'),
(118, 'অতুল চন্দ্ৰ হাজৰিকা', 'as', '50', 'Assam', '9959999999', 'atulchandra@granthakatha.com', '2025-04-14 05:44:08', '2025-04-14 05:44:08'),
(119, 'Atul Chandra Hazarika', 'en', '50', 'Assam', '9959999999', 'atulchandra@granthakatha.com', '2025-04-14 05:44:08', '2025-04-14 05:44:08'),
(120, 'বিশালদীপ কাকতি', 'as', '51', 'Assam', '9949999999', 'bishaldeep@granthakatha.com', '2025-04-16 17:52:02', '2025-04-16 17:52:02'),
(121, 'Bishaldeep Kakoti', 'en', '51', 'Assam', '9949999999', 'bishaldeep@granthakatha.com', '2025-04-16 17:52:02', '2025-04-16 17:52:02'),
(122, 'শুভলক্ষ্মী বুঢ়াগোহাঁই', 'as', '52', 'Assam', '9199999999', 'subhalakshmi@granthakatha.com', '2025-04-22 14:45:33', '2025-04-22 14:45:33'),
(123, 'Subhalakshmi Buragohain', 'en', '52', 'Assam', '9199999999', 'subhalakshmi@granthakatha.com', '2025-04-22 14:45:33', '2025-04-22 14:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_for` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `sub_for`, `position`, `created_at`, `updated_at`) VALUES
(4, 0, 2, '2025-03-14 15:49:36', '2025-03-14 17:19:12'),
(3, 0, 1, '2025-03-14 15:49:36', '2025-03-14 17:19:10'),
(5, 0, 3, '2025-03-14 15:49:36', '2025-03-14 17:19:15'),
(6, 0, 4, '2025-03-14 15:49:36', '2025-03-14 17:19:18'),
(7, 0, 5, '2025-03-14 15:49:36', '2025-03-14 17:19:21'),
(8, 0, 6, '2025-03-14 15:49:36', '2025-03-14 17:19:24'),
(9, 0, 7, '2025-03-14 15:49:36', '2025-03-14 17:19:27'),
(10, 0, 8, '2025-03-14 15:49:36', '2025-03-14 17:19:31'),
(11, 0, 9, '2025-03-14 15:49:36', '2025-03-14 17:19:34'),
(12, 0, 10, '2025-03-14 15:49:36', '2025-03-14 17:19:37'),
(13, 0, 11, '2025-03-14 15:49:36', '2025-03-14 17:19:39'),
(14, 0, 12, '2025-03-14 15:49:36', '2025-03-14 17:19:42'),
(15, 0, 13, '2025-03-14 15:49:36', '2025-03-14 17:19:46'),
(16, 0, 14, '2025-03-14 15:49:36', '2025-03-14 17:19:50'),
(17, 0, 15, '2025-03-14 15:49:36', '2025-03-14 17:19:54'),
(18, 0, 16, '2025-03-14 15:49:36', '2025-03-14 17:19:58'),
(19, 0, 17, '2025-03-14 15:49:36', '2025-03-14 17:20:03'),
(20, 0, 18, '2025-03-14 15:49:36', '2025-03-14 17:20:07'),
(21, 0, 19, '2025-03-14 15:49:36', '2025-03-14 17:20:10'),
(22, 0, 0, '2025-04-09 13:06:16', '2025-04-09 13:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories_translations`
--

CREATE TABLE `shop_categories_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `shop_categories_translations`
--

INSERT INTO `shop_categories_translations` (`id`, `name`, `abbr`, `for_id`, `created_at`, `updated_at`) VALUES
(6, 'Competitive Exam', 'as', 2, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(7, 'Competitive Exam', 'en', 2, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(11, 'উপন্যাস', 'as', 3, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(12, 'Novel', 'en', 3, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(13, 'গল্প', 'as', 4, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(14, 'Tale', 'en', 4, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(15, 'ৰহস্য', 'as', 5, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(16, 'Mystery', 'en', 5, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(17, 'জীবনী', 'as', 6, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(18, 'Biography', 'en', 6, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(19, 'কবিতা', 'as', 7, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(20, 'Poem', 'en', 7, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(21, 'হৰৰ কাহিনী', 'as', 8, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(22, 'Horror Story', 'en', 8, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(23, 'শিশু গল্প', 'as', 9, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(24, 'Children\'s Story', 'en', 9, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(25, 'কৌতুক', 'as', 10, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(26, 'Comedy', 'en', 10, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(27, 'বুৰঞ্জী', 'as', 11, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(28, 'History', 'en', 11, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(29, 'ভ্ৰমণ', 'as', 12, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(30, 'Travel', 'en', 12, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(31, 'ধর্মীয়', 'as', 13, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(32, 'Religious', 'en', 13, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(33, 'ৰোমান্স', 'as', 14, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(34, 'Romance', 'en', 14, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(35, 'গবেষণামূলক', 'as', 15, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(36, 'Research-Oriented', 'en', 15, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(37, 'পৌৰাণিক', 'as', 16, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(38, 'Mythological', 'en', 16, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(39, 'কাল্পনিক', 'as', 17, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(40, 'Fiction', 'en', 17, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(41, 'অকাল্পনিক', 'as', 18, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(42, 'Non-Fiction', 'en', 18, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(43, 'অভিধান', 'as', 19, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(44, 'Dictionary', 'en', 19, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(45, 'চুটি গল্প', 'as', 20, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(46, 'Short Story', 'en', 20, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(47, 'ছাত্ৰ', 'as', 21, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(48, 'Student', 'en', 21, '2025-03-14 16:07:28', '2025-03-14 16:07:28'),
(49, 'শিশু', 'as', 22, '2025-04-09 13:06:16', '2025-04-09 13:06:16'),
(50, 'Kids', 'en', 22, '2025-04-09 13:06:16', '2025-04-09 13:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `shop_tags`
--

CREATE TABLE `shop_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_for` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `shop_tags`
--

INSERT INTO `shop_tags` (`id`, `sub_for`, `position`, `created_at`, `updated_at`) VALUES
(6, 0, 1, '2025-03-14 16:08:11', '2025-03-14 17:17:29'),
(8, 0, 3, '2025-03-14 16:08:11', '2025-03-14 17:21:08'),
(7, 0, 2, '2025-03-14 16:08:11', '2025-03-14 17:17:33'),
(9, 0, 4, '2025-03-14 16:08:11', '2025-03-14 17:21:11'),
(10, 0, 5, '2025-03-14 16:08:11', '2025-03-14 17:21:14'),
(11, 0, 6, '2025-03-14 16:08:11', '2025-03-14 17:17:47'),
(12, 0, 0, '2025-04-09 13:06:01', '2025-04-09 13:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `shop_tags_translations`
--

CREATE TABLE `shop_tags_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `shop_tags_translations`
--

INSERT INTO `shop_tags_translations` (`id`, `name`, `abbr`, `for_id`, `created_at`, `updated_at`) VALUES
(14, 'নতুন', 'as', 6, '2025-03-14 16:09:08', '2025-03-14 16:09:08'),
(15, 'New', 'en', 6, '2025-03-14 16:09:08', '2025-03-14 16:09:08'),
(16, 'ট্রেন্ডিং', 'as', 7, '2025-03-14 16:09:08', '2025-03-14 16:09:08'),
(17, 'Trending', 'en', 7, '2025-03-14 16:09:08', '2025-03-14 16:09:08'),
(18, 'বিনামূলীয়া', 'as', 8, '2025-03-14 16:09:08', '2025-03-14 16:09:08'),
(19, 'Free', 'en', 8, '2025-03-14 16:09:08', '2025-03-14 16:09:08'),
(20, 'সৰ্বশ্ৰেষ্ঠ বিক্ৰী', 'as', 9, '2025-03-14 16:09:08', '2025-03-14 16:09:08'),
(21, 'Best Seller', 'en', 9, '2025-03-14 16:09:08', '2025-03-14 16:09:08'),
(22, 'পুৰস্কাৰ প্ৰাপ্ত', 'as', 10, '2025-03-14 16:09:08', '2025-03-14 16:09:08'),
(23, 'Award Winning', 'en', 10, '2025-03-14 16:09:08', '2025-03-14 16:09:08'),
(24, 'ছাত্ৰ', 'as', 11, '2025-03-14 16:09:08', '2025-03-14 16:09:08'),
(25, 'Student', 'en', 11, '2025-03-14 16:09:08', '2025-03-14 16:09:08'),
(26, 'শিশু', 'as', 12, '2025-04-09 13:06:01', '2025-04-09 13:06:01'),
(27, 'Kids', 'en', 12, '2025-04-09 13:06:01', '2025-04-09 13:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `subscribed`
--

CREATE TABLE `subscribed` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `subscribed`
--

INSERT INTO `subscribed` (`id`, `email`, `browser`, `ip`, `time`) VALUES
(1, 'anath9630@gmail.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '203.192.204.193', '1736737379'),
(2, 'sayeedakhtar10@gmail.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0', '164.100.149.237', '1737978133'),
(3, 'lelerazbauz@dont-reply.me', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) EdgiOS/119.0.2151.105 Version/17.0 Mobile/15E148 Safari/604.1', '2a0c:b641:3a1:1005::10c', '1739951771'),
(4, 'huffcha6@gmail.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '41.193.150.7', '1740973777'),
(5, 'pdogssff@do-not-respond.me', 'Mozilla/5.0 (X11; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', '2a0c:b641:3a1:1005::10c', '1741484179'),
(6, 'klqtgcoq@do-not-respond.me', 'Mozilla/5.0 (X11; Linux x86_64; rv:132.0) Gecko/20100101 Firefox/132.0', '2a0c:b641:3a1:1005::10c', '1741484179'),
(7, 'contact@granthakatha.com', 'Mozilla/5.0 (Linux; Android 11; RMX2040) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', '2402:3a80:1c72:99d8:678:5634:1232:5476', '1741804125'),
(8, 'keitlinlgl5@gmail.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '190.181.25.42', '1741997408'),
(9, 'njhpnljf@do-not-respond.me', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_7_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15', '196.251.81.49', '1742542527'),
(10, 'wsxapenk@do-not-respond.me', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_7_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15', '196.251.81.49', '1742542527'),
(11, 'hoitnru38@gmail.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '38.47.35.232', '1742598878'),
(12, 'colonalbertawy1984@gmail.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '181.224.183.105', '1742994385'),
(13, 'paporig@gmail.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2601:204:e884:8490:2c11:7a1e:1f08:a6f4', '1743213601'),
(14, 'dasdhruba733@gmail.com', 'Mozilla/5.0 (Linux; Android 11; RMX2001 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/134.0.6998.105 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/505.0.0.57.45;IABMV/1;]', '103.96.49.191', '1743266466'),
(15, 'hoyphj@gmail.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '200.142.107.237', '1743279119'),
(16, 'noelmcleana1998@gmail.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '41.207.249.50', '1743309016'),
(17, 'mozamilhoque.dc@gmail.com', 'Mozilla/5.0 (Linux; Android 15; RMX3782 Build/AP3A.240617.008; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/134.0.6998.105 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/505.0.0.57.45;IABMV/1;]', '2401:4900:3dcc:2dd0:c632:8d4a:c293:f154', '1743493724'),
(18, 'runuadhikari4@gmail.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2409:40e6:250:8840:60ee:b7ff:fe88:d76d', '1743593077'),
(19, 'nabathegreat@yahoo.co.in', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2409:40e6:259:2fc2:8000::', '1743599205'),
(20, 'ursmanticore@gmail.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2409:40e6:251:a84:8000::', '1743688935'),
(21, 'monmiborah84@gmail.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2405:201:2009:9a7c:e5c3:e4f6:41b1:d2ef', '1743759156'),
(22, 'ritusmitadevi86@gmail.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2401:4900:3d35:5f5a:1dc0:1194:245a:b443', '1743788778'),
(23, 'hortbardr96@gmail.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '102.223.221.15', '1743839975'),
(24, 'sarmahjadob@gmail.com', 'Mozilla/5.0 (Linux; Android 11; RMX3231 Build/RP1A.201005.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.6998.135 Mobile Safari/537.36', '2401:4900:3d33:c23c:655a:926c:21dd:6212', '1743864949'),
(25, 'bborah1001@gmail.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2409:40e6:209:7bbf:fcf8:a5ff:fe60:ef60', '1744073951'),
(26, 'jensen.amanda438627@yahoo.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '203.77.248.226', '1744246769'),
(27, 'abhilekh.kalita@gmail.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2401:4900:b23f:5b70::3a3b:707e', '1744374865'),
(28, 'mitalimahanta2@gmail.com', 'Mozilla/5.0 (Linux; U; Android 13; en-gb; CPH2531 Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.88 Mobile Safari/537.36 HeyTapBrowser/45.12.2.1', '2409:40e6:16:6aa:8000::', '1744544033'),
(29, 'mridusmitaborah999@gmail.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2409:40e6:25:f4a7:c005:df99:71a8:e5', '1744734337'),
(30, 'a.duarah@gmail.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2401:4900:3a71:8615:6c4f:b6ff:fe0f:e683', '1744968380'),
(31, 'djordanmu21@gmail.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '99.26.78.19', '1744997490'),
(32, 'lgtjbqdz@dont-reply.me', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '196.251.70.5', '1745031432'),
(33, 'eqcfwebg@dont-reply.me', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '196.251.70.5', '1745031432'),
(34, 'lmcirckx@dont-reply.me', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '196.251.70.5', '1745031433'),
(35, 'riovacepti1989@yahoo.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '123.22.142.148', '1745094189'),
(36, 'farleyollisdeirs82@gmail.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '138.122.165.108', '1745383707');

-- --------------------------------------------------------

--
-- Table structure for table `textual_pages_tanslations`
--

CREATE TABLE `textual_pages_tanslations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'notifications by email',
  `last_login` int(10) UNSIGNED DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `author_id` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `notify`, `last_login`, `role`, `author_id`, `status`) VALUES
(1, 'admin', '7f9cd3c65746c3a120c02e8cf562b770', 'your@email.com', 0, 1745691203, 'admin', '1', 1),
(2, 'rita@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'ebook@email.com', 0, 1739970049, 'user', '5', 1),
(12, 'superadmin', '21232f297a57a5a743894a0e4a801fc3', 'superadmin@gmail.com', 0, 1745345872, 'superadmin', '0', 1),
(15, 'nur@gmail.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'nur@gmail.com', 0, 1742276487, 'user', '32', 1),
(16, 'nirupama@gmail.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'nirupama@gmail.com', 0, NULL, 'user', '33', 1),
(17, 'upasana@gmail.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'upasana@gmail.com', 0, NULL, 'user', '34', 1),
(19, 'anuradha.pujari@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'anuradha.pujari@example.com', 0, 0, 'user', '6', 1),
(20, 'kanchan.barua@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'kanchan.barua@example.com', 0, 0, 'user', '7', 1),
(21, 'birendra.bhattacharya@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'birendra.bhattacharya@example.com', 0, 0, 'user', '8', 1),
(22, 'mahim.bora@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'mahim.bora@example.com', 0, 0, 'user', '9', 1),
(23, 'mamoni.goswami@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'mamoni.goswami@example.com', 0, 0, 'user', '10', 1),
(24, 'homen.bargohain@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'homen.bargohain@example.com', 0, 0, 'user', '11', 1),
(25, 'hiren.bhattacharya@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'hiren.bhattacharya@example.com', 0, 0, 'user', '12', 1),
(26, 'hiteswar.borbaruah@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'hiteswar.borbaruah@example.com', 0, 0, 'user', '13', 1),
(27, 'bhabendra.saikia@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'bhabendra.saikia@example.com', 0, 0, 'user', '14', 1),
(28, 'syed.malik@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'syed.malik@example.com', 0, 0, 'user', '15', 1),
(29, 'chandana.goswami@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'chandana.goswami@example.com', 0, 0, 'user', '17', 1),
(30, 'yeshe.thongchi@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'yeshe.thongchi@example.com', 0, 0, 'user', '18', 1),
(31, 'nayanjyoti.bhattacharyya@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'nayanjyoti.bhattacharyya@example.com', 0, 1745411423, 'user', '20', 1),
(32, 'hiran.devi@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'hiran.devi@example.com', 0, 0, 'user', '23', 1),
(33, 'pranjal.barua@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'pranjal.barua@example.com', 0, 0, 'user', '24', 0),
(34, 'paritosh.chakrabarty@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'paritosh.chakrabarty@example.com', 0, 0, 'user', '25', 1),
(35, 'ashok.nath@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'ashok.nath@example.com', 0, 1743147169, 'user', '26', 1),
(36, 'bhavesh.das@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'bhavesh.das@example.com', 0, 0, 'user', '27', 1),
(37, 'madhabdev@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'madhabdev@example.com', 0, 0, 'user', '28', 1),
(38, 'pranjal.kalita@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'pranjal.kalita@example.com', 0, 0, 'user', '29', 1),
(39, 'laxminath.bezbaruah@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'laxminath.bezbaruah@example.com', 0, 0, 'user', '30', 1),
(40, 'buljit.buragohain@example.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'buljit.buragohain@example.com', 0, 0, 'user', '31', 1),
(41, 'silabhadra@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'silabhadra@granthakatha.com', 0, NULL, 'user', '36', 1),
(42, 'juri@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'juri@granthakatha.com', 0, NULL, 'user', '37', 1),
(43, 'nayanjyoti@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'nayanjyoti@granthakatha.com', 0, NULL, 'user', '38', 1),
(44, 'jintu@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'jintu@granthakatha.com', 0, NULL, 'user', '39', 1),
(45, 'jitumoni@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'jitumoni@granthakatha.com', 0, NULL, 'user', '40', 1),
(46, 'ankita@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'ankita@granthakatha.com', 0, NULL, 'user', '41', 1),
(47, 'gurmail@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'gurmail@granthakatha.com', 0, NULL, 'user', '42', 1),
(48, 'jyotiprasad@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'jyotiprasad@granthakatha.com', 0, NULL, 'user', '43', 1),
(49, 'birinchibhattacharya@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'birinchibhattacharya@granthakatha.com', 0, NULL, 'user', '44', 0),
(50, 'bishnurabha@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'bishnurabha@granthakatha.com', 0, NULL, 'user', '45', 0),
(51, 'phanindrakumar@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'phanindrakumar@granthakatha.com', 0, NULL, 'user', '46', 0),
(52, 'ratulbhattacharya@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'ratulbhattacharya@granthakatha.com', 0, NULL, 'user', '47', 1),
(53, 'suprakash@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'suprakash@granthakatha.com', 0, NULL, 'user', '48', 1),
(54, 'nirmali@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'nirmali@granthakatha.com', 0, NULL, 'user', '49', 0),
(55, 'atulchandra@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'atulchandra@granthakatha.com', 0, NULL, 'user', '50', 0),
(56, 'bishaldeep@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'bishaldeep@granthakatha.com', 0, NULL, 'user', '51', 0),
(57, 'subhalakshmi@granthakatha.com', '82f9fa29d86dae71395f7fc9ef23fe5f', 'subhalakshmi@granthakatha.com', 0, NULL, 'user', '52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_public`
--

CREATE TABLE `users_public` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `users_public`
--

INSERT INTO `users_public` (`id`, `name`, `email`, `phone`, `password`, `created`) VALUES
(3, 'APegILOTqcYGFF', 'huffcha6@gmail.com', '9500607875', 'd01f1fac507c0aa81a84fe5d360f7a63', '2025-03-03 03:50:07'),
(4, 'Hello', 'vhysolvv@do-not-respond.me', 'John', '5aba2a04161d84b41fe650be4db3e9c3', '2025-03-09 01:36:19'),
(5, 'Nur Islam', 'nurislam.jec6@gmail.com', '8638955106', '0e7517141fb53f21ee439b355b5a1d0a', '2025-03-10 14:51:55'),
(6, 'Jitu Moni Saikia', 'jitumonisk85@gmail.com', '7804853144', 'f608acc4df9e3560e30aee4031d97b14', '2025-03-12 18:03:29'),
(7, 'vhjAVvzU', 'keitlinlgl5@gmail.com', '2485241679', '796ac43f8ce90035a134e55df8accb4e', '2025-03-15 00:10:46'),
(8, 'HIRANYA KUMAR BORA', 'hiranyabora.morigaon@gmail.com', '9678370519', '0a84dd4d3559024ea22e5178d1297892', '2025-03-18 12:50:47'),
(9, 'Pranjal', 'pranjalboruah@gmail.com', '9611123001', '7463a9de6dd01f249f2bcc3c7c1047cc', '2025-03-18 14:08:59'),
(10, 'Nayanjyoti  sarma', 'nayanwithlove@gmail.com', '9101137498', '315a550d1f5f4785b30e14867e99ee39', '2025-03-20 02:45:58'),
(11, 'nabathegreat@gmail.com', 'nabathegreat@yahoo.co.in', '7002089066', '2a5ca4564f5c13cd252df8d2b139be6f', '2025-03-20 04:03:06'),
(12, 'John', 'uysbbzzj@do-not-respond.me', 'MyName', '5aba2a04161d84b41fe650be4db3e9c3', '2025-03-21 07:35:28'),
(13, 'Dhiyanshi ', 'dhiyanshiboruah@gmail.com', '0724477003', 'fbfe0774edab16bc22fbd19dddee2050', '2025-03-21 09:36:13'),
(14, 'Sanjoy Kumar Nath', 'xcursionworld@gmail.com', '9864979202', 'a11befd4993dd3efdfaa517d5128ff4d', '2025-03-21 09:44:51'),
(15, 'Mousumi', 'mousumi.bora88@gmail.com', '09090i0i9u9iii', '6ec5bdcfa8c0d56eecc9efb6456ef85d', '2025-03-21 21:30:34'),
(16, 'getvFhyrDlDPnT', 'hoitnru38@gmail.com', '3190057479', '7d4b6d8d28fb1ea58c8866e02a03985b', '2025-03-21 23:14:57'),
(17, 'mTKmqMEUjh', 'colonalbertawy1984@gmail.com', '2496051529', 'b5c8de61fa2f5226d90077f66fa389dd', '2025-03-26 13:06:47'),
(18, 'Biplav Choudhury ', 'biplav93@gmail.com', '+15405141682', '5e6bbaebd029dddd08e48c32585e680b', '2025-03-28 17:41:16'),
(19, 'Papori Goswami', 'paporig@gmail.com', '08095736969', 'cab259395a3ded7479d1c92084f3e592', '2025-03-29 01:57:54'),
(20, 'KLPBnSaXg', 'hoyphj@gmail.com', '6430227978', '9393953c5987e6d1ad1deb9b2f141402', '2025-03-29 20:13:00'),
(21, 'xgPfDCdEwqJpevS', 'noelmcleana1998@gmail.com', '3674182778', 'f52a4c413805ce95ae2b64312281fd81', '2025-03-30 04:30:30'),
(22, 'Mozamil', 'mozamilhoque.dc@gmail.com', '9577135954', '3e630c58eb6311e8fdee7dfa1a67ea0e', '2025-04-01 07:48:12'),
(23, 'Anjali gogoi', 'anjaligogoikonwar@gmail.com', '9401587786', '4b18f5fd5fb7c71b3e486b13718d7fba', '2025-04-02 09:53:02'),
(24, 'Dipanwita Medhi ', 'dipanwitamedhi1997@gmail.com', '8403967157', '42f74bce822c8183edea250dabbbfc2b', '2025-04-03 10:04:16'),
(25, 'Pragyan Das ', 'ursmanticore@gmail.com', '6000561184', '3938d51eae0c980ffff77846ba3abd29', '2025-04-03 14:01:09'),
(26, 'Robertre', 'pass@prostpro.fun', '84683863239', '05b4a2017b9b2325e6286105ae4eb998', '2025-04-03 16:54:52'),
(27, 'Monmi', 'monmiborah84@gmail.com', '99134 49660', 'b466074c55421d0263864c46c79d3539', '2025-04-04 09:30:47'),
(28, 'lkjdretlvssss www.yandex.ru', 'john@protdskeit.ru', 'lkjdretlvssss www.yandex.ru', 'c8e309fb814034d9099e7c65732d6cbf', '2025-04-05 07:56:00'),
(29, 'wWArdMtXtMb', 'hortbardr96@gmail.com', '8699911998', 'edee3593f5f3f3a9a56c351801ebc089', '2025-04-05 07:59:53'),
(30, 'দেৱযানী', 'devabis12@gmail.com', '7896460244', '1b86b38f7b344dc9308bf743c6cd62e9', '2025-04-07 17:25:11'),
(31, 'Ankur Goswami ', 'ankurgoswami906@outlook.com', '8638565627', '9b4e8501c8a666fa7fd7d9e37841b439', '2025-04-09 10:36:49'),
(32, 'bIIFAmHlllvmMY', 'jensen.amanda438627@yahoo.com', '5634270934', 'd3552130154bd6db438f0b9af4acd875', '2025-04-10 00:59:44'),
(33, 'Opdwodowkdwiidwok djwkqdwqofhjqwlsqj jfkmclasdkjfjewlfjkwkdjoiqw fnedkwdkowfwhi jiowjiowhfiwkj rohriowjropwjrofwjrijeiwo granthakatha.com', 'nomin.momin+301d4@mail.ru', '89255644198', 'ec8bd054fdc3952940bd5aae0639a5ba', '2025-04-11 08:24:31'),
(34, 'Partha Pratim Sharma ', 'parthapratimsharma5659@gmail.com', '6000351834', 'bb20abf7be427120e812f7fcdcd4e347', '2025-04-15 06:42:00'),
(35, 'Mridusmita Borah', 'mridusmitaborah999@gmail.com', '09854675083', 'bb39d0764c8d65b8aabe0af1fca76f8f', '2025-04-15 16:24:40'),
(36, 'Anshuman ', 'a.duarah@gmail.con', '8721820575', '752058cd9eae20b5177e84729cd9639e', '2025-04-18 09:21:55'),
(37, 'zKtksFuEIAOQ', 'djordanmu21@gmail.com', '9743160977', '2629a46acff94702e45286a87bf2825d', '2025-04-18 17:31:56'),
(38, 'sQouDsTQN', 'riovacepti1989@yahoo.com', '3666113636', '648c84ed825af09a22cc491f468b649b', '2025-04-19 20:23:25'),
(39, 'Homen', 'biotechphukan16@gmail.com', '9679519675', '2a067ef3405793443db7d6cab1dd3b5c', '2025-04-23 07:53:16'),
(40, 'Partha Sarathi Das', 'sarathi.shavai@gmail.com', '8486521587', '0e7517141fb53f21ee439b355b5a1d0a', '2025-04-23 16:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `value_store`
--

CREATE TABLE `value_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `thekey` varchar(50) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `value_store`
--

INSERT INTO `value_store` (`id`, `thekey`, `value`) VALUES
(1, 'sitelogo', 'NewLogo.jpg'),
(2, 'navitext', ''),
(3, 'footercopyright', 'Grantha Katha'),
(4, 'contactspage', '<p><strong>Head Branch</strong></p>\r\n\r\n<p>Address A205, SBR KEERTHI PRIME, OLD MADRAS ROAD, Katamanllur, Bengaluru Karnataka 560049</p>\r\n\r\n<p><strong>Guwahati Branch&nbsp;</strong></p>\r\n\r\n<p>Asian Complex, Ground Floor, GS Rd, Bhangagarh, Guwahati, Assam 781007</p>\r\n\r\n<p><strong>Mobile</strong></p>\r\n\r\n<p>+91-8860294658</p>\r\n\r\n<p><strong>E-mail</strong></p>\r\n\r\n<p>contact@granthakatha.com</p>\r\n'),
(5, 'footerContactAddr', 'Guwahati, Assam'),
(6, 'footerContactEmail', 'contact@granthakatha.com'),
(7, 'footerContactPhone', '+91-8860294658'),
(8, 'googleMaps', '42.671840, 83.279163'),
(9, 'footerAboutUs', 'Grantha Katha is a dedicated digital platform celebrating the richness of Assamese literature. We strive to bridge the gap between readers and the literary treasures of Assam by offering a wide range of Assamese books, audio books, articles, and newsletters. Our mission is to make Assamese literature accessible to everyone, anytime, anywhere.'),
(10, 'footerSocialFacebook', 'https://www.facebook.com/share/1EZuPbQGqd/'),
(11, 'footerSocialTwitter', 'https://x.com/GranthaKatha'),
(12, 'footerSocialGooglePlus', 'https://www.linkedin.com/company/granthakatha/'),
(13, 'footerSocialPinterest', 'https://www.instagram.com/granthakatha?utm_source=qr&igsh=MWN0cnZ2N3IxbWI4eQ=='),
(14, 'footerSocialYoutube', ''),
(16, 'contactsEmailTo', 'contact@granthakatha.com'),
(17, 'shippingOrder', '1'),
(18, 'addJs', ''),
(19, 'publicQuantity', '0'),
(20, 'paypal_email', ''),
(21, 'paypal_sandbox', '1'),
(22, 'publicDateAdded', '0'),
(23, 'googleApi', ''),
(24, 'template', 'egranth'),
(25, 'cashondelivery_visibility', '0'),
(26, 'showBrands', '0'),
(27, 'showInSlider', '0'),
(28, 'codeDiscounts', '1'),
(29, 'virtualProducts', '0'),
(30, 'multiVendor', '0'),
(31, 'outOfStock', '0'),
(32, 'hideBuyButtonsOfOutOfStock', '0'),
(33, 'moreInfoBtn', ''),
(34, 'refreshAfterAddToCart', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders`
--

CREATE TABLE `vendors_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_code` varchar(20) NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders_clients`
--

CREATE TABLE `vendors_orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(500) NOT NULL,
  `post_code` varchar(500) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_pages`
--
ALTER TABLE `active_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audio_files`
--
ALTER TABLE `audio_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_reviews`
--
ALTER TABLE `book_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_links`
--
ALTER TABLE `confirm_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law`
--
ALTER TABLE `cookie_law`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`abbr`,`for_id`) USING BTREE;

--
-- Indexes for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_posts`
--
ALTER TABLE `newsletter_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `newsletter_translations`
--
ALTER TABLE `newsletter_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_clients`
--
ALTER TABLE `orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_translations`
--
ALTER TABLE `products_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages`
--
ALTER TABLE `seo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_authors`
--
ALTER TABLE `shop_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_authors_translations`
--
ALTER TABLE `shop_authors_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_tags`
--
ALTER TABLE `shop_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_tags_translations`
--
ALTER TABLE `shop_tags_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed`
--
ALTER TABLE `subscribed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_public`
--
ALTER TABLE `users_public`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_store`
--
ALTER TABLE `value_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`thekey`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_pages`
--
ALTER TABLE `active_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audio_files`
--
ALTER TABLE `audio_files`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `book_reviews`
--
ALTER TABLE `book_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `confirm_links`
--
ALTER TABLE `confirm_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cookie_law`
--
ALTER TABLE `cookie_law`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=668;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newsletter_posts`
--
ALTER TABLE `newsletter_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `newsletter_translations`
--
ALTER TABLE `newsletter_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders_clients`
--
ALTER TABLE `orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `products_translations`
--
ALTER TABLE `products_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `seo_pages`
--
ALTER TABLE `seo_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_authors`
--
ALTER TABLE `shop_authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `shop_authors_translations`
--
ALTER TABLE `shop_authors_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `shop_tags`
--
ALTER TABLE `shop_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shop_tags_translations`
--
ALTER TABLE `shop_tags_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `subscribed`
--
ALTER TABLE `subscribed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users_public`
--
ALTER TABLE `users_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `value_store`
--
ALTER TABLE `value_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
