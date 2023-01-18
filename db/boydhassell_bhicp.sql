-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2023 at 10:40 PM
-- Server version: 10.3.37-MariaDB
-- PHP Version: 7.4.33

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
  `log_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(100) DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(100) DEFAULT NULL,
  `properties` text DEFAULT NULL,
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
(155, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-09-10 23:09:38', '2020-09-10 23:09:38'),
(156, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-09-21 11:07:50', '2020-09-21 11:07:50'),
(157, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2020-11-13 09:19:21', '2020-11-13 09:19:21'),
(158, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-01-18 14:28:27', '2021-01-18 14:28:27'),
(159, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-01-18 14:28:43', '2021-01-18 14:28:43'),
(160, 'default', 'updated', 1, 'Litecms\\Contact\\Models\\Contact', 6, 'App\\User', '[]', '2021-01-22 00:13:15', '2021-01-22 00:13:15'),
(161, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:31:09', '2021-03-27 08:31:09'),
(162, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:31:22', '2021-03-27 08:31:22'),
(163, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:31:22', '2021-03-27 08:31:22'),
(164, 'default', 'updated', 8, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:55:09', '2021-03-27 08:55:09'),
(165, 'default', 'updated', 8, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:55:09', '2021-03-27 08:55:09'),
(166, 'default', 'updated', 8, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:55:21', '2021-03-27 08:55:21'),
(167, 'default', 'updated', 8, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:55:21', '2021-03-27 08:55:21'),
(168, 'default', 'updated', 8, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:55:29', '2021-03-27 08:55:29'),
(169, 'default', 'updated', 8, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:55:39', '2021-03-27 08:55:39'),
(170, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:56:28', '2021-03-27 08:56:28'),
(171, 'default', 'updated', 6, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:57:15', '2021-03-27 08:57:15'),
(172, 'default', 'updated', 9, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:57:34', '2021-03-27 08:57:34'),
(173, 'default', 'updated', 9, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:57:34', '2021-03-27 08:57:34'),
(174, 'default', 'updated', 9, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:57:50', '2021-03-27 08:57:50'),
(175, 'default', 'updated', 9, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:58:04', '2021-03-27 08:58:04'),
(176, 'default', 'updated', 9, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:58:20', '2021-03-27 08:58:20'),
(177, 'default', 'updated', 9, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:58:20', '2021-03-27 08:58:20'),
(178, 'default', 'updated', 8, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:58:50', '2021-03-27 08:58:50'),
(179, 'default', 'updated', 8, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 08:58:50', '2021-03-27 08:58:50'),
(180, 'default', 'updated', 9, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 09:04:09', '2021-03-27 09:04:09'),
(181, 'default', 'updated', 9, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 09:04:25', '2021-03-27 09:04:25'),
(182, 'default', 'updated', 9, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 09:05:49', '2021-03-27 09:05:49'),
(183, 'default', 'updated', 9, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 09:11:01', '2021-03-27 09:11:01'),
(184, 'default', 'updated', 9, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-03-27 09:11:34', '2021-03-27 09:11:34'),
(185, 'default', 'updated', 8, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-05 19:01:39', '2021-04-05 19:01:39'),
(186, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:06:41', '2021-04-17 08:06:41'),
(187, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:06:41', '2021-04-17 08:06:41'),
(188, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:14:23', '2021-04-17 08:14:23'),
(189, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:16:38', '2021-04-17 08:16:38'),
(190, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:16:47', '2021-04-17 08:16:47'),
(191, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:17:00', '2021-04-17 08:17:00'),
(192, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:17:17', '2021-04-17 08:17:17'),
(193, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:23:19', '2021-04-17 08:23:19'),
(194, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:23:19', '2021-04-17 08:23:19'),
(195, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:23:47', '2021-04-17 08:23:47'),
(196, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:25:29', '2021-04-17 08:25:29'),
(197, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:25:55', '2021-04-17 08:25:55'),
(198, 'default', 'updated', 4, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-17 08:26:37', '2021-04-17 08:26:37'),
(199, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-27 21:55:41', '2021-04-27 21:55:41'),
(200, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-04-27 21:59:18', '2021-04-27 21:59:18'),
(201, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-06-23 08:19:35', '2021-06-23 08:19:35'),
(202, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-06-23 08:23:07', '2021-06-23 08:23:07'),
(203, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-06-23 18:52:53', '2021-06-23 18:52:53'),
(204, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 3, 'App\\User', '[]', '2021-06-23 18:53:25', '2021-06-23 18:53:25'),
(205, 'default', 'created', 9, 'Litecms\\Page\\Models\\Page', 8, 'App\\User', '[]', '2022-05-26 15:25:10', '2022-05-26 15:25:10'),
(206, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 8, 'App\\User', '[]', '2022-10-15 11:26:35', '2022-10-15 11:26:35'),
(207, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 8, 'App\\User', '[]', '2022-10-15 11:41:56', '2022-10-15 11:41:56'),
(208, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 8, 'App\\User', '[]', '2022-10-15 11:44:56', '2022-10-15 11:44:56'),
(209, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 8, 'App\\User', '[]', '2022-10-15 11:45:20', '2022-10-15 11:45:20'),
(210, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 8, 'App\\User', '[]', '2022-10-15 11:47:45', '2022-10-15 11:47:45'),
(211, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 8, 'App\\User', '[]', '2022-10-15 11:48:07', '2022-10-15 11:48:07'),
(212, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 8, 'App\\User', '[]', '2022-10-15 11:49:06', '2022-10-15 11:49:06'),
(213, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 8, 'App\\User', '[]', '2022-10-17 07:49:56', '2022-10-17 07:49:56'),
(214, 'default', 'updated', 1, 'Litecms\\Page\\Models\\Page', 8, 'App\\User', '[]', '2022-10-17 07:50:42', '2022-10-17 07:50:42');

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
  `theme_color` varchar(255) DEFAULT NULL,
  `top_header` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_logo`
--

INSERT INTO `admin_logo` (`id`, `admin_logo_filename`, `login_logo_filename`, `created_date`, `favicon`, `favicon_2`, `theme_color`, `top_header`) VALUES
(1, '19.bhipc-logo.png', '215.bhipc-logo.png', '2020-05-20 00:00:00', '451.apple-touch-icon.png', '690.apple-touch-icon-72x72.png', 'default', '<li class=\"nav-item\">\r\n           <a class=\"nav-link ext-btn\" href=\"https://resident.propertyboss.net/ResidentPortal904v17?customer=boydhass_141501\">Tenant Login</a>\r\n  </li>\r\n   <li class=\"nav-item _ext-btn\">\r\n            <a class=\"nav-link ext-btn\" href=\"https://propertyboss.net/OwnerPortalv17?customer=boydhass_141501\">Owner Login</a>\r\n  </li>');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `status` enum('show','hide') DEFAULT 'hide',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `upload_folder` varchar(100) DEFAULT NULL,
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
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` enum('show','hide') DEFAULT 'hide',
  `user_type` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_folder` varchar(100) DEFAULT NULL,
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
  `reporting_to` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `api_token` varchar(60) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `sex` enum('','Male','Female') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL,
  `status` enum('New','Active','Suspended','Locked') DEFAULT 'New',
  `email_verified_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `upload_folder` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `reporting_to`, `name`, `email`, `password`, `api_token`, `remember_token`, `sex`, `dob`, `designation`, `mobile`, `phone`, `address`, `street`, `city`, `district`, `state`, `country`, `photo`, `web`, `permissions`, `status`, `email_verified_at`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 'Client', 'client@lavalite.org', '$2y$10$ENXjL75Dp0X91JfKePUxb.ylWg2TJhhsZoVC.U5RNgVfxpVCt.Nj2', 'CCGHWY5bQ0THtenJBvWXd63kIb4tKoOBtuSKB32XoUqeTAcxlkjG8ETVKuO9', NULL, 'Male', '2014-05-15', 'Super User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://litepie.org', NULL, 'Active', '2019-04-15 00:00:00', NULL, NULL, NULL, NULL, '2015-09-15 04:00:00', NULL),
(2, 0, 'pr@standata.xyz', 'pr@standata.xyz', '$2y$10$9CuMIMNqxjUxAVTmIWUylOywhlw6tbAXD9z5RL6PizqZWtIk8xR.y', 'GABfzyuyIrQvpUEnZtD7U7AYm0rMYIp6tTlUsXaW1s9xYEw6bFqSjT7Udbhr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'New', NULL, NULL, NULL, NULL, NULL, '2021-09-13 03:21:50', '2021-09-13 03:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `default` tinyint(4) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `lat` varchar(30) DEFAULT NULL,
  `lng` varchar(30) DEFAULT NULL,
  `status` enum('Show','Hide') DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `upload_folder` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `mobile`, `email`, `default`, `website`, `fax`, `details`, `address`, `street`, `city`, `state`, `country`, `zip`, `lat`, `lng`, `status`, `slug`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'BHICP', '828-322-1723', NULL, 'ashtyn@bhicp.com', NULL, 'https://bhicp.com', '828.322.4219', '200 First Avenue NW - Suite 507\r\nHickory, NC 28601', '200', 'First Avenue NW', 'Hickory', 'North Carolina', 'United States', 28601, '35.734010', '-81.340006', 'Show', 'Law Firm', NULL, NULL, NULL, NULL, NULL, '2021-01-22 00:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `emailinfo`
--

CREATE TABLE `emailinfo` (
  `id` int(11) NOT NULL,
  `toemail` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `emailinfo`
--

INSERT INTO `emailinfo` (`id`, `toemail`, `subject`, `message`) VALUES
(1, 'ashtyn@bhicp.com', 'Interest in a property', 'Hello,\r\n\r\nI would like to know more about one of your properties. Please put the [PROPERTY ADDRESS] and [PIN NUMBER] in this email for reference.\r\n\r\nThanks!');

-- --------------------------------------------------------

--
-- Table structure for table `front_sections`
--

CREATE TABLE `front_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `heading` varchar(100) DEFAULT NULL,
  `body` varchar(2000) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `extra` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_sections`
--

INSERT INTO `front_sections` (`id`, `page_id`, `name`, `heading`, `body`, `image`, `icon`, `extra`, `created_at`, `updated_at`, `order_by`) VALUES
(15, 1, 'Find Your Space', 'Leasing or Buying', NULL, '/uploads/images/frontsections/1665820087.webp', NULL, NULL, '2020-01-17 18:44:03', '2022-10-15 11:48:07', 0),
(16, 1, NULL, NULL, '<div class=\"flex-fill home-property-link1\">\r\n                   <h3>See Available<br />\r\n                    Properties </h3>\r\n                </div>\r\n                \r\n                <div class=\"inline-d\">\r\n                    <a href=\"property/?id=lease\">\r\n                        <div class=\"flex-fill home-property-link2 home-property-hover\">\r\n                            <h6>Properties for Lease </h6>\r\n                            <span>View</span>\r\n                        </div>\r\n                    </a>\r\n                </div>\r\n                 <div class=\"inline-d\">\r\n                    <a href=\"property/?id=sale\">\r\n                        <div class=\"flex-fill home-property-link3 home-property-hover\">\r\n                            <h6>Properties for Sale </h6>\r\n                            <span>View</span>\r\n                        </div>\r\n                    </a>\r\n                </div>\r\n                <div class=\"inline-d\">\r\n                    <a href=\"property/?id=land_sale\">\r\n                        <div class=\"flex-fill home-property-link4 home-property-hover\">\r\n                            <h6>Land for Sale</h6>\r\n                            <span>View</span>\r\n                        </div>\r\n                    </a>\r\n                </div>', NULL, NULL, NULL, '2020-01-17 18:48:41', '2021-06-23 18:53:25', 1),
(17, 1, 'Read More', 'Welcome to Boyd & Hassell Industrial and Commercial Properties', 'We specialize in the sale, leasing and property management of Industrial and Commercial Real Estate. Boyd & Hassell Industrial-Commercial Properties, Inc. has been providing top notch service in the Greater Hickory Metro since 1984. Whether you are looking for a small retail space or a large distribution warehouse, we are here to help.', '/uploads/images/frontsections/1665820146.webp', NULL, NULL, '2020-01-17 18:51:50', '2022-10-15 11:49:06', 2),
(18, 1, 'HIGHLIGHTS', NULL, '<h6>HIGHLIGHTS</h6>\r\n\r\n<h2>Core </h2>\r\n\r\n<p>Whether you are looking for a small retail space or a large distribution warehouse, we are here to help. At BHICP we believe that a great location can make a business soar.</p>\r\n\r\n<div class=\"sec3-inner-sec\">\r\n	<div class=\"wrap_sec\">\r\n		<h3>Commercial Property Leasing</h3>\r\n		<p>Whether you\'re looking for an investment property with BHICP managing that property, or seeking a space to call home for your commercial business we can help. Boyd & Hassell Commercial and Industrial Properties can find the perfect space to fit your needs. \r\n		</p>\r\n	</div>\r\n\r\n\r\n    <div class=\"_wrapper2\">\r\n		<a href=\"https://bhicp.com/about\" class=\"button\">About BHICP</a>\r\n	</div>\r\n		\r\n</div>', '/uploads/images/frontsections/1665978642.webp', NULL, NULL, '2020-01-17 18:52:49', '2022-10-17 07:50:42', 3),
(19, 1, NULL, 'Lease With Us', 'Whether you are looking for a small retail space or a large distribution warehouse, we are here to help. Please select from one of the property categories below to browse our listings.', NULL, NULL, NULL, '2020-01-17 18:53:36', '2020-01-17 18:53:36', 4),
(20, 1, 'Business', NULL, NULL, '/uploads/images/frontsections/1665820146.webp', NULL, NULL, '2020-01-17 18:54:29', '2022-10-15 11:49:06', 5),
(21, 1, NULL, 'Make An Appointment Now!', '<div class=\"Appointment-btn\"><a href=\"Tel:828-322-1723\">Call  </a></div>\r\n\r\n<div class=\"Appointment-btn\"><a href=\"https://bhicp.com/contact\">Email</a></div>', NULL, NULL, NULL, '2020-01-17 18:55:24', '2021-04-27 21:55:41', 6),
(22, 7, NULL, 'Our Services', NULL, '/uploads/images/frontsections/_1579269411.jpg', NULL, NULL, '2020-01-17 18:56:51', '2020-05-25 17:10:39', NULL),
(23, 6, NULL, 'Company History', NULL, '/uploads/images/frontsections/_1579269475.jpg', NULL, NULL, '2020-01-17 18:57:55', '2020-06-20 00:34:00', 1),
(24, 6, NULL, 'About the Company', 'In 1968 Glen Boyd & Jim Hassell purchased the small real estate firm they worked for and changed the name to Boyd & Hassell Realtor, offering full-time residential, commercial, and property management real estate services. \r\n\r\nIn 1979 Harry McComb and James Mitchell, then associates with the firm, purchased Jim Hassell’s share of the company and joined as partners with Glen Boyd. \r\nIn 1980 upon Glen Boyd’s death, Harry McComb and James Mitchell purchased the remainder of the partnership.\r\n\r\nIn 1981 they partnered with Paul Gadd of Byrd Realty, to provide full-service residential, commercial, and industrial real estate sales, property management and land development under the Boyd & Hassell Realtor name.', '/uploads/images/frontsections/_1579269503.jpg', NULL, NULL, '2020-01-17 18:58:23', '2020-08-13 15:59:22', 0),
(25, 6, NULL, NULL, NULL, '/uploads/images/frontsections/test_1582185009.jpg', NULL, NULL, '2020-02-20 12:48:32', '2020-02-20 12:50:43', 2),
(26, 1, 'Commercial', NULL, NULL, '/uploads/images/frontsections/1665820146.webp', NULL, NULL, '2020-06-22 22:51:27', '2022-10-15 11:49:06', 7),
(27, 1, 'Industrial', NULL, NULL, '/uploads/images/frontsections/1665820146.webp', NULL, NULL, '2020-06-22 22:52:10', '2022-10-15 11:49:06', 8),
(28, 9, 'TEST 01', 'TEST 01', NULL, NULL, NULL, NULL, '2021-03-27 09:04:09', '2021-03-27 09:11:34', 1),
(29, 9, 'TEST 02', 'TEST 02', 'TEST 02', NULL, NULL, NULL, '2021-03-27 09:04:25', '2021-03-27 09:11:34', 0),
(31, 4, '404', NULL, '<h1 class=\"title\">404 </h1>\r\n <h1>Ooops!</h1>\r\n <p>We cound not find the page you are looking for!</p>', NULL, NULL, NULL, '2021-04-17 08:25:29', '2021-04-17 08:26:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `header_script`
--

CREATE TABLE `header_script` (
  `id` int(11) NOT NULL,
  `header_script` longtext DEFAULT NULL,
  `body_script` longtext DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `header_script`
--

INSERT INTO `header_script` (`id`, `header_script`, `body_script`, `created_at`, `name`) VALUES
(1, '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-N3GDZHB\');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-N3GDZHB\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '2020-05-14', 'Header (Script)'),
(2, NULL, NULL, NULL, 'Meta ( Script )'),
(3, '<script src=\"https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit\"\r\n    async defer>\r\n</script>', '<script>\r\n    var onloadCallback = function() {\r\n            grecaptcha.render(\'google_recaptcha\', {\r\n                \'sitekey\' : \'6LcfZfsUAAAAAMrEWJHpww2yub75SpXNDg3SAFmL\'\r\n            });\r\n        };\r\n</script>', NULL, 'Google Recaptcha');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `updated_date` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `filename`, `updated_date`, `created_date`, `filesize`) VALUES
(5, '', '2021-04-12 06:05:56', '2021-04-12 06:05:56', '464323'),
(6, 'storage/uploads/6073e344a5007378business.JPG', '2021-04-12 06:05:56', '2021-04-12 06:05:56', '35364'),
(7, 'storage/uploads/6073e344a5a4d686commercial.jpg', '2021-04-12 06:05:56', '2021-04-12 06:05:56', '48592'),
(8, 'storage/uploads/6073e47f9f965964273 2nd Ave SE- Front.jpg', '2021-04-12 06:11:11', '2021-04-12 06:11:11', '464323'),
(9, 'storage/uploads/6073e47fa13667771589611064.jpg', '2021-04-12 06:11:11', '2021-04-12 06:11:11', '9680949'),
(10, 'storage/uploads/6073e47fa6733150industrial.jpg', '2021-04-12 06:11:11', '2021-04-12 06:11:11', '59850');

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

CREATE TABLE `masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
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
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `bio` varchar(5000) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `social_f` varchar(50) DEFAULT NULL,
  `social_t` varchar(50) DEFAULT NULL,
  `social_l` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `title`, `bio`, `email`, `mobile`, `address`, `photo`, `social_f`, `social_t`, `social_l`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Gavin Mitchell', 'Broker', 'Gavin joined the BHIC team in 2004. He is a graduate of Appalachian State with a degree in Banking &amp; Finance. Gavin is a licensed NC Broker &amp; Realtor. He has served on many boards &amp; committees throughout the community. Gavin is a past president of the Hickory Downtown Development Association. He has been recognized by the City of Hickory for his outstanding abilities in renovating &amp; restoring commercial properties. Gavin has extensive knowledge of the various areas of real estate &amp; is eager to assist you with all your real estate needs.', 'gavin@bhicp.com', NULL, NULL, '/uploads/images/team_members/1665826313.webp', 'donal', 'donald', 'donald', '2019-09-27 15:14:45', '2022-10-15 13:31:53', 'gavin-mitchell'),
(2, 'James Mitchell', 'President', 'James founded Boyd &amp; Hassell Industrial &amp; Commercial Properties, Inc., (BHIC) in 1984. James specializes in leasing and brokerage of large commercial and industrial properties. James has managed in excess of 2,500,000 square feet of industrial, warehouse, manufacturing, and office space. As a Certified Property Manager, James leads a team that is skilled in lease consulting, development, build to suit, and tenant or landlord representation.', 'james@bhicp.com', NULL, NULL, '/uploads/images/team_members/1626447340.jpg', 'donal', 'donald', 'donald', '2019-09-27 15:14:45', '2021-07-16 18:55:40', 'james-mitchell'),
(3, 'Barrett Mitchell', 'Broker', 'Barrett joined the BHIC team in 2014. He is an Ole Miss graduate with a degree in Finance. He also received his MBA from The Citadel. Barrett is a licensed NC Broker and Realtor. He is a CCIM candidate. He has experience in property management, sales, and leasing. His background, coupled with experience, enables him to confidently assist you with all your real estate needs.', 'barrett@bhicp.com', NULL, NULL, '/uploads/images/team_members/1626447317.jpg', 'donal', 'donald', 'donald', '2019-09-27 15:14:45', '2021-07-16 18:55:17', 'barrett-mitchell');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `key` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `permission` varchar(1000) DEFAULT NULL,
  `role` varchar(1000) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `target` enum('_blank','_self') DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `uload_folder` varchar(150) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `upload_folder` varchar(100) DEFAULT NULL,
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
(20, 1, NULL, 'admin/user/user', 'fa fa-user', NULL, NULL, 'Users', NULL, NULL, 14, NULL, NULL, 1, NULL, NULL, NULL, '2021-11-23 11:29:52'),
(21, 19, NULL, 'admin/user/client', 'fa fa-user', NULL, NULL, 'Clients', NULL, NULL, 0, NULL, NULL, 1, NULL, '2019-10-23 19:19:28', NULL, '2019-10-23 19:19:28'),
(22, 19, NULL, 'admin/user/team', 'fa fa-users', NULL, NULL, 'Teams', NULL, NULL, 1, NULL, NULL, 1, NULL, '2019-10-23 19:19:38', NULL, '2019-10-23 19:19:38'),
(23, 1, 'role', 'admin/roles/role', 'fa fa-check-circle-o', NULL, '[\"superuser\"]', 'Roles & Permissions', NULL, NULL, 12, NULL, NULL, 1, NULL, NULL, NULL, '2021-11-23 11:29:52'),
(24, 1, NULL, 'admin/block/block', 'fa fa-square', NULL, NULL, 'Blocks', NULL, NULL, 3, NULL, NULL, 1, NULL, '2019-10-21 01:41:49', NULL, '2019-10-21 01:41:49'),
(25, 1, NULL, 'admin/contact/contact', 'fa fa-newspaper-o', NULL, NULL, 'Contact', NULL, NULL, 13, NULL, NULL, 1, NULL, NULL, NULL, '2021-11-23 11:29:52'),
(26, 4, NULL, 'property', NULL, NULL, '[null]', 'Properties', NULL, '_self', 1, NULL, NULL, 1, NULL, NULL, NULL, '2020-09-10 17:03:56'),
(27, 5, NULL, 'contact.htm', NULL, NULL, NULL, 'Contact', NULL, NULL, 190, NULL, NULL, 1, NULL, '2019-12-20 21:42:18', NULL, '2019-12-20 21:42:18'),
(28, 1, NULL, 'admin/page/page', 'fa fa-book', NULL, NULL, 'Pages', NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, '2020-04-21 10:10:05'),
(29, 4, NULL, 'about-us.html', NULL, NULL, NULL, 'About Us', NULL, NULL, 0, NULL, NULL, 1, NULL, '2019-10-02 08:13:06', NULL, '2019-10-02 08:13:06'),
(30, 5, NULL, 'about-us.html', NULL, NULL, NULL, 'About Us', NULL, NULL, 8, NULL, NULL, 1, NULL, '2019-12-20 21:42:07', NULL, '2019-12-20 21:42:07'),
(31, 4, NULL, 'about', NULL, NULL, '[null,\"1\",\"2\",\"3\",\"4\"]', 'About', NULL, '_self', 2, NULL, 'about-us', 1, NULL, NULL, '2019-10-02 08:11:59', '2019-12-20 21:06:25'),
(32, 1, NULL, 'admin/team', 'fa fa-angle-double-right', NULL, '[null,\"1\",\"2\",\"3\",\"4\"]', 'Team Members', 'Manage team members', NULL, 3, NULL, 'team-member', 1, NULL, NULL, '2019-10-11 20:27:27', '2021-03-26 10:19:49'),
(33, 1, NULL, 'admin/service', 'fa fa-yelp', NULL, '[null,\"1\",\"2\",\"3\",\"4\"]', 'Service', 'Service Management', '_self', 4, NULL, 'service', 1, NULL, NULL, '2019-10-11 21:51:24', '2020-04-21 10:10:05'),
(34, 1, NULL, 'admin/section', 'fa fa-th', NULL, '[null,\"1\",\"2\"]', 'Home Page Sections', 'Home Page Section management', '_self', 3, NULL, 'sections', 1, NULL, '2020-01-17 19:01:51', '2019-10-16 18:37:17', '2020-01-17 19:01:51'),
(35, 1, NULL, 'admin/quickform', 'fa fa-angle-double-right', NULL, '[null,\"1\",\"2\"]', 'Forms', NULL, '_self', 6, NULL, 'quickform', 1, NULL, NULL, '2019-10-21 03:36:23', '2021-03-26 10:20:02'),
(36, 4, NULL, '/services', NULL, NULL, '[null,\"1\",\"2\",\"3\",\"4\"]', 'Services', NULL, '_self', 0, NULL, 'services', 1, NULL, NULL, '2019-10-21 21:30:55', '2019-12-20 21:06:25'),
(37, 1, NULL, 'admin/submission', 'fa fa-envelope', NULL, '[null,\"1\",\"2\"]', 'Submissions', NULL, '_self', 8, NULL, 'submissions', 1, NULL, NULL, '2019-10-22 03:24:49', '2021-11-23 11:29:52'),
(38, 1, NULL, '/admin/theme', 'fa fa-paint-brush', NULL, '[null,\"1\",\"2\"]', 'Theme', NULL, '_self', 3, NULL, 'theme', 1, NULL, '2019-11-25 22:07:23', '2019-11-23 08:42:27', '2019-11-25 22:07:23'),
(39, 1, NULL, 'admin/property', NULL, NULL, '[null,\"1\",\"2\",\"3\",\"4\"]', 'Properties', NULL, '_self', 5, NULL, 'property', 1, NULL, NULL, '2020-01-03 19:07:04', '2020-04-21 10:10:05'),
(40, 1, NULL, 'admin/script', 'fa fa-line-chart', NULL, '[null,\"2\"]', 'Header Script', NULL, NULL, 9, NULL, 'header-script', 1, NULL, NULL, '2020-05-18 04:22:31', '2021-11-23 11:29:52'),
(41, 1, NULL, 'admin/emailinfo', NULL, NULL, '[null,\"2\"]', 'Email for more info', NULL, NULL, 10, NULL, 'email-info', 1, NULL, NULL, '2020-06-10 17:38:35', '2021-11-23 11:29:52'),
(42, 37, NULL, 'admin/submission/form/contact', NULL, NULL, '[null,\"1\",\"2\"]', 'Contact', NULL, '_self', 1, NULL, 'contact', 1, NULL, NULL, '2021-03-26 13:53:03', '2021-04-13 08:01:28'),
(43, 37, NULL, 'admin/submission/form/enquiry', NULL, NULL, '[null,\"1\",\"2\"]', 'Inquiry', NULL, '_self', 0, NULL, 'enquiry', 1, NULL, NULL, '2021-03-26 14:43:15', '2021-05-03 16:14:45'),
(44, 1, NULL, 'admin/media', NULL, NULL, '[null,\"1\",\"2\"]', 'Library', NULL, '_self', 11, NULL, 'library', 1, NULL, NULL, '2021-04-12 09:29:00', '2021-11-23 11:29:52'),
(45, 1, NULL, 'admin/notification', NULL, NULL, '[null,\"1\",\"2\"]', 'Sitewide Notifications', NULL, '_self', 7, NULL, 'sitewide-notifications', 1, NULL, NULL, '2021-11-23 11:29:46', '2021-11-23 11:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
  `key` varchar(50) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_settings`
--

INSERT INTO `my_settings` (`id`, `key`, `value`, `active`, `created_at`, `updated_at`) VALUES
(1, 'service.hover.color', '#49e11e', 1, '2019-10-24 04:00:00', '2019-10-31 18:50:48'),
(2, 'customize_style', '[null,null,null,null,null,null,null,null,null,null]', 1, '2019-11-24 05:00:00', '2020-11-25 17:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `text_color` varchar(255) DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `heading`, `text`, `image`, `text_color`, `background_color`, `created_at`, `name`, `slug`, `status`, `position`, `border_color`, `duration`) VALUES
(1, NULL, 'Lorum Ipsum rest', NULL, '#ffffff', 'rgba(23,14,200,0.89)', '2020-04-18', 'Top Banner', 'pop-up-style-', 'hide', 'top', '#165728', 24);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `sub_heading` text DEFAULT NULL,
  `abstract` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `banner` mediumtext DEFAULT NULL,
  `images` text DEFAULT NULL,
  `compile` tinyint(1) DEFAULT 0,
  `view` varchar(20) DEFAULT 'default',
  `category` varchar(20) DEFAULT 'default',
  `order` int(11) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `status` enum('Show','Hide') DEFAULT 'Show',
  `upload_folder` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `heading`, `sub_heading`, `abstract`, `content`, `meta_title`, `meta_keyword`, `meta_description`, `banner`, `images`, `compile`, `view`, `category`, `order`, `slug`, `status`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Home\"}', 'Home', '{\"en\":\"Home\"}', 'Home', NULL, '{\"en\":null}', '{\"en\":\"BHICP  \\u2022  Boyd & Hassell Industrial & Commercial Properties, INC.  in  North Carolina\"}', '{\"en\":\"BHICP\"}', '{\"en\":\"BHICP (Boyd and Hassell Industrial & Commercial Properties. Offering: commercial, industrial, retail, office space, and more in Hickory North Carolina (NC).\"}', NULL, '[]', 0, 'default', 'default', 0, 'home', '', NULL, NULL, NULL, '2022-10-17 07:50:42'),
(2, '{\"en\":\"About Us\"}', 'About Us', '{\"en\":\"Meet Lavalite\"}', 'About Us', NULL, '{\"en\":\"<div class=\\\"about\\\">\\r\\n                        <div class=\\\"row\\\">\\r\\n                            <div class=\\\"col-md-12\\\">\\r\\n                                <div class=\\\"count-numerics\\\">\\r\\n                                    <h2>Our mission is to make insurance<br>work better for businesses of all types and sizes.<\\/h2>\\r\\n                                    <ul class=\\\"list-inline row\\\">\\r\\n                                        <li class=\\\"col-md-3 col-xs-6\\\">\\r\\n                                            <div class=\\\"text-center\\\">\\r\\n                                                <div>\\r\\n                                                    <figure>1<\\/figure>\\r\\n                                                    <span>k+<\\/span>\\r\\n                                                <\\/div>\\r\\n                                                <h4>Set of pages<\\/h4>\\r\\n                                          <\\/div>\\r\\n                                        <\\/li>\\r\\n                                        <li class=\\\"col-md-3 col-xs-6\\\">\\r\\n                                            <div class=\\\"text-center\\\">\\r\\n                                                <div>\\r\\n                                                    <figure>53<\\/figure>\\r\\n                                                <\\/div>\\r\\n                                                <h4>Categories<\\/h4>\\r\\n                                            <\\/div>\\r\\n                                        <\\/li>\\r\\n                                        <li class=\\\"col-md-3 col-xs-6\\\">\\r\\n                                            <div class=\\\"text-center\\\">\\r\\n                                                <div>\\r\\n                                                    <figure>10<\\/figure>\\r\\n                                                    <span>x<\\/span>\\r\\n                                                <\\/div>\\r\\n                                                <h4>Save time<\\/h4>\\r\\n                                            <\\/div>\\r\\n                                        <\\/li>\\r\\n                                        <li class=\\\"col-md-3 col-xs-6 s-counter-v1\\\">\\r\\n                                            <div class=\\\"text-center\\\">\\r\\n                                                <div>\\r\\n                                                    <figure>9<\\/figure>\\r\\n                                                <\\/div>\\r\\n                                                <h4>Formats to use<\\/h4>\\r\\n                                            <\\/div>\\r\\n                                        <\\/li>\\r\\n                                      <\\/ul>\\r\\n                                <\\/div>\\r\\n                            <\\/div>\\r\\n                        <\\/div>\\r\\n\\r\\n                        <div class=\\\"row\\\">\\r\\n                            <div class=\\\"col-md-12\\\">\\r\\n                                <div class=\\\"promo-section\\\">\\r\\n                                    <div class=\\\"row mln mrn\\\">\\r\\n                                        <div class=\\\"col-md-6 pl-0 pr-0\\\">\\r\\n                                            <div class=\\\"content-section text-center\\\">\\r\\n                                                <h2>Creative Digital Agency<\\/h2>\\r\\n                                                <span>You are in good hands.<\\/span>\\r\\n                                                <p>It\\u2019s important to stay detail oriented with every project we tackle. Staying focused allows us to turn every project we complete into something we love.<\\/p>\\r\\n                                                <p>The time has come to bring those ideas and plans to life. This is where we really begin to visualize your napkin sketches and make them into beautiful pixels.<\\/p>\\r\\n                                                <h4>\\u2014 John Doe<\\/h4>\\r\\n                                            <\\/div>\\r\\n                                        <\\/div>\\r\\n                                        <div class=\\\"col-md-6 pl-0 pr-0 image-section\\\">\\r\\n                                        <\\/div>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n                            <\\/div>\\r\\n                        <\\/div>\\r\\n\\r\\n                        <div class=\\\"row features-section\\\">\\r\\n                            <div class=\\\"col-sm-5\\\">\\r\\n                                <div class=\\\"hor-centered-row\\\">\\r\\n                                    <div class=\\\"hor-centered-row-col exp-num\\\"><span>9<\\/span><\\/div>\\r\\n                                    <div class=\\\"hor-centered-row-col exp-year\\\">\\r\\n                                        <h4>\\r\\n                                            <span>Years<\\/span>\\r\\n                                            <span>Experience<\\/span>\\r\\n                                        <\\/h4>\\r\\n                                        <p>Front-end Design &amp; Development.<\\/p>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n                            <\\/div>\\r\\n                            <div class=\\\"col-sm-7\\\">\\r\\n                                <div class=\\\"row mb40\\\">\\r\\n                                    <div class=\\\"col-sm-6\\\">\\r\\n                                        <div class=\\\"feature-item\\\">\\r\\n                                            <i class=\\\"ti-mobile\\\"><\\/i>\\r\\n                                            <h4>Responsive Layout<\\/h4>\\r\\n                                            <p>This is where we sit down, grab a cup of coffee and dial in the details.<\\/p>\\r\\n                                        <\\/div>\\r\\n                                    <\\/div>\\r\\n                                    <div class=\\\"col-sm-6\\\">\\r\\n                                        <div class=\\\"feature-item\\\">\\r\\n                                            <i class=\\\"ti-palette\\\"><\\/i>\\r\\n                                            <h4>Fully Customizable<\\/h4>\\r\\n                                            <p>This is where we sit down, grab a cup of coffee and dial in the details.<\\/p>\\r\\n                                        <\\/div>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n\\r\\n                                <div class=\\\"row\\\">\\r\\n                                    <div class=\\\"col-sm-6\\\">\\r\\n                                        <div class=\\\"feature-item\\\">\\r\\n                                            <i class=\\\"ti-cup\\\"><\\/i>\\r\\n                                            <h4>Endless Possibilities<\\/h4>\\r\\n                                            <p>This is where we sit down, grab a cup of coffee and dial in the details.<\\/p>\\r\\n                                        <\\/div>\\r\\n                                    <\\/div>\\r\\n                                    <div class=\\\"col-sm-6\\\">\\r\\n                                        <div class=\\\"feature-item\\\">\\r\\n                                            <i class=\\\"ti-crown\\\"><\\/i>\\r\\n                                            <h4>Powerful Performance<\\/h4>\\r\\n                                            <p>This is where we sit down, grab a cup of coffee and dial in the details.<\\/p>\\r\\n                                        <\\/div>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n                            <\\/div>\\r\\n                        <\\/div>\\r\\n                    <\\/div>\"}', '{\"en\":\"Alan Carpenter, PS \\u2022 Statesville, NC - About our Team\"}', '{\"en\":\"About Us\"}', '{\"en\":\"This is a started theme for Lavalite cms, you can customize according to your requirement.\"}', NULL, '[]', 0, 'default', 'default', 0, 'about-us', '', NULL, '2019-10-20 21:40:23', NULL, '2019-10-20 21:40:23'),
(3, '{\"en\":\"Properties\"}', 'Contact Us', '{\"en\":\"Properties\"}', 'Contact Us', NULL, '{\"en\":\"<p><br><\\/p>\"}', '{\"en\":\"BHICP  \\u2022  Boyd & Hassell Industrial & Commercial Properties, INC.  in  North Carolina : Properties\"}', '{\"en\":\"Properties in Hickory, NC\"}', '{\"en\":\"Get the perfect office space or commercial property in Hickory, NC with Boyd and Hassell. We have everything form offices, commercial leasing, land, retail spaces, warehouses and more!\"}', NULL, '[]', 0, 'default', 'default', 0, 'properties', '', NULL, NULL, NULL, '2020-06-13 19:07:50'),
(4, '{\"en\":\"Page Not found\"}', 'Page Not found', '{\"en\":\"Page Not found\"}', 'Page Not found', NULL, '{\"en\":\"<p><br><\\/p>\"}', '{\"en\":\"404 test\"}', '{\"en\":\"404 test\"}', '{\"en\":\"404 test\"}', NULL, '[]', 0, 'default', 'default', 0, '404', '', NULL, NULL, NULL, '2021-04-17 08:26:37'),
(6, '{\"en\":\"About\"}', 'About', '{\"en\":\"About\"}', 'Team11', NULL, '{\"en\":\"<p>About<\\/p>\"}', '{\"en\":\"BHICP  \\u2022  Boyd & Hassell Industrial & Commercial Properties, INC.  in  North Carolina : About\"}', '{\"en\":\"About Boyd and Hassell\"}', '{\"en\":null}', NULL, '[]', 0, 'default', 'default', 50, 'about', '', NULL, NULL, '2019-10-20 21:33:42', '2021-03-27 08:57:15'),
(7, '{\"en\":\"Services\"}', 'Services', '{\"en\":\"Services\"}', 'Services', NULL, '{\"en\":\"<p><br><\\/p>\"}', '{\"en\":\"BHICP  \\u2022  Boyd & Hassell Industrial & Commercial Properties, INC.  in  North Carolina : Services\"}', '{\"en\":\"BHICP Services\"}', '{\"en\":null}', NULL, '[]', 0, 'default', 'default', 50, 'services', '', NULL, NULL, '2019-10-20 21:59:36', '2020-05-25 17:10:39'),
(8, '{\"en\":\"Contact\"}', 'Contact', '{\"en\":\"Contact\"}', 'Contact', 'bhicp', '{\"en\":\"<p><br><\\/p>\"}', '{\"en\":\"BHICP  \\u2022  Boyd & Hassell Industrial & Commercial Properties, INC.  in  North Carolina : Contact\"}', '{\"en\":\"Contact BHICP\"}', '{\"en\":\"Get Boyd and Hassell Commercial and Industrial Properties to help you find your next office space. If you\'re looking for industrial space or commercial buildings we can help you get the one that will be perfect for you.\"}', NULL, '[]', 0, 'default', 'default', 50, 'contact', '', NULL, NULL, '2019-12-23 01:55:38', '2021-04-05 19:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(128) NOT NULL,
  `token` varchar(64) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ankit.dabrande@gmail.com', '$2y$10$del7cPoGbhEjg2wsXFIHr.xeXMH61PgojjL7N6UeL6965XiGR1Kmm', '2020-02-05 11:01:47'),
('krishna.dabrande@gmail.com', '$2y$10$EGck8bW77hQonKDvkGZlV.JXFMFQfTvsXZwiRT08Eo0nOF3UIdGfu', '2020-02-06 10:59:47'),
('lasthyun822@gmail.com', '$2y$10$etEOoGK27nSaKoH/sYktOu7SxPFYCFvlx.2oq3C.Dt5TXJY33BiPC', '2020-02-06 11:01:24'),
('owengraffix@gmail.com', '$2y$10$IU40GOJbmzi/PU4qGf2xvOzJSNVGrXZo34V6gcsBRxP2SIF7LEfRG', '2020-02-06 11:09:40'),
('barrett@bhicp.com', '$2y$10$SbF4cGosLaSLzEFViPLTuOPflJIUS8WcExwVwClkky.DeNrdnS0jq', '2020-12-05 01:47:23'),
('ashtyn@bhicp.com', '$2y$10$obUo6uk6o2yA5BcZ.2cFTeD5rLI/zCB9Rqwrfm8BEXHBih7Bgkrri', '2021-02-04 00:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
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
(18, 1, 4, '2020-09-10 18:58:06', '2020-09-10 18:58:06'),
(19, 1, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(20, 2, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(21, 4, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(22, 3, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(23, 6, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(24, 8, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(25, 7, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(26, 5, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(27, 10, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(28, 12, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(29, 11, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(30, 9, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(31, 14, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(32, 16, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(33, 15, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(34, 13, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `info` longtext DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `square` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `construction` varchar(255) DEFAULT NULL,
  `zoning` varchar(255) DEFAULT NULL,
  `dimension` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_map` varchar(1000) DEFAULT NULL,
  `lookup_mls` longtext DEFAULT NULL,
  `gallery` longtext DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `construction_date` varchar(255) DEFAULT NULL,
  `construction_type` varchar(255) DEFAULT NULL,
  `ceiling_height` varchar(255) DEFAULT NULL,
  `lighting` varchar(255) DEFAULT NULL,
  `truck_loading` varchar(255) DEFAULT NULL,
  `rest_rooms` varchar(255) DEFAULT NULL,
  `former_use` varchar(255) DEFAULT NULL,
  `water` varchar(255) DEFAULT NULL,
  `sewer` varchar(255) DEFAULT NULL,
  `gas` varchar(255) DEFAULT NULL,
  `power` varchar(255) DEFAULT NULL,
  `parking` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `google_gis` longtext DEFAULT NULL,
  `min_price` varchar(255) DEFAULT NULL,
  `max_price` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `price_per_sf` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `upload_flyer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `info`, `category`, `type`, `price`, `square`, `image`, `size`, `condition`, `construction`, `zoning`, `dimension`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`, `google_map`, `lookup_mls`, `gallery`, `pin`, `construction_date`, `construction_type`, `ceiling_height`, `lighting`, `truck_loading`, `rest_rooms`, `former_use`, `water`, `sewer`, `gas`, `power`, `parking`, `city`, `state`, `zip`, `google_gis`, `min_price`, `max_price`, `slug`, `price_per_sf`, `status`, `upload_flyer`) VALUES
