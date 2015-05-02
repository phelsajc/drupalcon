-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2015 at 10:52 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `home2`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_04_30_004948_create_songs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lyrics` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `lyrics`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'JB GAY12', 'gayness11', 'jb-gay13', '2015-04-29 17:52:03', '2015-05-01 23:48:23'),
(2, 'Boyfriend2', 'boyfie2sdsa', 'boyfriend2', '2015-04-29 18:13:14', '2015-05-01 23:55:14'),
(4, 'As long as you love me1', 'As long as you love meeeeeeeeeeeeeeeeeeeee\r\nAs long as you love me\r\nAs long as you love me\r\n\r\n[Verse 1]\r\nWe''re under pressure,\r\nseven billion people in the world trying to fit in.\r\nKeep it together,\r\nsmile on your face even though your heart is frowning\r\nBut hey now, you know girl,\r\nWe both know it''s a cruel world\r\nBut I will take my chances\r\n\r\n[Chorus]\r\nAs long as you love me\r\nWe could be starving, we could be homeless, we could be broke\r\nAs long as you love me\r\nI''ll be your platinum, I''ll be your silver, I''ll be your gold\r\nAs long as you love, love me, love me\r\nAs long as you love, love me, love me\r\n\r\n[Verse 2]\r\nI''ll be your soldier, fighting every second of the day for your dreams girl\r\nI''ll be your whole world, you can be my Destiny''s Child on a scene girl\r\nSo don''t stress, don''t cry, we don''t need no wings to fly\r\nJust take my hand\r\n\r\n[Bridge]\r\nAs you love me we could be starving, we could be homeless, we could be broke\r\nAs long as you love me\r\nI''ll be your platinum, I''ll be your silver, I''ll be your gold\r\nAs long as you love, love me, love me\r\nAs long as you love, love me, love me\r\n\r\n[Big Sean]\r\nYo,B.I.G\r\nI don''t know if this makes sense but,you''re my Hallelujah\r\nGive me a time and place,I''ll rendezvous it,i''ll fly you to it,\r\nI''ll beat you there\r\nGirl you know I got you\r\nUs, trust...\r\nA couple of things I can''t spell without you\r\nNow we are on top of the world, ''cause that''s just how we do (do)\r\nUsed to tell me sky''s the limit, now the sky''s is our point of view (view)\r\nMan now we stepping out like Whoa! (Oh God)\r\nCamera''s point and shoot,\r\nAsk me what''s my best side, I stand back and point at you you you\r\nThe one that I''ve argue with, I feel like I need a new girl to be bother with,\r\nBut the grass ain''t always greener on the other side,\r\nIt''s green where you water it\r\nSo I know,we got issues baby true true true\r\nBut I''d rather work on this with you\r\nThan go ahead and start with someone new\r\nAs long as you love me\r\n\r\n[Chorus]\r\nAs long as you love me\r\nWe could be starving, we could be homeless, we could be broke\r\nAs long as you love me\r\nI''ll be your platinum, I''ll be your silver, I''ll be your gold\r\nAs long as you love, love me, love me\r\nAs long as you love, love me, love me\r\nI''ll be your silver, I''ll be your gold\r\nlove me, love me, love me\r\nAs long as you love, love me, love me\r\nAs long as you love, love me, love me\r\nAs long as you love me\r\n\r\nRead more: Justin Bieber - As Long As You Love Me Lyrics | MetroLyrics\r\n', 'as-long-as-you-love-me1', '2015-04-29 19:44:11', '2015-05-01 23:55:42'),
(5, 'new12', 'ew12', 'new12', '2015-05-01 23:07:24', '2015-05-01 23:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'john carlo lucasan', 'jc0cjp@gmail.com', '$2y$10$2LxdRRQ/gpRvOFrGWGUBLedAS4xwqyj65A4SZx9wdulO6VhV7IfAS', NULL, '2015-04-28 16:37:18', '2015-04-28 16:37:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `songs_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
