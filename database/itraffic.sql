-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-06-02 00:36:29
-- 服务器版本： 5.6.36-log
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itraffic`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_menu`
--

CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, '主页', 'fa-dashboard', '/', NULL, '2018-05-05 06:24:24'),
(2, 0, 11, '设置', 'fa-tasks', NULL, NULL, '2018-06-01 03:35:46'),
(3, 2, 12, 'Users', 'fa-users', 'auth/users', NULL, '2018-06-01 03:35:46'),
(4, 2, 13, 'Roles', 'fa-user', 'auth/roles', NULL, '2018-06-01 03:35:46'),
(5, 2, 14, 'Permission', 'fa-ban', 'auth/permissions', NULL, '2018-06-01 03:35:46'),
(6, 2, 15, '菜单', 'fa-bars', 'auth/menu', NULL, '2018-06-01 03:35:47'),
(7, 2, 16, 'Operation log', 'fa-history', 'auth/logs', NULL, '2018-06-01 03:35:47'),
(8, 0, 2, '用户管理', 'fa-user', 'users', '2018-05-05 05:47:01', '2018-05-05 06:26:33'),
(9, 0, 4, '驾驶证信息管理', 'fa-sticky-note', 'DriversLicense', '2018-05-05 07:43:49', '2018-05-05 14:13:08'),
(10, 0, 3, '交规宣传栏管理', 'fa-clipboard', 'news', '2018-05-05 14:12:55', '2018-05-06 03:41:50'),
(11, 0, 5, '行驶证信息管理', 'fa-automobile', '/DrivingLicense', '2018-05-07 04:39:50', '2018-05-07 04:41:30'),
(12, 0, 6, '违章信息管理', 'fa-calculator', 'Illegal', '2018-05-09 01:54:52', '2018-05-09 04:37:31'),
(14, 0, 7, '准考证管理', 'fa-file-text-o', '/Admission', '2018-06-01 03:16:28', '2018-06-01 03:27:49'),
(15, 0, 8, '换证管理', 'fa-phone', 'Change', '2018-06-01 03:33:53', '2018-06-01 03:34:03'),
(16, 0, 9, '安检预约管理', 'fa-hospital-o', 'Check', '2018-06-01 03:35:36', '2018-06-01 03:35:46');

-- --------------------------------------------------------

--
-- 表的结构 `admin_operation_log`
--

