-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 19, 2020 at 09:21 AM
-- Server version: 10.1.46-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boydhassell_bhicp`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'created', 5, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-01 07:28:50', '2019-10-01 07:28:50'),
(2, 'default', 'updated', 1, 'Litecms\\Contact\\Models\\Contact', 1, 'App\\User', '[]', '2019-10-11 22:36:54', '2019-10-11 22:36:54'),
(3, 'default', 'updated', 2, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-17 18:43:34', '2019-10-17 18:43:34'),
(4, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-17 18:46:53', '2019-10-17 18:46:53'),
(5, 'default', 'created', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-20 21:33:42', '2019-10-20 21:33:42'),
(6, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-20 21:36:45', '2019-10-20 21:36:45'),
(7, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-20 21:37:41', '2019-10-20 21:37:41'),
(8, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-20 21:39:56', '2019-10-20 21:39:56'),
(9, 'default', 'deleted', 2, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-20 21:40:23', '2019-10-20 21:40:23'),
(10, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-20 21:40:54', '2019-10-20 21:40:54'),
(11, 'default', 'deleted', 5, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-20 21:58:46', '2019-10-20 21:58:46'),
(12, 'default', 'created', 7, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-20 21:59:36', '2019-10-20 21:59:36'),
(13, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-20 21:59:59', '2019-10-20 21:59:59'),
(14, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-21 18:25:35', '2019-10-21 18:25:35'),
(15, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-21 18:28:49', '2019-10-21 18:28:49'),
(16, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-21 18:31:50', '2019-10-21 18:31:50'),
(17, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-21 21:41:48', '2019-10-21 21:41:48'),
(18, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-21 22:09:58', '2019-10-21 22:09:58'),
(19, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-22 00:01:36', '2019-10-22 00:01:36'),
(20, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-22 00:05:49', '2019-10-22 00:05:49'),
(21, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-22 00:11:59', '2019-10-22 00:11:59'),
(22, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-22 00:12:30', '2019-10-22 00:12:30'),
(23, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-22 00:41:46', '2019-10-22 00:41:46'),
(24, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-22 17:12:55', '2019-10-22 17:12:55'),
(25, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-22 17:13:27', '2019-10-22 17:13:27'),
(26, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-22 17:13:28', '2019-10-22 17:13:28'),
(27, 'default', 'updated', 7, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-25 18:28:11', '2019-10-25 18:28:11'),
(28, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-25 18:31:56', '2019-10-25 18:31:56'),
(29, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-27 18:20:27', '2019-10-27 18:20:27'),
(30, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-27 18:20:44', '2019-10-27 18:20:44'),
(31, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-27 18:24:35', '2019-10-27 18:24:35'),
(32, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-28 20:41:26', '2019-10-28 20:41:26'),
(33, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-28 20:44:52', '2019-10-28 20:44:52'),
(34, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-28 20:45:04', '2019-10-28 20:45:04'),
(35, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-28 22:17:32', '2019-10-28 22:17:32'),
(36, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-29 21:52:53', '2019-10-29 21:52:53'),
(37, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-29 22:04:24', '2019-10-29 22:04:24'),
(38, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-29 22:07:26', '2019-10-29 22:07:26'),
(39, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-10-29 22:09:21', '2019-10-29 22:09:21'),
(40, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-11-11 21:25:12', '2019-11-11 21:25:12'),
(41, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-11-11 21:29:08', '2019-11-11 21:29:08'),
(42, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-11-14 05:09:54', '2019-11-14 05:09:54'),
(43, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-11-15 20:29:43', '2019-11-15 20:29:43'),
(44, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-11 20:23:21', '2019-12-11 20:23:21'),
(45, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-11 20:24:22', '2019-12-11 20:24:22'),
(46, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 19:55:28', '2019-12-20 19:55:28'),
(47, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 19:58:31', '2019-12-20 19:58:31'),
(48, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 20:06:09', '2019-12-20 20:06:09'),
(49, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 20:08:08', '2019-12-20 20:08:08'),
(50, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 20:08:44', '2019-12-20 20:08:44'),
(51, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 20:12:58', '2019-12-20 20:12:58'),
(52, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 20:13:57', '2019-12-20 20:13:57'),
(53, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 20:43:30', '2019-12-20 20:43:30'),
(54, 'default', 'updated', 7, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 22:10:50', '2019-12-20 22:10:50'),
(55, 'default', 'updated', 7, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 22:15:06', '2019-12-20 22:15:06'),
(56, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 22:29:40', '2019-12-20 22:29:40'),
(57, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 23:03:23', '2019-12-20 23:03:23'),
(58, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-20 23:10:40', '2019-12-20 23:10:40'),
(59, 'default', 'updated', 1, 'Litecms\\Contact\\Models\\Contact', 1, 'App\\User', '[]', '2019-12-20 23:34:47', '2019-12-20 23:34:47'),
(60, 'default', 'created', 8, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-23 01:55:38', '2019-12-23 01:55:38'),
(61, 'default', 'updated', 8, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2019-12-23 01:56:19', '2019-12-23 01:56:19'),
(62, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-04 00:32:21', '2020-01-04 00:32:21'),
(63, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-04 01:26:54', '2020-01-04 01:26:54'),
(64, 'default', 'updated', 8, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-04 01:28:37', '2020-01-04 01:28:37'),
(65, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-04 01:31:09', '2020-01-04 01:31:09'),
(66, 'default', 'updated', 7, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-04 01:31:57', '2020-01-04 01:31:57'),
(67, 'default', 'updated', 1, 'Litecms\\Contact\\Models\\Contact', 1, 'App\\User', '[]', '2020-01-04 02:15:27', '2020-01-04 02:15:27'),
(68, 'default', 'updated', 1, 'Litecms\\Contact\\Models\\Contact', 1, 'App\\User', '[]', '2020-01-05 07:34:24', '2020-01-05 07:34:24'),
(69, 'default', 'updated', 1, 'Litecms\\Contact\\Models\\Contact', 1, 'App\\User', '[]', '2020-01-05 07:34:49', '2020-01-05 07:34:49'),
(70, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-17 18:44:03', '2020-01-17 18:44:03'),
(71, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-17 18:48:41', '2020-01-17 18:48:41'),
(72, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-17 18:51:50', '2020-01-17 18:51:50'),
(73, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-17 18:52:49', '2020-01-17 18:52:49'),
(74, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-17 18:53:36', '2020-01-17 18:53:36'),
(75, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-17 18:54:29', '2020-01-17 18:54:29'),
(76, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-17 18:55:24', '2020-01-17 18:55:24'),
(77, 'default', 'updated', 7, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-17 18:56:51', '2020-01-17 18:56:51'),
(78, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-17 18:57:55', '2020-01-17 18:57:55'),
(79, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-17 18:58:23', '2020-01-17 18:58:23'),
(80, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-01-17 18:59:47', '2020-01-17 18:59:47'),
(81, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-02-06 12:07:19', '2020-02-06 12:07:19'),
(82, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-02-06 12:07:52', '2020-02-06 12:07:52'),
(83, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-02-06 12:09:24', '2020-02-06 12:09:24'),
(84, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-02-06 12:09:50', '2020-02-06 12:09:50'),
(85, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-02-06 12:11:02', '2020-02-06 12:11:02'),
(86, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-02-06 12:11:37', '2020-02-06 12:11:37'),
(87, 'default', 'created', 9, 'Litecms\\Page\\Models\\Page', 1, 'App\\User', '[]', '2020-02-06 12:12:04', '2020-02-06 12:12:04'),
(88, 'default', 'updated', 7, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-02-06 14:39:21', '2020-02-06 14:39:21'),
(89, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-02-06 15:05:23', '2020-02-06 15:05:23'),
(90, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-02-06 15:05:42', '2020-02-06 15:05:42'),
(91, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-02-06 15:05:59', '2020-02-06 15:05:59'),
(92, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-02-06 15:06:50', '2020-02-06 15:06:50'),
(93, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-02-06 15:07:29', '2020-02-06 15:07:29'),
(94, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-02-20 12:48:32', '2020-02-20 12:48:32'),
(95, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-02-20 12:50:09', '2020-02-20 12:50:09'),
(96, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-02-20 12:50:43', '2020-02-20 12:50:43'),
(97, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-02-20 12:52:03', '2020-02-20 12:52:03'),
(98, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-02-27 19:12:16', '2020-02-27 19:12:16'),
(99, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-04-06 09:29:27', '2020-04-06 09:29:27'),
(100, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-04-06 13:41:21', '2020-04-06 13:41:21'),
(101, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-04-06 13:42:50', '2020-04-06 13:42:50'),
(102, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-04-06 13:43:57', '2020-04-06 13:43:57'),
(103, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-04-06 13:58:35', '2020-04-06 13:58:35'),
(104, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-04-06 14:00:59', '2020-04-06 14:00:59'),
(105, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-04-06 14:02:25', '2020-04-06 14:02:25'),
(106, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-04-06 18:08:55', '2020-04-06 18:08:55'),
(107, 'default', 'updated', 1, 'Litecms\\Contact\\Models\\Contact', 3, 'App\\User', '[]', '2020-05-15 13:44:57', '2020-05-15 13:44:57'),
(108, 'default', 'updated', 1, 'Litecms\\Contact\\Models\\Contact', 3, 'App\\User', '[]', '2020-05-15 13:47:02', '2020-05-15 13:47:02'),
(109, 'default', 'updated', 1, 'Litecms\\Contact\\Models\\Contact', 3, 'App\\User', '[]', '2020-05-15 13:47:31', '2020-05-15 13:47:31'),
(110, 'default', 'updated', 1, 'Litecms\\Contact\\Models\\Contact', 3, 'App\\User', '[]', '2020-05-15 13:52:48', '2020-05-15 13:52:48'),
(111, 'default', 'updated', 1, 'Litecms\\Contact\\Models\\Contact', 3, 'App\\User', '[]', '2020-05-15 13:53:50', '2020-05-15 13:53:50'),
(112, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-05-15 23:52:03', '2020-05-15 23:52:03'),
(113, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-05-15 23:52:18', '2020-05-15 23:52:18'),
(114, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-05-23 19:04:19', '2020-05-23 19:04:19'),
(115, 'default', 'updated', 7, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-05-25 17:10:39', '2020-05-25 17:10:39'),
(116, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-12 01:44:05', '2020-06-12 01:44:05'),
(117, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-12 01:45:36', '2020-06-12 01:45:36'),
(118, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-12 16:26:55', '2020-06-12 16:26:55'),
(119, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-12 16:46:51', '2020-06-12 16:46:51'),
(120, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-12 17:45:38', '2020-06-12 17:45:38'),
(121, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-12 23:51:52', '2020-06-12 23:51:52'),
(122, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-13 00:11:46', '2020-06-13 00:11:46'),
(123, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-13 00:29:30', '2020-06-13 00:29:30'),
(124, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-13 00:31:20', '2020-06-13 00:31:20'),
(125, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-13 00:32:54', '2020-06-13 00:32:54'),
(126, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-13 00:35:56', '2020-06-13 00:35:56'),
(127, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-13 16:49:48', '2020-06-13 16:49:48'),
(128, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-13 16:50:24', '2020-06-13 16:50:24'),
(129, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-13 19:06:55', '2020-06-13 19:06:55'),
(130, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-13 19:07:07', '2020-06-13 19:07:07'),
(131, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-13 19:07:44', '2020-06-13 19:07:44'),
(132, 'default', 'updated', 3, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-13 19:07:50', '2020-06-13 19:07:50'),
(133, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-19 17:15:32', '2020-06-19 17:15:32'),
(134, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-19 23:06:16', '2020-06-19 23:06:16'),
(135, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-20 00:33:38', '2020-06-20 00:33:38'),
(136, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-20 00:33:54', '2020-06-20 00:33:54'),
(137, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-20 00:34:00', '2020-06-20 00:34:00'),
(138, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-22 22:25:17', '2020-06-22 22:25:17'),
(139, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-22 22:32:46', '2020-06-22 22:32:46'),
(140, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-22 22:33:26', '2020-06-22 22:33:26'),
(141, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-22 22:35:01', '2020-06-22 22:35:01'),
(142, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-22 22:51:27', '2020-06-22 22:51:27'),
(143, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-06-22 22:52:10', '2020-06-22 22:52:10'),
(144, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-07-22 17:43:47', '2020-07-22 17:43:47'),
(145, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-07-30 23:37:50', '2020-07-30 23:37:50'),
(146, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-07-31 11:42:05', '2020-07-31 11:42:05'),
(147, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-08-13 15:58:46', '2020-08-13 15:58:46'),
(148, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-08-13 15:58:46', '2020-08-13 15:58:46'),
(149, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-08-13 15:59:06', '2020-08-13 15:59:06'),
(150, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-08-13 15:59:22', '2020-08-13 15:59:22'),
(151, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-08-27 20:27:04', '2020-08-27 20:27:04'),
(152, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-09-10 22:12:31', '2020-09-10 22:12:31'),
(153, 'default', 'updated', 1, 'Litecms\\Contact\\Models\\Contact', 3, 'App\\User', '[]', '2020-09-10 22:34:03', '2020-09-10 22:34:03'),
(154, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-09-10 23:08:32', '2020-09-10 23:08:32'),
(155, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-09-10 23:09:38', '2020-09-10 23:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `admin_logo`
--

CREATE TABLE `admin_logo` (
  `id` int(11) NOT NULL,
  `admin_logo_filename` varchar(100) DEFAULT NULL,
  `login_logo_filename` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `favicon_2` varchar(255) DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_logo`
--