(27, '273 2nd Ave SE', '1,000 sf suite in The Village Corner Shopping Center available for lease. The suite is in good condition. The ceiling height is 9\' high. Water & sewer are with The City of Hickory and is included in the rental rate. There is central air conditioning and hot air heat. Paved common parking area.', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '1000', '273 2nd Ave SE- Front.JPG', '1000', 'Good', NULL, 'C-2', 'Est.', NULL, NULL, NULL, '2020-04-21 16:46:13', '2021-04-05 10:47:41', 'https://www.google.com/maps/place/273+2nd+Ave+SE,+Hickory,+NC+28602,+USA/@35.7299087,-81.3350608,17z/data=!3m1!4b1!4m5!3m4!1s0x885131d3bcd3ffff:0x58ae73833a5295d8!8m2!3d35.7299087!4d-81.3328721', NULL, 'a:2:{i:0;s:63:\"public/storage/images/gallery/1600283805153273-2nd-ave-se-2.jpg\";i:1;s:55:\"public/storage/images/gallery/1600283805230IMG_2788.JPG\";}', '2749292539', '1982', 'BRICK', '9\'', 'Fluorescent', 'Common', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved Common', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73116&lon=-81.33852&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=370207690265', '650', NULL, '273-2nd-ave-se-hickory', '$650/mo includes water', 'inactive', NULL),
(29, '200 1st Ave NW-Ground Level', 'The ground level in the Wells Fargo building has several availabilities, with suites varying from 200-4,500 square feet (5,400 rentable sf) starting at $12/sqft. This full-service building is in a fantastic location with views of Downtown Hickory and beyond, right in the heart of Downtown on First Avenue NW. There is a private parking lot*, street parking, and all-day parking with the city of Hickory. This location has central air conditioning and gas boiler heat, as well as a truck loading area on the bottom floor that is equipped with one ground-level door and a loading dock. Give us a call for more information or to schedule a time to view the availabilities we have!\r\n\r\n*Private lot only available to certain leased suites.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '5400', 'ground-level-2-1631824768.png', 'Various', 'Great', NULL, 'C-1', 'Est.', NULL, NULL, NULL, '2020-06-04 22:06:51', '2021-10-14 19:45:09', 'https://www.google.com/maps/place/200+1st+Ave+NW,+Hickory,+NC+28601,+USA/@35.733749,-81.3422161,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e2aabac1563:0x90ef8b4108da0089!8m2!3d35.733749!4d-81.3400274', NULL, 'a:6:{i:0;s:73:\"public/storage/images/gallery/1621868373729200 1st Ave NW- Front View.jpg\";i:1;s:55:\"public/storage/images/gallery/1621868373230IMG_0849.JPG\";i:2;s:55:\"public/storage/images/gallery/1621868373230IMG_0851.JPG\";i:3;s:55:\"public/storage/images/gallery/1621868373321IMG_0853.JPG\";i:4;s:58:\"public/storage/images/gallery/16218683739Suite 310 (5).jpg\";i:5;s:55:\"public/storage/images/gallery/162186837395Suite 310.jpg\";}', '370319505173', '1974', 'Block', '12\'', 'Fluorescent', '1 Grd. Level', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Power', 'Paved lot', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.73389&lon=-81.34009&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFTFTFTTTTTT&pinc=370319505173', '12', '15', '200-1st-ave-nw-hickory', 'Lease Price: $12.00-$15.00/s.f. (Full Service)', 'active', '202-union-square1634226309.pdf'),
(35, '3849 Johnson Bridge Rd', NULL, 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '924', '3849 Johnson Bridge Rd- Front.JPG', NULL, 'Good', NULL, 'G-B', 'Est.', NULL, NULL, NULL, '2020-06-04 22:22:56', '2021-06-23 22:05:41', 'https://www.google.com/maps/place/3849+Johnson+Bridge+Rd,+Hickory,+NC+28602,+USA/@35.7082825,-81.4543579,17z/data=!3m1!4b1!4m5!3m4!1s0x88512967aaca6277:0x2653db0e2b5a6c0a!8m2!3d35.7082825!4d-81.4521692', NULL, 'a:0:{}', '2772119675', '1965', 'Block', '10\'', 'Fluorescent', 'None', NULL, NULL, 'City', NULL, NULL, NULL, 'Paved', 'Hickory', 'NC', '28602', 'http://gis.burkenc.org/', '600', NULL, '3849-johnson-bridge-rd-hickory', 'Lease Price: $600/mo', 'inactive', NULL),
(36, '1331 4th St Dr NW- Suite A', 'As a building formerly used as office space, there are many options of various sized suites, including this 3,100 square foot office space. This well-kept building is a full service building with central air and gas heat, paved parking, and is conveniently located close to I-40. This is a fantastic property with great exposure, act now!', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '3100', 'suite-a1632149864.png', 'Various', 'Great', NULL, 'OI', 'Est.', NULL, NULL, NULL, '2020-06-04 22:32:02', '2022-03-10 19:03:12', 'https://www.google.com/maps/place/1331+4th+St+Dr+NW,+Hickory,+NC+28601,+USA/@35.74985,-81.3418293,17z/data=!3m1!4b1!4m5!3m4!1s0x88513027547d280d:0x9e912e9cdecb33ca!8m2!3d35.74985!4d-81.3396406', NULL, 'a:24:{i:0;s:54:\"public/storage/images/gallery/16321498647525-Ste A.JPG\";i:1;s:54:\"public/storage/images/gallery/16321498648496-Ste A.JPG\";i:2;s:54:\"public/storage/images/gallery/16321498646707-Ste A.JPG\";i:3;s:54:\"public/storage/images/gallery/16321498644789-Ste A.JPG\";i:4;s:55:\"public/storage/images/gallery/163214986497113-Ste A.JPG\";i:5;s:55:\"public/storage/images/gallery/163214986493214-Ste A.JPG\";i:6;s:55:\"public/storage/images/gallery/163214986465420-Ste A.JPG\";i:7;s:55:\"public/storage/images/gallery/163214986432721-Ste A.JPG\";i:8;s:59:\"public/storage/images/gallery/163214986413523- Suite A .JPG\";i:9;s:73:\"public/storage/images/gallery/16321498644981331 4th St Dr- Front View.jpg\";i:10;s:70:\"public/storage/images/gallery/16321498645641331 4th St Dr NW STE A.jpg\";i:11;s:70:\"public/storage/images/gallery/16321498644231331 4th St Dr- parking.jpg\";i:12;s:73:\"public/storage/images/gallery/16321498641721331 4th St. Dr. SW Aerial.JPG\";i:13;s:53:\"public/storage/images/gallery/1620238200325-Ste A.JPG\";i:14;s:54:\"public/storage/images/gallery/16202382006957-Ste A.JPG\";i:15;s:54:\"public/storage/images/gallery/16202382008949-Ste A.JPG\";i:16;s:55:\"public/storage/images/gallery/162023820016813-Ste A.JPG\";i:17;s:54:\"public/storage/images/gallery/16202382004914-Ste A.JPG\";i:18;s:55:\"public/storage/images/gallery/162023820096420-Ste A.JPG\";i:19;s:54:\"public/storage/images/gallery/16202382009621-Ste A.JPG\";i:20;s:49:\"public/storage/images/gallery/162023820066523.JPG\";i:21;s:70:\"public/storage/images/gallery/16202382009191331 4th St Dr NW STE A.jpg\";i:22;s:72:\"public/storage/images/gallery/16202382008211331 4th St Dr- Rear View.JPG\";i:23;s:70:\"public/storage/images/gallery/16001935898631331 4th St Dr- parking.jpg\";}', '370311558935', '1978', 'Brick', '9\'+', 'Fluorescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Lot', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.7498&lon=-81.34013&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFTFTFTTTTTT&pinc=370311558935', '1300', '12400', '1331-4th-st-dr-nw-hickory', 'Lease Price - $14.00/sf Full Service', 'inactive', '1331-4th-street-dr-flyer1634226274.pdf'),
(37, '1331 4th St Dr NW', 'As a building formerly used as office space, there are many options of various sized suites with 9+ foot ceilings available for lease.  It is a full service building with central air, gas heat, paved parking, and is conveniently located close to I-40.', 'a:1:{i:0;s:4:\"sale\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '24800', '1331 4th St Dr- Front View.jpg', NULL, 'Great', NULL, 'OI', 'Est.', NULL, NULL, NULL, '2020-06-04 22:38:48', '2022-08-11 19:09:36', 'https://www.google.com/maps/place/1331+4th+St+Dr+NW,+Hickory,+NC+28601,+USA/@35.74985,-81.3418293,17z/data=!3m1!4b1!4m5!3m4!1s0x88513027547d280d:0x9e912e9cdecb33ca!8m2!3d35.74985!4d-81.3396406', NULL, 'a:2:{i:0;s:70:\"public/storage/images/gallery/16001937048211331 4th St Dr- parking.jpg\";i:1;s:72:\"public/storage/images/gallery/16001937042061331 4th St Dr- Rear View.JPG\";}', '370311558935', '1978', 'Brick', '9\'+', 'Fluorescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Lot', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.7498&lon=-81.34013&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFTFTFTTTTTT&pinc=370311558935', '1490000', NULL, '1331-4th-st-dr-nw-hickory-1', 'Asking Price $1,490,000', 'sold', '1331-4th-street-dr-flyer1634226226.pdf'),
(41, '635 Main Ave SW', 'Lease this 2,328 square foot suite with 12’ ceilings for your business! This great space comes equipped with a common truck loading area and a paved parking lot. It is currently zoned C-5, and has water and sewer through the City of Hickory.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '2328', '635 Main Ave SW- Front.jpg', NULL, 'Good', NULL, 'C-5', '24\'x97\'', NULL, NULL, NULL, '2020-06-04 22:53:26', '2021-05-21 22:15:28', 'https://www.google.com/maps/place/635+Main+Ave+SW,+Hickory,+NC+28602,+USA/@35.7314634,-81.3510249,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e2da8bf2889:0x14730e1fd195a5e7!8m2!3d35.7314634!4d-81.3488362', NULL, 'a:7:{i:0;s:69:\"public/storage/images/gallery/1619015828794635 Main Ave SW- Front.jpg\";i:1;s:71:\"public/storage/images/gallery/16190158282635 Main Ave SW- Warehouse.JPG\";i:2;s:64:\"public/storage/images/gallery/1619015828648635-main-ave-sw-3.jpg\";i:3;s:55:\"public/storage/images/gallery/1619015828113IMG_0705.JPG\";i:4;s:55:\"public/storage/images/gallery/1619015828425IMG_0708.JPG\";i:5;s:70:\"public/storage/images/gallery/1591296806521635 Main Ave SW- Office.jpg\";i:6;s:73:\"public/storage/images/gallery/1591296806737635 Main Ave SW- Warehouse.JPG\";}', '370206299442', '1983', 'Brick', '12\'', 'Fluorescent', 'Common', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Common', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.73151&lon=-81.3489&layers=FFBTFFFFFFFTFTFFTFFFTTFFTT&pinc=370206299442', '950', NULL, '635-main-ave-sw-hickory', 'Lease Price: $950/mo', 'inactive', NULL),
(42, '637 Main Ave SW', 'This listing is for a 2,328 square foot space with 12’ ceilings is available for lease in Hickory, NC. This great space off of Main Avenue comes equipped with a common truck loading area and a paved parking lot.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '2328', '637 Main Ave SW- Front.JPG', NULL, 'Good', NULL, 'C-5', '24\'x97\'', NULL, NULL, NULL, '2020-06-04 22:58:42', '2021-07-02 23:15:11', 'https://www.google.com/maps/place/637+Main+Ave+SW,+Hickory,+NC+28602,+USA/data=!4m2!3m1!1s0x88512e2da7d1f66b:0x4f2f1183236d983c?sa=X&ved=2ahUKEwiFksKYovrpAhWhyDgGHeUTBe0Q8gEwAHoECAsQAQ', NULL, 'a:3:{i:0;s:75:\"public/storage/images/gallery/1591297122693637 Main Ave SW- Rear Office.JPG\";i:1;s:70:\"public/storage/images/gallery/1591297122307637 Main Ave SW- Office.JPG\";i:2;s:69:\"public/storage/images/gallery/1591297122109637 Main Ave SW- Front.JPG\";}', '370206299442', '1983', 'Brick', '12\'', 'Fluorescent', 'Common', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved Common', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.73151&lon=-81.3489&layers=FFBTFFFFFFFTFTFFTFFFTTFFTT&pinc=370206299442', '950', NULL, '637-main-ave-sw-hickory', 'Lease Price: $950/mo', 'leased', NULL),
(43, '1080 25th St SE', 'This conveniently located listing is for a 4,368 square foot space with quick access to I-40. This building has 9’-10’ ceilings, with varying carpet and vinyl flooring throughout. New gated entrance for secure parking. There is additional gravel parking in rear of the building. Water services are provided by the City of Hickory and the property has a septic system.', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '4368', 'front1660246410.jpg', '1.00', 'Good', NULL, 'IND', '91\'x32\'', NULL, NULL, NULL, '2020-06-04 23:22:58', '2022-10-07 20:49:05', 'https://www.google.com/maps/place/1080+25th+St+SE,+Hickory,+NC+28602,+USA/@35.7138122,-81.2899653,17z/data=!3m1!4b1!4m5!3m4!1s0x8851310e8020e0c7:0x11f1f719c989056f!8m2!3d35.7138122!4d-81.2877766', NULL, 'a:3:{i:0;s:54:\"public/storage/images/gallery/1660246410611Front 3.jpg\";i:1;s:54:\"public/storage/images/gallery/161920692715IMG_1077.jpg\";i:2;s:55:\"public/storage/images/gallery/1619206927141IMG_2796.jpg\";}', '372213028595', '1980', 'Brick', '9\'-10\'', 'Fluorescent', 'N/A', NULL, NULL, 'City of Hickory', 'Septic', NULL, 'Duke Energy', 'Gravel Lot', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.71384&lon=-81.28791&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFTFTFTTTTTT&pinc=372213028595', '1900', NULL, '1080-25th-st-se-hickory', 'Lease Price: $1,900/mo', 'inactive', 'property-flyers-23-1637247134.pdf'),
(44, '1516 F Ave SE, Unit C&D', NULL, 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '6250', '1516 F Ave Ste C&D- Front.jpg', NULL, 'Great', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-04 23:28:26', '2021-04-05 11:01:41', 'https://www.google.com/maps/place/1516+F+Ave+SE+Unit+C%26D,+Hickory,+NC+28602,+USA/data=!4m2!3m1!1s0x885131b350964511:0x740750fdac3bc6ee?sa=X&ved=2ahUKEwiS2679ofrpAhWHXisKHerwBJoQ8gEwAHoECAwQAQ', NULL, 'a:3:{i:0;s:73:\"public/storage/images/gallery/16000907084021516 F Ave Ste C&D- Office.JPG\";i:1;s:76:\"public/storage/images/gallery/16000907087931516 F Ave Ste C&D- Warehouse.JPG\";i:2;s:55:\"public/storage/images/gallery/1600090708898IMG_0736.JPG\";}', '371206399031', '1970', 'Brick', '10\'-12\'', 'Fluorescent', 'N/A', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Common Parking', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73114&lon=-81.31191&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=371206399031', '2500', NULL, '1516-f-ave-se-unit-cd-hickory', 'Lease Price: $2,500/mo', 'inactive', NULL),
(45, '510 1st Ave SW', NULL, 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '8700', '510 1st Ave SW- Front.JPG', NULL, 'Fair', NULL, 'C-2', 'Est.', NULL, NULL, NULL, '2020-06-04 23:31:21', '2021-04-05 10:46:34', 'https://www.google.com/maps/place/510+1st+Ave+SW,+Hickory,+NC+28602,+USA/data=!4m2!3m1!1s0x88512e2c642f576f:0xc54daeccc990ef8b?sa=X&ved=2ahUKEwjw5L3lofrpAhWpzzgGHUdMCfEQ8gEwAHoECAsQAQ', NULL, 'a:0:{}', '370206396275', '1900', 'Brick/Stucco', '12\'-14\'', 'Fluorescent', 'Grd. Level', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73116&lon=-81.33852&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=370207690265', '1200', NULL, '510-1st-ave-sw-hickory', 'Lease Price: $1,200/mo', 'inactive', NULL),
(46, '210 13th Ave Pl NW', 'This central location is close to almost everything; minutes from Downtown Hickory and just right off Highway 127! This 10,155 square foot building is available for lease or sale in Hickory, NC and would be a fantastic option for a medical office. The building is set up with central air conditioning and gas heat, with water run through the City of Hickory. If leased, it is possible this property could be subdivided between 4,200-10,155 square feet. For more information or to schedule a time to view, please call Gavin Mitchell at (828) 322-1723.', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '10155', '210 13th Ave Pl. NW- Front.JPG', '1.52', 'Great', NULL, 'OI', 'Est.', NULL, NULL, NULL, '2020-06-04 23:35:03', '2021-05-10 17:57:17', 'https://www.google.com/maps/place/210+13th+Ave+Pl+NW,+Hickory,+NC+28601,+USA/@35.7508371,-81.3426028,17z/data=!4m5!3m4!1s0x88512fdf5a70756f:0x27a1f186e418ab35!8m2!3d35.7508371!4d-81.3404141', NULL, 'a:2:{i:0;s:73:\"public/storage/images/gallery/1591299303641210 13th Ave Pl NW- Aerial.JPG\";i:1;s:73:\"public/storage/images/gallery/1591299303918210 13th Ave Pl. NW- Front.JPG\";}', '370311566316', '1977', 'Brick', '10\'+', 'Fluorescent', 'N/A', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Lot', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.75077&lon=-81.3404&layers=FFBFFTFFFFFFFFFFFFTFFFFTTFFFFFFFTFFTTTTTT&pinc=370311566316', '12', '15', '210-13th-ave-pl-nw-hickory', 'Lease Price: $12.00-$15.00/sf', 'inactive', NULL),
(47, '210 13th Ave Pl NW', NULL, 'a:1:{i:0;s:4:\"sale\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '10155', '210 13th Ave Pl. NW- Front.JPG', NULL, 'Great', NULL, 'OI', 'Est.', NULL, NULL, NULL, '2020-06-04 23:40:33', '2021-04-05 10:45:19', 'https://www.google.com/maps/place/210+13th+Ave+Pl+NW,+Hickory,+NC+28601,+USA/@35.7508371,-81.3426028,17z/data=!3m1!4b1!4m5!3m4!1s0x88512fdf5a70756f:0x27a1f186e418ab35!8m2!3d35.7508371!4d-81.3404141', NULL, 'a:3:{i:0;s:72:\"public/storage/images/gallery/159129963359210 13th Ave Pl NW- Aerial.JPG\";i:1;s:76:\"public/storage/images/gallery/1591299633522210 13th Ave Pl NW- Floorplan.JPG\";i:2;s:73:\"public/storage/images/gallery/1591299633387210 13th Ave Pl. NW- Front.JPG\";}', '370311566316', '1977', 'Brick', '10\'+', 'Fluorescent', 'N/A', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Lot', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.75077&lon=-81.3404&layers=FFBFFTFFFFFFFFFFFFTFFFFTTFFFFFFFTFFTTTTTT&pinc=370311566316', '899000', NULL, '210-13th-ave-pl-nw-hickory-1', 'Asking Price: $899,000', 'inactive', NULL),
(48, '1720-1722 Tate Blvd SE', NULL, 'a:1:{i:0;s:4:\"sale\";}', 'a:3:{i:0;s:6:\"office\";i:1;s:10:\"industrial\";i:2;s:6:\"retail\";}', NULL, '10000', '1720 Tate Blvd SE.jpg', NULL, 'Good', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-04 23:44:20', '2021-04-05 10:45:10', 'https://www.google.com/maps/place/1720+Tate+Blvd+SE,+Hickory,+NC+28602,+USA/@35.7280664,-81.3128173,17z/data=!3m1!4b1!4m5!3m4!1s0x885131b3bbea352b:0xdb572e0a1d945703!8m2!3d35.7280664!4d-81.3106286', NULL, 'a:5:{i:0;s:65:\"public/storage/images/gallery/15912998606731720 Tate Blvd (2).jpg\";i:1;s:65:\"public/storage/images/gallery/15912998601651720 Tate Blvd (1).jpg\";i:2;s:61:\"public/storage/images/gallery/15912998602771720 Tate Blvd.jpg\";i:3;s:64:\"public/storage/images/gallery/15912998609671720-tate-blvd-se.jpg\";i:4;s:66:\"public/storage/images/gallery/15912998608321720-tate-blvd-se-1.jpg\";}', '371206473833', '1986', 'Brick/Stucco', '12\'', NULL, 'Dock Height', NULL, NULL, 'City', 'City', NULL, 'Duke', 'Paved Lot', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.70941&lon=-http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.72793&lon=-81.31038&layers=FBFFTFFFFFFFFFTFFTTTTFFFFFFTTTTTTT&pinc=371206473833', '799900', NULL, '1720-tate-blvd-se-hickory', 'Asking Price: $799,000', 'inactive', NULL),
(49, '1722 Tate Blvd SE', NULL, 'a:1:{i:0;s:5:\"lease\";}', 'a:3:{i:0;s:6:\"office\";i:1;s:10:\"industrial\";i:2;s:6:\"retail\";}', NULL, '10000', 'IMG_0829.jpg', '1.99', 'Good', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-04 23:57:53', '2021-04-05 10:45:01', 'https://www.google.com/maps/place/1722+Tate+Blvd+SE,+Hickory,+NC+28602,+USA/@35.7285353,-81.3111307,17z/data=!3m1!4b1!4m5!3m4!1s0x885131b289d577db:0x294828e84b215060!8m2!3d35.7285353!4d-81.308942', NULL, 'a:2:{i:0;s:61:\"public/storage/images/gallery/16009714523671722 Tate Blvd.jpg\";i:1;s:76:\"public/storage/images/gallery/16009711763661722-tate-blvd-floorplan- NEW.jpg\";}', '371206473833', '1986', 'Brick/Stucco', '12\'', 'Fluorescent', 'Dock Height', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Common Parking', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.70941&lon=-http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.72793&lon=-81.31038&layers=FBFFTFFFFFFFFFTFFTTTTFFFFFFTTTTTTT&pinc=371206473833', '3750', NULL, '1722-tate-blvd-se-hickory', 'Lease Price: $3,750/mo', 'inactive', NULL),
(50, '1720 Tate Blvd SE', NULL, 'a:1:{i:0;s:4:\"sale\";}', 'a:3:{i:0;s:6:\"office\";i:1;s:10:\"industrial\";i:2;s:6:\"retail\";}', NULL, '20788', 'IMG_0828.jpg', NULL, 'Good', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-05 00:00:49', '2021-04-05 10:45:41', 'https://www.google.com/maps/place/1722+Tate+Blvd+SE,+Hickory,+NC+28602,+USA/@35.7285353,-81.3111307,17z/data=!3m1!4b1!4m5!3m4!1s0x885131b289d577db:0x294828e84b215060!8m2!3d35.7285353!4d-81.308942', NULL, 'a:0:{}', '371206473833', '1986', 'Brick/Stucco', '12\'', 'Fluorescent', 'Dock Height', NULL, NULL, 'City', 'City', NULL, 'Duke', NULL, 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.70941&lon=-http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.72793&lon=-81.31038&layers=FBFFTFFFFFFFFFTFFTTTTFFFFFFTTTTTTT&pinc=371206473833', '6500', NULL, '1722-tate-blvd-se-hickory-1', 'Lease Price: $6,500/mo', 'inactive', NULL),
(52, '22  S Center St', 'This approximately 22,870 square foot brick building with 10 foot ceilings is in great condition that can be subdivided! This property comes with a large paved parking lot as well as shared city parking in Downtown Hickory. There is central air and gas heat, with water and sewer through the City of Hickory.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '22870', '22 S. Center St- Front.JPG', '1.62 Acres', 'Great', NULL, 'C-1', 'Est.', NULL, NULL, NULL, '2020-06-05 00:10:21', '2021-12-01 23:52:02', 'https://www.google.com/maps/place/22+S+Center+St,+Hickory,+NC+28602,+USA/@35.7313479,-81.3410045,17z/data=!3m1!4b1!4m5!3m4!1s0x885131d50b1c86bd:0xb63f1985b7da0ea!8m2!3d35.7313479!4d-81.3388158', NULL, 'a:4:{i:0;s:69:\"public/storage/images/gallery/159130142176922 S. Center St- Front.JPG\";i:1;s:68:\"public/storage/images/gallery/159130142143722 S. Center St- Side.JPG\";i:2;s:73:\"public/storage/images/gallery/159130142180922 S. Center St- 2nd Floor.JPG\";i:3;s:73:\"public/storage/images/gallery/159130142129522 S. Center St- 1st Floor.JPG\";}', '370207690265', '1940', 'Brick', '10\'', 'Fluorescent', NULL, NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved/Shared City', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73116&lon=-81.33852&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=370207690265', NULL, NULL, '22-s-center-st-hickory-1', '-UNDER CONTRACT FOR SALE- Lease Price - $9.50/sf', 'inactive', NULL),
(53, '1241 E Garner Bagnal Blvd', 'This 32,400 SF of free span warehouse space is conveniently located near I-77. There is 16\'-22\' of clear ceiling height, making this the perfect manufacturing space. There are three (3) 8\'x10\' dock-height doors. New LED Lighting and Gas unit heaters in place, but no air conditioning. The location is equipped with heavy power and is fully sprinkled.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '32400', 'IMG_2085.jpg', NULL, 'Good', NULL, 'HI', 'Est.', NULL, NULL, NULL, '2020-06-05 00:14:25', '2022-03-10 19:01:44', 'https://www.google.com/maps/place/1243+Garner+Bagnal+Blvd,+Statesville,+NC+28677,+USA/@35.7712912,-80.8598596,17z/data=!3m1!4b1!4m5!3m4!1s0x885159b24c50359b:0x4ddeaef3273a1bc4!8m2!3d35.7712912!4d-80.8576709', NULL, 'a:7:{i:0;s:91:\"public/storage/images/gallery/16433179358031241 E Garner Bagnal Blvd- 20,400 sf section.jpg\";i:1;s:84:\"public/storage/images/gallery/16433179351381243 E Garner Bagnal Blvd- Interior 2.jpg\";i:2;s:76:\"public/storage/images/gallery/16433179354331243-e-garner-bagnal-blvd-1 3.jpg\";i:3;s:55:\"public/storage/images/gallery/1643317935414IMG_2893.JPG\";i:4;s:55:\"public/storage/images/gallery/1643317935156IMG_2896.JPG\";i:5;s:82:\"public/storage/images/gallery/15913016657871243 E Garner Bagnal Blvd- Interior.jpg\";i:6;s:84:\"public/storage/images/gallery/15913016659931243 E Garner Bagnal Blvd- Interior 2.jpg\";}', '4744808972', '1955', 'Brick/Block', '16\'-20\'', 'LED', '3 Dock Height', NULL, NULL, 'City of Statesville', 'City of Statesville', NULL, 'City of Statesville', 'Paved', 'Statesville', 'NC', '28677', 'https://iredell.connectgis.com/Map.aspx', '10125', NULL, '1243-e-garner-bagnal-blvd', '$3.75/sf - NNN', 'leased', '1241-e-garner-bagnal-blvd-flyer1643317935.pdf'),
(54, '66 Highway 321 NW', 'Additional Pin #\'s: 279320803117, 279320804252, 279320806198 & 279320806199', 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '48071', '66 Hwy 321 NW- Front.JPG', '4.73', 'Great', NULL, 'C-2', 'Est.', NULL, NULL, NULL, '2020-06-05 16:44:57', '2021-09-16 18:25:28', 'https://www.google.com/maps/place/66+US-321,+Hickory,+NC+28601,+USA/@35.7326957,-81.3663628,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e4a56ea3d13:0x99f886248b31d48f!8m2!3d35.7326957!4d-81.3641741', NULL, 'a:2:{i:0;s:67:\"public/storage/images/gallery/159136111814466 Hwy 321 NW- Front.JPG\";i:1;s:70:\"public/storage/images/gallery/159136111813066 Hwy 321 NW- Interior.jpg\";}', '279208893899', '1969', 'Retail/Distribution', '12\'-18\'', 'Fluorescent', 'Dock Height/Grd Level', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73253&lon=-81.36431&layers=FFBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=279208893899', '1399900', NULL, '66-highway-321-nw-hickory', 'Asking Price: $1,399,900', 'inactive', NULL),
(55, '110 Somerset Dr NW', NULL, 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '80460', 'IMG_2025.jpg', NULL, 'Good', NULL, 'M-1', 'Est.', NULL, NULL, NULL, '2020-06-05 16:48:18', '2021-04-05 10:42:42', 'https://www.google.com/maps/place/110+Somerset+Dr+NW,+Hickory,+NC+28601,+USA/@35.722969,-81.2528347,17z/data=!3m1!4b1!4m5!3m4!1s0x885136d4be7a3495:0x1fb80841c76e7f59!8m2!3d35.722969!4d-81.250646', NULL, 'a:2:{i:0;s:59:\"public/storage/images/gallery/1591361298651110 Somerset.jpg\";i:1;s:65:\"public/storage/images/gallery/1591361298841110 Somerset Dr NW.jpg\";}', '373209159695', '1982', 'Brick', '14\'', 'Fluorescent', '(23) Dock Height/(1) Grd Level', NULL, NULL, 'City of Conover', 'City of Conover', NULL, 'Duke Energy', 'Paved Lot', 'Conover', 'North Carolina', '28613', 'http://gis.catawbacountync.gov/parcel/?zoom=9&lat=35.72287&lon=-81.25059&layers=FFBTFFFFFFFTFTFFTFFFTTFFTT&pinc=373209159695', '18500', NULL, '110-somerset-drive-nw-conover', 'Lease Price: $2.75/sf', 'inactive', NULL),
(56, '110 Somerset Dr NW', NULL, 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '80460', 'IMG_2025.jpg', NULL, 'Good', NULL, 'M-1', 'Est.', NULL, NULL, NULL, '2020-06-05 16:51:34', '2021-04-05 10:42:35', 'https://www.google.com/maps/place/110+Somerset+Dr+NW,+Hickory,+NC+28601,+USA/@35.722969,-81.2528347,17z/data=!3m1!4b1!4m5!3m4!1s0x885136d4be7a3495:0x1fb80841c76e7f59!8m2!3d35.722969!4d-81.250646', NULL, 'a:2:{i:0;s:59:\"public/storage/images/gallery/1591361494366110 Somerset.jpg\";i:1;s:65:\"public/storage/images/gallery/1591361494477110 Somerset Dr NW.jpg\";}', '373209159695', '1982', 'Brick', '14\'', 'Fluorescent', '(23) Dock Height/(1) Grd Level', NULL, NULL, 'City of Conover', 'City of Conover', NULL, 'Duke Energy', 'Paved Lot', 'Conover', 'North Carolina', '28613', 'http://gis.catawbacountync.gov/parcel/?zoom=9&lat=35.72287&lon=-81.25059&layers=FFBTFFFFFFFTFTFFTFFFTTFFTT&pinc=373209159695', '2200000', NULL, '110-somerset-drive-nw-conover-1', 'Sale Price: $2,200,000', 'inactive', NULL),
(57, '1500 13th St SW', NULL, 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '90000', '1500 13th St SW- Front.jpg', NULL, 'Great', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-05 16:55:55', '2021-04-05 10:42:22', 'https://www.google.com/maps/place/1500+13th+St+SW,+Hickory,+NC+28602,+USA/@35.710451,-81.3622137,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e14e4f39da7:0x64f0b562d399193c!8m2!3d35.710451!4d-81.360025', NULL, 'a:2:{i:0;s:69:\"public/storage/images/gallery/15913617555151500 13th St SW- Front.jpg\";i:1;s:72:\"public/storage/images/gallery/15913617554371500 13th St SW- Interior.jpg\";}', '279220916617', '1985', 'Brick', '20\'+', 'Fluorescent', 'Dock Height', NULL, NULL, 'City', NULL, NULL, 'Duke', 'Paved', 'Hickory', 'North Carolina', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73116&lon=-81.33852&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=370207690265', NULL, NULL, '1500-13th-st-sw-hickory', NULL, 'inactive', NULL),
(58, '950 German St NW', 'This listing is for a 143,022 square foot building close to Highway 321 with 8\'-26\' high ceilings and (7) dock height doors. The former manufacturing building is equipped with 3 phase, 480-volt power and has a paved parking area with 100+ spots. There is also heat, air conditioning, and a sprinkler system.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '143022', '950 German St 2.JPG', '25.42', 'Good', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-05 17:02:54', '2021-06-24 23:33:39', 'https://www.google.com/maps/place/950+German+St+NW,+Lenoir,+NC+28645,+USA/@35.9209452,-81.5611631,17z/data=!3m1!4b1!4m5!3m4!1s0x8850deffd90d5437:0x4307cb58f3094b3e!8m2!3d35.9209452!4d-81.5598987', NULL, 'a:3:{i:0;s:55:\"public/storage/images/gallery/1600283902650IMG_2716.JPG\";i:1;s:60:\"public/storage/images/gallery/1591362174483950 German St.jpg\";i:2;s:62:\"public/storage/images/gallery/1591362174911950 German St 3.JPG\";}', '2749292539', '1964', 'Masonry', '8\'-26\'', 'Fluorescent', '(7) Dock Height', NULL, NULL, 'City of Lenoir', 'City of Lenoir', NULL, 'Duke Energy', 'Paved Lot', 'Lenoir', 'North Carolina', '28645', 'http://gis.caldwellcountync.org/maps/', '29800', NULL, '950-german-st-nw-lenoir', 'Lease Price: $2.50/sf - NNN', 'inactive', NULL),
(59, '950 German St NW', 'This listing is for a 143,022 square foot building close to Highway 321 with 8\'-26\' high ceilings and (7) dock height doors. The former manufacturing building is equipped with 3 phase, 480-volt power and has a paved parking area with 100+ spots. There is also heat, air conditioning, and a sprinkler system.', 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '143022', '950 German St 2.JPG', '25.42', 'Good', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-06-05 17:07:01', '2021-06-24 23:31:41', 'https://www.google.com/maps/place/950+German+St+NW,+Lenoir,+NC+28645,+USA/@35.9209452,-81.5620874,17z/data=!3m1!4b1!4m5!3m4!1s0x8850deffd90d5437:0x4307cb58f3094b3e!8m2!3d35.9209452!4d-81.5598987', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73116&lon=-81.33852&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=370207690265', 'a:4:{i:0;s:55:\"public/storage/images/gallery/1600703842675IMG_2671.JPG\";i:1;s:60:\"public/storage/images/gallery/1591362421155950 German St.jpg\";i:2;s:65:\"public/storage/images/gallery/1591362421310950-german-st-nw-1.jpg\";i:3;s:62:\"public/storage/images/gallery/1591362421580950 German St 3.JPG\";}', '2749292539', '1964', 'Masonry', '8\'-26\'', 'Fluorescent', '(7) Dock Height', NULL, NULL, 'City of Lenoir', 'City of Lenoir', NULL, 'Duke Energy', 'Paved Lot', 'Lenoir', 'North Carolina', '28645', 'http://gis.caldwellcountync.org/maps/', '1571100', NULL, '950-german-st-nw-lenoir-1', 'Sale Price $1,571,100', 'inactive', NULL),
(61, '22  S Center St', 'This approximately 22,870 square foot brick building with 10 foot ceilings is in great condition that can be subdivided! This property comes with a large paved parking lot as well as shared city parking in Downtown Hickory. There is central air and gas heat, with water and sewer through the City of Hickory.', 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '22870', '22 S. Center St- Front.JPG', '1.62 Acres', 'Great', NULL, 'C-1', 'Est.', NULL, NULL, NULL, '2020-07-18 10:42:33', '2021-12-09 01:54:58', 'https://www.google.com/maps/place/22+S+Center+St,+Hickory,+NC+28602,+USA/@35.7313479,-81.3410045,17z/data=!3m1!4b1!4m5!3m4!1s0x885131d50b1c86bd:0xb63f1985b7da0ea!8m2!3d35.7313479!4d-81.3388158', NULL, 'a:3:{i:0;s:72:\"public/storage/images/gallery/16000922974022 S. Center St- 2nd Floor.JPG\";i:1;s:55:\"public/storage/images/gallery/1600092297213IMG_0726.JPG\";i:2;s:55:\"public/storage/images/gallery/1600092297812IMG_0733.JPG\";}', '370207690265', '1940', 'Brick', '10\'', 'Fluorescent', NULL, NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved/Shared City', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73116&lon=-81.33852&layers=FBFFTFFFFFFFFFFTFFFFTTFFFFFFFTTTTTTT&pinc=370207690265', '2500000', NULL, '22-s-center-st-hickory', 'SOLD', 'sold', NULL),
(62, '375 Main Ave NE', '2,100 sf of space in basement', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '8400', 'IMG_4282.jpg', NULL, 'Excellent', NULL, 'C-2', NULL, NULL, NULL, NULL, '2020-07-18 11:01:15', '2021-04-05 10:40:56', 'https://www.google.com/maps/place/375+Main+Ave+NE,+Hickory,+NC+28601,+USA/data=!4m2!3m1!1s0x8851302d690ae27d:0x73f1a99225c3df04?sa=X&ved=2ahUKEwip6-GrndbqAhU27XMBHa8UD5oQ8gEwAHoECAsQAQ', NULL, 'a:4:{i:0;s:55:\"public/storage/images/gallery/1600091492225IMG_2877.JPG\";i:1;s:55:\"public/storage/images/gallery/1600091492114IMG_4283.jpg\";i:2;s:55:\"public/storage/images/gallery/1600091492515IMG_4284.jpg\";i:3;s:55:\"public/storage/images/gallery/1600091492482IMG_4290.jpg\";}', '370320806421', '1947', 'Brick', '10\'-12\'', 'Fluorescent', '(3) Delivery Height', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73467&lon=-81.32989&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFTFTFTTTTTT&pinc=370320806421', '4000', NULL, '375-main-ave-ne-1', 'Lease Price: $4,000/mo', 'inactive', NULL),
(63, '375 Main Ave NE', '2,100 sf of space in basement', 'a:1:{i:0;s:4:\"sale\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '8400', 'IMG_4282.jpg', NULL, 'Excellent', NULL, 'C-2', 'Est.', NULL, NULL, NULL, '2020-07-18 11:09:59', '2021-04-05 10:43:19', 'https://www.google.com/maps/place/375+Main+Ave+NE,+Hickory,+NC+28601,+USA/@35.7344986,-81.3323191,17z/data=!3m1!4b1!4m5!3m4!1s0x8851302d690ae27d:0x73f1a99225c3df04!8m2!3d35.7344986!4d-81.3301304', NULL, 'a:3:{i:0;s:55:\"public/storage/images/gallery/1600092068882IMG_2877.JPG\";i:1;s:55:\"public/storage/images/gallery/1600092068362IMG_4284.jpg\";i:2;s:55:\"public/storage/images/gallery/1600092068972IMG_4290.jpg\";}', '370320806421', '1947', 'Brick', '10\'-12\'', 'Fluorescent', '3 Delivery Height', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73467&lon=-81.32989&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFTFTFTTTTTT&pinc=370320806421', '464900', NULL, '375-main-ave-ne', 'Sale Price - $464,900', 'inactive', NULL),
(64, '647 Hopewell Rd', '16,200 sf warehouse with 16\' ceilings is available for lease in Morganton, NC! There is a paved parking lot and one dock height door accessible in this part of the building. The water, sewer and power is with The City of Morganton. There is gas forced air heating in the warehouse.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '16200', 'Aerial.jpg', NULL, 'Good', NULL, 'M-1', NULL, NULL, NULL, NULL, '2020-07-18 11:16:25', '2022-06-07 19:54:36', 'https://www.google.com/maps/place/647+Hopewell+Rd,+Morganton,+NC+28655,+USA/data=!4m2!3m1!1s0x8850ce0a4c0c2c1f:0x564e913f0d55431a?sa=X&ved=2ahUKEwjt3-LBn9bqAhWa73MBHdoYDesQ8gEwAHoECAsQAQ', NULL, 'a:3:{i:0;s:69:\"public/storage/images/gallery/1651064727546Suite E - Loading Dock.JPG\";i:1;s:57:\"public/storage/images/gallery/1651064727446Suite E -1.jpg\";i:2;s:57:\"public/storage/images/gallery/1651064727384Suite E -2.jpg\";}', '1792579613', '1963', 'Brick', '16\'', 'Fluorescent', '1 dock height', NULL, NULL, 'City of Morganton', 'City of Morganton', NULL, 'City of Morganton', 'Paved Lot', 'Morganton', 'NC', '28655', 'https://gis.burkenc.org/default.htm?PIN=1792579613', '4050', NULL, '647-hopewell-rd', 'Lease Price: $3.00/sf NNN', 'leased', 'suite-e1651064727.pdf'),
(66, '104 Hwy US 70 E', 'Additional PIN # - 2782647932, 2782644864\r\n3 parcels', 'a:1:{i:0;s:4:\"land\";}', 'a:1:{i:0;s:4:\"land\";}', NULL, NULL, '104 US Hwy 70 E- Aerial.JPG', '3.40', 'Level', NULL, 'H-B', NULL, NULL, NULL, NULL, '2020-09-11 18:35:54', '2021-04-05 11:57:58', 'https://goo.gl/maps/vy8ny8LmWp6vQuf76', NULL, 'a:0:{}', '2782655073', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'City of Hildebran', 'City of Hildebran', NULL, NULL, NULL, 'Hildebran', 'NC', '28637', 'http://gis.burkenc.org/', '187000', NULL, '104-highway-us-70-e', 'Sale Price - $187,000', 'inactive', NULL),
(67, '211 E Fleming Dr', 'Industrial Lot for Sale', 'a:1:{i:0;s:4:\"land\";}', 'a:1:{i:0;s:4:\"land\";}', NULL, NULL, '211-e-fleming-dr.jpg', '28+/-', 'Level', NULL, 'HID', NULL, NULL, NULL, NULL, '2020-09-11 18:40:56', '2021-04-05 11:57:47', 'https://goo.gl/maps/Qntg9mkv4x4pbJRP7', NULL, 'a:0:{}', '2703669256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Public', NULL, NULL, NULL, 'Morganton', 'NC', '28655', 'http://gis.burkenc.org/', '849900', NULL, '211-e-fleming-drive', 'Sale Price - $849,900', 'inactive', NULL),
(68, '218 Windemere Isle Rd', 'UNDER CONTRACT \r\nResidential Lot- HOA required - Access to boat slip, club house and more', 'a:1:{i:0;s:4:\"land\";}', 'a:1:{i:0;s:4:\"land\";}', NULL, NULL, '218 Windemere Isle Rd- Aerial.JPG', '.48', 'Sloping', NULL, 'R-20', NULL, NULL, NULL, NULL, '2020-09-11 18:45:41', '2021-09-30 17:43:39', 'https://goo.gl/maps/kr4cXhmuGjwFAgix5', NULL, 'a:0:{}', '4710734703.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Community', 'Community', NULL, NULL, NULL, 'Statesville', 'NC', '28677', 'https://iredell.connectgis.com/Map.aspx', '139900', NULL, '218-windemere-isle-road', '-UNDER CONTRACT- Sale Price - $139,900', 'inactive', NULL),
(90, '1605 Norfolk Pl SW', 'Act quickly on the available 20,000 square feet in this brick building with 16\' high ceilings! This great space comes equipped with a truck loading area with paved AND gravel parking, three (3) dock height doors, a gas furnace, and a sprinkler system.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '20000', 'Back View.jpg', '3.45 Acres', 'Good', NULL, 'M-1', '200\'x125\'', NULL, NULL, NULL, '2020-09-21 16:51:03', '2021-07-13 23:01:50', 'https://www.google.com/maps/place/1605+Norfolk+Pl,+Conover,+NC+28613/@35.7193823,-81.2631157,17z/data=!3m1!4b1!4m5!3m4!1s0x8851312fa51576df:0x36a8a9230082d16b!8m2!3d35.719378!4d-81.260927', NULL, 'a:4:{i:0;s:55:\"public/storage/images/gallery/1600692663342IMG_2862.JPG\";i:1;s:55:\"public/storage/images/gallery/1600692663636IMG_2863.JPG\";i:2;s:56:\"public/storage/images/gallery/1600692663860Side View.jpg\";i:3;s:53:\"public/storage/images/gallery/1600692663329View 3.jpg\";}', '372216849129', '1967', 'Masonry', '16\'', 'Fluorescent', '2', NULL, NULL, 'City of Conover', 'City of Conover', NULL, 'City of Conover', 'Paved', 'Conover', 'NC', '28613', 'http://gis.catawbacountync.gov/parcel/?zoom=11&lat=35.71937&lon=-81.26096&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFTFTFTTTTTT&pinc=372216849129', '3750', NULL, '1605-norfolk-place-sw', 'Lease Price: $2.50/sf', 'leased', NULL),
(91, '123 Main Ave W', 'This approximately 2,150 square foot brick building with 9 foot ceilings and paved parking is available for lease in Hildebran, NC! Keep your space comfortable with the central heating and cooling this building comes equipped with. The property is also set up with well water and a septic sewer system.', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '2150', 'IMG_2584.JPG', '0.43 Acres', 'Good', NULL, 'N-B', '43\'x50\'', NULL, NULL, NULL, '2020-09-21 17:12:01', '2022-12-09 02:23:42', 'https://www.google.com/maps/place/123+Old+State+Hwy+10+W,+Hildebran,+NC+28637/@35.7090056,-81.4295934,17z/data=!3m1!4b1!4m5!3m4!1s0x88512eb2c9cbffff:0xdec1bc2a7ac46687!8m2!3d35.7090056!4d-81.4274047', NULL, 'a:9:{i:0;s:61:\"public/storage/images/gallery/1632424069373123-main-ave-w.jpg\";i:1;s:55:\"public/storage/images/gallery/1632424069795IMG_2572.JPG\";i:2;s:55:\"public/storage/images/gallery/1632424069360IMG_2588.JPG\";i:3;s:55:\"public/storage/images/gallery/1632424069989IMG_2589.JPG\";i:4;s:55:\"public/storage/images/gallery/1632424069840IMG_2590.JPG\";i:5;s:54:\"public/storage/images/gallery/163242406981IMG_2591.JPG\";i:6;s:55:\"public/storage/images/gallery/1600693921108IMG_2585.JPG\";i:7;s:55:\"public/storage/images/gallery/1600693921997IMG_2586.JPG\";i:8;s:55:\"public/storage/images/gallery/1600693921342IMG_2587.JPG\";}', '2772914862', '1986', 'Masonry', '9\'', 'Fluorescent', 'N/A', NULL, NULL, 'Well', 'Septic', NULL, 'Duke Power', 'Paved', 'Hildebran', 'NC', '28637', 'https://gis.burkenc.org/default.htm?PIN=2772914862', '1000', NULL, '123-main-ave-w', 'Lease Price: $1,000/mo', 'active', '123-main-ave-w1634225981.pdf'),
(92, '1503 Emmanuel Church Rd', '**Available January 1st 2021**', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '50000', 'IMG_0605 (250x167).jpg', '4.98 Acres', 'Good', NULL, 'M-1', '250\'x200\'', NULL, NULL, NULL, '2020-09-21 17:22:04', '2021-04-05 10:39:07', 'https://www.google.com/maps/place/1503+Emmanuel+Church+Rd,+Conover,+NC+28613/@35.7010283,-81.1975207,17z/data=!3m1!4b1!4m5!3m4!1s0x8851366822bb94b1:0x322690de14b62aa1!8m2!3d35.7010283!4d-81.195332', NULL, 'a:1:{i:0;s:52:\"public/storage/images/gallery/160069466312Aerial.jpg\";}', '374112873233', '1986', 'Masonry', '16\'', 'Fluorescent', '6 Docks & 1 Ground Level', NULL, NULL, 'City of Conover', 'City of Conover', NULL, 'Duke Power', 'Paved', 'Conover', 'NC', '28613', 'http://gis.catawbacountync.gov/parcel/?zoom=11&lat=35.7009&lon=-81.1951&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFTFTFTTTTTT&pinc=374112873233', '13750', NULL, '1503-emmanuel-church-rd', 'Lease Price: $13,750/mo', 'inactive', NULL),
(93, 'SOLD- 515 US Hwy 321 NW', 'Located right off of Highway 321- a great location for someone needing traffic exposure on a busy highway. This 3,412 square foot wood frame building with 8 foot ceilings and a paved parking lot is available for sale! The property is set up with central air conditioning and electric heat, and the City of Hickory provides all water and sewer services.', 'a:1:{i:0;s:4:\"sale\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '3412', '515-hwy321-nw-1.jpg', NULL, 'Fair', NULL, 'C-2', 'Est.', NULL, NULL, NULL, '2020-09-21 22:01:39', '2022-03-08 19:02:25', 'https://goo.gl/maps/iyyBbSo7LXPKTmaw9', NULL, 'a:3:{i:0;s:55:\"public/storage/images/gallery/1600711425971IMG_3697.jpg\";i:1;s:55:\"public/storage/images/gallery/1600711397572IMG_3689.jpg\";i:2;s:55:\"public/storage/images/gallery/1600711381597IMG_3688.jpg\";}', '279320727062', '1960', 'Wood Frame', '8\'', 'Fluorescent', 'N/A', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.73836&lon=-81.36654&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFTFTFTTTTTT&pinc=279320727062', '179900', NULL, '515-us-highway-321-nw', 'Under Contract: $179,900', 'sold', '515-us-hwy-3211634225885.pdf'),
(94, '1217 & 1219 Commerce St SW', 'Additional Pin #373109060522', 'a:1:{i:0;s:4:\"land\";}', 'a:1:{i:0;s:4:\"land\";}', NULL, NULL, '1217 & 1219 Commerce St SW.jpg', '1.33', 'Level', NULL, 'B-4', NULL, NULL, NULL, NULL, '2020-09-21 22:08:34', '2021-04-05 11:57:03', 'https://goo.gl/maps/H8ZqPv66VvkNHFwB6', NULL, 'a:0:{}', '373109061511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Public', NULL, NULL, NULL, 'Conover', 'NC', '28613', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.69776&lon=-81.2564&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFTFTFTTTTTT&pinc=373109061511', '79900', NULL, '1217-1219-commerce-st-sw', 'Sale Price: $79,900', 'inactive', NULL),
(95, '2122 W Maiden Rd', 'Additional Pin #\'s: 363705090673 & 362817006674\r\n\r\nThere is so much you could do with 23.42 acres of partially cleared, sloping pasture! The lot sits on the corner of Startown Road and West Maiden Road, and has easy access to Highway 321. There is public water and sewer already on the property. The land can be subdivided and is zoned 321-ED(1).', 'a:1:{i:0;s:4:\"land\";}', 'a:1:{i:0;s:4:\"land\";}', NULL, NULL, '2122-w-maiden-rd-2.jpg', '23.42', 'Sloping, Pasture & Partially Cleared', NULL, '321-ED(1)', NULL, NULL, NULL, NULL, '2020-09-21 22:13:39', '2022-03-22 19:53:38', 'https://goo.gl/maps/ikvKjHB5tzttBNEn9', NULL, 'a:0:{}', '362708997665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Public', NULL, NULL, NULL, 'Maiden', 'NC', '28650', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.59664&lon=-81.25473&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFTFTFTTTTTT&pinc=362708997665', '1747650', NULL, '2122-w-maiden-road', 'Sale Price: $1,747,650.', 'active', NULL),
(96, '3463 Valley Arbors Dr', 'Road Frontage: 448.25\'', 'a:1:{i:0;s:4:\"land\";}', 'a:1:{i:0;s:4:\"land\";}', NULL, NULL, '3463 Valley Arbors Dr.jpg', '6.71', 'Sloping', NULL, 'PD', NULL, NULL, NULL, NULL, '2020-09-21 22:18:25', '2022-02-15 23:48:55', 'https://goo.gl/maps/QebweZA8CcUZnX4Y9', NULL, 'a:0:{}', '371111561809', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'City', 'City', NULL, NULL, NULL, 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=9&lat=35.69774&lon=-81.30688&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFTFTFTTTTTT&pinc=371111561809', '159000', NULL, '3463-valley-arbors-dr', 'SOLD', 'inactive', NULL),
(97, '22 E 1st St', NULL, 'a:1:{i:0;s:4:\"sale\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '6720', '22-e-1st-st-newton-1.jpg', NULL, 'Fair', NULL, 'B-3', 'Est.', NULL, NULL, NULL, '2020-09-21 22:23:37', '2021-04-05 10:37:11', 'https://goo.gl/maps/cdc6XWtrdBRtyTaLA', NULL, 'a:3:{i:0;s:55:\"public/storage/images/gallery/1600712662345IMG_1852.jpg\";i:1;s:55:\"public/storage/images/gallery/1600712649756IMG_1857.jpg\";i:2;s:67:\"public/storage/images/gallery/160071261764822-e-1st-st-newton-2.jpg\";}', '374013031845', '1920', 'Brick/Stucco', '11\'-15\'', 'Fluorescent', 'N/A', NULL, NULL, 'City of Newton', 'City of Newton', NULL, 'City of Newton', 'Public', 'Newton', 'NC', '28658', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.66368&lon=-81.22167&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFTFTFTTTTTT&pinc=374013031845', NULL, NULL, '22-e-1st-st', 'Sale Price: $154,900', 'inactive', NULL),
(98, '102 S Main St', 'Located in the heart of Downtown Catawba, NC, this property is set up for a turn key restaurant! The 2,400 square foot brick building with 10 foot ceilings and street parking is in great condition and would be a great investment for someone looking to start or expand their food service business! The kitchen and bar equipment, tables, and chairs are included and there is a fantastic walk-in cooler off the kitchen. This property is equipped with an indoor sprinkler system, central air conditioning, and gas heat.', 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:6:\"retail\";}', NULL, '2400', '102-s-main-st-catawba-1.jpg', NULL, 'Good', NULL, 'B-1', 'Est.', NULL, NULL, NULL, '2020-09-21 22:30:16', '2021-10-08 16:44:27', 'https://goo.gl/maps/Ed56oQc9GWPiaJYg6', NULL, 'a:1:{i:0;s:55:\"public/storage/images/gallery/1600713016338IMG_4325.jpg\";}', '378106388639', '1900', 'Brick/Stucco', '10\'', 'Fluorescent', NULL, NULL, NULL, 'City of Catawba', 'City of Catawba', NULL, 'Duke Energy', 'Street Parking', 'Catawba', 'NC', '28609', 'http://gis.catawbacountync.gov/parcel/?zoom=15&lat=35.70707&lon=-81.07568&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFTFTFTTTTTT&pinc=378106388639', '249900', NULL, '102-s-main-st', 'Sale Price: $249,900', 'inactive', NULL),
(99, '6th St NW', NULL, 'a:1:{i:0;s:4:\"land\";}', 'a:1:{i:0;s:4:\"land\";}', NULL, NULL, '6th St NW.jpg', '.34', 'Sloping, wooded', NULL, 'R-2', NULL, NULL, NULL, NULL, '2020-09-21 22:36:11', '2021-04-05 11:56:02', 'https://goo.gl/maps/cixHde5mEweT1C2g8', NULL, 'a:0:{}', '370306288777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Public', NULL, NULL, NULL, 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.75723&lon=-81.34989&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFTFTFTTTTTT&pinc=370306288777', '24900', NULL, '6th-st-nw', 'Sale Price: $24,900', 'inactive', NULL),
(100, '2874 Hwy 70 SE', 'Front lot only', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"retail\";}', NULL, '1584', '2874 Hwy 70 SE.jpeg', NULL, 'Fair', NULL, 'R2/C3', 'Est.', NULL, NULL, NULL, '2020-09-22 17:25:07', '2021-04-05 10:32:01', 'https://goo.gl/maps/Z4Ur2ioDaGoQhX3h6', NULL, 'a:0:{}', '372110369577', '1953', 'Brick/Stucco', '10\'', 'Fluorescent', 'N/A', NULL, NULL, 'City of Newton', 'City of Newton', NULL, 'Duke Energy', 'Paved', 'Newton', 'NC', '28658', 'http://gis.catawbacountync.gov/parcel/?zoom=7&lat=35.69611&lon=-81.27672&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFTFTFTTTTTT&pinc=372110369577', NULL, NULL, '2874-highway-70-se', 'Lease Price: $1,250.00/mo - *AS IS*', 'inactive', NULL);
INSERT INTO `properties` (`id`, `name`, `info`, `category`, `type`, `price`, `square`, `image`, `size`, `condition`, `construction`, `zoning`, `dimension`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`, `google_map`, `lookup_mls`, `gallery`, `pin`, `construction_date`, `construction_type`, `ceiling_height`, `lighting`, `truck_loading`, `rest_rooms`, `former_use`, `water`, `sewer`, `gas`, `power`, `parking`, `city`, `state`, `zip`, `google_gis`, `min_price`, `max_price`, `slug`, `price_per_sf`, `status`, `upload_flyer`) VALUES
(101, '285 2nd Ave SE', 'This 800 square foot space in the Village Corner complex will be available on January 1, 2022. This location has a reception area and two private offices, offering great exposure on 2nd Avenue and seconds from Downtown Hickory. This would be a great spot for someone starting up their business or looking to gain visibility in an outdoor complex with close proximity to many of the great amenities Downtown Hickory has to offer.', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '800', 'IMG_2498.JPG', NULL, 'Good', NULL, 'C-2', 'Est', NULL, NULL, NULL, '2020-10-12 18:01:15', '2022-03-25 16:34:39', 'https://goo.gl/maps/QVYSWUNGHZWY9ExV9', NULL, 'a:4:{i:0;s:55:\"public/storage/images/gallery/1636485049777IMG_2499.JPG\";i:1;s:55:\"public/storage/images/gallery/1636485049679IMG_2500.JPG\";i:2;s:55:\"public/storage/images/gallery/1636485049121IMG_2501.JPG\";i:3;s:55:\"public/storage/images/gallery/1636485049262IMG_2503.JPG\";}', '370208787712', '1982', 'Brick', '9\'', 'Fluorescent', 'Common Platform', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Power', 'Paved Common Parking', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73003&lon=-81.33278&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370208787712', '750', NULL, '285-2nd-avenue-se', 'Lease Price: $750.00/mo', 'leased', '285-2nd-ave-se-flyer1640179630.pdf'),
(102, '784 4th St Dr SW', NULL, 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '1778', 'IMG_4449.jpg', NULL, 'Good', NULL, 'C-3', 'est', NULL, NULL, NULL, '2020-10-12 19:53:12', '2021-04-05 10:31:40', 'https://goo.gl/maps/yeNua923mAbpnabK6', NULL, 'a:0:{}', '370210355727', '1987', 'Brick/Stucco', '12\'', 'Fluorescent', NULL, NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Power', 'Common Paved Parking', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.72158&lon=-81.34667&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFTTTTTT&pinc=370210355727', '1000', NULL, '784-4th-st-dr-sw', 'Lease Price: $1,000/mo', 'inactive', NULL),
(103, '15 2nd Ave NW', NULL, 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:11:\"residential\";}', NULL, '2633', 'DSC_0183.jpg', NULL, 'Great', NULL, 'C-1', 'Est.', NULL, NULL, NULL, '2020-10-14 23:43:27', '2021-06-14 21:41:02', 'https://goo.gl/maps/d2oJuxbihZn2gXWU9', NULL, 'a:0:{}', '370319600227', '1921', 'Wood Frame', '8\'-10\'', 'Misc.', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Power', 'Street Parking & adjoining lot', 'Hickory', 'NC', '28601', NULL, '1750', NULL, '15-2nd-avenue-nw', 'Lease Price: $1,750/mo', 'inactive', NULL),
(104, '1433 9th Ave SE', 'Office Space - approx. 2500+ sf', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '11200', '1433 9th Ave SE- Front View.JPG', NULL, 'Good', NULL, 'IND', 'Est.', NULL, NULL, NULL, '2020-10-15 19:36:24', '2021-04-05 10:31:11', 'https://goo.gl/maps/ben9P1HoJcSqJjLZ8', NULL, 'a:0:{}', '37120269937', '1989', 'Brick/Metal', '8\'-16\'7\"', 'Fluorescent', 'Ground Level and Delivery - 10\' doors', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Power', 'Paved parking', 'Hickory', 'NC', '28602', NULL, '4000', NULL, '1433-9th-ave-se', 'Lease Price: $4,000/mo', 'inactive', NULL),
(105, '1022 3rd Ave Dr NW', NULL, 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '3000', '1022-3rd-ave-dr-nw-1.jpg', NULL, 'Good', NULL, 'C-2', 'Est', NULL, NULL, NULL, '2020-11-17 02:10:48', '2021-10-05 21:04:51', 'https://goo.gl/maps/Tq2mwpaaoohK6UT49', NULL, 'a:3:{i:0;s:55:\"public/storage/images/gallery/1614021025163IMG_4936.jpg\";i:1;s:55:\"public/storage/images/gallery/1614021014485IMG_4933.jpg\";i:2;s:55:\"public/storage/images/gallery/1614021000905IMG_4934.jpg\";}', '370317113474', '1961, 1973', 'Metal, Brick, Concrete', '10\'', 'Fluorescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Common Parking', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=11&lat=35.73707&lon=-81.35435&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFTTTTTT&pinc=370317113474', '1500', NULL, '1022-3rd-avenue-drive-nw', 'Lease Price: $1,500.00/mo', 'leased', NULL),
(106, '1070 7th St Ct SE', 'This 7,500 square foot facility with 1,367 sf of office space and 6,133 sf of warehouse is beautifully maintained. It has private offices, restrooms, and paved parking for employees or customers. There are 10 drive in doors, perfect for someone distributing a fair amount of inventory. With its 10-12 foot ceilings, there is enough room for manufacturing and distribution with an on-site office space.', 'a:1:{i:0;s:5:\"lease\";}', 'a:3:{i:0;s:6:\"office\";i:1;s:10:\"industrial\";i:2;s:6:\"retail\";}', NULL, '7500', 'IMG_0745.JPG', NULL, 'Great', NULL, 'IND', '50\'x150\'', NULL, NULL, NULL, '2020-11-19 20:55:31', '2022-11-21 20:38:45', 'https://goo.gl/maps/LVX9E3dJjQBTwoS6A', NULL, 'a:11:{i:0;s:55:\"public/storage/images/gallery/1636648006113IMG_1650.JPG\";i:1;s:55:\"public/storage/images/gallery/1636648006838IMG_1649.JPG\";i:2;s:55:\"public/storage/images/gallery/1636648006997IMG_1648.JPG\";i:3;s:55:\"public/storage/images/gallery/1636648006691IMG_1647.JPG\";i:4;s:55:\"public/storage/images/gallery/1636648006862IMG_1646.JPG\";i:5;s:55:\"public/storage/images/gallery/1636648006522IMG_1645.JPG\";i:6;s:55:\"public/storage/images/gallery/1636648006504IMG_1643.JPG\";i:7;s:55:\"public/storage/images/gallery/1636648006256IMG_1641.JPG\";i:8;s:55:\"public/storage/images/gallery/1636648006145IMG_0746.JPG\";i:9;s:55:\"public/storage/images/gallery/1636648006601IMG_0745.JPG\";i:10;s:55:\"public/storage/images/gallery/1605801331227IMG_1648.JPG\";}', '370216947346', '2000', 'Metal', '10\'-12\'', 'Fluorescent', '10 Drive in Doors', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved common parking area', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.71808&lon=-81.32555&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFTTTTTT&pinc=370216947346', '3850', NULL, '1070-7th-st-court-se', 'Lease Price: $3,850.00/mo', 'sold', '1070-7th-st-ct-se-flyer1653053149.pdf'),
(107, '1033 17th St SW', 'The lower level unit of this building is available for lease! This space is a hot commodity with 4,800 sq/ft, 12\' ceilings, and a central location right near Highway 70 in Long View. There is approximately 650 square feet of office space in the lower level. Paved parking is available and is shared between tenants. There are two dock height doors on the side of the building as well.', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:10:\"industrial\";}', NULL, '4800', 'IMG_4930.jpg', NULL, 'Good', NULL, 'IND', '60\' X 80\'', '1033-17th-ave-st-sw', 'for rent, real estate, for sale, lease available, available, hickory real estate, commercial', NULL, '2020-11-24 00:04:27', '2022-04-13 18:18:55', 'https://goo.gl/maps/cgJVLkCC3r3VfiN59', NULL, 'a:20:{i:0;s:55:\"public/storage/images/gallery/1644432769701IMG_5760.jpg\";i:1;s:55:\"public/storage/images/gallery/1644432769974IMG_5761.jpg\";i:2;s:55:\"public/storage/images/gallery/1644432769703IMG_5762.jpg\";i:3;s:54:\"public/storage/images/gallery/164443276973IMG_5765.jpg\";i:4;s:55:\"public/storage/images/gallery/1644432769594IMG_5766.jpg\";i:5;s:55:\"public/storage/images/gallery/1644432769740IMG_5767.jpg\";i:6;s:55:\"public/storage/images/gallery/1644432769154IMG_5768.jpg\";i:7;s:64:\"public/storage/images/gallery/164443276930Main Listing Photo.jpg\";i:8;s:55:\"public/storage/images/gallery/1644432767174IMG_5760.jpg\";i:9;s:55:\"public/storage/images/gallery/1644432767570IMG_5761.jpg\";i:10;s:55:\"public/storage/images/gallery/1644432767377IMG_5762.jpg\";i:11;s:55:\"public/storage/images/gallery/1644432767907IMG_5765.jpg\";i:12;s:55:\"public/storage/images/gallery/1644432767227IMG_5766.jpg\";i:13;s:55:\"public/storage/images/gallery/1644432767805IMG_5767.jpg\";i:14;s:55:\"public/storage/images/gallery/1644432767873IMG_5768.jpg\";i:15;s:65:\"public/storage/images/gallery/1644432767614Main Listing Photo.jpg\";i:16;s:55:\"public/storage/images/gallery/1613416084142IMG_5761.jpg\";i:17;s:55:\"public/storage/images/gallery/1613416069709IMG_5762.jpg\";i:18;s:55:\"public/storage/images/gallery/1613416053700IMG_5768.jpg\";i:19;s:55:\"public/storage/images/gallery/1613416040497IMG_5766.jpg\";}', '279211659790', '1974', 'Brick/Stucco', '12\'', 'Fluorescent', '(2) Dock Height', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Parking', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=15&lat=35.7209&lon=-81.36868&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=279211659790', '2000', NULL, '1033-17th-st-sw', 'Lease Price: $2,000/mo', 'inactive', '1033-17th-st-flyer-1644440672.pdf'),
(108, '1651 1st Ave SW', NULL, 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '5000', 'IMG_2946.JPG', NULL, 'Good', NULL, 'C-2', 'Est.', NULL, NULL, NULL, '2020-12-04 00:01:38', '2021-04-05 10:29:31', 'https://goo.gl/maps/sqxnPckoyUyQQkibA', NULL, 'a:5:{i:0;s:54:\"public/storage/images/gallery/160985841492IMG_2950.JPG\";i:1;s:55:\"public/storage/images/gallery/1609858414168IMG_2955.JPG\";i:2;s:55:\"public/storage/images/gallery/1609858414103IMG_2957.JPG\";i:3;s:55:\"public/storage/images/gallery/1609858414704IMG_2958.JPG\";i:4;s:53:\"public/storage/images/gallery/1607022149958Aerial.jpg\";}', '279207784635', '1979', 'Brick/Stucco', '18\'', 'Fluorescent', '(2) Dock Height / (1) Ground Level', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Parking Area', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.72902&lon=-81.36735&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFTTTTTT&pinc=279207784635', '1600', NULL, '1651-1st-avenue-sw', 'Lease Price: $1,600.00/mo', 'inactive', NULL),
(109, '780 4th St Dr SW', NULL, 'a:1:{i:0;s:4:\"sale\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '4608', 'IMG_5030.jpg', NULL, 'Good', NULL, 'C-3', 'Est', NULL, NULL, NULL, '2020-12-04 01:16:11', '2021-04-13 17:14:39', 'https://goo.gl/maps/VgJG15AV5iA64zfo8', NULL, 'a:0:{}', '370210355727', '1987', 'Brick/Stucco', '12\'', 'Fluorescent', 'n/a', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Parking', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.72158&lon=-81.34667&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFTTTTTT&pinc=370210355727', '249000', NULL, '780-4th-st-dr-sw', 'Sale Price: $249,000.00', 'inactive', NULL),
(110, '2349 13th Ave SW', 'Trucking terminal with cross dock warehouse, repair garage and offices on 24+ acres off I-40 in Hickory, NC', 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '89048', 'Photo 37.jpg', '24.04', 'Good', NULL, 'ED & R-2', 'Est', '2349 13th Ave SW', NULL, NULL, '2020-12-04 01:36:08', '2021-04-29 17:44:07', 'https://goo.gl/maps/jt2C1Ms9e1cPjbX3A', NULL, 'a:5:{i:0;s:55:\"public/storage/images/gallery/1607027949523Photo 59.jpg\";i:1;s:55:\"public/storage/images/gallery/1607027917440Photo 12.jpg\";i:2;s:53:\"public/storage/images/gallery/160702789443Photo 9.jpg\";i:3;s:54:\"public/storage/images/gallery/1607027869421Photo 6.jpg\";i:4;s:54:\"public/storage/images/gallery/1607027846530Photo 1.jpg\";}', '279214330598', '1986', 'Brick/Metal', '8\'-16\'', 'Fluorescent', '(60) dock doors / (13) ground level', NULL, NULL, 'City of Longview', 'City of Longview', NULL, 'Duke Energy', 'Paved Parking', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=9&lat=35.71461&lon=-81.3816&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFTTTTTT&pinc=279214330598', '4299000', NULL, '2349-13th-ave-sw', 'Sale Price: $4,299,000.00', 'inactive', NULL),
(111, '2925 Nathan St', '450 sf of office space, 2 restrooms, spray booth, radiant heaters in rear, fenced yard.', 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '4578', 'IMG_2982.JPG', '2.29 Acres', 'Good', NULL, 'M-1', NULL, NULL, NULL, NULL, '2021-01-28 21:39:22', '2021-04-05 10:28:39', 'https://www.google.com/maps/place/2925+Nathan+St,+Newton,+NC+28658/@35.6945175,-81.2516576,92m/data=!3m1!1e3!4m5!3m4!1s0x885136ad50afc7f3:0xfd1600a012af514b!8m2!3d35.6944893!4d-81.251238', NULL, 'a:5:{i:0;s:55:\"public/storage/images/gallery/1611852395813IMG_2965.JPG\";i:1;s:55:\"public/storage/images/gallery/1611852182587IMG_2961.JPG\";i:2;s:55:\"public/storage/images/gallery/1611852094528IMG_2963.JPG\";i:3;s:55:\"public/storage/images/gallery/1611851962270IMG_2972.JPG\";i:4;s:55:\"public/storage/images/gallery/1611851962543IMG_2975.JPG\";}', '373109155277', '1978', 'Masonry', '14\'', 'Fluorescent', '8 Ground Level Doors', NULL, NULL, 'City of Newton', 'City of Newton', NULL, 'Duke Power', '15+', 'Newton', 'NC', '28658', 'https://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.69449&lon=-81.25125&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFTTFFFTFTFTFTTTTTT&pinc=373109155277', '290000', NULL, '2925-nathan-st', 'Asking Price $290,000', 'inactive', NULL),
(113, '200 Union Square', 'Beautiful, upper level office space on the Corner of Union Square/ 2nd St NW with lots of windows and great natural light.  Space consists of private offices, open area with half walls/work areas, conference room, break room, and bathrooms.  Updated in 2003 with custom finishes.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '1800', 'IMG_5543.v1.jpg', NULL, 'Great', NULL, 'C-1', '86\' X 24\'', NULL, NULL, NULL, '2021-02-02 19:44:37', '2021-11-03 21:57:18', 'https://goo.gl/maps/ddu1dHbmhQPg38929', NULL, 'a:4:{i:0;s:55:\"public/storage/images/gallery/1612277281231IMG_5523.jpg\";i:1;s:54:\"public/storage/images/gallery/161227719772IMG_5528.jpg\";i:2;s:55:\"public/storage/images/gallery/1612277142194IMG_5524.jpg\";i:3;s:55:\"public/storage/images/gallery/1612277129734IMG_5522.jpg\";}', '370207596753', '1900', 'Brick', '10\'', 'Fluorescent', 'N/A', NULL, NULL, 'Included in Price', 'Included in Price', NULL, 'Included in Price', 'City', 'Hickory', 'NC', '28601', NULL, '2000', NULL, '200-union-square', 'Lease Price: $2,000/mo. Utilities Included**', 'leased', '202-union-square1634225748.pdf'),
(127, '73 Falls Avenue', 'Vacant commercial building with good exposure off Highway 321! This classic brick building has approximately 5,100 square feet of usable space, several bathrooms, and each level has its own HVAC system. There are so many possibilities of what you could do with this great location!', 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '5100', 'IMG_5559.v1.jpg', '0.63', 'Great', NULL, 'B-4', NULL, '73-falls-avenue-granite-falls-nc', 'for rent, real estate, for sale, lease available, available, hickory real estate, commercial', NULL, '2021-02-10 20:12:45', '2022-04-26 21:21:17', 'https://www.google.com/maps/place/73+Falls+Ave,+Granite+Falls,+NC+28630/@35.8002056,-81.4220351,15z/data=!4m13!1m7!3m6!1s0x885125e6b241f0bb:0xb6cd5b2fe45509a7!2s73+Falls+Ave,+Granite+Falls,+NC+28630!3b1!8m2!3d35.8001118!4d-81.4221679!3m4!1s0x885125e6b241f0bb:0xb6cd5b2fe45509a7!8m2!3d35.8001118!4d-81.4221679', NULL, 'a:20:{i:0;s:52:\"public/storage/images/gallery/162263876770Aerial.png\";i:1;s:59:\"public/storage/images/gallery/1622638767644image001 (1).jpg\";i:2;s:59:\"public/storage/images/gallery/1622638767564image002 (3).jpg\";i:3;s:55:\"public/storage/images/gallery/1622638767663image003.jpg\";i:4;s:55:\"public/storage/images/gallery/1622638767343image004.jpg\";i:5;s:54:\"public/storage/images/gallery/162263876742image005.jpg\";i:6;s:55:\"public/storage/images/gallery/1622638767567image006.jpg\";i:7;s:55:\"public/storage/images/gallery/1622638767872IMG_5547.jpg\";i:8;s:55:\"public/storage/images/gallery/1622638767484IMG_5549.jpg\";i:9;s:55:\"public/storage/images/gallery/1622638767132IMG_5552.jpg\";i:10;s:54:\"public/storage/images/gallery/162263876753IMG_5555.jpg\";i:11;s:55:\"public/storage/images/gallery/1622638767362IMG_5559.jpg\";i:12;s:55:\"public/storage/images/gallery/1622638767432IMG_5567.jpg\";i:13;s:54:\"public/storage/images/gallery/1612969994401Capture.JPG\";i:14;s:55:\"public/storage/images/gallery/1612969994171IMG_5547.jpg\";i:15;s:55:\"public/storage/images/gallery/1612969994803IMG_5549.jpg\";i:16;s:55:\"public/storage/images/gallery/1612969994242IMG_5552.jpg\";i:17;s:55:\"public/storage/images/gallery/1612969994204IMG_5555.jpg\";i:18;s:54:\"public/storage/images/gallery/161296999431IMG_5559.jpg\";i:19;s:55:\"public/storage/images/gallery/1612969994823IMG_5570.jpg\";}', '2785148830', '1976', 'Brick', '9', 'Fluorescent', 'Loading Dock', NULL, NULL, NULL, NULL, NULL, NULL, 'Paved', 'Granite Falls', 'North Carolina', '28630', 'http://gis.caldwellcountync.org/maps/default.htm?pid=2785148830', '139900', NULL, '73-falls-avenue', 'Sale Price : $139,900 (Pending)', 'sold', 'revised-73-falls-ave1646401434.pdf'),
(128, '115 12th Street SW', 'Forget to grab breakfast on your way to work? That won\'t be a problem if you\'re working out of this space. It is outfitted with some incredible features including a kitchen, a wheelchair accessible ramp, and several bathrooms. The natural lighting in this 1,380 square foot brick office is unparalleled! Also equipped with hot air heat and central air conditioning, city water and sewer services, and a paved parking lot.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '1320', 'IMG_2695.jpg', '0.490', 'Great', NULL, 'C-2', '51 x 36', NULL, NULL, NULL, '2021-02-25 19:33:37', '2021-06-04 09:05:51', NULL, NULL, 'a:4:{i:0;s:55:\"public/storage/images/gallery/1614263709859IMG_2676.jpg\";i:1;s:55:\"public/storage/images/gallery/1614263617922IMG_2674.jpg\";i:2;s:55:\"public/storage/images/gallery/1614263617568IMG_2675.jpg\";i:3;s:55:\"public/storage/images/gallery/1614263617217IMG_2677.jpg\";}', '279208988709', '1931', 'Brick/Stucco', NULL, 'Flourescent', NULL, NULL, NULL, 'City', 'City', NULL, 'Duke', 'Paved', 'Hickory', 'NC', '28602', NULL, '850', NULL, '115-12th-street-sw', 'Lease Price: $850/mo', 'inactive', NULL),
(129, '1220 Commerce St SW, Suite H', 'Water and sewer is included for this 1,018 sf suite with an open floorplan and 10\' ceilings, making the space easily customizable. You will have your own private bathroom and storage room with this suite,  as well as paved parking. Call us today to discuss free rent with a long-term lease in Suite H!', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '1018', 'Suite H.jpg', NULL, 'Great', NULL, 'B-4', NULL, NULL, NULL, NULL, '2021-03-04 00:41:23', '2022-10-10 17:11:57', 'https://goo.gl/maps/oQ3njQp1mqLYt2jS9', NULL, 'a:3:{i:0;s:70:\"public/storage/images/gallery/16497917111581220-commerce-st-unit-h.jpg\";i:1;s:85:\"public/storage/images/gallery/1616598630632Floor Plan-1220 Commerce St SW Suite H.jpg\";i:2;s:85:\"public/storage/images/gallery/1616598397837Floor Plan-1220 Commerce St SW Suite H.pdf\";}', '373109060841', '1997', 'Brick', '10\'', 'Fluorescent', 'None', NULL, NULL, 'Included in Price', 'Included in Price', NULL, 'Duke Power', 'Private', 'Conover', 'NC', '28613', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.69864&lon=-81.25652&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFTTTTTT&pinc=373109060841', '850', NULL, '1220-commerce-st-sw', 'Lease Price: $850/mo', 'leased', '1220-commerce-st--suite-h1652819090.pdf'),
(130, '1220 Commerce St SW, Suite G', 'Suite G is available for lease at this Commerce Street SW complex! The 2,392 sf suite offers the perfect combination of private offices and open workspaces, as well as a kitchenette. The close proximity to US Highway 70, water & sewer included, and paved parking makes this spot hard to beat! Call today to discuss FREE RENT with a three year lease.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '2392', 'img-00791652818298.jpg', NULL, 'Great', NULL, 'B-4', NULL, '1220-commerce-st-sw-conover-nc-suite-g', 'sale, lease, highway, exposure, commercial, real estate, listing, available, hickory, nc', '1220-commerce-st-sw-conover-nc', '2021-03-04 00:59:03', '2022-06-29 18:12:31', 'https://goo.gl/maps/oQ3njQp1mqLYt2jS9', NULL, 'a:10:{i:0;s:66:\"public/storage/images/gallery/16528182983361220-commerce-st-sw.jpg\";i:1;s:55:\"public/storage/images/gallery/1652818298324IMG_0079.jpg\";i:2;s:55:\"public/storage/images/gallery/1652818298617IMG_0080.jpg\";i:3;s:55:\"public/storage/images/gallery/1652818298744IMG_0081.jpg\";i:4;s:54:\"public/storage/images/gallery/165281829881IMG_0082.jpg\";i:5;s:55:\"public/storage/images/gallery/1652818298445IMG_0083.jpg\";i:6;s:55:\"public/storage/images/gallery/1652818298693IMG_0084.jpg\";i:7;s:55:\"public/storage/images/gallery/1652818298693IMG_0085.jpg\";i:8;s:55:\"public/storage/images/gallery/1652818298847IMG_0086.jpg\";i:9;s:71:\"public/storage/images/gallery/16528182989661220 Commerce St-Suite G.jpg\";}', '373109060841', '1997', 'Brick', '10\'', 'Fluorescent', 'None', NULL, NULL, 'Included in Price', 'Included in Price', NULL, 'Duke Power', 'Private', 'Conover', 'NC', '28613', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.69864&lon=-81.25652&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFTTTTTT&pinc=373109060841', '1500', NULL, '1220-commerce-st-sw-suite-g', 'Lease Price: $1,500/mo.', 'leased', '1220-commerce--suite-g1652819058.pdf'),
(136, '1220 Commerce Street SW, Suite F', 'This 2,003 sf suite offers private offices and open workspaces. A great spot with water & sewer included and close to US Highway 70. Call us today to discuss free rent with a long-term lease!', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '2003', 'IMG_6152.v1.jpg', NULL, 'Great', NULL, 'B-4', NULL, '1220-commerce-st-sw-conover-nc-suite-f', 'sale, lease, highway, exposure, commercial, real estate, listing, available, hickory, nc', '1220-commerce-st-sw-conover-nc-suite-f', '2021-04-06 19:12:40', '2021-10-14 19:17:22', 'https://goo.gl/maps/C5nx8eFqpEw8QJ8XA', NULL, 'a:14:{i:0;s:55:\"public/storage/images/gallery/1617721960255IMG_6146.jpg\";i:1;s:55:\"public/storage/images/gallery/1617721960340IMG_6147.jpg\";i:2;s:55:\"public/storage/images/gallery/1617721960132IMG_6148.jpg\";i:3;s:55:\"public/storage/images/gallery/1617721960324IMG_6149.jpg\";i:4;s:55:\"public/storage/images/gallery/1617721960695IMG_6150.jpg\";i:5;s:54:\"public/storage/images/gallery/161772196030IMG_6151.jpg\";i:6;s:55:\"public/storage/images/gallery/1617721960605IMG_6152.jpg\";i:7;s:55:\"public/storage/images/gallery/1617721960816IMG_2444.JPG\";i:8;s:55:\"public/storage/images/gallery/1617721960379IMG_2445.JPG\";i:9;s:68:\"public/storage/images/gallery/16177219603981220-commerce-st-sw-1.jpg\";i:10;s:55:\"public/storage/images/gallery/1617721960274IMG_2437.JPG\";i:11;s:55:\"public/storage/images/gallery/1617721960423IMG_2440.JPG\";i:12;s:55:\"public/storage/images/gallery/1617721960969IMG_2441.JPG\";i:13;s:55:\"public/storage/images/gallery/1617721960855IMG_2443.JPG\";}', '373109060841', '1997', 'Brick', '10\'', 'Fluorescent', 'None', NULL, NULL, 'Included in price', 'Included in price', NULL, 'Duke Power', 'Private', 'Conover', 'NC', '28658', NULL, '1650.00', NULL, '1220-commerce-street', 'Lease Price: $1,650/mo', 'leased', '1220-commerce-st-flyer1634224642.pdf'),
(137, '1125 7th Ave NW (Lower Building 2)', '52,630 square foot warehouse with 10-16 foot ceilings located within walking distance of Downtown Hickory and the future City Walk is available for lease. This great brick construction has both private offices and open workspaces, a paved parking lot, as well as bathrooms, (4) four dock height doors, and (2) ground-level door. Need more room than this? The 26,000 square foot upper level of this building is available as well!', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '52292', 'Lower_Main.png', '3.360', 'Average', NULL, 'IND', '319 deep x 275 wide', NULL, NULL, NULL, '2021-04-27 22:52:09', '2021-12-17 21:32:43', '1125 7th Ave NW, Hickory, NC 28601', NULL, 'a:10:{i:0;s:55:\"public/storage/images/gallery/1619703804522IMG_6266.jpg\";i:1;s:55:\"public/storage/images/gallery/1619703738935IMG_6267.jpg\";i:2;s:48:\"public/storage/images/gallery/16195495294663.png\";i:3;s:48:\"public/storage/images/gallery/16195495299155.png\";i:4;s:63:\"public/storage/images/gallery/1619549529953Freight Elevator.png\";i:5;s:53:\"public/storage/images/gallery/161954952951lower 2.jpg\";i:6;s:54:\"public/storage/images/gallery/1619549529314lower 4.jpg\";i:7;s:63:\"public/storage/images/gallery/1619549529655Lower Dock Doors.png\";i:8;s:64:\"public/storage/images/gallery/1619549529953lower loading (2).jpg\";i:9;s:60:\"public/storage/images/gallery/1619549529415lower loading.jpg\";}', '279316936341', '1940', 'Brick/Stucco', '10-16\'', 'Flourescent', '(4) four dock height doors; (1) one ground level door', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Power', 'Paved', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.74172&lon=-81.36031&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=279316936341', '2.25', NULL, '1125-7th-ave-nw-building-2', 'Lease Price: $2.25/sf', 'leased', '1125-7th-ave-sw-lower-1636993607.pdf'),
(138, '1125 7th Ave NW (Upper Building 1)', 'The 26,000 square foot upper level of this building near Downtown Hickory is available for lease!  A good space with 10-16 foot ceilings that has both private offices and open work areas, as well as bathrooms and (3) three dock height doors.  Brick construction with a shared paved parking lot.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '26000', 'Upper from the Road.png', '3.360', 'Average', NULL, 'IND', NULL, NULL, NULL, NULL, '2021-04-27 23:09:31', '2022-02-21 18:26:51', '1125 7th Ave NW, Hickory, NC 28601', NULL, 'a:7:{i:0;s:71:\"public/storage/images/gallery/1619550571898Upper Wood Floor Storage.png\";i:1;s:62:\"public/storage/images/gallery/1619550571213Upper Warehouse.png\";i:2;s:59:\"public/storage/images/gallery/1619550571574Upper Office.png\";i:3;s:67:\"public/storage/images/gallery/16195505711000Upper Loading Docks.png\";i:4;s:66:\"public/storage/images/gallery/1619550571935Upper from the Road.png\";i:5;s:49:\"public/storage/images/gallery/161955057162811.png\";i:6;s:49:\"public/storage/images/gallery/161955057165910.png\";}', '279316936341', '1940', 'Brick/Stucco', '10-16\'', 'Flourescent', '(3) three dock height doors', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke', 'Paved', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.74172&lon=-81.36031&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=279316936341', '3.50', NULL, '1125-7th-ave-nw-building-1', 'Lease Price: $3.50/sf', 'leased', '1125-7th-ave-sw-upper-1639759025.pdf'),
(139, '780 4th St Dr SW', '1,504 sf suite with 12 foot ceilings, a large open room, office, restrooms. Located very close to US Highway 70 and within a few stop lights from the I-40 access ramp. Large, paved parking area that is shared between tenants. Zoned C-3 and water/sewer with the City of Hickory.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"retail\";}', NULL, '1504', 'IMG_7022.v1.jpg', '.40', 'Good', NULL, 'C-3', NULL, NULL, NULL, NULL, '2021-07-08 00:22:57', '2022-11-09 19:33:10', 'https://goo.gl/maps/Y2WtgqqwYS1JBtM16', NULL, 'a:4:{i:0;s:54:\"public/storage/images/gallery/162568971383IMG_5036.jpg\";i:1;s:55:\"public/storage/images/gallery/1625689467685IMG_6392.jpg\";i:2;s:55:\"public/storage/images/gallery/1625689394394IMG_6398.jpg\";i:3;s:55:\"public/storage/images/gallery/1625689377281IMG_6397.jpg\";}', '370210355727', '1987', 'Wood Frame/Brick', '10\'', 'Fluorescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Power', 'Shared Private Lot', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.72158&lon=-81.34667&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370210355727', '1000', NULL, '780-782-4th-st-dr-sw', 'Lease Price: $1,000/mo', 'leased', '780-4th-st-flyer1658513518.pdf'),
(145, '200 1st Ave NW- Suite 310', 'Suite 310 is available in the Wells Fargo Building downtown. The 560 square foot (672 rentable s.f.), newly renovated office suite has a reception area and two south facing offices with a view (see photos below)! This full-service building is in a fantastic location with views of Downtown Hickory and beyond, right in the heart of the square on First Avenue NW. There is a private parking lot*, street parking, and all-day parking with the city of Hickory. This location has central air conditioning and gas boiler heat, as well as a truck loading area on the bottom floor that is equipped with one ground-level door and a loading dock. \r\n\r\n*Private lot spaces only available to certain leased suites.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '672', 'suite-3101631824821.png', 'Various', 'Great', NULL, 'C-1', NULL, NULL, NULL, NULL, '2021-09-16 23:26:56', '2023-01-11 18:57:11', 'https://www.google.com/maps/place/200+1st+Ave+NW,+Hickory,+NC+28601,+USA/@35.733749,-81.3422161,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e2aabac1563:0x90ef8b4108da0089!8m2!3d35.733749!4d-81.3400274', NULL, 'a:8:{i:0;s:55:\"public/storage/images/gallery/1631824821567IMG_0912.jpg\";i:1;s:55:\"public/storage/images/gallery/1631824821514IMG_0913.jpg\";i:2;s:55:\"public/storage/images/gallery/1631824821116IMG_0914.jpg\";i:3;s:55:\"public/storage/images/gallery/1631824821709IMG_0915.jpg\";i:4;s:59:\"public/storage/images/gallery/1631824821228IMG_0916 (1).jpg\";i:5;s:61:\"public/storage/images/gallery/1631824821593Suite 310 (4) .jpg\";i:6;s:60:\"public/storage/images/gallery/1631824821823Suite 310 (5).jpg\";i:7;s:64:\"public/storage/images/gallery/1631824821593Suite 310- edited.jpg\";}', '370319505173', '1974', 'Block', '12\'', 'Fluorescent', '1 Ground Level', NULL, NULL, 'City of Hickory (included)', 'City of Hickory (included)', NULL, 'Duke Power (included)', 'Paved Lot/City Parking', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.73389&lon=-81.34009&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFTFTFTTTTTT&pinc=370319505173', '12', '15', '200-1st-ave-nw-suite-310', 'Lease Price- $12.00-$15.00/sq ft', 'inactive', '200-1st-ave-nw1634224141.pdf'),
(146, '200 1st Ave NW- Suite 404', 'Suite 404 is available in the downtown Wells Fargo Building. The north-facing 330 square foot space with a view could potentially be used for one office with a reception area or two separate offices. This full-service building is in a fantastic location with views of Downtown Hickory and beyond, right in the heart of the square on First Avenue NW. There is a private parking lot*, street parking, and all-day parking with the city of Hickory. This location has central air conditioning and gas boiler heat, as well as a truck loading area on the bottom floor that is equipped with one ground-level door and a loading dock. \r\n\r\nGive us a call for more information or to schedule a time to view this space, or others, at (828) 322-1723. \r\n\r\n*Private lot spaces only available to certain leased suites.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '330', 'suite-404-front-building1631887781.png', 'Various', 'Great', NULL, 'C-1', NULL, NULL, NULL, NULL, '2021-09-17 18:09:41', '2022-01-10 18:25:43', 'https://www.google.com/maps/place/200+1st+Ave+NW,+Hickory,+NC+28601,+USA/@35.733749,-81.3422161,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e2aabac1563:0x90ef8b4108da0089!8m2!3d35.733749!4d-81.3400274', NULL, 'a:7:{i:0;s:61:\"public/storage/images/gallery/1631887781173404-408Hallway.jpg\";i:1;s:55:\"public/storage/images/gallery/1631887781255IMG_0773.jpg\";i:2;s:55:\"public/storage/images/gallery/1631887781923IMG_0774.jpg\";i:3;s:55:\"public/storage/images/gallery/1631887781493IMG_0775.jpg\";i:4;s:55:\"public/storage/images/gallery/1631887781744IMG_0777.jpg\";i:5;s:55:\"public/storage/images/gallery/1631887781684IMG_0779.jpg\";i:6;s:55:\"public/storage/images/gallery/1631887781912IMG_0781.jpg\";}', '370319505173', '1974', 'Block', '12\'', 'Flourescent', '1 Ground Level Dock', NULL, NULL, 'City of Hickory (included)', 'City of Hickory (included)', NULL, 'Duke Power (included)', 'Paved Lot/City Parking', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73389&lon=-81.34009&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370319505173', '12', '15', '200-1st-ave-nw-suite-404', 'Lease Price- $12.00-$15.00/sq ft', 'leased', '200-1st-ave-nw1634224106.pdf'),
(147, '200 1st Ave NW- Suite 408', 'Suite 408 is available in the downtown Wells Fargo Building. The 925 square foot space (1,110- rentable s.f.) has four private offices including a vaulted room, and a reception area. This full-service building is in a fantastic location with views of Downtown Hickory and beyond, right in the heart of the square on First Avenue NW. There is a private parking lot*, street parking, and all-day parking with the city of Hickory. This location has central air conditioning and gas boiler heat, as well as a truck loading area on the bottom floor that is equipped with one ground-level door and a loading dock. \r\n\r\nGive us a call for more information or to schedule a time to view this space, or others, at (828) 322-1723. \r\n\r\n*Private lot spaces only available to certain leased suites.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '1110', 'suite-408-front-bldg1631888384.png', 'Various', 'Great', NULL, 'C-1', NULL, NULL, NULL, NULL, '2021-09-17 18:18:34', '2021-12-09 23:36:25', 'https://www.google.com/maps/place/200+1st+Ave+NW,+Hickory,+NC+28601,+USA/@35.733749,-81.3422161,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e2aabac1563:0x90ef8b4108da0089!8m2!3d35.733749!4d-81.3400274', NULL, 'a:8:{i:0;s:61:\"public/storage/images/gallery/1631888384182404-408Hallway.jpg\";i:1;s:55:\"public/storage/images/gallery/1631888384221IMG_0786.jpg\";i:2;s:55:\"public/storage/images/gallery/1631888384862IMG_0787.jpg\";i:3;s:55:\"public/storage/images/gallery/1631888384877IMG_0788.jpg\";i:4;s:55:\"public/storage/images/gallery/1631888384768IMG_0789.jpg\";i:5;s:55:\"public/storage/images/gallery/1631888384680IMG_0790.jpg\";i:6;s:55:\"public/storage/images/gallery/1631888384895IMG_0791.jpg\";i:7;s:55:\"public/storage/images/gallery/1631888384258IMG_0792.jpg\";}', '370319505173', '1974', 'Block', '12\'', 'Flourescent', '1 Ground Level Dock', NULL, NULL, 'City of Hickory (included)', 'City of Hickory (included)', NULL, 'Duke Power (included)', 'Paved Lot/City Parking', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73389&lon=-81.34009&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370319505173', '12', '15', '200-1st-ave-nw-suite-408', 'Lease Price- $12.00-$15.00/sq ft', 'leased', '200-1st-ave-nw1633706851.pdf'),
(148, '200 1st Ave NW, LLC- Suite 620', 'Suite 620 is available in the downtown Wells Fargo Building. The 400 square foot (480 rentable s.f.) suite has great potential! This full-service building is in a fantastic location with views of Downtown Hickory and beyond, right in the heart of the square on First Avenue NW. There is a private parking lot*, street parking, and all-day parking with the city of Hickory. This location has central air conditioning and gas boiler heat, as well as a truck loading area on the bottom floor that is equipped with one ground-level door and a loading dock. \r\n\r\nGive us a call for more information or to schedule a time to view this space, or others, at (828) 322-1723. \r\n\r\n*Private lot spaces only available to certain leased suites.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '480', 'suite-6201631890357.png', 'Various', 'Great', NULL, 'C-1', NULL, NULL, NULL, NULL, '2021-09-17 18:52:37', '2021-12-09 19:46:25', 'https://www.google.com/maps/place/200+1st+Ave+NW,+Hickory,+NC+28601,+USA/@35.733749,-81.3422161,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e2aabac1563:0x90ef8b4108da0089!8m2!3d35.733749!4d-81.3400274', NULL, 'a:3:{i:0;s:59:\"public/storage/images/gallery/1631890357398IMG_0795 (1).jpg\";i:1;s:59:\"public/storage/images/gallery/1631890357764IMG_0796 (1).jpg\";i:2;s:56:\"public/storage/images/gallery/1631890357276Suite 620.png\";}', '370319505173', '1974', 'Block', '12\'', 'Flourescent', '1 Ground Level Dock', NULL, NULL, 'City of Hickory (included)', 'City of Hickory (included)', NULL, 'Duke Power (included)', 'Paved Lot/Parking', 'Hickory', 'NC', '28601', NULL, '12', '15', '200-1st-ave-nw-llc-suite-620', 'Lease Price- $12.00-$15.00/sq ft', 'active', 'suite-620-property-flyer1639061185.pdf'),
(149, '1331 4th Street Dr- Suite C', 'As a building formerly used as office space, there are many options for lease. This suite is 1,800 square feet with 4 private offices and other open work-spaces. It is a full service building with central air, gas heat, paved parking, and is conveniently located close to I-40! Looking to buy? The asking price for sale is $1,490,000.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '1800', 'suite-c1632149517.png', 'Various', 'Great', NULL, 'OI (Office-Industrial)', 'Est. 206 x 63', NULL, NULL, NULL, '2021-09-20 18:20:09', '2022-03-10 19:02:38', 'https://www.google.com/maps/place/1331+4th+St+Dr+NW,+Hickory,+NC+28601,+USA/@35.74985,-81.3418293,17z/data=!3m1!4b1!4m5!3m4!1s0x88513027547d280d:0x9e912e9cdecb33ca!8m2!3d35.74985!4d-81.3396406', NULL, 'a:10:{i:0;s:73:\"public/storage/images/gallery/16337005543661331 4th St Dr- Front View.jpg\";i:1;s:70:\"public/storage/images/gallery/16337005542371331 4th St Dr- parking.jpg\";i:2;s:80:\"public/storage/images/gallery/16337005544611331 4th St Dr- Updated Floorplan.png\";i:3;s:58:\"public/storage/images/gallery/1633700554383Suite C (2).JPG\";i:4;s:54:\"public/storage/images/gallery/1633700554364Suite C.JPG\";i:5;s:54:\"public/storage/images/gallery/1633700554978Suite C.png\";i:6;s:73:\"public/storage/images/gallery/16321476092121331 4th St Dr- Front View.jpg\";i:7;s:70:\"public/storage/images/gallery/16321476099991331 4th St Dr- parking.jpg\";i:8;s:72:\"public/storage/images/gallery/16321476093871331 4th St Dr- Rear View.JPG\";i:9;s:80:\"public/storage/images/gallery/16321476094121331 4th St Dr- Updated Floorplan.png\";}', '370311558935', '1978', 'Brick', '9+', 'Flourescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Lot', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.7498&lon=-81.34013&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370311558935', '1300', '12400', '1331-4th-street-dr-suite-c', 'Lease Price - $12.00/sf - $14.00/sf (Full Service)', 'inactive', '1331-4th-street-dr-flyer1634224047.pdf'),
(150, '1331 4th St Dr- Suite E', 'As a building formerly used as office space, there are many options of various sized suites with 9+ foot ceilings available for lease. This suite is 2,200 square feet with five private offices, a conference room, kitchen, bathroom, and lobby. It is a full service building with central air, gas heat, paved parking, and is conveniently located close to I-40! \r\n\r\nLooking to buy? The asking price for sale is $1,490,000.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '1900', 'suite-e1632149415.png', 'Various', 'Great', NULL, 'OI (Office-Institutional)', 'Est. 206 x 63', NULL, NULL, NULL, '2021-09-20 18:32:08', '2022-03-10 19:02:28', 'https://www.google.com/maps/place/1331+4th+St+Dr+NW,+Hickory,+NC+28601,+USA/@35.74985,-81.3418293,17z/data=!3m1!4b1!4m5!3m4!1s0x88513027547d280d:0x9e912e9cdecb33ca!8m2!3d35.74985!4d-81.3396406', NULL, 'a:6:{i:0;s:70:\"public/storage/images/gallery/16321483288771331 4th ST DR NW STE E.jpg\";i:1;s:55:\"public/storage/images/gallery/1632148328455Suite E1.JPG\";i:2;s:55:\"public/storage/images/gallery/1632148328267Suite E3.JPG\";i:3;s:54:\"public/storage/images/gallery/163214832887Suite E4.JPG\";i:4;s:55:\"public/storage/images/gallery/1632148328878Suite E6.JPG\";i:5;s:55:\"public/storage/images/gallery/1632148328396Suite E7.JPG\";}', '370311558935', '1978', 'Brick', '9+', 'Flourescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Lot', 'Hickory', 'NC', '28601', NULL, '1300', '12400', '1331-4th-st-dr-suite-e', 'Lease Price- $14.00/sf (Full-Service)', 'inactive', '1331-4th-street-dr-flyer1633706775.pdf'),
(151, '1331 4th St- Lower Level', 'As a building formerly used as office space, there are many options for lease. There are suites available anywhere from 1,000-12,000 square feet in the lower level of this building. This is a full service building with central air, gas heat, paved parking, and is conveniently located close to I-40! Looking to buy? The asking price for sale is $1,490,000.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, NULL, 'lower-level1632149373.png', 'Various', 'Great', NULL, 'OI (Office-Institutional)', '263 x 63', NULL, NULL, NULL, '2021-09-20 18:49:33', '2022-03-10 19:02:18', 'As a building formerly used as office space, there are many options for lease. This suite is 1,800 square feet with 4 private offices and other open work-spaces. It is a full service building with central air, gas heat, paved parking, and is conveniently located close to I-40! Looking to buy? The asking price for sale is $1,490,000.', NULL, 'a:11:{i:0;s:70:\"public/storage/images/gallery/16321494961081331 4th St Dr- parking.jpg\";i:1;s:57:\"public/storage/images/gallery/1632149496103Basement 1.JPG\";i:2;s:57:\"public/storage/images/gallery/1632149496378Basement 2.JPG\";i:3;s:57:\"public/storage/images/gallery/1632149496951Basement 6.JPG\";i:4;s:70:\"public/storage/images/gallery/16321494793051331 4th St Dr- parking.jpg\";i:5;s:57:\"public/storage/images/gallery/1632149479115Basement 1.JPG\";i:6;s:57:\"public/storage/images/gallery/1632149479956Basement 2.JPG\";i:7;s:57:\"public/storage/images/gallery/1632149479335Basement 6.JPG\";i:8;s:57:\"public/storage/images/gallery/1632149373328Basement 1.JPG\";i:9;s:57:\"public/storage/images/gallery/1632149373265Basement 2.JPG\";i:10;s:57:\"public/storage/images/gallery/1632149373124Basement 6.JPG\";}', '370311558935', '1978', 'Brick', '9+', 'Flourescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved Parking', 'Hickory', 'NC', '28601', NULL, '12', '14', '1331-4th-st-lower-level', 'Lease Price- $12.00/sf (Full-Service)', 'inactive', '1331-4th-street-dr-flyer1633706712.pdf'),
(152, '117 Government Ave, SW', 'This landmark location with the \"Welcome to Hickory\" mural on the exterior wall of the lease space has great exposure in Downtown Hickory! There is public street and on-site parking available to tenants with approximately 5,200 sf on the upper level, and an additional 3,900 sf in the basement (if needed). The space was last used as a gym and has large restrooms, plus changing areas with shower facilities.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"retail\";}', NULL, '5200', 'img-76191632166799.jpg', '.25', 'Great', NULL, 'C-1', NULL, NULL, NULL, NULL, '2021-09-20 23:39:59', '2022-02-28 20:00:13', 'https://goo.gl/maps/aBsQMhubxMCNivJ16', NULL, 'a:7:{i:0;s:55:\"public/storage/images/gallery/1634223916239IMG_7620.jpg\";i:1;s:55:\"public/storage/images/gallery/1634223916360IMG_7621.jpg\";i:2;s:55:\"public/storage/images/gallery/1634223916199IMG_7622.jpg\";i:3;s:55:\"public/storage/images/gallery/1634223916999IMG_7623.jpg\";i:4;s:61:\"public/storage/images/gallery/1634223916954Welcome to hky.jpg\";i:5;s:55:\"public/storage/images/gallery/1632166799381IMG_7622.jpg\";i:6;s:55:\"public/storage/images/gallery/1632166799238IMG_7623.jpg\";}', '370207597195', '1959 and Updated in 2017', 'Brick', '12\'', 'LED', 'Ground Level into basement', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Power', 'Public and Private', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.73103&lon=-81.33937&layers=FFBFFFTFFFFFFFFFFFFTFFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370207597195', '4500', '4500', '117-government-ave-sw', 'Lease Price: $4,500/mo.', 'leased', '117-government-ave1636482802.pdf'),
(153, '2311 John Bowman Road', 'Available 10/2022!\r\n\r\nThis 4,052 square foot industrial property right off of Hwy 127 and on the corner of Grovewood Lane and John Bowman Road is the perfect place for someone looking to make a space their own. With good bones and two dock-height doors, there are many possibilities for what you could do with this location after some renovation. There are two private restroom stalls, a private office, central air conditioning, and gas heating.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '4052', '2311-john-bowman-rd-21633973138.jpg', '0.470', 'Good', NULL, 'R-1 (Commercial Use)', '70 x 80', NULL, NULL, NULL, '2021-10-11 21:25:38', '2022-12-05 18:20:27', 'https://goo.gl/maps/66hd8M5rCymPAEyP7', NULL, 'a:9:{i:0;s:68:\"public/storage/images/gallery/16339731384022311-john-bowman-rd-2.jpg\";i:1;s:55:\"public/storage/images/gallery/1633973138394IMG_1573.JPG\";i:2;s:55:\"public/storage/images/gallery/1633973138959IMG_1575.JPG\";i:3;s:55:\"public/storage/images/gallery/1633973138562IMG_1577.JPG\";i:4;s:55:\"public/storage/images/gallery/1633973138680IMG_1579.JPG\";i:5;s:55:\"public/storage/images/gallery/1633973138331IMG_1580.JPG\";i:6;s:55:\"public/storage/images/gallery/1633973138136IMG_1582.JPG\";i:7;s:55:\"public/storage/images/gallery/1633973138734IMG_1591.JPG\";i:8;s:55:\"public/storage/images/gallery/1633973138479IMG_1597.JPG\";}', '370110266177', '1965', 'Wood Frame/Concrete Block', '9', 'Flourescent', '(2) Two Dock-Height', NULL, NULL, 'Well Water', 'Septic System', NULL, 'Duke', 'Paved*', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.69514&lon=-81.34886&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370110266177', '1000', NULL, '2311-john-bowman-road', 'Lease Price: $1,000/month', 'inactive', '2311-john-bowman-rd1664288200.pdf'),
(154, '4589 Hickory Blvd', 'This 2.83 acre lot located on the corner of Hwy 321 and Glen Ridge Road near the Honda Motorcycle Dealership in Granite Falls has great exposure on Hickory Blvd. It also has access to public water and sewer through the Town of Granite Falls. It has been recently graded and is ready for highway business development! All plans and uses have to be approved and permitted with local municipalities, ask agent for more details.', 'a:2:{i:0;s:4:\"sale\";i:1;s:4:\"land\";}', 'a:1:{i:0;s:4:\"land\";}', NULL, NULL, 'img-77791634138415.jpg', '2.83', NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2021-10-13 19:20:15', '2021-10-14 17:42:15', 'https://goo.gl/maps/yptMUnEVKSzZmZV57', NULL, 'a:12:{i:0;s:55:\"public/storage/images/gallery/1634138415372IMG_7779.jpg\";i:1;s:55:\"public/storage/images/gallery/1634138415554IMG_7780.jpg\";i:2;s:55:\"public/storage/images/gallery/1634138415511IMG_7781.jpg\";i:3;s:55:\"public/storage/images/gallery/1634138415360IMG_7782.jpg\";i:4;s:55:\"public/storage/images/gallery/1634138415958IMG_7783.jpg\";i:5;s:55:\"public/storage/images/gallery/1634138415277IMG_7784.jpg\";i:6;s:54:\"public/storage/images/gallery/163413841546IMG_7785.jpg\";i:7;s:55:\"public/storage/images/gallery/1634138415696IMG_7786.jpg\";i:8;s:54:\"public/storage/images/gallery/163413841558IMG_7787.jpg\";i:9;s:55:\"public/storage/images/gallery/1634138415804IMG_7788.jpg\";i:10;s:55:\"public/storage/images/gallery/1634138415310IMG_7789.jpg\";i:11;s:55:\"public/storage/images/gallery/1634138415446IMG_7790.jpg\";}', '2784693391', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Town of Granite Falls*', 'Town of Granite Falls*', NULL, 'Town of Granite Falls*', NULL, 'Granite Falls', 'NC', '28630', NULL, '625000', NULL, '4589-hickory-blvd', 'Sale Price: $625,000', 'active', '4589-hickory-blvd-flyer1634218935.pdf');
INSERT INTO `properties` (`id`, `name`, `info`, `category`, `type`, `price`, `square`, `image`, `size`, `condition`, `construction`, `zoning`, `dimension`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`, `google_map`, `lookup_mls`, `gallery`, `pin`, `construction_date`, `construction_type`, `ceiling_height`, `lighting`, `truck_loading`, `rest_rooms`, `former_use`, `water`, `sewer`, `gas`, `power`, `parking`, `city`, `state`, `zip`, `google_gis`, `min_price`, `max_price`, `slug`, `price_per_sf`, `status`, `upload_flyer`) VALUES
(155, 'SOLD- 3387 S NC Hwy 127', 'This fantastic property located off NC Hwy 127 is currently completely outfitted as a performing arts studio, featuring suspended hardwood floors, an office with kitchenette, two restrooms, and multiple studios with handrails. It would make the perfect dance studio, church, charter school, martial arts gym, or many more possibilities with its high ceilings and versatile layout. There is paved parking with 30 spaces, a large lobby, central air conditioning and propane heat, plus storage space, and a large lawn for use.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '5200', 'front-of-bldg1634761346.jpg', '1.63', 'Fantastic', NULL, 'B', '100 ft wide x 50 ft deep', NULL, NULL, NULL, '2021-10-21 00:22:26', '2022-01-28 02:18:59', 'https://goo.gl/maps/a7wbgnu1wHbpUNqCA', NULL, 'a:26:{i:0;s:57:\"public/storage/images/gallery/1634761346338Front Door.jpg\";i:1;s:60:\"public/storage/images/gallery/1634761346105Front of Bldg.jpg\";i:2;s:54:\"public/storage/images/gallery/1634761346927Hallway.jpg\";i:3;s:51:\"public/storage/images/gallery/1634761346514Lawn.jpg\";i:4;s:56:\"public/storage/images/gallery/1634761346330Lobby (2).jpg\";i:5;s:52:\"public/storage/images/gallery/1634761346240Lobby.jpg\";i:6;s:69:\"public/storage/images/gallery/1634761346779Office-Kitchenette (2).jpg\";i:7;s:65:\"public/storage/images/gallery/1634761346656Office-Kitchenette.jpg\";i:8;s:54:\"public/storage/images/gallery/1634761346174Parking.jpg\";i:9;s:59:\"public/storage/images/gallery/1634761346821Parking-Lawn.jpg\";i:10;s:63:\"public/storage/images/gallery/1634761346888Photo Studio (2).jpg\";i:11;s:63:\"public/storage/images/gallery/1634761346727Photo Studio (3).jpg\";i:12;s:58:\"public/storage/images/gallery/163476134686Photo Studio.jpg\";i:13;s:65:\"public/storage/images/gallery/1634761346176Photography Studio.jpg\";i:14;s:55:\"public/storage/images/gallery/1634761346210Restroom.jpg\";i:15;s:65:\"public/storage/images/gallery/1634761346566Restroom-Lockeroom.jpg\";i:16;s:57:\"public/storage/images/gallery/1634761346366Studio (2).jpg\";i:17;s:55:\"public/storage/images/gallery/16347613461Studio (3).jpg\";i:18;s:63:\"public/storage/images/gallery/1634761346750Studio Three (2).jpg\";i:19;s:63:\"public/storage/images/gallery/1634761346527Studio Three (3).jpg\";i:20;s:59:\"public/storage/images/gallery/1634761346220Studio Three.jpg\";i:21;s:61:\"public/storage/images/gallery/1634761346328Studio Two (2).jpg\";i:22;s:61:\"public/storage/images/gallery/1634761346739Studio Two (3).jpg\";i:23;s:61:\"public/storage/images/gallery/1634761346845Studio Two (4).jpg\";i:24;s:56:\"public/storage/images/gallery/163476134610Studio Two.jpg\";i:25;s:53:\"public/storage/images/gallery/1634761346182Studio.jpg\";}', '279118300755', '2006', 'Brick/Metal', '16 feet', 'Flourescent', 'N/A', NULL, NULL, 'City of Hickory', 'Septic System', NULL, 'Duke', 'Paved, 30 Spaces', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.67964&lon=-81.38075&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=279118300755', '3500', NULL, '3387-s-nc-hwy-127', 'PENDING SALE- Lease Price: $3,500/month', 'sold', '3387-s-nc-hwy-127-flyer1634848414.pdf'),
(156, 'SOLD- 3387 S NC Hwy 127', 'This fantastic property located off NC Hwy 127 is currently completely outfitted as a performing arts studio, featuring suspended hardwood floors, an office with kitchenette, two restrooms, and multiple studios with handrails. It would make the perfect dance studio, church, charter school, martial arts gym, or much more! There are endless possibilities of what you could do here with its high ceilings and versatile layout. There is paved parking with 30 spaces, a large lobby, central air conditioning and propane heat, plus storage space, and a large lawn for use.', 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '5200', 'front-of-bldg1634762081.jpg', '1.63', 'Fantastic', NULL, 'B', '100ft wide x 50ft deep', NULL, NULL, NULL, '2021-10-21 00:34:41', '2022-02-17 18:38:09', 'https://goo.gl/maps/4yGY7QWr9Nfc4pge9', NULL, 'a:26:{i:0;s:57:\"public/storage/images/gallery/1634762081822Front Door.jpg\";i:1;s:60:\"public/storage/images/gallery/1634762081300Front of Bldg.jpg\";i:2;s:53:\"public/storage/images/gallery/163476208144Hallway.jpg\";i:3;s:51:\"public/storage/images/gallery/1634762081856Lawn.jpg\";i:4;s:56:\"public/storage/images/gallery/1634762081114Lobby (2).jpg\";i:5;s:52:\"public/storage/images/gallery/1634762081232Lobby.jpg\";i:6;s:69:\"public/storage/images/gallery/1634762081444Office-Kitchenette (2).jpg\";i:7;s:65:\"public/storage/images/gallery/1634762081996Office-Kitchenette.jpg\";i:8;s:54:\"public/storage/images/gallery/1634762081269Parking.jpg\";i:9;s:59:\"public/storage/images/gallery/1634762081853Parking-Lawn.jpg\";i:10;s:63:\"public/storage/images/gallery/1634762081216Photo Studio (2).jpg\";i:11;s:63:\"public/storage/images/gallery/1634762081475Photo Studio (3).jpg\";i:12;s:59:\"public/storage/images/gallery/1634762081213Photo Studio.jpg\";i:13;s:65:\"public/storage/images/gallery/1634762081438Photography Studio.jpg\";i:14;s:54:\"public/storage/images/gallery/163476208195Restroom.jpg\";i:15;s:65:\"public/storage/images/gallery/1634762081387Restroom-Lockeroom.jpg\";i:16;s:57:\"public/storage/images/gallery/1634762081232Studio (2).jpg\";i:17;s:57:\"public/storage/images/gallery/1634762081298Studio (3).jpg\";i:18;s:63:\"public/storage/images/gallery/1634762081422Studio Three (2).jpg\";i:19;s:63:\"public/storage/images/gallery/1634762081141Studio Three (3).jpg\";i:20;s:59:\"public/storage/images/gallery/1634762081343Studio Three.jpg\";i:21;s:61:\"public/storage/images/gallery/1634762081479Studio Two (2).jpg\";i:22;s:61:\"public/storage/images/gallery/1634762081826Studio Two (3).jpg\";i:23;s:61:\"public/storage/images/gallery/1634762081670Studio Two (4).jpg\";i:24;s:57:\"public/storage/images/gallery/1634762081348Studio Two.jpg\";i:25;s:53:\"public/storage/images/gallery/1634762081523Studio.jpg\";}', '279118300755', '2006', 'Brick/Metal', '16 feet', 'Flourescent', 'N/A', NULL, NULL, 'City of Hickory', 'Septic System', NULL, 'Duke', 'Paved Parking with 30 spaces', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.67964&lon=-81.38075&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=279118300755', '499900', NULL, '3387-s-nc-hwy-127-1', 'SOLD', 'sold', '3387-s-nc-hwy-127-flyer1634848364.pdf'),
(157, '269 2nd Ave SE', 'This approx. 1,000 sf space has a large open workspace, plus a private office and restroom, offering great exposure on 2nd Avenue, seconds from Downtown Hickory. A great spot with high visibility in an outdoor complex with close proximity to many of the great amenities Downtown Hickory has to offer.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '1025', 'front-view1636491041.jpg', NULL, 'Good', NULL, 'C-2', 'Est 40 x 26', NULL, NULL, NULL, '2021-11-10 01:50:41', '2022-03-01 20:12:52', 'https://goo.gl/maps/oLnjrjokPMySrVRS9', NULL, 'a:4:{i:0;s:63:\"public/storage/images/gallery/1636491041422269-2nd-ave-se-1.jpg\";i:1;s:55:\"public/storage/images/gallery/1636491041242IMG_2393.JPG\";i:2;s:55:\"public/storage/images/gallery/1636491041885IMG_2394.JPG\";i:3;s:55:\"public/storage/images/gallery/1636491041192IMG_2396.JPG\";}', '370208787712', '1982', 'Brick', '9\'', 'Flourescent', 'Common Platform', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Power', 'Paved Common Parking', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73003&lon=-81.33278&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370208787712', '750', NULL, '269-2nd-ave-se', 'Lease Price: $750.00/month', 'leased', '269-2nd-ave-se-flyer1640179586.pdf'),
(158, '4233 US Hwy 321-A', 'This manufacturing warehouse in Granite Falls is currently up for lease, with roughly 21,000 square feet in the middle portion available. It is not move-in ready, as this space still needs improvements before it would be ready for a tenant. With the building\'s 7 dock doors and 4 ground level doors, you could manufacture and distribute a hefty load. There is radiant heating, paved parking, and ample warehouse space.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '21000', 'img-07351636645573.jpg', '19.43 AC', 'Good', NULL, 'IND', '60 x 300', NULL, NULL, NULL, '2021-11-11 20:46:13', '2022-04-12 19:26:46', 'https://goo.gl/maps/XsxKiD3VYWEP8jNr5', NULL, 'a:3:{i:0;s:55:\"public/storage/images/gallery/1636645573106IMG_0735.jpg\";i:1;s:55:\"public/storage/images/gallery/1636645573475IMG_0736.jpg\";i:2;s:55:\"public/storage/images/gallery/1636645573676IMG_0737.jpg\";}', '27668018567', '1987', 'Brick Masonry', '12', 'LED', '(7) Dock-Height; (4) Ground Level', NULL, NULL, 'Saw Mills', 'Saw Mills', NULL, 'Duke Power', 'Paved', 'Sawmills', 'NC', '28630', NULL, '5000', NULL, '4233-us-hwy-321-a', 'Lease Price: $5,000/month', 'inactive', '4233-us-hwy-321-flyer1636661011.pdf'),
(159, '200 1st Ave NW Suite 617', 'This fantastic 1,139 sf space (1,366 rentable sf) with four private offices and a large open work area will is available in the Wells Fargo building in Downtown Hickory. Three of the offices have large east-facing windows, bringing natural light to the office. The full-service building provides restrooms for tenants and customers, as well as conference room booking and access to drive in door on the basement level. Take advantage of this space while you can!', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '1139', 'suite-6171637763031.png', '1.63', 'Fantastic', NULL, 'C-1', NULL, NULL, NULL, NULL, '2021-11-24 19:10:31', '2021-12-09 19:45:15', 'https://www.google.com/maps/place/200+1st+Ave+NW,+Hickory,+NC+28601,+USA/@35.733749,-81.3422161,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e2aabac1563:0x90ef8b4108da0089!8m2!3d35.733749!4d-81.3400274', NULL, 'a:9:{i:0;s:57:\"public/storage/images/gallery/1639059562841Break Room.png\";i:1;s:62:\"public/storage/images/gallery/1639059562509Conference Room.png\";i:2;s:64:\"public/storage/images/gallery/1639059562636Electrical Closet.png\";i:3;s:58:\"public/storage/images/gallery/1639059562748Left Office.png\";i:4;s:56:\"public/storage/images/gallery/1639059562333Main Room.png\";i:5;s:60:\"public/storage/images/gallery/1639059562213Middle Office.png\";i:6;s:58:\"public/storage/images/gallery/163905956287Right Office.png\";i:7;s:58:\"public/storage/images/gallery/1639059562596Suite Entry.png\";i:8;s:62:\"public/storage/images/gallery/1637763031617Conference Room.jpg\";}', '370319505173', '1974', 'Block', '12', 'Flourescent', '1 Ground Level', NULL, NULL, 'Included', 'Included', NULL, 'Included', 'Paved Lot', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73389&lon=-81.34009&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370319505173', NULL, NULL, '200-1st-ave-nw-suite-617', 'Lease Price: $15/sf', 'active', '617-property-flyer1639061114.pdf'),
(160, '123 W 23rd St', 'This 5,080 square foot industrial warehouse with 12 foot ceilings and a dock door is available for lease now. There is one bathroom and one office on the back side of the building, leaving a large open space for storage and/or shelving. The building is a wood frame with concrete block walls (cold storage building). It is zoned R-9, but designated industrial per the City of Newton. Landlord will pay for grounds maintenance with the asking price of $1,250/mo.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '5080', 'img-07791639773370.jpg', '.49', 'Great', NULL, 'R-9/Industrial Use Permitted', '127x40', NULL, NULL, NULL, '2021-12-09 01:03:03', '2022-06-22 23:35:18', 'https://goo.gl/maps/J4Np4uKMrLru4kat7', NULL, 'a:5:{i:0;s:55:\"public/storage/images/gallery/1638993783804IMG_0779.jpg\";i:1;s:55:\"public/storage/images/gallery/1638993783154IMG_0780.jpg\";i:2;s:55:\"public/storage/images/gallery/1638993783401IMG_0781.jpg\";i:3;s:54:\"public/storage/images/gallery/163899378354IMG_0782.jpg\";i:4;s:55:\"public/storage/images/gallery/1638993783596IMG_0783.jpg\";}', 'PIN #374117016737', '1940', 'Wood Frame/Block', '12', 'Flourescent', '1 Dock Door', NULL, NULL, 'City of Newton', 'City of Newton', NULL, 'City of Newton', 'Gravel/Grass', 'Newton', 'NC', '28658', NULL, '1250', '1250', '123-w-23rd-st', 'Lease Price: $1,250/mo', 'leased', '123-w-23rd-st1639773390.pdf'),
(161, '200 First Ave NW, Suite 623', 'This 1,406 square foot space with South facing windows has five private offices (four with windows) and a reception area that could be used as working office space. Situated right in the heart of Downtown Hickory, a block away from Union Square. With quick access to many great businesses and restaurants, this building is in a prime location. As a full-service building, tenants are left with minimal responsibility, making this spot that much greater!', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '1406', 'suite-6231639060153.png', '1.63', 'Fantastic', NULL, 'C-1', NULL, NULL, NULL, NULL, '2021-12-09 19:29:13', '2021-12-13 20:22:10', 'https://www.google.com/maps/place/200+1st+Ave+NW,+Hickory,+NC+28601,+USA/@35.733749,-81.3422161,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e2aabac1563:0x90ef8b4108da0089!8m2!3d35.733749!4d-81.3400274', NULL, 'a:8:{i:0;s:57:\"public/storage/images/gallery/1639060153806Break Room.png\";i:1;s:58:\"public/storage/images/gallery/1639060153183Left Office.png\";i:2;s:62:\"public/storage/images/gallery/163906015310Middle Office #2.png\";i:3;s:60:\"public/storage/images/gallery/1639060153281Middle Office.png\";i:4;s:56:\"public/storage/images/gallery/1639060153699Reception.png\";i:5;s:58:\"public/storage/images/gallery/163906015316Right Office.png\";i:6;s:71:\"public/storage/images/gallery/1639060153278Suite Entrance-Reception.png\";i:7;s:62:\"public/storage/images/gallery/1639060153981Conference Room.png\";}', '370319505173', '1974', 'Block', '12', 'Flourescent', '1 Ground Level', NULL, NULL, 'Included', 'Included', NULL, 'Included', 'Paved Lot', 'Hickory', 'NC', '28601', NULL, NULL, NULL, '200-first-ave-nw-suite-623', 'Lease Price: $12-15/sf', 'active', '623-property-flyer1639060153.pdf'),
(162, '806 12th Street SW', 'This 3,300 square foot office building in Hickory is available for lease at $2,500/month. It has a large open area as you enter, 9 large rooms/offices, several closets, and two restrooms, all with 10 foot ceilings. Located right off of Highway 70, close proximity to many restaurants and Highway 321, this is in a great location! The space is equipped with HVAC upstairs and has an additional 1,155 square feet in the unfinished basement that would be great for storage.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '3300', '806-12th-st-sw--11639493193.jpg', '0.52', 'Great', NULL, 'C-2', '30x110', NULL, NULL, NULL, '2021-12-14 19:46:33', '2023-01-06 00:43:24', 'https://goo.gl/maps/j7Ke8etGcdYRzXcN6', NULL, 'a:4:{i:0;s:55:\"public/storage/images/gallery/1639493193675IMG_3602.jpg\";i:1;s:55:\"public/storage/images/gallery/1639493193197IMG_3603.jpg\";i:2;s:55:\"public/storage/images/gallery/1639493193914IMG_3604.jpg\";i:3;s:55:\"public/storage/images/gallery/1639493193868IMG_3606.jpg\";}', '279212961590', '1979', 'Brick', '10', 'Flourescent', 'N/A', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke', 'Paved Lot', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=15&lat=35.72322&lon=-81.36115&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=279212961590', '2500', '2500', '806-12th-street-sw', 'For Lease: $2,500/mo', 'inactive', '806-12th-st-sw-flyer1639500182.pdf'),
(163, '200 1st Ave NW, Suite 615', 'This roughly 300 square foot (360 rentable s.f.) suite is available in the Wells Fargo building in Downtown Hickory. This full-service building is in a fantastic location, right in the heart of the square on First Avenue NW. There is a private parking lot*, street parking, and all-day parking with the city of Hickory. This location has central air conditioning and gas boiler heat, as well as a truck loading area on the bottom floor that is equipped with one ground-level door and a loading dock. *Private lot spaces only available to certain leased suites.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '360', 'suitr-6151641842760.png', '2.63', 'Great', NULL, 'C-1', '14x21', NULL, NULL, NULL, '2022-01-11 00:26:00', '2022-01-11 00:26:00', 'https://goo.gl/maps/7vkmD8T9eYHCi6jW8', NULL, 'a:3:{i:0;s:50:\"public/storage/images/gallery/1641842760937615.jpg\";i:1;s:61:\"public/storage/images/gallery/164184276059Conference Room.png\";i:2;s:56:\"public/storage/images/gallery/1641842760124Suitr 615.png\";}', '370319505173', '1974', 'Brick/Concrete', '12', 'Flourescent', '(1) Basement Ground Level', NULL, NULL, 'Included', 'Included', NULL, 'Included', 'Street/Private', 'Hickory', 'NC', '28601', NULL, '15', '15', '200-1st-ave-nw-suite-615', 'Lease Price: $15/sf', 'active', 'suite-615-flyer1641842760.pdf'),
(164, '1203 Farrington Street SW', 'The upper level with 20,800 square feet of this warehouse/manufacturing location is available in Hickory. With three dock-height doors, paved parking, and 14 ft ceilings, this is a fantastic spot. The brick/stucco building is in great condition and would be a great spot for warehouse manufacturing.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '20800', 'view-11641849116.jpg', '1.26', 'Great', NULL, 'WRHS', NULL, NULL, NULL, NULL, '2022-01-11 02:11:56', '2022-03-11 00:34:59', 'https://goo.gl/maps/JGi7jYNqTGs2Wvag9', NULL, 'a:6:{i:0;s:55:\"public/storage/images/gallery/1641849116170IMG_1358.JPG\";i:1;s:55:\"public/storage/images/gallery/1641849116289IMG_1359.JPG\";i:2;s:55:\"public/storage/images/gallery/1641849116486IMG_1361.JPG\";i:3;s:55:\"public/storage/images/gallery/1641849116619IMG_1362.JPG\";i:4;s:55:\"public/storage/images/gallery/1641849116398IMG_1365.JPG\";i:5;s:53:\"public/storage/images/gallery/1641849116983View 1.jpg\";}', '373214335930', '1973', 'Brick/Stucco', '14', 'Flourescent', '(3) Dock Height', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke', 'Paved', 'Conover', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.71835&lon=-81.24543&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=373214335930', '4500', '4500', '1203-farrington-street-sw', 'Lease Price: $4,500/mo', 'leased', '1203-farrington-st-flyer-revised-1646072138.pdf'),
(165, '66 US Hwy 321', '48,440 Square Foot Warehouse on Highway 321 is available for lease! This location is equipped with thirteen (13) ground level doors and three (3) dock height doors, plus paved parking. There is an office space within the warehouse, including restrooms. With hot water heating, fluorescent lighting, and ceiling heights ranging from 12-20 ft, there is versatility.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '48440', 'attachment1641910359.jpg', '1.83', 'Great', NULL, 'WRHS', NULL, NULL, NULL, NULL, '2022-01-11 19:12:39', '2022-01-26 02:16:11', 'https://goo.gl/maps/D2ZjVAqtdEsmm6ye8', NULL, 'a:9:{i:0;s:67:\"public/storage/images/gallery/164191035912466 Hwy 321 NW- Front.JPG\";i:1;s:70:\"public/storage/images/gallery/164191035941966 Hwy 321 NW- Interior.jpg\";i:2;s:61:\"public/storage/images/gallery/1641910359144attachment (1).jpg\";i:3;s:61:\"public/storage/images/gallery/1641910359868attachment (2).jpg\";i:4;s:52:\"public/storage/images/gallery/1641910359569Front.JPG\";i:5;s:55:\"public/storage/images/gallery/1641910359915IMG_0326.JPG\";i:6;s:54:\"public/storage/images/gallery/164191035915IMG_0328.JPG\";i:7;s:55:\"public/storage/images/gallery/1641910359249IMG_0329.JPG\";i:8;s:52:\"public/storage/images/gallery/1641910359731pic 1.jpg\";}', 'PIN #279208893899', '1964', 'Wood Frame/Brick', '12-20 ft', 'Fluorescent', '(3) dock height; (13) ground level', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke', 'Paved', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.73253&lon=-81.36431&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=279208893899', '12100', NULL, '66-us-hwy-321', 'Lease Price: $3/sf', 'leased', '66-hwy-321-flyer1641914585.pdf'),
(166, '1903 12th Ave NE', 'This property has recently been recombined and will now just include .53 acres and approx. 6,200 sf for sale which could be utilized as up to five separately metered rental units or combined. Or, lease the left unit (2,700 sf) or far right suite (~1,200 sf)! Great exposure on Springs Road near many other businesses. 14,500 annual average daily traffic count. Needs a new owner to make it their own!', 'a:2:{i:0;s:5:\"lease\";i:1;s:4:\"sale\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '6200', 'exterior-photo-2-1643385280.jpg', '0.53', 'Good', NULL, 'C-2', NULL, NULL, NULL, NULL, '2022-01-28 20:54:40', '2022-09-08 20:06:43', 'https://goo.gl/maps/8Y7vWS8ycFfKnNs8A', NULL, 'a:5:{i:0;s:68:\"public/storage/images/gallery/1643385280705Aerial Photo for 1903.jpg\";i:1;s:68:\"public/storage/images/gallery/1643385280193Aerial Photo for 1915.jpg\";i:2;s:65:\"public/storage/images/gallery/1643385280782Exterior Photo (2).jpg\";i:3;s:61:\"public/storage/images/gallery/1643385280188Exterior Photo.jpg\";i:4;s:60:\"public/storage/images/gallery/164338528096Interior Photo.jpg\";}', 'Ref. Lot 1 on Plat book/pg 84/154', '1970/1984', 'Brick/Stucco', '10-11ft', 'Flourescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Paved', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.74324&lon=-81.30065&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=371315733364', '9.50', '399000', '1903-1915-12th-ave-ne', 'Lease Price: $9.50/sf | Sale Price : $399,000', 'active', '1903-12th-ave--updated-8-20221661882061.pdf'),
(167, '1814 US Hwy 70', 'This location is conveniently located within minutes of US Hwy 321 and has close proximity to I-40. There are two warehouse areas, one 1,250 sf and the other 10,100 sf, plus two office spaces (2,500 sf & 2,050 sf) that are equipped with hot water heating and central air conditioning.', 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '15900', 'front-of-building1643637196.JPG', '1.36', 'Good', NULL, 'C2', NULL, NULL, NULL, NULL, '2022-01-31 18:53:16', '2022-12-06 00:02:36', 'https://goo.gl/maps/PdQfLRxKcFD63QLR8', NULL, 'a:3:{i:0;s:64:\"public/storage/images/gallery/1643637196169Front of building.JPG\";i:1;s:67:\"public/storage/images/gallery/1643637196932Side of building (2).JPG\";i:2;s:63:\"public/storage/images/gallery/1643637196346Side of building.JPG\";}', '279211663456', '1950', 'Brick/Stucco', '12ft', 'Flourescent', '2 (Ground Level)', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke', 'Paved', 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.72306&lon=-81.37091&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=279211663456', '399000', NULL, '1814-us-hwy-70', 'PENDING- Sale Price: $399,000', 'sold', '1814-us-hwy-70-flyer--399-0001658511990.pdf'),
(168, '200 1st Ave NW, Suite 318', 'This 120 (144 sf rentable) square foot space is available in the Wells Fargo Building in Downtown Hickory. There is a conference room shared among all tenants available for booking on the 5th floor. The central location, and full-service building make for a great find!', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '144', '3181644247048.png', NULL, 'Great', NULL, 'C-1', '10x12', NULL, NULL, NULL, '2022-02-07 20:17:28', '2022-02-07 20:18:27', 'https://goo.gl/maps/mvuReaHehMr9DFUQ7', NULL, 'a:2:{i:0;s:73:\"public/storage/images/gallery/1644247107118200 1st Ave NW- Front View.jpg\";i:1;s:62:\"public/storage/images/gallery/1644247107365Conference Room.png\";}', '370319505173', '1974', 'Block', '12ft', 'Flourescent', '(1) Ground level', NULL, NULL, 'Included', 'Included', NULL, 'Included', 'Paved/Street', 'Hickory', 'NC', '28601', NULL, '13', NULL, '200-1st-ave-nw-suite-318', 'Lease Price: $13-$15/sf', 'active', '200-1st-ave-nw1644247107.pdf'),
(169, '1635 11th Ave SW', 'The upper (and lower level) of this two unit building is available to lease. There is 4,800 square feet available on each level, 12 ft ceilings, central heating, and two dock doors (two upper and two lower). Paved parking is available and shared between tenants. \r\n\r\n*Lower level available separately (see listing for 1033 17th St SW)', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:10:\"industrial\";}', NULL, '4800', 'main-listing-photo1645122592.jpg', '.420', 'Good', NULL, 'IND', '60 deep x 80 wide', NULL, NULL, NULL, '2022-02-17 23:29:52', '2022-03-22 00:27:27', 'https://goo.gl/maps/ZR5NiDkz7BCw7L2E8', NULL, 'a:5:{i:0;s:55:\"public/storage/images/gallery/1645122592202IMG_1348.jpg\";i:1;s:55:\"public/storage/images/gallery/1645122592575IMG_1349.jpg\";i:2;s:55:\"public/storage/images/gallery/1645122592386IMG_1351.jpg\";i:3;s:55:\"public/storage/images/gallery/1645122592903IMG_1352.jpg\";i:4;s:55:\"public/storage/images/gallery/1645122592268IMG_4927.jpg\";}', '279211659790', '1974', 'Brick/Stucco', '12', 'Flourescent', '(2) dock height doors (two upper, two lower*)', NULL, NULL, 'Included', 'Included', NULL, 'Duke', 'Paved', 'Hickory', 'NC', '28602', NULL, '2000', '4000', '1635-11th-ave-sw', 'Lease Price: $2,000/mo', 'leased', '1635-11th-ave-sw1645125948.pdf'),
(170, '39 2nd St NW', 'This stunning building located in Downtown Hickory on the corner of 1st Ave and 2nd St NW is available for sale. The 23,065 square foot building has 10-26\' foot ceilings, multiple offices, a full kitchen, gorgeous large windows, and ample storage space on the lower level. Located in the new Downtown Social District. Brand New Roof installed in 2021.. City parking is available right near the building and is extremely close to many great businesses on Union Square.\r\nTake a deeper look into the building by viewing the video link below:\r\nhttps://youtu.be/AdFWzW_FLQU', 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '23065', 'img-92501647438228.jpg', '.21', 'Excellent', NULL, 'C1', '125 x 75', NULL, NULL, NULL, '2022-03-16 17:43:48', '2022-11-18 19:03:38', 'https://goo.gl/maps/XGFgnjNSWWmeCCfUA', NULL, 'a:11:{i:0;s:55:\"public/storage/images/gallery/1647438228397IMG_9218.jpg\";i:1;s:55:\"public/storage/images/gallery/1647438228389IMG_9221.jpg\";i:2;s:55:\"public/storage/images/gallery/1647438228167IMG_9223.jpg\";i:3;s:55:\"public/storage/images/gallery/1647438228674IMG_9224.jpg\";i:4;s:55:\"public/storage/images/gallery/1647438228413IMG_9226.jpg\";i:5;s:55:\"public/storage/images/gallery/1647438228615IMG_9229.jpg\";i:6;s:55:\"public/storage/images/gallery/1647438228975IMG_9231.jpg\";i:7;s:54:\"public/storage/images/gallery/164743822861IMG_9232.jpg\";i:8;s:55:\"public/storage/images/gallery/1647438228200IMG_9245.jpg\";i:9;s:55:\"public/storage/images/gallery/1647438228232IMG_9250.jpg\";i:10;s:51:\"public/storage/images/gallery/1647438228149roof.jpg\";}', '370207596914', '1941', 'Brick', '10-26\'', 'Flourescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'City of Hickory', 'City Parking', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=15&lat=35.73316&lon=-81.33996&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370207596914', '985000', NULL, '39-2nd-st-nw', 'Sale Price: $985,000', 'active', 'property-flyer---price-reduction1668780218.pdf'),
(172, 'SOLD- 246, 248, 252 Union Square', 'Fantastic location in the heart of Downtown Hickory on Union Square. 3 parcels sold together with a total of 29,734 estimated sf. The properties consist of residential (4x units), commercial office, and retail space.  Currently fully leased! Ask to speak with the listing agent for specific financial details.', 'a:1:{i:0;s:4:\"sale\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, NULL, 'main-listing-photo--edited-shoppes-on-sq-jpg1649703252.png', '.24', 'Good', NULL, 'C-1', NULL, NULL, NULL, NULL, '2022-04-01 23:09:49', '2022-09-12 18:31:12', 'https://goo.gl/maps/o3xBjceLPf96uKG57', NULL, 'a:8:{i:0;s:73:\"public/storage/images/gallery/1649703252444Back of Building- Entrance.jpg\";i:1;s:79:\"public/storage/images/gallery/1649703252819Interior Store Front on Union Sq.jpg\";i:2;s:62:\"public/storage/images/gallery/1649703252207Outdoor Seating.jpg\";i:3;s:78:\"public/storage/images/gallery/1649703252409Shoppes on the Square- Close Up.jpg\";i:4;s:68:\"public/storage/images/gallery/1649703252446Shoppes on the Square.jpg\";i:5;s:67:\"public/storage/images/gallery/1649703252724Store Front Close up.jpg\";i:6;s:74:\"public/storage/images/gallery/1649703252110Store Front on Union Sq (2).jpg\";i:7;s:68:\"public/storage/images/gallery/1649703252975Store Front Union Sq..jpg\";}', '370207591755; 370207591785; 370207592724', '1900', 'WoodFrame', '8-20 FT', NULL, NULL, NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke', 'Downtown Parking', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=15&lat=35.7326&lon=-81.34149&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370207591755', '2500000', '2500000', '246248252-union-square', '-PENDING SALE- $2,500,000', 'sold', '246-248-252-union-sq-flyer1649783113.pdf'),
(173, 'PENDING SALE- 157 21st St Dr NW', 'Looking for a project? This 36,192 sf space is available for sale in Hickory, NC. The property needs work, but portions of the property have the potential to be made into good, usable space.  The approx. 20,000 sf on the south side w/ 14\' clear ceiling would make a nice space once cleaned out, new roof/decking, new electrical, doors, etc.  The north side of the property has a nice grass area for future parking or development.  All uses/modifications need to be discussed/approved with the local municipalities.', 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '36192', 'front-of-building1650894877.jpg', '2.71', 'Average', NULL, 'I', NULL, NULL, NULL, NULL, '2022-04-25 17:54:37', '2022-05-28 14:02:10', 'https://goo.gl/maps/vRnUrb7J76zhpag58', NULL, 'a:9:{i:0;s:60:\"public/storage/images/gallery/1650894877204Dock Door (2).jpg\";i:1;s:56:\"public/storage/images/gallery/1650894877493Dock Door.jpg\";i:2;s:62:\"public/storage/images/gallery/1650894877767Employee Access.jpg\";i:3;s:64:\"public/storage/images/gallery/1650894877884Front of building.jpg\";i:4;s:76:\"public/storage/images/gallery/1650894877588Grassy area and back building.jpg\";i:5;s:63:\"public/storage/images/gallery/165089487710Grassy- side view.jpg\";i:6;s:60:\"public/storage/images/gallery/1650894877595Loading Docks.jpg\";i:7;s:56:\"public/storage/images/gallery/1650894877488Side View.jpg\";i:8;s:51:\"public/storage/images/gallery/1650894877919Side.jpg\";}', '279319504463', '1951', 'Brick/Stucco', '14', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Paved', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=9&lat=35.73356&lon=-81.37415&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=279319504463', '150000', NULL, '157-21st-st-dr-nw', '-PENDING SALE- $150,000', 'inactive', '157-21st-st-nw1652383498.pdf'),
(174, '2107 S Sterling St', 'This 2,500 estimated square foot space, sales lot in Morganton NC is available for lease or Sale. With quick access to I-40, former sales lot with great exposure. Large, well lit, paved lot that includes a building with 6 private offices with reception area and a drive in service area with ground level doors.', 'a:2:{i:0;s:5:\"lease\";i:1;s:4:\"sale\";}', 'a:1:{i:0;s:6:\"retail\";}', NULL, '2500', 'img-02231654872181.jpg', '1.18', 'Average', NULL, 'HID', NULL, NULL, NULL, NULL, '2022-06-10 18:41:50', '2023-01-04 21:30:28', 'https://goo.gl/maps/8Ua7Rqv89Bii4F1J9', NULL, 'a:14:{i:0;s:55:\"public/storage/images/gallery/1654872111603IMG_0169.jpg\";i:1;s:55:\"public/storage/images/gallery/1654872111445IMG_0171.jpg\";i:2;s:54:\"public/storage/images/gallery/165487211159IMG_0174.jpg\";i:3;s:55:\"public/storage/images/gallery/1654872111437IMG_0223.jpg\";i:4;s:55:\"public/storage/images/gallery/1654872111745IMG_0224.jpg\";i:5;s:55:\"public/storage/images/gallery/1654872111262IMG_0225.jpg\";i:6;s:55:\"public/storage/images/gallery/1654872111753IMG_0226.jpg\";i:7;s:55:\"public/storage/images/gallery/1654872111640IMG_0227.jpg\";i:8;s:55:\"public/storage/images/gallery/1654872111306IMG_0228.jpg\";i:9;s:55:\"public/storage/images/gallery/1654872111453IMG_0229.jpg\";i:10;s:55:\"public/storage/images/gallery/1654872111979IMG_0230.jpg\";i:11;s:55:\"public/storage/images/gallery/1654872111399IMG_0231.jpg\";i:12;s:55:\"public/storage/images/gallery/1654872111945IMG_0233.jpg\";i:13;s:55:\"public/storage/images/gallery/1654872111108IMG_0234.jpg\";}', '2712-09-0914', '1994', NULL, NULL, NULL, 'Ground Level Doors', NULL, NULL, NULL, NULL, NULL, NULL, 'Large Paved Lot', 'Morganton', 'NC', '28655', NULL, '4000.00', '625000', '2107-s-sterling-st', '2107 S Sterling ST', 'active', '2107-flyer1654872110.pdf'),
(177, '139 S NC 127 Hwy', '1,800 sf suite located in the Village Corner Shopping Center with 10\' ceilings. The water & sewer is with The City of Hickory, and there is central air conditioning, and electric heat. Paved common parking area, located in downtown Hickory at a busy intersection. Previously used for both retail and office spaces.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"retail\";}', NULL, '1800', 'front-21663875289.jpg', '1,800 sqft', 'Average', NULL, 'C-2', '40\' x 45\'', NULL, NULL, NULL, '2022-06-23 23:06:56', '2022-12-07 02:08:26', 'https://goo.gl/maps/jtwLnk1NiuCYdsTt9', NULL, 'a:1:{i:0;s:51:\"public/storage/images/gallery/166387528972Front.jpg\";}', '370208787712', '1982', 'Brick', '10FT', NULL, NULL, NULL, NULL, 'City', 'City', NULL, NULL, NULL, 'Hickory', 'NC', '28602', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.73003&lon=-81.33278&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370208787712', '1400', NULL, '137-s-nc-127-hwy-1', '139 S NC 127 Hwy $1,400/mo', 'leased', '137-hwy-127-flyer1656011216.pdf'),
(178, '200 1st Ave, Suite 407', '4,000+ office space is available in the Wells Fargo building in Downtown Hickory. Suites this large do not become available often in this building; take advantage now!  This unit has 9 offices, a reception area, kitchenette, and storage space. Tenants are also able to book the conference room on the 5th floor whenever needed. As a full-service building, tenants are left with minimal responsibility.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '4400', '200-1st-ave-nw--front-view1658253029.jpg', '1.63', 'Fantastic', NULL, 'C1', NULL, NULL, NULL, NULL, '2022-07-19 21:50:29', '2022-07-19 21:50:29', 'https://www.google.com/maps/place/200+1st+Ave+NW,+Hickory,+NC+28601,+USA/@35.733749,-81.3422161,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e2aabac1563:0x90ef8b4108da0089!8m2!3d35.733749!4d-81.3400274', NULL, 'a:1:{i:0;s:73:\"public/storage/images/gallery/1658253029693Conference Room (unedited).jpg\";}', '370319505173', '1974', 'Block', '12', 'Flourescent', '1 Ground Level', NULL, NULL, 'Included', 'Included', NULL, 'Icluded', 'Paved Lot/Street', 'Hickory', 'NC', '28601', NULL, NULL, NULL, '200-1st-ave-suite-407', 'Lease Price: $12-15/sf', 'active', NULL),
(179, '2500 Baker Cir', '24,000 square feet building available for lease off of Hwy 321-A near the Sawmills Fire Department. The single-story warehouse has a steel frame construction with 14 foot ceilings, paved parking, central AC and oil boiler heating. The water and sewer is with the town of Sawmills. There are one drive-in and four dock height doors.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '24000', 'screenshot-2022-07-21-1352071658427112.jpg', '2.27', 'Good', NULL, 'IND', NULL, NULL, NULL, NULL, '2022-07-21 22:10:33', '2022-08-12 16:32:30', 'https://goo.gl/maps/bAU6qDeuJ7QZ3CWc9', NULL, 'a:2:{i:0;s:75:\"public/storage/images/gallery/1658427033694Screenshot 2022-07-21 135112.jpg\";i:1;s:75:\"public/storage/images/gallery/1658427033121Screenshot 2022-07-21 135207.jpg\";}', '2766733382', '1979', 'Steel Frame', NULL, 'Fluorescent', '4 dock, 1 drive in', NULL, NULL, 'Town of Sawmills', 'Town of Sawmills', NULL, 'Duke Energy', '50 paved', 'Granite Falls', 'NC', '28630', 'https://gis.caldwellcountync.org/maps/default.htm?pid=2766733382', NULL, NULL, '2500-baker-cir', 'Lease Price: $3.25/sf', 'leased', 'flyer1658428888.pdf'),
(180, '782 4th St Dr SW', '1,275 square foot suite available. There are 10\' ceilings and an easily accommodating floor plan. Located very close to US Highway 70 and within a few stop lights from the I-40 access ramp. Large, paved parking area that is shared between tenants. Zoned C-3 and water/sewer with the City of Hickory.', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '1275', 'img-70221658772959.jpg', '.40', 'Good', NULL, 'C3', NULL, NULL, NULL, NULL, '2022-07-25 22:15:59', '2022-07-25 22:15:59', 'https://goo.gl/maps/Y2WtgqqwYS1JBtM16', NULL, 'a:4:{i:0;s:56:\"public/storage/images/gallery/1658772959117782 front.jpg\";i:1;s:50:\"public/storage/images/gallery/1658772959403782.jpg\";i:2;s:52:\"public/storage/images/gallery/1658772959845782-1.jpg\";i:3;s:55:\"public/storage/images/gallery/1658772959654IMG_7022.jpg\";}', '370210355727', '1987', 'Wood Frame/Brick', '10', 'Flourescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke', 'Paved', 'Hickory', 'NC', '28602', NULL, '850', NULL, '782-4th-st-dr-sw', 'Lease Price: $850/mo', 'active', '782-4th-st-flyer-rev1658772959.pdf'),
(181, '200 1st Ave NW, Suite 405', 'This 480 square foot space has an open plan with a North facing window. Situated right in the heart of Downtown Hickory, only a block away from Union Square, and with quick access to many great businesses and restaurants, this building is in a prime location. As a full-service building, tenants are left with minimal responsibility.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:6:\"office\";}', NULL, '480', '200-1st-ave-nw--front-view1659382863.jpg', 'Various', 'Excellent', NULL, 'C1', NULL, NULL, NULL, NULL, '2022-08-01 23:41:03', '2022-08-02 18:00:23', 'https://www.google.com/maps/place/200+1st+Ave+NW,+Hickory,+NC+28601,+USA/@35.733749,-81.3422161,17z/data=!3m1!4b1!4m5!3m4!1s0x88512e2aabac1563:0x90ef8b4108da0089!8m2!3d35.733749!4d-81.3400274', NULL, 'a:1:{i:0;s:62:\"public/storage/images/gallery/1659382863781Conference Room.png\";}', '370319505173', '1974', 'Block', '12', 'Flourescent', '1', NULL, NULL, 'Included', 'Included', NULL, 'Included', 'Paved, Street', 'Hickory', 'NC', '28601', NULL, NULL, NULL, '200-1st-ave-nw-suite-403', 'Lease Price: $12-$15/sf', 'active', NULL),
(183, '1402 9th Ave NE', NULL, 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '20800', '1402-9th-ave-ne-21661283959.JPG', '1.95', 'Good', NULL, 'IND', NULL, NULL, NULL, NULL, '2022-08-23 23:45:59', '2022-10-04 23:37:25', 'https://www.google.com/maps/place/1402+9th+Ave+NE,+Hickory,+NC+28601/@35.7403818,-81.31262,17z/data=!3m1!4b1!4m5!3m4!1s0x8851304f1aa68ba5:0x5d33698f2db5df72!8m2!3d35.7403775!4d-81.3104313', NULL, 'a:4:{i:0;s:55:\"public/storage/images/gallery/1661284164126IMG_2764.JPG\";i:1;s:64:\"public/storage/images/gallery/16612839597671402 9th Ave NE 3.JPG\";i:2;s:70:\"public/storage/images/gallery/16612839591571402 9th Ave NE- Aerial.JPG\";i:3;s:55:\"public/storage/images/gallery/1661283959884IMG_2768.JPG\";}', '371318424297', '1987', 'Masonry', '12', NULL, '5 Loading Docks', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Gravel Parking', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=13&lat=35.74006&lon=-81.3102&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTFFFTT&pinc=371318424297', '5000', NULL, '1402-9th-ave-ne-1', 'Lease Price: $5,000/mo Available 11/1/22', 'inactive', NULL),
(184, '2040 Norwood St SW', 'Lease Price- $4.50/sf NN\r\n\r\n113,500 sf industrial building with 18\' clear ceilings in Lenoir available January 2023. Building features 10 loading dock doors, 3 drive-in doors, 3-phase power, storage building, designated truck entrance, rail spur, and approximately 6,500 sf in office space. New upfits including new paint, LED lights, paving, and landscaping in process.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '113500', 'img-49791666189963.jpg', '11.32', 'Good', NULL, 'IND', NULL, NULL, NULL, NULL, '2022-09-06 18:42:27', '2022-11-11 20:26:31', 'https://www.google.com/maps/place/2040+Norwood+St+SW,+Lenoir,+NC+28645/@35.8782644,-81.5189903,17z/data=!3m1!4b1!4m5!3m4!1s0x8850df54e685b161:0x43c19dd6ee35b807!8m2!3d35.8782644!4d-81.5189903', NULL, 'a:6:{i:0;s:55:\"public/storage/images/gallery/1668180319904IMG_5155.jpg\";i:1;s:59:\"public/storage/images/gallery/1668180251650Dock Doors 2.jpg\";i:2;s:57:\"public/storage/images/gallery/1668180251887Dock Doors.jpg\";i:3;s:55:\"public/storage/images/gallery/1666189982956IMG_4977.jpg\";i:4;s:55:\"public/storage/images/gallery/1666189931940IMG_4970.jpg\";i:5;s:53:\"public/storage/images/gallery/1662475347806aerial.jpg\";}', '2758431845', '1969', 'Brick', '18\' Clear', 'LED', '10 dock; 3 drive in', NULL, NULL, 'City of Lenoir', 'City of Lenoir', NULL, 'Duke Energy; 3-phase', 'Paved', 'Lenoir', 'NC', '28645', 'https://gis.caldwellcountync.org/maps/default.htm?pid=2758431845', NULL, NULL, '2040-norwood-st-sw', 'Lease Price: $4.50/sf NN- Available January 2023', 'active', '2040-norwood-st-flyer--updated1667404959.pdf'),
(185, '1903 12th Ave NE (Left)', 'The left suite of this building has 2,700 sf with 10 ft ceilings. There is paved parking, central AC, bathrooms, and a lobby area. Located on Springs Road near many other businesses, close to Tate Blvd, and within 5 miles of Interstate 40. Also available in the same complex is a 1,200 sf space.', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '2700', 'exterior-photo1662753294.jpg', '0.53', 'Good', NULL, 'C-1', NULL, NULL, NULL, NULL, '2022-09-09 23:54:54', '2022-09-09 23:54:54', 'https://goo.gl/maps/8Y7vWS8ycFfKnNs8A', NULL, 'a:9:{i:0;s:55:\"public/storage/images/gallery/1662753294265Bathroom.jpg\";i:1;s:52:\"public/storage/images/gallery/1662753294770Front.jpg\";i:2;s:55:\"public/storage/images/gallery/1662753294125IMG_9130.jpg\";i:3;s:55:\"public/storage/images/gallery/1662753294374IMG_9131.jpg\";i:4;s:61:\"public/storage/images/gallery/1662753294311Interior Photo.jpg\";i:5;s:60:\"public/storage/images/gallery/1662753294745Main Room (2).jpg\";i:6;s:60:\"public/storage/images/gallery/1662753294977Main Room (3).jpg\";i:7;s:56:\"public/storage/images/gallery/1662753294772Main Room.jpg\";i:8;s:56:\"public/storage/images/gallery/1662753294178Recetpion.jpg\";}', '371315733364; Ref. Lot 1 on Plat book/pg 84/154', '1970/1984', 'Brick/Stucco', '10', 'Flourescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Power', 'Paved', 'Hickory', 'NC', '28601', NULL, NULL, NULL, '1903-12th-ave-ne-left', 'Lease Price: $9.50/sf', 'active', NULL),
(186, '1903 12th Ave NE (Right)', 'The right suite of this building has roughly 1,200 sf available. There are 10ft ceilings, paved parking, central AC, a bathroom, and a storage area. Located on Springs Road near many other businesses, close to Tate Blvd, and within 5 miles of Interstate 40. Also available in the same complex is a 2,700 sf space.', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '1200', 'frot1662753317.jpg', '0.53', 'Good', NULL, 'C-1', NULL, NULL, NULL, NULL, '2022-09-09 23:55:17', '2022-09-10 00:27:39', 'https://goo.gl/maps/8Y7vWS8ycFfKnNs8A', NULL, 'a:5:{i:0;s:49:\"public/storage/images/gallery/1662753317792BA.jpg\";i:1;s:54:\"public/storage/images/gallery/1662753317381front 2.jpg\";i:2;s:51:\"public/storage/images/gallery/1662753317616frot.jpg\";i:3;s:56:\"public/storage/images/gallery/1662753317340Main room.jpg\";i:4;s:54:\"public/storage/images/gallery/1662753317165Storage.jpg\";}', '371315733364; Ref. Lot 1 on Plat book/pg 84/154', '1970/1984', 'Brick/Stucco', '10', 'Flourescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke', 'Paved', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=14&lat=35.74324&lon=-81.30065&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=371315733364', NULL, NULL, '1903-12th-ave-ne-right', 'Lease Price: $9.50/sf', 'active', 'right-side1662753317.pdf'),
(187, '1730 N Center St', '1,500 sf of office space available in Hickory, NC! With three private offices, kitchenette, private bathroom, storage room, reception, and lobby area, this is laid out perfectly for a small retailer or office needing a new space. Located on Highway 127 in between Cookout and Donut Life, this highly trafficked highway lends the leased space great exposure.\r\n\r\n*$300 CAM in addition to rent', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '1500', 'front1663166372.jpg', '1.36', 'Excellent', NULL, 'C2', '23\'10\" x 65\' 11\"', NULL, NULL, NULL, '2022-09-14 18:39:32', '2023-01-09 22:24:48', 'https://goo.gl/maps/18cNZ5zX6eMReGc87', NULL, 'a:13:{i:0;s:53:\"public/storage/images/gallery/1663166372876Aerial.jpg\";i:1;s:55:\"public/storage/images/gallery/1663166372724Bathroom.jpg\";i:2;s:56:\"public/storage/images/gallery/1663166372727Breakroom.jpg\";i:3;s:52:\"public/storage/images/gallery/1663166372929Front.jpg\";i:4;s:55:\"public/storage/images/gallery/1663166372779IMG_1539.jpg\";i:5;s:55:\"public/storage/images/gallery/1663166372338IMG_1542.jpg\";i:6;s:55:\"public/storage/images/gallery/1663166372487Office 2.jpg\";i:7;s:55:\"public/storage/images/gallery/1663166372160Office 3.jpg\";i:8;s:53:\"public/storage/images/gallery/1663166372756Office.jpg\";i:9;s:55:\"public/storage/images/gallery/166316637242Rear Door.jpg\";i:10;s:56:\"public/storage/images/gallery/1663166372653Reception.jpg\";i:11;s:54:\"public/storage/images/gallery/1663166372321Storage.jpg\";i:12;s:59:\"public/storage/images/gallery/1663166372538Waiting Room.jpg\";}', '370307679992', '1970', 'Brick', '10-11\'', 'LED', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke', 'Paved', 'Hickory', 'NC', '28601', NULL, '16', NULL, '1730-n-center-st', 'Lease Price: $2,000/mo*', 'inactive', NULL),
(188, '526 10th St Blvd NW', 'Large 16,000 square feet space (10,000 sf in warehouse, 3,000 sf office, and 3,000 sf basement) available in Hickory, NC. Located within a mile of Hwy 321 and near Downtown Hickory. Equipped with central AC and 10-11\' ceilings, as well as one dock and one drive in door. There is paved parking, as well as covered entrance.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '16000', 'front1663278165.jpg', '1.36', 'Great', NULL, 'C2', NULL, NULL, NULL, NULL, '2022-09-14 19:18:20', '2022-09-23 18:39:45', 'https://goo.gl/maps/WDhTAKWnU2Br4x6b6', NULL, 'a:7:{i:0;s:53:\"public/storage/images/gallery/1663278165132Aerial.png\";i:1;s:51:\"public/storage/images/gallery/1663278165203back.jpg\";i:2;s:66:\"public/storage/images/gallery/1663278165585Front (bad quality).jpg\";i:3;s:52:\"public/storage/images/gallery/1663278165904Front.jpg\";i:4;s:55:\"public/storage/images/gallery/1663278165460IMG_1131.jpg\";i:5;s:57:\"public/storage/images/gallery/1663278165311thumbnail.jfif\";i:6;s:57:\"public/storage/images/gallery/1663168700531thumbnail.jfif\";}', '370313025538', '1970', NULL, '10-11\'', 'Flourescent', '1 dock, 1 drive-in', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke', 'Paved', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.74007&lon=-81.35731&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370313025538', '4000', NULL, '526-10th-st-blvd-nw', 'Lease Price: $4,000/mo', 'leased', '526-10th-st-blvd1663278165.pdf');
INSERT INTO `properties` (`id`, `name`, `info`, `category`, `type`, `price`, `square`, `image`, `size`, `condition`, `construction`, `zoning`, `dimension`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`, `google_map`, `lookup_mls`, `gallery`, `pin`, `construction_date`, `construction_type`, `ceiling_height`, `lighting`, `truck_loading`, `rest_rooms`, `former_use`, `water`, `sewer`, `gas`, `power`, `parking`, `city`, `state`, `zip`, `google_gis`, `min_price`, `max_price`, `slug`, `price_per_sf`, `status`, `upload_flyer`) VALUES
(190, '1211 Keisler Rd.', '30,000 sf former upholstery manufacturing plant available for lease at $3.75 NNN. With (4) dock doors, (1) drive-in door, open warehouse floor, plus partitioned walls provide areas for work and break-time, this is an awesome space. Located in Conover, less than one mile from the Hwy 70 and 16 intersection.', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '30000', 'bldg1663866474.jpg', '5.35', 'Great', NULL, 'M1', NULL, NULL, NULL, NULL, '2022-09-22 21:07:54', '2022-09-26 19:23:48', 'https://goo.gl/maps/rkYMXoZAPwAQCEMa9', NULL, 'a:12:{i:0;s:59:\"public/storage/images/gallery/16638664748734 Dock Doors.jpg\";i:1;s:60:\"public/storage/images/gallery/1663866474269Back-Pavement.jpg\";i:2;s:51:\"public/storage/images/gallery/1663866474691Bldg.jpg\";i:3;s:60:\"public/storage/images/gallery/1663866474950Drive in Door.jpg\";i:4;s:55:\"public/storage/images/gallery/1663866474303IMG_1165.jpg\";i:5;s:53:\"public/storage/images/gallery/1663866474821INside.jpg\";i:6;s:57:\"public/storage/images/gallery/1663866474409Interior 2.jpg\";i:7;s:54:\"public/storage/images/gallery/166386647476Interior.jpg\";i:8;s:58:\"public/storage/images/gallery/1663866474213Warehouse 2.jpg\";i:9;s:57:\"public/storage/images/gallery/166386647489Warehouse 3.jpg\";i:10;s:58:\"public/storage/images/gallery/1663866474426Warehouse 4.jpg\";i:11;s:55:\"public/storage/images/gallery/166386647498Warehouse.jpg\";}', '374115535893', '1994', 'Brick/Stucco', '14', 'Fluorescent', '(4) Dock, (1) Drive-In', NULL, NULL, 'City of Conover', 'City of Conover', NULL, 'Duke', 'Paved', 'Conover', 'NC', '28613', 'http://gis.catawbacountync.gov/parcel/?zoom=9&lat=35.69122&lon=-81.20404&layers=FFBFFFTFFFFFFFFFFFFFFFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=374115535893', NULL, NULL, '1211-kreisler-rd-1', 'Lease Price: $3.75 NNN', 'active', '1211-keisler-rd-flyer1664205828.pdf'),
(191, '4588 Reepsville Rd', '5,300 sf main building for sale or lease in Vale, NC. Originally a fire department, but currently used/permitted for automotive repair and sales. Space is equipped with four drive in doors,  partial central heating and cooling, paved parking, and a additional 1,000 sf freestanding storage building. There is a full kitchen, garage/work space, reception/lounge area, basement, and several bathrooms. Also available for lease!', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '5400', 'img-14451664895700.jpg', '3.2', 'Great', NULL, 'BG-CZ', '60 x 72', NULL, NULL, NULL, '2022-10-04 19:01:40', '2022-12-06 00:03:08', 'https://goo.gl/maps/mcjMo6RziSz4wjub6', NULL, 'a:12:{i:0;s:55:\"public/storage/images/gallery/1664895700911IMG_1445.jpg\";i:1;s:55:\"public/storage/images/gallery/1664895700596IMG_1446.jpg\";i:2;s:55:\"public/storage/images/gallery/1664895700625IMG_1450.jpg\";i:3;s:55:\"public/storage/images/gallery/1664895700386IMG_1455.jpg\";i:4;s:55:\"public/storage/images/gallery/1664895700914IMG_1457.jpg\";i:5;s:55:\"public/storage/images/gallery/1664895700490IMG_1459.jpg\";i:6;s:55:\"public/storage/images/gallery/1664895700312IMG_1462.jpg\";i:7;s:54:\"public/storage/images/gallery/166489570033IMG_1463.jpg\";i:8;s:55:\"public/storage/images/gallery/1664895700547IMG_1464.jpg\";i:9;s:55:\"public/storage/images/gallery/1664895700587IMG_1468.jpg\";i:10;s:55:\"public/storage/images/gallery/1664895700444IMG_1469.jpg\";i:11;s:55:\"public/storage/images/gallery/1664895700217IMG_1473.jpg\";}', '2695800413', '1965', 'Block', '11', 'Fluorescent', '4 drive in', NULL, NULL, 'City of Lincolnton', 'Septic', NULL, 'Duke', 'Paved', 'Vale', 'NC', '28168', NULL, '2500', '2500', '4588-reepsville-rd', 'Lease Price: $2,500/mo', 'sold', '4588-reepsville-rd1665012539.pdf'),
(192, '4588 Reepsville Rd', '5,300 sf main building for sale or lease in Vale, NC. Originally a fire department, but currently used/permitted for automotive repair and sales. Space is equipped with four drive in doors,  partial central heating and cooling, paved parking, and a additional 1,000 sf freestanding storage building. There is a full kitchen, garage/work space, reception/lounge area, basement, and several bathrooms. Also available for lease!', 'a:1:{i:0;s:4:\"sale\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '5300', 'img-14451664896106.jpg', '3.2', 'Great', NULL, 'BG-CZ', '60 x 72', NULL, NULL, NULL, '2022-10-04 19:08:26', '2022-12-06 00:02:54', 'https://www.google.com/maps/place/4588+Reepsville+Rd,+Vale,+NC+28168/@35.5140401,-81.3683106,15z/data=!4m5!3m4!1s0x8856d1f48ca2ce15:0x58fa1e2c826d5c23!8m2!3d35.5140401!4d-81.3595559?shorturl=1', NULL, 'a:12:{i:0;s:55:\"public/storage/images/gallery/1664896106771IMG_1445.jpg\";i:1;s:55:\"public/storage/images/gallery/1664896106328IMG_1446.jpg\";i:2;s:54:\"public/storage/images/gallery/166489610694IMG_1450.jpg\";i:3;s:55:\"public/storage/images/gallery/1664896106652IMG_1455.jpg\";i:4;s:55:\"public/storage/images/gallery/1664896106179IMG_1457.jpg\";i:5;s:54:\"public/storage/images/gallery/166489610685IMG_1459.jpg\";i:6;s:55:\"public/storage/images/gallery/1664896106353IMG_1462.jpg\";i:7;s:55:\"public/storage/images/gallery/1664896106901IMG_1463.jpg\";i:8;s:55:\"public/storage/images/gallery/1664896106426IMG_1464.jpg\";i:9;s:55:\"public/storage/images/gallery/1664896106810IMG_1468.jpg\";i:10;s:55:\"public/storage/images/gallery/1664896106549IMG_1469.jpg\";i:11;s:55:\"public/storage/images/gallery/1664896106382IMG_1473.jpg\";}', '2695800413', '1965', 'Block', '11', 'Flluorescent', '4 drive in', NULL, NULL, 'City of Lincolnton', 'Septic', NULL, 'Duke', 'Paved', 'Vale', 'NC', '28168', NULL, '324900', NULL, '4588-reepsville-rd-1', 'Sale Price: $324,900', 'sold', '4588-reepsville-rd1665010636.pdf'),
(193, '102 Somerset Dr NW- Avail 1/2023', 'Available January 2023 \r\nTake advantage of this 15,000 square foot warehouse while you can! There are three (3) dock doors and one (1) drive-in door. A beautifully maintained property with paved parking, 14-foot ceilings, a wet sprinkler system, and gas heating. These large spaces with high ceilings and several dock doors do not come along often!', 'a:1:{i:0;s:5:\"lease\";}', 'a:1:{i:0;s:10:\"industrial\";}', NULL, '15000', 'front1666188080.jpg', '1.41', 'Great', NULL, 'M1', NULL, NULL, NULL, NULL, '2022-10-19 18:01:20', '2023-01-04 19:45:12', 'https://www.google.com/maps/place/102+Somerset+Dr+NW,+Conover,+NC+28613/@35.7207059,-81.2499717,3a,75y,111.06h,90t/data=!3m6!1e1!3m4!1sw6KHYk5qCEnNvSYtyy4lGA!2e0!7i16384!8i8192!4m5!3m4!1s0x885136d37338cf85:0xa17ea15802473b7f!8m2!3d35.7205781!4d-81.2495601', NULL, 'a:5:{i:0;s:57:\"public/storage/images/gallery/1666188080859dock doors.jpg\";i:1;s:55:\"public/storage/images/gallery/1666188080510drive in.jpg\";i:2;s:52:\"public/storage/images/gallery/1666188080257front.jpg\";i:3;s:54:\"public/storage/images/gallery/1666188080331parking.jpg\";i:4;s:51:\"public/storage/images/gallery/1666188080861yard.jpg\";}', '373213243761', '1983', 'Brick', '14', 'Fluorescent', '(3) Dock, (1) Drive-In', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke', 'Paved', 'Conover', 'NC', '28613', 'http://gis.catawbacountync.gov/parcel/?zoom=12&lat=35.72055&lon=-81.24947&layers=FFBFFFTFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=373213243761', '5000', NULL, '102-somerset-dr-nw', 'Lease Price: $5,000/mo', 'leased', 'flyer--102-somerset1666211101.pdf'),
(194, '246D Union Square', 'Take advantage of this elegant retail space in Downtown Hickory on the newly renovated Union Square! Now is your chance to lease a space in this historical building, with tasteful original features and high ceilings in the entry leading to the store-front. The 1,100 sf retail space has laminate floors and a large window on each level, bringing natural lighting and a view. All utilities are included in the rent (power, water/sewer).', 'a:1:{i:0;s:5:\"lease\";}', 'a:2:{i:0;s:6:\"office\";i:1;s:6:\"retail\";}', NULL, '1100', 'img-27961673634792.jpg', '.13', 'Great', NULL, 'C1', NULL, NULL, NULL, NULL, '2023-01-13 23:33:12', '2023-01-18 01:52:40', 'https://goo.gl/maps/mh1D9RE2twsnAoSV6', NULL, 'a:11:{i:0;s:54:\"public/storage/images/gallery/167363479235IMG_2771.jpg\";i:1;s:55:\"public/storage/images/gallery/1673634792763IMG_2772.jpg\";i:2;s:55:\"public/storage/images/gallery/1673634792843IMG_2773.jpg\";i:3;s:55:\"public/storage/images/gallery/1673634792416IMG_2775.jpg\";i:4;s:55:\"public/storage/images/gallery/1673634792662IMG_2776.jpg\";i:5;s:54:\"public/storage/images/gallery/167363479287IMG_2777.jpg\";i:6;s:55:\"public/storage/images/gallery/1673634792283IMG_2778.jpg\";i:7;s:55:\"public/storage/images/gallery/1673634792986IMG_2781.jpg\";i:8;s:55:\"public/storage/images/gallery/1673634792413IMG_2782.jpg\";i:9;s:55:\"public/storage/images/gallery/1673634792358IMG_2789.jpg\";i:10;s:55:\"public/storage/images/gallery/1673634792833IMG_2796.jpg\";}', '370207592724', '1900', 'Brick', '10', 'Flourescent', 'None', NULL, NULL, 'City of Hickory', 'City of Hickory', NULL, 'Duke Energy', 'Street', 'Hickory', 'NC', '28601', 'http://gis.catawbacountync.gov/parcel/?zoom=15&lat=35.7326&lon=-81.34128&layers=FFBFFFTFFFFFFFFFFFFFFTFFFFTTFFFFFFFFTFTFFTTTTTT&pinc=370207592724', '1400', NULL, '246d-union-square', '246D Union Square', 'inactive', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quick_forms`
--

CREATE TABLE `quick_forms` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `form_field` longtext DEFAULT NULL,
  `recipient` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message_body` longtext DEFAULT NULL,
  `mail_sent_ok` varchar(255) DEFAULT NULL,
  `mail_sent_ng` varchar(255) DEFAULT NULL,
  `validation_error` varchar(255) DEFAULT NULL,
  `spam` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thanku_template` longtext DEFAULT NULL,
  `template_css` longtext DEFAULT NULL,
  `header_content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quick_forms`
--

INSERT INTO `quick_forms` (`id`, `created_at`, `updated_at`, `name`, `form_field`, `recipient`, `sender`, `subject`, `message_body`, `mail_sent_ok`, `mail_sent_ng`, `validation_error`, `spam`, `slug`, `thanku_template`, `template_css`, `header_content`) VALUES
(62, '2020-03-28 15:38:36', '2022-11-24 15:44:50', 'Contact Us', '<div class=\"form-group\">\r\n                        <input type=\"text\" class=\"form-control cnt-form\" aria-describedby=\"emailHelp\" name=\"fullname\" maxlength=\"18\" id=\"username\"  placeholder=\"Full Name*\" autocomplete=\"off\">\r\n</div>\r\n<div class=\"form-group\">\r\n                        <input type=\"email\" class=\"form-control cnt-form\" name=\"email\" id=\"email\" placeholder=\"Email*\" onblur=\"validateEmail(this);\" autocomplete=\"off\" required>\r\n       <div class=\"invalid_email\"><span>Invalid email</span></div>\r\n</div>\r\n <div class=\"form-group\">\r\n                        <input type=\"tel\" class=\"form-control cnt-form\" name=\"phone\" id=\"phone\" placeholder=\"Phone*\" onkeypress=\"formatPhone(this);\"  autocomplete=\"off\" maxlength=\"16\"  required>\r\n                    </div>\r\n                    <div class=\"form-group\">\r\n                        <textarea type=\"text\" class=\"form-control cnt-form\" name=\"message\" id=\"message\" placeholder=\"Message*\" autocomplete=\"off\" required></textarea>\r\n                         <p id=\"message_error\"></p>\r\n                        </div>\r\n\r\n <div class=\"form-group\">\r\n                    <div id=\"google_recaptcha\"></div>\r\n                    <div id=\"verify-captcha-message\">Please verify reCAPTCHA</div>\r\n                </div>\r\n <div class=\"form-group\">\r\n                    <button type=\"submit\" class=\"btn btn-block gettouch\">Submit</button>\r\n</div>', 'melissa@bhicp.com, ashtyn@bhicp.com, ashtyn@bhicp.onmicrosoft.com, monica@bhicp.com, monica@bhicp.onmicrosoft.com', 'website@bhicp.com', 'BHICP  - Contact Us', NULL, 'Thank You for Contacting Us. We\'ll respond to you as soon as possible.', NULL, NULL, NULL, 'contact-us', '</p>\r\n                    <h1>Thank you</h1>\r\n                    <p class=\'msg\'>We\'ll respond to you as soon as possible. If you need immediate help, please call us at :-\r\n                   </p>\r\n            </div>\r\n            <div class=\'right\'>\r\n                <a href=\'#\'>828-322-1723</a>\r\n            </div>\r\n            <div class=\'footer\'>\r\n                 <p class=\'follow\'><strong>Follow us on</strong></p>\r\n                 <div class=\'social-icons\'>\r\n                   <ul>\r\n<li>\r\n<a href=\'https://www.facebook.com/bhicp\'><i class=\'fa fa-facebook\'></i><img src=\'https://bhicp.com/public/themes/public/assets/img/logo/f.png\'></a>\r\n</li>\r\n<li>\r\n<a href=\"https://www.linkedin.com/company/boyd-&amp;-hassell-industrial-&amp;-commercial-properties/about/\" target=\"_blank\">\r\n        <i class=\"fa fa-linkedin\"> </i>\r\n<img src=\'https://bhicp.com/public/themes/public/assets/img/logo/linkedin-32.png\'>\r\n        </a>\r\n</li>\r\n\r\n                   </ul>\r\n                </div>\r\n            </div>\r\n            <div class=\'copy-rght\'>\r\n\r\n                <p>Copyright  2020 Boyd & Hassell Industrial & Commercial Properties, all rights reserved.</p>\r\n            </div>\r\n            </div>\r\n        </div>', '@import url(\'https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap\');\r\n            @import url(\'https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap\');\r\n            p, h1, h2, h3, h4, ol, li, ul {  font-family: \'Open Sans\', sans-serif; }\r\n            body\r\n            {\r\n                font-family: \'Roboto\', sans-serif;\r\n                width:80%;\r\n                margin:auto;\r\n                background:#f2f2f2;\r\n            }\r\n            .outer\r\n            {\r\n                font-family: \'Roboto\', sans-serif;\r\n                width:80%;\r\n                margin:auto;\r\n                background:#f2f2f2;\r\n                padding: 30px;\r\n            }\r\n            .inner-content\r\n            {\r\n                background:#fff;\r\n                width:500px;    \r\n                margin:auto;\r\n                padding: 0px 40px 40px 40px;\r\n            }\r\n            .wrap-image\r\n            {\r\n                text-align:center;\r\n                background-color:#fff;\r\n                padding:15px;\r\n            }\r\n            .content{           \r\n                padding:10px;\r\n            }\r\n            .greeener-swipe\r\n            {\r\n                max-width: 300px;\r\n                margin: auto;\r\n            }\r\n            .greeener-swipe img\r\n            {\r\n                width:100%;\r\n            }\r\n            .right a\r\n            {\r\n                background: #fff;\r\n                color: #084594;\r\n                padding: 10px 24px;\r\n                display: inline-block;\r\n                border-radius: 25px;\r\n                font-weight: normal;\r\n                border: 2px solid #084594;\r\n                transition: 0.5s;\r\n                font-size: 18px;\r\n                border-radius: 30px;\r\n                list-style: none;\r\n                text-decoration: none;\r\n                margin-bottom:30px;\r\n                margin-top: 30px;\r\n            }\r\n            .social-icons ul{\r\n                padding: 0; \r\n                margin: 0;\r\n                list-style: none;\r\n                justify-content: center;\r\n                text-align:center;\r\n            }\r\n            .social-icons ul li\r\n            {\r\n                display:inline;\r\n               padding: 8px;\r\n            }\r\n            .right\r\n            {\r\n                text-align: center;\r\n                margin-bottom: 35px;\r\n                border-bottom: 1px solid #f2f2f2;\r\n                width: 400px;\r\n                margin: auto;\r\n            }\r\n            .copy-rght\r\n            {\r\n                text-align:center;\r\n                padding-top:15px;\r\n            }\r\n            .copy-rght p\r\n            {\r\n                font-style: italic;\r\n            }\r\n            .content .title\r\n            {\r\n                font-size: 20px;\r\n            }\r\n            .content p \r\n            {\r\n                font-size: 20px;\r\n                font-family: \'Roboto\',sans-serif;\r\n                font-weight: normal;\r\n                text-transform: capitalize;\r\n                color:#000;\r\n            }\r\n            .content h1\r\n            {\r\n                font-weight: normal;\r\n                font-size: 40px;\r\n                color:#084594;\r\n                margin-bottom: 15px;\r\n            }\r\n            .msg\r\n            {\r\n                font-size: 20px;\r\n                color: #000;\r\n            }\r\n            .follow\r\n            {\r\n                text-align: center;\r\n                font-size: 18px;\r\n                padding: 15px 0px 30px!important;\r\n            }\r\n            .social-icons\r\n            {\r\n                text-align:center;\r\n                align-item:center;\r\n            }\r\n            .social-icons img\r\n            {\r\n                width: auto;\r\n                height: auto;\r\n            }\r\n            .footer\r\n            {\r\n                text-align:center;\r\n            }\r\n            .follow strong\r\n            {\r\n                font-weight: 500;\r\n                color:#808080;\r\n            }\r\n            .inner-content p\r\n            {\r\n                padding:0;\r\n                margin:0;\r\n            }\r\n            .inner-content .content .title\r\n            {\r\n                margin-top: 20px;\r\n                text-transform: unset;\r\n            }', '<div class=\'outer\'>\r\n        <div class=\'inner-content\'>\r\n             <div class=\'wrap-image\'>\r\n                <img src=\"https://bhicp.com/public/themes/public/assets/img/logo/logo.png\">\r\n             </div>\r\n             <div class=\'content\'>\r\n            <p class=\'title\'>Hi ,'),
(63, '2021-03-25 11:24:20', '2022-11-30 13:26:13', 'Property Enquiry Form', '<div class=\"form-group\">\r\n                        <input type=\"text\" class=\"form-control cnt-form\" aria-describedby=\"emailHelp\" name=\"fullname\"  id=\"username\"  placeholder=\"Full Name*\" autocomplete=\"off\">\r\n</div>\r\n<div class=\"form-group\">\r\n                        <input type=\"email\" class=\"form-control cnt-form\" name=\"email\" id=\"email\" placeholder=\"Email*\" onblur=\"validateEmail(this);\" autocomplete=\"off\" required>\r\n       <div class=\"invalid_email\"><span>Invalid email</span></div>\r\n</div>\r\n <div class=\"form-group\">\r\n                        <input type=\"tel\" class=\"form-control cnt-form\" name=\"phone\" id=\"phone\" placeholder=\"Phone*\" onkeypress=\"formatPhone(this);\"  autocomplete=\"off\" maxlength=\"16\"  required>\r\n                    </div>\r\n\r\n<div class=\"form-group\">\r\n                        <input type=\"text\" class=\"form-control cnt-form\"  name=\"budgetrange\"  id=\"budgetrange\"  placeholder=\"Budget Range\" autocomplete=\"off\">\r\n</div>\r\n\r\n<div class=\"form-group\">\r\n<select name=\"propertysource\" id=\"propertysource\" class=\"form-control cnt-form\">\r\n<option value=\"\" disabled selected>How\'d you find this property?</option>\r\n  <option value=\"website\">Website</option>\r\n  <option value=\"friends\">Friends</option>\r\n  <option value=\"relative\">Relative</option>\r\n  <option value=\"socialmedia\">Social Media</option>\r\n  <option value=\"dealer\">Dealer</option>\r\n</select>\r\n</div>\r\n                    <div class=\"form-group message_custom\">\r\n                        <textarea type=\"text\" class=\"form-control cnt-form\" id=\"enquirymessage\" name=\"message\" placeholder=\"Message*\" autocomplete=\"off\"></textarea>\r\n                          <p id=\"message_error\"></p>\r\n                        </div>\r\n\r\n <div class=\"form-group\">\r\n                    <div id=\"google_recaptcha\"></div>\r\n                    <div id=\"verify-captcha-message\">Please verify reCAPTCHA</div>\r\n                </div>\r\n<input type=\"hidden\" name=\"category\" id=\"category\">\r\n<input type=\"hidden\" name=\"property_name\" id=\"property_name\">\r\n <div class=\"form-group\">\r\n                    <button type=\"submit\" class=\"btn btn-block gettouch\">Submit</button>\r\n</div>', 'melissa@bhicp.com, ashtyn@bhicp.com, gavinbmitchell@gmail.com, ashtyn@bhicp.onmicrosoft.com, monica@bhicp.com, monica@bhicp.onmicrosoft.com', 'website@bhicp.com', 'BHICP  -  Enquiry', NULL, 'Thank You for Contacting Us. We\'ll respond to you as soon as possible.', NULL, NULL, NULL, 'enquiry-form', '</p>\r\n                    <h1>Thank you</h1>\r\n                    <p class=\'msg\'>We\'ll respond to you as soon as possible. If you need immediate help, please call us at :-\r\n                   </p>\r\n            </div>\r\n            <div class=\'right\'>\r\n                <a href=\'#\'>828-322-1723</a>\r\n            </div>\r\n            <div class=\'footer\'>\r\n                 <p class=\'follow\'><strong>Follow us on</strong></p>\r\n                 <div class=\'social-icons\'>\r\n                   <ul>\r\n<li>\r\n<a href=\'https://www.facebook.com/bhicp\'><i class=\'fa fa-facebook\'></i><img src=\'https://bhicp.com/public/themes/public/assets/img/logo/f.png\'></a>\r\n</li>\r\n<li>\r\n<a href=\"https://www.linkedin.com/company/boyd-&amp;-hassell-industrial-&amp;-commercial-properties/about/\" target=\"_blank\">\r\n        <i class=\"fa fa-linkedin\"> </i>\r\n<img src=\'https://bhicp.com/public/themes/public/assets/img/logo/linkedin-32.png\'>\r\n        </a>\r\n</li>\r\n\r\n                   </ul>\r\n                </div>\r\n            </div>\r\n            <div class=\'copy-rght\'>\r\n\r\n                <p>Copyright  2020 Boyd & Hassell Industrial & Commercial Properties, all rights reserved.</p>\r\n            </div>\r\n            </div>\r\n        </div>', '@import url(\'https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap\');\r\n            @import url(\'https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap\');\r\n            p, h1, h2, h3, h4, ol, li, ul {  font-family: \'Open Sans\', sans-serif; }\r\n            body\r\n            {\r\n                font-family: \'Roboto\', sans-serif;\r\n                width:80%;\r\n                margin:auto;\r\n                background:#f2f2f2;\r\n            }\r\n            .outer\r\n            {\r\n                font-family: \'Roboto\', sans-serif;\r\n                width:80%;\r\n                margin:auto;\r\n                background:#f2f2f2;\r\n                padding: 30px;\r\n            }\r\n            .inner-content\r\n            {\r\n                background:#fff;\r\n                width:500px;    \r\n                margin:auto;\r\n                padding: 0px 40px 40px 40px;\r\n            }\r\n            .wrap-image\r\n            {\r\n                text-align:center;\r\n                background-color:#fff;\r\n                padding:15px;\r\n            }\r\n            .content{           \r\n                padding:10px;\r\n            }\r\n            .greeener-swipe\r\n            {\r\n                max-width: 300px;\r\n                margin: auto;\r\n            }\r\n            .greeener-swipe img\r\n            {\r\n                width:100%;\r\n            }\r\n            .right a\r\n            {\r\n                background: #fff;\r\n                color: #084594;\r\n                padding: 10px 24px;\r\n                display: inline-block;\r\n                border-radius: 25px;\r\n                font-weight: normal;\r\n                border: 2px solid #084594;\r\n                transition: 0.5s;\r\n                font-size: 18px;\r\n                border-radius: 30px;\r\n                list-style: none;\r\n                text-decoration: none;\r\n                margin-bottom:30px;\r\n                margin-top: 30px;\r\n            }\r\n            .social-icons ul{\r\n                padding: 0; \r\n                margin: 0;\r\n                list-style: none;\r\n                justify-content: center;\r\n                text-align:center;\r\n            }\r\n            .social-icons ul li\r\n            {\r\n                display:inline;\r\n               padding: 8px;\r\n            }\r\n            .right\r\n            {\r\n                text-align: center;\r\n                margin-bottom: 35px;\r\n                border-bottom: 1px solid #f2f2f2;\r\n                width: 400px;\r\n                margin: auto;\r\n            }\r\n            .copy-rght\r\n            {\r\n                text-align:center;\r\n                padding-top:15px;\r\n            }\r\n            .copy-rght p\r\n            {\r\n                font-style: italic;\r\n            }\r\n            .content .title\r\n            {\r\n                font-size: 20px;\r\n            }\r\n            .content p \r\n            {\r\n                font-size: 20px;\r\n                font-family: \'Roboto\',sans-serif;\r\n                font-weight: normal;\r\n                text-transform: capitalize;\r\n                color:#000;\r\n            }\r\n            .content h1\r\n            {\r\n                font-weight: normal;\r\n                font-size: 40px;\r\n                color:#084594;\r\n                margin-bottom: 15px;\r\n            }\r\n            .msg\r\n            {\r\n                font-size: 20px;\r\n                color: #000;\r\n            }\r\n            .follow\r\n            {\r\n                text-align: center;\r\n                font-size: 18px;\r\n                padding: 15px 0px 30px!important;\r\n            }\r\n            .social-icons\r\n            {\r\n                text-align:center;\r\n                align-item:center;\r\n            }\r\n            .social-icons img\r\n            {\r\n                width: auto;\r\n                height: auto;\r\n            }\r\n            .footer\r\n            {\r\n                text-align:center;\r\n            }\r\n            .follow strong\r\n            {\r\n                font-weight: 500;\r\n                color:#808080;\r\n            }\r\n            .inner-content p\r\n            {\r\n                padding:0;\r\n                margin:0;\r\n            }\r\n            .inner-content .content .title\r\n            {\r\n                margin-top: 20px;\r\n                text-transform: unset;\r\n            }', '<div class=\'outer\'>\r\n        <div class=\'inner-content\'>\r\n             <div class=\'wrap-image\'>\r\n                <img src=\"https://bhicp.com/public/themes/public/assets/img/logo/logo.png\">\r\n             </div>\r\n             <div class=\'content\'>\r\n            <p class=\'title\'>Hi ,');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
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
(12, 2, 6, '2020-09-11 12:04:17', '2020-09-11 12:04:17'),
(13, 1, 7, '2020-12-29 19:56:56', '2020-12-29 19:56:56'),
(14, 2, 7, '2020-12-29 19:56:56', '2020-12-29 19:56:56'),
(15, 3, 7, '2020-12-29 19:56:56', '2020-12-29 19:56:56'),
(16, 4, 7, '2020-12-29 19:56:56', '2020-12-29 19:56:56'),
(17, 1, 8, '2021-06-22 13:40:19', '2021-06-22 13:40:19'),
(18, 2, 8, '2021-06-22 13:40:19', '2021-06-22 13:40:19'),
(19, 1, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(20, 2, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(21, 3, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08'),
(22, 4, 9, '2022-04-04 19:23:08', '2022-04-04 19:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `info` varchar(1500) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL,
  `hover_color` text DEFAULT NULL,
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
(1, 'Leasing', 'If you need help finding yourself a new property or a tenant to occupy your space, we can help! BHIC utilizes multiple marketing channels to locate and secure tenants for our property owners. Our goal is to help you find available buildings and negotiate leases to fit your specific needs best.', 'leasing', '/uploads/images/services/1589610747.svg', '#acd43b', 'Leasing', 'Real Estate', 'Leasing', '2019-10-03 02:26:33', '2021-04-15 16:58:47'),
(3, 'Sales', 'Are you looking to sell or purchase a property? Let us help you market and negotiate your property to get the best return. We provide our buyers with years of experience to help them locate, negotiate, and purchase property that fits each unique need.', 'sales', '/uploads/images/services/BOYD&HASSELL-sales-service.svg', '#3bd4ae', NULL, NULL, NULL, '2019-10-03 02:26:33', '2021-04-15 16:36:23'),
(19, 'Property Management', 'Boyd & Hassell can handle all aspects of property management for Landlords. Whether you need support with collections, reporting, maintenance, and/or payments, we\'ve got you covered!', 'property-management', '/uploads/images/services/1599839450.svg', NULL, NULL, NULL, NULL, '2020-05-24 00:08:10', '2021-04-15 16:59:15'),
(20, 'Investment', 'We are deeply rooted in the growth and development of our local community here at Boyd & Hassell. We can help you identify and locate the perfect cash flow producing opportunities, and would love to discuss potential investments with you!', 'investment', NULL, NULL, NULL, NULL, NULL, '2020-05-24 00:08:44', '2021-04-15 17:03:39'),
(21, 'Development', 'We have experience in all areas of the development process to provide a seamless experience for your next venture.', 'development', NULL, NULL, NULL, NULL, NULL, '2020-05-24 00:09:09', '2021-04-15 17:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `package` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL,
  `control` varchar(255) DEFAULT 'text',
  `type` enum('System','Default','User') DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `upload_folder` varchar(100) DEFAULT NULL,
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
(113, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-08-18 19:10:40', '2020-08-18 19:10:40'),
(114, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 6, NULL, NULL, NULL, '2020-11-11 21:33:37', '2020-11-11 21:33:37'),
(115, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-11-12 00:31:15', '2020-11-12 00:31:15'),
(116, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-11-16 21:25:12', '2020-11-16 21:25:12'),
(117, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-11-25 17:11:17', '2020-11-25 17:11:17'),
(118, 'admin.color', NULL, NULL, NULL, 'blue', NULL, 'text', NULL, NULL, 3, NULL, NULL, NULL, '2020-11-25 17:11:21', '2020-11-25 17:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mail_address` varchar(255) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `refer_by` varchar(500) DEFAULT NULL,
  `other` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `budgetrange` varchar(255) DEFAULT NULL,
  `propertysource` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `name`, `phone`, `email`, `mail_address`, `message`, `refer_by`, `other`, `created_at`, `updated_at`, `status`, `budgetrange`, `propertysource`, `category`, `property_name`, `slug`) VALUES
(19, 'Jim Rideout', NULL, 'rideoutja@gmail.com', NULL, 'Musts:\r\n    •	1,500-4,000 sq ft of work space with level concrete floor\r\n    •	No roof leaks and does not flood, secure windows and doors\r\n    •	Ground level doors wide enough to drive cars and boat trailer into building\r\n    •	I live on north edge of Hickory off 321, looking for something within 15 mins drive if possible\r\n    •	Reasonable rent\r\nWants:\r\n    •	Heat and air conditioning\r\n    •	208 3 phase power\r\n    •	Safe neighborhood\r\n\r\nNewly retired Corning executive. Have excellent references.\r\n\r\nThanks,\r\n\r\nJim\r\n\r\nMobile 828 228 8199', NULL, NULL, '2020-10-21 21:23:43', '2020-10-21 21:23:43', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(22, 'Kristie Robertson', NULL, 'kristie.robertson@cbrealty.com', NULL, 'I have a client that owns an office building in downtown Lincolnton. He was interested in property management for this space. It would be approximately three offices to lease in this building. Is this size of property something you would be able to work with? Please let me know. Thank you! Kristie Robertson, Coldwell Banker Realty 704-736-5073', NULL, NULL, '2020-11-07 00:30:21', '2020-11-07 00:30:21', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(25, 'Dan Holohan', NULL, 'dan@holohanshotrods.com', NULL, 'Hi guys, \r\n\r\nCouple questions on this property for lease --- 1433 9th Ave SE\r\n\r\nLooking for an idea on what the monthly Duke power bill would be and also if the lease price is negotiable and what the lease agreement would be. \r\n\r\n I\'m looking to relocate my hot rod shop from mooresville up into the hickory and morgonton area. \r\n\r\n  Thanks and enjoy the day\r\n\r\nDan Holohan\r\nholohanshotrods.com', NULL, NULL, '2020-11-18 18:35:09', '2020-11-18 18:35:09', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(26, 'Bilan Mo', NULL, 'bilanmo@gmail.com', NULL, 'Interested in this property 370208787712', NULL, NULL, '2020-12-16 07:40:26', '2020-12-16 07:40:26', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(27, 'Reva Shane Bailey', NULL, 'revashane.asucheer@yahoo.com', NULL, '279207784635... I would like to see this property as soon as possible. Please call me 828-612–4439', NULL, NULL, '2021-01-02 05:01:02', '2021-01-02 05:01:02', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(28, 'The Barnish\'s', NULL, 'chris@websbychris.com', NULL, NULL, NULL, NULL, '2021-01-08 00:57:23', '2021-01-08 00:57:23', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(29, 'Wylie Moore', NULL, 'wyliemmoore@gmail.com', NULL, 'I own a building at 73 Falls Avenue in Grabite Falls. I would like to talk to a commercial realtor if interested. \r\nThank you\r\n8287816208', NULL, NULL, '2021-01-18 05:25:52', '2021-01-18 05:25:52', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(30, 'Wylie Moore', NULL, 'wyliemmoore@gmail.com', NULL, 'I own a building at 73 Falls Avenue in Grabite Falls. I would like to talk to a commercial realtor if interested. \r\nThank you\r\n8287816208', NULL, NULL, '2021-01-18 05:28:09', '2021-01-18 05:28:09', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(31, 'Jeff Bechtel', NULL, 'Jeff@Tablelegs4u.com', NULL, 'Have Ind. Bldg. for sale--44,000 Ft.   Call me @ 434-444-2521', NULL, NULL, '2021-02-02 19:06:22', '2021-02-02 19:06:22', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(34, 'Tim Lehman', NULL, 'tlehman@berryandclark.com', NULL, 'I was wanting information on the property that is on 2nd Ave. SE in front of the BBQ Pit. Thanks, Tim', NULL, NULL, '2021-02-12 01:03:58', '2021-02-12 01:03:58', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(35, 'The Parchim\'s', NULL, 'athena@sustainabletravelnetwork.org', NULL, NULL, NULL, NULL, '2021-02-16 21:28:19', '2021-02-16 21:28:19', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(37, 'Ted James', NULL, 'tedknows@tedknowsmoney.com', NULL, 'Hi there,\r\n\r\nI’d like to share my wealth-building and real estate knowledge to help those thinking of starting their own rental property business.\r\n\r\nIf I send it over, will you consider posting my resource guide for first-time rental property investors? I\'d be happy to highlight your website in the guide as well!\r\n\r\nThanks and all the best,\r\nTed James\r\nTedknowsmoney.com : tedknows@tedknowsmoney.com', NULL, NULL, '2021-02-18 12:52:02', '2021-02-18 12:52:02', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(40, 'Tammy Allen', NULL, 'tallen@peoplesbanksba.com', NULL, '​I am with Peoples Bank out of South Carolina. We have a hotel in Hickory, NC, that will be closing in the next couple of weeks. They have a pretty substantial PIP and we are in need of a construction management group to assist. Is this a service that your company provides?\r\nIf so, I am hoping you are able to provide me with a list of your services and fees. \r\nIf you have any questions, please let me know.\r\nThank you', NULL, NULL, '2021-03-04 01:23:13', '2021-03-04 01:23:13', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(44, 'The Rudie\'s', NULL, 'sherry@windowsunixhosting.net', NULL, NULL, NULL, NULL, '2021-03-18 22:10:44', '2021-03-18 22:10:44', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(45, 'C. Hamlin', NULL, 'nyvoce03@charter.net', NULL, 'Good morning. \r\nPlease share more details about 22 S Center St-Hickory, NC. Engineering inspections recently, roof age, foundational issues, age of sewer and water connections to the building. Parking surface age. restrictions on property site. \r\n\r\nMany thanks, \r\nC. Hamlin', NULL, NULL, '2021-03-20 19:45:00', '2021-03-20 19:45:00', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(46, 'David Brooks', NULL, 'david@matrixprecisionparts.com', NULL, '647 Hopewell Rd-Morganton, NC\r\n\r\nIs this available? \r\n\r\nWe are looking to lease for manufacturing, machine shop.\r\n\r\nDavid\r\nMatrix Precision', NULL, NULL, '2021-03-22 00:27:35', '2021-03-22 00:27:35', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(52, 'Leslie Tate', '704-685-2980', 'Knowwhereurgoin@gmail.com', NULL, 'Please contact me regarding storage unit 4 at Lake Hickory Pl.\r\nmy boyfriend and I need to find out how to make payment for the unit because we had to put some things in there and were not able to find out who managed the property until a man came by and told us it was owned by you guys. That was 3 days ago and now there\'s a padlock on the door. We\'d like to pay what we owe for this month and see how to get the padlock removed ASAP. \r\nWe\'re also interested in another unit or 2 there, if another is available. the man said the prices were $25 and $40 per month and we have two units currently at U-Haul and would like for them all to be together.', NULL, NULL, '2021-03-23 20:18:40', '2021-03-23 20:18:40', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(71, 'jason lee', '9194227093', 'jason.lee@capitalelectricsupply.com', NULL, 'Are there any lease opportunities on this property? \r\n66 Highway 321 NW Hickory, NC', NULL, NULL, '2021-04-09 21:57:23', '2021-04-09 21:57:23', 'inactive', '120,000', 'website', NULL, NULL, 'enquiry'),
(74, 'Derek Richardson', '(704) 620 - 8151', 'drichardson@bolivarholdings.com', NULL, 'Interested in touring your property at 515 US Hwy 321 in Hickory. Do you happen to have a floor plan for the property?', NULL, NULL, '2021-04-14 06:21:16', '2021-04-14 06:21:16', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(121, 'Gavin Mitchell', '8282347676', 'gavinbmitchell@yahoo.com', NULL, 'Test', NULL, NULL, '2021-04-20 17:35:02', '2021-04-20 17:35:02', 'inactive', '2', 'website', NULL, NULL, 'enquiry'),
(127, 'krishna kumar raut', '(828) 491 - 0963', 'tester@gmail.com', NULL, '2189-B', NULL, NULL, '2021-04-21 09:20:11', '2021-04-21 09:20:11', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(128, 'Chuck Abernathy', '(828) 652 - 9391', 'meda@mcdowelleda.org', NULL, 'I am the Executive Director for McDowell Economic development. The county has several opportunites for commercial properties. If you could provide me with an email I\'d be happy to share these with you. Thank you for your time.', NULL, NULL, '2021-04-23 17:26:54', '2021-04-23 17:26:54', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(129, 'Jesse N. Richardson', '8642479955', 'jr.fire.flare@gmail.com', NULL, 'I\'d like to to see the inside of the property. Please note we aren\'t buying just yet', NULL, NULL, '2021-04-27 19:12:46', '2021-04-27 19:12:46', 'inactive', '200000', 'website', NULL, NULL, 'enquiry'),
(130, 'Gavin Mitchell', '8282347676', 'gavinbmitchell@yahoo.com', NULL, 'TEST', NULL, NULL, '2021-04-27 19:35:23', '2021-04-27 19:35:23', 'inactive', '0', 'website', NULL, NULL, 'enquiry'),
(133, 'Jake', '(704) 881 - 1553', 'jmoore@icisupport.com', NULL, 'test to Ashtyn', NULL, NULL, '2021-04-28 17:59:57', '2021-04-28 17:59:57', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(134, 'Ashtyn', '(828) 322 - 1723', 'ashtyn@bhicp.com', NULL, 'testing', NULL, NULL, '2021-04-28 18:03:26', '2021-04-28 18:03:26', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(139, 'Adam mcclamrock', '(828) 474 - 4478', 'theotakuhangout@hotmail.com', NULL, 'Please send more information', NULL, NULL, '2021-05-09 02:05:29', '2021-05-09 02:05:29', 'inactive', '1000', 'website', 'lease', '123 Main Ave W', 'enquiry'),
(140, 'Dan Snedecor', '18282157917', 'dan.snedecor@holms.com', NULL, 'I am currently looking for options to relocate our warehouse operations from Statesville.  We only require +/- 10,000 sq ft and office space for 4-5 people.  We need a loading dock for standard trailers. Shelving and enclosed storage would be welcomed.\r\nThank you', NULL, NULL, '2021-05-10 18:07:13', '2021-05-10 18:07:13', 'inactive', '$2900/mo', 'website', 'lease', '1605 Norfolk Pl SW', 'enquiry'),
(141, 'Russell Pate', '(828) 855 - 3983', 'russell@hickorycomputer.com', NULL, 'This is a test. I am working on your email issue.', NULL, NULL, '2021-05-14 00:15:01', '2021-05-14 00:15:01', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(142, 'Russell Pate', '(828) 638 - 5071', 'russell@hickorycomputer.com', NULL, 'another test email.', NULL, NULL, '2021-05-14 00:55:19', '2021-05-14 00:55:19', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(143, 'Grant Gaither', '(704) 380 - 3838', 'Grant@owengraffix.com', NULL, 'Testing the forms submission to see if it reaches BHICP emails accounts', NULL, NULL, '2021-05-14 18:37:25', '2021-05-14 18:37:25', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(144, 'Ashtyn', '(828) 322 - 1723', 'ashtynmckenzie@gmail.com', NULL, 'test', NULL, NULL, '2021-05-14 19:40:04', '2021-05-14 19:40:04', 'inactive', '0', NULL, 'sale', '515 US Hwy 321 NW', 'enquiry'),
(145, 'Ashtyn', '(828) 322 - 1723', 'ashtynmckenzie@gmail.com', NULL, 'test', NULL, NULL, '2021-05-14 19:49:50', '2021-05-14 19:49:50', 'inactive', '0', NULL, 'sale', '102 S Main St', 'enquiry'),
(146, 'ashtyn', '(828) 322 - 1723', 'info@marketplacechurch.org', NULL, 'test', NULL, NULL, '2021-05-17 21:12:02', '2021-05-17 21:12:02', 'inactive', NULL, NULL, 'sale', '73 Falls Avenue', 'enquiry'),
(147, 'ashtyn', '(828) 322 - 1723', 'ashtyn@bhicp.com', NULL, 'test', NULL, NULL, '2021-05-18 21:34:09', '2021-05-18 21:34:09', 'inactive', NULL, NULL, 'lease', '1220 Commerce St SW, Suite H', 'enquiry'),
(148, 'Russell Pate', '(828) 638 - 5071', 'russell@hickorycomputer.com', NULL, 'This is a test', NULL, NULL, '2021-05-19 22:32:41', '2021-05-19 22:32:41', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(149, 'Russell Pate', '(828) 638 - 5071', 'russell@hickorycomputer.com', NULL, 'Testing', NULL, NULL, '2021-05-19 22:52:32', '2021-05-19 22:52:32', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(150, 'Russell', '(828) 638 - 5071', 'russell@hickorycomputer.com', NULL, 'another test.', NULL, NULL, '2021-05-19 23:04:29', '2021-05-19 23:04:29', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(151, 'ashtyn', '(828) 322 - 1723', 'ashtyn@bhicp.com', NULL, 'test', NULL, NULL, '2021-05-19 23:52:28', '2021-05-19 23:52:28', 'inactive', NULL, NULL, 'lease', '1331 4th St Dr NW', 'enquiry'),
(153, 'David Farris', '3369445379', 'david@barnescustomshop.com', NULL, 'Am looking for a space in the Hickory area for a furniture frame shop.  Must be (at least) heated.   \r\n\r\nWill you please send me more info on this property?\r\n\r\nThanks', NULL, NULL, '2021-05-23 23:43:50', '2021-05-23 23:43:50', 'inactive', 'Open', 'website', 'lease', '1605 Norfolk Pl SW', 'enquiry'),
(156, 'Pedro E Martinez', '(828) 638 - 4686', 'drope_3272@hotmail.com', NULL, 'Good morning!  I\'m interested in renting this property, and would like to know more about the zoning restrictions.', NULL, NULL, '2021-06-06 17:15:18', '2021-06-06 17:15:18', 'inactive', NULL, 'website', 'lease', '1220 Commerce St SW, Suite H', 'enquiry'),
(157, 'Pedro E Martinez', '(828) 638 - 4686', 'drope_3272@hotmail.com', NULL, 'can the lower level be rented separated from the top ?', NULL, NULL, '2021-06-06 17:51:14', '2021-06-06 17:51:14', 'inactive', NULL, 'website', 'lease', '2180 Northwest Blvd.', 'enquiry'),
(159, 'Jack Boling', '(828) 781 - 9014', 'jboling@advantagegrouprepairs.com', NULL, 'Does this building have 3 phase power and completely air cond.', NULL, NULL, '2021-06-23 22:36:03', '2021-06-23 22:36:03', 'inactive', NULL, 'website', 'lease', '637 Main Ave SW', 'enquiry'),
(160, 'Callie Goode', '(704) 310 - 7610', 'caligoode@gmail.com', NULL, 'Would love more info on how long the lease would be and when I could check out the property', NULL, NULL, '2021-07-07 01:22:25', '2021-07-07 01:22:25', 'inactive', '$1,000-$1,700 a month', 'website', 'lease', '1220 Commerce Street SW, Suite F', 'enquiry'),
(161, 'Ben Brown', '1 (888) 555-1212', 'benbrown@dropjar.com', NULL, NULL, NULL, NULL, '2021-07-09 01:04:17', '2021-07-09 01:04:17', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(164, 'Dan Snedecor', '(828) 215 - 7917', 'dan.snedecor@holms.com', NULL, 'Wondering if this space could be subdivided for a 3 year lease. We are looking for 12-15,000 sqft to relocate from our current location in Statesville. Thank you.', NULL, NULL, '2021-08-11 03:07:19', '2021-08-11 03:07:19', 'inactive', '$4500/mo', 'website', 'lease', '1125 7th Ave NW (Upper Building 1)', 'enquiry'),
(166, 'Elizabeth Powell', '(828) 962 - 0758', 'Powellfamilyfitness@gmail.com', NULL, 'Hello, \r\nI am a fitness instructor looking for a space to teach a variety of classes. I am interested in any spaces you have that are between 500-1000 sq ft. \r\nThank you for your time, \r\nElizabeth Powell', NULL, NULL, '2021-08-19 21:15:43', '2021-08-19 21:15:43', 'inactive', NULL, 'website', 'lease', '200 1st Ave NW', 'enquiry'),
(167, 'Rik Covalinski', '8284031409', 'rik.covalinski@gmail.com', NULL, 'I\'m looking for a location to store some inventory and receive freight of new inventory from time to time. Would this be acceptable for this property/lease?', NULL, NULL, '2021-09-03 20:23:41', '2021-09-03 20:23:41', 'inactive', NULL, NULL, 'lease', '123 Main Ave W', 'enquiry'),
(168, 'Jonathan Reece', '(828) 292 - 8738', 'jcreece.22@gmail.com', NULL, 'We are looking for a commercial property to start up a hardware/farm supplies store and this property seems spacious enough to allow us to achieve that goal. I would love to talk more about it and get a tour of the facility, if possible. Thank you.', NULL, NULL, '2021-09-09 18:37:04', '2021-09-09 18:37:04', 'inactive', '~$150,000+', 'website', 'sale', '73 Falls Avenue', 'enquiry'),
(173, 'Amber Meadows', '(828) 729 - 9569', 'wildrootsstudio828@gmail.com', NULL, 'Hey, I am interested in viewing this property and finding out more information about it. I would be interested in expanding my salon to this location.', NULL, NULL, '2021-09-23 02:50:12', '2021-09-23 02:50:12', 'inactive', '1500', 'website', 'lease', '1022 3rd Ave Dr NW', 'enquiry'),
(175, 'Raven Barron', '8282442543', 'raven@ravenbarronlaw.com', NULL, 'Is this office space handicap accessible?', NULL, NULL, '2021-10-05 05:33:02', '2021-10-05 05:33:02', 'inactive', NULL, 'website', 'lease', '200 Union Square', 'enquiry'),
(176, 'Brian Coggin', '7047634609', 'brian_coggin@Yahoo.com', NULL, 'Do you currently own this property? If so your current tenant is involved in some very questionable business practices, selling cars with known issues.', NULL, NULL, '2021-10-05 23:59:07', '2021-10-05 23:59:07', 'inactive', NULL, 'dealer', 'lease', '2874 Hwy 70 SE', 'enquiry'),
(177, 'Crystal McCullough', '(336) 749 - 5763', 'crystal.m.mccullough@gmail.com', NULL, 'Looking to lease a property in hickory', NULL, NULL, '2021-10-22 17:07:39', '2021-10-22 17:07:39', 'inactive', '2k/month tops', 'website', 'lease', '2311 John Bowman Road', 'enquiry'),
(178, 'Crystal McCullough', '(336) 749 - 5763', 'crystal.m.mccullough@gmail.com', NULL, 'Could this be broken down further to lease a smaller 2000-2500 square feet?', NULL, NULL, '2021-10-22 17:11:03', '2021-10-22 17:11:03', 'inactive', NULL, 'website', 'lease', '1125 7th Ave NW (Lower Building 2)', 'enquiry'),
(179, 'William Gula', '(717) 645 - 8448', 'wpgula@applefasteners.com', NULL, 'Jim,\r\nGood morning.  I hope you remember me and I trust you are doing well.  I purchased the 2 warehouses in Hickory from your client several years ago. \r\n3952/3954 Main Ave Dr NW.  Could you reach out to me concerning an appraisal on the properties. \r\n\r\nSincerely,\r\nWilliam P Gula', NULL, NULL, '2021-10-25 19:04:23', '2021-10-25 19:04:23', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(180, 'alex demaar', '(206) 806 - 5976', 'acdemaar@gmail.com', NULL, 'we are interested in\r\n123 Main Ave. West Hildebran NC', NULL, NULL, '2021-11-14 04:06:12', '2021-11-14 04:06:12', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(181, 'Melissa', '(910) 528 - 1260', 'just_horse_crazy@yahoo.com', NULL, 'I am interested in speaking with you about selling 2 tracts of land located in Alexander County totally approximately 92 acres. Please call between 8-10am or after 4 pm.', NULL, NULL, '2021-11-18 02:56:30', '2021-11-18 02:56:30', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(182, 'Elizabeth Abee', '18285692654', 'elizabethandcopetsalon@gmail.com', NULL, 'Been in business for 4 years and growing! Looking to find a bigger space semi close to our current location. It\'s a dog grooming business, so we use a lot of water. Is the septic system a tank? Or city sewer?', NULL, NULL, '2021-11-30 08:11:35', '2021-11-30 08:11:35', 'inactive', '2000 month', 'website', 'lease', '1080 25th St SE', 'enquiry'),
(183, 'Crystal McCullough', '(336) 749 - 5763', 'crystal.m.mccullough@gmail.com', NULL, 'I would like to see this property if possivle', NULL, NULL, '2021-12-12 00:58:53', '2021-12-12 00:58:53', 'inactive', NULL, 'website', 'lease', '123 W 23rd St', 'enquiry'),
(184, 'Eric Dawkins', '(828) 999 - 0945', 'ericwdawkins@outlook.com', NULL, 'Hi.  I see this is under contract.  Please let me know if this becomes available.\r\nThanks,\r\nEric', NULL, NULL, '2021-12-14 20:23:32', '2021-12-14 20:23:32', 'inactive', NULL, NULL, 'sale', 'UNDER CONTRACT-515 US Hwy 321 NW', 'enquiry'),
(186, 'Grant Gaither', '(704) 380 - 3838', 'grant@gryphoscreative.com', NULL, 'Testing to see if this message comes through and doesn\'t go into your spam folder.', NULL, NULL, '2021-12-31 02:18:52', '2021-12-31 02:18:52', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(187, 'Rick Self', '(980) 205 - 5388', 'ricks@terminatordia.com', NULL, 'Company Name:  Terminator Diamond Products.  We have a need for 20,000+ light industrial sq.ft. in the Hickory area.', NULL, NULL, '2022-01-20 00:28:47', '2022-01-20 00:28:47', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(188, 'Leroy Boudy', '8284558239', 'lboudy5@gmail.com', NULL, NULL, NULL, NULL, '2022-01-24 01:51:26', '2022-01-24 01:51:26', 'inactive', NULL, 'website', 'sale', '73 Falls Avenue', 'enquiry'),
(189, 'Sergio Gonzalez', '8284499870', 'Khekko85@gmail.com', NULL, 'Interested', NULL, NULL, '2022-01-27 07:56:38', '2022-01-27 07:56:38', 'inactive', NULL, NULL, 'lease', '2311 John Bowman Road', 'enquiry'),
(190, 'Kalib HALL', '7044028788', 'kalibhall@yahoo.com', NULL, 'Information on the properly', NULL, NULL, '2022-01-29 05:15:28', '2022-01-29 05:15:28', 'inactive', NULL, NULL, 'lease', '1241 E Garner Bagnal Blvd', 'enquiry'),
(191, 'Qi Liu', '(919) 637 - 0862', 'carlin66@yahoo.com', NULL, 'I wanna to sell my Industral property please contact me for more information', NULL, NULL, '2022-01-31 06:33:45', '2022-01-31 06:33:45', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(192, 'Max Williams', '(707) 706 - 0205', 'webrank05@gmail.com', NULL, 'Hello and Good Day\r\nI am Max (Jitesh chauhan) Marketing Manager with a reputable online marketing company based in India.\r\nWe can fairly quickly promote your website to the top of the search rankings with no long term contracts!\r\nWe can place your website on top of the Natural Listings on Google, Yahoo and MSN. Our Search Engine Optimization team delivers more top rankings than anyone else and we can prove it. We do not use \"link farms\" or \"black hat\" methods that Google and the other search engines frown upon and can use to de-list or ban your site. The techniques are proprietary, involving some valuable closely held trade secrets.\r\nWe would be happy to send you a proposal using the top search phrases for your area of expertise. Please contact me at your convenience so we can start saving you some money.\r\nIn order for us to respond to your request for information, please include your company’s website address (mandatory) and or phone number.\r\nSo let me know if you would like me to mail you more details or schedule a call. We\'ll be pleased to serve you.\r\nI look forward to your mail.\r\nThanks and Regards', NULL, NULL, '2022-02-25 13:26:34', '2022-02-25 13:26:34', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(193, 'Max Williams', '(707) 706 - 0205', 'webrank05@gmail.com', NULL, 'Hello and Good Day\r\nI am Max (Jitesh chauhan) Marketing Manager with a reputable online marketing company based in India.\r\nWe can fairly quickly promote your website to the top of the search rankings with no long term contracts!\r\nWe can place your website on top of the Natural Listings on Google, Yahoo and MSN. Our Search Engine Optimization team delivers more top rankings than anyone else and we can prove it. We do not use \"link farms\" or \"black hat\" methods that Google and the other search engines frown upon and can use to de-list or ban your site. The techniques are proprietary, involving some valuable closely held trade secrets.\r\nWe would be happy to send you a proposal using the top search phrases for your area of expertise. Please contact me at your convenience so we can start saving you some money.\r\nIn order for us to respond to your request for information, please include your company’s website address (mandatory) and or phone number.\r\nSo let me know if you would like me to mail you more details or schedule a call. We\'ll be pleased to serve you.\r\nI look forward to your mail.\r\nThanks and Regards', NULL, NULL, '2022-02-25 13:26:53', '2022-02-25 13:26:53', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(195, 'Stacey Eckard', '(828) 226 - 9722', 'stacey.l.eckard@saint-gobain.com', NULL, 'Is this property still available?', NULL, NULL, '2022-02-25 18:41:50', '2022-02-25 18:41:50', 'inactive', NULL, 'website', 'lease', '1203 Farrington Street SW', 'enquiry'),
(196, 'Elizabeth Abee', '8285692654', 'elizabethandcopetsalon@gmail.com', NULL, 'I have an established grooming salon business. We need a bigger facility. Can I look at this space? It\'s it zoned for that? Would the lease include any upfitting? Any additional info would be great! Thank you!', NULL, NULL, '2022-03-05 05:51:25', '2022-03-05 05:51:25', 'inactive', '2000-2500 month', 'website', 'lease', '806 12th Street SW', 'enquiry'),
(197, 'Denice Ariztia', '(828) 639 - 0802', 'hisgloryncdivision@gmail.com', NULL, 'We are looking for warehouse space with a loading dock. We are a 501c3 nonprofit and would like to give a tax receipt for the rent.', NULL, NULL, '2022-03-11 22:08:26', '2022-03-11 22:08:26', 'inactive', NULL, 'website', 'lease', '4233 US Hwy 321-A', 'enquiry'),
(198, 'TERA ENLOE', '8288502558', 'Sistersclothingco2021@gmail.com', NULL, 'Is this property still available?', NULL, NULL, '2022-03-16 14:57:04', '2022-03-16 14:57:04', 'inactive', NULL, 'website', 'sale', '73 Falls Avenue', 'enquiry'),
(199, 'Michael Conrads', '7067171540', 'mconrads@usa.com', NULL, 'Looks like this property is under contract but I\'d be interested if the deal falls through. Thanks-\r\nMike\r\n706-717-1540', NULL, NULL, '2022-03-27 17:11:22', '2022-03-27 17:11:22', 'inactive', NULL, 'website', 'sale', '73 Falls Avenue', 'enquiry'),
(200, 'Elizabeth L Bryant', '8286395718', 'organizedkhaos6@gmail.com', NULL, 'I was curious about this building and would like info. I know it said leased but I never see anything there', NULL, NULL, '2022-03-31 02:36:08', '2022-03-31 02:36:08', 'inactive', '650-1200', 'website', 'lease', '123 Main Ave W', 'enquiry'),
(201, 'Tammy', '8283688528', 'tpruitt810@gmail.com', NULL, 'Looking for a place to move the cosmotology school', NULL, NULL, '2022-04-01 17:03:54', '2022-04-01 17:03:54', 'inactive', NULL, NULL, 'lease', '637 Main Ave SW', 'enquiry'),
(202, 'Tammy', '8283688528', 'tpruitt810@gmail.com', NULL, 'Looking for a place to lease for cosmotology school', NULL, NULL, '2022-04-01 17:12:33', '2022-04-01 17:12:33', 'inactive', NULL, NULL, 'lease', '1080 25th St SE', 'enquiry'),
(203, 'Sergio Gonzalez', '8284499870', 'Khekko85@gmail.com', NULL, 'Interested', NULL, NULL, '2022-04-02 05:40:40', '2022-04-02 05:40:40', 'inactive', NULL, NULL, 'lease', '504 W 25th ST (Available 6-22)', 'enquiry'),
(204, 'Michael Cline', '8284490469', 'michaelcline@gmail.com', NULL, 'Is Crawford wanting to lease-back?', NULL, NULL, '2022-04-07 00:36:20', '2022-04-07 00:36:20', 'inactive', 'ehh', 'website', 'sale', '1814 US Hwy 70', 'enquiry'),
(205, 'Pedro E Martinez', '8286384686', 'drope_3272@hotmail.com', NULL, NULL, NULL, NULL, '2022-04-15 17:03:49', '2022-04-15 17:03:49', 'inactive', NULL, NULL, 'lease', '1220 Commerce St SW, Suite H', 'enquiry'),
(206, 'Angelina Greco', 'info@londoncoffeefestival.com', 'info@londoncoffeefestival.com', NULL, 'Thanks for attending one of our past events!\r\n\r\nAs a member, we will give you exclusive deals and offers from our partners which are not available to the public.\r\n\r\nWe will be sending you a few special offers every single day for the next year.\r\n\r\nOur partner: https://cbdfx.co.uk\r\n\r\nKind regards\r\n\r\nAllegra Events Limited\r\n106 Arlington Road\r\nCamden Town, London\r\nNW1 7HP\r\nUnited Kingdom\r\nRegistered in England No. 6754003\r\nTel: +44(0)20 7691 8800', NULL, NULL, '2022-04-20 17:17:26', '2022-04-20 17:17:26', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(207, 'Nick Kyrgios', 'nick@contractorgoweb.com', 'nick@contractorgoweb.com', NULL, 'Hi, \r\n\r\n“We can’t guarantee any results, and it will probably take more than six months to get any traction.”\r\nSound familiar?\r\n\r\nThat’s what typical digital marketing agencies say when they talk about SEO.\r\nNO-RISK SEO is what sets us apart. \r\n\r\nWe give you a comprehensive, state-of-play report on your website and a nine-month plan to increase your rankings for the keywords that matter at zero cost.\r\nEach of the nine months will have clearly defined, quantifiable milestones, and if we fail to achieve any monthly milestone, YOU GET YOUR MONEY BACK for that month - no questions asked.\r\nWhy wait?\r\nTo learn more, reply now.', NULL, NULL, '2022-04-20 23:44:35', '2022-04-20 23:44:35', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(208, 'Christopher Davis', '7046781608', 'investmentscad@gmail.com', NULL, 'I’ve seen it before in the past and was in town and saw it was for sale', NULL, NULL, '2022-04-24 23:07:33', '2022-04-24 23:07:33', 'inactive', NULL, NULL, 'sale', '39 2nd St NW', 'enquiry'),
(209, 'Michael Cline', '8284490469', 'michaelcline@gmail.com', NULL, 'On the 20k sqft that is \"fixable\", can it be entered?  Has the roof already starting falling in on that section?', NULL, NULL, '2022-05-13 20:52:00', '2022-05-13 20:52:00', 'inactive', NULL, 'website', 'sale', '157 21st St Dr NW', 'enquiry'),
(210, 'Tatianna Cline', '8284698447', 'cutnwine@gmail.com', NULL, 'Im looking to start up my own business and would love to check out this place', NULL, NULL, '2022-05-14 22:47:17', '2022-05-14 22:47:17', 'inactive', '850-1500', 'website', 'lease', '1220 Commerce St SW, Suite H', 'enquiry'),
(211, 'Mary Ann Frye Tric', '(434) 962 - 9689', 'matrice@courtsquaretitle.com', NULL, 'I am interested in having a market analysis done on some commercial property that my Mother\'s Trust is considering selling.  My brother and I are the Trustees of the Lucy Hayes Frye Trust.   The property is :1000 13th Street SW and 997 13th Street SW\r\nCan you assist me with this market analysis?\r\nthanks\r\nMary Ann', NULL, NULL, '2022-05-17 15:35:37', '2022-05-17 15:35:37', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(212, 'Kevin Fairchild', '(404) 579 - 2152', 'ks_fairchild@hotmail.com', NULL, 'I’m looking to lease or purchase commercial property in Hickory. Ideally 1,000-2,500 sq/ft with higher ceilings and at least one roll up door.', NULL, NULL, '2022-05-20 04:39:12', '2022-05-20 04:39:12', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(215, 'Ian Parker', '18283104941', 'iparker@parkerfoodindustries.com', NULL, NULL, NULL, NULL, '2022-06-05 01:40:05', '2022-06-05 01:40:05', 'inactive', NULL, NULL, 'lease', '780-782 4th St Dr, SW', 'enquiry'),
(222, 'Mr Dennis McMillan', '(980) 406 - 9774', 'barbercut1@yahoo.com', NULL, 'Thanks', NULL, NULL, '2022-07-11 22:46:01', '2022-07-11 22:46:01', 'inactive', NULL, 'website', 'lease', '137 S NC 127 Hwy', 'enquiry'),
(228, 'Chris Whiddon', '8282343362', 'chris@eastcoastreloading.com', NULL, 'Is 1402 9th Ave NE available to tour?', NULL, NULL, '2022-08-25 20:26:44', '2022-08-25 20:26:44', 'inactive', 'up to $5000', 'website', 'lease', '1402 9th Ave NE', 'enquiry'),
(229, 'Brittany', '(828) 781 - 8469', 'blittle0105@gmail.com', NULL, 'Looking for space to call home for a new private practice with just one therapist.', NULL, NULL, '2022-08-27 02:10:44', '2022-08-27 02:10:44', 'inactive', '400', 'website', 'lease', '200 1st Ave NW-Ground Level', 'enquiry'),
(230, 'Denise Frye', '(828) 324 - 8898', 'dfrye@wwhcc.biz', NULL, 'Would you have a 400-500 sq foot warehouse space open for rent In Hickory area?', NULL, NULL, '2022-09-01 20:58:45', '2022-09-01 20:58:45', 'active', NULL, NULL, NULL, NULL, 'contact'),
(231, 'BARRY G BEAVER', '7046923832', 'barry@servosouth.com', NULL, 'Is this property for lease or sale? \r\nAlso inquiring about the property on tate blvd you have listed \r\n\r\nThanks,\r\n\r\nBarry', NULL, NULL, '2022-09-10 06:11:45', '2022-09-10 06:11:45', 'inactive', NULL, 'website', 'lease', '1433 9th Ave SE', 'enquiry'),
(232, 'alex', '(206) 806 - 5976', 'acdemaar@gmail.com', NULL, 'We are looking for a place for our Church', NULL, NULL, '2022-09-18 17:02:28', '2022-09-18 17:02:28', 'inactive', '$1000 to $1500 monthly or purchase $300K', 'website', 'lease', '1903 12th Ave NE (Left)', 'enquiry'),
(233, 'Christopher Price', '(360) 626 - 3789', 'cprice@fencequarter.com', NULL, 'I own a company Fence Quarter and am looking for anew larger space.  I would like to see this 10,000 SF facility on Tate Blvd.', NULL, NULL, '2022-10-14 03:43:22', '2022-10-14 03:43:22', 'inactive', 'In range', 'friends', 'lease', '1722 Tate Blvd SE', 'enquiry'),
(234, 'Shynese W', '(828) 493 - 6518', 'shynesewhitener@yahoo.com', NULL, 'Hi,\r\n\r\nIs the 1200 sq ft still available? I am looking to open my first barbershop. \r\n\r\nHow much would the monthly rent be?\r\nAre the utilities included?\r\n\r\nPlease let me know thank you.', NULL, NULL, '2022-10-16 21:25:34', '2022-10-16 21:25:34', 'active', NULL, 'website', 'lease', '1903 12th Ave NE (Right)', 'enquiry'),
(235, 'Lisa Eaker', '(704) 678 - 6100', 'lisae@alcomservices.com', NULL, 'Is this still available?\r\nThank you,', NULL, NULL, '2022-10-17 19:31:14', '2022-10-17 19:31:14', 'inactive', NULL, 'website', 'lease', '4588 Reepsville Rd', 'enquiry'),
(236, 'Chris Whiddon', '8282343362', 'chris@eastcoastreloading.com', NULL, 'I\'d like to schedule a time to see this property.  Thank you.', NULL, NULL, '2022-10-29 01:33:29', '2022-10-29 01:33:29', 'inactive', NULL, NULL, 'lease', '102 Somerset Dr NW- Avail 1/2023', 'enquiry'),
(237, 'Dulcie Linville', 'linville.dulcie@msn.com', 'linville.dulcie@msn.com', NULL, 'Hello!', NULL, NULL, '2022-10-31 06:19:45', '2022-10-31 06:19:45', 'active', NULL, NULL, NULL, NULL, 'contact'),
(238, 'Erika Asche', 'asche.erika15@googlemail.com', 'asche.erika15@googlemail.com', NULL, 'Hello\r\n\r\nMy name is Erika. Recently, I have left my permanent position as an SEO expert at one of the leading SEO agencies in India to work as a freelancer.\r\n\r\nI have found bhicp.com on Facebook\r\n\r\nI ran a quick analysis of bhicp.com and determined that we could boost your domain rating, SERPs and ultimately, your traffic and sales through one of my SEO packages.\r\n\r\nYou can see everything I have to offer here: https://www.fiverr.com/jamshednarayana\r\n\r\nAll of my packages are extremely affordable as I have just started freelancing and want to pass on a good deal for your site.\r\n\r\nThanks for your time and I look forward to ranking bhicp.com on Google :)\r\n\r\nKind regards\r\nErika Asche', NULL, NULL, '2022-11-01 08:39:04', '2022-11-01 08:39:04', 'active', NULL, NULL, NULL, NULL, 'contact'),
(239, 'Lonely Girl real', 'eugene.terra@gmail.com', 'eugene.terra@gmail.com', NULL, 'I am very lonely and thought you could help me spend the evening! \r\nPlease PM me on the site https://cutt.us/8XGpd  (my nickname is Lonely_Girl_18)\r\nI am waiting for you VERY much.', NULL, NULL, '2022-11-06 18:55:31', '2022-11-06 18:55:31', 'active', NULL, NULL, NULL, NULL, 'contact'),
(240, 'Victorina Hailey', 'victorina.hailey97@gmail.com', 'victorina.hailey97@gmail.com', NULL, 'Where are you?', NULL, NULL, '2022-11-07 04:27:20', '2022-11-07 04:27:20', 'active', NULL, NULL, NULL, NULL, 'contact'),
(241, 'Paolo Leo', '(828) 578 - 5290', 'p.leo@igptools.com', NULL, 'Hello,\r\nmy name is Paolo Leo and I\'m the General Manager NA at Surfaces Group.\r\nWe are looking for a building of 20,000 sqft to lease to set up as warehouse.\r\nI would like to visit the building located in 1402 9th Ave NE tomorrow 11/08. My preferred time is 9:00 am. \r\n\r\nLooking forward to hearing something from you.\r\n\r\nBest regards,\r\nPaolo', NULL, NULL, '2022-11-07 18:29:56', '2022-11-07 18:29:56', 'active', NULL, NULL, NULL, NULL, 'contact'),
(242, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'ericjonesmyemail@gmail.com', NULL, 'Hi, my name is Eric and I’m betting you’d like your website bhicp.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at bhicp.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://boostleadgeneration.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=bhicp.com', NULL, NULL, '2022-11-08 12:29:57', '2022-11-08 12:29:57', 'active', NULL, NULL, NULL, NULL, 'contact'),
(243, 'Kate Trilly', 'katytrilly9@gmail.com', 'katytrilly9@gmail.com', NULL, 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site bhicp.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $239\r\n1-2 minutes = $339\r\n2-3 minutes = $439\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nKate', NULL, NULL, '2022-11-12 08:44:22', '2022-11-12 08:44:22', 'active', NULL, NULL, NULL, NULL, 'contact'),
(244, 'Angela Ball', 'angelaballj774@yahoo.com', 'angelaballj774@yahoo.com', NULL, 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 400-1200+ followers per month.\r\n- Real, human followers: People follow you because they are interested in your business or niche.\r\n- Safe: All actions are made manually. We do not use any bots.\r\n\r\nThe price is just $60 per month, and we can start immediately.\r\n\r\nIf you are interested, and would like to see some of our previous work, let me know and we can discuss further.\r\n\r\nKind Regards,\r\nAngela', NULL, NULL, '2022-11-14 13:22:01', '2022-11-14 13:22:01', 'active', NULL, NULL, NULL, NULL, 'contact'),
(245, 'Glenn Abe', 'abe.glenn@outlook.com', 'abe.glenn@outlook.com', NULL, 'Hi, my name is Glenn Abe. I saw your site bhicp.com while browsing the internet. \r\nI liked it so much that I decided, since you have such a cool site, that you could help me with some advice on my youtube video \r\nhttps://www.youtube.com/watch?v=IbBXoNzfSOw\r\nPlease take your mind off work for a bit and watch it and post in the comments, how much did you like it, what\'s the best thing to fix?\r\nI would be very grateful!', NULL, NULL, '2022-11-15 16:05:53', '2022-11-15 16:05:53', 'active', NULL, NULL, NULL, NULL, 'contact'),
(246, 'Berniece Colechin', 'berniece.colechin@hotmail.com', 'berniece.colechin@hotmail.com', NULL, 'Hi\r\n\r\nI got an enquiry from bhicp.com and Instagram regarding our B2B databases but my email reply bounced so I am contacting you via your website (bhicp.com).\r\n\r\nAs I mentioned in my previous email, you simply need to find your niche and upon purchase, a file with business contact details will be emailed to you. \r\n\r\nHope this helps.\r\n\r\nRegards\r\n\r\nBerniece, Colechin\r\n\r\ncreativebeartech.com', NULL, NULL, '2022-11-15 17:13:50', '2022-11-15 17:13:50', 'active', NULL, NULL, NULL, NULL, 'contact'),
(247, 'Roberta Toombs', 'toombs.roberta@gmail.com', 'toombs.roberta@gmail.com', NULL, 'Hi\r\n\r\nI am an online freelancer specialising in reputation management and public relations. I would be delighted to assist bhicp.com with its online publicity and site traffic. I have prepared a couple of services that are available off-the-shelf: https://www.fiverr.com/lizbeth105\r\n\r\nI look forward to working with bhicp.com\r\n\r\nWarm Regards\r\n\r\nRoberta', NULL, NULL, '2022-11-17 20:15:21', '2022-11-17 20:15:21', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 07:35:40', '2022-11-18 07:35:40', NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'Crystal Kadir', 'stories@shopgiejo.com', 'stories@shopgiejo.com', NULL, 'Hi\r\n\r\nMy name is Johanna Angman and I am contacting you on behalf of Giejo Magazine. Following several recommendations by our readers, we would be delighted to feature bhicp.com in our monthly Spotlight section of the magazine where we talk about entrepreneurs with a view to inspiring others.\r\n\r\nPlease could you send me a unique article detailing the journey of bhicp.com and its founders? This is the structure I am siding towards (it is not hard and fast):\r\n\r\n- Business Name and what it does\r\n- Founder\'s/Owner\'s story and what motivated them to start the business\r\n- The challenges the business/market is facing\r\n- The opportunities the business/market is facing\r\n- Advice to others about business\r\n\r\nIt would be great if you could include images of the founder and the business. Please compress them as much as possible. Videos are also welcome.\r\n\r\nPlease aim to make the article around 1,500 to 2,000 words long to ensure the requisite degree of quality. Ensure that you use proper H2 to H3 headings.\r\n\r\nYou can add up to four do-follow backlinks to your business inside the article. \r\n\r\nThe deadline isn\'t strict but ideally, it\'s within two weeks. The outlet is https://shopgiejo.com/ More than 90% of our audience is based in the US.\r\n\r\nLet me know if you have any questions. \r\n\r\nBest wishes\r\n\r\nJohanna Angman\r\n\r\nGiejo Magazine\r\n433 Plaza Real Suite 339 Suite 339, Boca Raton, FL 33432', NULL, NULL, '2022-11-19 02:03:55', '2022-11-19 02:03:55', 'active', NULL, NULL, NULL, NULL, 'contact'),
(250, 'Andrew Haas', '(828) 493 - 3088', 'freshvendingnc@gmail.com', NULL, 'Interested.  Please contact', NULL, NULL, '2022-11-19 08:58:00', '2022-11-19 08:58:00', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(251, 'Lydia Leak', 'leak.lydia@hotmail.com', 'leak.lydia@hotmail.com', NULL, 'Hello guys\r\n\r\nBy way of introduction, my name is Lydia and I offer very cheap link building services from as low as $5.\r\n\r\nI strongly believe that I can help bhicp.com to increase its Google rankings, traffic and sales.\r\n\r\nYou can learn more and order my services at https://www.fiverr.com/ram1508\r\n\r\nI personally recommend this package: https://bit.ly/3uE4zUv\r\n\r\nFor anyone with a higher budget and a more competitive niche, this one: https://bit.ly/3mlRmMn\r\n\r\nThank you for your time and I look forward to working with you and bhicp.com\r\n\r\nKind regards\r\nLydia Leak\r\nAustralia, TAS, Loorana, 7256, 13 Link Road, (03) 6277 2996', NULL, NULL, '2022-11-20 07:55:56', '2022-11-20 07:55:56', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(252, 'Emil Tisdale', 'emil.tisdale@gmail.com', 'emil.tisdale@gmail.com', NULL, 'Hi\r\n\r\nI got an enquiry from bhicp.com and Instagram regarding our B2B databases but my email reply bounced so I am contacting you via your website (bhicp.com).\r\n\r\nAs I mentioned in my previous email, you simply need to find your niche and upon purchase, a file with business contact details will be emailed to you. \r\n\r\nHope this helps.\r\n\r\nRegards\r\n\r\nEmil, Tisdale\r\n\r\ncreativebeartech.com', NULL, NULL, '2022-11-21 21:47:58', '2022-11-21 21:47:58', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(253, 'PHILIP CORRIHER', '(704) 619 - 7108', 'phil.corriher@colliers.com', NULL, 'Can you share additional information about this site, looking for a National C-Store client, need roughly 2 acres. Thanks\r\n\r\nPhil', NULL, NULL, '2022-11-22 00:01:01', '2022-11-22 00:01:01', 'inactive', NULL, 'website', 'land', '2122 W Maiden Rd', 'enquiry'),
(254, 'Sienna Clements', 'sienna.clements59@googlemail.com', 'sienna.clements59@googlemail.com', NULL, 'Hello\r\n\r\nMy name is Sienna. Recently, I have left my permanent position as an SEO expert at one of the leading SEO agencies in India to work as a freelancer.\r\n\r\nI have found bhicp.com on Instagram\r\n\r\nI ran a quick analysis of bhicp.com and determined that we could boost your domain rating, SERPs and ultimately, your traffic and sales through one of my SEO packages.\r\n\r\nYou can see everything I have to offer here: https://www.fiverr.com/jamshednarayana\r\n\r\nAll of my packages are extremely affordable as I have just started freelancing and want to pass on a good deal for your site.\r\n\r\nThanks for your time and I look forward to ranking bhicp.com on Google :)\r\n\r\nKind regards\r\nSienna Clements', NULL, NULL, '2022-11-22 01:53:41', '2022-11-22 01:53:41', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(255, 'Forrest Hartsock', 'hartsock.forrest@outlook.com', 'hartsock.forrest@outlook.com', NULL, 'Hello guys\r\n\r\nBy way of introduction, my name is Forrest and I offer very cheap link building services from as low as $5.\r\n\r\nI strongly believe that I can help bhicp.com to increase its Google rankings, traffic and sales.\r\n\r\nYou can learn more and order my services at https://www.fiverr.com/ram1508\r\n\r\nI personally recommend this package: https://bit.ly/3uE4zUv\r\n\r\nFor anyone with a higher budget and a more competitive niche, this one: https://bit.ly/3mlRmMn\r\n\r\nThank you for your time and I look forward to working with you and bhicp.com\r\n\r\nKind regards\r\nForrest Hartsock\r\nGermany, BY, Pottmes, 86552, Paderborner Strasse 62, 08253 49 88 88', NULL, NULL, '2022-11-24 05:21:15', '2022-11-24 05:21:15', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(256, 'Roshni Kumari', '08128123123', 'krishnakr82849@gmail.com', NULL, NULL, NULL, NULL, '2022-11-24 12:37:30', '2022-11-24 12:37:30', 'inactive', NULL, NULL, 'land', '2122 W Maiden Rd', 'enquiry'),
(257, 'Roshni Kumari', '08128123123', 'developer.owengraffix@gmail.com', NULL, NULL, NULL, NULL, '2022-11-24 12:40:30', '2022-11-24 12:40:30', 'active', '1100k', 'relative', 'land', '2122 W Maiden Rd', 'enquiry'),
(258, 'Roshni Kumari', '08128123123', 'krishnakr82849@gmail.com', NULL, 'TESTER', NULL, NULL, '2022-11-24 12:44:37', '2022-11-24 12:44:37', 'active', '100', 'friends', 'land', '2122 W Maiden Rd', 'enquiry'),
(259, 'Krishna Kumar', '(828) 491 - 0963', 'developer.owengraffix@gmail.com', NULL, 'tester', NULL, NULL, '2022-11-24 12:45:03', '2022-11-24 12:45:03', 'active', '1000', 'website', 'land', '2122 W Maiden Rd', 'enquiry'),
(260, 'developer', '(828) 491 - 0963', 'developer.owengraffix@gmail.com', NULL, 'tester', NULL, NULL, '2022-11-24 12:47:24', '2022-11-24 12:47:24', 'active', NULL, NULL, NULL, NULL, 'contact'),
(261, 'Krishna Kumar', '(828) 491 - 0963', 'krishnakr82849@gmail.com', NULL, NULL, NULL, NULL, '2022-11-24 13:13:56', '2022-11-24 13:13:56', 'inactive', '2112312', 'relative', 'land', '2122 W Maiden Rd', 'enquiry'),
(262, 'Krishna Kumar', '(828) 491 - 0963', 'developer.owengraffix@gmail.com', NULL, 'tester 0001', NULL, NULL, '2022-11-24 14:54:28', '2022-11-24 14:54:28', 'inactive', '1000', 'website', 'land', '2122 W Maiden Rd', 'enquiry'),
(265, 'Meagan Fullerton', 'meagan.fullerton@hotmail.com', 'meagan.fullerton@hotmail.com', NULL, 'Hi\r\n\r\nI am an online freelancer specialising in reputation management and public relations. I would be delighted to assist bhicp.com with its online publicity and site traffic. I have prepared a couple of services that are available off-the-shelf: https://www.fiverr.com/lizbeth105\r\n\r\nI look forward to working with bhicp.com\r\n\r\nWarm Regards\r\n\r\nMeagan', NULL, NULL, '2022-11-25 00:45:20', '2022-11-25 00:45:20', 'active', NULL, NULL, NULL, NULL, 'contact'),
(266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-26 08:17:57', '2022-11-26 08:17:57', NULL, NULL, NULL, NULL, NULL, NULL),
(267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-26 08:47:39', '2022-11-26 08:47:39', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `submissions` (`id`, `name`, `phone`, `email`, `mail_address`, `message`, `refer_by`, `other`, `created_at`, `updated_at`, `status`, `budgetrange`, `propertysource`, `category`, `property_name`, `slug`) VALUES
(268, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'ericjonesmyemail@gmail.com', NULL, 'My name’s Eric and I just found your site bhicp.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://boostleadgeneration.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=bhicp.com', NULL, NULL, '2022-11-27 04:21:05', '2022-11-27 04:21:05', 'active', NULL, NULL, NULL, NULL, 'contact'),
(269, 'Carlos Venuti', 'carlos.venuti@gmail.com', 'carlos.venuti@gmail.com', NULL, 'Hi\r\n\r\nI am an online freelancer specialising in reputation management and public relations. I would be delighted to assist bhicp.com with its online publicity and site traffic. I have prepared a couple of services that are available off-the-shelf: https://www.fiverr.com/nadine115\r\n\r\nI look forward to working with bhicp.com\r\n\r\nWarm Regards\r\n\r\nCarlos', NULL, NULL, '2022-11-27 12:28:09', '2022-11-27 12:28:09', 'active', NULL, NULL, NULL, NULL, 'contact'),
(270, 'Vernon Tuckfield', 'info@dranitadhunna.com', 'info@dranitadhunna.com', NULL, 'Hello Sir!\r\n\r\nI working for Bizcope SEO company in Bangladesh. My client needing backlinks urgently. So sir, I requesting that you give me a do follow, permanent backlink on your blog. When you are done, please sending me email to confirming. Here is my client website:\r\n\r\nhttps://greenroads.com/collections/cbd-edibles-gummies\r\n\r\nPlz also creating a 5 star GMB and Trust Pilot reviewings too.\r\n\r\nIf I do not seeing a backlink in one week, I am create million toxic blog comment spam and redirect backlink to bhicp.com and you can saying goodbye to your Google rankings for 1 year or more.\r\n\r\nI trust you making correct decision Sir. I giving you 7 days. If I getting link from you, I will also add a back-link to bhicp.com on https://purekana.com/collections/cbd-gummies/\r\n\r\nBest wishes from sunny Bangladesh\r\n\r\nDusyanthan Balasubramanian\r\n\r\nBizcope | SEO, Web Design & Digital Marketing Company\r\nAddress: 89/7 Gopibag Biswa Road, Nadian Tower, Level 3 Dhaka, 1203, Bangladesh', NULL, NULL, '2022-11-27 12:47:02', '2022-11-27 12:47:02', 'active', NULL, NULL, NULL, NULL, 'contact'),
(271, 'Bernardo Sousa', 'ellis.cory@googlemail.com', 'ellis.cory@googlemail.com', NULL, 'Hi there!\r\nI\'m writing to let you know about an incredible new AI tool that can help with various tasks related to website copywriting and SEO.\r\nIt\'s been used by some of the biggest companies in the world, such as Airbnb and google.\r\nSo if you\'re looking for a powerful tool to help take your website to the next level, this is definitely worth considering! Plus, to make things even better, I\'m giving away 10,000 words for free so that you can try it out for yourself.\r\nTo get 10k words, just go to https://www.aiwritingmachine.com/', NULL, NULL, '2022-11-28 21:26:10', '2022-11-28 21:26:10', 'active', NULL, NULL, NULL, NULL, 'contact'),
(272, 'Grant Trick', '(205) 344 - 3401', 'grant@granttrick.com', NULL, 'Hello-I left a VM earlier today, I am very interested in this property.\r\nI am relocating my business to North Carolina, and I would be interested in leasing this space potentially for up to a year.  \r\nI would really appreciate it if I could see it in person this upcoming Thursday, December 1st while I am in town.  Please call me as soon as you can, thank you!', NULL, NULL, '2022-11-29 02:25:13', '2022-11-29 02:25:13', 'active', '$1,000 a month', 'website', 'lease', '2311 John Bowman Road', 'enquiry'),
(273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-29 16:09:54', '2022-11-29 16:09:54', NULL, NULL, NULL, NULL, NULL, NULL),
(274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-29 16:23:14', '2022-11-29 16:23:14', NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'Elise Burch', 'burch.elise58@yahoo.com', 'burch.elise58@yahoo.com', NULL, 'You have been directed to a youtube video for compulsory viewing:\r\nhttps://youtu.be/Un-ZppjTeRo\r\nCareful, it\'s too hot!', NULL, NULL, '2022-12-01 00:35:22', '2022-12-01 00:35:22', 'active', NULL, NULL, NULL, NULL, 'contact'),
(277, 'Elma Goshorn', 'info@claphamskinclinic.co.uk', 'info@claphamskinclinic.co.uk', NULL, 'where is my google business review as promised you lazy cunt :D\r\n\r\nElma, Goshorn\r\n\r\nhttps://www.juveaaesthetics.com', NULL, NULL, '2022-12-01 21:55:58', '2022-12-01 21:55:58', 'active', NULL, NULL, NULL, NULL, 'contact'),
(278, 'Hugo Bunn', 'hugo.bunn@hotmail.com', 'hugo.bunn@hotmail.com', NULL, 'Check out\r\nhttps://youtu.be/2moKdVNGy7Q', NULL, NULL, '2022-12-02 14:51:46', '2022-12-02 14:51:46', 'active', NULL, NULL, NULL, NULL, 'contact'),
(279, 'Jett Stjohn', 'hello@simone.co.uk', 'hello@simone.co.uk', NULL, 'We are pleased to let you know that we are going to be sending a large convoy to Ukraine to support Russian troops in helping to bring democracy to Ukraine following its fascist tendencies. No donation is too small.\r\n\r\nJett, Stjohn\r\n\r\nWhatsApp 07453 302 810\r\n\r\nLandline: +44203 769 1264\r\n\r\nGoogle My Business: https://goo.gl/maps/45VVGrKJkWjc8FCM9\r\n\r\nWebsite: https://simone.co.uk/', NULL, NULL, '2022-12-02 19:09:26', '2022-12-02 19:09:26', 'inactive', NULL, NULL, NULL, NULL, 'contact'),
(280, 'Lynette Miller', '(704) 836 - 6848', 'nettiefacebook@yahoo.com', NULL, 'Is this available? interested in a skincare spa business. The layout is good.', NULL, NULL, '2022-12-03 07:23:13', '2022-12-03 07:23:13', 'active', NULL, NULL, NULL, NULL, 'contact'),
(281, 'Bebe Painter', 'info@dermexgroup.com', 'info@dermexgroup.com', NULL, 'Why did you leave a negative google my business review you fucking retard. You could of just called us to rectify the problem instead of jumping to leave a review.\r\n\r\nBebe, Painter\r\n\r\nhttps://www.cosmedocs.com', NULL, NULL, '2022-12-04 19:45:30', '2022-12-04 19:45:30', 'active', NULL, NULL, NULL, NULL, 'contact'),
(282, 'Mamie Partain', 'mamie.partain@gmail.com', 'mamie.partain@gmail.com', NULL, 'Practical lessons + frame-by-frame analysis of popular Stories, Reels, and TikTok videos!\r\n\r\n- See how the videos are filmed\r\n- Learn how to edit each video like a pro \r\n- Learn how to create all the popular tricks and effects that are trending on Instagram and TikTok\r\n- Create amazing content for Instagram and TikTok\r\n\r\nhttp://webaronman.space\r\n\r\nJust follow Reels and TikTok trends with us and hit the recommendations!\r\n\r\nWhat do you get?\r\n- Expertise Library\r\n- Step-by-step instructions\r\n- Analysing trending videos\r\n- Chat for members only\r\n- Practical knowledge\r\n- Techniques\r\n- User-friendly format\r\n\r\nhttp://webaronman.space', NULL, NULL, '2022-12-05 14:27:39', '2022-12-05 14:27:39', 'active', NULL, NULL, NULL, NULL, 'contact'),
(283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-10 09:06:45', '2022-12-10 09:06:45', NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'Justin McCarty', 'justinmccarty@mailerking.xyz', 'justinmccarty@mailerking.xyz', NULL, 'Hello,\r\n\r\nWondering if you accept link inserts on existing posts on bhicp.com?\r\n\r\nHow much would you charge for this?\r\n\r\nAlso, do you have any other sites for link inserts?\r\n\r\nJustin\r\n\r\nIf you\'d like to unsubscribe click the following link.\r\n\r\nhttps://mailerking.xyz/optout/?site=bhicp.com', NULL, NULL, '2022-12-13 12:05:35', '2022-12-13 12:05:35', 'active', NULL, NULL, NULL, NULL, 'contact'),
(285, 'Tommy Miner', 'miner.tommy10@yahoo.com', 'miner.tommy10@yahoo.com', NULL, 'Hi there!\r\nI\'m writing to let you know about an incredible new AI tool that can help with various tasks related to website copywriting and SEO.\r\nIt\'s been used by some of the biggest companies in the world, such as Airbnb and google.\r\nSo if you\'re looking for a powerful tool to help take your website to the next level, this is definitely worth considering! Plus, to make things even better, I\'m giving away 10,000 words for free so that you can try it out for yourself.\r\nTo get 10k words, just go to https://www.aiwritingmeta.com/', NULL, NULL, '2022-12-14 13:43:53', '2022-12-14 13:43:53', 'active', NULL, NULL, NULL, NULL, 'contact'),
(286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-15 11:37:46', '2022-12-15 11:37:46', NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'ericjonesmyemail@gmail.com', NULL, 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at bhicp.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=bhicp.com', NULL, NULL, '2022-12-16 05:06:39', '2022-12-16 05:06:39', 'active', NULL, NULL, NULL, NULL, 'contact'),
(288, 'Casimira Hailes', 'casimira.hailes11@hotmail.com', 'casimira.hailes11@hotmail.com', NULL, 'Hi there!\r\nI\'m writing to let you know about an incredible new AI tool that can help with various tasks related to website copywriting and SEO.\r\nIt\'s been used by some of the biggest companies in the world, such as Airbnb and Microsoft.\r\nSo if you\'re looking for a powerful tool to help take your website to the next level, this is definitely worth considering! Plus, to make things even better, I\'m giving away 10,000 words for free so that you can try it out for yourself.\r\nTo get 10k words, just go to https://www.aiwritingmeta.com/', NULL, NULL, '2022-12-17 06:55:55', '2022-12-17 06:55:55', 'active', NULL, NULL, NULL, NULL, 'contact'),
(289, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-17 12:46:13', '2022-12-17 12:46:13', NULL, NULL, NULL, NULL, NULL, NULL),
(290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-17 13:02:44', '2022-12-17 13:02:44', NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'eric.jones.z.mail@gmail.com', NULL, 'My name’s Eric and I just found your site bhicp.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://boostleadgeneration.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=bhicp.com', NULL, NULL, '2022-12-21 01:12:58', '2022-12-21 01:12:58', 'active', NULL, NULL, NULL, NULL, 'contact'),
(292, 'Joshua Arias', 'joshua@mailerking.xyz', 'joshua@mailerking.xyz', NULL, 'Hi,\r\n\r\nI\'ll keep this short and to the point. I\'d like to pay you to post a link to one of my  legitmate client\'s website. I\'ll pay you directly through paypal.\r\n\r\nJoshua\r\n\r\nIf you don\'t want to hear from me again click this link.\r\n\r\nhttps://mailerking.xyz/optout/?site=bhicp.com', NULL, NULL, '2022-12-22 05:50:01', '2022-12-22 05:50:01', 'active', NULL, NULL, NULL, NULL, 'contact'),
(293, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-23 22:22:51', '2022-12-23 22:22:51', NULL, NULL, NULL, NULL, NULL, NULL),
(294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-26 14:42:15', '2022-12-26 14:42:15', NULL, NULL, NULL, NULL, NULL, NULL),
(295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-29 18:43:43', '2022-12-29 18:43:43', NULL, NULL, NULL, NULL, NULL, NULL),
(296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-29 19:04:49', '2022-12-29 19:04:49', NULL, NULL, NULL, NULL, NULL, NULL),
(297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-30 20:43:15', '2022-12-30 20:43:15', NULL, NULL, NULL, NULL, NULL, NULL),
(298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-02 17:18:55', '2023-01-02 17:18:55', NULL, NULL, NULL, NULL, NULL, NULL),
(299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-02 17:37:44', '2023-01-02 17:37:44', NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'Tandy Elias', 'seosubmitter@mail.com', 'seosubmitter@mail.com', NULL, 'You need help to Grow In Google Search and Drive More Traffic and Get More Customers\r\n\r\nWe Offer Quality SEO Services You Can Trust\r\n\r\nWe even offer Free Trial just to prove to you that our services work with Risk-Free.\r\n\r\n=>>  https://zeep.ly/seo2023\r\n \r\nThanks, \r\nElias\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n  \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n  \r\n \r\n \r\n \r\n \r\n\r\n\r\n\r\n \r\n \r\n \r\n  \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\nGreat Britain, NA, Earl Sterndale, Sk17 6tn, 16 Hindhead Road\r\n \r\nTo stop any further communication through your website form, Please reply with subject: unsubscribe bhicp.com', NULL, NULL, '2023-01-04 15:03:50', '2023-01-04 15:03:50', 'active', NULL, NULL, NULL, NULL, 'contact'),
(301, 'Justina Monte', 'justina.monte@gmail.com', 'justina.monte@gmail.com', NULL, 'Hello, bhicp.com Did you know that people do 8.5 billion searches on\r\nGoogle every day? That’s why it’s important to rank your website on the\r\nFirst Page of Google?\r\nSo to rank your website #1 on google you need to take care of:\r\n\r\n1-Technical S E O Audit\r\n2-Keyword Research\r\n3-Competitor Research\r\n4-Finding backlinks opportunities\r\n5-Local Optimization of the site (On-Page S E O)\r\n6-Build Backlinks (Off-Page S E O)\r\n7-Build Local S E O Citations\r\n\r\nDon’t worry you don’t have to do anything you can hire someone to do it for you\r\nYou can get +1,000 visitors to your website every day\r\n\r\nyou can try it from here: http://fiverrseoer.com/\r\n\r\nI hope you will enjoy it.', NULL, NULL, '2023-01-07 13:00:55', '2023-01-07 13:00:55', 'active', NULL, NULL, NULL, NULL, 'contact'),
(302, 'Elon Rosales', 'lindsey.rosales@googlemail.com', 'lindsey.rosales@googlemail.com', NULL, 'Hello bhicp.com Webmaster.\r\n\r\nIt\'s Elon here. We just helped business like yours 10X their monthly revenue with AI in December.\r\n\r\nWould love to do the same for you..\r\n\r\nIf you think you got some minute to know what it\'s all about\r\n\r\nPlease check the video in here >>> https://bit.ly/gmbsnapx\r\n\r\nRegards', NULL, NULL, '2023-01-07 16:52:00', '2023-01-07 16:52:00', 'active', NULL, NULL, NULL, NULL, 'contact'),
(303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-09 07:37:44', '2023-01-09 07:37:44', NULL, NULL, NULL, NULL, NULL, NULL),
(304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-09 07:49:46', '2023-01-09 07:49:46', NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'Christina Henderson', 'christinahendersones6@gmail.com', 'christinahendersones6@gmail.com', NULL, 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 400-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you\'d like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nChristina', NULL, NULL, '2023-01-11 01:58:11', '2023-01-11 01:58:11', 'active', NULL, NULL, NULL, NULL, 'contact'),
(306, 'Hye Dias', 'hye.dias@yahoo.com', 'hye.dias@yahoo.com', NULL, 'Hi bhicp.com Administrator!\r\n\r\nHi, It seems your website is not ranking that well, so you are losing sales. \r\n\r\nPlus when I looked at your site, it could use more content that sells, which means you missing even more sales.\r\n\r\nFortunately, there is a new AI bot that can write the content for you for your site, and it\'s fully optimized to increase your ranking as well, so you get double the sales effort!\r\n\r\nYou can see the magic of AI in a video here: =>>  https://zeep.ly/zePEY\r\n\r\nThanks,\r\nHye\r\n  \r\n  \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n\r\nTo stop receiving such offers, simply reply to this email...', NULL, NULL, '2023-01-13 15:29:16', '2023-01-13 15:29:16', 'active', NULL, NULL, NULL, NULL, 'contact'),
(307, 'Juan Main', 'main.juan26@outlook.com', 'main.juan26@outlook.com', NULL, 'Hello, I was interested in your services. To be exact in this. Description in file below https://onlinesalesolutions.com Tell me please how much it\'s gonna cost for me? Thanks.', NULL, NULL, '2023-01-13 21:58:13', '2023-01-13 21:58:13', 'active', NULL, NULL, NULL, NULL, 'contact'),
(308, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'ericjonesmyemail@gmail.com', NULL, 'Hi, my name is Eric and I’m betting you’d like your website bhicp.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at bhicp.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://boostleadgeneration.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=bhicp.com', NULL, NULL, '2023-01-14 21:09:32', '2023-01-14 21:09:32', 'active', NULL, NULL, NULL, NULL, 'contact'),
(309, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'ericjonesmyemail@gmail.com', NULL, 'My name’s Eric and I just found your site bhicp.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://boostleadgeneration.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=bhicp.com', NULL, NULL, '2023-01-16 03:50:54', '2023-01-16 03:50:54', 'active', NULL, NULL, NULL, NULL, 'contact'),
(310, 'Jenni Brogan', 'brogan.jenni@gmail.com', 'brogan.jenni@gmail.com', NULL, 'Dear bhicp.com Webmaster.\r\n\r\nHow are you doing? \r\n\r\nAs i came through your website, i thought you might be looking for suggestions on growing your business.\r\n\r\nFree Video Reveals Step-By-Step Blueprint For Obtaining Bank Funding To Grow Your Business: https://www.xoxourl.com/videopresentation\r\n\r\nThank me later.\r\n\r\nCheers', NULL, NULL, '2023-01-16 16:50:27', '2023-01-16 16:50:27', 'active', NULL, NULL, NULL, NULL, 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `status` text DEFAULT NULL,
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
  `role` enum('Admin','Manager','User') DEFAULT NULL,
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
  `reporting_to` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `api_token` varchar(60) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL,
  `status` enum('New','Active','Suspended','Locked') DEFAULT 'New',
  `email_verified_at` datetime DEFAULT '2020-02-05 00:00:00',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `upload_folder` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `verifyid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `reporting_to`, `name`, `email`, `password`, `api_token`, `remember_token`, `sex`, `dob`, `designation`, `mobile`, `phone`, `address`, `street`, `city`, `district`, `state`, `country`, `photo`, `web`, `permissions`, `status`, `email_verified_at`, `user_id`, `user_type`, `upload_folder`, `deleted_at`, `created_at`, `updated_at`, `team_id`, `images`, `verifyid`) VALUES
(3, 0, 'Admin', 'owengraffix@gmail.com', '$2y$10$pZS235QSWRlqZRW7TNPQDuL/R9dEubt6FSy1CTr2jfHpw6zgfvDxm', 'maZXsKAakqpJJHQcD2QsODuEEdG7sdOus9PyoTeD37yclAzJkexxQmMELI92', NULL, 'male', '2020-08-04', 'Super User', '704-253-3502', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image/originaluser/user/2020/05/16/102035443/photo/profile.png', NULL, '{\"block.block\":\"1\",\"0\":\"2\",\"1\":\"4\",\"2\":\"3\",\"3\":\"1\",\"block.category\":\"1\",\"4\":\"6\",\"5\":\"8\",\"6\":\"7\",\"7\":\"5\",\"contact.contact\":\"1\",\"8\":\"10\",\"9\":\"12\",\"10\":\"11\",\"11\":\"9\",\"page.page\":\"1\",\"12\":\"14\",\"13\":\"16\",\"14\":\"15\",\"15\":\"13\"}', 'Active', '2020-02-05 00:00:00', 1, NULL, NULL, NULL, '2020-02-03 20:48:55', '2021-04-02 13:01:25', NULL, '1600670342.png', NULL),
(4, 0, 'Barrett', 'barrett@bhicp.com', '$2y$10$aqhUFXZpCQzWHTIXyz7L2OIoMjfIUjwcGVy7Ilnu3UWJCDhdKZKwC', 'H0gLwzQBo0azxAFndWuQwhDv3kzANZA4VH1ooY2s4DETGzCMYBApkfBItJwR', NULL, 'male', NULL, 'Super User', '828-234-5907', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"block.block\":\"1\",\"0\":\"1\",\"block.category\":\"1\",\"contact.contact\":\"1\",\"page.page\":\"1\"}', 'New', '2020-02-05 00:00:00', 3, NULL, NULL, NULL, '2020-09-10 17:24:34', '2021-04-02 13:01:44', NULL, '1600687230.png', NULL),
(5, 0, 'Gavin', 'gavin@bhicp.com', '$2y$10$Pbt46C0upZ8WDn3vtKuuQ.f7Gz5JzwwZlGpo.G8PRsHmR5L3veS6m', 'OVvZjC12HIB5zM19nOrMYGVtklwdp2bq4FIpbZdGXFhF4rmeiIxtiWSgbjvi', NULL, NULL, NULL, 'Super User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"block.block\":\"1\",\"0\":\"1\",\"block.category\":\"1\",\"contact.contact\":\"1\",\"page.page\":\"1\"}', 'New', '2020-02-05 00:00:00', 3, NULL, NULL, NULL, '2020-09-10 17:28:45', '2020-09-10 22:18:00', NULL, '1600687424.png', NULL),
(6, 1, 'Melissa', 'Melissa@bhicp.com', '$2y$10$v1lwGQf.Msv/MPDPm29aw.MgV84g3JFzNLEpgJN1bs/xMkMj9hdVu', 'I5Faxo7eUZlfPL3zRIS6PRQFOm0oUkI860VFgVi4070FoB5cUxSxoa1DDDOn', NULL, NULL, NULL, 'Super User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'New', '2020-02-05 00:00:00', 3, NULL, NULL, NULL, '2020-09-11 12:04:08', '2022-04-01 23:01:36', NULL, '1600687266.png', NULL),
(7, 0, 'Ashtyn', 'ashtyn@bhicp.com', '$2y$10$XO5vbLftkrm18vBXspulS.gXU4v0T.u/hyooxCZL6b.NPeszwnTHm', 'tbFT3G6wxlIK6HBIeDqEoG0QFYBDLCw2uFK6YugegF6z9EqeLssniz66bmTi', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'New', '2020-02-05 00:00:00', 3, NULL, NULL, NULL, '2020-12-29 19:56:28', '2020-12-29 19:57:23', NULL, NULL, 'ash1658506815'),
(8, 0, 'Developer', 'developer.owengraffix@gmail.com', '$2y$10$0FjvLFqyg.9scD0H1G/dwOE.iOow6N9exK2O8Ztl8rQY8Ps2FedFe', 'bqYeMWOh87Bzim8hkqW4lxUV5zD1tItnzT8wYatKPSWvnE8Gvd6bBff0EsvX', NULL, 'male', NULL, 'Master', '8284910963', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'New', '2020-02-05 00:00:00', 3, NULL, NULL, NULL, '2021-06-22 13:40:05', '2021-06-22 13:40:05', NULL, NULL, 'dev1646884843'),
(9, 0, 'Monica', 'monica@bhicp.com', '$2y$10$bNzE4tDpXE/J1kxqm5wAZu2oOzIENSzqP5MPbKo0CBFhpFX.9EBAm', 'rjaD9J3qQR22McCsmxvKxuuuzSgN7AcL1cE57we01ErmrQDvuqknjyjLeU1u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"block\":\"1\",\"block.block\":\"1\",\"0\":\"2\",\"1\":\"4\",\"2\":\"3\",\"3\":\"1\",\"block.category\":\"1\",\"4\":\"6\",\"5\":\"8\",\"6\":\"7\",\"7\":\"5\",\"contact\":\"1\",\"contact.contact\":\"1\",\"8\":\"10\",\"9\":\"12\",\"10\":\"11\",\"11\":\"9\",\"page\":\"1\",\"page.page\":\"1\",\"12\":\"14\",\"13\":\"16\",\"14\":\"15\",\"15\":\"13\"}', 'New', '2020-02-05 00:00:00', 3, NULL, NULL, NULL, '2022-04-04 19:22:50', '2022-04-04 19:22:50', NULL, NULL, NULL);

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
-- Indexes for table `notification`
--
ALTER TABLE `notification`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `header_script`
--
ALTER TABLE `header_script`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `quick_forms`
--
ALTER TABLE `quick_forms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