CREATE TABLE IF NOT EXISTS `admin_operation_log` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=868 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 03:10:09', '2018-05-05 03:10:09'),
(2, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:10:46', '2018-05-05 03:10:46'),
(3, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{"name":"Administrator","password":"$2y$10$mertv33RVch53qdsJ4YKcuNSZxqj\\/wy5N0LMM2vqlEoAu5.ozGMu2","password_confirmation":"$2y$10$mertv33RVch53qdsJ4YKcuNSZxqj\\/wy5N0LMM2vqlEoAu5.ozGMu2","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin"}', '2018-05-05 03:11:34', '2018-05-05 03:11:34'),
(4, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-05-05 03:11:35', '2018-05-05 03:11:35'),
(5, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{"name":"Administrator","password":"$2y$10$mertv33RVch53qdsJ4YKcuNSZxqj\\/wy5N0LMM2vqlEoAu5.ozGMu2","password_confirmation":"$2y$10$mertv33RVch53qdsJ4YKcuNSZxqj\\/wy5N0LMM2vqlEoAu5.ozGMu2","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT"}', '2018-05-05 03:21:50', '2018-05-05 03:21:50'),
(6, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-05-05 03:21:51', '2018-05-05 03:21:51'),
(7, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:21:59', '2018-05-05 03:21:59'),
(8, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-05-05 03:22:03', '2018-05-05 03:22:03'),
(9, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:22:10', '2018-05-05 03:22:10'),
(10, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:22:13', '2018-05-05 03:22:13'),
(11, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:22:32', '2018-05-05 03:22:32'),
(12, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 03:22:36', '2018-05-05 03:22:36'),
(13, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:22:41', '2018-05-05 03:22:41'),
(14, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:23:27', '2018-05-05 03:23:27'),
(15, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 03:23:34', '2018-05-05 03:23:34'),
(16, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:23:39', '2018-05-05 03:23:39'),
(17, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 03:23:57', '2018-05-05 03:23:57'),
(18, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:24:01', '2018-05-05 03:24:01'),
(19, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{"name":"Administrator","password":"$2y$10$mertv33RVch53qdsJ4YKcuNSZxqj\\/wy5N0LMM2vqlEoAu5.ozGMu2","password_confirmation":"$2y$10$mertv33RVch53qdsJ4YKcuNSZxqj\\/wy5N0LMM2vqlEoAu5.ozGMu2","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin"}', '2018-05-05 03:24:10', '2018-05-05 03:24:10'),
(20, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-05-05 03:24:11', '2018-05-05 03:24:11'),
(21, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:24:17', '2018-05-05 03:24:17'),
(22, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-05-05 03:31:50', '2018-05-05 03:31:50'),
(23, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:31:55', '2018-05-05 03:31:55'),
(24, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{"name":"\\u9646\\u5189\\u94a6","password":"$2y$10$mertv33RVch53qdsJ4YKcuNSZxqj\\/wy5N0LMM2vqlEoAu5.ozGMu2","password_confirmation":"$2y$10$mertv33RVch53qdsJ4YKcuNSZxqj\\/wy5N0LMM2vqlEoAu5.ozGMu2","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT"}', '2018-05-05 03:32:05', '2018-05-05 03:32:05'),
(25, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-05-05 03:32:07', '2018-05-05 03:32:07'),
(26, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-05-05 03:32:21', '2018-05-05 03:32:21'),
(27, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:32:31', '2018-05-05 03:32:31'),
(28, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:32:52', '2018-05-05 03:32:52'),
(29, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:32:53', '2018-05-05 03:32:53'),
(30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:33:02', '2018-05-05 03:33:02'),
(31, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 03:33:05', '2018-05-05 03:33:05'),
(32, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 04:53:37', '2018-05-05 04:53:37'),
(33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 05:10:52', '2018-05-05 05:10:52'),
(34, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 05:10:58', '2018-05-05 05:10:58'),
(35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 05:35:35', '2018-05-05 05:35:35'),
(36, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 05:43:56', '2018-05-05 05:43:56'),
(37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 05:44:00', '2018-05-05 05:44:00'),
(38, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 05:44:12', '2018-05-05 05:44:12'),
(39, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 05:44:15', '2018-05-05 05:44:15'),
(40, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 05:44:26', '2018-05-05 05:44:26'),
(41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 05:44:37', '2018-05-05 05:44:37'),
(42, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u7528\\u6237\\u7ba1\\u7406","icon":"fa-user","uri":"users","roles":["1",null],"_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP"}', '2018-05-05 05:47:01', '2018-05-05 05:47:01'),
(43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 05:47:02', '2018-05-05 05:47:02'),
(44, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 05:47:14', '2018-05-05 05:47:14'),
(45, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 05:47:19', '2018-05-05 05:47:19'),
(46, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 05:49:24', '2018-05-05 05:49:24'),
(47, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 05:49:46', '2018-05-05 05:49:46'),
(48, 1, 'admin/users', 'GET', '127.0.0.1', '{"_export_":"all"}', '2018-05-05 05:50:08', '2018-05-05 05:50:08'),
(49, 1, 'admin/users', 'GET', '127.0.0.1', '{"id":null,"created_at":{"start":"2018-05-01 00:00:00","end":"2018-05-31 00:00:00"},"_pjax":"#pjax-container"}', '2018-05-05 05:51:07', '2018-05-05 05:51:07'),
(50, 1, 'admin/users/12353/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 05:53:09', '2018-05-05 05:53:09'),
(51, 1, 'admin/users', 'GET', '127.0.0.1', '{"id":null,"created_at":{"start":"2018-05-01 00:00:00","end":"2018-05-31 00:00:00"},"_pjax":"#pjax-container"}', '2018-05-05 05:53:15', '2018-05-05 05:53:15'),
(52, 1, 'admin/users/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 05:53:42', '2018-05-05 05:53:42'),
(53, 1, 'admin/users', 'GET', '127.0.0.1', '{"id":null,"created_at":{"start":"2018-05-01 00:00:00","end":"2018-05-31 00:00:00"},"_pjax":"#pjax-container"}', '2018-05-05 05:53:57', '2018-05-05 05:53:57'),
(54, 1, 'admin/users', 'GET', '127.0.0.1', '{"id":null,"created_at":{"start":"2018-05-01 00:00:00","end":"2018-05-31 00:00:00"}}', '2018-05-05 05:54:25', '2018-05-05 05:54:25'),
(55, 1, 'admin/users', 'GET', '127.0.0.1', '{"id":null,"created_at":{"start":"2018-05-01 00:00:00","end":"2018-05-31 00:00:00"}}', '2018-05-05 06:05:22', '2018-05-05 06:05:22'),
(56, 1, 'admin/users', 'GET', '127.0.0.1', '{"id":null,"created_at":{"start":"2018-05-01 00:00:00","end":"2018-05-31 00:00:00"}}', '2018-05-05 06:06:25', '2018-05-05 06:06:25'),
(57, 1, 'admin/users', 'GET', '127.0.0.1', '{"id":null,"created_at":{"start":"2018-05-01 00:00:00","end":"2018-05-31 00:00:00"},"_pjax":"#pjax-container"}', '2018-05-05 06:06:53', '2018-05-05 06:06:53'),
(58, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:07:04', '2018-05-05 06:07:04'),
(59, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:07:22', '2018-05-05 06:07:22'),
(60, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:07:24', '2018-05-05 06:07:24'),
(61, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:08:43', '2018-05-05 06:08:43'),
(62, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:08:48', '2018-05-05 06:08:48'),
(63, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:08:54', '2018-05-05 06:08:54'),
(64, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:08:57', '2018-05-05 06:08:57'),
(65, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:08:58', '2018-05-05 06:08:58'),
(66, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:09:03', '2018-05-05 06:09:03'),
(67, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 06:10:35', '2018-05-05 06:10:35'),
(68, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 06:11:30', '2018-05-05 06:11:30'),
(69, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:11:38', '2018-05-05 06:11:38'),
(70, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:11:43', '2018-05-05 06:11:43'),
(71, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:11:45', '2018-05-05 06:11:45'),
(72, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:11:47', '2018-05-05 06:11:47'),
(73, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:11:55', '2018-05-05 06:11:55'),
(74, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:12:03', '2018-05-05 06:12:03'),
(75, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:19:09', '2018-05-05 06:19:09'),
(76, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:19:16', '2018-05-05 06:19:16'),
(77, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 06:19:29', '2018-05-05 06:19:29'),
(78, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 06:22:21', '2018-05-05 06:22:21'),
(79, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 06:23:21', '2018-05-05 06:23:21'),
(80, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:23:34', '2018-05-05 06:23:34'),
(81, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:23:40', '2018-05-05 06:23:40'),
(82, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:23:46', '2018-05-05 06:23:46'),
(83, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u4e3b\\u9875","icon":"fa-dashboard","uri":"\\/","roles":[null],"_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu"}', '2018-05-05 06:24:23', '2018-05-05 06:24:23'),
(84, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 06:24:25', '2018-05-05 06:24:25'),
(85, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 06:24:29', '2018-05-05 06:24:29'),
(86, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:24:34', '2018-05-05 06:24:34'),
(87, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:24:43', '2018-05-05 06:24:43'),
(88, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:25:13', '2018-05-05 06:25:13'),
(89, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:25:25', '2018-05-05 06:25:25'),
(90, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:25:31', '2018-05-05 06:25:31'),
(91, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u8bbe\\u7f6e","icon":"fa-tasks","uri":null,"roles":["1",null],"_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu"}', '2018-05-05 06:26:05', '2018-05-05 06:26:05'),
(92, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 06:26:07', '2018-05-05 06:26:07'),
(93, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 06:26:12', '2018-05-05 06:26:12'),
(94, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_order":"[{\\"id\\":1},{\\"id\\":8},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2018-05-05 06:26:32', '2018-05-05 06:26:32'),
(95, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:26:35', '2018-05-05 06:26:35'),
(96, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 06:26:39', '2018-05-05 06:26:39'),
(97, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:27:01', '2018-05-05 06:27:01'),
(98, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:27:02', '2018-05-05 06:27:02'),
(99, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:27:17', '2018-05-05 06:27:17'),
(100, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:27:22', '2018-05-05 06:27:22'),
(101, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:27:30', '2018-05-05 06:27:30'),
(102, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:27:32', '2018-05-05 06:27:32'),
(103, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:27:36', '2018-05-05 06:27:36'),
(104, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:28:18', '2018-05-05 06:28:18'),
(105, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 06:33:05', '2018-05-05 06:33:05'),
(106, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 06:35:46', '2018-05-05 06:35:46'),
(107, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 06:36:16', '2018-05-05 06:36:16'),
(108, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:36:24', '2018-05-05 06:36:24'),
(109, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:36:35', '2018-05-05 06:36:35'),
(110, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:36:37', '2018-05-05 06:36:37'),
(111, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:36:40', '2018-05-05 06:36:40'),
(112, 1, 'admin/users/12348/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:36:43', '2018-05-05 06:36:43'),
(113, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:36:47', '2018-05-05 06:36:47'),
(114, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:37:45', '2018-05-05 06:37:45'),
(115, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:37:51', '2018-05-05 06:37:51'),
(116, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:40:20', '2018-05-05 06:40:20'),
(117, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-05 06:42:40', '2018-05-05 06:42:40'),
(118, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-05 06:42:54', '2018-05-05 06:42:54'),
(119, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-05 06:44:10', '2018-05-05 06:44:10'),
(120, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:44:18', '2018-05-05 06:44:18'),
(121, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:44:20', '2018-05-05 06:44:20'),
(122, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:44:23', '2018-05-05 06:44:23'),
(123, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:44:25', '2018-05-05 06:44:25'),
(124, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:46:24', '2018-05-05 06:46:24'),
(125, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-05 06:46:44', '2018-05-05 06:46:44'),
(126, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-05 06:48:27', '2018-05-05 06:48:27'),
(127, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-05 06:48:35', '2018-05-05 06:48:35'),
(128, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{"name":"lrq","real_name":"\\u9646\\u5189\\u94a6","sex":"\\u7537","identity":"320585199601081616","phone":"13301611706","pass":["1",null],"_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT"}', '2018-05-05 06:48:41', '2018-05-05 06:48:41'),
(129, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-05 06:48:42', '2018-05-05 06:48:42'),
(130, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:49:11', '2018-05-05 06:49:11'),
(131, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{"name":"lrq","real_name":"\\u9646\\u5189\\u94a6","sex":"\\u7537","identity":"320585199601081616","phone":"13301611706","pass":["1",null],"_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT"}', '2018-05-05 06:49:59', '2018-05-05 06:49:59'),
(132, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-05 06:50:00', '2018-05-05 06:50:00'),
(133, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-05 06:51:55', '2018-05-05 06:51:55'),
(134, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{"name":"lrq","real_name":"\\u9646\\u5189\\u94a6","sex":"\\u5973","identity":"320585199601081616","phone":"13301611706","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT"}', '2018-05-05 06:51:59', '2018-05-05 06:51:59'),
(135, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 06:52:00', '2018-05-05 06:52:00'),
(136, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:52:06', '2018-05-05 06:52:06'),
(137, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{"name":"lrq","real_name":"\\u9646\\u5189\\u94a6","sex":"\\u7537","identity":"320585199601081616","phone":"13301611706","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/users"}', '2018-05-05 06:52:09', '2018-05-05 06:52:09'),
(138, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 06:52:10', '2018-05-05 06:52:10'),
(139, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:52:40', '2018-05-05 06:52:40'),
(140, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-05 06:54:39', '2018-05-05 06:54:39'),
(141, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{"name":"lrq","real_name":"\\u9646\\u5189\\u94a6","sex":"\\u7537","identity":"320585199601081616","phone":"13301611706","pass":"1","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT"}', '2018-05-05 06:54:44', '2018-05-05 06:54:44'),
(142, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 06:54:45', '2018-05-05 06:54:45'),
(143, 1, 'admin/users/12348', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP"}', '2018-05-05 06:55:05', '2018-05-05 06:55:05'),
(144, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:55:06', '2018-05-05 06:55:06'),
(145, 1, 'admin/users/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:55:11', '2018-05-05 06:55:11'),
(146, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2018-05-05 06:55:45', '2018-05-05 06:55:45'),
(147, 1, 'admin/users', 'POST', '127.0.0.1', '{"name":"SB","real_name":"\\u968f\\u4fbf","sex":"\\u7537","identity":"111111111111111112","phone":"13111111112","pass":"0","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP"}', '2018-05-05 06:56:31', '2018-05-05 06:56:31'),
(148, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2018-05-05 06:56:32', '2018-05-05 06:56:32'),
(149, 1, 'admin/users', 'POST', '127.0.0.1', '{"name":"SB","real_name":"\\u968f\\u4fbf","sex":"\\u7537","identity":"111111111111111112","phone":"13111111112","pass":"0","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP"}', '2018-05-05 06:57:55', '2018-05-05 06:57:55'),
(150, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2018-05-05 06:57:56', '2018-05-05 06:57:56'),
(151, 1, 'admin/users', 'POST', '127.0.0.1', '{"name":"SB","real_name":"\\u968f\\u4fbf","sex":"\\u7537","identity":"111111111111111112","phone":"13111111112","pass":"0","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP"}', '2018-05-05 06:58:13', '2018-05-05 06:58:13'),
(152, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2018-05-05 06:58:14', '2018-05-05 06:58:14'),
(153, 1, 'admin/users', 'POST', '127.0.0.1', '{"name":"SB","real_name":"\\u968f\\u4fbf","sex":"\\u7537","identity":"111111111111111112","phone":"13111111112","pass":"0","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP"}', '2018-05-05 06:58:29', '2018-05-05 06:58:29'),
(154, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 06:58:30', '2018-05-05 06:58:30'),
(155, 1, 'admin/users/12355/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:58:34', '2018-05-05 06:58:34'),
(156, 1, 'admin/users/12355', 'PUT', '127.0.0.1', '{"name":"SB","real_name":"\\u968f\\u4fbf","sex":"\\u7537","identity":"111111111111111113","phone":"13111111112","pass":"0","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/users"}', '2018-05-05 06:58:40', '2018-05-05 06:58:40'),
(157, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 06:58:41', '2018-05-05 06:58:41'),
(158, 1, 'admin/users/12355/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 06:58:44', '2018-05-05 06:58:44'),
(159, 1, 'admin/users/12355', 'PUT', '127.0.0.1', '{"name":"SB","real_name":"\\u968f\\u4fbf","sex":"\\u7537","identity":"111111111111111113","phone":"131111111121","pass":"0","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/users"}', '2018-05-05 06:58:49', '2018-05-05 06:58:49'),
(160, 1, 'admin/users/12355/edit', 'GET', '127.0.0.1', '[]', '2018-05-05 06:58:51', '2018-05-05 06:58:51'),
(161, 1, 'admin/users/12355', 'PUT', '127.0.0.1', '{"name":"SB","real_name":"\\u968f\\u4fbf","sex":"\\u7537","identity":"111111111111111113","phone":"13111111112","pass":"0","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT"}', '2018-05-05 06:59:01', '2018-05-05 06:59:01'),
(162, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 06:59:02', '2018-05-05 06:59:02'),
(163, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 07:00:22', '2018-05-05 07:00:22'),
(164, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 07:01:08', '2018-05-05 07:01:08'),
(165, 1, 'admin/users', 'GET', '127.0.0.1', '{"id":null,"name":"lrq","_pjax":"#pjax-container"}', '2018-05-05 07:01:24', '2018-05-05 07:01:24'),
(166, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","id":null,"name":null}', '2018-05-05 07:01:31', '2018-05-05 07:01:31'),
(167, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","id":null,"name":"test"}', '2018-05-05 07:01:43', '2018-05-05 07:01:43'),
(168, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","id":null,"name":"test"}', '2018-05-05 07:01:53', '2018-05-05 07:01:53'),
(169, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","id":null,"name":null}', '2018-05-05 07:02:00', '2018-05-05 07:02:00'),
(170, 1, 'admin/users', 'GET', '127.0.0.1', '{"id":null,"name":null}', '2018-05-05 07:09:40', '2018-05-05 07:09:40'),
(171, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:10:24', '2018-05-05 07:10:24'),
(172, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 07:11:02', '2018-05-05 07:11:02'),
(173, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:11:13', '2018-05-05 07:11:13'),
(174, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 07:11:47', '2018-05-05 07:11:47'),
(175, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:11:54', '2018-05-05 07:11:54'),
(176, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 07:13:46', '2018-05-05 07:13:46'),
(177, 1, 'admin/users/12350', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP"}', '2018-05-05 07:14:14', '2018-05-05 07:14:14'),
(178, 1, 'admin/users/12350', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP"}', '2018-05-05 07:14:15', '2018-05-05 07:14:15'),
(179, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:14:16', '2018-05-05 07:14:16'),
(180, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:14:19', '2018-05-05 07:14:19'),
(181, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","id":null,"name":"\\u4f60\\u597d"}', '2018-05-05 07:14:28', '2018-05-05 07:14:28'),
(182, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:14:30', '2018-05-05 07:14:30'),
(183, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:14:37', '2018-05-05 07:14:37'),
(184, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:14:38', '2018-05-05 07:14:38'),
(185, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:14:40', '2018-05-05 07:14:40'),
(186, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:14:45', '2018-05-05 07:14:45'),
(187, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:15:08', '2018-05-05 07:15:08'),
(188, 1, 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{"parent_id":"2","title":"\\u83dc\\u5355","icon":"fa-bars","uri":"auth\\/menu","roles":[null],"_token":"qdzuVvsA0kGOTUcEzDXY1gMXiWpoHEpmQHk6s9UP","_method":"PUT","_previous_":"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu"}', '2018-05-05 07:15:47', '2018-05-05 07:15:47'),
(189, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 07:15:48', '2018-05-05 07:15:48'),
(190, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:16:07', '2018-05-05 07:16:07'),
(191, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:16:10', '2018-05-05 07:16:10'),
(192, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:16:17', '2018-05-05 07:16:17'),
(193, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:16:27', '2018-05-05 07:16:27'),
(194, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:16:44', '2018-05-05 07:16:44'),
(195, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 07:36:08', '2018-05-05 07:36:08'),
(196, 1, 'admin/auth/login', 'POST', '127.0.0.1', '{"username":"admin","password":"admin","_token":"2lSgRFohE2KAHhWZ1FU4Lyt2EyBPZFv6vB2O7jGc"}', '2018-05-05 07:36:10', '2018-05-05 07:36:10'),
(197, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 07:36:12', '2018-05-05 07:36:12'),
(198, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:36:21', '2018-05-05 07:36:21'),
(199, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:36:40', '2018-05-05 07:36:40'),
(200, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:37:50', '2018-05-05 07:37:50'),
(201, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:37:59', '2018-05-05 07:37:59'),
(202, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:38:01', '2018-05-05 07:38:01'),
(203, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:38:07', '2018-05-05 07:38:07'),
(204, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:38:11', '2018-05-05 07:38:11'),
(205, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-05-05 07:41:02', '2018-05-05 07:41:02'),
(206, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:41:16', '2018-05-05 07:41:16'),
(207, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:41:17', '2018-05-05 07:41:17'),
(208, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:41:28', '2018-05-05 07:41:28'),
(209, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:41:35', '2018-05-05 07:41:35'),
(210, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u9a7e\\u9a76\\u8bc1\\u4fe1\\u606f\\u7ba1\\u7406","icon":"fa-sticky-note","uri":null,"roles":[null],"_token":"2lSgRFohE2KAHhWZ1FU4Lyt2EyBPZFv6vB2O7jGc"}', '2018-05-05 07:43:48', '2018-05-05 07:43:48'),
(211, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 07:43:50', '2018-05-05 07:43:50'),
(212, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 07:44:15', '2018-05-05 07:44:15'),
(213, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"2lSgRFohE2KAHhWZ1FU4Lyt2EyBPZFv6vB2O7jGc","_order":"[{\\"id\\":1},{\\"id\\":8},{\\"id\\":9},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2018-05-05 07:44:30', '2018-05-05 07:44:30'),
(214, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:44:32', '2018-05-05 07:44:32'),
(215, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 07:44:37', '2018-05-05 07:44:37'),
(216, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:44:51', '2018-05-05 07:44:51'),
(217, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:44:56', '2018-05-05 07:44:56'),
(218, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:44:59', '2018-05-05 07:44:59'),
(219, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:50:00', '2018-05-05 07:50:00'),
(220, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:50:03', '2018-05-05 07:50:03'),
(221, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:50:25', '2018-05-05 07:50:25'),
(222, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:50:28', '2018-05-05 07:50:28'),
(223, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:54:44', '2018-05-05 07:54:44'),
(224, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:54:47', '2018-05-05 07:54:47'),
(225, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:56:40', '2018-05-05 07:56:40'),
(226, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:56:45', '2018-05-05 07:56:45'),
(227, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:56:47', '2018-05-05 07:56:47'),
(228, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 07:56:50', '2018-05-05 07:56:50'),
(229, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:58:33', '2018-05-05 07:58:33'),
(230, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:58:38', '2018-05-05 07:58:38'),
(231, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 07:58:59', '2018-05-05 07:58:59'),
(232, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:01:20', '2018-05-05 08:01:20'),
(233, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:01:21', '2018-05-05 08:01:21'),
(234, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:01:24', '2018-05-05 08:01:24'),
(235, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:01:28', '2018-05-05 08:01:28'),
(236, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:06:20', '2018-05-05 08:06:20'),
(237, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:06:29', '2018-05-05 08:06:29'),
(238, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:06:39', '2018-05-05 08:06:39'),
(239, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:08:13', '2018-05-05 08:08:13'),
(240, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:08:19', '2018-05-05 08:08:19'),
(241, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-05 08:09:02', '2018-05-05 08:09:02'),
(242, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:09:08', '2018-05-05 08:09:08'),
(243, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:09:14', '2018-05-05 08:09:14'),
(244, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:09:18', '2018-05-05 08:09:18'),
(245, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:14:13', '2018-05-05 08:14:13'),
(246, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:14:17', '2018-05-05 08:14:17'),
(247, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:14:24', '2018-05-05 08:14:24'),
(248, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:14:30', '2018-05-05 08:14:30'),
(249, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:14:56', '2018-05-05 08:14:56'),
(250, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:15:03', '2018-05-05 08:15:03'),
(251, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:15:15', '2018-05-05 08:15:15'),
(252, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:15:20', '2018-05-05 08:15:20'),
(253, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u9a7e\\u9a76\\u8bc1\\u4fe1\\u606f\\u7ba1\\u7406","icon":"fa-sticky-note","uri":"DriversLicense","roles":[null],"_token":"2lSgRFohE2KAHhWZ1FU4Lyt2EyBPZFv6vB2O7jGc","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu"}', '2018-05-05 08:15:39', '2018-05-05 08:15:39'),
(254, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 08:15:40', '2018-05-05 08:15:40'),
(255, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:15:44', '2018-05-05 08:15:44'),
(256, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:15:49', '2018-05-05 08:15:49'),
(257, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:15:52', '2018-05-05 08:15:52'),
(258, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:15:56', '2018-05-05 08:15:56'),
(259, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:16:03', '2018-05-05 08:16:03'),
(260, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u7528\\u6237\\u7ba1\\u7406","icon":"fa-user","uri":"users","roles":["1",null],"_token":"2lSgRFohE2KAHhWZ1FU4Lyt2EyBPZFv6vB2O7jGc","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu"}', '2018-05-05 08:16:19', '2018-05-05 08:16:19'),
(261, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 08:16:20', '2018-05-05 08:16:20'),
(262, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:16:30', '2018-05-05 08:16:30'),
(263, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u9a7e\\u9a76\\u8bc1\\u4fe1\\u606f\\u7ba1\\u7406","icon":"fa-sticky-note","uri":"DriversLicense","roles":["1",null],"_token":"2lSgRFohE2KAHhWZ1FU4Lyt2EyBPZFv6vB2O7jGc","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu"}', '2018-05-05 08:16:41', '2018-05-05 08:16:41'),
(264, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 08:16:43', '2018-05-05 08:16:43'),
(265, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:16:46', '2018-05-05 08:16:46'),
(266, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:16:48', '2018-05-05 08:16:48'),
(267, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 08:16:51', '2018-05-05 08:16:51'),
(268, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:16:58', '2018-05-05 08:16:58'),
(269, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 08:17:31', '2018-05-05 08:17:31'),
(270, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-05 12:22:31', '2018-05-05 12:22:31'),
(271, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 12:22:41', '2018-05-05 12:22:41'),
(272, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-05 12:26:06', '2018-05-05 12:26:06'),
(273, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-05 12:29:43', '2018-05-05 12:29:43'),
(274, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 12:29:52', '2018-05-05 12:29:52'),
(275, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 12:32:28', '2018-05-05 12:32:28'),
(276, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 12:41:55', '2018-05-05 12:41:55'),
(277, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-05 12:49:43', '2018-05-05 12:49:43'),
(278, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 12:49:49', '2018-05-05 12:49:49'),
(279, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 12:50:17', '2018-05-05 12:50:17'),
(280, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 12:50:20', '2018-05-05 12:50:20'),
(281, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-05 12:50:36', '2018-05-05 12:50:36'),
(282, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 12:51:09', '2018-05-05 12:51:09'),
(283, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 12:51:14', '2018-05-05 12:51:14'),
(284, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-05 12:53:57', '2018-05-05 12:53:57'),
(285, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-05 13:07:53', '2018-05-05 13:07:53'),
(286, 1, 'admin/DriversLicense/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 13:08:15', '2018-05-05 13:08:15'),
(287, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 13:08:21', '2018-05-05 13:08:21'),
(288, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-05 13:09:29', '2018-05-05 13:09:29'),
(289, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 13:13:43', '2018-05-05 13:13:43'),
(290, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"id":null,"name":"\\u9646","_pjax":"#pjax-container"}', '2018-05-05 13:14:01', '2018-05-05 13:14:01'),
(291, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 13:14:16', '2018-05-05 13:14:16'),
(292, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-05 13:20:06', '2018-05-05 13:20:06'),
(293, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"per_page":"10","_pjax":"#pjax-container"}', '2018-05-05 13:20:19', '2018-05-05 13:20:19'),
(294, 1, 'admin/DriversLicense/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 13:24:56', '2018-05-05 13:24:56'),
(295, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"per_page":"10","_pjax":"#pjax-container"}', '2018-05-05 13:25:09', '2018-05-05 13:25:09'),
(296, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"per_page":"10","_pjax":"#pjax-container"}', '2018-05-05 13:27:05', '2018-05-05 13:27:05'),
(297, 1, 'admin/DriversLicense/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 13:27:09', '2018-05-05 13:27:09'),
(298, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"per_page":"10","_pjax":"#pjax-container"}', '2018-05-05 13:27:24', '2018-05-05 13:27:24'),
(299, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"per_page":"10","_pjax":"#pjax-container","id":"1","name":null}', '2018-05-05 13:30:08', '2018-05-05 13:30:08'),
(300, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"per_page":"10","id":"1","name":null}', '2018-05-05 13:30:21', '2018-05-05 13:30:21'),
(301, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"per_page":"10","id":"1","name":null}', '2018-05-05 13:31:15', '2018-05-05 13:31:15'),
(302, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"per_page":"10","id":null,"real_name":"\\u9646","_pjax":"#pjax-container"}', '2018-05-05 13:31:25', '2018-05-05 13:31:25'),
(303, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 13:31:32', '2018-05-05 13:31:32'),
(304, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"identity":"3335858199601081616","real_name":"lef","vehicle_type":"B1","grade":"12","effective_time":"10","_token":"ntPlwq6B9BTzh7IwUS4eW4kF5cTkUFGhyYapmUhj","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DriversLicense?per_page=10&id=&real_name=%E9%99%86"}', '2018-05-05 13:31:57', '2018-05-05 13:31:57'),
(305, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 13:32:00', '2018-05-05 13:32:00'),
(306, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"identity":"3335858199601081616","real_name":"lef","vehicle_type":"B1","grade":"12","effective_time":"10","_token":"ntPlwq6B9BTzh7IwUS4eW4kF5cTkUFGhyYapmUhj"}', '2018-05-05 13:39:58', '2018-05-05 13:39:58'),
(307, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 13:39:59', '2018-05-05 13:39:59'),
(308, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"identity":"3335858199601081616","real_name":"lef","vehicle_type":"B1","grade":"12","effective_time":"10","_token":"ntPlwq6B9BTzh7IwUS4eW4kF5cTkUFGhyYapmUhj"}', '2018-05-05 13:40:06', '2018-05-05 13:40:06'),
(309, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 13:40:08', '2018-05-05 13:40:08'),
(310, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"identity":"335858199601081616","real_name":"lef","vehicle_type":"B1","grade":"12","effective_time":"10","_token":"ntPlwq6B9BTzh7IwUS4eW4kF5cTkUFGhyYapmUhj"}', '2018-05-05 13:40:22', '2018-05-05 13:40:22'),
(311, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 13:40:23', '2018-05-05 13:40:23'),
(312, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"identity":"335858199601081616","real_name":"lef","vehicle_type":"B1","grade":"12","effective_time":"10","_token":"ntPlwq6B9BTzh7IwUS4eW4kF5cTkUFGhyYapmUhj"}', '2018-05-05 13:41:13', '2018-05-05 13:41:13'),
(313, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 13:41:14', '2018-05-05 13:41:14'),
(314, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 13:42:16', '2018-05-05 13:42:16'),
(315, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"real_name":"gtr","vehicle_type":"A2","grade":"12","effective_time":"10","address":"\\u4e0a\\u6d77\\u6d77\\u4e8b\\u5927\\u5b66","_token":"ntPlwq6B9BTzh7IwUS4eW4kF5cTkUFGhyYapmUhj"}', '2018-05-05 13:42:49', '2018-05-05 13:42:49'),
(316, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 13:42:50', '2018-05-05 13:42:50'),
(317, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 13:44:10', '2018-05-05 13:44:10'),
(318, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 13:44:17', '2018-05-05 13:44:17'),
(319, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 13:44:25', '2018-05-05 13:44:25'),
(320, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 13:44:32', '2018-05-05 13:44:32'),
(321, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 13:44:36', '2018-05-05 13:44:36'),
(322, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-05 13:45:04', '2018-05-05 13:45:04'),
(323, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 13:45:10', '2018-05-05 13:45:10'),
(324, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 13:46:30', '2018-05-05 13:46:30'),
(325, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 13:47:47', '2018-05-05 13:47:47'),
(326, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 14:05:10', '2018-05-05 14:05:10'),
(327, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 14:06:35', '2018-05-05 14:06:35'),
(328, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 14:06:49', '2018-05-05 14:06:49'),
(329, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 14:06:53', '2018-05-05 14:06:53'),
(330, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 14:07:35', '2018-05-05 14:07:35'),
(331, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 14:07:40', '2018-05-05 14:07:40'),
(332, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 14:07:43', '2018-05-05 14:07:43'),
(333, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 14:09:01', '2018-05-05 14:09:01'),
(334, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 14:09:06', '2018-05-05 14:09:06'),
(335, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-05-05 14:09:56', '2018-05-05 14:09:56'),
(336, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 14:10:07', '2018-05-05 14:10:07'),
(337, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u4ea4\\u89c4\\u5ba3\\u4f20\\u680f\\u7ba1\\u7406","icon":"fa-clipboard","uri":"PublicBoard","roles":[null],"_token":"ntPlwq6B9BTzh7IwUS4eW4kF5cTkUFGhyYapmUhj"}', '2018-05-05 14:12:55', '2018-05-05 14:12:55'),
(338, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-05 14:12:56', '2018-05-05 14:12:56'),
(339, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"ntPlwq6B9BTzh7IwUS4eW4kF5cTkUFGhyYapmUhj","_order":"[{\\"id\\":1},{\\"id\\":8},{\\"id\\":10},{\\"id\\":9},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2018-05-05 14:13:07', '2018-05-05 14:13:07'),
(340, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-05 14:13:09', '2018-05-05 14:13:09'),
(341, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-06 03:37:38', '2018-05-06 03:37:38'),
(342, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-06 03:41:05', '2018-05-06 03:41:05'),
(343, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-06 03:41:15', '2018-05-06 03:41:15'),
(344, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-06 03:41:20', '2018-05-06 03:41:20'),
(345, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u4ea4\\u89c4\\u5ba3\\u4f20\\u680f\\u7ba1\\u7406","icon":"fa-clipboard","uri":"news","roles":["1",null],"_token":"aEya0CDVY52Cg78zDPv4RWfHjeyXgrfzQTIFpNXh","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu"}', '2018-05-06 03:41:49', '2018-05-06 03:41:49'),
(346, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-06 03:41:51', '2018-05-06 03:41:51'),
(347, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-06 03:45:27', '2018-05-06 03:45:27'),
(348, 1, 'admin/news', 'GET', '127.0.0.1', '[]', '2018-05-06 03:45:30', '2018-05-06 03:45:30'),
(349, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-06 03:45:40', '2018-05-06 03:45:40'),
(350, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-06 03:45:51', '2018-05-06 03:45:51'),
(351, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-06 03:45:56', '2018-05-06 03:45:56'),
(352, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-06 03:46:00', '2018-05-06 03:46:00'),
(353, 1, 'admin/news', 'GET', '127.0.0.1', '[]', '2018-05-06 03:47:07', '2018-05-06 03:47:07'),
(354, 1, 'admin/news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-06 03:47:19', '2018-05-06 03:47:19'),
(355, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-06 03:49:24', '2018-05-06 03:49:24'),
(356, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-07 03:52:56', '2018-05-07 03:52:56'),
(357, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 03:53:02', '2018-05-07 03:53:02'),
(358, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 03:53:14', '2018-05-07 03:53:14'),
(359, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 03:53:57', '2018-05-07 03:53:57'),
(360, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 03:54:02', '2018-05-07 03:54:02'),
(361, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 03:54:05', '2018-05-07 03:54:05'),
(362, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 03:54:19', '2018-05-07 03:54:19');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(363, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:03:31', '2018-05-07 04:03:31'),
(364, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:03:39', '2018-05-07 04:03:39'),
(365, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:03:44', '2018-05-07 04:03:44'),
(366, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:15:21', '2018-05-07 04:15:21'),
(367, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:15:49', '2018-05-07 04:15:49'),
(368, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:19:21', '2018-05-07 04:19:21'),
(369, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:22:30', '2018-05-07 04:22:30'),
(370, 1, 'admin/news', 'GET', '127.0.0.1', '[]', '2018-05-07 04:25:21', '2018-05-07 04:25:21'),
(371, 1, 'admin/news/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:25:30', '2018-05-07 04:25:30'),
(372, 1, 'admin/news/1', 'PUT', '127.0.0.1', '{"content":"<p>&nbsp; &nbsp; \\u5e02\\u6c11\\u5f20\\u5148\\u751f\\u5bb6\\u4f4f\\u4e94\\u89d2\\u573a\\u5730\\u533a\\uff0c\\u4e0a\\u73ed\\u5730\\u70b9\\u4f4d\\u4e8e\\u9646\\u5bb6\\u5634\\u3002<br \\/>\\r\\n&nbsp; &nbsp; \\u6bcf\\u5929\\u4e0a\\u4e0b\\u73ed\\u9a7e\\u8f66\\u5355\\u7a0b\\u970045\\u5206\\u949f\\uff0c\\u800c\\u56db\\u5e73\\u8def\\u6b63\\u662f\\u5f20\\u5148\\u751f\\u5f00\\u8f66\\u4e0a\\u4e0b\\u73ed\\u7684\\u5fc5\\u7ecf\\u4e4b\\u8def\\u3002\\u53bb\\u5e74\\u5e74\\u5e95\\uff0c\\u5f97\\u77e5\\u56db\\u5e73\\u8def\\u6cbf\\u7ebf\\u5373\\u5c06\\u5f00\\u59cb\\u65bd\\u5de5\\u540e\\uff0c\\u5f20\\u5148\\u751f\\u4e00\\u5ea6\\u62c5\\u5fc3\\u81ea\\u5df1\\u4e0a\\u4e0b\\u73ed\\u51fa\\u884c\\u65f6\\u95f4\\u8981\\u589e\\u52a0\\u4e86\\u3002\\u7136\\u800c\\uff0c\\u65bd\\u5de5\\u5f00\\u59cb\\u540e\\uff0c\\u5f20\\u5148\\u751f\\u60ca\\u559c\\u5730\\u53d1\\u73b0\\uff0c\\u4e0a\\u73ed\\u8def\\u4e0a\\u7684\\u65f6\\u95f4\\u4e0d\\u4ec5\\u6ca1\\u6709\\u589e\\u52a0\\uff0c\\u6709\\u65f6\\u8fd8\\u80fd\\u63d0\\u65e9\\u8d76\\u5230\\u5355\\u4f4d\\u5403\\u4e2a\\u65e9\\u9910\\u3002\\u660e\\u660e\\u9053\\u8def\\u56e0\\u65bd\\u5de5\\u53d8\\u7a84\\uff0c\\u4e3a\\u4f55\\u901a\\u884c\\u6548\\u7387\\u5374\\u63d0\\u9ad8\\u4e86\\u5462\\uff1f&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp; &nbsp; \\u4f5c\\u4e3a\\u5168\\u5e02&ldquo;\\u4e09\\u7eb5\\u4e09\\u6a2a&rdquo;\\u4e3b\\u5e72\\u9053\\u4e4b\\u4e00\\uff0c\\u56db\\u5e73\\u8def2017\\u5e74\\u672b\\u542f\\u52a8\\u5927\\u4fee\\u6539\\u9020\\uff0c\\u6db5\\u76d6\\u90e8\\u5206\\u8def\\u6bb5\\u62d3\\u5bbd\\u3001\\u5e02\\u653f\\u8bbe\\u65bd\\u5927\\u4fee\\u3001\\u67b6\\u7a7a\\u7ebf\\u5165\\u5730\\u7b49\\u5de5\\u7a0b\\uff0c\\u65bd\\u5de5\\u9879\\u76ee\\u591a\\uff0c\\u5de5\\u671f\\u957f\\u3002\\u8679\\u53e3\\u8b66\\u65b9\\u4e3a\\u786e\\u4fdd\\u5927\\u4fee\\u671f\\u95f4\\u901a\\u884c\\u6548\\u7387\\u4e0d\\u53d7\\u5f71\\u54cd\\uff0c\\u5bf9\\u56db\\u5e73\\u8def\\u6cbf\\u7ebf\\u5f00\\u5c55\\u7cbe\\u51c6\\u6392\\u5835\\uff0c\\u7efc\\u5408\\u65bd\\u7b56\\u3002\\u636e\\u7edf\\u8ba1\\uff0c5\\u4e2a\\u6708\\u6765\\uff0c\\u56db\\u5e73\\u8def\\u4ea4\\u901a\\u7c7b110\\u62a5\\u8b66\\u6570\\u540c\\u6bd4\\u4e0b\\u964d21.5%\\uff0c\\u5176\\u4e2d\\uff0c\\u4e8b\\u6545\\u7c7b\\u4e0b\\u964d23.4%\\uff0c\\u8fdd\\u6cd5\\u505c\\u8f66\\u7c7b\\u4e0b\\u964d8.5%\\uff0c\\u673a\\u52a8\\u8f66\\u901a\\u884c\\u901f\\u5ea6\\u4e0e\\u4ee5\\u5f80\\u6301\\u5e73\\uff0c\\u672a\\u53d1\\u751f\\u91cd\\u5927\\u4ea4\\u901a\\u4e8b\\u6545\\uff0c\\u6709\\u6548\\u51cf\\u7f13\\u4e86\\u9053\\u8def\\u65bd\\u5de5\\u7ed9\\u5e02\\u6c11\\u51fa\\u884c\\u5e26\\u6765\\u7684\\u5f71\\u54cd\\u3002<\\/p>\\r\\n\\r\\n<p>&nbsp; &nbsp;&ldquo;\\u975e\\u521a\\u9700&rdquo;\\u8f66\\u8f86\\u62e9\\u4f18\\u7ed5\\u884c \\u3000<\\/p>\\r\\n\\r\\n<p>\\u30002017\\u5e74\\u56db\\u5e73\\u8def\\u62d3\\u5bbd\\u5de5\\u7a0b\\u7acb\\u9879\\u540e\\uff0c\\u8679\\u53e3\\u4ea4\\u8b66\\u7acb\\u5373\\u4f1a\\u540c\\u533a\\u76f8\\u5173\\u90e8\\u95e8\\u53ec\\u5f00\\u4e8620\\u4f59\\u6b21\\u534f\\u8c03\\u4f1a\\uff0c\\u5bf9\\u65bd\\u5de5\\u4efb\\u52a1\\u3001\\u5404\\u65b9\\u9700\\u6c42\\u3001\\u914d\\u5957\\u63aa\\u65bd\\u7b49\\u591a\\u65b9\\u9762\\u8fdb\\u884c\\u7edf\\u7b79\\uff0c\\u786e\\u5b9a\\u4e86&ldquo;\\u7545\\u901a\\u4f18\\u5148\\u3001\\u5206\\u6bb5\\u65bd\\u5de5&rdquo;\\u7684\\u601d\\u8def\\u3002\\u4e0e\\u6b64\\u540c\\u65f6\\uff0c\\u51cf\\u7f13\\u56db\\u5e73\\u8def\\u6cbf\\u7ebf\\u7684\\u4ea4\\u901a\\u6d41\\u91cf\\u5de5\\u4f5c\\u4e5f\\u63d0\\u524d\\u5f00\\u5c55\\u4e86\\u8d77\\u6765\\u3002\\u8679\\u53e3\\u4ea4\\u8b66\\u901a\\u8fc7\\u8c03\\u7814\\u53d1\\u73b0\\uff0c\\u56db\\u5e73\\u8def\\u8f66\\u6d41\\u91cf\\u867d\\u5927\\uff0c\\u4f46\\u6709\\u4e00\\u90e8\\u5206\\u9009\\u62e9\\u8be5\\u8def\\u7ebf\\u7684\\u9a7e\\u9a76\\u5458\\u662f\\u60ef\\u6027\\u601d\\u7ef4\\u5bfc\\u81f4\\uff0c\\u5176\\u53ef\\u9009\\u62e9\\u7684\\u8def\\u7ebf\\u8fd8\\u6709\\u5f88\\u591a\\u3002\\u4e3a\\u6b64\\uff0c\\u5728\\u65bd\\u5de5\\u524d\\u8679\\u53e3\\u8b66\\u65b9\\u5c31\\u901a\\u8fc7\\u5b98\\u65b9\\u5fae\\u535a\\u548c\\u5fae\\u4fe1\\u8d26\\u53f7\\u53d1\\u5e03\\u4e86\\u65bd\\u5de5\\u65f6\\u95f4\\u3001\\u8def\\u6bb5\\u4ee5\\u53ca\\u5907\\u9009\\u8def\\u7ebf\\u7b49\\u4fe1\\u606f\\uff0c\\u63d0\\u9192\\u90e8\\u5206\\u9a7e\\u9a76\\u5458\\u53ef\\u9009\\u62e9\\u7ed5\\u884c\\u3002\\u9664\\u4e86\\u5bf9\\u793e\\u4f1a\\u8f66\\u8f86\\u8fdb\\u884c\\u5206\\u6d41\\uff0c\\u8679\\u53e3\\u4ea4\\u8b66\\u534f\\u540c\\u65bd\\u5de5\\u90e8\\u95e8\\uff0c\\u5bf9\\u6cbf\\u7ebf\\u5de5\\u5730\\u65bd\\u5de5\\u8f66\\u8f86\\u7684\\u51fa\\u5165\\u65f6\\u95f4\\u8fdb\\u884c\\u4e86\\u4e25\\u683c\\u7684\\u89c4\\u5b9a\\uff0c\\u907f\\u5f00\\u9ad8\\u5cf0\\u65f6\\u6bb5\\u3002 \\u3000<\\/p>\\r\\n\\r\\n<p>\\u3000 \\u8def\\u8bbe\\u6539\\u9020 \\u5f15\\u5bfc\\u6f6e\\u6c50\\u8f66\\u6d41 \\u3000<\\/p>\\r\\n\\r\\n<p>&nbsp;\\u3000\\u56db\\u5e73\\u8def\\u7684\\u8f66\\u6d41\\u6709\\u7740\\u660e\\u663e\\u7684\\u6f6e\\u6c50\\u5f0f\\u7279\\u5f81\\uff0c\\u800c\\u65e9\\u5728\\u51e0\\u5e74\\u524d\\uff0c\\u4e3a\\u4e86\\u89e3\\u51b3\\u8fd9\\u4e00\\u73b0\\u8c61\\uff0c\\u56db\\u5e73\\u8def\\u4e2d\\u592e\\u8bbe\\u7f6e\\u4e86\\u4e00\\u6761\\u53ef\\u53d8\\u8f66\\u9053\\uff0c\\u6bcf\\u5929&ldquo;\\u5b9a\\u65f6\\u6539\\u53d8&rdquo;\\u3002\\u56db\\u5e73\\u8def\\u65bd\\u5de5\\u5f00\\u59cb\\u540e\\uff0c\\u5360\\u9053\\u60c5\\u51b5\\u5728\\u6240\\u96be\\u514d\\u3002\\u4e3a\\u4e86\\u51cf\\u5c11\\u65bd\\u5de5\\u5e26\\u6765\\u7684\\u5f71\\u54cd\\uff0c\\u8679\\u53e3\\u4ea4\\u8b66\\u91cd\\u65b0\\u89c4\\u5212\\u8f66\\u9053\\u8bbe\\u8ba1\\uff0c\\u5728\\u786e\\u4fdd\\u5b89\\u5168\\u7684\\u60c5\\u51b5\\u4e0b\\u5c06\\u975e\\u673a\\u52a8\\u8f66\\u9053\\u4e34\\u65f6\\u5b89\\u7f6e\\u5728\\u4eba\\u884c\\u9053\\u4e0a\\uff0c\\u786e\\u4fdd\\u56db\\u5e73\\u8def\\u4ecd\\u80fd\\u4fdd\\u6301\\u53cc\\u54115\\u8f66\\u9053\\u7684\\u901a\\u884c\\u80fd\\u529b\\u3002\\u968f\\u540e\\u6839\\u636e\\u65b0\\u89c4\\u5212\\u7684\\u8f66\\u9053\\uff0c\\u4ea4\\u8b66\\u91cd\\u65b0\\u8bbe\\u8ba1\\u4e86\\u53ef\\u53d8\\u8f66\\u9053\\u7684\\u53d8\\u6362\\u6a21\\u5f0f\\uff0c\\u5e76\\u589e\\u8bbe\\u4eba\\u529b\\uff0c\\u91c7\\u53d6&ldquo;\\u4eba\\u5de5+\\u5b9a\\u65f6&rdquo;\\u7684\\u6a21\\u5f0f\\u5e72\\u9884\\u53ef\\u53d8\\u8f66\\u9053\\u8fd0\\u4f5c\\uff0c\\u4f7f\\u5176\\u66f4\\u7b26\\u5408\\u9ad8\\u5cf0\\u6d41\\u91cf\\u9700\\u6c42\\uff0c\\u7cbe\\u51c6\\u670d\\u52a1\\u6cbf\\u7ebf\\u4ea4\\u901a\\u3002 \\u3000<\\/p>\\r\\n\\r\\n<p>&nbsp; &nbsp;\\u3000\\u6539\\u9020\\u8fd8\\u4e0d\\u4ec5\\u4e8e\\u6b64\\uff0c\\u5f97\\u76ca\\u4e8e\\u6d77\\u4f26\\u8def\\u7684\\u62d3\\u5bbd\\uff0c\\u50cf\\u5f20\\u5148\\u751f\\u4e00\\u6837\\u4ece\\u56db\\u5e73\\u8def\\u8f6c\\u5165\\u65b0\\u5efa\\u8def\\u96a7\\u9053\\u524d\\u5f80\\u9646\\u5bb6\\u5634\\u7684\\u5e02\\u6c11\\u65b9\\u4fbf\\u4e86\\u4e0d\\u5c11\\u3002\\u800c\\u4e3a\\u4e86\\u4e0e\\u62d3\\u5bbd\\u7684\\u6d77\\u4f26\\u8def\\u5f62\\u6210\\u914d\\u5957\\uff0c\\u4ea4\\u8b66\\u5c06\\u56db\\u5e73\\u8def\\u6d77\\u4f26\\u8def\\u8def\\u53e3\\u5317\\u4fa7\\u7684\\u5de6\\u8f6c\\u5f2f\\u8f66\\u9053\\u4ece1\\u6761\\u5347\\u7ea7\\u4e3a2\\u6761\\uff0c\\u4f7f\\u6d77\\u4f26\\u8def\\u5206\\u6d41\\u80fd\\u529b\\u663e\\u8457\\u63d0\\u5347\\u3002\\u540c\\u65f6\\uff0c\\u4ea4\\u8b66\\u8fd8\\u4f18\\u5316\\u8c03\\u6574\\u4e86\\u56db\\u5e73\\u8def\\u5468\\u8fb9\\u652f\\u5c0f\\u9a6c\\u8def\\u505c\\u8f66\\u70b9\\u4f4d\\uff0c\\u4e34\\u65f6\\u5220\\u51cf\\u505c\\u8f66\\u4f4d50\\u5904\\uff0c\\u786e\\u4fdd\\u652f\\u5c0f\\u9053\\u8def\\u9ad8\\u6548\\u5206\\u6d41\\u3002 \\u3000\\u3000\\u8054\\u5408\\u6cbb\\u7406\\u663e\\u6210\\u6548 \\u3000\\u3000\\u901a\\u884c\\u80fd\\u529b\\u8981\\u5f97\\u5230\\u4fdd\\u969c\\uff0c\\u826f\\u597d\\u7684\\u4ea4\\u901a\\u79e9\\u5e8f\\u4e5f\\u662f\\u5fc5\\u8981\\u6761\\u4ef6\\u4e4b\\u4e00\\u3002\\u56db\\u5e73\\u8def\\u65bd\\u5de5\\u5f00\\u59cb\\u540e\\uff0c\\u4ea4\\u8b66\\u90e8\\u95e8\\u52a0\\u5f3a\\u4e86\\u5bf9\\u975e\\u673a\\u52a8\\u8f66\\u4e71\\u9a91\\u884c\\u3001\\u884c\\u4eba\\u4e71\\u7a7f\\u9a6c\\u8def\\u7b49\\u4ea4\\u901a\\u8fdd\\u6cd5\\u884c\\u4e3a\\u7684\\u6574\\u6cbb\\uff0c\\u5e76\\u5728\\u65e9\\u665a\\u9ad8\\u5cf0\\u65f6\\u6bb5\\u5bf9\\u6cbf\\u7ebf\\u8fdd\\u505c\\u8f66\\u8f86\\u5f00\\u5c55\\u5373\\u65f6\\u7275\\u5f15\\uff0c\\u786e\\u4fdd\\u9053\\u8def\\u7545\\u901a\\u3002<\\/p>\\r\\n\\r\\n<p>\\u3000\\u3000\\u968f\\u7740\\u65bd\\u5de5\\u7684\\u8fdb\\u884c\\uff0c\\u4ea4\\u8b66\\u90e8\\u95e8\\u4e5f\\u4e00\\u76f4\\u6ce8\\u610f\\u63a5\\u6536\\u5e02\\u6c11\\u5bf9\\u4e8e\\u8def\\u8bbe\\u53d8\\u5316\\u7684\\u5404\\u79cd\\u610f\\u89c1\\uff0c\\u5e76\\u8fdb\\u884c\\u4e0d\\u65ad\\u6539\\u5584\\u3002\\u5176\\u4e2d\\uff0c\\u90e8\\u5206\\u8def\\u6bb5\\u5728\\u65bd\\u5de5\\u671f\\u95f4\\u5c06\\u975e\\u673a\\u52a8\\u8f66\\u9053\\u4e34\\u65f6\\u8bbe\\u7f6e\\u5728\\u4e86\\u4eba\\u884c\\u9053\\u4e0a\\u540e\\uff0c\\u5c31\\u6709\\u5e02\\u6c11\\u53cd\\u6620\\u7531\\u4e8e\\u5171\\u4eab\\u5355\\u8f66\\u7684\\u4e71\\u505c\\u653e\\uff0c\\u5bfc\\u81f4\\u4e34\\u65f6\\u975e\\u673a\\u52a8\\u8f66\\u9053\\u901a\\u884c\\u53d7\\u963b\\u3002\\u4e8e\\u662f\\uff0c\\u8679\\u53e3\\u8b66\\u65b9\\u7275\\u5934\\u533a\\u57ce\\u7ba1\\u3001\\u8857\\u9053\\u53ca\\u591a\\u5bb6\\u5171\\u4eab\\u5355\\u8f66\\u516c\\u53f8\\u7ebf\\u4e0b\\u8fd0\\u7ef4\\u4eba\\u5458\\uff0c\\u5efa\\u7acb\\u4e86\\u4e13\\u9879\\u6574\\u6cbb\\u5de5\\u4f5c\\u5fae\\u4fe1\\u7fa4\\uff0c\\u660e\\u786e\\u5bf9\\u4eba\\u884c\\u9053\\u4e71\\u505c\\u653e\\u8f66\\u8f86&ldquo;\\u5de1\\u903b\\u53d1\\u73b0&mdash;\\u62cd\\u7167\\u4e0a\\u4f20&mdash;\\u5feb\\u901f\\u5904\\u7f6e&rdquo;\\u7684\\u5de5\\u4f5c\\u673a\\u5236\\uff0c\\u4ee5\\u53ca30\\u5206\\u949f\\u6e05\\u7406\\u5b8c\\u6bd5\\u7684\\u5de5\\u4f5c\\u6807\\u51c6\\uff0c\\u5171\\u540c\\u505a\\u597d\\u56db\\u5e73\\u8def\\u6cbf\\u7ebf&ldquo;\\u95e8\\u524d\\u6e05&rdquo;\\u5de5\\u4f5c\\uff0c\\u6539\\u5584\\u4e34\\u65f6\\u975e\\u673a\\u52a8\\u8f66\\u9053\\u7684\\u884c\\u9a76\\u73af\\u5883\\u3002<\\/p>","_token":"ma4KxdfQcly3HVZ7wmLn0DtRPJ5iG2nP1voqHGkP","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/news"}', '2018-05-07 04:27:12', '2018-05-07 04:27:12'),
(373, 1, 'admin/news', 'GET', '127.0.0.1', '[]', '2018-05-07 04:27:16', '2018-05-07 04:27:16'),
(374, 1, 'admin/news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:28:58', '2018-05-07 04:28:58'),
(375, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:30:34', '2018-05-07 04:30:34'),
(376, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:31:15', '2018-05-07 04:31:15'),
(377, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:31:22', '2018-05-07 04:31:22'),
(378, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:31:28', '2018-05-07 04:31:28'),
(379, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:37:02', '2018-05-07 04:37:02'),
(380, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:38:46', '2018-05-07 04:38:46'),
(381, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u884c\\u9a76\\u8bc1\\u4fe1\\u606f\\u7ba1\\u7406","icon":"fa-automobile","uri":"\\/admin\\/DrivingLicense","roles":["1",null],"_token":"ma4KxdfQcly3HVZ7wmLn0DtRPJ5iG2nP1voqHGkP"}', '2018-05-07 04:39:49', '2018-05-07 04:39:49'),
(382, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-07 04:39:51', '2018-05-07 04:39:51'),
(383, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-07 04:40:05', '2018-05-07 04:40:05'),
(384, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-07 04:40:46', '2018-05-07 04:40:46'),
(385, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:40:52', '2018-05-07 04:40:52'),
(386, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:40:59', '2018-05-07 04:40:59'),
(387, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"ma4KxdfQcly3HVZ7wmLn0DtRPJ5iG2nP1voqHGkP","_order":"[{\\"id\\":1},{\\"id\\":8},{\\"id\\":10},{\\"id\\":9},{\\"id\\":11},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2018-05-07 04:41:11', '2018-05-07 04:41:11'),
(388, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:41:14', '2018-05-07 04:41:14'),
(389, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:41:18', '2018-05-07 04:41:18'),
(390, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u884c\\u9a76\\u8bc1\\u4fe1\\u606f\\u7ba1\\u7406","icon":"fa-automobile","uri":"\\/DrivingLicense","roles":["1",null],"_token":"ma4KxdfQcly3HVZ7wmLn0DtRPJ5iG2nP1voqHGkP","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu"}', '2018-05-07 04:41:30', '2018-05-07 04:41:30'),
(391, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-07 04:41:31', '2018-05-07 04:41:31'),
(392, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-07 04:41:57', '2018-05-07 04:41:57'),
(393, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:42:07', '2018-05-07 04:42:07'),
(394, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:52:24', '2018-05-07 04:52:24'),
(395, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:54:45', '2018-05-07 04:54:45'),
(396, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 04:55:46', '2018-05-07 04:55:46'),
(397, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 05:07:01', '2018-05-07 05:07:01'),
(398, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-07 05:10:52', '2018-05-07 05:10:52'),
(399, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 05:12:01', '2018-05-07 05:12:01'),
(400, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 05:12:07', '2018-05-07 05:12:07'),
(401, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 05:12:10', '2018-05-07 05:12:10'),
(402, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-05-07 05:15:09', '2018-05-07 05:15:09'),
(403, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-05-07 05:16:04', '2018-05-07 05:16:04'),
(404, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 05:16:30', '2018-05-07 05:16:30'),
(405, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 05:16:43', '2018-05-07 05:16:43'),
(406, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 05:17:47', '2018-05-07 05:17:47'),
(407, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 05:17:51', '2018-05-07 05:17:51'),
(408, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-07 10:16:40', '2018-05-07 10:16:40'),
(409, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 10:16:47', '2018-05-07 10:16:47'),
(410, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 10:16:55', '2018-05-07 10:16:55'),
(411, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 10:16:58', '2018-05-07 10:16:58'),
(412, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 10:22:30', '2018-05-07 10:22:30'),
(413, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-07 10:22:33', '2018-05-07 10:22:33'),
(414, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-07 10:23:05', '2018-05-07 10:23:05'),
(415, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-07 10:23:20', '2018-05-07 10:23:20'),
(416, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 10:23:27', '2018-05-07 10:23:27'),
(417, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-05-07 10:24:26', '2018-05-07 10:24:26'),
(418, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-05-07 10:40:31', '2018-05-07 10:40:31'),
(419, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-05-07 10:41:05', '2018-05-07 10:41:05'),
(420, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-05-07 10:42:17', '2018-05-07 10:42:17'),
(421, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 10:42:26', '2018-05-07 10:42:26'),
(422, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-07 10:42:49', '2018-05-07 10:42:49'),
(423, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-07 10:44:03', '2018-05-07 10:44:03'),
(424, 1, 'admin/users/12354/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-07 10:44:34', '2018-05-07 10:44:34'),
(425, 1, 'admin/users/12354/edit', 'GET', '127.0.0.1', '[]', '2018-05-07 10:44:59', '2018-05-07 10:44:59'),
(426, 1, 'admin/users/12354/edit', 'GET', '127.0.0.1', '[]', '2018-05-07 10:45:14', '2018-05-07 10:45:14'),
(427, 1, 'admin/users/12354', 'PUT', '127.0.0.1', '{"name":"BFQ","real_name":"\\u4e0d\\u653e\\u5f03","sex":"\\u7537","identity":"111111111111111111","phone":"13111111111","pass":"\\u5df2\\u8ba4\\u8bc1","_token":"XXF0AKPfa2mv0IhYjUJw2iEh77ZEa4NSb5nUizQz","_method":"PUT"}', '2018-05-07 10:45:24', '2018-05-07 10:45:24'),
(428, 1, 'admin/users/12354/edit', 'GET', '127.0.0.1', '[]', '2018-05-07 10:45:26', '2018-05-07 10:45:26'),
(429, 1, 'admin/users/12354/edit', 'GET', '127.0.0.1', '[]', '2018-05-07 10:45:41', '2018-05-07 10:45:41'),
(430, 1, 'admin/users/12354', 'PUT', '127.0.0.1', '{"name":"BFQ","real_name":"\\u4e0d\\u653e\\u5f03","sex":"\\u7537","identity":"111111111111111111","phone":"13111111111","status":"\\u5df2\\u8ba4\\u8bc1","_token":"XXF0AKPfa2mv0IhYjUJw2iEh77ZEa4NSb5nUizQz","_method":"PUT"}', '2018-05-07 10:46:12', '2018-05-07 10:46:12'),
(431, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-07 10:46:13', '2018-05-07 10:46:13'),
(432, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-08 07:27:33', '2018-05-08 07:27:33'),
(433, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-08 07:28:13', '2018-05-08 07:28:13'),
(434, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-08 07:39:41', '2018-05-08 07:39:41'),
(435, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-08 07:39:51', '2018-05-08 07:39:51'),
(436, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-08 07:40:10', '2018-05-08 07:40:10'),
(437, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-08 07:50:24', '2018-05-08 07:50:24'),
(438, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-09 01:44:04', '2018-05-09 01:44:04'),
(439, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:44:17', '2018-05-09 01:44:17'),
(440, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:44:37', '2018-05-09 01:44:37'),
(441, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{"name":"yunyou","real_name":"\\u4e91\\u6e38","sex":"\\u7537","identity":"320234199707301828","phone":"15000985609","status":"\\u5df2\\u8ba4\\u8bc1","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/users"}', '2018-05-09 01:44:53', '2018-05-09 01:44:53'),
(442, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-09 01:44:54', '2018-05-09 01:44:54'),
(443, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:45:10', '2018-05-09 01:45:10'),
(444, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:45:27', '2018-05-09 01:45:27'),
(445, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:47:26', '2018-05-09 01:47:26'),
(446, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{"name":"lrq","real_name":"\\u9646\\u5189\\u94a6","sex":"\\u7537","identity":"320585199601081616","phone":"13301611706","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/users"}', '2018-05-09 01:47:43', '2018-05-09 01:47:43'),
(447, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-09 01:47:44', '2018-05-09 01:47:44'),
(448, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:48:18', '2018-05-09 01:48:18'),
(449, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{"name":"lrq","real_name":"\\u9646\\u5189\\u94a6","sex":"\\u7537","identity":"320585199601081616","phone":"13301611706","status":"\\u5df2\\u8ba4\\u8bc1","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT"}', '2018-05-09 01:48:40', '2018-05-09 01:48:40'),
(450, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-09 01:48:40', '2018-05-09 01:48:40'),
(451, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{"name":"lrq","real_name":"\\u9646\\u5189\\u94a6","sex":"\\u7537","identity":"320585199601081616","phone":"13301611706","status":"\\u5df2\\u8ba4\\u8bc1","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT"}', '2018-05-09 01:51:19', '2018-05-09 01:51:19'),
(452, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-09 01:51:21', '2018-05-09 01:51:21'),
(453, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:51:35', '2018-05-09 01:51:35'),
(454, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{"name":"yunyou","real_name":"\\u4e91\\u6e38","sex":"\\u7537","identity":"320234199707301828","phone":"15000985609","status":"\\u5df2\\u8ba4\\u8bc1","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/users"}', '2018-05-09 01:51:52', '2018-05-09 01:51:52'),
(455, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-09 01:51:53', '2018-05-09 01:51:53'),
(456, 1, 'admin/users/12352/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:52:03', '2018-05-09 01:52:03'),
(457, 1, 'admin/users/12352', 'PUT', '127.0.0.1', '{"name":"test_jwt","real_name":"lrq","sex":"\\u7537","identity":"320585199601081623","phone":"13301711777","status":"\\u672a\\u8ba4\\u8bc1","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/users"}', '2018-05-09 01:52:15', '2018-05-09 01:52:15'),
(458, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-09 01:52:16', '2018-05-09 01:52:16'),
(459, 1, 'admin/users/12349/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:52:31', '2018-05-09 01:52:31'),
(460, 1, 'admin/users/12349', 'PUT', '127.0.0.1', '{"name":"Test4","real_name":"lrq","sex":"\\u7537","identity":"320585199601081620","phone":"13301711709","status":"\\u672a\\u8ba4\\u8bc1","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/users"}', '2018-05-09 01:52:38', '2018-05-09 01:52:38'),
(461, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-09 01:52:40', '2018-05-09 01:52:40'),
(462, 1, 'admin/users/12356/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:53:22', '2018-05-09 01:53:22'),
(463, 1, 'admin/users/12356', 'PUT', '127.0.0.1', '{"name":"\\u6d4b\\u8bd5\\u6d4b\\u8bd5","real_name":"\\u9646\\u5189\\u94a6","sex":"\\u7537","identity":"320585199601081918","phone":"13301611700","status":"\\u672a\\u8ba4\\u8bc1","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/users"}', '2018-05-09 01:53:35', '2018-05-09 01:53:35'),
(464, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-09 01:53:36', '2018-05-09 01:53:36'),
(465, 1, 'admin/users/12351/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:53:44', '2018-05-09 01:53:44'),
(466, 1, 'admin/users/12351', 'PUT', '127.0.0.1', '{"name":"Test6","real_name":"lrq","sex":"\\u7537","identity":"320585199601081622","phone":"13301711778","status":"\\u672a\\u8ba4\\u8bc1","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/users"}', '2018-05-09 01:53:51', '2018-05-09 01:53:51'),
(467, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-09 01:53:52', '2018-05-09 01:53:52'),
(468, 1, 'admin/users/12353/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:53:57', '2018-05-09 01:53:57'),
(469, 1, 'admin/users/12353', 'PUT', '127.0.0.1', '{"name":"TestLRQ","real_name":"lrq","sex":"\\u7537","identity":"320585199601081615","phone":"13301611707","status":"\\u672a\\u8ba4\\u8bc1","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/users"}', '2018-05-09 01:54:04', '2018-05-09 01:54:04'),
(470, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-09 01:54:05', '2018-05-09 01:54:05'),
(471, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:54:19', '2018-05-09 01:54:19'),
(472, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u8fdd\\u7ae0\\u4fe1\\u606f\\u7ba1\\u7406","icon":"fa-calculator","uri":null,"roles":[null],"_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9"}', '2018-05-09 01:54:52', '2018-05-09 01:54:52'),
(473, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-09 01:54:53', '2018-05-09 01:54:53'),
(474, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_order":"[{\\"id\\":1},{\\"id\\":8},{\\"id\\":10},{\\"id\\":9},{\\"id\\":11},{\\"id\\":12},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2018-05-09 01:55:02', '2018-05-09 01:55:02'),
(475, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:55:05', '2018-05-09 01:55:05'),
(476, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u7559\\u8a00\\u677f\\u7ba1\\u7406","icon":"fa-calendar-minus-o","uri":null,"roles":[null],"_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9"}', '2018-05-09 01:55:22', '2018-05-09 01:55:22'),
(477, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-09 01:55:23', '2018-05-09 01:55:23'),
(478, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_order":"[{\\"id\\":1},{\\"id\\":8},{\\"id\\":10},{\\"id\\":9},{\\"id\\":11},{\\"id\\":12},{\\"id\\":13},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2018-05-09 01:55:29', '2018-05-09 01:55:29'),
(479, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:55:31', '2018-05-09 01:55:31'),
(480, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 01:55:46', '2018-05-09 01:55:46'),
(481, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-05-09 01:55:52', '2018-05-09 01:55:52'),
(482, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 03:41:29', '2018-05-09 03:41:29'),
(483, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 03:41:33', '2018-05-09 03:41:33'),
(484, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 03:42:39', '2018-05-09 03:42:39'),
(485, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:28:58', '2018-05-09 04:28:58'),
(486, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:29:41', '2018-05-09 04:29:41'),
(487, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:36:05', '2018-05-09 04:36:05'),
(488, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:37:19', '2018-05-09 04:37:19'),
(489, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u8fdd\\u7ae0\\u4fe1\\u606f\\u7ba1\\u7406","icon":"fa-calculator","uri":"Illegal","roles":[null],"_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu"}', '2018-05-09 04:37:29', '2018-05-09 04:37:29'),
(490, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-05-09 04:37:31', '2018-05-09 04:37:31'),
(491, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:37:41', '2018-05-09 04:37:41'),
(492, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:37:46', '2018-05-09 04:37:46'),
(493, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:37:51', '2018-05-09 04:37:51'),
(494, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-09 04:38:51', '2018-05-09 04:38:51'),
(495, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:38:59', '2018-05-09 04:38:59'),
(496, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-05-09 04:39:09', '2018-05-09 04:39:09'),
(497, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:39:28', '2018-05-09 04:39:28'),
(498, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:40:26', '2018-05-09 04:40:26'),
(499, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:40:28', '2018-05-09 04:40:28'),
(500, 1, 'admin/Illegal/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:40:33', '2018-05-09 04:40:33'),
(501, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:41:21', '2018-05-09 04:41:21'),
(502, 1, 'admin/Illegal/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:41:25', '2018-05-09 04:41:25'),
(503, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:47:03', '2018-05-09 04:47:03'),
(504, 1, 'admin/Illegal', 'GET', '127.0.0.1', '[]', '2018-05-09 04:49:14', '2018-05-09 04:49:14'),
(505, 1, 'admin/Illegal/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 04:49:18', '2018-05-09 04:49:18'),
(506, 1, 'admin/Illegal/1', 'PUT', '127.0.0.1', '{"license":"<p>\\u6caaCJ111<\\/p>","engineID":"<p>111111<\\/p>","location":"<p>\\u4e0a\\u6d77\\u5e02\\u6d66\\u4e1c\\u65b0\\u533a\\u4e34\\u6e2f\\u65b0\\u57ce\\u6d77\\u6e2f\\u5927\\u90531550\\u53f7<\\/p>","illegal_id":"<p>1011<\\/p>","status":"<p>\\u5f85\\u786e\\u8ba4<\\/p>","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Illegal"}', '2018-05-09 05:20:43', '2018-05-09 05:20:43'),
(507, 1, 'admin/Illegal/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-09 05:20:46', '2018-05-09 05:20:46'),
(508, 1, 'admin/Illegal/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-09 05:26:57', '2018-05-09 05:26:57'),
(509, 1, 'admin/Illegal/1', 'PUT', '127.0.0.1', '{"license":"\\u6caaCJ111","engineID":"111111","location":"\\u4e0a\\u6d77\\u5e02\\u6d66\\u4e1c\\u65b0\\u533a\\u4e34\\u6e2f\\u65b0\\u57ce\\u6d77\\u6e2f\\u5927\\u90531550\\u53f7","illegal_id":"1011","status":"\\u5f85\\u786e\\u8ba4","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT"}', '2018-05-09 05:28:02', '2018-05-09 05:28:02'),
(510, 1, 'admin/Illegal/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-09 05:28:04', '2018-05-09 05:28:04'),
(511, 1, 'admin/Illegal/1/edit', 'GET', '127.0.0.1', '[]', '2018-05-09 05:28:50', '2018-05-09 05:28:50'),
(512, 1, 'admin/Illegal/1', 'PUT', '127.0.0.1', '{"license":"\\u6caaCJ111","engineID":"111111","location":"\\u4e0a\\u6d77\\u5e02\\u6d66\\u4e1c\\u65b0\\u533a\\u4e34\\u6e2f\\u65b0\\u57ce\\u6d77\\u6e2f\\u5927\\u90531550\\u53f7","illegal_id":"1011","status":"\\u5f85\\u786e\\u8ba4","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT"}', '2018-05-09 05:29:00', '2018-05-09 05:29:00'),
(513, 1, 'admin/Illegal', 'GET', '127.0.0.1', '[]', '2018-05-09 05:29:01', '2018-05-09 05:29:01'),
(514, 1, 'admin/Illegal', 'GET', '127.0.0.1', '[]', '2018-05-09 05:29:41', '2018-05-09 05:29:41'),
(515, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 05:45:50', '2018-05-09 05:45:50'),
(516, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 05:45:53', '2018-05-09 05:45:53'),
(517, 1, 'admin/Illegal/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-09 05:45:59', '2018-05-09 05:45:59'),
(518, 1, 'admin/Illegal/1', 'PUT', '127.0.0.1', '{"license":"\\u6caaCJ111","engineID":"111111","location":"\\u4e0a\\u6d77\\u5e02\\u6d66\\u4e1c\\u65b0\\u533a\\u4e34\\u6e2f\\u65b0\\u57ce\\u6d77\\u6e2f\\u5927\\u90531550\\u53f7","illegal_id":"1011","status":"\\u5ba1\\u6838\\u4e2d","_token":"0ptKzTwduy7DIiSx4PFd0vh2ssHTJXUbu56e6Ia9","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Illegal"}', '2018-05-09 06:08:31', '2018-05-09 06:08:31'),
(519, 1, 'admin/Illegal', 'GET', '127.0.0.1', '[]', '2018-05-09 06:08:33', '2018-05-09 06:08:33'),
(520, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-29 09:22:30', '2018-05-29 09:22:30'),
(521, 1, 'admin/auth/login', 'POST', '127.0.0.1', '{"username":"admin","password":"admin","_token":"dNIzJ5Z8DKWUwg4FGU8cC5nNyRXQwzoiK1R5uatI"}', '2018-05-29 09:22:32', '2018-05-29 09:22:32'),
(522, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-05-29 09:23:03', '2018-05-29 09:23:03'),
(523, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-29 09:23:16', '2018-05-29 09:23:16'),
(524, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-29 09:23:28', '2018-05-29 09:23:28'),
(525, 1, 'admin/users/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-29 09:24:19', '2018-05-29 09:24:19'),
(526, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-29 09:24:26', '2018-05-29 09:24:26'),
(527, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-29 09:24:42', '2018-05-29 09:24:42'),
(528, 1, 'admin/news/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-29 09:24:53', '2018-05-29 09:24:53'),
(529, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-29 09:25:01', '2018-05-29 09:25:01'),
(530, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-05-29 09:25:03', '2018-05-29 09:25:03'),
(531, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-29 09:25:13', '2018-05-29 09:25:13'),
(532, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-29 09:25:17', '2018-05-29 09:25:17'),
(533, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-29 09:25:27', '2018-05-29 09:25:27'),
(534, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-29 09:25:34', '2018-05-29 09:25:34'),
(535, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-05-29 09:25:35', '2018-05-29 09:25:35'),
(536, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-06-01 02:35:14', '2018-06-01 02:35:14'),
(537, 1, 'admin/auth/login', 'POST', '127.0.0.1', '{"username":"admin","password":"admin","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 02:35:16', '2018-06-01 02:35:16'),
(538, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-06-01 02:35:17', '2018-06-01 02:35:17'),
(539, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:35:26', '2018-06-01 02:35:26'),
(540, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:35:30', '2018-06-01 02:35:30'),
(541, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:35:37', '2018-06-01 02:35:37'),
(542, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:35:41', '2018-06-01 02:35:41'),
(543, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:35:53', '2018-06-01 02:35:53'),
(544, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:36:01', '2018-06-01 02:36:01'),
(545, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:36:04', '2018-06-01 02:36:04'),
(546, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:36:07', '2018-06-01 02:36:07'),
(547, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:36:14', '2018-06-01 02:36:14'),
(548, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:36:25', '2018-06-01 02:36:25'),
(549, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:36:31', '2018-06-01 02:36:31'),
(550, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:37:00', '2018-06-01 02:37:00'),
(551, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:37:10', '2018-06-01 02:37:10'),
(552, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:46:55', '2018-06-01 02:46:55'),
(553, 1, 'admin/DrivingLicense/320585199601081616/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:47:09', '2018-06-01 02:47:09'),
(554, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:47:19', '2018-06-01 02:47:19'),
(555, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:47:44', '2018-06-01 02:47:44'),
(556, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:47:47', '2018-06-01 02:47:47'),
(557, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:49:28', '2018-06-01 02:49:28'),
(558, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:49:41', '2018-06-01 02:49:41'),
(559, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 02:50:17', '2018-06-01 02:50:17'),
(560, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:50:45', '2018-06-01 02:50:45'),
(561, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:50:50', '2018-06-01 02:50:50'),
(562, 1, 'admin/DriversLicense/320234199707301828', 'PUT', '127.0.0.1', '{"identity":"320234199707301828","real_name":"YR","vehicle_type":"C2","grade":"12","effective_time":"10","address":"\\u4e0a\\u6d77\\u6d77\\u4e8b\\u5927\\u5b66\\u4e34\\u6e2f\\u6821\\u533a","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DriversLicense"}', '2018-06-01 02:51:17', '2018-06-01 02:51:17'),
(563, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 02:51:18', '2018-06-01 02:51:18'),
(564, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 02:51:33', '2018-06-01 02:51:33'),
(565, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:07:37', '2018-06-01 03:07:37'),
(566, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 03:08:06', '2018-06-01 03:08:06'),
(567, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:09:34', '2018-06-01 03:09:34'),
(568, 1, 'admin/DrivingLicense/320585199601081616/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:09:37', '2018-06-01 03:09:37'),
(569, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:09:45', '2018-06-01 03:09:45'),
(570, 1, 'admin/DrivingLicense/320585199601081616/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:09:48', '2018-06-01 03:09:48'),
(571, 1, 'admin/DrivingLicense/320585199601081616', 'PUT', '127.0.0.1', '{"real_name":"test","identity":"320585199601081616","license":"\\u6caaCJ111","engineID":"111111","vin":"234234325","regist_time":null,"safe_check":"\\u662f","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DrivingLicense"}', '2018-06-01 03:09:52', '2018-06-01 03:09:52'),
(572, 1, 'admin/DrivingLicense/320585199601081616/edit', 'GET', '127.0.0.1', '[]', '2018-06-01 03:09:55', '2018-06-01 03:09:55'),
(573, 1, 'admin/DrivingLicense/320585199601081616/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:10:00', '2018-06-01 03:10:00'),
(574, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:10:04', '2018-06-01 03:10:04'),
(575, 1, 'admin/DriversLicense/320585199601081616/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:10:11', '2018-06-01 03:10:11'),
(576, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:10:16', '2018-06-01 03:10:16'),
(577, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:10:25', '2018-06-01 03:10:25'),
(578, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:10:42', '2018-06-01 03:10:42'),
(579, 1, 'admin/Illegal/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:10:47', '2018-06-01 03:10:47'),
(580, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:11:09', '2018-06-01 03:11:09'),
(581, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:11:51', '2018-06-01 03:11:51'),
(582, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:12:02', '2018-06-01 03:12:02'),
(583, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:13:07', '2018-06-01 03:13:07'),
(584, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:13:15', '2018-06-01 03:13:15'),
(585, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:14:29', '2018-06-01 03:14:29'),
(586, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u51c6\\u8003\\u8bc1\\u7ba1\\u7406","icon":"fa-file-text-o","uri":"\\/admin\\/admission","roles":["1",null],"_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 03:16:27', '2018-06-01 03:16:27'),
(587, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-06-01 03:16:29', '2018-06-01 03:16:29'),
(588, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-06-01 03:16:41', '2018-06-01 03:16:41'),
(589, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_order":"[{\\"id\\":1},{\\"id\\":8},{\\"id\\":10},{\\"id\\":9},{\\"id\\":11},{\\"id\\":12},{\\"id\\":14},{\\"id\\":13},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2018-06-01 03:16:57', '2018-06-01 03:16:57'),
(590, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:17:00', '2018-06-01 03:17:00'),
(591, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_order":"[{\\"id\\":1},{\\"id\\":8},{\\"id\\":10},{\\"id\\":9},{\\"id\\":11},{\\"id\\":12},{\\"id\\":14},{\\"id\\":13},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2018-06-01 03:17:22', '2018-06-01 03:17:22'),
(592, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:17:24', '2018-06-01 03:17:24'),
(593, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:17:26', '2018-06-01 03:17:26'),
(594, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-06-01 03:17:31', '2018-06-01 03:17:31'),
(595, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:26:54', '2018-06-01 03:26:54'),
(596, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u51c6\\u8003\\u8bc1\\u7ba1\\u7406","icon":"fa-file-text-o","uri":"\\/admission","roles":["1",null],"_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu"}', '2018-06-01 03:27:03', '2018-06-01 03:27:03'),
(597, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-06-01 03:27:04', '2018-06-01 03:27:04'),
(598, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-06-01 03:27:23', '2018-06-01 03:27:23'),
(599, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:27:32', '2018-06-01 03:27:32'),
(600, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:27:39', '2018-06-01 03:27:39'),
(601, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u51c6\\u8003\\u8bc1\\u7ba1\\u7406","icon":"fa-file-text-o","uri":"\\/Admission","roles":["1",null],"_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu"}', '2018-06-01 03:27:48', '2018-06-01 03:27:48'),
(602, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-06-01 03:27:50', '2018-06-01 03:27:50'),
(603, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-06-01 03:28:17', '2018-06-01 03:28:17'),
(604, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:28:28', '2018-06-01 03:28:28'),
(605, 1, 'admin/Admission', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:29:07', '2018-06-01 03:29:07'),
(606, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:31:13', '2018-06-01 03:31:13'),
(607, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u6362\\u8bc1\\u7ba1\\u7406","icon":"fa-phone","uri":"Change","roles":["1",null],"_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 03:33:52', '2018-06-01 03:33:52'),
(608, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-06-01 03:33:54', '2018-06-01 03:33:54'),
(609, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_order":"[{\\"id\\":1},{\\"id\\":8},{\\"id\\":10},{\\"id\\":9},{\\"id\\":11},{\\"id\\":12},{\\"id\\":14},{\\"id\\":15},{\\"id\\":13},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2018-06-01 03:34:01', '2018-06-01 03:34:01'),
(610, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_order":"[{\\"id\\":1},{\\"id\\":8},{\\"id\\":10},{\\"id\\":9},{\\"id\\":11},{\\"id\\":12},{\\"id\\":14},{\\"id\\":15},{\\"id\\":13},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2018-06-01 03:34:05', '2018-06-01 03:34:05'),
(611, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:34:07', '2018-06-01 03:34:07'),
(612, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:34:08', '2018-06-01 03:34:08'),
(613, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-06-01 03:34:10', '2018-06-01 03:34:10'),
(614, 1, 'admin/Change', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:34:15', '2018-06-01 03:34:15'),
(615, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:34:42', '2018-06-01 03:34:42'),
(616, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u5b89\\u68c0\\u9884\\u7ea6\\u7ba1\\u7406","icon":"fa-hospital-o","uri":"Check","roles":["1",null],"_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 03:35:35', '2018-06-01 03:35:35'),
(617, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-06-01 03:35:37', '2018-06-01 03:35:37'),
(618, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_order":"[{\\"id\\":1},{\\"id\\":8},{\\"id\\":10},{\\"id\\":9},{\\"id\\":11},{\\"id\\":12},{\\"id\\":14},{\\"id\\":15},{\\"id\\":16},{\\"id\\":13},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2018-06-01 03:35:44', '2018-06-01 03:35:44'),
(619, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:35:48', '2018-06-01 03:35:48'),
(620, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-06-01 03:36:28', '2018-06-01 03:36:28'),
(621, 1, 'admin/Check', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 03:36:35', '2018-06-01 03:36:35'),
(622, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:25:57', '2018-06-01 04:25:57'),
(623, 1, 'admin/users/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:28:40', '2018-06-01 04:28:40'),
(624, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:28:57', '2018-06-01 04:28:57'),
(625, 1, 'admin/users/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:29:03', '2018-06-01 04:29:03'),
(626, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:29:07', '2018-06-01 04:29:07'),
(627, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:29:12', '2018-06-01 04:29:12'),
(628, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:29:20', '2018-06-01 04:29:20');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(629, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:29:21', '2018-06-01 04:29:21'),
(630, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:29:30', '2018-06-01 04:29:30'),
(631, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:29:32', '2018-06-01 04:29:32'),
(632, 1, 'admin/news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:31:24', '2018-06-01 04:31:24'),
(633, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:31:36', '2018-06-01 04:31:36'),
(634, 1, 'admin/news/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:31:40', '2018-06-01 04:31:40'),
(635, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:31:47', '2018-06-01 04:31:47'),
(636, 1, 'admin/news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:32:48', '2018-06-01 04:32:48'),
(637, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:32:54', '2018-06-01 04:32:54'),
(638, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:32:58', '2018-06-01 04:32:58'),
(639, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:34:13', '2018-06-01 04:34:13'),
(640, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:34:27', '2018-06-01 04:34:27'),
(641, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:34:33', '2018-06-01 04:34:33'),
(642, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:34:37', '2018-06-01 04:34:37'),
(643, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:34:44', '2018-06-01 04:34:44'),
(644, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:34:48', '2018-06-01 04:34:48'),
(645, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:35:00', '2018-06-01 04:35:00'),
(646, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:35:10', '2018-06-01 04:35:10'),
(647, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:36:28', '2018-06-01 04:36:28'),
(648, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:38:12', '2018-06-01 04:38:12'),
(649, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 04:38:23', '2018-06-01 04:38:23'),
(650, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:38:33', '2018-06-01 04:38:33'),
(651, 1, 'admin/DriversLicense/320234199707301828', 'PUT', '127.0.0.1', '{"identity":"320234199707301828","real_name":"YR","vehicle_type":"B2","grade":"12","effective_time":"10","address":"\\u4e0a\\u6d77\\u6d77\\u4e8b\\u5927\\u5b66\\u4e34\\u6e2f\\u6821\\u533a","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DriversLicense"}', '2018-06-01 04:38:56', '2018-06-01 04:38:56'),
(652, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 04:38:57', '2018-06-01 04:38:57'),
(653, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:41:38', '2018-06-01 04:41:38'),
(654, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:41:46', '2018-06-01 04:41:46'),
(655, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:41:49', '2018-06-01 04:41:49'),
(656, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:41:53', '2018-06-01 04:41:53'),
(657, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:42:16', '2018-06-01 04:42:16'),
(658, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:42:21', '2018-06-01 04:42:21'),
(659, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:42:28', '2018-06-01 04:42:28'),
(660, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:42:34', '2018-06-01 04:42:34'),
(661, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:42:36', '2018-06-01 04:42:36'),
(662, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:42:40', '2018-06-01 04:42:40'),
(663, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:43:38', '2018-06-01 04:43:38'),
(664, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:43:42', '2018-06-01 04:43:42'),
(665, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:43:46', '2018-06-01 04:43:46'),
(666, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:43:52', '2018-06-01 04:43:52'),
(667, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:43:56', '2018-06-01 04:43:56'),
(668, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:44:00', '2018-06-01 04:44:00'),
(669, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:45:05', '2018-06-01 04:45:05'),
(670, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:45:09', '2018-06-01 04:45:09'),
(671, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:45:14', '2018-06-01 04:45:14'),
(672, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:45:18', '2018-06-01 04:45:18'),
(673, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:45:39', '2018-06-01 04:45:39'),
(674, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:45:43', '2018-06-01 04:45:43'),
(675, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:45:45', '2018-06-01 04:45:45'),
(676, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:46:03', '2018-06-01 04:46:03'),
(677, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:46:06', '2018-06-01 04:46:06'),
(678, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:46:11', '2018-06-01 04:46:11'),
(679, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:46:14', '2018-06-01 04:46:14'),
(680, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:48:44', '2018-06-01 04:48:44'),
(681, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:48:47', '2018-06-01 04:48:47'),
(682, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:48:51', '2018-06-01 04:48:51'),
(683, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:48:54', '2018-06-01 04:48:54'),
(684, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:49:01', '2018-06-01 04:49:01'),
(685, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:50:39', '2018-06-01 04:50:39'),
(686, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"real_name":"1111","vehicle_type":"A2","grade":"12","effective_time":"10","address":"\\u4e0a\\u6d77\\u6d77\\u4e8b\\u5927\\u5b66","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DriversLicense"}', '2018-06-01 04:51:02', '2018-06-01 04:51:02'),
(687, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 04:51:05', '2018-06-01 04:51:05'),
(688, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:51:35', '2018-06-01 04:51:35'),
(689, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:51:51', '2018-06-01 04:51:51'),
(690, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:51:57', '2018-06-01 04:51:57'),
(691, 1, 'admin/DrivingLicense', 'POST', '127.0.0.1', '{"real_name":"111","license":"111","engineID":"111111","vin":"11111","regist_time":"111111","safe_check":"\\u662f","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DrivingLicense"}', '2018-06-01 04:52:23', '2018-06-01 04:52:23'),
(692, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 04:52:24', '2018-06-01 04:52:24'),
(693, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:53:01', '2018-06-01 04:53:01'),
(694, 1, 'admin/Illegal/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:53:04', '2018-06-01 04:53:04'),
(695, 1, 'admin/Illegal', 'POST', '127.0.0.1', '{"license":"222222222","engineID":"2222222","location":"222222222222222","illegal_id":"1001","status":"\\u5f85\\u786e\\u8ba4","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Illegal"}', '2018-06-01 04:53:35', '2018-06-01 04:53:35'),
(696, 1, 'admin/Illegal/create', 'GET', '127.0.0.1', '[]', '2018-06-01 04:53:37', '2018-06-01 04:53:37'),
(697, 1, 'admin/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:53:50', '2018-06-01 04:53:50'),
(698, 1, 'admin/users/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:53:53', '2018-06-01 04:53:53'),
(699, 1, 'admin/users', 'POST', '127.0.0.1', '{"name":"qwe","real_name":"qwe","sex":"\\u7537","identity":"320234199707301098","phone":"13543437543","status":"\\u672a\\u8ba4\\u8bc1","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_previous_":"http:\\/\\/localhost:8000\\/admin\\/users"}', '2018-06-01 04:54:47', '2018-06-01 04:54:47'),
(700, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-06-01 04:54:48', '2018-06-01 04:54:48'),
(701, 1, 'admin/users/12364/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 04:55:03', '2018-06-01 04:55:03'),
(702, 1, 'admin/users/12364', 'PUT', '127.0.0.1', '{"name":"qwe","real_name":"qwe","sex":"\\u7537","identity":"320234199707301098","phone":"13543437543","status":"\\u5df2\\u8ba4\\u8bc1","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/users"}', '2018-06-01 04:55:13', '2018-06-01 04:55:13'),
(703, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2018-06-01 04:55:14', '2018-06-01 04:55:14'),
(704, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:09:18', '2018-06-01 05:09:18'),
(705, 1, 'admin/news/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:09:23', '2018-06-01 05:09:23'),
(706, 1, 'admin/news', 'POST', '127.0.0.1', '{"title":"\\u5566\\u5566\\u5566\\u5566\\u5566","author":"123","content":"<p>\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566\\u5566<\\/p>\\r\\n\\r\\n<p>\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a\\u554a<\\/p>","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_previous_":"http:\\/\\/localhost:8000\\/admin\\/news"}', '2018-06-01 05:09:48', '2018-06-01 05:09:48'),
(707, 1, 'admin/news', 'GET', '127.0.0.1', '[]', '2018-06-01 05:09:49', '2018-06-01 05:09:49'),
(708, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:10:02', '2018-06-01 05:10:02'),
(709, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:10:13', '2018-06-01 05:10:13'),
(710, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:10:18', '2018-06-01 05:10:18'),
(711, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:10:21', '2018-06-01 05:10:21'),
(712, 1, 'admin/DriversLicense/320234199707301828', 'PUT', '127.0.0.1', '{"real_name":"YR","vehicle_type":"A1","grade":"12","effective_time":"10","address":"\\u4e0a\\u6d77\\u6d77\\u4e8b\\u5927\\u5b66\\u4e34\\u6e2f\\u6821\\u533a","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DriversLicense"}', '2018-06-01 05:10:27', '2018-06-01 05:10:27'),
(713, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 05:10:29', '2018-06-01 05:10:29'),
(714, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:10:33', '2018-06-01 05:10:33'),
(715, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:10:39', '2018-06-01 05:10:39'),
(716, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 05:21:00', '2018-06-01 05:21:00'),
(717, 1, 'admin/DrivingLicense', 'POST', '127.0.0.1', '{"real_name":"11111","license":"11111","engineID":"11111","vin":"11111","regist_time":"2018-05-30","safe_check":"\\u662f","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 05:22:30', '2018-06-01 05:22:30'),
(718, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 05:22:32', '2018-06-01 05:22:32'),
(719, 1, 'admin/DrivingLicense', 'POST', '127.0.0.1', '{"real_name":"11111","license":"11111","engineID":"11111","vin":"11111","regist_time":"2018-05-30","safe_check":"\\u662f","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 05:26:29', '2018-06-01 05:26:29'),
(720, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 05:26:30', '2018-06-01 05:26:30'),
(721, 1, 'admin/DrivingLicense', 'POST', '127.0.0.1', '{"real_name":"11111","license":"11111","engineID":"11111","vin":"11111","regist_time":"2018-05-30","safe_check":"0","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 05:27:04', '2018-06-01 05:27:04'),
(722, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 05:27:06', '2018-06-01 05:27:06'),
(723, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:27:12', '2018-06-01 05:27:12'),
(724, 1, 'admin/DrivingLicense', 'POST', '127.0.0.1', '{"real_name":"555","license":"555","engineID":"5555","vin":"5555","regist_time":"2018-06-08","safe_check":"1","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 05:27:23', '2018-06-01 05:27:23'),
(725, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 05:27:25', '2018-06-01 05:27:25'),
(726, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:27:30', '2018-06-01 05:27:30'),
(727, 1, 'admin/DrivingLicense', 'POST', '127.0.0.1', '{"real_name":"5555","license":"5555","engineID":"55555","vin":"55555","regist_time":"2018-06-09","safe_check":"1","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 05:28:30', '2018-06-01 05:28:30'),
(728, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 05:28:32', '2018-06-01 05:28:32'),
(729, 1, 'admin/DrivingLicense', 'POST', '127.0.0.1', '{"real_name":"5555","license":"5555","engineID":"55555","vin":"55555","regist_time":"2018-06-09","safe_check":"1","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 05:54:30', '2018-06-01 05:54:30'),
(730, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 05:54:34', '2018-06-01 05:54:34'),
(731, 1, 'admin/DrivingLicense', 'POST', '127.0.0.1', '{"real_name":"5555","license":"5555","engineID":"55555","vin":"55555","register_time":"2018-06-28","safe_check":"1","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 05:55:42', '2018-06-01 05:55:42'),
(732, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 05:55:43', '2018-06-01 05:55:43'),
(733, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:57:28', '2018-06-01 05:57:28'),
(734, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:57:33', '2018-06-01 05:57:33'),
(735, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 05:57:41', '2018-06-01 05:57:41'),
(736, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 05:57:45', '2018-06-01 05:57:45'),
(737, 1, 'admin/DrivingLicense/320585199601081616/edit', 'GET', '127.0.0.1', '[]', '2018-06-01 05:58:19', '2018-06-01 05:58:19'),
(738, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 05:59:17', '2018-06-01 05:59:17'),
(739, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 05:59:45', '2018-06-01 05:59:45'),
(740, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 06:00:30', '2018-06-01 06:00:30'),
(741, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:00:49', '2018-06-01 06:00:49'),
(742, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:00:52', '2018-06-01 06:00:52'),
(743, 1, 'admin/news/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:00:56', '2018-06-01 06:00:56'),
(744, 1, 'admin/news', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:01:00', '2018-06-01 06:01:00'),
(745, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 06:01:02', '2018-06-01 06:01:02'),
(746, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 06:02:53', '2018-06-01 06:02:53'),
(747, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-06-01 06:02:58', '2018-06-01 06:02:58'),
(748, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:03:24', '2018-06-01 06:03:24'),
(749, 1, 'admin/DrivingLicense/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:03:30', '2018-06-01 06:03:30'),
(750, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:03:35', '2018-06-01 06:03:35'),
(751, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:03:38', '2018-06-01 06:03:38'),
(752, 1, 'admin/DrivingLicense', 'POST', '127.0.0.1', '{"real_name":"222","identity":"335858199601084736","license":"22222","engineID":"2222222222","vin":"2222222","register_time":"2018-06-17","safe_check":"0","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DrivingLicense"}', '2018-06-01 06:04:06', '2018-06-01 06:04:06'),
(753, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 06:04:08', '2018-06-01 06:04:08'),
(754, 1, 'admin/DrivingLicense/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:04:14', '2018-06-01 06:04:14'),
(755, 1, 'admin/DrivingLicense/5', 'PUT', '127.0.0.1', '{"real_name":"222","identity":"335858199601084736","license":"22222","engineID":"2222222222","vin":"2222222","register_time":"2018-06-17","safe_check":"1","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DrivingLicense"}', '2018-06-01 06:04:20', '2018-06-01 06:04:20'),
(756, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 06:04:21', '2018-06-01 06:04:21'),
(757, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:04:30', '2018-06-01 06:04:30'),
(758, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:04:37', '2018-06-01 06:04:37'),
(759, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:04:48', '2018-06-01 06:04:48'),
(760, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:09:11', '2018-06-01 06:09:11'),
(761, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:09:17', '2018-06-01 06:09:17'),
(762, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 06:09:38', '2018-06-01 06:09:38'),
(763, 1, 'admin/DriversLicense/320234199707301828/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:09:42', '2018-06-01 06:09:42'),
(764, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:09:47', '2018-06-01 06:09:47'),
(765, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:09:50', '2018-06-01 06:09:50'),
(766, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:09:55', '2018-06-01 06:09:55'),
(767, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 06:17:44', '2018-06-01 06:17:44'),
(768, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 06:18:06', '2018-06-01 06:18:06'),
(769, 1, 'admin/DriversLicense/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:18:11', '2018-06-01 06:18:11'),
(770, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:18:15', '2018-06-01 06:18:15'),
(771, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:18:18', '2018-06-01 06:18:18'),
(772, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"identity":"335858199601084787","real_name":"344234","vehicle_type":"A2","grade":"12","effective_time":"10","address":"\\u4e0a\\u6d77\\u6d77\\u4e8b\\u5927\\u5b66","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DriversLicense"}', '2018-06-01 06:18:51', '2018-06-01 06:18:51'),
(773, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 06:18:53', '2018-06-01 06:18:53'),
(774, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-06-01 06:21:42', '2018-06-01 06:21:42'),
(775, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:21:47', '2018-06-01 06:21:47'),
(776, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:21:50', '2018-06-01 06:21:50'),
(777, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"identity":"3335858199601081976","real_name":"lef","vehicle_type":"A2","grade":"12","effective_time":"10","address":"\\u4e0a\\u6d77\\u6d77\\u4e8b\\u5927\\u5b66","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DriversLicense"}', '2018-06-01 06:22:07', '2018-06-01 06:22:07'),
(778, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 06:22:09', '2018-06-01 06:22:09'),
(779, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"identity":"3335858199601081976","real_name":"lef","vehicle_type":"A2","grade":"12","effective_time":"10","address":"\\u4e0a\\u6d77\\u6d77\\u4e8b\\u5927\\u5b66","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 06:24:10', '2018-06-01 06:24:10'),
(780, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 06:24:11', '2018-06-01 06:24:11'),
(781, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"identity":"3335858199601081976","real_name":"lef","vehicle_type":"A2","grade":"12","effective_time":"10","address":"\\u4e0a\\u6d77\\u6d77\\u4e8b\\u5927\\u5b66","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 06:24:40', '2018-06-01 06:24:40'),
(782, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 06:24:41', '2018-06-01 06:24:41'),
(783, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"identity":"3335858199601081976","real_name":"lef","vehicle_type":"A2","grade":"12","effective_time":"10","address":"\\u4e0a\\u6d77\\u6d77\\u4e8b\\u5927\\u5b66","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 06:24:56', '2018-06-01 06:24:56'),
(784, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 06:24:58', '2018-06-01 06:24:58'),
(785, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"identity":"333585199601081976","real_name":"lef","vehicle_type":"A2","grade":"12","effective_time":"10","address":"\\u4e0a\\u6d77\\u6d77\\u4e8b\\u5927\\u5b66","_token":"NyB809MyO078JZNzXefbqLVG3BXmCnNkqenjRH4G"}', '2018-06-01 06:25:24', '2018-06-01 06:25:24'),
(786, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 06:25:25', '2018-06-01 06:25:25'),
(787, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 06:25:36', '2018-06-01 06:25:36'),
(788, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '[]', '2018-06-01 13:26:25', '2018-06-01 13:26:25'),
(789, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2018-06-01 13:26:39', '2018-06-01 13:26:39'),
(790, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 13:26:53', '2018-06-01 13:26:53'),
(791, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 13:50:38', '2018-06-01 13:50:38'),
(792, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 13:50:46', '2018-06-01 13:50:46'),
(793, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-06-01 13:51:01', '2018-06-01 13:51:01'),
(794, 1, 'admin/Admission', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 13:51:11', '2018-06-01 13:51:11'),
(795, 1, 'admin/Change', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 13:51:22', '2018-06-01 13:51:22'),
(796, 1, 'admin/Admission', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 13:51:26', '2018-06-01 13:51:26'),
(797, 1, 'admin/Admission', 'GET', '127.0.0.1', '[]', '2018-06-01 13:59:27', '2018-06-01 13:59:27'),
(798, 1, 'admin/Admission/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 13:59:38', '2018-06-01 13:59:38'),
(799, 1, 'admin/Admission', 'GET', '127.0.0.1', '[]', '2018-06-01 13:59:41', '2018-06-01 13:59:41'),
(800, 1, 'admin/Admission/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 13:59:57', '2018-06-01 13:59:57'),
(801, 1, 'admin/Admission', 'GET', '127.0.0.1', '[]', '2018-06-01 13:59:59', '2018-06-01 13:59:59'),
(802, 1, 'admin/Admission', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:00:46', '2018-06-01 14:00:46'),
(803, 1, 'admin/Admission/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:00:54', '2018-06-01 14:00:54'),
(804, 1, 'admin/Admission', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:01:42', '2018-06-01 14:01:42'),
(805, 1, 'admin/Admission/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:01:46', '2018-06-01 14:01:46'),
(806, 1, 'admin/Admission', 'POST', '127.0.0.1', '{"user_id":"222","region":"\\u4e0a\\u6d77","exam_room":"\\u4e0a\\u6d77\\u5609\\u5b9a","bookdate":"2018-06-22","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Admission"}', '2018-06-01 14:02:54', '2018-06-01 14:02:54'),
(807, 1, 'admin/Admission', 'GET', '127.0.0.1', '[]', '2018-06-01 14:02:56', '2018-06-01 14:02:56'),
(808, 1, 'admin/Change', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:27:26', '2018-06-01 14:27:26'),
(809, 1, 'admin/Admission', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:35:40', '2018-06-01 14:35:40'),
(810, 1, 'admin/Change', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:35:45', '2018-06-01 14:35:45'),
(811, 1, 'admin/Change/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:35:53', '2018-06-01 14:35:53'),
(812, 1, 'admin/Change', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:36:06', '2018-06-01 14:36:06'),
(813, 1, 'admin/Change/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:37:31', '2018-06-01 14:37:31'),
(814, 1, 'admin/Change', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:37:38', '2018-06-01 14:37:38'),
(815, 1, 'admin/Change/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:37:42', '2018-06-01 14:37:42'),
(816, 1, 'admin/Check', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 14:37:47', '2018-06-01 14:37:47'),
(817, 1, 'admin/Check', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:11:55', '2018-06-01 15:11:55'),
(818, 1, 'admin/Check/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:12:12', '2018-06-01 15:12:12'),
(819, 1, 'admin/Check', 'POST', '127.0.0.1', '{"user_id":"123","license":"referfe","type":"\\u5c0f\\u578b\\u8f66","book_date":"2018-06-08","status":"am","region":"\\u4e0a\\u6d77","exam_room":"\\u4e0a\\u6d77\\u5609\\u5b9a","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Check"}', '2018-06-01 15:12:44', '2018-06-01 15:12:44'),
(820, 1, 'admin/Check/create', 'GET', '127.0.0.1', '[]', '2018-06-01 15:12:46', '2018-06-01 15:12:46'),
(821, 1, 'admin/Change', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:14:02', '2018-06-01 15:14:02'),
(822, 1, 'admin/Change/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:14:06', '2018-06-01 15:14:06'),
(823, 1, 'admin/Change', 'POST', '127.0.0.1', '{"name":"\\u9646\\u5189\\u94a6","identity":"320585199601081616","vehicle_type":"C1","phone":"13301611706","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Change"}', '2018-06-01 15:14:31', '2018-06-01 15:14:31'),
(824, 1, 'admin/Change', 'GET', '127.0.0.1', '[]', '2018-06-01 15:14:33', '2018-06-01 15:14:33'),
(825, 1, 'admin/Change/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:26:28', '2018-06-01 15:26:28'),
(826, 1, 'admin/Change', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:26:31', '2018-06-01 15:26:31'),
(827, 1, 'admin/Change/4/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:26:34', '2018-06-01 15:26:34'),
(828, 1, 'admin/Admission', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:26:39', '2018-06-01 15:26:39'),
(829, 1, 'admin/Admission/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:26:42', '2018-06-01 15:26:42'),
(830, 1, 'admin/Admission', 'POST', '127.0.0.1', '{"user_id":"12345","region":"\\u4e0a\\u6d77","exam_room":"\\u4e0a\\u6d77\\u5609\\u5b9a","bookdate":"2018-06-28","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Admission"}', '2018-06-01 15:26:56', '2018-06-01 15:26:56'),
(831, 1, 'admin/Admission', 'GET', '127.0.0.1', '[]', '2018-06-01 15:26:57', '2018-06-01 15:26:57'),
(832, 1, 'admin/Illegal', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:27:05', '2018-06-01 15:27:05'),
(833, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:27:16', '2018-06-01 15:27:16'),
(834, 1, 'admin/Check', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:27:22', '2018-06-01 15:27:22'),
(835, 1, 'admin/Check/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:27:26', '2018-06-01 15:27:26'),
(836, 1, 'admin/Check', 'POST', '127.0.0.1', '{"user_id":"2","license":"\\u6caacj222","type":"\\u5c0f\\u578b\\u8f66","book_date":"2018-06-09","status":"pm","region":"\\u4e0a\\u6d77","exam_room":"\\u4e0a\\u6d77\\u5609\\u5b9a","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Check"}', '2018-06-01 15:28:08', '2018-06-01 15:28:08'),
(837, 1, 'admin/Check/create', 'GET', '127.0.0.1', '[]', '2018-06-01 15:28:09', '2018-06-01 15:28:09'),
(838, 1, 'admin/Check', 'POST', '127.0.0.1', '{"user_id":"2","license":"\\u6caacj222","type":"\\u5c0f\\u578b\\u8f66","book_date":"2018-06-09","status":"pm","region":"\\u4e0a\\u6d77","exam_room":"\\u4e0a\\u6d77\\u5609\\u5b9a","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv"}', '2018-06-01 15:30:00', '2018-06-01 15:30:00'),
(839, 1, 'admin/Check', 'GET', '127.0.0.1', '[]', '2018-06-01 15:30:01', '2018-06-01 15:30:01'),
(840, 1, 'admin/Check/48/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:30:19', '2018-06-01 15:30:19'),
(841, 1, 'admin/Check/48', 'PUT', '127.0.0.1', '{"user_id":"2","license":"\\u6caacj222","type":"\\u5c0f\\u578b\\u8f66","book_date":"2018-06-09","book_time":"pm","region":"\\u4e0a\\u6d77","exam_room":"\\u4e0a\\u6d77\\u5609\\u5b9a","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Check"}', '2018-06-01 15:30:29', '2018-06-01 15:30:29'),
(842, 1, 'admin/Check', 'GET', '127.0.0.1', '[]', '2018-06-01 15:30:30', '2018-06-01 15:30:30'),
(843, 1, 'admin/Check/48/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:30:38', '2018-06-01 15:30:38'),
(844, 1, 'admin/Check/48', 'PUT', '127.0.0.1', '{"user_id":"2","license":"\\u6caacj222","type":"\\u5c0f\\u578b\\u8f66","book_date":"2018-06-09","book_time":"am","region":"\\u4e0a\\u6d77","exam_room":"\\u4e0a\\u6d77\\u5609\\u5b9a","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv","_method":"PUT","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Check"}', '2018-06-01 15:30:42', '2018-06-01 15:30:42'),
(845, 1, 'admin/Check', 'GET', '127.0.0.1', '[]', '2018-06-01 15:30:44', '2018-06-01 15:30:44'),
(846, 1, 'admin/Check/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:30:51', '2018-06-01 15:30:51'),
(847, 1, 'admin/Check', 'POST', '127.0.0.1', '{"user_id":"3","license":"344444","type":"\\u4e2d\\u578b\\u8f66","book_date":"2018-06-29","book_time":"am","region":"\\u4e0a\\u6d77","exam_room":"\\u4e0a\\u6d77\\u5609\\u5b9a","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Check"}', '2018-06-01 15:31:13', '2018-06-01 15:31:13'),
(848, 1, 'admin/Check', 'GET', '127.0.0.1', '[]', '2018-06-01 15:31:14', '2018-06-01 15:31:14'),
(849, 1, 'admin/Check/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:33:03', '2018-06-01 15:33:03'),
(850, 1, 'admin/Check', 'POST', '127.0.0.1', '{"user_id":"4","license":"34344","type":"\\u5c0f\\u578b\\u8f66","book_date":"2018-06-27","book_time":"pm","region":"\\u4e0a\\u6d77","exam_room":"\\u4e0a\\u6d77\\u5609\\u5b9a","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Check"}', '2018-06-01 15:33:18', '2018-06-01 15:33:18'),
(851, 1, 'admin/Check', 'GET', '127.0.0.1', '[]', '2018-06-01 15:33:19', '2018-06-01 15:33:19'),
(852, 1, 'admin/Check/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:34:09', '2018-06-01 15:34:09'),
(853, 1, 'admin/Check', 'POST', '127.0.0.1', '{"name":"\\u54a7\\u54a7\\u54a7","user_id":"1234","license":"34254","type":"\\u4e2d\\u578b\\u8f66","book_date":"2018-06-27","book_time":"pm","region":"\\u4e0a\\u6d77","exam_room":"\\u4e0a\\u6d77\\u5609\\u5b9a","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv","_previous_":"http:\\/\\/localhost:8000\\/admin\\/Check"}', '2018-06-01 15:34:25', '2018-06-01 15:34:25'),
(854, 1, 'admin/Check', 'GET', '127.0.0.1', '[]', '2018-06-01 15:34:26', '2018-06-01 15:34:26'),
(855, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:34:59', '2018-06-01 15:34:59'),
(856, 1, 'admin/Change', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:35:01', '2018-06-01 15:35:01'),
(857, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:35:05', '2018-06-01 15:35:05'),
(858, 1, 'admin/auth/menu/13', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv"}', '2018-06-01 15:35:12', '2018-06-01 15:35:12'),
(859, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:35:13', '2018-06-01 15:35:13'),
(860, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:35:30', '2018-06-01 15:35:30'),
(861, 1, 'admin/DrivingLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:35:33', '2018-06-01 15:35:33'),
(862, 1, 'admin/DrivingLicense', 'POST', '127.0.0.1', '{"real_name":"lrqlrq","identity":"444444444444444444","license":"\\u6caaCJ123","engineID":"171008","vin":"354667678","register_time":"2018-06-01","safe_check":"0","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DrivingLicense"}', '2018-06-01 15:36:32', '2018-06-01 15:36:32'),
(863, 1, 'admin/DrivingLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 15:36:33', '2018-06-01 15:36:33'),
(864, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:36:43', '2018-06-01 15:36:43'),
(865, 1, 'admin/DriversLicense/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-06-01 15:36:46', '2018-06-01 15:36:46'),
(866, 1, 'admin/DriversLicense', 'POST', '127.0.0.1', '{"identity":"444444444444444444","real_name":"lrqlrq","vehicle_type":"C1","grade":"12","effective_time":"10","address":"\\u4e0a\\u6d77\\u6d77\\u4e8b\\u5927\\u5b66","_token":"TWddcJT23vemRomymxPNX6wwsLFqud55NF6VrxHv","_previous_":"http:\\/\\/localhost:8000\\/admin\\/DriversLicense"}', '2018-06-01 15:37:20', '2018-06-01 15:37:20'),
(867, 1, 'admin/DriversLicense', 'GET', '127.0.0.1', '[]', '2018-06-01 15:37:22', '2018-06-01 15:37:22');

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2018-05-05 03:03:39', '2018-05-05 03:03:39');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_menu`
--

CREATE TABLE IF NOT EXISTS `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 14, NULL, NULL),
(1, 15, NULL, NULL),
(1, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_permissions`
--

CREATE TABLE IF NOT EXISTS `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_users`
--

CREATE TABLE IF NOT EXISTS `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$mertv33RVch53qdsJ4YKcuNSZxqj/wy5N0LMM2vqlEoAu5.ozGMu2', '陆冉钦', 'images/e3678e7ff81ceacc4cbcbb5ff8bdc5bf.jpg', 'K3a7XIVGc5iytff08ioqVZlVGYIxyqSHwMnqOakDuaP2ZztAUGadH6BBJQmq', '2018-05-05 03:03:38', '2018-05-05 03:32:06');

-- --------------------------------------------------------

--
-- 表的结构 `admin_user_permissions`
--

CREATE TABLE IF NOT EXISTS `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `admission`
--

CREATE TABLE IF NOT EXISTS `admission` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `region` varchar(20) NOT NULL,
  `bookdate` date NOT NULL,
  `exam_room` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admission`
--

INSERT INTO `admission` (`id`, `user_id`, `region`, `bookdate`, `exam_room`, `created_at`, `updated_at`) VALUES
(1, 1, '上海', '0000-00-00', '上海嘉定', '2018-05-07 03:41:23', '2018-05-07 03:41:23'),
(2, 1, '上海', '2018-05-07', '上海嘉定', '2018-05-07 05:50:49', '2018-05-07 05:50:49'),
(3, 1, '上海', '2018-05-07', '上海嘉定', '2018-05-08 05:01:49', '2018-05-08 05:01:49'),
(4, 1, '上海', '2018-05-07', '上海嘉定', '2018-05-08 05:49:54', '2018-05-08 05:49:54'),
(5, 1, '上海', '2018-05-07', '上海嘉定', '2018-05-08 06:18:29', '2018-05-08 06:18:29'),
(6, 2, '上海', '2018-05-16', '上海海事大学', '2018-05-08 06:18:42', '2018-05-08 06:18:42'),
(7, 2, '上海', '2018-05-16', '上海海事大学', '2018-05-08 06:36:14', '2018-05-08 06:36:14'),
(8, 2, '上海', '2018-05-16', '上海嘉定', '2018-05-08 06:54:36', '2018-05-08 06:54:36'),
(9, 12359, '上海', '2018-05-16', '上海海事大学', '2018-05-09 01:02:07', '2018-05-09 01:02:07'),
(10, 2, '上海', '2018-05-16', '上海海事大学', '2018-05-09 12:46:26', '2018-05-09 12:46:26'),
(11, 2, '上海', '2018-05-16', '上海海事大学', '2018-05-09 12:52:00', '2018-05-09 12:52:00'),
(12, 2, '上海', '2018-05-30', '上海海事大学', '2018-05-22 06:50:05', '2018-05-22 06:50:05'),
(13, 2, '上海', '2018-06-06', '上海嘉定', '2018-05-31 14:49:00', '2018-05-31 14:49:00'),
(14, 222, '上海', '2018-06-22', '上海嘉定', '2018-06-01 14:02:54', '2018-06-01 14:02:54'),
(15, 12345, '上海', '2018-06-28', '上海嘉定', '2018-06-01 15:26:56', '2018-06-01 15:26:56');

-- --------------------------------------------------------

--
-- 表的结构 `change_license`
--

CREATE TABLE IF NOT EXISTS `change_license` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `identity` varchar(18) NOT NULL,
  `vehicle_type` varchar(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `change_license`
--

INSERT INTO `change_license` (`id`, `name`, `identity`, `vehicle_type`, `phone`, `created_at`, `updated_at`) VALUES
(1, '', '320585199601081616', '', '0', '2018-05-22 05:21:39', '2018-05-22 05:21:39'),
(2, '', '324523554356446245', 'C1', '13333333333', '2018-05-31 12:36:02', '2018-05-31 12:36:02'),
(3, '2号选手', '320234199707301828', '', '', '2018-05-31 14:24:17', '2018-05-31 14:24:17'),
(4, '陆冉钦', '320585199601081616', 'C1', '13301611706', '2018-06-01 15:14:32', '2018-06-01 15:14:32');

-- --------------------------------------------------------

--
-- 表的结构 `complain`
--

CREATE TABLE IF NOT EXISTS `complain` (
  `id` int(11) NOT NULL,
  `illegal_info_id` int(50) NOT NULL,
  `content` text NOT NULL,
  `accept` tinyint(1) NOT NULL DEFAULT '0' COMMENT '申诉是否接受',
  `response` text COMMENT '管理回复理由',
  `picture_1` varchar(191) DEFAULT NULL,
  `picture_2` varchar(191) DEFAULT NULL,
  `picture_3` varchar(191) DEFAULT NULL,
  `status` enum('申诉中','申诉失败','申诉成功','未申诉') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `complain`
--

INSERT INTO `complain` (`id`, `illegal_info_id`, `content`, `accept`, `response`, `picture_1`, `picture_2`, `picture_3`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, '苍天不公', 0, NULL, '/pic1', '/pic2', '/pic3', '未申诉', '2018-06-01 08:55:02', '2018-05-07 02:13:34'),
(6, 4, 'new', 0, NULL, 'complain_image/YIf6tLzQbDqUajNGUiRKeAFo9mEOengpaCqvB5EQ.jpeg', NULL, NULL, '申诉成功', '2018-06-01 10:43:17', '2018-06-01 07:37:39'),
(7, 3, '111', 0, NULL, 'complain_image/knc6Ad0oZWezw5BEjbxwfTnfEPjKDCls4tVNoGuv.jpeg', NULL, NULL, '未申诉', '2018-06-01 11:44:36', '2018-06-01 08:53:49');

-- --------------------------------------------------------

--
-- 表的结构 `drivers_license`
--

CREATE TABLE IF NOT EXISTS `drivers_license` (
  `id` int(11) NOT NULL,
  `identity` varchar(18) NOT NULL COMMENT '身份证号',
  `effective_time` int(10) NOT NULL,
  `vehicle_type` varchar(10) NOT NULL COMMENT '驾驶证类型',
  `grade` int(50) NOT NULL,
  `real_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `drivers_license`
--

INSERT INTO `drivers_license` (`id`, `identity`, `effective_time`, `vehicle_type`, `grade`, `real_name`, `created_at`, `updated_at`, `address`) VALUES
(1, '320234199707301828', 10, 'A1', 10, 'YR', '2018-04-28 13:44:50', '2018-05-01 09:49:36', '上海海事大学临港校区'),
(2, '320585199601081616', 10, 'C1', 9, 'LRQ', '2018-04-28 11:13:53', '2018-05-02 08:09:51', '上海市嘉定区'),
(3, '320585199601081918', 10, 'B1', 12, '陆冉钦', '2018-05-10 05:46:19', '2018-05-10 05:46:19', '上海海事大学'),
(4, '320585199601081919', 10, 'C1', 12, '测试号', '2018-05-09 00:56:26', '2018-05-09 00:56:26', '上海海事大学'),
(5, '333585199601081976', 10, 'A2', 12, 'lef', '2018-06-01 06:25:24', '2018-06-01 06:25:24', '上海海事大学'),
(6, '444444444444444444', 10, 'C1', 12, 'lrqlrq', '2018-06-01 15:37:21', '2018-06-01 15:37:21', '上海海事大学');

-- --------------------------------------------------------

--
-- 表的结构 `driving_license`
--

CREATE TABLE IF NOT EXISTS `driving_license` (
  `id` int(11) NOT NULL,
  `identity` varchar(18) NOT NULL,
  `license` varchar(50) NOT NULL,
  `engineID` varchar(50) NOT NULL,
  `vin` varchar(50) NOT NULL,
  `register_time` timestamp NOT NULL,
  `safe_check` tinyint(1) NOT NULL,
  `real_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `driving_license`
--

INSERT INTO `driving_license` (`id`, `identity`, `license`, `engineID`, `vin`, `register_time`, `safe_check`, `real_name`, `created_at`, `updated_at`) VALUES
(1, '320585199601081616', '沪CJ111', '111111', '234234325', '2018-05-02 10:27:03', 0, 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '320234199707301828', '沪CJ222', '222222', '63454234', '2018-05-02 10:38:41', 0, 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '320234199707301828', '沪C3333', '333333', '34234325', '2018-05-02 10:44:43', 0, 'name', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '320585199601081918', '沪BBI183', '111111', '372863728', '2018-05-10 05:40:05', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '335858199601084736', '22222', '2222222222', '2222222', '2018-06-16 16:00:00', 1, '222', '2018-06-01 06:04:07', '2018-06-01 06:04:20'),
(6, '444444444444444444', '沪CJ123', '171008', '354667678', '2018-05-31 16:00:00', 0, 'lrqlrq', '2018-06-01 15:36:32', '2018-06-01 15:36:32');

-- --------------------------------------------------------

--
-- 表的结构 `exam_center`
--

CREATE TABLE IF NOT EXISTS `exam_center` (
  `id` int(11) NOT NULL,
  `exam_room` varchar(50) NOT NULL COMMENT '考场',
  `capacity` int(11) NOT NULL COMMENT '容量',
  `region` varchar(20) NOT NULL COMMENT '考场所属地区',
  `existing` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `exam_center`
--

INSERT INTO `exam_center` (`id`, `exam_room`, `capacity`, `region`, `existing`) VALUES
(1, '上海海事大学', 100, '上海', 0),
(2, '上海嘉定', 100, '上海', 0),
(3, '江苏连云港', 100, '江苏', 0);

-- --------------------------------------------------------

--
-- 表的结构 `illegal_code`
--

CREATE TABLE IF NOT EXISTS `illegal_code` (
  `id` int(11) NOT NULL,
  `deduction` int(50) NOT NULL COMMENT '扣分',
  `fine` int(50) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `illegal_code`
--

INSERT INTO `illegal_code` (`id`, `deduction`, `fine`, `revoked`, `description`) VALUES
(1001, 0, 1000, 1, '驾驶拼装的机动车上道路行驶的 A:驾驶拼装的非汽车类机动车上道路行驶的'),
(1002, 0, 1500, 1, '驾驶拼装的机动车上道路行驶的 B:驾驶拼装的汽车上道路行驶的'),
(1003, 0, 1000, 1, '驾驶已达报废标准的车辆上道路行驶的 A:驾驶已达报废标准的非汽车类机动车上道路行驶的'),
(1004, 0, 1500, 1, '驾驶已达报废标准的车辆上道路行驶的 B:驾驶已达报废标准的汽车上道路行驶的'),
(1005, 0, 0, 1, '造成交通事故后逃逸，构成犯罪的 A:持有机动车驾驶证'),
(1006, 0, 0, 1, '造成交通事故后逃逸，构成犯罪的 B:未取得机动车驾驶证'),
(1007, 0, 0, 1, '违反道路交通安全法律、法规的规定，发生重大事故，构成犯罪的'),
(1008, 0, 1000, 0, '未取得驾驶证驾驶机动车的 A:未取得驾驶证驾驶非汽车类机动车的'),
(1009, 0, 1500, 0, '未取得驾驶证驾驶机动车的 B:未取得驾驶证驾驶汽车的'),
(1010, 0, 1000, 0, '驾驶证被吊销期间驾驶机动车的 A:驾驶证被吊销期间驾驶非汽车类机动车的'),
(1011, 0, 1500, 0, '驾驶证被吊销期间驾驶机动车的 B:驾驶证被吊销期间驾驶汽车的'),
(1012, 0, 1500, 0, '把机动车交给未取得机动车驾驶证的人驾驶的'),
(1013, 0, 1500, 0, '把机动车交给机动车驾驶证被吊销的人驾驶的'),
(1014, 0, 1500, 0, '把机动车交给机动车驾驶证被暂扣的人驾驶的'),
(1015, 0, 1000, 0, '驾驶人在驾驶证超过有效期仍驾驶机动车的 A驾驶人在驾驶证超过有效期仍驾驶非汽车类机动车的'),
(1016, 0, 1500, 0, '驾驶人在驾驶证超过有效期仍驾驶机动车的 B驾驶人在驾驶证超过有效期仍驾驶汽车的'),
(1017, 0, 1000, 0, '非法安装警报器的'),
(1018, 0, 1000, 0, '非法安装标志灯具的'),
(1019, 0, 200, 0, '驾驶证丢失期间仍驾驶机动车的'),
(1020, 0, 200, 0, '驾驶证损毁期间仍驾驶机动车的'),
(1021, 0, 200, 0, '驾驶证被依法扣留期间仍驾驶机动车的'),
(1022, 0, 200, 0, '违法记分达到12分仍驾驶机动车的'),
(1023, 0, 150, 0, '不按规定投保机动车第三者责任险的'),
(1024, 0, 0, 0, '机动车不在机动车道内行驶的'),
(1025, 0, 150, 0, '机动车违反规定使用专用车道的'),
(1026, 0, 200, 0, '机动车驾驶人不服从交警指挥的'),
(1027, 0, 200, 0, '遇前方机动车停车排队等候或者缓慢行驶时，从前方车辆两侧穿插行驶的'),
(1028, 0, 200, 0, '遇前方机动车停车排队等候或者缓慢行驶时，从前方车辆两侧穿插行驶的'),
(1029, 0, 100, 0, '遇前方机动车停车排队等候或者缓慢行驶时，未依次交替驶入车道减少后的路口、路段的'),
(1030, 0, 100, 0, '在没有交通信号灯、交通标志、交通标线或者交警指挥的交叉路口遇到停车排队等候或者缓慢行驶时，机动车未依次交替通行的'),
(1031, 0, 100, 0, '遇前方机动车停车排队等候或者缓慢行驶时，在人行横道、网状线区域内停车等候的'),
(1032, 0, 50, 0, '行经铁路道口，不按规定通行的'),
(1033, 0, 150, 0, '机动车载货长度、宽度、高度超过规定的'),
(1034, 0, 150, 0, '机动车载物行驶时遗洒、飘散载运物的'),
(1035, 0, 150, 0, '运载超限物品时不按规定的时间、路线、速度行驶的'),
(1036, 0, 150, 0, '运载超限物品时未悬挂明显标志的'),
(1037, 0, 200, 0, '运载危险物品未经批准的'),
(1038, 0, 200, 0, '运载危险物品时不按规定的时间、路线、速度行驶的'),
(1039, 0, 200, 0, '运载危险物品时未悬挂警示标志的'),
(1040, 0, 200, 0, '运载危险物品时未采取必要的安全措施的'),
(1041, 0, 200, 0, '载客汽车载货违反规定的'),
(1042, 0, 200, 0, '货运机动车违反规定载人的'),
(1043, 0, 200, 0, '未将故障车辆移到不妨碍交通的地方停放的'),
(1044, 0, 50, 0, '不避让正在作业的道路养护车、工程作业车的'),
(1045, 0, 200, 0, '机动车违反规定停放、临时停车且驾驶人不在现场或驾驶人虽在现场拒绝立即驶离，妨碍其它车辆、行人通行的'),
(1046, 0, 150, 0, '机动车喷涂、粘贴标识或者车身广告影响安全驾驶的'),
(1047, 0, 200, 0, '道路养护施工作业车辆、机械作业时未开启示警灯和危险报警闪光灯的'),
(1048, 0, 200, 0, '机动车不按规定车道行驶的'),
(1049, 0, 200, 0, '变更车道时影响正常行驶的机动车的'),
(1050, 0, 200, 0, '在禁止掉头或者禁止左转弯标志、标线的地点掉头的'),
(1051, 0, 200, 0, '在容易发生危险的路段掉头的'),
(1052, 0, 200, 0, '掉头时妨碍正常行驶的车辆和行人通行的'),
(1053, 0, 50, 0, '机动车未按规定鸣喇叭示意的'),
(1054, 0, 150, 0, '在禁止鸣喇叭的区域或者路段鸣喇叭的'),
(1055, 0, 50, 0, '在机动车驾驶室的前后窗范围内悬挂、放置妨碍驾驶人视线的物品的'),
(1056, 0, 50, 0, '机动车行经漫水路或漫水桥时未低速通过的'),
(1057, 0, 100, 0, '机动车载运超限物品行经铁路道口时不按指定的道口通过的'),
(1058, 0, 100, 0, '机动车载运超限物品行经铁路道口时不按指定的时间通过的'),
(1059, 0, 50, 0, '机动车行经渡口，不服从渡口管理人员指挥，不依次待渡的'),
(1060, 0, 50, 0, '上下渡船时，不低速慢行的'),
(1061, 0, 200, 0, '特种车辆违反规定使用警报器的'),
(1062, 0, 200, 0, '特种车辆违反规定使用标志灯具的'),
(1063, 0, 100, 0, '机动车在单位院内居民居住区内不低速行驶的'),
(1064, 0, 100, 0, '机动车在单位院内居民居住区内不避让行人的'),
(1065, 0, 150, 0, '驾驶摩托车手离车把的'),
(1066, 0, 150, 0, '驾驶摩托车在车把上悬挂物品的'),
(1067, 0, 150, 0, '拖拉机驶入大中城市中心城区内道路的'),
(1068, 0, 150, 0, '拖拉机驶入其它禁止通行道路的'),
(1069, 0, 200, 0, '拖拉机违反规定载人的'),
(1070, 0, 150, 0, '拖拉机牵引多辆挂车的'),
(1071, 0, 100, 0, '学习驾驶人不按指定路线上道路学习驾驶的'),
(1072, 0, 100, 0, '学习驾驶人不按指定时间上道路学习驾驶的'),
(1073, 0, 100, 0, '学习驾驶人使用非教练车上道路驾驶的'),
(1074, 0, 100, 0, '学习驾驶人在教练不随车指导下上道路驾驶车辆的'),
(1075, 0, 100, 0, '使用教练车时有与教学无关的人员乘坐的'),
(1076, 0, 50, 0, '实习期内未粘贴或悬挂实习标志的'),
(1077, 0, 100, 0, '上道路行驶的机动车未放置检验合格标志的'),
(1078, 0, 200, 0, '驾驶安全设施不全的机动车的'),
(1079, 0, 200, 0, '驾驶机件不符合技术标准的机动车的'),
(1080, 0, 200, 0, '驾驶人未按规定使用安全带的'),
(1081, 1, 200, 0, '不按规定使用灯光的'),
(1082, 1, 100, 0, '不按规定会车的'),
(1083, 1, 100, 0, '不按规定倒车的'),
(1084, 1, 100, 0, '摩托车后座乘坐不满十二周岁未成年人的'),
(1085, 1, 100, 0, '驾驶轻便摩托车载人的'),
(1086, 1, 50, 0, '在车门、车厢没有关好时行车的'),
(1087, 1, 100, 0, '上道路行驶的机动车未放置保险标志的'),
(1088, 1, 100, 0, '未随车携带行驶证的'),
(1089, 1, 100, 0, '未随车携带驾驶证的'),
(1090, 2, 200, 0, '机动车载物超过核定载质量未达30%的'),
(1091, 2, 50, 0, '机动车在没有划分机动车道、非机动车道和人行道的道路上，不在道路中间通行的'),
(1092, 2, 200, 0, '行经人行横道，未减速行驶的'),
(1093, 2, 200, 0, '遇行人正在通过人行横道时未停车让行的'),
(1094, 2, 200, 0, '行经没有交通信号的道路时，遇行人横过道路未避让的'),
(1095, 2, 200, 0, '驾驶摩托车时驾驶人未按规定戴安全头盔的'),
(1096, 2, 100, 0, '机动车通过有灯控路口时，不按所需行进方向驶入导向车道的'),
(1097, 2, 100, 0, '左转弯时，未靠路口中心点左侧转弯的'),
(1098, 2, 100, 0, '通过路口遇放行信号不依次通过的'),
(1099, 2, 100, 0, '通过路口遇停止信号时，停在停止线以内或路口内的'),
(1100, 2, 100, 0, '通过路口向右转弯遇同车道内有车等候放行信号时，不依次停车等候的'),
(1101, 2, 100, 0, '牵引故障机动车时，被牵引的机动车除驾驶人外载人的'),
(1102, 2, 100, 0, '牵引故障机动车时，被牵引的机动车拖带挂车的'),
(1103, 2, 100, 0, '牵引故障机动车时，被牵引的机动车宽度大于牵引的机动车的'),
(1104, 2, 100, 0, '使用软连接装置牵引故障机动车时，牵引车与被牵引车之间未保持安全距离的'),
(1105, 2, 100, 0, '牵引制动失效的被牵引车，未使用硬连接牵引装置的'),
(1106, 2, 100, 0, '使用汽车吊车牵引车辆的'),
(1107, 2, 100, 0, '使用轮式专用机械牵引车辆的'),
(1108, 2, 100, 0, '使用摩托车牵引车辆的'),
(1109, 2, 100, 0, '牵引摩托车的'),
(1110, 2, 100, 0, '未使用专用清障车拖曳转向或照明、信号装置失效的机动车的'),
(1111, 2, 100, 0, '驾驶时拨打接听手持电话的'),
(1112, 2, 100, 0, '驾驶时观看电视的'),
(1113, 2, 100, 0, '驾车时有其他妨碍安全行车的行为的'),
(1114, 2, 200, 0, '连续驾驶机动车超过4小时未停车休息或停车休息时间少于20分钟的'),
(1115, 2, 200, 0, '在同车道行驶中，不按规定与前车保持必要的安全距离的'),
(1116, 2, 200, 0, '路口遇有交通阻塞时未依次等候的'),
(1117, 2, 200, 0, '机动车违反禁令标志指示的'),
(1118, 2, 200, 0, '机动车违反禁止标线指示的'),
(1119, 2, 50, 0, '机动车违反警告标志指示的'),
(1120, 2, 50, 0, '机动车违反警告标线指示的'),
(1121, 2, 200, 0, '实习期内驾驶公共汽车的'),
(1122, 2, 200, 0, '实习期内驾驶营运客车的'),
(1123, 2, 200, 0, '实习期内驾驶执行任务的特种车辆的'),
(1124, 2, 200, 0, '实习期内驾驶载有危险物品的机动车的'),
(1125, 2, 200, 0, '实习期内驾驶的机动车牵引挂车的'),
(1126, 2, 200, 0, '机动车载人超过核定人数的'),
(1127, 3, 200, 0, '机动车逆向行驶的'),
(1128, 3, 200, 0, '机动车不按交通信号灯规定通行的'),
(1129, 3, 150, 0, '机动车行驶超过规定时速50%以下的'),
(1130, 3, 200, 0, '从前车右侧超车的'),
(1131, 3, 200, 0, '前车左转弯时超车的'),
(1132, 3, 200, 0, '前车掉头时超车的'),
(1133, 3, 200, 0, '前车超车时超车的'),
(1134, 3, 200, 0, '与对面来车有会车可能时超车的'),
(1135, 3, 200, 0, '超越执行紧急任务的警车、消防车、救护车、工程救险车的'),
(1136, 3, 200, 0, '在铁路道口、路口、窄桥、弯道、陡坡、隧道、人行横道、交通流量大的路段等地点超车的'),
(1137, 3, 200, 0, '车辆在道路上发生故障或事故后，妨碍交通又难以移动的，不按规定设置警告标志或未按规定使用警示灯光的'),
(1138, 3, 100, 0, '准备进入环形路口不让已在路口内的机动车先行的'),
(1139, 3, 100, 0, '转弯的机动车未让直行的车辆、行人先行的'),
(1140, 3, 100, 0, '相对方向行驶的右转弯机动车不让左转弯车辆先行的'),
(1141, 3, 100, 0, '机动车通过无灯控或交警指挥的路口，不按交通标志、标线指示让优先通行的一方先行的'),
(1142, 3, 100, 0, '机动车通过无灯控、交警指挥、交通标志标线控制的路口，不让右方道路的来车先行的'),
(1143, 3, 150, 0, '载货汽车牵引多辆挂车的'),
(1144, 3, 150, 0, '半挂牵引车牵引多辆挂车的'),
(1145, 3, 150, 0, '半挂牵引车牵引多辆挂车的'),
(1146, 3, 150, 0, '小型载客汽车牵引旅居挂车以外的且总质量700千克以上挂车的'),
(1147, 3, 150, 0, '挂车载人的'),
(1148, 3, 150, 0, '载货汽车牵引挂车的载质量超过汽车本身的载质量的'),
(1149, 3, 150, 0, '大型载客汽车牵引挂车的'),
(1150, 3, 150, 0, '中型载客汽车牵引挂车的'),
(1151, 3, 150, 0, '低速载货汽车牵引挂车的'),
(1152, 3, 150, 0, '三轮机动车汽车牵引挂车的'),
(1153, 3, 200, 0, '机动车在发生故障或事故后，不按规定使用灯光的'),
(1154, 3, 200, 0, '驾驶机动车下陡坡时熄火、空档滑行的'),
(1155, 3, 200, 0, '故意遮挡机动车号牌的'),
(1156, 3, 200, 0, '故意污损机动车号牌的'),
(1157, 3, 100, 0, '不按规定安装机动车号牌的'),
(1158, 3, 200, 0, '上道路行驶的机动车未悬挂机动车号牌的'),
(1159, 3, 200, 0, '不避让执行任务的特种车辆的'),
(1160, 3, 150, 0, '机动车不避让盲人的'),
(1161, 3, 200, 0, '运输剧毒化学品机动车超过规定时速50%以下的'),
(1162, 6, 1000, 0, '公路客运车辆载客超过额定乘员20%的 A:超过额定乘员20%以上不足50%的'),
(1163, 6, 1500, 0, '公路客运车辆载客超过额定乘员20%的 B:超过额定乘员50%以上不足100%'),
(1164, 6, 2000, 0, '公路客运车辆载客超过额定乘员20%的 C:超过额定乘员100%以上的'),
(1165, 6, 1000, 0, '机动车载物超过核定载质量30%的 A:超过核定载质量30%以上不足100%的'),
(1166, 6, 2000, 0, '机动车载物超过核定载质量30%的 B:超过核定载质量100%以上的'),
(1167, 6, 1000, 0, '可以并处吊销 	机动车行驶超过规定时速50%的 A:超过规定时速50%以上不足100%的'),
(1168, 6, 2000, 0, '可以并处吊销	机动车行驶超过规定时速50%的 B:超过规定时速100%以上'),
(1169, 6, 500, 0, '饮酒后驾驶机动车的'),
(1170, 6, 500, 0, '饮酒后驾驶营运机动车的'),
(1171, 6, 1000, 0, '公路客运车辆违反规定载货的'),
(1172, 6, 500, 0, '货运机动车违反规定载客的 A:违反规定载客3人以下的'),
(1173, 6, 1500, 0, '货运机动车违反规定载客的 B:B违反规定载客3人以上的'),
(1174, 6, 2000, 0, '运输剧毒化学品机动车超过规定时速50%以上的'),
(1175, 12, 200, 0, '使用他人机动车驾驶证驾驶机动车的'),
(1176, 12, 1500, 0, '拘留15天以下醉酒后驾驶机动车的');

-- --------------------------------------------------------

--
-- 表的结构 `illegal_info`
--

CREATE TABLE IF NOT EXISTS `illegal_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `license` varchar(20) NOT NULL COMMENT '车牌号码',
  `engineID` varchar(20) NOT NULL COMMENT '发动机号',
  `location` varchar(100) NOT NULL,
  `illegal_id` int(11) NOT NULL,
  `status` enum('待确认','待付款','已处理') NOT NULL DEFAULT '待确认',
  `pay_image` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `illegal_info`
--

INSERT INTO `illegal_info` (`id`, `user_id`, `license`, `engineID`, `location`, `illegal_id`, `status`, `pay_image`, `created_at`, `updated_at`) VALUES
(1, 1, '沪CJ111', '111111', '上海市浦东新区临港新城海港大道1550号', 1097, '待确认', 'images/8f8d3a789233d2c7650902a1287a88a9.jpg', '2018-04-27 15:01:36', '2018-05-09 06:08:32'),
(2, 2, '沪CJ222', '222222', '北京中关村', 1097, '待付款', 'images/8f8d3a789233d2c7650902a1287a88a9.jpg', '2018-04-27 15:03:59', '2018-06-01 12:19:52'),
(3, 2, '沪CJ222', '222222', '北京朝阳区', 1002, '待付款', 'images/8f8d3a789233d2c7650902a1287a88a9.jpg', '2018-04-27 15:11:34', '2018-06-01 12:06:16'),
(4, 3, '沪C3333', '333333', '吃惊', 1001, '待确认', 'images/8f8d3a789233d2c7650902a1287a88a9.jpg', '2018-05-02 13:25:58', '2018-06-01 12:01:35');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1);

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `public_board`
--

CREATE TABLE IF NOT EXISTS `public_board` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(20) NOT NULL DEFAULT '匿名',
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `public_board`
--

INSERT INTO `public_board` (`id`, `title`, `author`, `content`, `created_at`, `updated_at`) VALUES
(1, '施工中的四平路路面变窄了 通行效率却变高了 虹口交警线上线下巧安排', '《上海法治报·交通安全周刊》', '<p>&nbsp; &nbsp; 市民张先生家住五角场地区，上班地点位于陆家嘴。<br />\r\n&nbsp; &nbsp; 每天上下班驾车单程需45分钟，而四平路正是张先生开车上下班的必经之路。去年年底，得知四平路沿线即将开始施工后，张先生一度担心自己上下班出行时间要增加了。然而，施工开始后，张先生惊喜地发现，上班路上的时间不仅没有增加，有时还能提早赶到单位吃个早餐。明明道路因施工变窄，为何通行效率却提高了呢？&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; 作为全市&ldquo;三纵三横&rdquo;主干道之一，四平路2017年末启动大修改造，涵盖部分路段拓宽、市政设施大修、架空线入地等工程，施工项目多，工期长。虹口警方为确保大修期间通行效率不受影响，对四平路沿线开展精准排堵，综合施策。据统计，5个月来，四平路交通类110报警数同比下降21.5%，其中，事故类下降23.4%，违法停车类下降8.5%，机动车通行速度与以往持平，未发生重大交通事故，有效减缓了道路施工给市民出行带来的影响。</p>\r\n\r\n<p>&nbsp; &nbsp;&ldquo;非刚需&rdquo;车辆择优绕行 　</p>\r\n\r\n<p>　2017年四平路拓宽工程立项后，虹口交警立即会同区相关部门召开了20余次协调会，对施工任务、各方需求、配套措施等多方面进行统筹，确定了&ldquo;畅通优先、分段施工&rdquo;的思路。与此同时，减缓四平路沿线的交通流量工作也提前开展了起来。虹口交警通过调研发现，四平路车流量虽大，但有一部分选择该路线的驾驶员是惯性思维导致，其可选择的路线还有很多。为此，在施工前虹口警方就通过官方微博和微信账号发布了施工时间、路段以及备选路线等信息，提醒部分驾驶员可选择绕行。除了对社会车辆进行分流，虹口交警协同施工部门，对沿线工地施工车辆的出入时间进行了严格的规定，避开高峰时段。 　</p>\r\n\r\n<p>　 路设改造 引导潮汐车流 　</p>\r\n\r\n<p>&nbsp;　四平路的车流有着明显的潮汐式特征，而早在几年前，为了解决这一现象，四平路中央设置了一条可变车道，每天&ldquo;定时改变&rdquo;。四平路施工开始后，占道情况在所难免。为了减少施工带来的影响，虹口交警重新规划车道设计，在确保安全的情况下将非机动车道临时安置在人行道上，确保四平路仍能保持双向5车道的通行能力。随后根据新规划的车道，交警重新设计了可变车道的变换模式，并增设人力，采取&ldquo;人工+定时&rdquo;的模式干预可变车道运作，使其更符合高峰流量需求，精准服务沿线交通。 　</p>\r\n\r\n<p>&nbsp; &nbsp;　改造还不仅于此，得益于海伦路的拓宽，像张先生一样从四平路转入新建路隧道前往陆家嘴的市民方便了不少。而为了与拓宽的海伦路形成配套，交警将四平路海伦路路口北侧的左转弯车道从1条升级为2条，使海伦路分流能力显著提升。同时，交警还优化调整了四平路周边支小马路停车点位，临时删减停车位50处，确保支小道路高效分流。 　　联合治理显成效 　　通行能力要得到保障，良好的交通秩序也是必要条件之一。四平路施工开始后，交警部门加强了对非机动车乱骑行、行人乱穿马路等交通违法行为的整治，并在早晚高峰时段对沿线违停车辆开展即时牵引，确保道路畅通。</p>\r\n\r\n<p>　　随着施工的进行，交警部门也一直注意接收市民对于路设变化的各种意见，并进行不断改善。其中，部分路段在施工期间将非机动车道临时设置在了人行道上后，就有市民反映由于共享单车的乱停放，导致临时非机动车道通行受阻。于是，虹口警方牵头区城管、街道及多家共享单车公司线下运维人员，建立了专项整治工作微信群，明确对人行道乱停放车辆&ldquo;巡逻发现&mdash;拍照上传&mdash;快速处置&rdquo;的工作机制，以及30分钟清理完毕的工作标准，共同做好四平路沿线&ldquo;门前清&rdquo;工作，改善临时非机动车道的行驶环境。</p>', '2018-05-05 15:41:31', '2018-05-07 04:27:13'),
(2, '6条样板路段入围郊区前10名 嘉定交警管治结合打造有序交通环境', '《上海法治报·交通安全周刊》', '日前，2018年一季度全市交通文明样板路段、区域前后10名发布，在这次测评中，嘉定区共有6条道路入围郊区组前十榜单，如此显著的成效背后是嘉定交警管理与整治相结合，努力打造出更为安全有序地道路交通环境。\r\n　　嘉定交警在创建文明样板道路之初，首先主动走访了全区12个街镇，根据各条道路、区域不同的特点，与各街镇相关部门商议，同时召集组织了160余名交通文明志愿者，继而制定出了24条道路治理方案，可谓“一路一策”。其次，针对部分道路上“五类车”、“黑车”、“老年代步车”交通违法现象严重的问题，交警也主动与城管、交通执法大队、市场监管部门开展联合整治，现已暂扣清运违法车辆4600余辆，打击查处17辆非法营运“黑车”，并对273家车辆销售单位开展全面排摸，加强源头监管。\r\n　　在开展整治的同时，改善影响道路交通的那些先天不足的路政设施也是嘉定交警们所关注的。通过听取群众的意见和民警们的现场调研，目前，在24条交通文明样板道路创建工作中，他们共修复坑洼路面30余处、15公里，增补道路指示标志30余块，漆画交通标线17公里，抢修调整信号灯532处，并对新建一路（启源—浏翔路）等多条创建道路沿线路口加装机非隔离设施，消除交通事故隐患。\r\n　　由于地处郊区，嘉定居民们使用非机动车出行的频次和人数都较高，那么在管理上难度也相应增大。据了解，嘉定交警统筹各警种、多部门加大力量投入，从严查处这类交通违法行为，重点针对机动车“三乱一逆”、不礼让行人、非机动车乱骑行、行人闯红灯等违法行为，截止目前，在样板道路创建过程中共查处各类道路交通违法行为4.8万起。此外，对于外卖、快递、共享单车等新兴行业非机动车存量大、违法频繁的特点，交警们通过上门约谈、集中授课、警示教育、专题宣讲等形式，教育引导广大交通参与者自觉遵守道路交通法规，共同营造文明有序的良好氛围。', '2018-05-05 15:42:26', '2018-05-05 15:42:26'),
(3, '沪今年将改造11条道路的积水点', '《上海法治报·交通安全周刊》', '五一节前，申城遭遇了今年的首场暴雨，市区雨量普遍超过了50毫米，部分路段积水较深。据悉，目前上海共有11条道路积水改善项目列入市政府实施项目，涉及杨浦、黄浦、普陀、静安、虹口、宝山等区，敷设排水管道近6公里，计划在11月底前建成，途经车辆需注意。\r\n　　今年首个积水点改造工程——平凉路(大连路-怀德路)已于4月2日顺利完成主管工程。与此同时，新村路，人民路积水点项目也准备进场施工。\r\n　　上海全年的积水点改造\r\n　　平凉路(大连路-怀德路)：计划敷设1200毫米管径排水管道1182米。佳木斯路(营口路-沙岗路)：计划敷设1000-1400毫米管径排水管道560米。人民路(新开河路-丽水路)：计划敷设1150-1800毫米管径排水管道394米。新村路(西乡路-灵石路)：计划敷设1000毫米管径排水管道495米。梅岭北路(兰溪路-枫桥路)：计划敷设1000-1200毫米管径排水管道422米。老沪太路(普善路-共和新路)：计划敷设1200-1400毫米管径排水管道385米。老沪太路(运城路-沪太路，彭越浦-万荣)：计划敷设1000-1200毫米管径排水管道413米。闻喜路(阳曲路-阳泉路)：计划敷设1000-1200毫米管径排水管道265米。宝昌路(宝山路-虬江路)：计划敷设1000-1200毫米管径排水管道342米。华严路(场中路-万安路)：计划敷设1000毫米管径排水管道630米。上大路(汇丰河-桃浦河)：计划敷设1000-1300毫米管径排水管道1023米。\r\n\r\n', '2018-05-05 15:43:14', '2018-05-05 15:43:14'),
(4, 'S26公路入城段9月将建成 为虹桥地区疏通交通“关节”', '《上海法治报·交通安全周刊》', '上海国际进口博览会今年11月在沪开幕，在建的S26公路入城段（G15公路-嘉闵高架）新建工程将有益于缓解周边交通压力，为参会者提供快速通行能力。记者近日获悉，S26公路入城段今年即将9月建成。借此快速通道，不仅为虹桥地区疏通交通“关节”，上海去往江苏也将更加快捷。\r\n　　既有S26公路是沪上西部一条省际高速公路，而新建的S26公路入城段，西接已经通车的S26公路，东接嘉闵高架北翟路立交，途经青浦区华新镇、徐泾镇和闵行区华漕镇、新虹街道，全长约7.08千米。全线设G15公路立交、诸光路东侧和金光路西侧各一对上下匝道以及嘉闵高架立交。这条高速通道一旦建成通车，不仅有益于虹桥地区交通，还将形成市域西部与中心城间多通道格局，出现上海与江苏的“第二通道”，对平衡路网的车流负荷至关重要。\r\n　　记者近日获悉，S26公路入城段（G15-嘉闵高架）新建工程计划9月内结束施工。这条通道以南、北两个方向与嘉闵高架互通。车辆通过入城高架直接进入北翟、嘉闵高架，不需落地，通行更加顺畅。届时，现有S26公路可与G15、嘉闵高架快速路等进一步打通衔接，将为G2京沪、G50沪渝高速分流减负，上海去往江苏将更加快捷。同时，它也为虹桥商务区、国家会展综合体提供了一条与市中心联系的快速通道。\r\n　　据悉，S26入城段施工期间，除北翟高架主线与嘉闵高架进、出北青公路匝道将处于封闭状态外，地面道路北青公路、华翔路以及北翟路在施工期间都保证原有车道数不变，且北翟高架与嘉闵高架互通不受影响。管理部门预计，相关高架上下匝道封闭后，可能会对北青公路及北翟路地面道路车辆通行造成影响，为此，交通管理部门将对上述区域采取交通疏导绕行措施。\r\n\r\n', '2018-05-05 15:44:17', '2018-05-05 15:44:17'),
(5, '高架就在家门口 车辆却要绕道走 增设车道 宝山交警打造居民暖心路', '《上海法治报·交通安全周刊》', '逸仙路高架明明就在家门口，小区居民驾车却不得不绕路30多分钟才能上去。好在眼下大大不同了，这段绕路的时间已缩短到了10分钟，这得益于宝山交警积极回应居民切实需求，短短半个月的时间就将难题化解。\r\n　　小区居民绕路上高架\r\n　　在宝山区同济路泰和路西面，同济高架和吴淞大桥的边上有两个历史悠久的居民小区：二纺新村和泗东新村，居住人口密度大，机动车数量与日俱增。居民区内还设有泗东小学，于是上下学时段内车辆更是呈井喷状态。这两个小区紧邻外环线和逸仙路高架交界处，但进出的车辆却必须从泰和路直行到同泰北路掉头，再返回到同济路左转直行后才能上吴淞大桥进入逸仙路高架。居民们除了要绕路上高架，小区门口的道路拥堵也是居民们出行的一块心病。据了解，根本原因在于早期的路面设置，将淞兴西路划为该区域进口，泗东路划为出口，造成区域内350余辆车只能绕一个很大的圈才能上高架，尤其碰到现在车流量激增的情况，这样的规划更显弊端，也着实给两个小区的居民出行带来了不便。\r\n　　宝山交警增设车道解困扰\r\n　　今年3月底前，宝山公安分局交警支队了解到这一情况后，及时前往实地调研。首先，民警们认真听取了各位居民对进出交通的意见及建议，特别是以高架作为日常出行必经之路的居民的想法和建议。其次，交警又对周边道路设置的进、出情况进行了梳理，于是一套科学、可行的整改方案最终出炉。\r\n　　宝山交警协调区公路路政管理大队对泰和路淞滨支路西进口机动车道进行调整，由现在的双向“一进一出”二车道调整为“二进一出”三车道，增加了一条右转车道，也就是说居民可以直接经泰和路右转到淞滨支路，再左转至淞滨路直接上逸仙路高架。同时，在西进口位置增加右转车道的基础上，交警还在路口同步增设了“机动车右转”的交通信号灯，可以在两个小区门口道路出现拥堵时进行灵活调整，增强路口车辆的通畅度及安全度。鉴于两个小区进出车辆多，特别是在上下学的时段，交警增派了辅警力量在小区门口进行疏堵保畅，确保车辆的快进快出，减轻拥堵的情况。\r\n　　日前，记者来到现场看到，泰和路右转至淞滨支路的指示灯已正式投入使用，不少居民都反映现在从泗东新村门口到上逸仙路高架只要8分钟，不仅避开了门口的拥堵路段，还大大缩短了时间。\r\n\r\n', '2018-05-05 15:44:17', '2018-05-05 15:44:17'),
(6, '市民心声 谨防“药驾”惹祸端', '匿名', '前段时间天气忽热忽冷，阿凤觉得自己感冒了，便打开家庭药箱服了点感冒药，就开车去接同住一个小区的阿芳拼车上班。车到途中，阿凤觉得头昏沉沉的，眼皮也睁不开来，此时正是上班高峰期，眼看路上车流如潮，自己这副状态，怕有什么闪失，酿成大祸，赶紧把车停在路边，让阿芳开车送她去医院挂急诊。\r\n　　经医生问明情况，又仔细了解她吃过什么后，说她可能是“药驾”了。她所服用的感冒药影响到中枢神经，以致产生短时间的嗜睡和精神失控状态，如果这时候驾车行驶，很可能因为不能自制而发生意外，幸亏她能当机立断不再驾车，才未酿成祸事。陪同她一起来的阿芳听后也吓出一身冷汗，原来“药驾”所带来的危害竟这么严重，这是两人始料未及的。\r\n　　“人吃五谷，哪有不生病的”，生了病自然得吃药、得治疗，驾驶员也一样。问题是要掌握驾驶方向盘的人，由于身份特殊，油门一踩，性命悠关，容不得半点闪失。因此，医生建议，大凡开车驾驶的人，平时有个头疼脑热的，千万别自作主张，认为自己吃点药能对付而懒得上医院。须知，小处不慎，引起“药驾”那就后患无穷。另外，得了病去医院就诊，最好告诉医生，自己是要开车的。这样，医生会根据你的情况，考虑酌情调整对你的药物使用，尽量避免那些会引起“药驾”的药物。\r\n　　自从本市道路交通违法行为大整治以来，交通违法行为已明显减少，特别是“酒驾”违法行为已成为“开车一族”的守法底线和红线，自觉做到“饮酒不开车，开车不饮酒”，但大家对“药驾”行为还没有形成足够的重视，误打误撞的有之；麻痹大意的有之；更有人明知“药驾”的利害，还不当一回事的依然故我，这是极端危险的，这里大喝一声：“谨防‘药驾’惹祸端”。', '2018-05-05 15:45:10', '2018-05-05 15:45:10'),
(7, '市民论坛 停车“阶梯式收费”的启迪', '匿名', '老旧小区停车难如何缓解？本市曲阳街道东体小区探索“阶梯式”收费运作模式，实行停车收费业主车辆标准不变，非小区业主和租户适当提高，临时停车按时长划分为五档计费，特种车辆、婚丧嫁娶车辆免费，业主直系亲属探望老人收费减半。此举充分挖掘了停车资源潜力，减少了矛盾，适应了多方需求，颇有借鉴意义。\r\n　　一些老旧小区设计建造时先天不足，大多被道路狭窄、车位匮乏困扰。东体小区迎难而上，通过深入调研分析，发现停车难不仅是场地不足，收费低廉导致周边医院、超市车辆涌入，并长时滞留；业主子女前来看望老人，为停车费与保安发生争执，占道泊车时间过长等因素，均加剧了停车难。小区居委会、业委会、物业三方联手听取意见，形成共识，采用“阶梯式”收费缓解停车难，让车主作性价比比较，主动选择最佳停车途径和方式，从而有效盘活了螺蛳壳里的“道场”。\r\n　　东体小区的成功实践带来启迪；一是老旧小区虽然空间有限，但解决停车难并非束手无策，多方携手形成合力，也可积极作为；二是加大市场化运作力度，科学引导就能显现效应；三是精细化管理服务不可或缺，这样才能实现停车资源利用的不断优化。\r\n\r\n', '2018-05-05 15:45:10', '2018-05-05 15:45:10'),
(8, '盗销电瓶车团伙被端 被盗车辆发还受害人', '匿名', '今年4月初，长宁地区连续发生多起电动自行车、电瓶被盗案件。专案组通过侦查锁定嫌疑人，并由此发现一个盗窃电瓶车及电瓶的松散型盗窃团伙，查获涉案电动自行车电瓶74个，查获涉案非机动车62辆，查获的涉案车辆价值20余万元。\r\n　　在连续接到多起电动自行车、电瓶被盗的报案后，长宁分局成立专案组，由刑侦支队牵头开展调查工作。通过侦查发现，盗窃嫌疑人多在夜间行动，通过驾驶电瓶车等在街面寻找作案目标，得手后先驾驶被盗车辆至窝点，再返回作案地取回电瓶车。\r\n　　民警通过现场走访排摸，并分析发案地周边监控，迅速锁定一名涉案嫌疑人韩某，并由此发现了一个盗窃电瓶车及电瓶的松散型盗窃团伙。\r\n　　专案组在4月13日开展抓捕行动，最终将陆续出现在该处准备转运、交接赃物的11名涉案人员悉数擒获，查证在长宁区及本市相关刑事案件18起，查获涉案电动自行车电瓶74个，查获涉案非机动车62辆，查获的涉案车辆价值20余万元。\r\n　　经信息比对，民警与部分车主取得联系，4月24日上午将被盗车辆发还给了被害人。', '2018-05-05 15:46:35', '2018-05-05 15:46:35'),
(9, '驾驶证被停用 竟用假证来充数', '匿名', '驾驶证因交通违法超分被停止使用后，理应按规定到交警部门去报名并参加学习，然后通过相关科目考试合格后重新取得驾驶资格。不过，这样的情形到了本市居民钱某这里，却出现了另外一个版本。\r\n　　当钱某发现自己的驾照已经因为交通违法超分被停用时，仍想继续开车的他就耍起了小聪明。他通过微信认识了一个做假证的，于是提供了两张照片，只花了五百块钱就做好了一张假驾驶证，同时还有一张配套使用的假身份证。钱某拿到假证后自认完美，于是堂而皇之地驾车上路了。\r\n　　没想到才开了几天就因为交通违法被闵行交警抓了个正着。民警通过数据信息比对发现，钱某所持的名为“赵天航”的驾驶证和身份证均为伪造。经现场盘问，钱某承认了持假驾驶证驾驶机动车的违法行为。\r\n　　日前，钱某因使用伪造的机动车驾驶证驾驶机动车，被闵行警方依法处以治安拘留10天、罚款5000元的处罚，而其使用伪造身份证的违法行为也被移交属地派出所另案处理。', '2018-05-05 15:46:35', '2018-05-05 15:46:35'),
(10, '市民与交通 两幼童被留车中数小时后死亡 千万不可将孩子独自留在车内', '匿名', '近日又发生一起揪心的意外，合肥市新站区一建材厂内，两名儿童被发现在一辆别克车内身亡。这条新闻让人心痛不已，可爱的孩子就这样失去了生命。近年来，儿童被困车内导致的事故时有发生，据统计，我国每年超过1.85万儿童死于车祸。放纵孩子在车内打闹、把孩子独自留在封闭的车内，错误的乘车方式都有可能让悲剧发生。网上随便搜索“被困车内”就有无数条相关新闻报道。\r\n　　案例1：今年4月9日19:30许，合肥市新站区三十头镇三房岗村一建材厂内，两名儿童被发现在一辆别克车内身亡。两名死亡儿童为一男一女，男孩年约6岁，女童年约4岁，系兄妹关系，父母均为窑厂内工人。当天下午，发现两名儿童不见后，家人在厂内以及周边寻找，但一直没有找到。直到事发时，有人路过厂内一辆轿车时，发现了异常。两名儿童被发现昏迷在车内，经120医护人员到场检查，两人均已没有了生命体征。初步判断发现时距离两名儿童死亡已有数小时时间。\r\n　　案例2：2017年6月12日，由于疏忽大意，青岛市黄岛区一对夫妇将年仅一岁零七个月大的女儿锁在车内长达一个多小时，发现时孩子已经面色发紫，没有呼吸。当日12时45分，父母急忙抱着孩子送到青岛开发区第一人民医院，遗憾的是，抢救半小时无效后孩子死亡。\r\n　　案例3：2015年6月27日下午，在湘潭一小区，一名小男孩被发现死在自家车内。死者爷爷称，当时孙子跟着父母外出，回来时在车上睡觉。他们以为孙子还跟着父母，等家人发现异常，孩子已经在车内死亡。\r\n　　这样血淋淋的案例还少吗？家长们注意：把孩子单独留在车内很危险！主要原因是高温，车内温度比车外平均高十度左右。平时气温高的天气，我们取车的时候，就能感受到车内那难以忍受的温度。更何况孩子呢？车辆停在外面，气温在车内累积，温度难以发散，形成温室效应。小孩子的体质本来就与成人不一样，高温致使孩子身上的水分更容易蒸发流失，留在车里的孩子就很容易发生脱水、中暑、休克，严重时甚至会导致死亡！而且，被困在车内的小孩子很容易造成惊慌，还可能发生安全带缠绕颈部造成窒息。\r\n　　那么，万一发生孩子被困车内的情况如何施救？\r\n　　引导孩子自救。如果被困孩子在3岁以上，有一定的行为能力和理解能力，可以一步步鼓励和引导孩子自助打开车门。前提是要让孩子先冷静下来。\r\n　　安抚孩子情绪。孩子在发现自己被单独困在一个紧闭空间内，会产生因恐惧而哭闹不止，这样更容易使孩子虚脱。所以，救护人员或者假装在解救孩子的同时要注意安抚孩子的情绪，让他平静下来听指挥，配合解救工作。如果此时孩子已经昏迷，则需尽快解救，不要只是在车外呼喊。\r\n　　尽快破窗解救。破窗是又快捷又有效的方法，让专业救护人员来破窗最保险。破窗要建立在安全的基础上，不要直对孩子座位的窗敲过去，因为玻璃碎片可能伤到孩子，工具也可能直接敲到孩子身上。要找离孩子较远，又能开到车锁的那扇窗。破窗有可能对孩子造成危害，也可能对车外围观的人造成伤害。所以要做好疏散工作。', '2018-05-05 15:47:07', '2018-05-05 15:47:07'),
(11, '交警整治什么由市民来决定 ——徐汇交警“你最痛恨的交通违法行为”活动调查走访', '匿名', '好端端开着车突然被“加塞”，正常行驶过程中“飞来”一辆横穿马路的非机动车，前面的车转向灯也不打就突然转弯了，夜晚明明路灯很亮，对面的车却开着远光灯晃眼睛……这些日常交通行为中常见的陋习不仅扰乱了正常秩序，也是对守法交通参与者的不公平。去年底，徐汇交警创新提出“你最痛恨的交通违法行为”投票活动，根据市民的投票结果安排今年的整治重点。4个月时间过去了，这项工作进展得如何了，记者日前进行了专门的调查走访。\r\n　　6种违法行为“榜上有名”\r\n　　去年12月15日，徐汇交警推出了“你最痛恨的交通违法行为”投票活动，公布了群众反映强烈、发生率较高的机动车、行人及非机动车类各十种交通“陋习”，邀请广大市民参与投票。投票结束了，机动车“加塞”、“逆向行驶”、“酒后驾车”以及非机动车“闯红灯”、“逆向行驶”、“违反禁令标志”（含“上桥入隧”）等6种违法行为成为市民“最痛恨”的交通违法行为。\r\n　　“人民群众反对什么、痛恨什么，我们就要坚决防范和纠正什么。”徐汇交警支队支队长黄卫文说，“这不是一次作秀，也不是一阵风的整治，而是纳入了我们2018年一整年的工作计划。”\r\n　　4月中旬，徐汇交警发布了“最痛恨”的交通违法行为整治季度通报，在这份通报中，用数据向市民进行了“述职”，对6种违法行为进行了大力整治。其中，机动车“加塞”是打击重点，3个月的查处量很惊人，比去年同期增长了74.4%。徐汇交警支队车宣大队大队长沈卿告诉记者，通过对机动车违法行为特点的分析，他们重点加强了对违法高发路段、路口的巡逻频次，配合电子警察等非现场执法手段，严厉查处机动车“加塞”违法行为，同时，通过前阶段“高压严整”的方式，机动车“逆向行驶”、“酒后驾车”等严重交通违法行为也明显减少。\r\n　　机动车“加塞”非机动车“闯禁”\r\n　　徐家汇广场是此次打击机动车“加塞”违法行为的重点地区之一，华山路、衡山路、肇嘉浜路、漕溪北路、虹桥路5条道路在此相交，每条道路流量都极高。特别是肇嘉浜路和漕溪北路，闵行、虹桥等方向的车辆由西向东需要经过肇嘉浜路右转到天钥桥路后上内环高架，而漕溪北路南向北方向到路口就从3根车道变化成6根车道。车流量居高不下，一些驾驶员就耍起小聪明，转弯车道排队长时间久，就先开在直行车道，临近路口再变道“加塞”进去。经过3个多月的集中整治，徐家汇广场的通行秩序有了改变，“加塞”的违法行为大幅减少。\r\n　　市民投票结果中非机动车“闯红灯”、“逆向行驶”、“违反禁令标志”成为“最痛恨”，徐汇交警也对这3种非机动车违法行为加大了整治力度。通过早、晚高峰时段加强路口纠处、平峰时段加强路段巡逻的方式，对非机动车违法行为以“发现一起、纠正一起”“查处一人、教育一群”的原则持续加大查处力度。3种违法行为的查处量和去年同期相比分别上升了518%、112%和368%。\r\n　　消除“最痛恨”需要从“我”做起\r\n　　徐汇交警表示，打击市民“最痛恨的交通违法行为”的目的是为了安全，为了树立交通文明，所以，徐汇交警在对这些违法行为进行整治的同时，还在一些路段的路政配套设置、标志标线调整方面进行了同步调整。\r\n　　龙吴路华济路是机动车“加塞”和逆向行驶两种违法行为多发的路口。原本这里的车流量不是很高，随着相邻的望月路打通，旁边的新建小区陆续入住，这里的车流量逐步上升，特别是每天早高峰东向北转弯进入龙吴路的车辆很多。华济路这一段东向西只有一根车道，到了路口才渠划为两根车道，为了挤进路口的两根车道，就有不少车辆跨过黄线，借用对向的车道来“加塞”，扰乱了这里的通行秩序。在对交通违法行为严厉打击的同时，交警部门想尽办法对车道设置进行了调整，非机动车道借一点，隔离墩缩一点，索性把路段中间也划成两根车道。驾驶员没有了“加塞”的“借口”，这里的通行秩序也得到根本性的好转。\r\n　　从徐汇交警部门公布的第一季度通报，以及记者的现场走访，市民“最痛恨”的几项交通违法行为明显减少，市民守法意识也有了上升。黄卫文告诉记者，徐汇交警还将继续保持整治力度不减少，持续开展“最痛恨”交通违法行为的整治措施，每季度都会交出一份“述职报告”，年底进行小结，以此作为后一年工作的参考。当然，良好的交通环境需要每个交通参与者的共同维护，希望大家都能从“我”做起，彻底消除我们身边最“痛恨”的交通违法行为。', '2018-05-05 16:26:59', '2018-05-05 16:26:59'),
(12, '啦啦啦啦啦', '123', '<p>啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦</p>\r\n\r\n<p>啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>', '2018-06-01 05:09:48', '2018-06-01 05:09:48');

-- --------------------------------------------------------

--
-- 表的结构 `safe_check`
--

CREATE TABLE IF NOT EXISTS `safe_check` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `type` enum('小型车','中型车','挂车','') DEFAULT NULL,
  `book_date` date DEFAULT NULL,
  `book_time` enum('am','pm','','') DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `exam_room` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `finish` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `safe_check`
--

INSERT INTO `safe_check` (`id`, `user_id`, `name`, `license`, `type`, `book_date`, `book_time`, `region`, `exam_room`, `created_at`, `updated_at`, `finish`) VALUES
(5, 2, 'yunyou', '沪A875', '小型车', NULL, '', NULL, '上海海事大学', '2018-05-30 10:30:00', '2018-05-30 10:30:00', 1),
(6, 2, 'yunyou', '沪A875', '小型车', NULL, '', NULL, '上海海事大学', '2018-05-30 10:39:37', '2018-05-30 10:39:37', 1),
(40, 2, 'xxx', 'xxx', '小型车', NULL, NULL, NULL, NULL, '2018-05-31 03:52:01', '2018-05-31 03:58:31', 1),
(41, 2, 'dss', 'sd', NULL, NULL, NULL, NULL, NULL, '2018-05-31 03:59:17', '2018-05-31 06:19:41', 1),
(44, 1, '222', '222', '中型车', '2018-06-03', 'pm', '上海', '上海海事大学', '2018-05-31 04:09:07', '2018-05-31 04:09:07', 1),
(45, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-31 06:21:00', '2018-05-31 15:02:58', 1),
(46, 2, 'rrr', 'rrr', '小型车', '2018-06-08', 'pm', '上海', '上海海事大学', '2018-05-31 15:03:25', '2018-05-31 16:35:19', 1),
(47, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-01 02:33:04', '2018-06-01 02:33:04', 0),
(48, 2, NULL, '沪cj222', '小型车', '2018-06-09', 'am', '上海', '上海嘉定', '2018-06-01 15:30:00', '2018-06-01 15:30:43', 0),
(49, 3, NULL, '344444', '中型车', '2018-06-29', 'am', '上海', '上海嘉定', '2018-06-01 15:31:13', '2018-06-01 15:31:13', 0),
(50, 4, NULL, '34344', '小型车', '2018-06-27', 'pm', '上海', '上海嘉定', '2018-06-01 15:33:18', '2018-06-01 15:33:18', 0),
(51, 1234, '咧咧咧', '34254', '中型车', '2018-06-27', 'pm', '上海', '上海嘉定', '2018-06-01 15:34:26', '2018-06-01 15:34:26', 0),
(52, 12366, '咧咧咧', '灌灌灌灌灌', '小型车', '2018-06-06', 'pm', '上海', '上海海事大学', '2018-06-01 15:49:10', '2018-06-01 15:49:36', 1),
(53, 12367, '酷酷酷', '2123', '小型车', '2018-06-08', 'pm', '上海', '上海海事大学', '2018-06-01 16:25:08', '2018-06-01 16:25:28', 1);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `real_name` varchar(50) NOT NULL,
  `sex` enum('男','女') DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity` varchar(18) NOT NULL,
  `driverslicense_image` varchar(255) DEFAULT NULL COMMENT '驾驶证照片',
  `identity_image` varchar(255) DEFAULT NULL COMMENT '身份证照片',
  `past_due` date DEFAULT NULL COMMENT '身份证过期时间',
  `status` enum('未认证','审核中','已认证') NOT NULL DEFAULT '未认证',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12368 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `real_name`, `sex`, `phone`, `email`, `identity`, `driverslicense_image`, `identity_image`, `past_due`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'lrq', '$2y$10$XO7jZi2E.IlJYBay2HEXbOsZhMhdGm2ic9YN6Ao.NBlTuf528k6qW', '陆冉钦', '男', '13301611706', '', '320585199601081616', '/imag', 'images/timg.jpg', '2018-04-09', '已认证', '', '2018-05-05 06:40:44', '2018-05-09 01:51:20'),
(2, 'yunyou', '$2y$10$BOj3LXDlX/1gSFW5FRZWfueAMzQLfzszC3fj6erb8DgoLjfRTg1hG', '云游', '男', '15000985609', '', '320234199707301828', '/imag', 'images/5b2440f77bdcab945bff928a2c9acffd.jpg', '0000-00-00', '已认证', '', '2018-05-05 06:41:00', '2018-05-31 02:55:12'),
(12352, 'test_jwt', '$2y$10$uMytBGyRG9a9mPWgZRExwuF21CkC7dnDwBchqVdumfh/Yj5VbmzX.', 'lrq', '男', '13301711777', '', '320585199601081623', NULL, 'images/11036447c039f9debddb5eace6ec8d8c.jpg', NULL, '未认证', '', '2018-04-27 06:30:44', '2018-05-09 01:52:15'),
(12349, 'Test4', '$2y$10$F44lYu25esfkMwJce0sP0.UOVsXbYiWFBWxuqE0sM1HKtHzGLrz7m', 'lrq', '男', '13301711709', '', '320585199601081620', NULL, 'images/ffcabe58cc5910a4fcb996d588be0507.jpg', NULL, '未认证', '', '2018-04-27 02:14:49', '2018-05-09 01:52:39'),
(12356, '测试测试', '$2y$10$8EVRWQvI0TNYRhY4NMyZG.ljWbmnjuDY1TnH.i31A.fdTaYSmr09i', '陆冉钦', '男', '13301611700', NULL, '320585199601081918', NULL, 'images/eca4c330e410db0d7f41866e803d7191.jpg', NULL, '未认证', NULL, '2018-05-06 11:16:20', '2018-05-09 01:53:36'),
(12351, 'Test6', '$2y$10$5rVMoI2fkVtjF4Sufcwvzek8lHkhFW1ZHMhp0yCdJA71b9wHAESHa', 'lrq', '男', '13301711778', '', '320585199601081622', NULL, 'images/69c9bfedabd5c33031596dcb6dc95cf8.jpg', NULL, '未认证', '', '2018-04-27 02:58:25', '2018-05-09 01:53:52'),
(12353, 'TestLRQ', '$2y$10$YvnEbfXGGkfkrlt.w7Lhz.BGmgY.63wTxX8e0YGchqO81HKFTtAki', 'lrq', '男', '13301611707', '', '320585199601081615', NULL, 'images/61b4f04241ae374556ec3c48cdbec9e6.jpg', NULL, '未认证', '', '2018-05-04 14:39:04', '2018-05-09 01:54:04'),
(12354, 'BFQ', '$2y$10$gPkL1pZGn3taWgf/qfFJOu6AkS5NiGrsMPkXaILbyggmPTBvTtuKi', '不放弃', '男', '13111111111', '', '111111111111111111', NULL, 'identity_image/ndiC2T4DNNrYtCmId83E0cDyNumWgUwQkCgqO00B.jpeg', NULL, '已认证', '', '2018-05-04 14:44:09', '2018-05-07 10:46:12'),
(12355, 'SB', NULL, '随便', '男', '13111111112', NULL, '111111111111111113', NULL, NULL, NULL, '未认证', NULL, '2018-05-05 06:58:29', '2018-05-05 06:58:40'),
(12357, 'ceshi', '$2y$10$tLi0pobgtUBca2D4JEseM.laO6m7n5utrA.mQUR1oIjm4CUv/4ac.', '渣渣辉', NULL, '13919219384', NULL, '398485198382841937', NULL, 'identity_image/G3xQNOzBLW5IctMPDMGB098Tf8i8W7KgsKffLFj4.jpeg', NULL, '已认证', NULL, '2018-05-08 06:59:22', '2018-05-08 07:01:04'),
(12358, 'TestLRQ1', '$2y$10$w9Y5iX.GdVyRLlHKOzQTneOSI8dROjgPj55u.9socnGtOZLSAR8BK', 'lrq', NULL, '13301611766', NULL, '320585199601081666', NULL, NULL, NULL, '未认证', NULL, '2018-05-08 14:22:01', '2018-05-08 14:22:01'),
(12359, 'test_1', '$2y$10$taJccQ/N/jugECmT51YX0ePLI/h.h25OPn/Fm9KrRYrpTLINBrnOe', '测试号', NULL, '18018098837', NULL, '320585199601081919', NULL, NULL, NULL, '未认证', NULL, '2018-05-09 00:57:58', '2018-05-09 00:57:58'),
(12360, 'test111', '$2y$10$GMLg2zcebQ.ptbHuu9pvUujF3wbY7WIlDzqtS6XwQcBcb9hKg0YTe', '陆冉钦', NULL, '13301611712', NULL, '320585199601081629', NULL, 'identity_image/LDJHYmX7XAlufqJ4ciCOldf9m6xCQJaf44tt1w2q.jpeg', NULL, '已认证', NULL, '2018-05-31 13:43:33', '2018-05-31 13:45:07'),
(12361, '12345', '$2y$10$DkrcdRboBD9vfaLo4jOqw.lgfTCUierFhUgKq2C6tQxyvWPD/TMnW', '咧咧咧', NULL, '13322223333', NULL, '328744738264362835', NULL, NULL, NULL, '未认证', NULL, '2018-05-31 13:51:07', '2018-05-31 13:51:07'),
(12362, '6666', '$2y$10$88hj7d3Laj9SSKJ06N6G1OLRgub3icQcky2KUpL71DRDPRwhCTyc6', '交规', NULL, '13876546543', NULL, '345643465345678654', NULL, NULL, NULL, '未认证', NULL, '2018-05-31 13:55:57', '2018-05-31 13:55:57'),
(12363, '2222222', '$2y$10$qCwL05F7HzHwe1n4p0bN1.aoF9Ma5rV6GVLun25hueW.PQkM6azmS', '即可', NULL, '13911111111', NULL, '300098974657483947', NULL, NULL, NULL, '未认证', NULL, '2018-05-31 13:57:45', '2018-05-31 13:57:45'),
(12364, 'qwe', NULL, 'qwe', '男', '13543437543', NULL, '320234199707301098', NULL, 'images/b8a5a886b0abe56b1e7aab0ec423c7e2.jpg', NULL, '已认证', NULL, '2018-06-01 04:54:47', '2018-06-01 04:55:14'),
(12365, 'lrq111', '$2y$10$ieWlc4t3.0lsrFhX8DXs0.HNPEtG78gDZeaU29moifWsVhqW4DZrW', 'lhi', NULL, '13344445555', NULL, '322222222223456789', NULL, NULL, NULL, '未认证', NULL, '2018-06-01 13:21:22', '2018-06-01 13:21:22'),
(12366, 'lrqlrq', '$2y$10$v5fvTBt5pjcetrqNBUI9xeP8iXDos9WxPBDyrdFr51h4Y7wba95.y', 'lrqlrq', NULL, '13333322221', NULL, '444444444444444444', NULL, NULL, NULL, '未认证', NULL, '2018-06-01 15:38:28', '2018-06-01 15:38:28'),
(12367, '999', '$2y$10$crEeLC//hkFj6vW7QG4ct.HShsUCNYsmA/qSkG0ctXJ/XrbgC4Ywq', '11111111', NULL, '13467546432', NULL, '111111111111111112', NULL, NULL, NULL, '未认证', NULL, '2018-06-01 16:04:33', '2018-06-01 16:04:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `change_license`
--
ALTER TABLE `change_license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers_license`
--
ALTER TABLE `drivers_license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driving_license`
--
ALTER TABLE `driving_license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_center`
--
ALTER TABLE `exam_center`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `illegal_code`
--
ALTER TABLE `illegal_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `illegal_info`
--
ALTER TABLE `illegal_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `public_board`
--
ALTER TABLE `public_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `safe_check`
--
ALTER TABLE `safe_check`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=868;
--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `change_license`
--
ALTER TABLE `change_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `drivers_license`
--
ALTER TABLE `drivers_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `driving_license`
--
ALTER TABLE `driving_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `exam_center`
--
ALTER TABLE `exam_center`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `public_board`
--
ALTER TABLE `public_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `safe_check`
--
ALTER TABLE `safe_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12368;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