INSERT INTO `admin_logo` (`id`, `admin_logo_filename`, `login_logo_filename`, `created_date`, `favicon`, `favicon_2`, `theme_color`) VALUES
(1, '19.bhipc-logo.png', '215.bhipc-logo.png', '2020-05-20 00:00:00', '451.apple-touch-icon.png', '690.apple-touch-icon-72x72.png', 'd_site_blue');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci DEFAULT 'hide',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `category_id`, `name`, `url`, `icon`, `order`, `description`, `image`, `images`, `slug`, `status`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Powered by Laravel', '', 'fab fa-laravel', 0, 'We have tried to make use of all features of <a href=\"http://laravel.com\" target=\"_balnk\">Laravel</a> which help you to develop the website with all resources available online.​ ', '', NULL, 'powered-by-laravel-5-5', 'show', 1, 'App\\User', '2016/07/21/104902202', NULL, NULL, NULL),
(2, 1, 'Configure to your project', '', 'fas fa-sliders-h', 0, 'Lavalite helps you to <a href=\"https://lavalite.org/docs\" target=\"_balnk\">configure</a> your Laravel projects easily. It acts as a bootstrapper for your Laravel Content Management System.', '', NULL, 'configure-to-your-project', 'show', 1, 'App\\User', '2016/07/21/104854884', NULL, NULL, NULL),
(3, 1, 'Online package builder', '', 'fas fa-box', 0, 'The online package builder helps you to build <a href=\"https://lavalite.org/packages\" target=\"_balnk\"> Lavalite packages</a> easily, The downloaded package with basic required files help you to finish your projects quickly.', '', NULL, 'online-package-builder', 'show', 1, 'App\\User', '2016/07/21/104846403', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `block_categories`
--

CREATE TABLE `block_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci DEFAULT 'hide',
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `block_categories`
--

INSERT INTO `block_categories` (`id`, `name`, `slug`, `title`, `details`, `status`, `user_type`, `user_id`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Features', 'features', 'Packed with features you can\'t live without.', 'Visit our <a href=\"https://lavalite.org/docs\" target=\"_blank\">documentation</a> for more information.', 'show', 'App\\User', 1, '2016/10/31/163917964', NULL, '2016-07-20 11:17:48', '2016-11-01 17:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `reporting_to` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` enum('','Male','Female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `photo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('New','Active','Suspended','Locked') COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `email_verified_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `reporting_to`, `name`, `email`, `password`, `api_token`, `remember_token`, `sex`, `dob`, `designation`, `mobile`, `phone`, `address`, `street`, `city`, `district`, `state`, `country`, `photo`, `web`, `permissions`, `status`, `email_verified_at`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 'Client', 'client@lavalite.org', '$2y$10$ENXjL75Dp0X91JfKePUxb.ylWg2TJhhsZoVC.U5RNgVfxpVCt.Nj2', 'CCGHWY5bQ0THtenJBvWXd63kIb4tKoOBtuSKB32XoUqeTAcxlkjG8ETVKuO9', NULL, 'Male', '2014-05-15', 'Super User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://litepie.org', NULL, 'Active', '2019-04-15 00:00:00', NULL, NULL, NULL, NULL, '2015-09-15 04:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` tinyint(4) DEFAULT NULL,
  `website` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `lat` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Show','Hide') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `mobile`, `email`, `default`, `website`, `fax`, `details`, `address`, `street`, `city`, `state`, `country`, `zip`, `lat`, `lng`, `status`, `slug`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'BHICP', '828-322-1723', NULL, 'melissa@bhicp.com', NULL, 'https://bhicp.com', '828.322.4219', '200 First Avenue NW - Suite 507\r\nHickory, NC 28601', '200', 'First Avenue NW', 'Hickory', 'North Carolina', 'United States', 28601, '35.734010', '-81.340006', 'Show', 'Law Firm', NULL, NULL, NULL, NULL, NULL, '2020-09-10 22:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `emailinfo`
--

CREATE TABLE `emailinfo` (
  `id` int(11) NOT NULL,
  `toemail` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailinfo`
--

INSERT INTO `emailinfo` (`id`, `toemail`, `subject`, `message`) VALUES
(1, 'melissa@bhicp.com', 'Interest in a property', 'Hello,\r\n\r\nI would like to know more about one of your properties. Please put the PROPERTY PIN NUMBER in this email for a reference.\r\n\r\nThanks!');

-- --------------------------------------------------------

--
-- Table structure for table `front_sections`
--

CREATE TABLE `front_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(10) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_sections`
--

INSERT INTO `front_sections` (`id`, `page_id`, `name`, `heading`, `body`, `image`, `icon`, `extra`, `created_at`, `updated_at`, `order_by`) VALUES
(15, 1, NULL, 'Find your Space', NULL, '/uploads/images/frontsections/1591993880.jpg', NULL, NULL, '2020-01-17 18:44:03', '2020-06-13 00:35:56', 1),
(16, 1, NULL, NULL, '<div class=\"flex-fill home-property-link1\">\r\n<h3>See Available<br />\r\nProperties</h3>\r\n</div>\r\n\r\n<div class=\"flex-fill home-property-link2 home-property-hover\">\r\n<h6><a href=\"properties/?id=lease \">Properties for Lease</a></h6>\r\n<a href=\"properties/?id=lease \">View</a></div>\r\n\r\n<div class=\"flex-fill home-property-link3 home-property-hover\">\r\n<h6><a href=\"properties/?id=sale\">Properties for Sale</a></h6>\r\n<a href=\"properties/?id=sale\">View</a></div>\r\n\r\n<div class=\"flex-fill home-property-link4 home-property-hover\">\r\n<h6><a href=\"properties/?id=land\">Land for Sale</a></h6>\r\n<a href=\"properties/?id=land\">View</a></div>', NULL, NULL, NULL, '2020-01-17 18:48:41', '2020-04-06 14:02:25', 2),
(17, 1, 'Read More', 'Welcome to Boyd & Hassell Industrial and Commercial Properties', 'We specialize in the sale, leasing and property management of Industrial and Commercial Real Estate. Boyd & Hassell Industrial-Commercial Properties, Inc. has been providing top notch service in the Greater Hickory Metro since 1984. Whether you are looking for a small retail space or a large distribution warehouse, we are here to help.', '/uploads/images/frontsections/1592850766.jpg', NULL, NULL, '2020-01-17 18:51:50', '2020-06-22 22:33:26', 0),
(18, 1, 'HIGHLIGHTS', NULL, '<h6>HIGHLIGHTS</h6>\r\n\r\n<h2>Core </h2>\r\n\r\n<p>Whether you are looking for a small retail space or a large distribution warehouse, we are here to help. At BHICP we believe that a great location can make a business soar.</p>\r\n\r\n<div class=\"sec3-inner-sec\">\r\n	<div class=\"wrap_sec\">\r\n		<h3>Commercial Property Leasing</h3>\r\n		<p>Whether you\'re looking for an investment property with BHICP managing that property, or seeking a space to call home for your commercial business we can help. Boyd & Hassell Commercial and Industrial Properties can find the perfect space to fit your needs. \r\n		</p>\r\n	</div>\r\n\r\n\r\n    <div class=\"_wrapper2\">\r\n		<a href=\"https://bhicp.com/staging/about\" class=\"button\">About BHICP</a>\r\n	</div>\r\n		\r\n</div>', '/uploads/images/frontsections/1592850901.jpg', NULL, NULL, '2020-01-17 18:52:49', '2020-09-10 22:12:31', 3),
(19, 1, NULL, 'Lease With Us', 'Whether you are looking for a small retail space or a large distribution warehouse, we are here to help. Please select from one of the property categories below to browse our listings.', NULL, NULL, NULL, '2020-01-17 18:53:36', '2020-01-17 18:53:36', 4),
(20, 1, 'Business', NULL, NULL, '/uploads/images/frontsections/1592851887.JPG', NULL, NULL, '2020-01-17 18:54:29', '2020-09-10 23:08:32', 5),
(21, 1, NULL, 'Make An Appointment Now!', '<div class=\"Appointment-btn\"><a href=\"828-322-1723\">Call  </a></div>\r\n\r\n<div class=\"Appointment-btn\"><a href=\"mailto:melissa@bhicp.com\">Email</a></div>', NULL, NULL, NULL, '2020-01-17 18:55:24', '2020-09-10 23:09:38', 6),
(22, 7, NULL, 'Our Services', NULL, '/uploads/images/frontsections/_1579269411.jpg', NULL, NULL, '2020-01-17 18:56:51', '2020-05-25 17:10:39', NULL),
(23, 6, NULL, 'Company History', NULL, '/uploads/images/frontsections/_1579269475.jpg', NULL, NULL, '2020-01-17 18:57:55', '2020-06-20 00:34:00', 1),
(24, 6, NULL, 'About the Company', 'In 1968 Glen Boyd & Jim Hassell purchased the small real estate firm they worked for and changed the name to Boyd & Hassell Realtor, offering full-time residential, commercial, and property management real estate services. \r\n\r\nIn 1979 Harry McComb and James Mitchell, then associates with the firm, purchased Jim Hassell’s share of the company and joined as partners with Glen Boyd. \r\nIn 1980 upon Glen Boyd’s death, Harry McComb and James Mitchell purchased the remainder of the partnership.\r\n\r\nIn 1981 they partnered with Paul Gadd of Byrd Realty, to provide full-service residential, commercial, and industrial real estate sales, property management and land development under the Boyd & Hassell Realtor name.', '/uploads/images/frontsections/_1579269503.jpg', NULL, NULL, '2020-01-17 18:58:23', '2020-08-13 15:59:22', 0),
(25, 6, NULL, NULL, NULL, '/uploads/images/frontsections/test_1582185009.jpg', NULL, NULL, '2020-02-20 12:48:32', '2020-02-20 12:50:43', 2),
(26, 1, 'Commercial', NULL, NULL, '/uploads/images/frontsections/1592851887.jpg', NULL, NULL, '2020-06-22 22:51:27', '2020-06-22 22:51:27', 7),
(27, 1, 'Industrial', NULL, NULL, '/uploads/images/frontsections/1592851930.jpg', NULL, NULL, '2020-06-22 22:52:10', '2020-06-22 22:52:10', 8);

-- --------------------------------------------------------

--
-- Table structure for table `header_script`
--

CREATE TABLE `header_script` (
  `id` int(11) NOT NULL,
  `header_script` longtext,
  `body_script` longtext,
  `created_at` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `header_script`
--

INSERT INTO `header_script` (`id`, `header_script`, `body_script`, `created_at`, `name`) VALUES
(1, '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-N3GDZHB\');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-N3GDZHB\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '2020-05-14', 'Header (Script)'),
(2, '<script src=\"https://www.google.com/recaptcha/api.js?render=6LfOo_oUAAAAADn2tre0IdWrbe4MB54QpO_3ycIb\" nonce=\"{NONCE}\" type=\"text/javascript\" ></script>', NULL, NULL, 'Meta ( Script )'),
(3, '<script src=\"https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit\" async defer>\r\n  </script>', '<script>\r\n    var onloadCallback = function() {\r\n            grecaptcha.render(\'google_recaptcha\', {\r\n                \'sitekey\' : \'6LcfZfsUAAAAAMrEWJHpww2yub75SpXNDg3SAFmL\'\r\n            });\r\n        };\r\n</script>', NULL, 'Google Recaptcha');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `updated_date` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `filename`, `updated_date`, `created_date`) VALUES
(1, 'storage/images/profile/5f3640cf5436f.png', '2020-08-14 07:44:15', '2020-08-14 07:44:15'),
(2, 'storage/uploads/images/profile/5f3641356466a.png', '2020-08-14 07:45:57', '2020-08-14 07:45:57'),
(3, 'storage/uploads/images/profile/5f36450d912c2.png', '2020-08-14 08:02:21', '2020-08-14 08:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

CREATE TABLE `masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_f` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_t` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_l` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `title`, `bio`, `email`, `mobile`, `address`, `photo`, `social_f`, `social_t`, `social_l`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Gavin Mitchell', 'Broker', 'Gavin joined the BHIC team in 2004. He is a graduate of Appalachian State with a degree in Banking &amp; Finance. Gavin is a licensed NC Broker &amp; Realtor. He has served on many boards &amp; committees throughout the community. Gavin is a past president of the Hickory Downtown Development Association. He has been recognized by the City of Hickory for his outstanding abilities in renovating &amp; restoring commercial properties. Gavin has extensive knowledge of the various areas of real estate &amp; is eager to assist you with all your real estate needs.', 'gavin@bhicp.com', NULL, NULL, '/uploads/images/team_members/1589781672.jpg', 'donal', 'donald', 'donald', '2019-09-27 15:14:45', '2020-09-14 14:02:22', 'gavin-mitchell'),
(2, 'James Mitchell', 'President', 'James founded Boyd &amp; Hassell Industrial &amp; Commercial Properties, Inc., (BHIC) in 1984. James specializes in leasing and brokerage of large commercial and industrial properties. James has managed in excess of 2,500,000 square feet of industrial, warehouse, manufacturing, and office space. As a Certified Property Manager, James leads a team that is skilled in lease consulting, development, build to suit, and tenant or landlord representation.', 'james@bhicp.com', NULL, NULL, '/uploads/images/team_members/BOYD&HASSELL-james-mitchell.jpg', 'donal', 'donald', 'donald', '2019-09-27 15:14:45', '2020-05-20 22:57:15', 'james-mitchell'),
(3, 'Barrett Mitchell', 'Broker', 'Barrett joined the BHIC team in 2014. He is an Ole Miss graduate with a degree in Finance. He also received his MBA from The Citadel. Barrett is a licensed NC Broker and Realtor. He is a CCIM candidate. He has experience in property management, sales, and leasing. His background, coupled with experience, enables him to confidently assist you with all your real estate needs.', 'barret@bhicp.com', NULL, NULL, '/uploads/images/team_members/BOYD&HASSELL-barrett-mitchell.jpg', 'donal', 'donald', 'donald', '2019-09-27 15:14:45', '2020-05-20 22:55:30', 'barrett-mitchell');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `target` enum('_blank','_self') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `uload_folder` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `key`, `url`, `icon`, `permission`, `role`, `name`, `description`, `target`, `order`, `uload_folder`, `slug`, `status`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 'admin', '/admin', NULL, NULL, NULL, 'Admin', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(2, 0, 'user', '/user', NULL, NULL, NULL, 'User', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(3, 0, 'client', '/client', NULL, NULL, NULL, 'Client', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(4, 0, 'main', '', NULL, NULL, NULL, 'Main', 'Website main menu', NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(5, 0, 'footer', '', NULL, NULL, NULL, 'Footer', 'Footer menu', NULL, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(6, 0, 'social', '', NULL, NULL, NULL, 'Social', 'Social media menu', NULL, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(7, 1, NULL, 'admin/menu/menu', 'fa fa-bars', NULL, '[null,\"2\"]', 'Menus', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2020-05-18 04:21:36'),
(8, 1, NULL, 'admin', 'fa fa-dashboard', NULL, NULL, 'Dashboard', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, '2020-04-21 10:10:05'),
(9, 6, NULL, 'https://www.linkedin.com/company/boyd-&-hassell-industrial-&-commercial-properties/about/', 'fa fa-linkedin', NULL, '[null]', 'Linkedin', NULL, '_blank', 1, NULL, NULL, 1, NULL, NULL, NULL, '2020-03-04 11:49:21'),
(10, 6, NULL, 'https://github.com/LavaLite/cms', 'fab fa-github', NULL, NULL, 'GitHub', NULL, '_blank', 12, NULL, NULL, 1, NULL, '2019-12-20 21:44:30', NULL, '2019-12-20 21:44:30'),
(11, 6, NULL, 'https://facebook.com/bhicp', 'fa fa-facebook', NULL, '[null]', 'Facebook', NULL, '_blank', 0, NULL, NULL, 1, NULL, NULL, NULL, '2019-12-20 22:07:25'),
(18, 2, NULL, 'user', 'dashboard', NULL, NULL, 'Dashborad', NULL, NULL, 50, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(19, 1, 'admin.user', 'admin/user/user', 'fa fa-users', NULL, '[\"superuser\"]', 'User', NULL, NULL, 11, NULL, NULL, 1, NULL, '2019-10-23 19:19:51', NULL, '2019-10-23 19:19:51'),
(20, 1, NULL, 'admin/user/user', 'fa fa-user', NULL, NULL, 'Users', NULL, NULL, 12, NULL, NULL, 1, NULL, NULL, NULL, '2020-06-10 17:39:12'),
(21, 19, NULL, 'admin/user/client', 'fa fa-user', NULL, NULL, 'Clients', NULL, NULL, 0, NULL, NULL, 1, NULL, '2019-10-23 19:19:28', NULL, '2019-10-23 19:19:28'),
(22, 19, NULL, 'admin/user/team', 'fa fa-users', NULL, NULL, 'Teams', NULL, NULL, 1, NULL, NULL, 1, NULL, '2019-10-23 19:19:38', NULL, '2019-10-23 19:19:38'),
(23, 1, 'role', 'admin/roles/role', 'fa fa-check-circle-o', NULL, '[\"superuser\"]', 'Roles & Permissions', NULL, NULL, 10, NULL, NULL, 1, NULL, NULL, NULL, '2020-06-10 17:39:12'),
(24, 1, NULL, 'admin/block/block', 'fa fa-square', NULL, NULL, 'Blocks', NULL, NULL, 3, NULL, NULL, 1, NULL, '2019-10-21 01:41:49', NULL, '2019-10-21 01:41:49'),
(25, 1, NULL, 'admin/contact/contact', 'fa fa-newspaper-o', NULL, NULL, 'Contact', NULL, NULL, 11, NULL, NULL, 1, NULL, NULL, NULL, '2020-06-10 17:39:12'),
(26, 4, NULL, 'property', NULL, NULL, '[null]', 'Properties', NULL, '_self', 1, NULL, NULL, 1, NULL, NULL, NULL, '2020-09-10 17:03:56'),
(27, 5, NULL, 'contact.htm', NULL, NULL, NULL, 'Contact', NULL, NULL, 190, NULL, NULL, 1, NULL, '2019-12-20 21:42:18', NULL, '2019-12-20 21:42:18'),
(28, 1, NULL, 'admin/page/page', 'fa fa-book', NULL, NULL, 'Pages', NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, '2020-04-21 10:10:05'),
(29, 4, NULL, 'about-us.html', NULL, NULL, NULL, 'About Us', NULL, NULL, 0, NULL, NULL, 1, NULL, '2019-10-02 08:13:06', NULL, '2019-10-02 08:13:06'),
(30, 5, NULL, 'about-us.html', NULL, NULL, NULL, 'About Us', NULL, NULL, 8, NULL, NULL, 1, NULL, '2019-12-20 21:42:07', NULL, '2019-12-20 21:42:07'),
(31, 4, NULL, 'about', NULL, NULL, '[null,\"1\",\"2\",\"3\",\"4\"]', 'About', NULL, '_self', 2, NULL, 'about-us', 1, NULL, NULL, '2019-10-02 08:11:59', '2019-12-20 21:06:25'),
(32, 1, NULL, 'admin/team', 'fa fa-user-circle', NULL, '[null,\"1\",\"2\",\"3\",\"4\"]', 'Team Members', 'Manage team members', NULL, 3, NULL, 'team-member', 1, NULL, NULL, '2019-10-11 20:27:27', '2020-04-21 10:10:05'),
(33, 1, NULL, 'admin/service', 'fa fa-yelp', NULL, '[null,\"1\",\"2\",\"3\",\"4\"]', 'Service', 'Service Management', '_self', 4, NULL, 'service', 1, NULL, NULL, '2019-10-11 21:51:24', '2020-04-21 10:10:05'),
(34, 1, NULL, 'admin/section', 'fa fa-th', NULL, '[null,\"1\",\"2\"]', 'Home Page Sections', 'Home Page Section management', '_self', 3, NULL, 'sections', 1, NULL, '2020-01-17 19:01:51', '2019-10-16 18:37:17', '2020-01-17 19:01:51'),
(35, 1, NULL, 'admin/quickform', 'fa fa-window-maximize', NULL, '[null,\"1\",\"2\"]', 'Forms', NULL, '_self', 6, NULL, 'quickform', 1, NULL, NULL, '2019-10-21 03:36:23', '2020-04-21 10:10:05'),
(36, 4, NULL, '/services', NULL, NULL, '[null,\"1\",\"2\",\"3\",\"4\"]', 'Services', NULL, '_self', 0, NULL, 'services', 1, NULL, NULL, '2019-10-21 21:30:55', '2019-12-20 21:06:25'),
(37, 1, NULL, 'admin/submission', 'fa fa-envelope', NULL, '[null,\"1\",\"2\"]', 'Submissions', NULL, '_self', 7, NULL, 'submissions', 1, NULL, NULL, '2019-10-22 03:24:49', '2020-04-21 10:10:05'),
(38, 1, NULL, '/admin/theme', 'fa fa-paint-brush', NULL, '[null,\"1\",\"2\"]', 'Theme', NULL, '_self', 3, NULL, 'theme', 1, NULL, '2019-11-25 22:07:23', '2019-11-23 08:42:27', '2019-11-25 22:07:23'),
(39, 1, NULL, 'admin/property', NULL, NULL, '[null,\"1\",\"2\",\"3\",\"4\"]', 'Properties', NULL, '_self', 5, NULL, 'property', 1, NULL, NULL, '2020-01-03 19:07:04', '2020-04-21 10:10:05'),
(40, 1, NULL, 'admin/script', 'fa fa-line-chart', NULL, '[null,\"2\"]', 'Header Script', NULL, NULL, 8, NULL, 'header-script', 1, NULL, NULL, '2020-05-18 04:22:31', '2020-05-18 04:22:42'),
(41, 1, NULL, 'admin/emailinfo', NULL, NULL, '[null,\"2\"]', 'Email for more info', NULL, NULL, 9, NULL, 'email-info', 1, NULL, NULL, '2020-06-10 17:38:35', '2020-06-10 18:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2015_01_05_100001_create_clients_table', 1),
(18, '2015_01_05_100001_create_users_table', 1),
(19, '2015_01_05_100010_create_password_resets_table', 1),
(20, '2015_08_05_100011_create_pages_table', 1),
(21, '2016_07_14_100001_create_blocks_table', 1),
(22, '2017_01_02_100001_create_contacts_table', 1),
(23, '2017_05_05_100001_create_menus_table', 1),
(24, '2017_05_23_100001_create_settings_table', 1),
(25, '2017_11_09_100001_create_roles_table', 1),
(26, '2017_11_09_100002_create_role_user_table', 1),
(27, '2017_11_09_100003_create_permissions_table', 1),
(28, '2017_11_09_100004_create_permission_user_table', 1),
(29, '2017_11_09_100005_create_permission_role_table', 1),
(30, '2018_02_05_100001_create_activity_log_table', 1),
(31, '2018_07_25_100001_create_masters_table', 1),
(32, '2019_07_10_100001_create_teams_table', 1),
(33, '2019_10_21_230023_create_submissions_table', 2),
(34, '2019_10_31_131905_create_my_settings_table', 3),
(35, '2019_12_27_191910_create_properties_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `my_settings`
--

CREATE TABLE `my_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_settings`
--

INSERT INTO `my_settings` (`id`, `key`, `value`, `active`, `created_at`, `updated_at`) VALUES
(1, 'service.hover.color', '#49e11e', 1, '2019-10-24 04:00:00', '2019-10-31 18:50:48'),
(2, 'customize_style', '[null,null,null,null,null,null,null,null,null,null]', 1, '2019-11-24 05:00:00', '2019-12-20 21:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `heading` text COLLATE utf8mb4_unicode_ci,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `abstract` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `banner` mediumtext COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `compile` tinyint(1) DEFAULT '0',
  `view` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `category` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `order` int(11) DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Show','Hide') COLLATE utf8mb4_unicode_ci DEFAULT 'Show',
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `heading`, `sub_heading`, `abstract`, `content`, `meta_title`, `meta_keyword`, `meta_description`, `banner`, `images`, `compile`, `view`, `category`, `order`, `slug`, `status`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Home\"}', 'Home', '{\"en\":\"Home\"}', 'Home', NULL, '{\"en\":null}', '{\"en\":\"BHICP  \\u2022  Boyd & Hassell Industrial & Commercial Properties, INC.  in  North Carolina\"}', '{\"en\":\"BHICP\"}', '{\"en\":\"BHICP (Boyd and Hassell Industrial & Commercial Properties. Offering: commercial, industrial, retail, office space, and more in Hickory North Carolina (NC).\"}', NULL, '[]', 0, 'default', 'default', 0, 'home', '', NULL, NULL, NULL, '2020-09-10 23:09:38'),
(2, '{\"en\":\"About Us\"}', 'About Us', '{\"en\":\"Meet Lavalite\"}', 'About Us', NULL, '{\"en\":\"<div class=\\\"about\\\">\\r\\n                        <div class=\\\"row\\\">\\r\\n                            <div class=\\\"col-md-12\\\">\\r\\n                                <div class=\\\"count-numerics\\\">\\r\\n                                    <h2>Our mission is to make insurance<br>work better for businesses of all types and sizes.<\\/h2>\\r\\n                                    <ul class=\\\"list-inline row\\\">\\r\\n                                        <li class=\\\"col-md-3 col-xs-6\\\">\\r\\n                                            <div class=\\\"text-center\\\">\\r\\n                                                <div>\\r\\n                                                    <figure>1<\\/figure>\\r\\n                                                    <span>k+<\\/span>\\r\\n                                                <\\/div>\\r\\n                                                <h4>Set of pages<\\/h4>\\r\\n                                          <\\/div>\\r\\n                                        <\\/li>\\r\\n                                        <li class=\\\"col-md-3 col-xs-6\\\">\\r\\n                                            <div class=\\\"text-center\\\">\\r\\n                                                <div>\\r\\n                                                    <figure>53<\\/figure>\\r\\n                                                <\\/div>\\r\\n                                                <h4>Categories<\\/h4>\\r\\n                                            <\\/div>\\r\\n                                        <\\/li>\\r\\n                                        <li class=\\\"col-md-3 col-xs-6\\\">\\r\\n                                            <div class=\\\"text-center\\\">\\r\\n                                                <div>\\r\\n                                                    <figure>10<\\/figure>\\r\\n                                                    <span>x<\\/span>\\r\\n                                                <\\/div>\\r\\n                                                <h4>Save time<\\/h4>\\r\\n                                            <\\/div>\\r\\n                                        <\\/li>\\r\\n                                        <li class=\\\"col-md-3 col-xs-6 s-counter-v1\\\">\\r\\n                                            <div class=\\\"text-center\\\">\\r\\n                                                <div>\\r\\n                                                    <figure>9<\\/figure>\\r\\n                                                <\\/div>\\r\\n                                                <h4>Formats to use<\\/h4>\\r\\n                                            <\\/div>\\r\\n                                        <\\/li>\\r\\n                                      <\\/ul>\\r\\n                                <\\/div>\\r\\n                            <\\/div>\\r\\n                        <\\/div>\\r\\n\\r\\n                        <div class=\\\"row\\\">\\r\\n                            <div class=\\\"col-md-12\\\">\\r\\n                                <div class=\\\"promo-section\\\">\\r\\n                                    <div class=\\\"row mln mrn\\\">\\r\\n                                        <div class=\\\"col-md-6 pl-0 pr-0\\\">\\r\\n                                            <div class=\\\"content-section text-center\\\">\\r\\n                                                <h2>Creative Digital Agency<\\/h2>\\r\\n                                                <span>You are in good hands.<\\/span>\\r\\n                                                <p>It\\u2019s important to stay detail oriented with every project we tackle. Staying focused allows us to turn every project we complete into something we love.<\\/p>\\r\\n                                                <p>The time has come to bring those ideas and plans to life. This is where we really begin to visualize your napkin sketches and make them into beautiful pixels.<\\/p>\\r\\n                                                <h4>\\u2014 John Doe<\\/h4>\\r\\n                                            <\\/div>\\r\\n                                        <\\/div>\\r\\n                                        <div class=\\\"col-md-6 pl-0 pr-0 image-section\\\">\\r\\n                                        <\\/div>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n                            <\\/div>\\r\\n                        <\\/div>\\r\\n\\r\\n                        <div class=\\\"row features-section\\\">\\r\\n                            <div class=\\\"col-sm-5\\\">\\r\\n                                <div class=\\\"hor-centered-row\\\">\\r\\n                                    <div class=\\\"hor-centered-row-col exp-num\\\"><span>9<\\/span><\\/div>\\r\\n                                    <div class=\\\"hor-centered-row-col exp-year\\\">\\r\\n                                        <h4>\\r\\n                                            <span>Years<\\/span>\\r\\n                                            <span>Experience<\\/span>\\r\\n                                        <\\/h4>\\r\\n                                        <p>Front-end Design &amp; Development.<\\/p>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n                            <\\/div>\\r\\n                            <div class=\\\"col-sm-7\\\">\\r\\n                                <div class=\\\"row mb40\\\">\\r\\n                                    <div class=\\\"col-sm-6\\\">\\r\\n                                        <div class=\\\"feature-item\\\">\\r\\n                                            <i class=\\\"ti-mobile\\\"><\\/i>\\r\\n                                            <h4>Responsive Layout<\\/h4>\\r\\n                                            <p>This is where we sit down, grab a cup of coffee and dial in the details.<\\/p>\\r\\n                                        <\\/div>\\r\\n                                    <\\/div>\\r\\n                                    <div class=\\\"col-sm-6\\\">\\r\\n                                        <div class=\\\"feature-item\\\">\\r\\n                                            <i class=\\\"ti-palette\\\"><\\/i>\\r\\n                                            <h4>Fully Customizable<\\/h4>\\r\\n                                            <p>This is where we sit down, grab a cup of coffee and dial in the details.<\\/p>\\r\\n                                        <\\/div>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n\\r\\n                                <div class=\\\"row\\\">\\r\\n                                    <div class=\\\"col-sm-6\\\">\\r\\n                                        <div class=\\\"feature-item\\\">\\r\\n                                            <i class=\\\"ti-cup\\\"><\\/i>\\r\\n                                            <h4>Endless Possibilities<\\/h4>\\r\\n                                            <p>This is where we sit down, grab a cup of coffee and dial in the details.<\\/p>\\r\\n                                        <\\/div>\\r\\n                                    <\\/div>\\r\\n                                    <div class=\\\"col-sm-6\\\">\\r\\n                                        <div class=\\\"feature-item\\\">\\r\\n                                            <i class=\\\"ti-crown\\\"><\\/i>\\r\\n                                            <h4>Powerful Performance<\\/h4>\\r\\n                                            <p>This is where we sit down, grab a cup of coffee and dial in the details.<\\/p>\\r\\n                                        <\\/div>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n                            <\\/div>\\r\\n                        <\\/div>\\r\\n                    <\\/div>\"}', '{\"en\":\"Alan Carpenter, PS \\u2022 Statesville, NC - About our Team\"}', '{\"en\":\"About Us\"}', '{\"en\":\"This is a started theme for Lavalite cms, you can customize according to your requirement.\"}', NULL, '[]', 0, 'default', 'default', 0, 'about-us', '', NULL, '2019-10-20 21:40:23', NULL, '2019-10-20 21:40:23'),
(3, '{\"en\":\"Properties\"}', 'Contact Us', '{\"en\":\"Properties\"}', 'Contact Us', NULL, '{\"en\":\"<p><br><\\/p>\"}', '{\"en\":\"BHICP  \\u2022  Boyd & Hassell Industrial & Commercial Properties, INC.  in  North Carolina : Properties\"}', '{\"en\":\"Properties in Hickory, NC\"}', '{\"en\":\"Get the perfect office space or commercial property in Hickory, NC with Boyd and Hassell. We have everything form offices, commercial leasing, land, retail spaces, warehouses and more!\"}', NULL, '[]', 0, 'default', 'default', 0, 'properties', '', NULL, NULL, NULL, '2020-06-13 19:07:50'),
(4, 'Page Not found', 'Page Not found', 'Page Not found', NULL, NULL, '<p><br></p>', 'Page Not found', 'Page Not found', 'Page Not found', NULL, NULL, NULL, 'page', 'default', 0, '404', 'Show', NULL, NULL, NULL, NULL),
(5, '{\"en\":\"Test\"}', 'Test', '{\"en\":\"Test\"}', 'Test', NULL, '{\"en\":\"<p><strong style=\\\"font-family: Georgia, serif; font-size: 19px;\\\">50 million profiles shared<\\/strong><br><\\/p>\"}', '{\"en\":\"Test\"}', '{\"en\":null}', '{\"en\":null}', NULL, '[]', 0, 'default', 'default', 66, 'test', 'Show', NULL, '2019-10-20 21:58:46', '2019-10-01 07:28:50', '2019-10-20 21:58:46'),
(6, '{\"en\":\"About\"}', 'About', '{\"en\":\"About\"}', 'Team', NULL, '{\"en\":\"<p style=\\\"text-align: center; \\\"><br><\\/p>\"}', '{\"en\":\"BHICP  \\u2022  Boyd & Hassell Industrial & Commercial Properties, INC.  in  North Carolina : About\"}', '{\"en\":\"About Boyd and Hassell\"}', '{\"en\":null}', NULL, '[]', 0, 'default', 'default', 50, 'about', '', NULL, NULL, '2019-10-20 21:33:42', '2020-08-13 15:59:22'),
(7, '{\"en\":\"Services\"}', 'Services', '{\"en\":\"Services\"}', 'Services', NULL, '{\"en\":\"<p><br><\\/p>\"}', '{\"en\":\"BHICP  \\u2022  Boyd & Hassell Industrial & Commercial Properties, INC.  in  North Carolina : Services\"}', '{\"en\":\"BHICP Services\"}', '{\"en\":null}', NULL, '[]', 0, 'default', 'default', 50, 'services', '', NULL, NULL, '2019-10-20 21:59:36', '2020-05-25 17:10:39'),
(8, '{\"en\":\"Contact\"}', 'Contact', '{\"en\":\"Contact\"}', 'Contact', NULL, '{\"en\":\"<p><br><\\/p>\"}', '{\"en\":\"BHICP  \\u2022  Boyd & Hassell Industrial & Commercial Properties, INC.  in  North Carolina : Contact\"}', '{\"en\":\"Contact BHICP\"}', '{\"en\":null}', NULL, '[]', 0, 'default', 'default', 50, 'contact', '', NULL, NULL, '2019-12-23 01:55:38', '2020-01-04 01:28:37'),
(9, '{\"en\":\"Test Dev\"}', 'Test Dev', '{\"en\":\"{\\\"en\\\":\\\"Test Dev\\\"}\"}', 'Test Dev', NULL, '{\"en\":\"<p>test<\\/p>\"}', '{\"en\":\"{\\\"en\\\":\\\"Test Dev\\\"}\"}', '{\"en\":null}', '{\"en\":null}', NULL, '[]', 0, 'default', 'default', 50, 'entest-dev', 'Show', NULL, NULL, '2020-02-06 12:12:04', '2020-02-06 12:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ankit.dabrande@gmail.com', '$2y$10$del7cPoGbhEjg2wsXFIHr.xeXMH61PgojjL7N6UeL6965XiGR1Kmm', '2020-02-05 11:01:47'),
('krishna.dabrande@gmail.com', '$2y$10$EGck8bW77hQonKDvkGZlV.JXFMFQfTvsXZwiRT08Eo0nOF3UIdGfu', '2020-02-06 10:59:47'),
('lasthyun822@gmail.com', '$2y$10$etEOoGK27nSaKoH/sYktOu7SxPFYCFvlx.2oq3C.Dt5TXJY33BiPC', '2020-02-06 11:01:24'),
('owengraffix@gmail.com', '$2y$10$IU40GOJbmzi/PU4qGf2xvOzJSNVGrXZo34V6gcsBRxP2SIF7LEfRG', '2020-02-06 11:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'View Block', 'block.block.view', NULL, NULL, NULL, NULL),
(2, 'Create Block', 'block.block.create', NULL, NULL, NULL, NULL),
(3, 'Update Block', 'block.block.edit', NULL, NULL, NULL, NULL),
(4, 'Delete Block', 'block.block.delete', NULL, NULL, NULL, NULL),
(5, 'View Category', 'block.category.view', NULL, NULL, NULL, NULL),
(6, 'Create Category', 'block.category.create', NULL, NULL, NULL, NULL),
(7, 'Update Category', 'block.category.edit', NULL, NULL, NULL, NULL),
(8, 'Delete Category', 'block.category.delete', NULL, NULL, NULL, NULL),
(9, 'View Contact', 'contact.contact.view', NULL, NULL, NULL, NULL),
(10, 'Create Contact', 'contact.contact.create', NULL, NULL, NULL, NULL),
(11, 'Update Contact', 'contact.contact.edit', NULL, NULL, NULL, NULL),
(12, 'Delete Contact', 'contact.contact.delete', NULL, NULL, NULL, NULL),
(13, 'View Page', 'page.page.view', NULL, NULL, NULL, NULL),
(14, 'Create Page', 'page.page.create', NULL, NULL, NULL, NULL),
(15, 'Update Page', 'page.page.edit', NULL, NULL, NULL, NULL),
(16, 'Delete Page', 'page.page.delete', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`id`, `permission_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(2, 2, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(3, 4, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(4, 3, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(5, 6, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(6, 8, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(7, 7, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(8, 5, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(9, 10, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(10, 12, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(11, 11, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(12, 9, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(13, 14, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(14, 16, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(15, 15, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(16, 13, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(17, 1, 5, '2020-09-10 18:57:26', '2020-09-10 18:57:26'),
(18, 1, 4, '2020-09-10 18:58:06', '2020-09-10 18:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` longtext COLLATE utf8mb4_unicode_ci,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `construction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoning` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_map` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lookup_mls` longtext COLLATE utf8mb4_unicode_ci,
  `gallery` longtext COLLATE utf8mb4_unicode_ci,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `construction_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `construction_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceiling_height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lighting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truck_loading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rest_rooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `former_use` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `water` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sewer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `power` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parking` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_gis` longtext COLLATE utf8mb4_unicode_ci,
  `min_price` int(255) DEFAULT NULL,
  `max_price` int(255) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_per_sf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `info`, `category`, `type`, `price`, `square`, `image`, `size`, `condition`, `construction`, `zoning`, `dimension`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`, `google_map`, `lookup_mls`, `gallery`, `pin`, `construction_date`, `construction_type`, `ceiling_height`, `lighting`, `truck_loading`, `rest_rooms`, `former_use`, `water`, `sewer`, `gas`, `power`, `parking`, `city`, `state`, `zip`, `google_gis`, `min_price`, `max_price`, `slug`, `price_per_sf`, `status`) VALUES
(27, '273 2nd Ave SE', '1,000 sf suite in The Village Corner Shopping Center available for lease. The suite is in good condition. The ceiling height is 9\' high. Water & sewer are with The City of Hickory and is included in the rental rate. There is central air conditioning and hot air heat. Paved common parking area.', 'lease', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, 1000, '273 2nd Ave SE- Front.JPG', '1000', 'Good', NULL, 'C-2', 'Est.', NULL, NULL, NULL, '2020-04-21 16:46:13', '2020-09-16 23:16:45', 'https://www.google.com/maps/place/273+2nd+Ave+SE,+Hickory,+NC+28602,+USA/@35.7299087,-81.3350608,17z/data=!3m1!4b1!4m5!3m4!1s0x885131d3bcd3ffff:0x58ae73833a5295d8!8m2!3d35.7299087!4d-81.3328721', NULL, 'a:2:{i:0;s:63:\"public/storage/images/gallery/1600283805153273-2nd-ave-se-2.jpg\";i:1;s:55:\"public/storage/images/gallery/1600283805230IMG_2788.JPG\";}', '2749292539', '1982', 'BRICK', '9\'', 'Fluorescent', 'Common', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved Common', 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73116&lon=-81.33852&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=370207690265', 650, NULL, '273-2nd-ave-se-hickory', '$650/mo includes water', 'inactive'),
(28, '22 E 1st St', NULL, 'sale', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, 6720, 'IMG_4051.jpg', '0.3', 'Good', NULL, 'B-3', 'Est.', NULL, NULL, NULL, '2020-04-23 15:41:07', '2020-09-16 22:09:15', 'https://www.google.com/maps/place/22+E+1st+St,+Newton,+NC+28658,+USA/@35.6636763,-81.2238863,17z/data=!3m1!4b1!4m5!3m4!1s0x885134390837ff17:0x385cb022c143a521!8m2!3d35.6636763!4d-81.2216976', NULL, 'a:4:{i:0;s:55:\"public/storage/images/gallery/1600192595903IMG_4058.jpg\";i:1;s:55:\"public/storage/images/gallery/1600192595992IMG_4060.jpg\";i:2;s:55:\"public/storage/images/gallery/1589612564618building.jpg\";i:3;s:78:\"public/storage/images/gallery/1589612515195BOYD&HASSELL-22-e-1st-st-newton.jpg\";}', '374013031845', '1920', 'Brick/Stucco', '11\'-15\'', 'Fluorescent', NULL, NULL, NULL, 'City', NULL, NULL, 'City', 'Public', 'Newton', 'North Carolina', '28658', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.66368&lon=-81.22167&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFTFTFTTTTTT&pinc=374013031845', 169900, NULL, '22-e-1st-st-newton', 'Asking Price $169,900', 'inactive'),
(29, '200 1st Ave NW', 'Various suites available', 'lease', 'a:1:{i:0;s:6:\"office\";}', NULL, NULL, '200 1st Ave NW- Front View.jpg', 'Various', 'Great', NULL, 'C-1', 'Est.', NULL, NULL, NULL, '2020-06-04 22:06:51', '2020-09-15 21:32:55', 'https://www.google.com/maps/place/200+1st+Ave+NW,+Hickory,+NC+28601,+USA/@35.733749,-81.3422161,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e2aabac1563:0x90ef8b4108da0089!8m2!3d35.733749!4d-81.3400274', NULL, 'a:0:{}', '370319505173', '1974', 'Block', '12\'', 'Fluorescent', '1 Grd. Level', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Power', 'Paved lot', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.73366&lon=-81.3401&layers=FFBTFFFFFFFTFTFFTFFFTTFFTT&pinc=370319505173', NULL, NULL, '200-1st-ave-nw-hickory', 'Lease Price - $12.00/sf - $15.00/sf Full Service', 'active'),
(35, '3849 Johnson Bridge Rd', NULL, 'lease', 'a:1:{i:0;s:6:\"office\";}', NULL, 924, '3849 Johnson Bridge Rd- Front.JPG', NULL, 'Good', NULL, 'G-B', 'Est.', NULL, NULL, NULL, '2020-06-04 22:22:56', '2020-09-16 22:08:25', 'https://www.google.com/maps/place/3849+Johnson+Bridge+Rd,+Hickory,+NC+28602,+USA/@35.7082825,-81.4543579,17z/data=!3m1!4b1!4m5!3m4!1s0x88512967aaca6277:0x2653db0e2b5a6c0a!8m2!3d35.7082825!4d-81.4521692', NULL, 'a:0:{}', '2772119675', '1965', 'Block', '10\'', 'Fluorescent', 'None', NULL, NULL, 'City', NULL, NULL, NULL, 'Paved', 'Hickory', 'North Carolina', '28602', 'http://gis.burkenc.org/', 600, NULL, '3849-johnson-bridge-rd-hickory', 'Lease Price: $600/mo', 'inactive'),
(36, '1331 4th St Dr NW', NULL, 'lease', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, NULL, '1331 4th St Dr- Front View.jpg', 'Various', 'Great', NULL, 'OI', 'Est.', NULL, NULL, NULL, '2020-06-04 22:32:02', '2020-09-16 23:20:37', 'https://www.google.com/maps/place/1331+4th+St+Dr+NW,+Hickory,+NC+28601,+USA/@35.74985,-81.3418293,17z/data=!3m1!4b1!4m5!3m4!1s0x88513027547d280d:0x9e912e9cdecb33ca!8m2!3d35.74985!4d-81.3396406', NULL, 'a:2:{i:0;s:70:\"public/storage/images/gallery/16001935898631331 4th St Dr- parking.jpg\";i:1;s:72:\"public/storage/images/gallery/16001935891781331 4th St Dr- Rear View.JPG\";}', '370311558935', '1978', 'Brick', '9\'+', 'Fluorescent', 'None', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved Lot', 'Hickory', 'North Carolina', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.73461&lon=-http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.71727&lon=-http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.7498&lon=-', 1300, 12400, '1331-4th-st-dr-nw-hickory', 'Lease Price - $12.00/sf - $14.00/sf Full Service', 'active'),
(37, '1331 4th St Dr NW', NULL, 'sale', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, 24800, '1331 4th St Dr- Front View.jpg', NULL, 'Great', NULL, 'OI', 'Est.', NULL, NULL, NULL, '2020-06-04 22:38:48', '2020-09-15 22:15:04', 'https://www.google.com/maps/place/1331+4th+St+Dr+NW,+Hickory,+NC+28601,+USA/@35.74985,-81.3418293,17z/data=!3m1!4b1!4m5!3m4!1s0x88513027547d280d:0x9e912e9cdecb33ca!8m2!3d35.74985!4d-81.3396406', NULL, 'a:2:{i:0;s:70:\"public/storage/images/gallery/16001937048211331 4th St Dr- parking.jpg\";i:1;s:72:\"public/storage/images/gallery/16001937042061331 4th St Dr- Rear View.JPG\";}', '370311558935', '1978', 'Brick', '9\'+', 'Fluorescent', 'None', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved Lot', 'Hickory', 'North Carolina', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.73461&lon=-http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.71727&lon=-http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.7498&lon=-', 1490000, NULL, '1331-4th-st-dr-nw-hickory-1', 'Asking Price $1,490,000', 'active'),
(41, '635 Main Ave SW', NULL, 'lease', 'a:1:{i:0;s:6:\"office\";}', NULL, 2328, '635 Main Ave SW- Front.jpg', NULL, 'Good', NULL, 'C-5', '24\'x97\'', NULL, NULL, NULL, '2020-06-04 22:53:26', '2020-09-15 21:54:52', 'https://www.google.com/maps/place/635+Main+Ave+SW,+Hickory,+NC+28602,+USA/@35.7314634,-81.3510249,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e2da8bf2889:0x14730e1fd195a5e7!8m2!3d35.7314634!4d-81.3488362', NULL, 'a:3:{i:0;s:69:\"public/storage/images/gallery/1591296806819635 Main Ave SW- Front.jpg\";i:1;s:70:\"public/storage/images/gallery/1591296806521635 Main Ave SW- Office.jpg\";i:2;s:73:\"public/storage/images/gallery/1591296806737635 Main Ave SW- Warehouse.JPG\";}', '370206299442', '1983', 'Brick', '12\'', 'Fluorescent', 'Common', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved Common', 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.73151&lon=-81.3489&layers=FFBTFFFFFFFTFTFFTFFFTTFFTT&pinc=370206299442', 950, NULL, '635-main-ave-sw-hickory', 'Lease Price: $950/mo', 'inactive'),
(42, '637 Main Ave SW', NULL, 'lease', 'a:1:{i:0;s:6:\"office\";}', NULL, 2328, '637 Main Ave SW- Front.JPG', NULL, 'Good', NULL, 'C-5', '24\'x97\'', NULL, NULL, NULL, '2020-06-04 22:58:42', '2020-09-15 21:54:07', 'https://www.google.com/maps/place/637+Main+Ave+SW,+Hickory,+NC+28602,+USA/data=!4m2!3m1!1s0x88512e2da7d1f66b:0x4f2f1183236d983c?sa=X&ved=2ahUKEwiFksKYovrpAhWhyDgGHeUTBe0Q8gEwAHoECAsQAQ', NULL, 'a:3:{i:0;s:75:\"public/storage/images/gallery/1591297122693637 Main Ave SW- Rear Office.JPG\";i:1;s:70:\"public/storage/images/gallery/1591297122307637 Main Ave SW- Office.JPG\";i:2;s:69:\"public/storage/images/gallery/1591297122109637 Main Ave SW- Front.JPG\";}', '370206299442', '1983', 'Brick', '12\'', 'Fluorescent', 'Common', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved Common', 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.73151&lon=-81.3489&layers=FFBTFFFFFFFTFTFFTFFFTTFFTT&pinc=370206299442', 950, NULL, '637-main-ave-sw-hickory', 'Lease Price: $950/mo', 'inactive'),
(43, '1080 25th St SE', NULL, 'lease', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, NULL, '1080 25th St SE- Front.jpg', NULL, 'Good', NULL, 'IND', '91\'x32\'', NULL, NULL, NULL, '2020-06-04 23:22:58', '2020-09-15 21:45:41', 'https://www.google.com/maps/place/1080+25th+St+SE,+Hickory,+NC+28602,+USA/@35.7138122,-81.2899653,17z/data=!3m1!4b1!4m5!3m4!1s0x8851310e8020e0c7:0x11f1f719c989056f!8m2!3d35.7138122!4d-81.2877766', NULL, 'a:2:{i:0;s:69:\"public/storage/images/gallery/15912985789501080 25th St SE- Front.jpg\";i:1;s:72:\"public/storage/images/gallery/15912985782921080 25th St SE- Interior.jpg\";}', '372213028595', '1980', 'Brick', '9\'-10\'', 'Fluorescent', 'N/A', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Gravel Lot', 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.71384&lon=-81.28791&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFTFTFTTTTTT&pinc=372213028595', 1900, NULL, '1080-25th-st-se-hickory', 'Lease Price: $1,900/mo', 'active'),
(44, '1516 F Ave SE, Unit C&D', NULL, 'lease', 'a:1:{i:0;s:10:\"industrial\";}', NULL, 6250, '1516 F Ave Ste C&D- Front.jpg', NULL, 'Great', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-04 23:28:26', '2020-09-15 21:53:10', 'https://www.google.com/maps/place/1516+F+Ave+SE+Unit+C%26D,+Hickory,+NC+28602,+USA/data=!4m2!3m1!1s0x885131b350964511:0x740750fdac3bc6ee?sa=X&ved=2ahUKEwiS2679ofrpAhWHXisKHerwBJoQ8gEwAHoECAwQAQ', NULL, 'a:3:{i:0;s:73:\"public/storage/images/gallery/16000907084021516 F Ave Ste C&D- Office.JPG\";i:1;s:76:\"public/storage/images/gallery/16000907087931516 F Ave Ste C&D- Warehouse.JPG\";i:2;s:55:\"public/storage/images/gallery/1600090708898IMG_0736.JPG\";}', '371206399031', '1970', 'Brick', '10\'-12\'', 'Fluorescent', 'N/A', NULL, NULL, 'City', NULL, NULL, 'Duke', NULL, 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73114&lon=-81.31191&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=371206399031', 2500, NULL, '1516-f-ave-se-unit-cd-hickory', 'Lease Price: $2,500/mo', 'active'),
(45, '510 1st Ave SW', NULL, 'lease', 'a:1:{i:0;s:10:\"industrial\";}', NULL, 8700, '510 1st Ave SW- Front.JPG', NULL, 'Fair', NULL, 'C-2', 'Est.', NULL, NULL, NULL, '2020-06-04 23:31:21', '2020-09-15 21:48:41', 'https://www.google.com/maps/place/510+1st+Ave+SW,+Hickory,+NC+28602,+USA/data=!4m2!3m1!1s0x88512e2c642f576f:0xc54daeccc990ef8b?sa=X&ved=2ahUKEwjw5L3lofrpAhWpzzgGHUdMCfEQ8gEwAHoECAsQAQ', NULL, 'a:0:{}', '370206396275', '1900', 'Brick/Stucco', '12\'-14\'', 'Fluorescent', 'Grd. Level', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved', 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73116&lon=-81.33852&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=370207690265', 1200, NULL, '510-1st-ave-sw-hickory', 'Lease Price: $1,200/mo', 'inactive'),
(46, '210 13th Ave Pl NW', NULL, 'lease', 'a:1:{i:0;s:6:\"office\";}', NULL, 4200, '210 13th Ave Pl. NW- Front.JPG', NULL, 'Great', NULL, 'OI', 'Est.', NULL, NULL, NULL, '2020-06-04 23:35:03', '2020-09-15 21:53:54', 'https://www.google.com/maps/place/210+13th+Ave+Pl+NW,+Hickory,+NC+28601,+USA/@35.7508371,-81.3426028,17z/data=!4m5!3m4!1s0x88512fdf5a70756f:0x27a1f186e418ab35!8m2!3d35.7508371!4d-81.3404141', NULL, 'a:3:{i:0;s:73:\"public/storage/images/gallery/1591299303641210 13th Ave Pl NW- Aerial.JPG\";i:1;s:76:\"public/storage/images/gallery/1591299303416210 13th Ave Pl NW- Floorplan.JPG\";i:2;s:73:\"public/storage/images/gallery/1591299303918210 13th Ave Pl. NW- Front.JPG\";}', NULL, '1977', 'Brick', '10\'+', 'Fluorescent', 'N/A', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved Lot', 'Hickory', 'North Carolina', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.75077&lon=-81.3404&layers=FFBFFTFFFFFFFFFFFFTFFFFTTFFFFFFFTFFTTTTTT&pinc=370311566316', 4200, 10200, '210-13th-ave-pl-nw-hickory', NULL, 'active'),
(47, '210 13th Ave Pl NW', NULL, 'sale', 'a:1:{i:0;s:6:\"office\";}', NULL, 4200, '210 13th Ave Pl. NW- Front.JPG', NULL, 'Great', NULL, 'OI', 'Est.', NULL, NULL, NULL, '2020-06-04 23:40:33', '2020-09-15 21:53:27', 'https://www.google.com/maps/place/210+13th+Ave+Pl+NW,+Hickory,+NC+28601,+USA/@35.7508371,-81.3426028,17z/data=!3m1!4b1!4m5!3m4!1s0x88512fdf5a70756f:0x27a1f186e418ab35!8m2!3d35.7508371!4d-81.3404141', NULL, 'a:3:{i:0;s:72:\"public/storage/images/gallery/159129963359210 13th Ave Pl NW- Aerial.JPG\";i:1;s:76:\"public/storage/images/gallery/1591299633522210 13th Ave Pl NW- Floorplan.JPG\";i:2;s:73:\"public/storage/images/gallery/1591299633387210 13th Ave Pl. NW- Front.JPG\";}', '370311566316', '1977', 'Brick', '10\'+', 'Fluorescent', 'N/A', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved Lot', 'Hickory', 'North Carolina', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.75077&lon=-81.3404&layers=FFBFFTFFFFFFFFFFFFTFFFFTTFFFFFFFTFFTTTTTT&pinc=370311566316', 899000, NULL, '210-13th-ave-pl-nw-hickory-1', 'Asking Price: $899,000', 'active'),
(48, '1720-1722 Tate Blvd SE', NULL, 'sale', 'a:3:{i:0;s:6:\"office\";i:1;s:10:\"industrial\";i:2;s:6:\"retail\";}', NULL, 10000, '1720 Tate Blvd SE.jpg', NULL, 'Good', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-04 23:44:20', '2020-09-16 23:15:02', 'https://www.google.com/maps/place/1720+Tate+Blvd+SE,+Hickory,+NC+28602,+USA/@35.7280664,-81.3128173,17z/data=!3m1!4b1!4m5!3m4!1s0x885131b3bbea352b:0xdb572e0a1d945703!8m2!3d35.7280664!4d-81.3106286', NULL, 'a:5:{i:0;s:65:\"public/storage/images/gallery/15912998606731720 Tate Blvd (2).jpg\";i:1;s:65:\"public/storage/images/gallery/15912998601651720 Tate Blvd (1).jpg\";i:2;s:61:\"public/storage/images/gallery/15912998602771720 Tate Blvd.jpg\";i:3;s:64:\"public/storage/images/gallery/15912998609671720-tate-blvd-se.jpg\";i:4;s:66:\"public/storage/images/gallery/15912998608321720-tate-blvd-se-1.jpg\";}', '371206473833', '1986', 'Brick/Stucco', '12\'', NULL, 'Dock Height', NULL, NULL, 'City', 'City', NULL, 'Duke', 'Paved Lot', 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.70941&lon=-http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.72793&lon=-81.31038&layers=FBFFTFFFFFFFFFTFFTTTTFFFFFFTTTTTTT&pinc=371206473833', 799900, NULL, '1720-tate-blvd-se-hickory', 'Asking Price: $799,000', 'inactive'),
(49, '1722 Tate Blvd SE', NULL, 'lease', 'a:3:{i:0;s:6:\"office\";i:1;s:10:\"industrial\";i:2;s:6:\"retail\";}', NULL, NULL, 'IMG_0829.jpg', NULL, 'Good', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-04 23:57:53', '2020-09-16 23:14:27', 'https://www.google.com/maps/place/1722+Tate+Blvd+SE,+Hickory,+NC+28602,+USA/@35.7285353,-81.3111307,17z/data=!3m1!4b1!4m5!3m4!1s0x885131b289d577db:0x294828e84b215060!8m2!3d35.7285353!4d-81.308942', NULL, 'a:0:{}', '371206473833', '1986', 'Brick/Stucco', '12\'', 'Fluorescent', 'Dock Height', NULL, NULL, 'City', 'City', NULL, 'Paved Lot', NULL, 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.70941&lon=-http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.72793&lon=-81.31038&layers=FBFFTFFFFFFFFFTFFTTTTFFFFFFTTTTTTT&pinc=371206473833', 6500, NULL, '1722-tate-blvd-se-hickory', 'Lease Price: $6,500/mo', 'active'),
(50, '1720 Tate Blvd SE', NULL, 'sale', 'a:3:{i:0;s:6:\"office\";i:1;s:10:\"industrial\";i:2;s:6:\"retail\";}', NULL, 20788, 'IMG_0828.jpg', NULL, 'Good', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-05 00:00:49', '2020-09-16 23:14:46', 'https://www.google.com/maps/place/1722+Tate+Blvd+SE,+Hickory,+NC+28602,+USA/@35.7285353,-81.3111307,17z/data=!3m1!4b1!4m5!3m4!1s0x885131b289d577db:0x294828e84b215060!8m2!3d35.7285353!4d-81.308942', NULL, 'a:0:{}', '371206473833', '1986', 'Brick/Stucco', '12\'', 'Fluorescent', 'Dock Height', NULL, NULL, 'City', 'City', NULL, 'Duke', NULL, 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.70941&lon=-http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.72793&lon=-81.31038&layers=FBFFTFFFFFFFFFTFFTTTTFFFFFFTTTTTTT&pinc=371206473833', 6500, NULL, '1722-tate-blvd-se-hickory-1', 'Lease Price: $6,500/mo', 'inactive'),
(52, '22  S Center St', 'Can be subdivided', 'lease', 'a:1:{i:0;s:6:\"office\";}', NULL, 7544, '22 S. Center St- Front.JPG', NULL, 'Great', NULL, 'C-1', 'Est.', NULL, NULL, NULL, '2020-06-05 00:10:21', '2020-09-15 21:52:53', 'https://www.google.com/maps/place/22+S+Center+St,+Hickory,+NC+28602,+USA/@35.7313479,-81.3410045,17z/data=!3m1!4b1!4m5!3m4!1s0x885131d50b1c86bd:0xb63f1985b7da0ea!8m2!3d35.7313479!4d-81.3388158', NULL, 'a:4:{i:0;s:69:\"public/storage/images/gallery/159130142176922 S. Center St- Front.JPG\";i:1;s:68:\"public/storage/images/gallery/159130142143722 S. Center St- Side.JPG\";i:2;s:73:\"public/storage/images/gallery/159130142180922 S. Center St- 2nd Floor.JPG\";i:3;s:73:\"public/storage/images/gallery/159130142129522 S. Center St- 1st Floor.JPG\";}', '370207690265', '1940', 'Brick', '10\'', 'Fluorescent', NULL, NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Power', 'Paved/Shared City', 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73116&lon=-81.33852&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=370207690265', NULL, NULL, '22-s-center-st-hickory', 'Lease Price - $9.50/sf', 'active'),
(53, '1243 E Garner Bagnal Blvd', NULL, 'lease', 'a:1:{i:0;s:10:\"industrial\";}', NULL, 32400, 'IMG_2085.jpg', NULL, 'Good', NULL, 'HI', 'Est.', NULL, NULL, NULL, '2020-06-05 00:14:25', '2020-09-16 22:02:04', 'https://www.google.com/maps/place/1243+Garner+Bagnal+Blvd,+Statesville,+NC+28677,+USA/@35.7712912,-80.8598596,17z/data=!3m1!4b1!4m5!3m4!1s0x885159b24c50359b:0x4ddeaef3273a1bc4!8m2!3d35.7712912!4d-80.8576709', NULL, 'a:2:{i:0;s:82:\"public/storage/images/gallery/15913016657871243 E Garner Bagnal Blvd- Interior.jpg\";i:1;s:84:\"public/storage/images/gallery/15913016659931243 E Garner Bagnal Blvd- Interior 2.jpg\";}', '4744808972', '1955', 'Brick/Block', '16\'-20\'', 'Fluorescent', '3 Dock Height', NULL, NULL, 'City of Statesville', 'City of Statesville', NULL, 'CIty of Statesville', 'Paved', 'Statesville', 'North Carolina', NULL, 'https://iredell.connectgis.com/Map.aspx', 7425, NULL, '1243-e-garner-bagnal-blvd', '$2.75/sf - NNN', 'active'),
(54, '66 Highway 321 NW', NULL, 'sale', 'a:1:{i:0;s:10:\"industrial\";}', NULL, 48071, '66 Hwy 321 NW- Front.JPG', NULL, 'Great', NULL, 'C-2', 'Est.', NULL, NULL, NULL, '2020-06-05 16:44:57', '2020-09-16 23:14:06', 'https://www.google.com/maps/place/66+US-321,+Hickory,+NC+28601,+USA/@35.7326957,-81.3663628,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e4a56ea3d13:0x99f886248b31d48f!8m2!3d35.7326957!4d-81.3641741', NULL, 'a:2:{i:0;s:67:\"public/storage/images/gallery/159136111814466 Hwy 321 NW- Front.JPG\";i:1;s:70:\"public/storage/images/gallery/159136111813066 Hwy 321 NW- Interior.jpg\";}', '279208893899', '1969', 'Retail/Distribution', '12\'-18\'', 'Fluorescent', 'Dock Height/Grd Level', NULL, NULL, 'City', 'City', NULL, 'Duke', NULL, 'Hickory', 'North Carolina', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73253&lon=-81.36431&layers=FFBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=279208893899', 1399900, NULL, '66-highway-321-nw-hickory', 'Asking Price: $1,399,900', 'active'),
(55, '110 Somerset Drive NW', NULL, 'lease', 'a:1:{i:0;s:10:\"industrial\";}', NULL, 80460, 'IMG_2025.jpg', NULL, 'Good', NULL, 'M-1', 'Est.', NULL, NULL, NULL, '2020-06-05 16:48:18', '2020-09-16 23:13:49', 'https://www.google.com/maps/place/110+Somerset+Dr+NW,+Hickory,+NC+28601,+USA/@35.722969,-81.2528347,17z/data=!3m1!4b1!4m5!3m4!1s0x885136d4be7a3495:0x1fb80841c76e7f59!8m2!3d35.722969!4d-81.250646', NULL, 'a:2:{i:0;s:59:\"public/storage/images/gallery/1591361298651110 Somerset.jpg\";i:1;s:65:\"public/storage/images/gallery/1591361298841110 Somerset Dr NW.jpg\";}', '373209159695', '1982', 'Brick', '14\'', 'Fluorescent', 'Dock Height/Grd Level', NULL, NULL, 'City', 'City', NULL, 'Duke', 'Paved Lot', 'Conover', 'North Carolina', '28613', 'http://gis.catawbacountync.gov/parcel/?zoom=9&lat=35.72287&lon=-81.25059&layers=FFBTFFFFFFFTFTFFTFFFTTFFTT&pinc=373209159695', 18500, NULL, '110-somerset-drive-nw-conover', 'Lease Price: $2.75/sf', 'active'),
(56, '110 Somerset Drive NW', NULL, 'sale', 'a:1:{i:0;s:10:\"industrial\";}', NULL, 80460, 'IMG_2025.jpg', NULL, 'Good', NULL, 'M-1', 'Est.', NULL, NULL, NULL, '2020-06-05 16:51:34', '2020-09-16 23:13:35', 'https://www.google.com/maps/place/110+Somerset+Dr+NW,+Hickory,+NC+28601,+USA/@35.722969,-81.2528347,17z/data=!3m1!4b1!4m5!3m4!1s0x885136d4be7a3495:0x1fb80841c76e7f59!8m2!3d35.722969!4d-81.250646', NULL, 'a:2:{i:0;s:59:\"public/storage/images/gallery/1591361494366110 Somerset.jpg\";i:1;s:65:\"public/storage/images/gallery/1591361494477110 Somerset Dr NW.jpg\";}', '373209159695', '1982', 'Brick', '14\'', 'Fluorescent', 'Dock Height/Grd Level', NULL, NULL, 'City', 'City', NULL, 'Duke', 'Paved Lot', 'Conover', 'North Carolina', '28613', 'http://gis.catawbacountync.gov/parcel/?zoom=9&lat=35.72287&lon=-81.25059&layers=FFBTFFFFFFFTFTFFTFFFTTFFTT&pinc=373209159695', 2200000, NULL, '110-somerset-drive-nw-conover-1', NULL, 'active'),
(57, '1500 13th St SW', NULL, 'lease', 'a:1:{i:0;s:6:\"office\";}', NULL, 90000, '1500 13th St SW- Front.jpg', NULL, 'Great', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-05 16:55:55', '2020-09-15 21:38:54', 'https://www.google.com/maps/place/1500+13th+St+SW,+Hickory,+NC+28602,+USA/@35.710451,-81.3622137,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e14e4f39da7:0x64f0b562d399193c!8m2!3d35.710451!4d-81.360025', NULL, 'a:2:{i:0;s:69:\"public/storage/images/gallery/15913617555151500 13th St SW- Front.jpg\";i:1;s:72:\"public/storage/images/gallery/15913617554371500 13th St SW- Interior.jpg\";}', '279220916617', '1985', 'Brick', '20\'+', 'Fluorescent', 'Dock Height', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved', 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73116&lon=-81.33852&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=370207690265', NULL, NULL, '1500-13th-st-sw-hickory', NULL, 'inactive'),
(58, '950 German St NW', NULL, 'lease', 'a:1:{i:0;s:10:\"industrial\";}', NULL, 143022, '950 German St 2.JPG', NULL, 'Good', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-05 17:02:54', '2020-09-16 23:18:22', 'https://www.google.com/maps/place/950+German+St+NW,+Lenoir,+NC+28645,+USA/@35.9209452,-81.5611631,17z/data=!3m1!4b1!4m5!3m4!1s0x8850deffd90d5437:0x4307cb58f3094b3e!8m2!3d35.9209452!4d-81.5598987', NULL, 'a:3:{i:0;s:55:\"public/storage/images/gallery/1600283902650IMG_2716.JPG\";i:1;s:60:\"public/storage/images/gallery/1591362174483950 German St.jpg\";i:2;s:62:\"public/storage/images/gallery/1591362174911950 German St 3.JPG\";}', '2749292539', '1964', 'Masonry', '8\'-26\'', 'Fluorescent', 'Dock Height', NULL, NULL, 'City', 'City', NULL, 'Duke', 'paved Lot', 'Lenoir', 'North Carolina', '28645', 'http://gis.caldwellcountync.org/maps/', 29800, NULL, '950-german-st-nw-lenoir', 'Asking Price: $2.50/sf NNN', 'active'),
(59, '950 German St NW', NULL, 'sale', 'a:1:{i:0;s:10:\"industrial\";}', NULL, 143022, '950 German St 2.JPG', NULL, 'Good', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-05 17:07:01', '2020-09-15 21:37:06', 'https://www.google.com/maps/place/950+German+St+NW,+Lenoir,+NC+28645,+USA/@35.9209452,-81.5620874,17z/data=!3m1!4b1!4m5!3m4!1s0x8850deffd90d5437:0x4307cb58f3094b3e!8m2!3d35.9209452!4d-81.5598987', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73116&lon=-81.33852&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=370207690265', 'a:4:{i:0;s:60:\"public/storage/images/gallery/1591362421155950 German St.jpg\";i:1;s:62:\"public/storage/images/gallery/1591362421320950 German St 2.JPG\";i:2;s:65:\"public/storage/images/gallery/1591362421310950-german-st-nw-1.jpg\";i:3;s:62:\"public/storage/images/gallery/1591362421580950 German St 3.JPG\";}', '2749292539', '1964', 'Masonry', '8\'-26\'', 'Fluorescent', 'Dock Height', NULL, NULL, 'City', 'City', NULL, 'Duke', 'Paved Lot', 'Lenoir', 'North Carolina', '28645', 'http://gis.caldwellcountync.org/maps/', 1571100, NULL, '950-german-st-nw-lenoir-1', 'Asking Price $1,571,100', 'active'),
(61, '22  S Center St', 'Can be subdivided', 'sale', 'a:1:{i:0;s:6:\"office\";}', NULL, 22870, '22 S. Center St- Front.JPG', NULL, 'Great', NULL, 'C-1', 'Est.', NULL, NULL, NULL, '2020-07-18 10:42:33', '2020-09-16 22:01:42', 'https://www.google.com/maps/place/22+S+Center+St,+Hickory,+NC+28602,+USA/@35.7313479,-81.3410045,17z/data=!3m1!4b1!4m5!3m4!1s0x885131d50b1c86bd:0xb63f1985b7da0ea!8m2!3d35.7313479!4d-81.3388158', NULL, 'a:3:{i:0;s:72:\"public/storage/images/gallery/16000922974022 S. Center St- 2nd Floor.JPG\";i:1;s:55:\"public/storage/images/gallery/1600092297213IMG_0726.JPG\";i:2;s:55:\"public/storage/images/gallery/1600092297812IMG_0733.JPG\";}', '370207690265', '1940', 'Brick', '10\'', 'Fluorescent', NULL, NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved/Shared City', 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73116&lon=-81.33852&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=370207690265', NULL, NULL, '22-s-center-st-hickory', 'Sale Price - $2,500,000', 'active'),
(62, '375 Main Ave NE', '2,100 sf of space in basement', 'lease', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, 8400, 'IMG_4282.jpg', NULL, 'Excellent', NULL, 'C-2', NULL, NULL, NULL, NULL, '2020-07-18 11:01:15', '2020-09-18 12:27:59', 'https://www.google.com/maps/place/375+Main+Ave+NE,+Hickory,+NC+28601,+USA/data=!4m2!3m1!1s0x8851302d690ae27d:0x73f1a99225c3df04?sa=X&ved=2ahUKEwip6-GrndbqAhU27XMBHa8UD5oQ8gEwAHoECAsQAQ', NULL, 'a:4:{i:0;s:55:\"public/storage/images/gallery/1600091492225IMG_2877.JPG\";i:1;s:55:\"public/storage/images/gallery/1600091492114IMG_4283.jpg\";i:2;s:55:\"public/storage/images/gallery/1600091492515IMG_4284.jpg\";i:3;s:55:\"public/storage/images/gallery/1600091492482IMG_4290.jpg\";}', '370320806421', '1947', 'Brick', '10\'-12\'', 'Fluorescent', '3 Delivery Height', NULL, NULL, 'City', 'City', NULL, 'Duke Energy', 'Paved', 'Hickory', 'North Carolina', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73467&lon=-81.32989&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFTFTFTTTTTT&pinc=370320806421', 4000, NULL, '375-main-ave-ne-1', 'Lease Price: $4,000/mo', 'active'),
(63, '375 Main Ave NE', '2,100 sf of space in basement', 'sale', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, 8400, 'IMG_4282.jpg', NULL, 'Excellent', NULL, 'C-2', 'Est.', NULL, NULL, NULL, '2020-07-18 11:09:59', '2020-09-18 12:29:51', 'https://www.google.com/maps/place/375+Main+Ave+NE,+Hickory,+NC+28601,+USA/@35.7344986,-81.3323191,17z/data=!3m1!4b1!4m5!3m4!1s0x8851302d690ae27d:0x73f1a99225c3df04!8m2!3d35.7344986!4d-81.3301304', NULL, 'a:3:{i:0;s:55:\"public/storage/images/gallery/1600092068882IMG_2877.JPG\";i:1;s:55:\"public/storage/images/gallery/1600092068362IMG_4284.jpg\";i:2;s:55:\"public/storage/images/gallery/1600092068972IMG_4290.jpg\";}', '370320806421', '1947', 'Brick', '10\'-12\'', 'Fluorescent', '3 Delivery Height', NULL, NULL, 'City', 'City', NULL, 'Duke Energy', 'Paved', 'Hickory', 'North Carolina', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73467&lon=-81.32989&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFTFTFTTTTTT&pinc=370320806421', 464900, NULL, '375-main-ave-ne', 'Sale Price - $464,900', 'active'),
(64, '647 Hopewell Rd', NULL, 'lease', 'a:1:{i:0;s:10:\"industrial\";}', NULL, 185612, 'Aerial.jpg', NULL, 'Good', NULL, 'M-1', NULL, NULL, NULL, NULL, '2020-07-18 11:16:25', '2020-09-15 22:17:02', 'https://www.google.com/maps/place/647+Hopewell+Rd,+Morganton,+NC+28655,+USA/data=!4m2!3m1!1s0x8850ce0a4c0c2c1f:0x564e913f0d55431a?sa=X&ved=2ahUKEwjt3-LBn9bqAhWa73MBHdoYDesQ8gEwAHoECAsQAQ', NULL, 'a:4:{i:0;s:55:\"public/storage/images/gallery/1600090589474IMG_1978.jpg\";i:1;s:55:\"public/storage/images/gallery/1600090589517IMG_1983.jpg\";i:2;s:55:\"public/storage/images/gallery/1600090589895IMG_2042.JPG\";i:3;s:55:\"public/storage/images/gallery/1600090589157IMG_2826.JPG\";}', '1792579613', '1963', 'Brick', '16\'', 'Fluorescent', '8 Dock Height', NULL, NULL, 'City of Morganton', 'City of Morganton', NULL, 'City of Morganton', 'Paved Lot', 'Morganton', 'North Carolina', '28655', 'http://gis.burkenc.org/', 34800, NULL, '647-hopewell-rd', 'Lease Price: $2.50/mo NNN', 'active'),
(66, '104 Highway US 70 E', 'Additional PIN # - 2782647932, 2782644864\r\n3 parcels', 'land_sale', 'a:1:{i:0;s:6:\"office\";}', NULL, NULL, '104 US Hwy 70 E- Aerial.JPG', '3.40', NULL, NULL, 'H-B', NULL, NULL, NULL, NULL, '2020-09-11 18:35:54', '2020-09-15 22:17:24', 'https://goo.gl/maps/vy8ny8LmWp6vQuf76', NULL, 'a:0:{}', '2782655073', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'City of Hildebran', 'City of Hildebran', NULL, NULL, NULL, 'Hildebran', 'NC', '28637', NULL, 187000, NULL, '104-highway-us-70-e', 'Sale Price - $187,000', 'active'),
(67, '211 E Fleming Drive', 'Industrial Lot for Sale', 'land_sale', 'a:1:{i:0;s:6:\"office\";}', NULL, NULL, '211-e-fleming-dr.jpg', '28+/-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-11 18:40:56', '2020-09-16 22:01:26', 'https://goo.gl/maps/Qntg9mkv4x4pbJRP7', NULL, 'a:0:{}', '2703669256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Public', NULL, NULL, NULL, 'Morganton', 'NC', '28655', NULL, NULL, NULL, '211-e-fleming-drive', 'Sale Price - $849,900', 'active'),
(68, '218 Windemere Isle Road', 'Residential Lot- HOA required - Access to boat slip, club house and more', 'land_sale', 'a:1:{i:0;s:6:\"office\";}', NULL, NULL, '218 Windemere Isle Rd- Aerial.JPG', '.48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-11 18:45:41', '2020-09-18 11:48:57', 'https://goo.gl/maps/kr4cXhmuGjwFAgix5', NULL, 'a:0:{}', '4710734703.000', NULL, NULL, NULL, NULL, '123', NULL, NULL, 'Community', 'Community', NULL, NULL, NULL, 'Statesville', 'NC', '28677', NULL, 139900, NULL, '218-windemere-isle-road', 'Sale Price - $139,900', 'active'),
(88, 'test', NULL, 'lease', 'a:0:{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-18 13:04:23', '2020-09-18 13:04:23', NULL, NULL, 'a:0:{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, 'active'),
(89, 'test', NULL, 'lease', 'a:0:{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-18 13:04:34', '2020-09-18 13:04:34', NULL, NULL, 'a:0:{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test-1', NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `quick_forms`
--

CREATE TABLE `quick_forms` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_field` longtext COLLATE utf8mb4_unicode_ci,
  `recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_body` longtext COLLATE utf8mb4_unicode_ci,
  `mail_sent_ok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_sent_ng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thanku_template` longtext COLLATE utf8mb4_unicode_ci,
  `template_css` longtext COLLATE utf8mb4_unicode_ci,
  `header_content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quick_forms`
--

INSERT INTO `quick_forms` (`id`, `created_at`, `updated_at`, `name`, `form_field`, `recipient`, `sender`, `subject`, `message_body`, `mail_sent_ok`, `mail_sent_ng`, `validation_error`, `spam`, `slug`, `thanku_template`, `template_css`, `header_content`) VALUES
(62, '2020-03-28 15:38:36', '2020-09-11 23:39:50', 'Contact Us', '<div class=\"form-group\">\r\n                        <input type=\"text\" class=\"form-control cnt-form\" aria-describedby=\"emailHelp\" name=\"fullname\"  id=\"username\"  placeholder=\"Full Name\" autocomplete=\"off\">\r\n                    </div>\r\n                    <div class=\"form-group\">\r\n                        <input type=\"email\" class=\"form-control cnt-form\" name=\"email\" id=\"email\" placeholder=\"Email\" onblur=\"validateEmail(this);\" autocomplete=\"off\">\r\n       <div class=\"invalid_email\"><span>Invalid email</span></div>\r\n                    </div>\r\n                    <div class=\"form-group\">\r\n                        <textarea type=\"text\" class=\"form-control cnt-form\" name=\"message\" placeholder=\"Massage\" autocomplete=\"off\"></textarea>\r\n                        </div>\r\n\r\n <div class=\"form-group\">\r\n                    <div id=\"google_recaptcha\"></div>\r\n                    <div id=\"verify-captcha-message\">Please verify reCAPTCHA</div>\r\n                </div>\r\n <div class=\"form-group\">\r\n                    <button type=\"submit\" class=\"btn btn-block gettouch\">Submit</button>\r\n</div>', 'melissa@bhicp.com', 'website@bhicp.com', 'BHICP  - Contact Us', NULL, 'Thank You for Contacting Us. We\'ll respond to you as soon as possible with your estimate.', NULL, NULL, NULL, 'contact-us', '</p>\r\n                    <h1>Thank you</h1>\r\n                    <p class=\'msg\'>We\'ll respond to you as soon as possible. If you need immediate help, please call us at :-\r\n                   </p>\r\n            </div>\r\n            <div class=\'right\'>\r\n                <a href=\'#\'>828-322-1723</a>\r\n            </div>\r\n            <div class=\'footer\'>\r\n                 <p class=\'follow\'><strong>Follow us on</strong></p>\r\n                 <div class=\'social-icons\'>\r\n                   <ul>\r\n<li>\r\n<a href=\'https://www.facebook.com/bhicp\'><i class=\'fa fa-facebook\'></i><img src=\'https://bhicp.com/public/themes/public/assets/img/logo/f.png\'></a>\r\n</li>\r\n<li>\r\n<a href=\"https://www.linkedin.com/company/boyd-&amp;-hassell-industrial-&amp;-commercial-properties/about/\" target=\"_blank\">\r\n        <i class=\"fa fa-linkedin\"> </i>\r\n<img src=\'https://bhicp.com/public/themes/public/assets/img/logo/linkedin-32.png\'>\r\n        </a>\r\n</li>\r\n\r\n                   </ul>\r\n                </div>\r\n            </div>\r\n            <div class=\'copy-rght\'>\r\n\r\n                <p>Copyright  2020 Boyd & Hassell Industrial & Commercial Properties, all rights reserved.</p>\r\n            </div>\r\n            </div>\r\n        </div>', '@import url(\'https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap\');\r\n            @import url(\'https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap\');\r\n            p, h1, h2, h3, h4, ol, li, ul {  font-family: \'Open Sans\', sans-serif; }\r\n            body\r\n            {\r\n                font-family: \'Roboto\', sans-serif;\r\n                width:80%;\r\n                margin:auto;\r\n                background:#f2f2f2;\r\n            }\r\n            .outer\r\n            {\r\n                font-family: \'Roboto\', sans-serif;\r\n                width:80%;\r\n                margin:auto;\r\n                background:#f2f2f2;\r\n                padding: 30px;\r\n            }\r\n            .inner-content\r\n            {\r\n                background:#fff;\r\n                width:500px;    \r\n                margin:auto;\r\n                padding: 0px 40px 40px 40px;\r\n            }\r\n            .wrap-image\r\n            {\r\n                text-align:center;\r\n                background-color:#fff;\r\n                padding:15px;\r\n            }\r\n            .content{           \r\n                padding:10px;\r\n            }\r\n            .greeener-swipe\r\n            {\r\n                max-width: 300px;\r\n                margin: auto;\r\n            }\r\n            .greeener-swipe img\r\n            {\r\n                width:100%;\r\n            }\r\n            .right a\r\n            {\r\n                background: #fff;\r\n                color: #084594;\r\n                padding: 10px 24px;\r\n                display: inline-block;\r\n                border-radius: 25px;\r\n                font-weight: normal;\r\n                border: 2px solid #084594;\r\n                transition: 0.5s;\r\n                font-size: 18px;\r\n                border-radius: 30px;\r\n                list-style: none;\r\n                text-decoration: none;\r\n                margin-bottom:30px;\r\n                margin-top: 30px;\r\n            }\r\n            .social-icons ul{\r\n                padding: 0; \r\n                margin: 0;\r\n                list-style: none;\r\n                justify-content: center;\r\n                text-align:center;\r\n            }\r\n            .social-icons ul li\r\n            {\r\n                display:inline;\r\n               padding: 8px;\r\n            }\r\n            .right\r\n            {\r\n                text-align: center;\r\n                margin-bottom: 35px;\r\n                border-bottom: 1px solid #f2f2f2;\r\n                width: 400px;\r\n                margin: auto;\r\n            }\r\n            .copy-rght\r\n            {\r\n                text-align:center;\r\n                padding-top:15px;\r\n            }\r\n            .copy-rght p\r\n            {\r\n                font-style: italic;\r\n            }\r\n            .content .title\r\n            {\r\n                font-size: 20px;\r\n            }\r\n            .content p \r\n            {\r\n                font-size: 20px;\r\n                font-family: \'Roboto\',sans-serif;\r\n                font-weight: normal;\r\n                text-transform: capitalize;\r\n                color:#000;\r\n            }\r\n            .content h1\r\n            {\r\n                font-weight: normal;\r\n                font-size: 40px;\r\n                color:#084594;\r\n                margin-bottom: 15px;\r\n            }\r\n            .msg\r\n            {\r\n                font-size: 20px;\r\n                color: #000;\r\n            }\r\n            .follow\r\n            {\r\n                text-align: center;\r\n                font-size: 18px;\r\n                padding: 15px 0px 30px!important;\r\n            }\r\n            .social-icons\r\n            {\r\n                text-align:center;\r\n                align-item:center;\r\n            }\r\n            .social-icons img\r\n            {\r\n                width: auto;\r\n                height: auto;\r\n            }\r\n            .footer\r\n            {\r\n                text-align:center;\r\n            }\r\n            .follow strong\r\n            {\r\n                font-weight: 500;\r\n                color:#808080;\r\n            }\r\n            .inner-content p\r\n            {\r\n                padding:0;\r\n                margin:0;\r\n            }\r\n            .inner-content .content .title\r\n            {\r\n                margin-top: 20px;\r\n                text-transform: unset;\r\n            }', '<div class=\'outer\'>\r\n        <div class=\'inner-content\'>\r\n             <div class=\'wrap-image\'>\r\n                <img src=\"https://bhicp.com/public/themes/public/assets/img/logo/logo.png\">\r\n             </div>\r\n             <div class=\'content\'>\r\n            <p class=\'title\'>Hi ,');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super User', 'superuser', NULL, 1, NULL, NULL, NULL),
(2, 'Admin', 'admin', NULL, 1, NULL, NULL, NULL),
(3, 'User', 'user', NULL, 1, NULL, NULL, NULL),
(4, 'Client', 'client', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 1, 3, '2020-02-03 20:49:52', '2020-02-03 20:49:52'),
(5, 2, 3, '2020-02-03 20:50:23', '2020-02-03 20:50:23'),
(7, 2, 5, '2020-09-10 18:57:37', '2020-09-10 18:57:37'),
(8, 2, 4, '2020-09-10 18:58:06', '2020-09-10 18:58:06'),
(9, 1, 4, '2020-09-10 18:58:23', '2020-09-10 18:58:23'),
(10, 1, 5, '2020-09-10 18:58:38', '2020-09-10 18:58:38'),
(11, 1, 6, '2020-09-11 12:04:17', '2020-09-11 12:04:17'),
(12, 2, 6, '2020-09-11 12:04:17', '2020-09-11 12:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hover_color` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `info`, `slug`, `icon`, `hover_color`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Leasing', 'Landlord- BHIC utilizes multiple marketing channels to locate and secure tenants for property owners.\r\nTenant – We assist in finding available buildings and negotiating leases to fit company’s needs.', 'leasing', '/uploads/images/services/1589610747.svg', '#acd43b', 'Leasing', 'Real Estate', 'Leasing', '2019-10-03 02:26:33', '2020-05-25 17:12:06'),
(3, 'Sales', 'Seller- We specialize in marketing and negotiating to get our clients the best price available.<br>&nbsp;Buyer- We provide our buyers with years of experience to help them locate, negotiate, and purchase in their unique needs.', 'sales', '/uploads/images/services/BOYD&HASSELL-sales-service.svg', '#3bd4ae', NULL, NULL, NULL, '2019-10-03 02:26:33', '2020-09-10 16:21:34'),
(19, 'Property Management', 'BHIC can handle all aspects for Landlords. Collections, reporting, maintenance, and payments.', 'property-management', '/uploads/images/services/1599839450.svg', NULL, NULL, NULL, NULL, '2020-05-24 00:08:10', '2020-09-11 19:50:50'),
(20, 'Investment', 'We can help clients identify and locate cash flow producing opportunities.', 'investment', NULL, NULL, NULL, NULL, NULL, '2020-05-24 00:08:44', '2020-05-25 17:13:26'),
(21, 'Development', 'BHIC has experience in all areas in the development process to provide a seamless experience.', 'development', NULL, NULL, NULL, NULL, NULL, '2020-05-24 00:09:09', '2020-05-25 17:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `control` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `type` enum('System','Default','User') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `package`, `module`, `name`, `value`, `file`, `control`, `type`, `slug`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'main.company.name', 'Main', 'Company', 'Company name', 'Lavalite', NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'main.company.address', 'Main', 'Company', 'Company address', '3481 Melrose Place <br>\nBeverly Hills, CA 90210', NULL, 'textarea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'main.company.email', 'Main', 'Company', 'Company address', 'info@lavalite.org', NULL, 'email', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'main.company.logo', 'Main', 'Company', 'Company logo', 'img/logo.png', NULL, 'file', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'service.hover.color', NULL, NULL, '#ffffff', NULL, NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'google.analytics', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 03:22:44', '2019-10-17 03:22:44'),
(7, 'google.recaptcha', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 03:22:44', '2019-10-17 03:22:44'),
(8, 'currency.thousandseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 03:22:44', '2019-10-17 03:22:44'),
(9, 'currency.decimalseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 03:22:44', '2019-10-17 03:22:44'),
(10, 'currency.decimal', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 03:22:44', '2019-10-17 03:22:44'),
(11, 'theme', NULL, NULL, NULL, 'red', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:22:44', '2019-10-17 03:22:44'),
(12, 'google.analytics', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:22:44', '2019-10-17 03:22:44'),
(13, 'google.recaptcha', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:22:44', '2019-10-17 03:22:44'),
(14, 'currency.thousandseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:22:44', '2019-10-17 03:22:44'),
(15, 'currency.decimalseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:22:44', '2019-10-17 03:22:44'),
(16, 'currency.decimal', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:22:44', '2019-10-17 03:22:44'),
(17, 'theme', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:00', '2019-10-17 03:24:00'),
(18, 'google.analytics', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:00', '2019-10-17 03:24:00'),
(19, 'google.recaptcha', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:00', '2019-10-17 03:24:00'),
(20, 'currency.thousandseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:00', '2019-10-17 03:24:00'),
(21, 'currency.decimalseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:00', '2019-10-17 03:24:00'),
(22, 'currency.decimal', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:00', '2019-10-17 03:24:00'),
(23, 'theme', NULL, NULL, NULL, 'green', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:14', '2019-10-17 03:24:14'),
(24, 'google.analytics', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:14', '2019-10-17 03:24:14'),
(25, 'google.recaptcha', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:14', '2019-10-17 03:24:14'),
(26, 'currency.thousandseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:14', '2019-10-17 03:24:14'),
(27, 'currency.decimalseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:14', '2019-10-17 03:24:14'),
(28, 'currency.decimal', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:14', '2019-10-17 03:24:14'),
(29, 'theme', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:26', '2019-10-17 03:24:26'),
(30, 'google.analytics', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:26', '2019-10-17 03:24:26'),
(31, 'google.recaptcha', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:26', '2019-10-17 03:24:26'),
(32, 'currency.thousandseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:26', '2019-10-17 03:24:26'),
(33, 'currency.decimalseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:26', '2019-10-17 03:24:26'),
(34, 'currency.decimal', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:24:26', '2019-10-17 03:24:26'),
(35, 'theme', NULL, NULL, NULL, 'red', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:26:21', '2019-10-17 03:26:21'),
(36, 'google.analytics', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:26:21', '2019-10-17 03:26:21'),
(37, 'google.recaptcha', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:26:21', '2019-10-17 03:26:21'),
(38, 'currency.thousandseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:26:21', '2019-10-17 03:26:21'),
(39, 'currency.decimalseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:26:21', '2019-10-17 03:26:21'),
(40, 'currency.decimal', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-17 03:26:21', '2019-10-17 03:26:21'),
(41, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 06:35:47', '2020-07-16 23:30:11'),
(42, 'user.color', NULL, NULL, NULL, 'black', NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 06:35:47', '2019-10-17 19:05:14'),
(43, 'public.color', NULL, NULL, NULL, 'black', NULL, 'text', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 06:35:47', '2019-10-17 19:05:14'),
(44, 'theme', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-20 19:44:12', '2019-10-20 19:44:12'),
(45, 'google.analytics', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-20 19:44:12', '2019-10-20 19:44:12'),
(46, 'google.recaptcha', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-20 19:44:12', '2019-10-20 19:44:12'),
(47, 'currency.thousandseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-20 19:44:12', '2019-10-20 19:44:12'),
(48, 'currency.decimalseperator', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-20 19:44:12', '2019-10-20 19:44:12'),
(49, 'currency.decimal', NULL, NULL, NULL, NULL, NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-20 19:44:12', '2019-10-20 19:44:12'),
(50, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 18:13:26', '2019-10-21 18:13:26'),
(51, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 18:36:07', '2019-10-21 18:36:07'),
(52, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 18:45:21', '2019-10-21 18:45:21'),
(53, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 18:48:14', '2019-10-21 18:48:14'),
(54, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 18:54:34', '2019-10-21 18:54:34'),
(55, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 18:58:08', '2019-10-21 18:58:08'),
(56, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:13:05', '2019-10-21 19:13:05'),
(57, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:16:15', '2019-10-21 19:16:15'),
(58, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:21:54', '2019-10-21 19:21:54'),
(59, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:23:14', '2019-10-21 19:23:14'),
(60, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:24:10', '2019-10-21 19:24:10'),
(61, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:37:02', '2019-10-21 19:37:02'),
(62, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:45:59', '2019-10-21 19:45:59'),
(63, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:47:18', '2019-10-21 19:47:18'),
(64, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:50:19', '2019-10-21 19:50:19'),
(65, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:51:35', '2019-10-21 19:51:35'),
(66, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:54:04', '2019-10-21 19:54:04'),
(67, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:58:59', '2019-10-21 19:58:59'),
(68, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 19:59:31', '2019-10-21 19:59:31'),
(69, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 20:04:40', '2019-10-21 20:04:40'),
(70, 'admin.color', NULL, NULL, NULL, 'black', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 22:10:53', '2019-10-21 22:10:53'),
(71, 'admin.color', NULL, NULL, NULL, 'red', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 22:10:57', '2019-10-21 22:10:57'),
(72, 'admin.color', NULL, NULL, NULL, 'purple', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 22:11:05', '2019-10-21 22:11:05'),
(73, 'admin.color', NULL, NULL, NULL, 'red', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 22:11:12', '2019-10-21 22:11:12'),
(74, 'admin.color', NULL, NULL, NULL, 'yellow', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 22:11:18', '2019-10-21 22:11:18'),
(75, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-21 22:11:40', '2019-10-21 22:11:40'),
(76, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-22 00:50:22', '2019-10-22 00:50:22'),
(77, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-22 00:50:58', '2019-10-22 00:50:58'),
(78, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-28 21:26:03', '2019-10-28 21:26:03'),
(79, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-10-28 21:26:23', '2019-10-28 21:26:23'),
(80, 'admin.color', NULL, NULL, NULL, 'purple', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-19 21:43:50', '2019-11-19 21:43:50'),
(81, 'admin.color', NULL, NULL, NULL, 'green', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-19 21:43:59', '2019-11-19 21:43:59'),
(82, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-19 21:44:09', '2019-11-19 21:44:09'),
(83, 'admin.color', NULL, NULL, NULL, 'green', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-25 20:51:47', '2019-11-25 20:51:47'),
(84, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-25 21:22:39', '2019-11-25 21:22:39'),
(85, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-25 21:27:32', '2019-11-25 21:27:32'),
(86, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-25 21:27:53', '2019-11-25 21:27:53'),
(87, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-25 21:46:37', '2019-11-25 21:46:37'),
(88, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-25 22:00:16', '2019-11-25 22:00:16'),
(89, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-25 22:05:42', '2019-11-25 22:05:42'),
(90, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-25 22:54:21', '2019-11-25 22:54:21'),
(91, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-25 22:54:56', '2019-11-25 22:54:56'),
(92, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-25 23:11:08', '2019-11-25 23:11:08'),
(93, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-25 23:38:40', '2019-11-25 23:38:40'),
(94, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-26 00:13:24', '2019-11-26 00:13:24'),
(95, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-26 01:59:47', '2019-11-26 01:59:47'),
(96, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-11-26 02:20:14', '2019-11-26 02:20:14'),
(97, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-12-11 09:37:46', '2019-12-11 09:37:46'),
(98, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-12-20 21:16:47', '2019-12-20 21:16:47'),
(99, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-12-20 21:19:12', '2019-12-20 21:19:12'),
(100, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-12-20 21:36:10', '2019-12-20 21:36:10'),
(101, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 1, NULL, NULL, NULL, '2019-12-20 21:40:34', '2019-12-20 21:40:34'),
(102, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-05-16 01:37:00', '2020-05-16 01:37:00'),
(103, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-06-15 22:35:21', '2020-06-15 22:35:21'),
(104, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-06-15 22:35:57', '2020-06-15 22:35:57'),
(105, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-06-15 22:37:00', '2020-06-15 22:37:00'),
(106, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-06-15 22:38:49', '2020-06-15 22:38:49'),
(107, 'admin.color', NULL, NULL, NULL, 'purple', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-07-16 23:29:37', '2020-07-16 23:29:37'),
(108, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-07-16 23:29:49', '2020-07-16 23:29:49'),
(109, 'admin.color', NULL, NULL, NULL, 'red', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-07-16 23:30:04', '2020-07-16 23:30:04'),
(110, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-07-16 23:30:11', '2020-07-16 23:30:11'),
(111, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-08-18 12:46:45', '2020-08-18 12:46:45'),
(112, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-08-18 19:10:30', '2020-08-18 19:10:30'),
(113, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-08-18 19:10:40', '2020-08-18 19:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer_by` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `status` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'Active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role` enum('Admin','Manager','User') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `reporting_to` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` enum('','Male','Female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `photo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('New','Active','Suspended','Locked') COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `email_verified_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `reporting_to`, `name`, `email`, `password`, `api_token`, `remember_token`, `sex`, `dob`, `designation`, `mobile`, `phone`, `address`, `street`, `city`, `district`, `state`, `country`, `photo`, `web`, `permissions`, `status`, `email_verified_at`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`, `team_id`, `images`) VALUES
(3, 0, 'Admin', 'owengraffix@gmail.com', '$2y$10$pZS235QSWRlqZRW7TNPQDuL/R9dEubt6FSy1CTr2jfHpw6zgfvDxm', 'maZXsKAakqpJJHQcD2QsODuEEdG7sdOus9PyoTeD37yclAzJkexxQmMELI92', NULL, 'Male', '2020-08-04', 'Super User', '704-253-3502', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image/originaluser/user/2020/05/16/102035443/photo/profile.png', NULL, '{\"block.block\":\"1\",\"0\":\"2\",\"1\":\"4\",\"2\":\"3\",\"3\":\"1\",\"block.category\":\"1\",\"4\":\"6\",\"5\":\"8\",\"6\":\"7\",\"7\":\"5\",\"contact.contact\":\"1\",\"8\":\"10\",\"9\":\"12\",\"10\":\"11\",\"11\":\"9\",\"page.page\":\"1\",\"12\":\"14\",\"13\":\"16\",\"14\":\"15\",\"15\":\"13\"}', 'Active', '2020-02-05 00:00:00', 1, NULL, NULL, NULL, '2020-02-03 20:48:55', '2020-08-14 15:32:28', NULL, '5f3686c97acda.png'),
(4, 0, 'Barrett', 'barrett@bhicp.com', '$2y$10$aqhUFXZpCQzWHTIXyz7L2OIoMjfIUjwcGVy7Ilnu3UWJCDhdKZKwC', 'H0gLwzQBo0azxAFndWuQwhDv3kzANZA4VH1ooY2s4DETGzCMYBApkfBItJwR', NULL, NULL, NULL, 'Super User', '828-234-5907', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"block.block\":\"1\",\"0\":\"1\",\"block.category\":\"1\",\"contact.contact\":\"1\",\"page.page\":\"1\"}', 'New', '2020-02-05 00:00:00', 3, NULL, NULL, NULL, '2020-09-10 17:24:34', '2020-09-10 22:14:24', NULL, '5f3686c97acda.png'),
(5, 0, 'Gavin', 'gavin@bhicp.com', '$2y$10$Pbt46C0upZ8WDn3vtKuuQ.f7Gz5JzwwZlGpo.G8PRsHmR5L3veS6m', 'OVvZjC12HIB5zM19nOrMYGVtklwdp2bq4FIpbZdGXFhF4rmeiIxtiWSgbjvi', NULL, NULL, NULL, 'Super User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"block.block\":\"1\",\"0\":\"1\",\"block.category\":\"1\",\"contact.contact\":\"1\",\"page.page\":\"1\"}', 'New', '2020-02-05 00:00:00', 3, NULL, NULL, NULL, '2020-09-10 17:28:45', '2020-09-10 22:18:00', NULL, '5f3686c97acda.png'),
(6, 1, 'Melissa', 'Melissa@bhicp.com', '$2y$10$wdFQH3Ll6YAf3YmpMaVd7OySzNzKBqUb9L4CPU5S9R6O8Q9hrVYRq', 'I5Faxo7eUZlfPL3zRIS6PRQFOm0oUkI860VFgVi4070FoB5cUxSxoa1DDDOn', NULL, NULL, NULL, 'Super User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'New', '2020-02-05 00:00:00', 3, NULL, NULL, NULL, '2020-09-11 12:04:08', '2020-09-11 12:23:46', NULL, '5f3686c97acda.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `admin_logo`
--
ALTER TABLE `admin_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_categories`
--
ALTER TABLE `block_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD UNIQUE KEY `clients_api_token_unique` (`api_token`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailinfo`
--
ALTER TABLE `emailinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_sections`
--
ALTER TABLE `front_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_script`
--
ALTER TABLE `header_script`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_settings`
--
ALTER TABLE `my_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_forms`
--
ALTER TABLE `quick_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `admin_logo`
--
ALTER TABLE `admin_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `block_categories`
--
ALTER TABLE `block_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emailinfo`
--
ALTER TABLE `emailinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `front_sections`
--
ALTER TABLE `front_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `header_script`
--
ALTER TABLE `header_script`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `my_settings`
--
ALTER TABLE `my_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `quick_forms`
--
ALTER TABLE `quick_forms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
