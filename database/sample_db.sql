-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 10, 2018 at 04:37 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base_acl`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'joke', '2018-12-10 03:30:26', '2018-12-10 03:30:26'),
(3, 'entertainment', '2018-12-10 03:30:37', '2018-12-10 03:30:37'),
(4, 'game', '2018-12-10 03:30:50', '2018-12-10 03:30:50'),
(5, 'music', '2018-12-10 03:31:03', '2018-12-10 03:31:03'),
(6, 'video', '2018-12-10 03:31:09', '2018-12-10 03:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(12, '2018_12_09_140832_create_categories_table', 2),
(13, '2018_12_09_140754_create_posts_table', 3),
(10, '2018_12_09_084722_create_permission_tables', 2),
(9, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(3, 'App\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(2, 'role-create', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(3, 'role-edit', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(4, 'role-delete', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(5, 'category-list', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(6, 'category-create', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(7, 'category-edit', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(8, 'category-delete', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(9, 'post-list', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(10, 'post-create', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(11, 'post-edit', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(12, 'post-delete', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(13, 'user-list', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(14, 'user-create', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(15, 'user-edit', 'web', '2018-12-10 01:44:45', '2018-12-10 01:44:45'),
(16, 'user-delete', 'web', '2018-12-10 01:44:46', '2018-12-10 01:44:46'),
(17, 'home', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 'West Ham ace Reece Oxford tracked by long-term admirers Man City and Borussia Dortmund', 'REECE OXFORD was tracked by Manchester City and Borussia Dortmund last week.\r\n\r\nThe West Ham youngster was watched by the Champions League giants in an Under-23 match against Chelsea where he scored the opener.\r\n\r\nCity and Dortmund were joined by Hoffenheim when they watched the 19-year-old in the clash at Aldershot.\r\n\r\nOxford has yet to play under Manuel Pellegrini and European clubs are aware he could be available in January.\r\n\r\nCity are long-term admirers and could boost their homegrown quota by signing him.\r\n\r\nHowever, Oxford revealed he wanted to stay and fight for his place at the London Stadium if the club tried to force him out in January.\r\n\r\nOxford became the Hammers youngest-ever player when he appeared in the Europa League at the age of 16.\r\n\r\nBut the England-20 defender has since become frustrated at being dumped in the West Ham Under-23 squad.\r\n\r\nOxford, who is 20 next week, believes there have been three bids of between £10million and £20million for his services.\r\n\r\nBut he is said to have concerns that the club may try to flog him to Borussia Monchengladbach, where he spent last season on loan.', '2018-12-10 03:38:52', '2018-12-10 03:38:52'),
(3, 1, 4, 'De Jong heats up Barcelona rumours with social media comment', 'Osumane Dembele and Frenkie De Jong both stood out with goals that helped their clubs to victory and the latter\'s social media post about the Ajax game has caused a stir.\r\n\r\n\"Three points and now concentrated on the Champions League,\" wrote De Jong on Instagram.\r\n\r\nDembele put a like and two emojis with the colours of Barcelona which De Jong then in turn also liked.\r\n\r\nThe Dutchman has been linked with a move to Barcelona over the past year.', '2018-12-10 03:39:22', '2018-12-10 03:39:22'),
(4, 1, 3, 'Low: Real Madrid? They are an interesting club for any coach', 'Germany coach Joachim Low admitted that his time in charge of the national team is coming to an end and that he would be tempted by Real Madrid.\r\n\r\nLow won the World Cup in 2014 with Germany but in recent times the team has disappointed at this year\'s World Cup and in the Nations Cup.\r\n\r\n\"I realise that the major part of my time here is now in the past and I need to think about what I want to do afterwards, in my plans are to coach a club which I did before being national team coach,\" said Low.\r\n\r\n\"I would prefer not to continue in Germany, I think that my future is more likely to abroad. Real Madrid? They are an interesting club for any coach.\"\r\n\r\nTag:GermanyJoachim LowReal Madrid\r\nPrevious: Transfer news and rumours LIVE: Barca consider Richarlison move\r\nNext: Ridiculous Ballon d\'Or campaign for Messi', '2018-12-10 09:27:56', '2018-12-10 09:27:56'),
(5, 2, 6, 'Transfer news and rumours LIVE: Barca consider Richarlison move', 'River star Martinez confirms January exit\r\n\r\nRiver Plate star Gonzalo \"Pity\" Martinez has confirmed he will leave the club in January.\r\n\r\nAfter he scored in Sunday\'s Copa Libertadores final second leg, the 25-year-old winger said December\'s Club World Cup will be his final competition with River.\r\n\r\nMartinez has been linked with a move to MLS champion Atlanta United.\r\n\r\nBarcelona eye Richarlison swoop\r\n\r\nEverton star could replace Luis Suarez\r\n\r\nBarcelona are interested in signing Everton forward Richarlison as a potential replacement for Luis Suarez, according to the Daily Star.\r\n\r\nThe Toffees talisman only moved to Goodison Park in the summer, following manager Marco Silva in making the move from Watford to Merseyside.\r\n\r\nBut it appears Richarlison is already in demand having scored seven goals so far this season, although Spurs forward Harry Kane is said to be Barca\'s top target at this stage.\r\n\r\nFoden to pen six-year City deal\r\n\r\nThe teenager will end speculation surrounding his future by pledging his future to City\r\n\r\nManchester City youngster Phil Foden will end the uncertainty surrounding his future by signing a new six-year contract at the club, reports The Telegraph.\r\n\r\nThe talented midfielder, who has impressed for England U21s in recent months, is being tipped to develop into one of the best players England have produced in recent years.\r\n\r\nFoden, 18, was to be out of contract at the end of next season, but the deal that he will sign on Monday will keep him at the club until June 2024.', '2018-12-10 09:30:01', '2018-12-10 09:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2018-12-10 02:30:19', '2018-12-10 09:04:29'),
(2, 'Admin', 'web', '2018-12-10 02:34:38', '2018-12-10 02:34:38'),
(3, 'Editor', 'web', '2018-12-10 02:35:15', '2018-12-10 02:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(17, 1),
(17, 2),
(17, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$GAaJQl6q0Yd0MhQ47u8V8.MlLJ82PAqlTCs6dnvWjH.czDh6gYPJ.', 'w76wNuPy801TWSzvxmtf7IyOuWRuUs6pyFDvPUMqGDuGbrEQYHdFx3Eb1Ci8', '2018-12-09 02:03:52', '2018-12-10 08:53:29'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$9hiNleHTj/KnjBKoLjDnqeWdEtMlZd0LmplvgD2RQrxzDC4x0vsKa', '5G08DT0wpPLMJ6UUXX8WjZJl390NVp0OswckGGPl8F3T7OPgKgMvwKe0rw2Z', '2018-12-10 02:35:39', '2018-12-10 02:35:39'),
(3, 'Editor', 'editor@gmail.com', NULL, '$2y$10$Ro5gTAmIC./lh2OS5cqrjucomMntiUmLstGnq.sNjwKTD0ZQHe0UO', 'EWzLkA5FMYBgjUJUWXMNR2EDSUQCMHD1DVkq7o52sgFxwdxUAP83Od2GGmJ1', '2018-12-10 02:36:03', '2018-12-10 02:36:03'),
(4, 'oscar', 'oscar@gmail.com', NULL, '$2y$10$ermNA.sWj/HNswDvCHXarOb91NaR9DNwQfPzLAuw85UarkDQdV2GK', 'sjdYiEsloQdRxho39HELW6Q4k0mYI81XatbarlH76vVAtBWb1MU3gDKGodxq', '2018-12-10 03:19:28', '2018-12-10 03:19:28');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
