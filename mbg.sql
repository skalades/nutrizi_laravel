-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2026 at 02:44 AM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mbg`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kitchen_id` bigint(20) UNSIGNED NOT NULL,
  `audit_date` date NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `taste_score` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `appearance_score` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `aroma_score` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `texture_score` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `notes` text DEFAULT NULL,
  `audited_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `kitchen_id`, `audit_date`, `photo_path`, `taste_score`, `appearance_score`, `aroma_score`, `texture_score`, `notes`, `audited_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-04-07', 'audit-photos/uTthbcycX4yln5ovgrTljZBx5O3yqNEk3oM33nvf.jpg', 5, 5, 5, 5, NULL, 1, '2026-04-06 20:06:30', '2026-04-06 20:13:50'),
(2, 3, '2026-04-08', 'audit-photos/lNIVlMBM7p3wTuB60mEZsPpvvrcPYMxGhw6iqsni.jpg', 5, 5, 5, 5, NULL, 2, '2026-04-08 08:00:01', '2026-04-08 08:00:15'),
(3, 3, '2026-05-27', 'audit-photos/eyIis0NDTMLGEUa8OzDghdyMZk85jYMbYm1T4tWX.jpg', 5, 5, 5, 5, NULL, 2, '2026-05-27 15:34:37', '2026-05-27 18:23:37'),
(4, 3, '2026-02-02', 'audit-photos/qatocWvO45L2dYJij0XLZWX2andG8XHYqKi2LOI9.jpg', 5, 5, 5, 5, NULL, 2, '2026-05-27 18:39:35', '2026-05-27 18:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('nutrizi-cache-admin nutrizi|162.158.88.66', 'i:1;', 1779407735),
('nutrizi-cache-admin nutrizi|162.158.88.66:timer', 'i:1779407734;', 1779407734),
('nutrizi-cache-admin_nutrizi|104.22.66.161', 'i:3;', 1779408475),
('nutrizi-cache-admin_nutrizi|104.22.66.161:timer', 'i:1779408475;', 1779408475),
('nutrizi-cache-admin_nutrizi|162.158.190.116', 'i:1;', 1779408394),
('nutrizi-cache-admin_nutrizi|162.158.190.116:timer', 'i:1779408394;', 1779408394),
('nutrizi-cache-admin_nutrizi|162.158.88.67', 'i:1;', 1779408177),
('nutrizi-cache-admin_nutrizi|162.158.88.67:timer', 'i:1779408177;', 1779408177),
('nutrizi-cache-admin_nutrizi|172.69.165.72', 'i:2;', 1779408346),
('nutrizi-cache-admin_nutrizi|172.69.165.72:timer', 'i:1779408346;', 1779408346),
('nutrizi-cache-admin_nutrizi|172.70.208.121', 'i:5;', 1779408259),
('nutrizi-cache-admin_nutrizi|172.70.208.121:timer', 'i:1779408259;', 1779408259),
('nutrizi-cache-admin@nutizi.com|172.69.176.107', 'i:3;', 1778247468),
('nutrizi-cache-admin@nutizi.com|172.69.176.107:timer', 'i:1778247468;', 1778247468),
('nutrizi-cache-admin@nutrizi.com|172.68.234.218', 'i:1;', 1778170476),
('nutrizi-cache-admin@nutrizi.com|172.68.234.218:timer', 'i:1778170476;', 1778170476),
('nutrizi-cache-admin|162.158.88.66', 'i:3;', 1779407803),
('nutrizi-cache-admin|162.158.88.66:timer', 'i:1779407803;', 1779407803),
('nutrizi-cache-admin|172.70.142.134', 'i:1;', 1779407389),
('nutrizi-cache-admin|172.70.142.134:timer', 'i:1779407389;', 1779407389),
('nutrizi-cache-adminnutrizi|162.158.88.66', 'i:1;', 1779407744),
('nutrizi-cache-adminnutrizi|162.158.88.66:timer', 'i:1779407744;', 1779407744),
('nutrizi-cache-ahli gizi|162.158.88.66', 'i:2;', 1779407752),
('nutrizi-cache-ahli gizi|162.158.88.66:timer', 'i:1779407752;', 1779407752),
('nutrizi-cache-anissa ag|172.70.142.170', 'i:2;', 1779407921),
('nutrizi-cache-anissa ag|172.70.142.170:timer', 'i:1779407921;', 1779407921),
('nutrizi-cache-anissa_nutrizi|172.69.165.72', 'i:1;', 1779408222),
('nutrizi-cache-anissa_nutrizi|172.69.165.72:timer', 'i:1779408222;', 1779408222),
('nutrizi-cache-anissa|162.158.108.44', 'i:2;', 1779407865),
('nutrizi-cache-anissa|162.158.108.44:timer', 'i:1779407865;', 1779407865),
('nutrizi-cache-anissa|172.70.142.134', 'i:2;', 1779407464),
('nutrizi-cache-anissa|172.70.142.134:timer', 'i:1779407464;', 1779407464),
('nutrizi-cache-super admin|172.70.142.170', 'i:1;', 1779407908),
('nutrizi-cache-super admin|172.70.142.170:timer', 'i:1779407908;', 1779407908);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_menus`
--

CREATE TABLE `daily_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kitchen_id` bigint(20) UNSIGNED DEFAULT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `menu_date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'PUBLISHED',
  `buffer_portions` int(11) NOT NULL DEFAULT 2,
  `organoleptic_portions` int(11) NOT NULL DEFAULT 2,
  `master_menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_menus`
--

INSERT INTO `daily_menus` (`id`, `kitchen_id`, `school_id`, `menu_date`, `status`, `buffer_portions`, `organoleptic_portions`, `master_menu_id`, `created_by`, `created_at`, `updated_at`) VALUES
(29, 3, 16, '2026-02-02', 'TERPUBLIKASI', 2, 4, 4, 2, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(30, 3, 15, '2026-02-02', 'TERPUBLIKASI', 2, 2, 4, 2, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(31, 3, 14, '2026-02-02', 'TERPUBLIKASI', 2, 2, 4, 2, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(32, 3, 6, '2026-02-02', 'TERPUBLIKASI', 2, 2, 4, 2, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(33, 3, 7, '2026-02-02', 'TERPUBLIKASI', 2, 2, 4, 2, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(34, 3, 5, '2026-02-02', 'TERPUBLIKASI', 2, 2, 4, 2, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(35, 3, 9, '2026-02-02', 'TERPUBLIKASI', 2, 2, 4, 2, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(36, 3, 11, '2026-02-02', 'TERPUBLIKASI', 2, 2, 4, 2, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(37, 3, 8, '2026-02-02', 'TERPUBLIKASI', 2, 2, 4, 2, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(38, 3, 10, '2026-02-02', 'TERPUBLIKASI', 2, 2, 4, 2, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(39, 3, 12, '2026-02-02', 'TERPUBLIKASI', 2, 2, 4, 2, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(40, 3, 13, '2026-02-02', 'TERPUBLIKASI', 2, 2, 4, 2, '2026-05-27 18:21:11', '2026-05-27 18:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `daily_menu_items`
--

CREATE TABLE `daily_menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `daily_menu_id` bigint(20) UNSIGNED NOT NULL,
  `food_item_id` bigint(20) UNSIGNED NOT NULL,
  `portion_name` varchar(255) NOT NULL,
  `weight_small` decimal(10,2) NOT NULL DEFAULT 0.00,
  `weight_large` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unit_name` varchar(255) NOT NULL DEFAULT 'gram',
  `unit_quantity` decimal(10,2) NOT NULL DEFAULT 1.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_menu_items`
--

INSERT INTO `daily_menu_items` (`id`, `daily_menu_id`, `food_item_id`, `portion_name`, `weight_small`, `weight_large`, `unit_name`, `unit_quantity`, `created_at`, `updated_at`) VALUES
(141,  29,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(142,  29,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(143,  29,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(144,  29,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(145,  29,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(146,  30,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(147,  30,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(148,  30,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(149,  30,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(150,  30,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(151,  31,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(152,  31,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(153,  31,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(154,  31,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(155,  31,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(156,  32,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(157,  32,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(158,  32,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(159,  32,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(160,  32,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(161,  33,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(162,  33,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(163,  33,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(164,  33,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(165,  33,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(166,  34,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(167,  34,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(168,  34,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(169,  34,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(170,  34,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(171,  35,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(172,  35,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(173,  35,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(174,  35,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(175,  35,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(176,  36,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(177,  36,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(178,  36,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(179,  36,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(180,  36,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(181,  37,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(182,  37,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(183,  37,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(184,  37,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(185,  37,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(186,  38,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(187,  38,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(188,  38,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(189,  38,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(190,  38,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(191,  39,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(192,  39,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(193,  39,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(194,  39,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(195,  39,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(196,  40,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(197,  40,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(198,  40,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(199,  40,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11'),
(200,  40,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 18:21:11', '2026-05-27 18:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_conversions`
--

CREATE TABLE `food_conversions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_item_id` bigint(20) UNSIGNED NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `weight_gram_standard` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `base_unit` varchar(255) NOT NULL DEFAULT 'gram',
  `base_quantity` decimal(10,2) NOT NULL DEFAULT 100.00,
  `urt_unit` varchar(255) DEFAULT NULL COMMENT 'Ukuran Rumah Tangga (Sdm, Piring, dll)',
  `urt_weight` decimal(5,2) DEFAULT NULL COMMENT 'Berat dalam gram per 1 unit URT',
  `energy_kcal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `protein_g` decimal(10,2) NOT NULL DEFAULT 0.00,
  `fat_g` decimal(10,2) NOT NULL DEFAULT 0.00,
  `carbs_g` decimal(10,2) NOT NULL DEFAULT 0.00,
  `fiber_g` decimal(10,2) NOT NULL DEFAULT 0.00,
  `yield_factor` decimal(5,2) NOT NULL DEFAULT 1.00,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`id`, `name`, `category`, `base_unit`, `base_quantity`, `urt_unit`, `urt_weight`, `energy_kcal`, `protein_g`, `fat_g`, `carbs_g`, `fiber_g`, `yield_factor`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Nasi Hainan', 'Karbohidrat', 'gram', 100.00, 'Piring', 200.00, 151.00, 3.00, 4.00, 26.00, 0.40, 1.00, NULL, '2026-05-27 13:11:10', '2026-05-27 13:11:10'),
(2, 'Ayam Hainan (Steamed)', 'Protein Hewani', 'gram', 100.00, 'Potong', 50.00, 170.00, 26.00, 7.00, 0.00, 0.00, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(3, 'Capcay Sayur', 'Sayuran', 'gram', 100.00, 'Mangkuk', 150.00, 55.00, 2.00, 2.00, 8.00, 2.50, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(4, 'Red Bean (Kacang Merah Rebus)', 'Protein Nabati', 'gram', 100.00, 'Sdm', 15.00, 127.00, 9.00, 0.50, 23.00, 7.40, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(5, 'Puding Buah Anggur', 'Lainnya', 'gram', 100.00, 'Cup', 100.00, 85.00, 1.00, 0.10, 21.00, 0.50, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(6, 'Salad Sayur Mayo', 'Sayuran', 'gram', 100.00, 'Porsi', 100.00, 120.00, 2.00, 10.00, 6.00, 2.00, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(7, 'Pepes Tahu', 'Protein Nabati', 'gram', 100.00, 'Bks', 75.00, 80.00, 8.00, 4.00, 3.00, 0.30, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(8, 'Telur Ekonomiyaki', 'Protein Hewani', 'gram', 100.00, 'Potong', 60.00, 155.00, 11.00, 10.00, 6.00, 0.00, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(9, 'Ayam Kecap', 'Protein Hewani', 'gram', 100.00, 'Potong', 60.00, 190.00, 20.00, 9.00, 7.00, 0.00, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(10, 'Brokoli Bawang Putih', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 45.00, 3.00, 2.00, 5.00, 2.60, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(11, 'Telur Ayam Steam', 'Protein Hewani', 'gram', 100.00, 'Mangkuk Kecil', 100.00, 140.00, 12.00, 9.00, 1.50, 0.00, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(12, 'Puding Jeruk', 'Lainnya', 'gram', 100.00, 'Cup', 100.00, 90.00, 1.00, 0.50, 20.00, 0.30, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(13, 'Ayam Goreng Bawang Putih', 'Protein Hewani', 'gram', 100.00, 'Potong', 50.00, 240.00, 22.00, 16.00, 2.00, 0.00, 0.70, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(14, 'Kerupuk Udang Kemasan', 'Lainnya', 'gram', 100.00, 'Bks', 15.00, 520.00, 4.00, 28.00, 62.00, 0.20, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(15, 'Bawang Merah', 'Lainnya', 'gram', 100.00, 'Siung', 5.00, 39.00, 1.50, 0.30, 9.20, 1.80, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(16, 'Bawang Putih', 'Lainnya', 'gram', 100.00, 'Siung', 4.00, 95.00, 4.50, 0.20, 23.10, 2.10, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(17, 'Cabai Merah Besar', 'Lainnya', 'gram', 100.00, 'Buah', 10.00, 31.00, 1.00, 0.30, 7.30, 2.90, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(18, 'Kecap Manis', 'Lainnya', 'ml', 100.00, 'Sdm', 15.00, 46.00, 0.80, 0.00, 10.70, 0.00, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(19, 'Garam Dapur', 'Lainnya', 'gram', 100.00, 'Sdt', 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(20, 'Gula Pasir', 'Lainnya', 'gram', 100.00, 'Sdm', 13.00, 394.00, 0.00, 0.00, 94.00, 0.00, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(21, 'Minyak Goreng Sawit', 'Lemak', 'ml', 100.00, 'Sdm', 10.00, 862.00, 0.00, 100.00, 0.00, 0.00, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(22, 'Saus Tiram', 'Lainnya', 'ml', 100.00, 'Sdm', 15.00, 51.00, 1.30, 0.10, 11.20, 0.00, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(23, 'Jeruk Nipis', 'Buah', 'gram', 100.00, 'Buah', 40.00, 44.00, 0.80, 0.20, 11.00, 0.50, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(24, 'Jeruk Pontianak', 'Buah', 'gram', 100.00, 'Buah', 100.00, 45.00, 0.90, 0.20, 11.20, 0.80, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(25, 'Beras Putih Cianjur', 'Karbohidrat', 'gram', 100.00, 'Gelas', 150.00, 360.00, 6.80, 0.70, 78.90, 0.20, 3.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(26, 'Beras Merah', 'Karbohidrat', 'gram', 100.00, 'Gelas', 150.00, 352.00, 7.50, 1.70, 76.20, 3.50, 2.50, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(27, 'Mie Telur Kering', 'Karbohidrat', 'gram', 100.00, 'Keping', 50.00, 370.00, 10.00, 2.00, 75.00, 1.80, 2.20, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(28, 'Bihun Jagung', 'Karbohidrat', 'gram', 100.00, 'Keping', 50.00, 360.00, 1.00, 0.10, 82.00, 1.20, 2.50, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(29, 'Kwetiau Basah', 'Karbohidrat', 'gram', 100.00, 'Mangkuk', 150.00, 170.00, 3.00, 0.50, 38.00, 0.50, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(30, 'Kentang Dieng', 'Karbohidrat', 'gram', 100.00, 'Buah', 100.00, 70.00, 2.00, 0.10, 19.00, 2.20, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(31, 'Singkong Mentega', 'Karbohidrat', 'gram', 100.00, 'Potong', 100.00, 154.00, 1.20, 0.30, 36.80, 1.80, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(32, 'Tepung Terigu Segitiga', 'Karbohidrat', 'gram', 100.00, 'Gelas', 125.00, 365.00, 10.30, 1.00, 77.30, 2.70, 1.00, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(33, 'Dada Ayam Berkulit', 'Protein Hewani', 'gram', 100.00, 'Potong', 100.00, 239.00, 27.00, 13.00, 0.00, 0.00, 0.70, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(34, 'Daging Sapi Has Dalam', 'Protein Hewani', 'gram', 100.00, 'Potong Sedang', 50.00, 201.00, 24.00, 11.00, 0.00, 0.00, 0.65, NULL, '2026-05-27 13:11:11', '2026-05-27 13:11:11'),
(35, 'Ikan Lele Fresh', 'Protein Hewani', 'gram', 100.00, 'Ekor', 120.00, 105.00, 18.00, 3.00, 0.00, 0.00, 0.80, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(36, 'Ikan Kembung Benggol', 'Protein Hewani', 'gram', 100.00, 'Ekor', 100.00, 112.00, 21.00, 3.00, 0.00, 0.00, 0.75, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(37, 'Telur Ayam Kampung', 'Protein Hewani', 'gram', 100.00, 'Butir', 45.00, 150.00, 13.00, 10.00, 0.50, 0.00, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(38, 'Sosis Sapi Premium', 'Protein Hewani', 'gram', 100.00, 'Biji', 30.00, 230.00, 12.00, 18.00, 5.00, 0.00, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(39, 'Bakso Sapi Tenis', 'Protein Hewani', 'gram', 100.00, 'Biji Besar', 50.00, 220.00, 14.00, 15.00, 6.00, 0.00, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(40, 'Tempe Kedelai Murni', 'Protein Nabati', 'gram', 100.00, 'Potong Sedang', 50.00, 192.00, 19.00, 11.00, 10.00, 6.50, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(41, 'Tahu Putih Lembut', 'Protein Nabati', 'gram', 100.00, 'Biji', 75.00, 76.00, 8.00, 4.80, 1.90, 0.30, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(42, 'Kacang Hijau Kupas', 'Protein Nabati', 'gram', 100.00, 'Gelas', 150.00, 347.00, 24.00, 1.20, 62.00, 7.60, 2.20, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(43, 'Kacang Tanah Kupas', 'Protein Nabati', 'gram', 100.00, 'Sdm', 10.00, 567.00, 25.80, 49.20, 16.10, 8.50, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(44, 'Bayam Hijau', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 39.00, 1.00, 0.20, 9.00, 2.60, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(45, 'Kangkung Sawah', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 24.00, 1.00, 0.20, 9.00, 3.00, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(46, 'Sawi Putih', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 32.00, 1.00, 0.20, 7.00, 3.00, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(47, 'Sawi Hijau (Caixin)', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 29.00, 1.00, 0.20, 5.00, 2.40, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(48, 'Wortel Lokal', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 22.00, 3.00, 0.20, 6.00, 2.60, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(49, 'Buncis Muda', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 31.00, 2.00, 0.20, 8.00, 2.60, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(50, 'Labu Siam (Manisa)', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 37.00, 2.00, 0.20, 5.00, 2.00, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(51, 'Terong Ungu', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 29.00, 1.00, 0.20, 7.00, 2.80, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(52, 'Kacang Panjang', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 23.00, 1.00, 0.20, 7.00, 3.50, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(53, 'Jamur Kuping', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 28.00, 3.00, 0.20, 6.00, 1.60, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(54, 'Jamur Tiram White', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 33.00, 2.00, 0.20, 4.00, 3.20, 1.00, NULL, '2026-05-27 13:11:12', '2026-05-27 13:11:12'),
(55, 'Kol Kubis', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 33.00, 1.00, 0.20, 6.00, 3.10, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(56, 'Seledri Potong', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 26.00, 2.00, 0.20, 6.00, 1.60, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(57, 'Daun Bawang', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 44.00, 1.00, 0.20, 4.00, 3.10, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(58, 'Tomat Merah', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 41.00, 2.00, 0.20, 4.00, 2.30, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(59, 'Timun Lokal', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 33.00, 1.00, 0.20, 5.00, 1.90, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(60, 'Pare Ayam', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 39.00, 1.00, 0.20, 5.00, 3.30, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(61, 'Gambas (Oyong)', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 28.00, 1.00, 0.20, 7.00, 1.50, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(62, 'Labu Kuning (Waluh)', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 25.00, 1.00, 0.20, 8.00, 2.00, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(63, 'Daun Singkong Rebus', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 45.00, 3.00, 0.20, 5.00, 2.20, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(64, 'Rebung Mentah', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 20.00, 1.00, 0.20, 6.00, 3.00, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(65, 'Tauge Kacang Hijau', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 24.00, 3.00, 0.20, 9.00, 3.50, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(66, 'Jagung Manis Pipil', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 24.00, 2.00, 0.20, 4.00, 2.50, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(67, 'Kemangi Fresh', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 21.00, 3.00, 0.20, 6.00, 3.40, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(68, 'Daun Pepaya', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 34.00, 3.00, 0.20, 7.00, 1.60, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(69, 'Genjer Sayur', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 24.00, 3.00, 0.20, 5.00, 2.50, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(70, 'Kembang Kol', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 37.00, 3.00, 0.20, 9.00, 1.60, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(71, 'Brokoli Segar', 'Sayuran', 'gram', 100.00, 'Sendok Sayur', 50.00, 42.00, 3.00, 0.20, 5.00, 2.60, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(72, 'Pisang Ambon Kuning', 'Buah', 'gram', 100.00, 'Potong', 75.00, 57.00, 0.00, 0.20, 13.00, 2.20, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(73, 'Pisang Raja Sereh', 'Buah', 'gram', 100.00, 'Potong', 75.00, 47.00, 1.00, 0.20, 17.00, 1.10, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(74, 'Apel Malang Fresh', 'Buah', 'gram', 100.00, 'Potong', 75.00, 59.00, 1.00, 0.20, 10.00, 1.10, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(75, 'Mangga Harum Manis', 'Buah', 'gram', 100.00, 'Potong', 75.00, 82.00, 1.00, 0.20, 25.00, 1.40, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(76, 'Pepaya California', 'Buah', 'gram', 100.00, 'Potong', 75.00, 37.00, 1.00, 0.20, 13.00, 2.90, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(77, 'Naga Merah Super', 'Buah', 'gram', 100.00, 'Potong', 75.00, 40.00, 0.00, 0.20, 9.00, 2.10, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(78, 'Alpukat Mentega', 'Buah', 'gram', 100.00, 'Potong', 75.00, 37.00, 1.00, 0.20, 22.00, 0.80, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(79, 'Jambu Biji Merah', 'Buah', 'gram', 100.00, 'Potong', 75.00, 45.00, 0.00, 0.20, 20.00, 2.00, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(80, 'Semangka Merah Tanpa Biji', 'Buah', 'gram', 100.00, 'Potong', 75.00, 46.00, 1.00, 0.20, 10.00, 1.50, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(81, 'Melon Sky Rocket', 'Buah', 'gram', 100.00, 'Potong', 75.00, 41.00, 1.00, 0.20, 12.00, 3.00, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(82, 'Nanas Madu Subang', 'Buah', 'gram', 100.00, 'Potong', 75.00, 59.00, 0.00, 0.20, 16.00, 1.60, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(83, 'Sawo Kecik', 'Buah', 'gram', 100.00, 'Potong', 75.00, 63.00, 0.00, 0.20, 14.00, 2.20, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(84, 'Kelapa Muda Serut', 'Buah', 'gram', 100.00, 'Potong', 75.00, 84.00, 0.00, 0.20, 24.00, 2.10, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(85, 'Kurma Ajwa', 'Buah', 'gram', 100.00, 'Potong', 75.00, 38.00, 1.00, 0.20, 10.00, 2.30, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(86, 'Sirsak Ratu', 'Buah', 'gram', 100.00, 'Potong', 75.00, 66.00, 0.00, 0.20, 14.00, 1.60, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(87, 'Markisa Medan', 'Buah', 'gram', 100.00, 'Potong', 75.00, 44.00, 0.00, 0.20, 22.00, 2.40, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(88, 'Rambutan Binjai', 'Buah', 'gram', 100.00, 'Potong', 75.00, 54.00, 1.00, 0.20, 10.00, 2.70, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(89, 'Salak Pondoh', 'Buah', 'gram', 100.00, 'Potong', 75.00, 77.00, 0.00, 0.20, 9.00, 2.70, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(90, 'Duku Palembang', 'Buah', 'gram', 100.00, 'Potong', 75.00, 47.00, 0.00, 0.20, 20.00, 2.10, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(91, 'Manggis Bali', 'Buah', 'gram', 100.00, 'Potong', 75.00, 59.00, 0.00, 0.20, 12.00, 1.80, 1.00, NULL, '2026-05-27 13:11:13', '2026-05-27 13:11:13'),
(92, 'Pisang Premium #91', 'Buah', 'gram', 100.00, 'Potong', 150.00, 133.00, 20.00, 5.00, 27.00, 4.50, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(93, 'Apel Premium #92', 'Buah', 'gram', 100.00, 'Potong', 65.00, 127.00, 21.00, 14.00, 48.00, 0.40, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(94, 'Apel Segar #93', 'Buah', 'gram', 100.00, 'Potong', 137.00, 175.00, 4.00, 9.00, 51.00, 3.20, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(95, 'Jeruk Olahan #94', 'Buah', 'gram', 100.00, 'Potong', 70.00, 87.00, 21.00, 20.00, 70.00, 1.60, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(96, 'Tempe Impor #95', 'Protein Nabati', 'gram', 100.00, 'Potong', 76.00, 158.00, 6.00, 2.00, 61.00, 4.00, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(97, 'Ikan Segar #96', 'Protein Hewani', 'gram', 100.00, 'Potong', 87.00, 332.00, 8.00, 17.00, 38.00, 4.90, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(98, 'Wortel Impor #97', 'Sayuran', 'gram', 100.00, 'Mangkuk', 115.00, 258.00, 3.00, 15.00, 54.00, 4.40, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(99, 'Tempe Alami #98', 'Protein Nabati', 'gram', 100.00, 'Potong', 67.00, 232.00, 19.00, 9.00, 16.00, 4.30, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(100, 'Wortel Alami #99', 'Sayuran', 'gram', 100.00, 'Mangkuk', 124.00, 207.00, 23.00, 1.00, 25.00, 2.00, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(101, 'Beras Premium #100', 'Karbohidrat', 'gram', 100.00, 'Piring', 138.00, 346.00, 8.00, 19.00, 24.00, 4.40, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(102, 'Bayam Organik #101', 'Sayuran', 'gram', 100.00, 'Mangkuk', 69.00, 128.00, 25.00, 2.00, 35.00, 1.60, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(103, 'Ayam Premium #102', 'Protein Hewani', 'gram', 100.00, 'Potong', 89.00, 325.00, 7.00, 15.00, 56.00, 1.10, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(104, 'Tahu Impor #103', 'Protein Nabati', 'gram', 100.00, 'Potong', 106.00, 76.00, 25.00, 11.00, 58.00, 1.30, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(105, 'Pisang Impor #104', 'Buah', 'gram', 100.00, 'Potong', 81.00, 41.00, 10.00, 9.00, 73.00, 3.10, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(106, 'Jeruk Organik #105', 'Buah', 'gram', 100.00, 'Potong', 149.00, 161.00, 2.00, 20.00, 13.00, 3.20, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(107, 'Tempe Alami #106', 'Protein Nabati', 'gram', 100.00, 'Potong', 60.00, 288.00, 23.00, 1.00, 57.00, 0.70, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(108, 'Beras Olahan #107', 'Karbohidrat', 'gram', 100.00, 'Piring', 114.00, 158.00, 13.00, 19.00, 47.00, 1.00, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(109, 'Tahu Segar #108', 'Protein Nabati', 'gram', 100.00, 'Potong', 119.00, 97.00, 4.00, 12.00, 27.00, 1.30, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(110, 'Ubi Impor #109', 'Karbohidrat', 'gram', 100.00, 'Piring', 123.00, 237.00, 11.00, 11.00, 65.00, 4.30, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(111, 'Ikan Organik #110', 'Protein Hewani', 'gram', 100.00, 'Potong', 121.00, 305.00, 4.00, 10.00, 15.00, 0.90, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(112, 'Tempe Spesial #111', 'Protein Nabati', 'gram', 100.00, 'Potong', 85.00, 178.00, 5.00, 3.00, 70.00, 2.70, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(113, 'Tempe Lokal #112', 'Protein Nabati', 'gram', 100.00, 'Potong', 67.00, 257.00, 16.00, 6.00, 40.00, 4.90, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(114, 'Tahu Segar #113', 'Protein Nabati', 'gram', 100.00, 'Potong', 136.00, 117.00, 18.00, 3.00, 26.00, 2.80, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(115, 'Tempe Impor #114', 'Protein Nabati', 'gram', 100.00, 'Potong', 70.00, 191.00, 5.00, 0.00, 56.00, 3.70, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(116, 'Tempe Premium #115', 'Protein Nabati', 'gram', 100.00, 'Potong', 104.00, 229.00, 7.00, 2.00, 53.00, 2.30, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(117, 'Pisang Organik #116', 'Buah', 'gram', 100.00, 'Potong', 129.00, 143.00, 6.00, 9.00, 61.00, 0.10, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(118, 'Tempe Premium #117', 'Protein Nabati', 'gram', 100.00, 'Potong', 126.00, 342.00, 3.00, 16.00, 58.00, 4.30, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(119, 'Ikan Organik #118', 'Protein Hewani', 'gram', 100.00, 'Potong', 127.00, 61.00, 12.00, 4.00, 19.00, 3.30, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(120, 'Tahu Segar #119', 'Protein Nabati', 'gram', 100.00, 'Potong', 116.00, 251.00, 7.00, 5.00, 69.00, 4.80, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(121, 'Tempe Organik #120', 'Protein Nabati', 'gram', 100.00, 'Potong', 59.00, 86.00, 5.00, 18.00, 52.00, 2.90, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(122, 'Sapi Lokal #121', 'Protein Hewani', 'gram', 100.00, 'Potong', 94.00, 172.00, 9.00, 13.00, 27.00, 0.10, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(123, 'Ayam Premium #122', 'Protein Hewani', 'gram', 100.00, 'Potong', 59.00, 261.00, 1.00, 6.00, 56.00, 4.70, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(124, 'Ubi Impor #123', 'Karbohidrat', 'gram', 100.00, 'Piring', 75.00, 97.00, 24.00, 10.00, 5.00, 2.80, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(125, 'Ubi Impor #124', 'Karbohidrat', 'gram', 100.00, 'Piring', 116.00, 125.00, 16.00, 2.00, 75.00, 4.20, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(126, 'Sapi Spesial #125', 'Protein Hewani', 'gram', 100.00, 'Potong', 66.00, 236.00, 7.00, 16.00, 12.00, 2.60, 1.00, NULL, '2026-05-27 13:11:14', '2026-05-27 13:11:14'),
(127, 'Tempe Premium #126', 'Protein Nabati', 'gram', 100.00, 'Potong', 106.00, 345.00, 23.00, 20.00, 54.00, 5.00, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(128, 'Sapi Impor #127', 'Protein Hewani', 'gram', 100.00, 'Potong', 109.00, 219.00, 14.00, 2.00, 23.00, 4.50, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(129, 'Tahu Impor #128', 'Protein Nabati', 'gram', 100.00, 'Potong', 77.00, 198.00, 12.00, 12.00, 10.00, 1.10, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(130, 'Ayam Lokal #129', 'Protein Hewani', 'gram', 100.00, 'Potong', 76.00, 239.00, 19.00, 19.00, 31.00, 3.40, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(131, 'Tempe Segar #130', 'Protein Nabati', 'gram', 100.00, 'Potong', 109.00, 268.00, 20.00, 9.00, 10.00, 2.30, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(132, 'Tempe Lokal #131', 'Protein Nabati', 'gram', 100.00, 'Potong', 100.00, 161.00, 1.00, 11.00, 9.00, 4.20, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(133, 'Kangkung Spesial #132', 'Sayuran', 'gram', 100.00, 'Mangkuk', 101.00, 185.00, 25.00, 4.00, 44.00, 1.10, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(134, 'Ikan Alami #133', 'Protein Hewani', 'gram', 100.00, 'Potong', 133.00, 62.00, 22.00, 0.00, 57.00, 0.00, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(135, 'Tahu Olahan #134', 'Protein Nabati', 'gram', 100.00, 'Potong', 50.00, 312.00, 2.00, 7.00, 22.00, 3.70, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(136, 'Bayam Olahan #135', 'Sayuran', 'gram', 100.00, 'Mangkuk', 111.00, 141.00, 5.00, 19.00, 23.00, 1.20, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(137, 'Tahu Impor #136', 'Protein Nabati', 'gram', 100.00, 'Potong', 65.00, 161.00, 13.00, 12.00, 66.00, 0.90, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(138, 'Tempe Olahan #137', 'Protein Nabati', 'gram', 100.00, 'Potong', 63.00, 173.00, 23.00, 3.00, 29.00, 0.10, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(139, 'Jeruk Impor #138', 'Buah', 'gram', 100.00, 'Potong', 80.00, 262.00, 7.00, 13.00, 70.00, 3.20, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(140, 'Bayam Impor #139', 'Sayuran', 'gram', 100.00, 'Mangkuk', 87.00, 76.00, 22.00, 19.00, 17.00, 4.70, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(141, 'Apel Organik #140', 'Buah', 'gram', 100.00, 'Potong', 127.00, 290.00, 9.00, 11.00, 19.00, 4.60, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(142, 'Bayam Alami #141', 'Sayuran', 'gram', 100.00, 'Mangkuk', 62.00, 188.00, 3.00, 19.00, 55.00, 0.30, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(143, 'Tahu Lokal #142', 'Protein Nabati', 'gram', 100.00, 'Potong', 65.00, 122.00, 14.00, 18.00, 19.00, 4.80, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(144, 'Sapi Premium #143', 'Protein Hewani', 'gram', 100.00, 'Potong', 83.00, 198.00, 19.00, 10.00, 8.00, 0.20, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(145, 'Sapi Premium #144', 'Protein Hewani', 'gram', 100.00, 'Potong', 102.00, 52.00, 6.00, 0.00, 62.00, 2.50, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(146, 'Bayam Alami #145', 'Sayuran', 'gram', 100.00, 'Mangkuk', 140.00, 271.00, 14.00, 20.00, 19.00, 3.90, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(147, 'Ubi Spesial #146', 'Karbohidrat', 'gram', 100.00, 'Piring', 109.00, 264.00, 25.00, 19.00, 36.00, 2.10, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(148, 'Bayam Premium #147', 'Sayuran', 'gram', 100.00, 'Mangkuk', 148.00, 226.00, 21.00, 10.00, 45.00, 4.00, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(149, 'Pisang Alami #148', 'Buah', 'gram', 100.00, 'Potong', 125.00, 58.00, 14.00, 13.00, 10.00, 4.30, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(150, 'Tahu Alami #149', 'Protein Nabati', 'gram', 100.00, 'Potong', 77.00, 324.00, 3.00, 15.00, 45.00, 4.00, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(151, 'Ikan Alami #150', 'Protein Hewani', 'gram', 100.00, 'Potong', 106.00, 188.00, 9.00, 19.00, 11.00, 3.80, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(152, 'Kangkung Segar #151', 'Sayuran', 'gram', 100.00, 'Mangkuk', 145.00, 61.00, 5.00, 2.00, 54.00, 1.00, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(153, 'Ubi Premium #152', 'Karbohidrat', 'gram', 100.00, 'Piring', 51.00, 324.00, 17.00, 1.00, 71.00, 1.40, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(154, 'Kangkung Spesial #153', 'Sayuran', 'gram', 100.00, 'Mangkuk', 53.00, 237.00, 3.00, 16.00, 50.00, 2.90, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(155, 'Sapi Organik #154', 'Protein Hewani', 'gram', 100.00, 'Potong', 138.00, 64.00, 4.00, 9.00, 23.00, 0.80, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(156, 'Beras Segar #155', 'Karbohidrat', 'gram', 100.00, 'Piring', 119.00, 248.00, 1.00, 7.00, 64.00, 3.90, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(157, 'Wortel Premium #156', 'Sayuran', 'gram', 100.00, 'Mangkuk', 69.00, 288.00, 17.00, 0.00, 64.00, 0.80, 1.00, NULL, '2026-05-27 13:11:15', '2026-05-27 13:11:15'),
(158, 'Tahu Alami #157', 'Protein Nabati', 'gram', 100.00, 'Potong', 137.00, 114.00, 2.00, 9.00, 5.00, 1.90, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(159, 'Jeruk Alami #158', 'Buah', 'gram', 100.00, 'Potong', 144.00, 319.00, 21.00, 12.00, 21.00, 4.80, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(160, 'Bayam Organik #159', 'Sayuran', 'gram', 100.00, 'Mangkuk', 108.00, 173.00, 14.00, 6.00, 25.00, 3.30, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(161, 'Jeruk Segar #160', 'Buah', 'gram', 100.00, 'Potong', 115.00, 305.00, 9.00, 0.00, 28.00, 1.30, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(162, 'Tempe Impor #161', 'Protein Nabati', 'gram', 100.00, 'Potong', 62.00, 306.00, 7.00, 4.00, 73.00, 1.20, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(163, 'Wortel Segar #162', 'Sayuran', 'gram', 100.00, 'Mangkuk', 88.00, 134.00, 19.00, 1.00, 60.00, 4.90, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(164, 'Kangkung Olahan #163', 'Sayuran', 'gram', 100.00, 'Mangkuk', 89.00, 34.00, 16.00, 11.00, 28.00, 3.20, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(165, 'Beras Spesial #164', 'Karbohidrat', 'gram', 100.00, 'Piring', 77.00, 283.00, 17.00, 16.00, 65.00, 3.00, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(166, 'Tahu Olahan #165', 'Protein Nabati', 'gram', 100.00, 'Potong', 119.00, 77.00, 10.00, 4.00, 52.00, 4.40, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(167, 'Tempe Segar #166', 'Protein Nabati', 'gram', 100.00, 'Potong', 68.00, 254.00, 4.00, 10.00, 24.00, 2.40, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(168, 'Ubi Olahan #167', 'Karbohidrat', 'gram', 100.00, 'Piring', 107.00, 159.00, 3.00, 17.00, 48.00, 3.70, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(169, 'Tempe Impor #168', 'Protein Nabati', 'gram', 100.00, 'Potong', 120.00, 330.00, 10.00, 16.00, 31.00, 0.80, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(170, 'Apel Lokal #169', 'Buah', 'gram', 100.00, 'Potong', 118.00, 175.00, 5.00, 6.00, 21.00, 3.90, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(171, 'Sapi Lokal #170', 'Protein Hewani', 'gram', 100.00, 'Potong', 55.00, 293.00, 25.00, 7.00, 71.00, 2.30, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(172, 'Tempe Alami #171', 'Protein Nabati', 'gram', 100.00, 'Potong', 149.00, 321.00, 2.00, 19.00, 43.00, 3.70, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(173, 'Beras Impor #172', 'Karbohidrat', 'gram', 100.00, 'Piring', 60.00, 348.00, 3.00, 19.00, 32.00, 1.90, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(174, 'Ikan Olahan #173', 'Protein Hewani', 'gram', 100.00, 'Potong', 90.00, 329.00, 12.00, 15.00, 42.00, 3.10, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(175, 'Apel Lokal #174', 'Buah', 'gram', 100.00, 'Potong', 58.00, 33.00, 5.00, 2.00, 19.00, 4.30, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(176, 'Kangkung Organik #175', 'Sayuran', 'gram', 100.00, 'Mangkuk', 128.00, 243.00, 22.00, 7.00, 42.00, 0.00, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(177, 'Wortel Alami #176', 'Sayuran', 'gram', 100.00, 'Mangkuk', 117.00, 181.00, 22.00, 16.00, 50.00, 3.40, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(178, 'Tahu Premium #177', 'Protein Nabati', 'gram', 100.00, 'Potong', 102.00, 146.00, 11.00, 6.00, 49.00, 2.90, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(179, 'Kangkung Impor #178', 'Sayuran', 'gram', 100.00, 'Mangkuk', 121.00, 209.00, 3.00, 7.00, 44.00, 1.10, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(180, 'Pisang Premium #179', 'Buah', 'gram', 100.00, 'Potong', 88.00, 89.00, 14.00, 20.00, 54.00, 0.20, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(181, 'Tempe Segar #180', 'Protein Nabati', 'gram', 100.00, 'Potong', 68.00, 197.00, 2.00, 7.00, 39.00, 4.60, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(182, 'Bayam Impor #181', 'Sayuran', 'gram', 100.00, 'Mangkuk', 91.00, 40.00, 7.00, 4.00, 9.00, 4.70, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(183, 'Ayam Segar #182', 'Protein Hewani', 'gram', 100.00, 'Potong', 123.00, 36.00, 16.00, 15.00, 28.00, 2.40, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(184, 'Jeruk Lokal #183', 'Buah', 'gram', 100.00, 'Potong', 64.00, 112.00, 5.00, 0.00, 69.00, 3.80, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(185, 'Beras Segar #184', 'Karbohidrat', 'gram', 100.00, 'Piring', 97.00, 261.00, 1.00, 16.00, 69.00, 2.50, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(186, 'Kangkung Impor #185', 'Sayuran', 'gram', 100.00, 'Mangkuk', 67.00, 135.00, 24.00, 14.00, 45.00, 0.50, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(187, 'Wortel Lokal #186', 'Sayuran', 'gram', 100.00, 'Mangkuk', 75.00, 188.00, 18.00, 11.00, 36.00, 2.40, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(188, 'Tempe Spesial #187', 'Protein Nabati', 'gram', 100.00, 'Potong', 150.00, 320.00, 12.00, 5.00, 23.00, 4.10, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(189, 'Beras Olahan #188', 'Karbohidrat', 'gram', 100.00, 'Piring', 76.00, 150.00, 23.00, 13.00, 52.00, 2.10, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(190, 'Bayam Organik #189', 'Sayuran', 'gram', 100.00, 'Mangkuk', 113.00, 322.00, 17.00, 20.00, 37.00, 1.50, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(191, 'Beras Impor #190', 'Karbohidrat', 'gram', 100.00, 'Piring', 141.00, 226.00, 8.00, 13.00, 54.00, 2.30, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(192, 'Tempe Alami #191', 'Protein Nabati', 'gram', 100.00, 'Potong', 62.00, 287.00, 21.00, 14.00, 43.00, 4.10, 1.00, NULL, '2026-05-27 13:11:16', '2026-05-27 13:11:16'),
(193, 'Tahu Premium #192', 'Protein Nabati', 'gram', 100.00, 'Potong', 63.00, 95.00, 2.00, 5.00, 16.00, 2.30, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(194, 'Pisang Premium #193', 'Buah', 'gram', 100.00, 'Potong', 121.00, 343.00, 19.00, 2.00, 58.00, 0.80, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(195, 'Ubi Segar #194', 'Karbohidrat', 'gram', 100.00, 'Piring', 106.00, 231.00, 7.00, 9.00, 22.00, 2.20, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(196, 'Bayam Alami #195', 'Sayuran', 'gram', 100.00, 'Mangkuk', 68.00, 345.00, 17.00, 11.00, 16.00, 0.10, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(197, 'Pisang Premium #196', 'Buah', 'gram', 100.00, 'Potong', 84.00, 326.00, 10.00, 15.00, 50.00, 1.20, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(198, 'Ikan Impor #197', 'Protein Hewani', 'gram', 100.00, 'Potong', 131.00, 124.00, 13.00, 2.00, 54.00, 4.90, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(199, 'Beras Premium #198', 'Karbohidrat', 'gram', 100.00, 'Piring', 131.00, 74.00, 16.00, 11.00, 53.00, 0.80, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(200, 'Sapi Premium #199', 'Protein Hewani', 'gram', 100.00, 'Potong', 107.00, 80.00, 17.00, 18.00, 56.00, 1.20, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(201, 'Tempe Alami #200', 'Protein Nabati', 'gram', 100.00, 'Potong', 126.00, 43.00, 14.00, 6.00, 39.00, 2.70, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(202, 'Pisang Segar #201', 'Buah', 'gram', 100.00, 'Potong', 102.00, 310.00, 13.00, 2.00, 49.00, 0.80, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(203, 'Wortel Alami #202', 'Sayuran', 'gram', 100.00, 'Mangkuk', 120.00, 326.00, 20.00, 13.00, 13.00, 3.00, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(204, 'Apel Segar #203', 'Buah', 'gram', 100.00, 'Potong', 132.00, 157.00, 18.00, 11.00, 55.00, 4.20, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(205, 'Apel Olahan #204', 'Buah', 'gram', 100.00, 'Potong', 52.00, 332.00, 20.00, 11.00, 15.00, 3.10, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(206, 'Ikan Premium #205', 'Protein Hewani', 'gram', 100.00, 'Potong', 102.00, 69.00, 8.00, 13.00, 39.00, 3.60, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(207, 'Ikan Olahan #206', 'Protein Hewani', 'gram', 100.00, 'Potong', 118.00, 92.00, 22.00, 17.00, 40.00, 1.20, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(208, 'Ubi Lokal #207', 'Karbohidrat', 'gram', 100.00, 'Piring', 131.00, 279.00, 5.00, 18.00, 24.00, 4.90, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(209, 'Tempe Spesial #208', 'Protein Nabati', 'gram', 100.00, 'Potong', 109.00, 223.00, 8.00, 14.00, 62.00, 3.40, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(210, 'Tahu Impor #209', 'Protein Nabati', 'gram', 100.00, 'Potong', 150.00, 324.00, 9.00, 4.00, 68.00, 1.00, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(211, 'Sapi Lokal #210', 'Protein Hewani', 'gram', 100.00, 'Potong', 90.00, 198.00, 10.00, 14.00, 72.00, 0.30, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(212, 'Bayam Alami #211', 'Sayuran', 'gram', 100.00, 'Mangkuk', 111.00, 193.00, 17.00, 18.00, 74.00, 1.30, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(213, 'Tempe Lokal #212', 'Protein Nabati', 'gram', 100.00, 'Potong', 119.00, 246.00, 16.00, 7.00, 69.00, 5.00, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(214, 'Ayam Lokal #213', 'Protein Hewani', 'gram', 100.00, 'Potong', 117.00, 184.00, 19.00, 3.00, 14.00, 2.40, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(215, 'Tempe Organik #214', 'Protein Nabati', 'gram', 100.00, 'Potong', 126.00, 181.00, 14.00, 9.00, 58.00, 2.50, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(216, 'Kangkung Spesial #215', 'Sayuran', 'gram', 100.00, 'Mangkuk', 63.00, 79.00, 24.00, 1.00, 17.00, 3.90, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(217, 'Tempe Alami #216', 'Protein Nabati', 'gram', 100.00, 'Potong', 150.00, 306.00, 4.00, 2.00, 13.00, 1.20, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(218, 'Ubi Spesial #217', 'Karbohidrat', 'gram', 100.00, 'Piring', 72.00, 185.00, 17.00, 14.00, 10.00, 2.90, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(219, 'Wortel Lokal #218', 'Sayuran', 'gram', 100.00, 'Mangkuk', 87.00, 99.00, 11.00, 17.00, 63.00, 0.70, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(220, 'Apel Spesial #219', 'Buah', 'gram', 100.00, 'Potong', 89.00, 124.00, 25.00, 10.00, 64.00, 4.40, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(221, 'Jeruk Segar #220', 'Buah', 'gram', 100.00, 'Potong', 124.00, 120.00, 5.00, 9.00, 70.00, 4.80, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(222, 'Ikan Olahan #221', 'Protein Hewani', 'gram', 100.00, 'Potong', 109.00, 287.00, 19.00, 11.00, 49.00, 2.70, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(223, 'Ayam Segar #222', 'Protein Hewani', 'gram', 100.00, 'Potong', 55.00, 301.00, 12.00, 9.00, 48.00, 5.00, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(224, 'Ikan Spesial #223', 'Protein Hewani', 'gram', 100.00, 'Potong', 108.00, 243.00, 17.00, 2.00, 36.00, 3.40, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(225, 'Ikan Segar #224', 'Protein Hewani', 'gram', 100.00, 'Potong', 56.00, 271.00, 19.00, 10.00, 15.00, 2.30, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(226, 'Kangkung Impor #225', 'Sayuran', 'gram', 100.00, 'Mangkuk', 68.00, 106.00, 19.00, 11.00, 39.00, 2.50, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(227, 'Beras Lokal #226', 'Karbohidrat', 'gram', 100.00, 'Piring', 124.00, 207.00, 21.00, 16.00, 38.00, 1.90, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(228, 'Wortel Spesial #227', 'Sayuran', 'gram', 100.00, 'Mangkuk', 78.00, 224.00, 7.00, 5.00, 18.00, 2.90, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(229, 'Tahu Impor #228', 'Protein Nabati', 'gram', 100.00, 'Potong', 117.00, 66.00, 7.00, 0.00, 5.00, 0.60, 1.00, NULL, '2026-05-27 13:11:17', '2026-05-27 13:11:17'),
(230, 'Wortel Premium #229', 'Sayuran', 'gram', 100.00, 'Mangkuk', 127.00, 77.00, 11.00, 1.00, 51.00, 1.70, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(231, 'Beras Spesial #230', 'Karbohidrat', 'gram', 100.00, 'Piring', 148.00, 255.00, 22.00, 10.00, 28.00, 4.90, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(232, 'Tahu Impor #231', 'Protein Nabati', 'gram', 100.00, 'Potong', 139.00, 138.00, 24.00, 8.00, 53.00, 2.00, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(233, 'Apel Organik #232', 'Buah', 'gram', 100.00, 'Potong', 97.00, 136.00, 20.00, 1.00, 55.00, 2.30, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(234, 'Kangkung Alami #233', 'Sayuran', 'gram', 100.00, 'Mangkuk', 135.00, 252.00, 25.00, 13.00, 71.00, 2.90, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(235, 'Ikan Organik #234', 'Protein Hewani', 'gram', 100.00, 'Potong', 104.00, 318.00, 15.00, 4.00, 33.00, 3.00, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(236, 'Sapi Segar #235', 'Protein Hewani', 'gram', 100.00, 'Potong', 129.00, 191.00, 15.00, 7.00, 13.00, 2.20, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(237, 'Beras Segar #236', 'Karbohidrat', 'gram', 100.00, 'Piring', 93.00, 267.00, 14.00, 11.00, 66.00, 3.00, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(238, 'Tahu Impor #237', 'Protein Nabati', 'gram', 100.00, 'Potong', 52.00, 110.00, 17.00, 14.00, 75.00, 0.00, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(239, 'Ubi Segar #238', 'Karbohidrat', 'gram', 100.00, 'Piring', 112.00, 233.00, 2.00, 9.00, 30.00, 4.70, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(240, 'Pisang Lokal #239', 'Buah', 'gram', 100.00, 'Potong', 96.00, 195.00, 11.00, 0.00, 64.00, 1.60, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(241, 'Bayam Alami #240', 'Sayuran', 'gram', 100.00, 'Mangkuk', 89.00, 301.00, 22.00, 6.00, 33.00, 1.70, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(242, 'Ikan Premium #241', 'Protein Hewani', 'gram', 100.00, 'Potong', 75.00, 97.00, 2.00, 3.00, 60.00, 0.50, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(243, 'Ikan Organik #242', 'Protein Hewani', 'gram', 100.00, 'Potong', 121.00, 302.00, 7.00, 9.00, 66.00, 1.50, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(244, 'Sapi Premium #243', 'Protein Hewani', 'gram', 100.00, 'Potong', 69.00, 39.00, 22.00, 13.00, 69.00, 2.60, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(245, 'Beras Segar #244', 'Karbohidrat', 'gram', 100.00, 'Piring', 130.00, 199.00, 25.00, 16.00, 46.00, 1.40, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(246, 'Wortel Impor #245', 'Sayuran', 'gram', 100.00, 'Mangkuk', 134.00, 100.00, 19.00, 20.00, 12.00, 5.00, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(247, 'Tahu Alami #246', 'Protein Nabati', 'gram', 100.00, 'Potong', 90.00, 57.00, 24.00, 2.00, 16.00, 3.60, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(248, 'Wortel Organik #247', 'Sayuran', 'gram', 100.00, 'Mangkuk', 103.00, 338.00, 22.00, 2.00, 54.00, 4.80, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(249, 'Beras Olahan #248', 'Karbohidrat', 'gram', 100.00, 'Piring', 133.00, 223.00, 10.00, 9.00, 8.00, 4.80, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(250, 'Ubi Organik #249', 'Karbohidrat', 'gram', 100.00, 'Piring', 83.00, 108.00, 14.00, 8.00, 20.00, 0.90, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(251, 'Apel Impor #250', 'Buah', 'gram', 100.00, 'Potong', 125.00, 245.00, 19.00, 9.00, 61.00, 4.90, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(252, 'Ayam Impor #251', 'Protein Hewani', 'gram', 100.00, 'Potong', 58.00, 180.00, 21.00, 0.00, 21.00, 1.80, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(253, 'Ikan Lokal #252', 'Protein Hewani', 'gram', 100.00, 'Potong', 102.00, 185.00, 3.00, 0.00, 53.00, 2.00, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(254, 'Apel Organik #253', 'Buah', 'gram', 100.00, 'Potong', 54.00, 202.00, 2.00, 18.00, 29.00, 1.00, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(255, 'Tahu Spesial #254', 'Protein Nabati', 'gram', 100.00, 'Potong', 109.00, 80.00, 13.00, 6.00, 65.00, 2.30, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(256, 'Apel Alami #255', 'Buah', 'gram', 100.00, 'Potong', 61.00, 70.00, 2.00, 17.00, 18.00, 0.90, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(257, 'Bayam Organik #256', 'Sayuran', 'gram', 100.00, 'Mangkuk', 106.00, 45.00, 6.00, 18.00, 24.00, 0.60, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(258, 'Bayam Olahan #257', 'Sayuran', 'gram', 100.00, 'Mangkuk', 71.00, 91.00, 3.00, 10.00, 71.00, 3.90, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(259, 'Tempe Lokal #258', 'Protein Nabati', 'gram', 100.00, 'Potong', 53.00, 124.00, 10.00, 12.00, 45.00, 0.00, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(260, 'Ayam Olahan #259', 'Protein Hewani', 'gram', 100.00, 'Potong', 130.00, 120.00, 18.00, 20.00, 51.00, 4.20, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(261, 'Tempe Segar #260', 'Protein Nabati', 'gram', 100.00, 'Potong', 109.00, 152.00, 23.00, 19.00, 56.00, 2.90, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(262, 'Wortel Organik #261', 'Sayuran', 'gram', 100.00, 'Mangkuk', 138.00, 125.00, 9.00, 14.00, 72.00, 3.90, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(263, 'Bayam Alami #262', 'Sayuran', 'gram', 100.00, 'Mangkuk', 83.00, 303.00, 20.00, 2.00, 35.00, 2.20, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(264, 'Beras Impor #263', 'Karbohidrat', 'gram', 100.00, 'Piring', 94.00, 270.00, 3.00, 6.00, 29.00, 0.90, 1.00, NULL, '2026-05-27 13:11:18', '2026-05-27 13:11:18'),
(265, 'Tempe Impor #264', 'Protein Nabati', 'gram', 100.00, 'Potong', 116.00, 112.00, 2.00, 4.00, 26.00, 4.00, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(266, 'Ikan Spesial #265', 'Protein Hewani', 'gram', 100.00, 'Potong', 55.00, 83.00, 15.00, 11.00, 8.00, 2.90, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(267, 'Apel Olahan #266', 'Buah', 'gram', 100.00, 'Potong', 63.00, 103.00, 15.00, 16.00, 42.00, 3.20, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(268, 'Pisang Premium #267', 'Buah', 'gram', 100.00, 'Potong', 87.00, 84.00, 3.00, 18.00, 16.00, 0.40, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(269, 'Beras Impor #268', 'Karbohidrat', 'gram', 100.00, 'Piring', 148.00, 150.00, 19.00, 19.00, 67.00, 4.00, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(270, 'Pisang Impor #269', 'Buah', 'gram', 100.00, 'Potong', 82.00, 113.00, 16.00, 13.00, 36.00, 2.80, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(271, 'Ayam Premium #270', 'Protein Hewani', 'gram', 100.00, 'Potong', 106.00, 319.00, 25.00, 8.00, 23.00, 1.70, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(272, 'Ikan Lokal #271', 'Protein Hewani', 'gram', 100.00, 'Potong', 132.00, 336.00, 10.00, 1.00, 41.00, 0.90, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(273, 'Wortel Olahan #272', 'Sayuran', 'gram', 100.00, 'Mangkuk', 141.00, 259.00, 18.00, 4.00, 42.00, 4.10, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(274, 'Pisang Olahan #273', 'Buah', 'gram', 100.00, 'Potong', 116.00, 173.00, 4.00, 12.00, 56.00, 4.00, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(275, 'Ayam Premium #274', 'Protein Hewani', 'gram', 100.00, 'Potong', 53.00, 349.00, 22.00, 9.00, 13.00, 0.00, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(276, 'Wortel Organik #275', 'Sayuran', 'gram', 100.00, 'Mangkuk', 120.00, 76.00, 24.00, 4.00, 70.00, 2.80, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(277, 'Wortel Alami #276', 'Sayuran', 'gram', 100.00, 'Mangkuk', 107.00, 72.00, 25.00, 1.00, 17.00, 1.00, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(278, 'Apel Olahan #277', 'Buah', 'gram', 100.00, 'Potong', 81.00, 45.00, 12.00, 18.00, 61.00, 3.50, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(279, 'Ikan Premium #278', 'Protein Hewani', 'gram', 100.00, 'Potong', 134.00, 229.00, 7.00, 17.00, 44.00, 4.50, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(280, 'Pisang Premium #279', 'Buah', 'gram', 100.00, 'Potong', 111.00, 287.00, 3.00, 6.00, 9.00, 3.80, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(281, 'Pisang Spesial #280', 'Buah', 'gram', 100.00, 'Potong', 121.00, 127.00, 4.00, 18.00, 36.00, 3.00, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(282, 'Wortel Organik #281', 'Sayuran', 'gram', 100.00, 'Mangkuk', 89.00, 310.00, 16.00, 18.00, 24.00, 0.50, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(283, 'Jeruk Segar #282', 'Buah', 'gram', 100.00, 'Potong', 102.00, 49.00, 21.00, 4.00, 73.00, 3.00, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(284, 'Pisang Alami #283', 'Buah', 'gram', 100.00, 'Potong', 88.00, 326.00, 23.00, 9.00, 62.00, 2.40, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(285, 'Ikan Alami #284', 'Protein Hewani', 'gram', 100.00, 'Potong', 137.00, 161.00, 8.00, 11.00, 42.00, 2.00, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(286, 'Pisang Lokal #285', 'Buah', 'gram', 100.00, 'Potong', 118.00, 245.00, 15.00, 15.00, 53.00, 0.00, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(287, 'Bayam Lokal #286', 'Sayuran', 'gram', 100.00, 'Mangkuk', 110.00, 333.00, 10.00, 17.00, 27.00, 2.70, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(288, 'Bayam Organik #287', 'Sayuran', 'gram', 100.00, 'Mangkuk', 64.00, 158.00, 2.00, 15.00, 29.00, 0.70, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(289, 'Bayam Organik #288', 'Sayuran', 'gram', 100.00, 'Mangkuk', 129.00, 221.00, 8.00, 2.00, 6.00, 1.50, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(290, 'Jeruk Organik #289', 'Buah', 'gram', 100.00, 'Potong', 131.00, 157.00, 13.00, 7.00, 13.00, 2.30, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(291, 'Beras Segar #290', 'Karbohidrat', 'gram', 100.00, 'Piring', 65.00, 126.00, 3.00, 6.00, 39.00, 0.20, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(292, 'Kangkung Impor #291', 'Sayuran', 'gram', 100.00, 'Mangkuk', 54.00, 278.00, 3.00, 11.00, 48.00, 2.80, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(293, 'Tempe Premium #292', 'Protein Nabati', 'gram', 100.00, 'Potong', 137.00, 76.00, 16.00, 19.00, 39.00, 1.80, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(294, 'Ayam Lokal #293', 'Protein Hewani', 'gram', 100.00, 'Potong', 67.00, 275.00, 12.00, 6.00, 63.00, 3.90, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(295, 'Bayam Olahan #294', 'Sayuran', 'gram', 100.00, 'Mangkuk', 126.00, 60.00, 12.00, 1.00, 21.00, 2.50, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(296, 'Jeruk Spesial #295', 'Buah', 'gram', 100.00, 'Potong', 136.00, 259.00, 7.00, 16.00, 14.00, 4.10, 1.00, NULL, '2026-05-27 13:11:19', '2026-05-27 13:11:19'),
(297, 'Kangkung Organik #296', 'Sayuran', 'gram', 100.00, 'Mangkuk', 54.00, 121.00, 1.00, 10.00, 34.00, 1.40, 1.00, NULL, '2026-05-27 13:11:20', '2026-05-27 13:11:20'),
(298, 'Pisang Impor #297', 'Buah', 'gram', 100.00, 'Potong', 105.00, 159.00, 3.00, 17.00, 72.00, 1.10, 1.00, NULL, '2026-05-27 13:11:20', '2026-05-27 13:11:20'),
(299, 'Bayam Impor #298', 'Sayuran', 'gram', 100.00, 'Mangkuk', 103.00, 247.00, 13.00, 8.00, 64.00, 0.00, 1.00, NULL, '2026-05-27 13:11:20', '2026-05-27 13:11:20'),
(300, 'Beras Impor #299', 'Karbohidrat', 'gram', 100.00, 'Piring', 120.00, 193.00, 8.00, 16.00, 57.00, 4.40, 1.00, NULL, '2026-05-27 13:11:20', '2026-05-27 13:11:20'),
(301, 'Sapi Premium #300', 'Protein Hewani', 'gram', 100.00, 'Potong', 139.00, 253.00, 21.00, 7.00, 32.00, 3.90, 1.00, NULL, '2026-05-27 13:11:20', '2026-05-27 13:11:20'),
(302, 'Tempe Organik #301', 'Protein Nabati', 'gram', 100.00, 'Potong', 61.00, 329.00, 16.00, 18.00, 17.00, 3.80, 1.00, NULL, '2026-05-27 13:11:20', '2026-05-27 13:11:20'),
(303, 'Sapi Impor #302', 'Protein Hewani', 'gram', 100.00, 'Potong', 86.00, 331.00, 14.00, 4.00, 40.00, 4.90, 1.00, NULL, '2026-05-27 13:11:20', '2026-05-27 13:11:20'),
(304, 'Pisang Segar #303', 'Buah', 'gram', 100.00, 'Potong', 50.00, 336.00, 12.00, 18.00, 6.00, 2.60, 1.00, NULL, '2026-05-27 13:11:20', '2026-05-27 13:11:20');
INSERT INTO `food_items` (`id`, `name`, `category`, `base_unit`, `base_quantity`, `urt_unit`, `urt_weight`, `energy_kcal`, `protein_g`, `fat_g`, `carbs_g`, `fiber_g`, `yield_factor`, `image_url`, `created_at`, `updated_at`) VALUES
(305, 'Sapi Premium #304', 'Protein Hewani', 'gram', 100.00, 'Potong', 143.00, 199.00, 1.00, 5.00, 56.00, 2.00, 1.00, NULL, '2026-05-27 13:11:20', '2026-05-27 13:11:20'),
(306, 'Nasi Briyani', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 175.00, 10.00, 7.00, 18.00, 1.50, 3.00, NULL, '2026-05-27 13:28:50', '2026-05-27 13:28:50'),
(307, 'Ayam Masak Merah', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 180.00, 16.00, 90.00, 6.00, 0.50, 0.90, NULL, '2026-05-27 13:32:09', '2026-05-27 13:32:09'),
(308, 'Tempe Bumbu Kari', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 160.00, 10.00, 110.00, 7.00, 4.00, 1.00, NULL, '2026-05-27 13:33:55', '2026-05-27 13:33:55'),
(309, 'Tumis Futren', 'Sayuran', 'gram', 100.00, NULL, 0.00, 50.00, 1.50, 2.50, 6.00, 20.00, 1.00, NULL, '2026-05-27 13:41:53', '2026-05-27 13:41:53'),
(310, 'Lengkeng', 'Buah', 'gram', 100.00, NULL, 0.00, 60.00, 1.30, 0.10, 0.00, 1.10, 1.00, NULL, '2026-05-27 13:44:01', '2026-05-27 13:44:01'),
(311, 'Nasi Putih', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 130.00, 2.70, 0.30, 28.00, 0.40, 1.00, NULL, '2026-05-27 13:46:02', '2026-05-27 13:46:02'),
(312, 'telur fuyunghai', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 180.00, 9.00, 12.00, 8.00, 0.80, 1.00, NULL, '2026-05-27 13:47:21', '2026-05-27 13:47:21'),
(313, 'Cah Sayur', 'Sayuran', 'gram', 100.00, NULL, 0.00, 40.00, 1.50, 2.50, 3.50, 1.80, 1.00, NULL, '2026-05-27 13:48:20', '2026-05-27 13:48:20'),
(314, 'Tahu Jabrik', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 210.00, 7.00, 130.00, 15.00, 10.00, 1.00, NULL, '2026-05-27 13:49:24', '2026-05-27 13:49:24'),
(315, 'Apel', 'Buah', 'gram', 100.00, NULL, 0.00, 52.00, 0.30, 0.20, 13.80, 2.40, 1.00, NULL, '2026-05-27 13:50:27', '2026-05-27 13:50:27'),
(316, 'Bolu Kemasan padimas', 'Lainnya', 'gram', 100.00, NULL, 0.00, 380.00, 4.00, 0.00, 50.00, 0.00, 1.00, NULL, '2026-05-27 13:52:02', '2026-05-27 13:52:02'),
(317, 'Susu Greenfields full cream', 'Lainnya', 'gram', 100.00, NULL, 0.00, 64.00, 3.20, 3.50, 4.70, 0.00, 1.00, NULL, '2026-05-27 13:53:44', '2026-05-27 13:53:44'),
(318, 'Nasi Goreng Merah', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 170.00, 3.00, 70.00, 23.00, 0.60, 1.00, NULL, '2026-05-27 13:55:11', '2026-05-27 13:55:11'),
(319, 'tempe', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 190.00, 19.00, 110.00, 7.00, 1.40, 1.00, NULL, '2026-05-27 13:58:17', '2026-05-27 13:58:17'),
(320, 'bola daging', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 210.00, 14.00, 120.00, 5.00, 0.50, 1.00, NULL, '2026-05-27 13:59:07', '2026-05-27 13:59:07'),
(321, 'Lalapan', 'Sayuran', 'gram', 100.00, NULL, 0.00, 15.00, 0.80, 0.10, 3.00, 1.50, 1.00, NULL, '2026-05-27 14:00:03', '2026-05-27 14:00:03'),
(322, 'Nasi Uduk', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 160.00, 2.80, 40.00, 28.00, 0.50, 1.00, NULL, '2026-05-27 14:01:04', '2026-05-27 14:01:04'),
(323, 'telor bumbu bali', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 170.00, 11.00, 110.00, 5.00, 0.50, 1.00, NULL, '2026-05-27 14:02:04', '2026-05-27 14:02:04'),
(324, 'Anggur', 'Buah', 'gram', 100.00, NULL, 0.00, 67.00, 0.70, 0.20, 18.00, 0.90, 1.00, NULL, '2026-05-27 14:02:58', '2026-05-27 14:02:58'),
(325, 'Tahu Goreng', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 175.00, 10.00, 120.00, 3.00, 0.80, 1.00, NULL, '2026-05-27 14:03:54', '2026-05-27 14:03:54'),
(326, 'Wortel Buncis Bawang Putih', 'Sayuran', 'gram', 100.00, NULL, 0.00, 40.00, 1.50, 0.10, 8.00, 2.60, 1.00, NULL, '2026-05-27 14:05:18', '2026-05-27 14:05:18'),
(327, 'Ayam Bakar', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 200.00, 28.00, 120.00, 3.00, 0.00, 1.00, NULL, '2026-05-27 14:07:05', '2026-05-27 14:07:05'),
(328, 'Jeruk', 'Buah', 'gram', 100.00, NULL, 0.00, 47.00, 0.00, 0.10, 11.80, 2.40, 1.00, NULL, '2026-05-27 14:07:57', '2026-05-27 14:07:57'),
(329, 'Tahu kecap', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 140.00, 7.00, 80.00, 9.00, 0.80, 1.00, NULL, '2026-05-27 14:09:06', '2026-05-27 14:09:06'),
(330, 'Roti Kemasan merk Papabear', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 240.00, 4.00, 70.00, 38.00, 0.00, 1.00, NULL, '2026-05-27 14:10:21', '2026-05-27 14:10:21'),
(331, 'Kue Pia 100', 'Lainnya', 'gram', 100.00, NULL, 0.00, 340.00, 6.00, 120.00, 50.00, 0.00, 1.00, NULL, '2026-05-27 14:11:26', '2026-05-27 14:11:26'),
(332, 'Regal Marrie', 'Lainnya', 'gram', 100.00, NULL, 0.00, 430.00, 7.00, 11.00, 75.00, 0.00, 1.00, NULL, '2026-05-27 14:12:27', '2026-05-27 14:12:27'),
(333, 'Susu Milk Life', 'Lainnya', 'gram', 100.00, NULL, 0.00, 120.00, 6.00, 70.00, 9.00, 0.00, 1.00, NULL, '2026-05-27 14:13:27', '2026-05-27 14:13:27'),
(334, 'Telor Rebus', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 70.00, 6.30, 5.30, 0.60, 0.00, 1.00, NULL, '2026-05-27 14:15:35', '2026-05-27 14:15:35'),
(335, 'Susu Frisian Flag 125ml', 'Lainnya', 'gram', 100.00, NULL, 0.00, 80.00, 4.00, 4.50, 7.00, 0.00, 1.00, NULL, '2026-05-27 14:16:56', '2026-05-27 14:16:56'),
(336, 'Roti  Abon UMKM', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 130.00, 3.50, 4.00, 20.00, 0.00, 1.00, NULL, '2026-05-27 14:18:24', '2026-05-27 14:18:24'),
(337, 'Roti Srikaya UMKM', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 160.00, 2.50, 5.00, 26.00, 0.00, 1.00, NULL, '2026-05-27 14:20:03', '2026-05-27 14:20:03'),
(338, 'Brownies Kukus', 'Lainnya', 'gram', 100.00, NULL, 0.00, 360.00, 4.00, 18.00, 48.00, 1.50, 1.00, NULL, '2026-05-27 14:21:27', '2026-05-27 14:21:27'),
(339, 'Susu Ultra Milk 125 ml', 'Lainnya', 'gram', 100.00, NULL, 0.00, 80.00, 4.00, 4.50, 6.00, 0.00, 1.00, NULL, '2026-05-27 14:22:29', '2026-05-27 14:22:29'),
(340, 'Biskuit Sari Gandum', 'Lainnya', 'gram', 100.00, NULL, 0.00, 140.00, 2.00, 5.00, 21.00, 1.50, 1.00, NULL, '2026-05-27 14:23:56', '2026-05-27 14:23:56'),
(341, 'Ayam Ungkep Paha', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 210.00, 20.00, 12.00, 1.00, 0.00, 1.00, NULL, '2026-05-27 14:26:05', '2026-05-27 14:26:05'),
(342, 'Tempe Ungkep', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 160.00, 18.00, 8.00, 9.00, 0.00, 1.00, NULL, '2026-05-27 14:26:55', '2026-05-27 14:26:55'),
(343, 'Roti Isi Bulat Coklat UMKM', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 160.00, 2.50, 5.00, 26.00, 0.00, 1.00, NULL, '2026-05-27 14:28:56', '2026-05-27 14:28:56'),
(344, 'Pisang Muli', 'Buah', 'gram', 100.00, NULL, 0.00, 90.00, 1.10, 0.20, 23.00, 2.60, 1.00, NULL, '2026-05-27 14:29:50', '2026-05-27 14:29:50'),
(345, 'Dimsum ayam', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 170.00, 11.00, 6.00, 14.00, 0.50, 1.00, NULL, '2026-05-27 14:31:00', '2026-05-27 14:31:00'),
(346, 'Roti Isi Selai Coklat', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 220.00, 4.00, 6.00, 36.00, 0.00, 1.00, NULL, '2026-05-27 14:32:14', '2026-05-27 14:32:14'),
(347, 'Puding Susu', 'Lainnya', 'gram', 100.00, NULL, 0.00, 110.00, 2.50, 2.50, 18.00, 0.00, 1.00, NULL, '2026-05-27 14:33:17', '2026-05-27 14:33:17'),
(348, 'Donat Kampung', 'Lainnya', 'gram', 100.00, NULL, 0.00, 180.00, 3.00, 7.00, 26.00, 0.00, 1.00, NULL, '2026-05-27 15:42:53', '2026-05-27 15:42:53'),
(349, 'Kurma', 'Buah', 'gram', 100.00, NULL, 0.00, 277.00, 1.80, 0.15, 75.00, 7.00, 1.00, NULL, '2026-05-27 15:43:58', '2026-05-27 15:43:58'),
(350, 'Bolu Pisang', 'Lainnya', 'gram', 100.00, NULL, 0.00, 320.00, 4.00, 14.00, 45.00, 1.50, 1.00, NULL, '2026-05-27 15:45:13', '2026-05-27 15:45:13'),
(351, 'Biskuit Sari Gandum coklat', 'Lainnya', 'gram', 100.00, NULL, 0.00, 150.00, 2.00, 6.00, 20.00, 1.00, 1.00, NULL, '2026-05-27 15:47:31', '2026-05-27 15:47:31'),
(352, 'Telur Rebus', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 70.00, 6.30, 5.00, 0.60, 0.00, 1.00, NULL, '2026-05-27 15:49:29', '2026-05-27 15:49:29'),
(353, 'Roti Oles Coklat', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 180.00, 3.50, 6.00, 26.00, 1.00, 1.00, NULL, '2026-05-27 15:50:34', '2026-05-27 15:50:34'),
(354, 'Bolu Gulung', 'Lainnya', 'gram', 100.00, NULL, 0.00, 360.00, 4.50, 16.00, 48.00, 0.50, 1.00, NULL, '2026-05-27 15:51:32', '2026-05-27 15:51:32'),
(355, 'CocoKrunch', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 110.00, 2.00, 1.00, 23.00, 1.50, 1.00, NULL, '2026-05-27 15:52:46', '2026-05-27 15:52:46'),
(356, 'Buah Pear', 'Buah', 'gram', 100.00, NULL, 0.00, 57.00, 0.40, 0.10, 15.00, 3.10, 1.00, NULL, '2026-05-27 15:53:37', '2026-05-27 15:53:37'),
(357, 'Baso Ayam', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 160.00, 12.00, 6.00, 10.00, 0.00, 1.00, NULL, '2026-05-27 15:54:39', '2026-05-27 15:54:39'),
(358, 'Buah Naga', 'Buah', 'gram', 100.00, NULL, 0.00, 50.00, 1.10, 0.40, 11.00, 1.80, 1.00, NULL, '2026-05-27 15:55:23', '2026-05-27 15:55:23'),
(359, 'Kacang Bandung', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 510.00, 14.00, 32.00, 38.00, 4.00, 1.00, NULL, '2026-05-27 15:56:20', '2026-05-27 15:56:20'),
(360, 'Bolu Kukus', 'Lainnya', 'gram', 100.00, NULL, 0.00, 140.00, 2.50, 1.50, 28.00, 0.50, 1.00, NULL, '2026-05-27 15:57:40', '2026-05-27 15:57:40'),
(361, 'Brownies UMKM', 'Lainnya', 'gram', 100.00, NULL, 0.00, 180.00, 2.50, 9.00, 24.00, 0.00, 1.00, NULL, '2026-05-27 15:59:12', '2026-05-27 15:59:12'),
(362, 'Rolade Ayam', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 170.00, 14.00, 8.00, 7.00, 0.00, 1.00, NULL, '2026-05-27 15:59:54', '2026-05-27 15:59:54'),
(363, 'Kacang Koro', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 460.00, 18.00, 20.00, 45.00, 8.00, 1.00, NULL, '2026-05-27 16:00:41', '2026-05-27 16:00:41'),
(364, 'Chiken Katsu', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 260.00, 18.00, 12.00, 15.00, 0.50, 1.00, NULL, '2026-05-27 16:01:37', '2026-05-27 16:01:37'),
(365, 'Roti Burger', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 140.00, 4.00, 1.50, 28.00, 1.00, 1.00, NULL, '2026-05-27 16:02:39', '2026-05-27 16:02:39'),
(366, 'Pisang Cavendi', 'Buah', 'gram', 100.00, NULL, 0.00, 89.00, 1.10, 0.30, 23.00, 2.60, 1.00, NULL, '2026-05-27 16:03:28', '2026-05-27 16:03:28'),
(367, 'Roti Kasino', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 150.00, 4.50, 1.50, 30.00, 1.00, 1.00, NULL, '2026-05-27 16:04:38', '2026-05-27 16:04:38'),
(368, 'Susu Ultra Mimi 125 ml', 'Lainnya', 'gram', 100.00, NULL, 0.00, 80.00, 4.00, 4.50, 6.00, 0.00, 1.00, NULL, '2026-05-27 16:05:43', '2026-05-27 16:05:43'),
(369, 'Selai Kacang', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 95.00, 3.50, 8.00, 3.00, 1.00, 1.00, NULL, '2026-05-27 16:06:35', '2026-05-27 16:06:35'),
(370, 'Tempe Orek', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 230.00, 12.00, 12.00, 18.00, 4.00, 1.00, NULL, '2026-05-27 16:07:47', '2026-05-27 16:07:47'),
(371, 'Roti Tawar UMKM', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 110.00, 3.50, 1.00, 22.00, 0.80, 1.00, NULL, '2026-05-27 16:08:45', '2026-05-27 16:08:45'),
(372, 'Susu Sekolah', 'Lainnya', 'gram', 100.00, NULL, 0.00, 130.00, 6.00, 7.00, 9.00, 0.00, 1.00, NULL, '2026-05-27 16:09:33', '2026-05-27 16:09:33'),
(373, 'Telur Mentah', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 72.00, 6.30, 4.80, 0.40, 0.00, 1.00, NULL, '2026-05-27 16:10:31', '2026-05-27 16:10:31'),
(374, 'Susu Ultra Milk 1 Liter', 'Lainnya', 'gram', 100.00, NULL, 0.00, 150.00, 8.00, 8.00, 12.00, 0.00, 1.00, NULL, '2026-05-27 16:11:39', '2026-05-27 16:11:39'),
(375, 'Sari Roti milky soft', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 110.00, 3.00, 1.50, 20.00, 1.00, 1.00, NULL, '2026-05-27 16:18:08', '2026-05-27 16:18:08'),
(376, 'Apel Fuji', 'Buah', 'gram', 100.00, NULL, 0.00, 52.00, 0.30, 0.20, 14.00, 2.40, 1.00, NULL, '2026-05-27 16:18:56', '2026-05-27 16:18:56'),
(377, 'Nasi Daun Pandan', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 130.00, 2.70, 0.30, 28.00, 0.40, 1.00, NULL, '2026-05-27 16:20:12', '2026-05-27 16:20:12'),
(378, 'Steam Wortel Buncis', 'Sayuran', 'gram', 100.00, NULL, 0.00, 35.00, 1.30, 0.10, 8.00, 0.00, 1.00, NULL, '2026-05-27 16:21:46', '2026-05-27 16:21:46'),
(379, 'Sup Kimlo', 'Sayuran', 'gram', 100.00, NULL, 0.00, 180.00, 14.00, 5.00, 16.00, 2.50, 1.00, NULL, '2026-05-27 16:23:05', '2026-05-27 16:23:05'),
(380, 'Telur Puyuh Pindang', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 18.00, 1.20, 1.10, 0.60, 0.00, 1.00, NULL, '2026-05-27 16:24:11', '2026-05-27 16:24:11'),
(381, 'Kentang Goreng', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 310.00, 3.40, 15.00, 38.00, 3.00, 1.00, NULL, '2026-05-27 16:25:10', '2026-05-27 16:25:10'),
(382, 'Chiken Stik', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 250.00, 13.00, 14.00, 15.00, 0.90, 1.00, NULL, '2026-05-27 16:26:02', '2026-05-27 16:26:02'),
(383, 'Mix Vegetable', 'Sayuran', 'gram', 100.00, NULL, 0.00, 50.00, 2.50, 0.20, 11.00, 3.00, 1.00, NULL, '2026-05-27 16:26:53', '2026-05-27 16:26:53'),
(384, 'Mushroom Sauce', 'Lainnya', 'gram', 100.00, NULL, 0.00, 70.00, 1.00, 6.00, 2.00, 0.00, 1.00, NULL, '2026-05-27 16:27:45', '2026-05-27 16:27:45'),
(385, 'Telur okonomiyaki', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 85.00, 6.30, 6.50, 0.40, 0.00, 1.00, NULL, '2026-05-27 16:30:17', '2026-05-27 16:30:17'),
(386, 'Pepes Tahu', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 75.00, 7.00, 3.50, 3.50, 1.50, 1.00, NULL, '2026-05-27 16:31:05', '2026-05-27 16:31:05'),
(387, 'Salad coleslow', 'Sayuran', 'gram', 100.00, NULL, 0.00, 140.00, 1.00, 11.00, 9.00, 1.80, 1.00, NULL, '2026-05-27 16:32:24', '2026-05-27 16:32:24'),
(388, 'Semangka', 'Buah', 'gram', 100.00, NULL, 0.00, 30.00, 0.60, 0.10, 7.50, 0.40, 1.00, NULL, '2026-05-27 16:33:09', '2026-05-27 16:33:09'),
(389, 'Nasi Goreng', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 450.00, 14.00, 18.00, 60.00, 1.00, 1.00, NULL, '2026-05-27 16:33:58', '2026-05-27 16:33:58'),
(390, 'Brokoli Bawang Putih', 'Sayuran', 'gram', 100.00, NULL, 0.00, 60.00, 2.50, 4.00, 6.00, 2.60, 1.00, NULL, '2026-05-27 16:34:59', '2026-05-27 16:34:59'),
(391, 'Telur Iris', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 90.00, 6.30, 7.00, 0.40, 0.00, 1.00, NULL, '2026-05-27 16:35:44', '2026-05-27 16:35:44'),
(392, 'Melon', 'Buah', 'gram', 100.00, NULL, 0.00, 90.00, 0.54, 0.14, 8.00, 0.90, 1.00, NULL, '2026-05-27 16:36:26', '2026-05-27 16:36:26'),
(393, 'Ayam Goreng Bawang Putih', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 260.00, 22.00, 16.00, 4.00, 0.50, 1.00, NULL, '2026-05-27 16:38:19', '2026-05-27 16:38:19'),
(394, 'Tumis Labu Siam', 'Sayuran', 'gram', 100.00, NULL, 0.00, 50.00, 0.80, 3.50, 4.50, 1.70, 1.00, NULL, '2026-05-27 16:42:20', '2026-05-27 16:42:20'),
(395, 'Kerupuk Udang Kemasan', 'Lainnya', 'gram', 100.00, NULL, 0.00, 520.00, 2.00, 28.00, 58.00, 0.50, 1.00, NULL, '2026-05-27 16:44:38', '2026-05-27 16:44:38'),
(396, 'Nugget Ayam', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 270.00, 12.00, 17.00, 14.00, 1.00, 1.00, NULL, '2026-05-27 16:45:27', '2026-05-27 16:45:27'),
(397, 'Tahu Saos Bangkok', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 180.00, 8.00, 10.00, 16.00, 1.50, 1.00, NULL, '2026-05-27 16:46:18', '2026-05-27 16:46:18'),
(398, 'Oseng Tempe', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 160.00, 10.00, 8.00, 12.00, 4.00, 1.00, NULL, '2026-05-27 16:47:15', '2026-05-27 16:47:15'),
(399, 'Tumis Labu Wortel', 'Sayuran', 'gram', 100.00, NULL, 0.00, 55.00, 0.90, 3.50, 5.50, 2.00, 1.00, NULL, '2026-05-27 16:48:08', '2026-05-27 16:48:08'),
(400, 'Telur Balado', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 140.00, 6.30, 11.00, 2.50, 0.60, 1.00, NULL, '2026-05-27 16:49:07', '2026-05-27 16:49:07'),
(401, 'Sate Ayam', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 380.00, 28.00, 22.00, 15.00, 2.00, 1.00, NULL, '2026-05-27 16:49:58', '2026-05-27 16:49:58'),
(402, 'Nasi Kuning Tanpa Santan', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 200.00, 4.00, 0.50, 45.00, 0.60, 1.00, NULL, '2026-05-27 16:50:51', '2026-05-27 16:50:51'),
(403, 'Telur Ceplok', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 90.00, 6.30, 7.50, 0.40, 0.00, 1.00, NULL, '2026-05-27 16:52:04', '2026-05-27 16:52:04'),
(404, 'Strawberry', 'Buah', 'gram', 100.00, NULL, 0.00, 32.00, 0.67, 0.30, 7.70, 2.00, 1.00, NULL, '2026-05-27 16:53:26', '2026-05-27 16:53:26'),
(405, 'Potato Wedges', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 240.00, 3.00, 13.00, 28.00, 2.50, 1.00, NULL, '2026-05-27 16:54:29', '2026-05-27 16:54:29'),
(406, 'Dimsum Mentai', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 360.00, 16.00, 24.00, 18.00, 0.80, 1.00, NULL, '2026-05-27 16:55:17', '2026-05-27 16:55:17'),
(407, 'Telur Kukus', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 75.00, 6.30, 5.00, 0.40, 0.00, 1.00, NULL, '2026-05-27 16:56:15', '2026-05-27 16:56:15'),
(408, 'Pakcoy Garlic', 'Sayuran', 'gram', 100.00, NULL, 0.00, 40.00, 1.50, 2.50, 2.50, 1.00, 1.00, NULL, '2026-05-27 16:57:11', '2026-05-27 16:57:11'),
(409, 'Tahu Crispy', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 250.00, 8.00, 15.00, 20.00, 0.00, 1.00, NULL, '2026-05-27 16:58:02', '2026-05-27 16:58:02'),
(410, 'Rendang Ayam Baby Potato', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 350.00, 20.00, 22.00, 20.00, 2.00, 1.00, NULL, '2026-05-27 16:59:28', '2026-05-27 16:59:28'),
(411, 'Keripik Tempe', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 480.00, 12.00, 30.00, 40.00, 3.00, 1.00, NULL, '2026-05-27 17:00:19', '2026-05-27 17:00:19'),
(412, 'Rolade Telur', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 80.00, 7.00, 4.00, 2.00, 0.00, 1.00, NULL, '2026-05-27 17:01:18', '2026-05-27 17:01:18'),
(413, 'Lele Crispy', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 280.00, 18.00, 15.00, 15.00, 0.00, 1.00, NULL, '2026-05-27 17:02:03', '2026-05-27 17:02:03'),
(414, 'Tumis Baso', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 180.00, 12.00, 10.00, 8.00, 0.00, 1.00, NULL, '2026-05-27 17:02:55', '2026-05-27 17:02:55'),
(415, 'Ayam Goreng Lengkuas', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 280.00, 20.00, 18.00, 8.00, 0.00, 1.00, NULL, '2026-05-27 17:03:57', '2026-05-27 17:03:57'),
(416, 'Tahu Oseng', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 120.00, 8.00, 6.00, 5.00, 1.00, 1.00, NULL, '2026-05-27 17:04:43', '2026-05-27 17:04:43'),
(417, 'Chiken Steak', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 200.00, 35.00, 4.00, 2.00, 0.00, 1.00, NULL, '2026-05-27 17:07:13', '2026-05-27 17:07:13'),
(418, 'Ayam Goreng', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 250.00, 18.00, 15.00, 5.00, 0.00, 1.00, NULL, '2026-05-27 17:08:33', '2026-05-27 17:08:33'),
(419, 'Kimbab', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 350.00, 12.00, 10.00, 50.00, 3.00, 1.00, NULL, '2026-05-27 17:09:42', '2026-05-27 17:09:42'),
(420, 'Salad Sayur', 'Sayuran', 'gram', 100.00, NULL, 0.00, 50.00, 2.00, 0.50, 10.00, 4.00, 1.00, NULL, '2026-05-27 17:10:40', '2026-05-27 17:10:40'),
(421, 'Edamame', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 120.00, 11.00, 5.00, 9.00, 5.00, 1.00, NULL, '2026-05-27 17:11:18', '2026-05-27 17:11:18'),
(422, 'Telur Dadar', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 150.00, 12.00, 10.00, 1.00, 0.00, 1.00, NULL, '2026-05-27 17:19:37', '2026-05-27 17:19:37'),
(423, 'Pepes Ayam', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 180.00, 20.00, 8.00, 3.00, 0.00, 1.00, NULL, '2026-05-27 17:20:33', '2026-05-27 17:20:33'),
(424, 'Tempe Mendoan', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 120.00, 5.00, 7.00, 8.00, 0.00, 1.00, NULL, '2026-05-27 17:21:17', '2026-05-27 17:21:17'),
(425, 'Lontong', 'Karbohidrat', 'gram', 100.00, NULL, 0.00, 130.00, 2.00, 0.20, 28.00, 0.50, 1.00, NULL, '2026-05-27 17:22:06', '2026-05-27 17:22:06'),
(426, 'Bumbu Kacang', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 100.00, 3.00, 8.00, 5.00, 1.00, 1.00, NULL, '2026-05-27 17:23:10', '2026-05-27 17:23:10'),
(427, 'Keju Slice', 'Lainnya', 'gram', 100.00, NULL, 0.00, 50.00, 2.00, 4.00, 1.00, 0.00, 1.00, NULL, '2026-05-27 17:24:46', '2026-05-27 17:24:46'),
(428, 'Patty Ayam', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 150.00, 18.00, 6.00, 1.00, 0.00, 1.00, NULL, '2026-05-27 17:25:42', '2026-05-27 17:25:42'),
(429, 'Chiken Katsu', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 450.00, 25.00, 25.00, 25.00, 0.00, 1.00, NULL, '2026-05-27 17:26:43', '2026-05-27 17:26:43'),
(430, 'Wortel Kentang Curry', 'Sayuran', 'gram', 100.00, NULL, 0.00, 200.00, 2.00, 10.00, 25.00, 4.00, 1.00, NULL, '2026-05-27 17:27:37', '2026-05-27 17:27:37'),
(431, 'Kering Tempe Daun Jeruk', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 150.00, 6.00, 8.00, 12.00, 2.00, 1.00, NULL, '2026-05-27 17:29:22', '2026-05-27 17:29:22'),
(432, 'Semur Telur', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 160.00, 13.00, 10.00, 8.00, 0.00, 1.00, NULL, '2026-05-27 17:30:02', '2026-05-27 17:30:02'),
(433, 'Ekado Telur Puyuh', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 100.00, 5.00, 7.00, 4.00, 0.00, 1.00, NULL, '2026-05-27 17:30:47', '2026-05-27 17:30:47'),
(434, 'Miso Sop', 'Lainnya', 'gram', 100.00, NULL, 0.00, 40.00, 3.00, 1.00, 5.00, 0.00, 1.00, NULL, '2026-05-27 17:31:29', '2026-05-27 17:31:29'),
(435, 'Salad Hokben', 'Sayuran', 'gram', 100.00, NULL, 0.00, 60.00, 1.00, 0.00, 12.00, 1.50, 1.00, NULL, '2026-05-27 17:32:13', '2026-05-27 17:32:13'),
(436, 'Chiken Bulgogi', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 250.00, 25.00, 10.00, 15.00, 0.00, 1.00, NULL, '2026-05-27 17:32:59', '2026-05-27 17:32:59'),
(437, 'Telur Ceplok Saus Singapur', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 250.00, 13.00, 18.00, 12.00, 0.00, 1.00, NULL, '2026-05-27 17:34:02', '2026-05-27 17:34:02'),
(438, 'Beef Slice Teriaki', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 250.00, 18.00, 18.00, 10.00, 0.00, 1.00, NULL, '2026-05-27 17:34:51', '2026-05-27 17:34:51'),
(439, 'Tempe Crispy', 'Protein Nabati', 'gram', 100.00, NULL, 0.00, 200.00, 6.00, 14.00, 15.00, 1.00, 1.00, NULL, '2026-05-27 17:36:06', '2026-05-27 17:36:06'),
(440, 'Tumis Sawi Wortel', 'Sayuran', 'gram', 100.00, NULL, 0.00, 60.00, 2.00, 3.00, 7.00, 3.00, 1.00, NULL, '2026-05-27 17:36:48', '2026-05-27 17:36:48'),
(441, 'Chiken Cheese Ball Crumble', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 110.00, 5.00, 8.00, 5.00, 0.00, 1.00, NULL, '2026-05-27 17:37:48', '2026-05-27 17:37:48'),
(442, 'Dorry Crispy', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 350.00, 20.00, 18.00, 20.00, 0.00, 1.00, NULL, '2026-05-27 17:38:41', '2026-05-27 17:38:41'),
(443, 'Susu Diamond', 'Lainnya', 'gram', 100.00, NULL, 0.00, 120.00, 6.00, 6.00, 9.00, 0.00, 1.00, NULL, '2026-05-27 17:40:11', '2026-05-27 17:40:11'),
(444, 'Telur Bumbu Bali', 'Protein Hewani', 'gram', 100.00, NULL, 0.00, 220.00, 13.00, 15.00, 8.00, 0.00, 1.00, NULL, '2026-05-27 17:48:35', '2026-05-27 17:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kitchens`
--

CREATE TABLE `kitchens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kitchen_name` varchar(255) NOT NULL,
  `location_address` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `head_of_kitchen_name` varchar(255) DEFAULT NULL,
  `default_buffer_count` int(11) NOT NULL DEFAULT 0,
  `default_sample_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kitchens`
--

INSERT INTO `kitchens` (`id`, `kitchen_name`, `location_address`, `capacity`, `head_of_kitchen_name`, `default_buffer_count`, `default_sample_count`, `created_at`, `updated_at`) VALUES
(1, 'Central Kitchen Jakarta', 'Jl. Raya Bogor No. 123, Jakarta Timur', NULL, NULL, 0, 0, '2026-04-06 08:14:56', '2026-04-06 08:14:56'),
(2, 'Kitchen Satellite Bekasi', 'Jl. Ahmad Yani No. 45, Bekasi Barat', NULL, NULL, 0, 0, '2026-04-06 08:14:56', '2026-04-06 08:14:56'),
(3, 'SPPG HAURPANGGUNG 2', 'Jl. Guntur sari, haurpanggung, Kec. Tarogong kidul, Kab. Garut Jawa Barat (LEC GARUT)', 0, 'Kikie Swandi Lase, S.P.', 2, 2, '2026-04-06 20:12:34', '2026-04-09 15:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `master_menus`
--

CREATE TABLE `master_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kitchen_id` bigint(20) UNSIGNED DEFAULT NULL,
  `menu_name` varchar(255) NOT NULL,
  `target_group` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`target_group`)),
  `cooking_instructions` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_menus`
--

INSERT INTO `master_menus` (`id`, `kitchen_id`, `menu_name`, `target_group`, `cooking_instructions`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 3, 'Nasi Briyani Ayam Merah', '[\"SD\",\"SMP\",\"SMA\"]', NULL, 2, '2026-05-27 15:31:17', '2026-05-27 15:31:17'),
(5, 3, 'Nasi putih Telur Fuyunghai', '[\"SD\",\"SMP\",\"SMA\"]', NULL, 2, '2026-05-27 17:43:14', '2026-05-27 17:43:14'),
(6, 3, 'menu keringan 4 feb', '[\"SD\",\"SMP\",\"SMA\"]', NULL, 2, '2026-05-27 17:44:29', '2026-05-27 17:44:29'),
(7, 3, 'nasi goreng merah', '[\"SD\",\"SMP\",\"SMA\"]', NULL, 2, '2026-05-27 17:46:32', '2026-05-27 17:46:32'),
(8, 3, 'nasi uduk telor bali', '[\"SD\",\"SMP\",\"SMA\"]', NULL, 2, '2026-05-27 17:50:31', '2026-05-27 17:50:31'),
(9, 3, 'menu basahan 6 feb', '[\"SD\",\"SMP\",\"SMA\"]', NULL, 2, '2026-05-27 17:52:45', '2026-05-27 17:52:45'),
(10, 3, 'menu keringan 6 feb', '[\"SD\",\"SMP\",\"SMA\"]', NULL, 2, '2026-05-27 17:54:29', '2026-05-27 17:54:29'),
(11, 3, 'menu keringan 23-25 feb', '[\"SD\",\"SMP\",\"SMA\"]', NULL, 2, '2026-05-27 17:57:16', '2026-05-27 17:57:16'),
(12, 3, 'menu keringan 26 feb', '[\"SD\",\"SMP\",\"SMA\"]', NULL, 2, '2026-05-27 17:58:57', '2026-05-27 17:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `master_menu_items`
--

CREATE TABLE `master_menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_menu_id` bigint(20) UNSIGNED NOT NULL,
  `food_item_id` bigint(20) UNSIGNED NOT NULL,
  `portion_name` varchar(255) NOT NULL,
  `weight_small` decimal(10,2) NOT NULL DEFAULT 0.00,
  `weight_large` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unit_name` varchar(255) NOT NULL DEFAULT 'gram',
  `unit_quantity` decimal(10,2) NOT NULL DEFAULT 1.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_menu_items`
--

INSERT INTO `master_menu_items` (`id`, `master_menu_id`, `food_item_id`, `portion_name`, `weight_small`, `weight_large`, `unit_name`, `unit_quantity`, `created_at`, `updated_at`) VALUES
(20,  4,  306, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 15:38:35', '2026-05-27 15:38:35'),
(21,  4,  307, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 15:38:35', '2026-05-27 15:38:35'),
(22,  4,  308, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 15:38:35', '2026-05-27 15:38:35'),
(23,  4,  309, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 15:38:35', '2026-05-27 15:38:35'),
(24,  4,  310, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 15:38:35', '2026-05-27 15:38:35'),
(25,  5,  311, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 17:43:14', '2026-05-27 17:43:14'),
(26,  5,  312, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 17:43:14', '2026-05-27 17:43:14'),
(27,  5,  313, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 17:43:14', '2026-05-27 17:43:14'),
(28,  5,  314, 'Protein Nabati',  15.00,  20.00, 'gram',  1.00, '2026-05-27 17:43:14', '2026-05-27 17:43:14'),
(29,  5,  315, 'Buah',  100.00,  137.00, 'gram',  1.00, '2026-05-27 17:43:14', '2026-05-27 17:43:14'),
(30,  6,  316, 'Lainnya',  100.00,  137.00, 'gram',  1.00, '2026-05-27 17:44:29', '2026-05-27 17:44:29'),
(31,  6,  317, 'Lainnya',  100.00,  137.00, 'gram',  1.00, '2026-05-27 17:44:29', '2026-05-27 17:44:29'),
(32,  6,  376, 'Buah',  100.00,  137.00, 'gram',  1.00, '2026-05-27 17:44:29', '2026-05-27 17:44:29'),
(33,  7,  318, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 17:46:32', '2026-05-27 17:46:32'),
(34,  7,  320, 'Protein Hewani',  40.00,  45.00, 'gram',  1.00, '2026-05-27 17:46:32', '2026-05-27 17:46:32'),
(35,  7,  398, 'Protein Nabati',  35.00,  40.00, 'gram',  1.00, '2026-05-27 17:46:32', '2026-05-27 17:46:32'),
(36,  7,  321, 'Sayuran',  15.00,  15.00, 'gram',  1.00, '2026-05-27 17:46:32', '2026-05-27 17:46:32'),
(37, 7, 149, 'Buah', 100.00, 137.00, 'gram', 1.00, '2026-05-27 17:46:32', '2026-05-27 17:46:32'),
(38,  8,  322, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 17:50:31', '2026-05-27 17:50:31'),
(39,  8,  444, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 17:50:31', '2026-05-27 17:50:31'),
(40,  8,  325, 'Protein Nabati',  45.00,  45.00, 'gram',  1.00, '2026-05-27 17:50:31', '2026-05-27 17:50:31'),
(41,  8,  326, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 17:50:31', '2026-05-27 17:50:31'),
(42,  8,  324, 'Buah',  15.00,  20.00, 'gram',  1.00, '2026-05-27 17:50:31', '2026-05-27 17:50:31'),
(43,  9,  311, 'Karbohidrat',  100.00,  150.00, 'gram',  1.00, '2026-05-27 17:52:45', '2026-05-27 17:52:45'),
(44,  9,  378, 'Sayuran',  35.00,  40.00, 'gram',  1.00, '2026-05-27 17:52:45', '2026-05-27 17:52:45'),
(45, 9, 9, 'Protein Hewani', 100.00, 100.00, 'gram', 1.00, '2026-05-27 17:52:45', '2026-05-27 17:52:45'),
(46,  9,  329, 'Protein Nabati',  15.00,  20.00, 'gram',  1.00, '2026-05-27 17:52:45', '2026-05-27 17:52:45'),
(47,  9,  328, 'Buah',  75.00,  75.00, 'gram',  1.00, '2026-05-27 17:52:45', '2026-05-27 17:52:45'),
(48,  10,  330, 'Karbohidrat',  35.00,  35.00, 'gram',  1.00, '2026-05-27 17:54:29', '2026-05-27 17:54:29'),
(49,  10,  332, 'Lainnya',  25.00,  25.00, 'gram',  1.00, '2026-05-27 17:54:29', '2026-05-27 17:54:29'),
(50,  10,  331, 'Lainnya',  30.00,  30.00, 'gram',  1.00, '2026-05-27 17:54:29', '2026-05-27 17:54:29'),
(51,  10,  333, 'Lainnya',  125.00,  125.00, 'gram',  1.00, '2026-05-27 17:54:29', '2026-05-27 17:54:29'),
(52,  10,  324, 'Buah',  25.00,  30.00, 'gram',  1.00, '2026-05-27 17:54:29', '2026-05-27 17:54:29'),
(53,  11,  337, 'Karbohidrat',  75.00,  75.00, 'gram',  1.00, '2026-05-27 17:57:16', '2026-05-27 17:57:16'),
(54,  11,  336, 'Karbohidrat',  75.00,  75.00, 'gram',  1.00, '2026-05-27 17:57:16', '2026-05-27 17:57:16'),
(55,  11,  335, 'Lainnya',  250.00,  375.00, 'gram',  1.00, '2026-05-27 17:57:16', '2026-05-27 17:57:16'),
(56,  11,  328, 'Buah',  30.00,  30.00, 'gram',  1.00, '2026-05-27 17:57:16', '2026-05-27 17:57:16'),
(57,  11,  352, 'Protein Hewani',  70.00,  70.00, 'gram',  1.00, '2026-05-27 17:57:16', '2026-05-27 17:57:16'),
(58,  12,  343, 'Karbohidrat',  65.00,  65.00, 'gram',  1.00, '2026-05-27 17:58:57', '2026-05-27 17:58:57'),
(59,  12,  341, 'Protein Hewani',  100.00,  100.00, 'gram',  1.00, '2026-05-27 17:58:57', '2026-05-27 17:58:57'),
(60,  12,  342, 'Protein Nabati',  30.00,  30.00, 'gram',  1.00, '2026-05-27 17:58:57', '2026-05-27 17:58:57'),
(61,  12,  344, 'Buah',  75.00,  75.00, 'gram',  1.00, '2026-05-27 17:58:57', '2026-05-27 17:58:57');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_04_05_153840_create_kitchens_table', 1),
(5, '2026_04_05_153841_create_food_items_table', 1),
(6, '2026_04_05_153841_create_schools_table', 1),
(7, '2026_04_05_153842_create_food_conversions_table', 1),
(8, '2026_04_05_153842_create_master_menus_table', 1),
(9, '2026_04_05_153843_create_daily_menus_table', 1),
(10, '2026_04_05_153843_create_master_menu_items_table', 1),
(11, '2026_04_05_153844_create_daily_menu_items_table', 1),
(12, '2026_04_05_153845_create_portion_configs_table', 1),
(13, '2026_04_05_153846_create_student_profiles_table', 1),
(14, '2026_04_05_180247_add_indexes_to_schools_table', 1),
(15, '2026_04_05_182459_add_unit_to_food_items_table', 1),
(16, '2026_04_05_185426_add_urt_fields_to_food_items_table', 1),
(17, '2026_04_05_234236_change_target_group_to_json_in_master_menus_table', 1),
(18, '2026_04_06_005748_add_buffer_sampling_settings_to_schools_and_kitchens', 1),
(19, '2026_04_06_012001_add_kitchen_id_to_menus_table', 1),
(20, '2026_04_06_013454_fix_kitchen_table_columns', 1),
(21, '2026_04_06_014848_add_cooking_instructions_to_master_menus', 1),
(22, '2026_04_06_014850_create_audit_logs_table', 1),
(23, '2026_04_09_152348_add_head_of_kitchen_to_kitchens_table', 1),
(24, '2026_05_27_000000_add_fiber_g_to_food_items_table', 2),
(25, '2026_05_27_000001_add_meal_fiber_to_portion_configs_table', 2),
(26, '2026_05_27_000002_fix_null_kitchen_id_in_daily_menus_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portion_configs`
--

CREATE TABLE `portion_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `multiplier` decimal(5,2) NOT NULL,
  `meal_energy` decimal(10,2) NOT NULL,
  `meal_protein` decimal(10,2) NOT NULL,
  `meal_fat` decimal(10,2) NOT NULL,
  `meal_carbs` decimal(10,2) NOT NULL,
  `meal_fiber` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portion_configs`
--

INSERT INTO `portion_configs` (`id`, `name`, `multiplier`, `meal_energy`, `meal_protein`, `meal_fat`, `meal_carbs`, `meal_fiber`, `created_at`, `updated_at`) VALUES
(1, 'Porsi Besar', 1.37, 644.50, 18.30, 21.30, 95.30, 7.00, '2026-04-06 08:14:56', '2026-05-27 13:10:15'),
(2, 'Porsi Kecil', 1.00, 469.90, 10.50, 16.00, 72.00, 5.00, '2026-04-06 08:14:56', '2026-05-27 13:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `target_group` varchar(255) NOT NULL,
  `total_beneficiaries` int(11) NOT NULL DEFAULT 0,
  `total_teachers` int(11) NOT NULL DEFAULT 0,
  `large_portion_count` int(11) NOT NULL DEFAULT 0,
  `small_portion_count` int(11) NOT NULL DEFAULT 0,
  `buffer_count` int(11) NOT NULL DEFAULT 0,
  `sample_count` int(11) NOT NULL DEFAULT 0,
  `location_address` text DEFAULT NULL,
  `kitchen_id` bigint(20) UNSIGNED DEFAULT NULL,
  `siswa_laki_laki` int(11) NOT NULL DEFAULT 0,
  `siswa_perempuan` int(11) NOT NULL DEFAULT 0,
  `guru_laki_laki` int(11) NOT NULL DEFAULT 0,
  `guru_perempuan` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `school_name`, `target_group`, `total_beneficiaries`, `total_teachers`, `large_portion_count`, `small_portion_count`, `buffer_count`, `sample_count`, `location_address`, `kitchen_id`, `siswa_laki_laki`, `siswa_perempuan`, `guru_laki_laki`, `guru_perempuan`, `created_at`, `updated_at`) VALUES
(5, 'SDN 2 Haurpanggung', 'SD', 355, 17, 132, 114, 2, 2, 'Jl. Merdeka. Blk. BTPN, Haurpanggung, Kec. Tarogong Kidul, Kab. Garut, Jawa Barat', 3, 173, 182, 3, 14, NULL, NULL),
(6, 'SDN 03 Haurpanggung', 'SD', 230, 19, 158, 93, 2, 2, 'Kp. Pasirmuncang, Haurpanggung, Kec. Tarogong Kidul, Kab. Garut, Jawa Barat', 3, 113, 117, 3, 16, NULL, NULL),
(7, 'SDN 1 Haurpanggung', 'SD', 451, 25, 184, 97, 2, 2, 'Jl. Merdeka Blk. BTPN, Haurpanggung, Kec. Tarogong Kidul, Kab. Garut, Jawa Barat', 3, 214, 237, 10, 15, NULL, NULL),
(8, 'SMP PGRI GARUT', 'SMP', 0, 0, 80, 0, 2, 0, 'Jl.guntur Malati Tarogong Kidul Garut, Kabupaten Garut, Prov. Jawa Barat', 3, 0, 0, 0, 0, NULL, NULL),
(9, 'SMA PGRI GARUT', 'SMA', 75, 25, 85, 0, 2, 0, 'Jalan Guntur Melati 44151 Garut Jawa Barat', 3, 46, 29, 11, 14, NULL, NULL),
(10, 'SMP PLUS HIKMAH', 'SMP', 0, 0, 83, 0, 2, 0, 'Jl. Guntur Sari No.981, Haurpanggung, Tarogong Kidul, Garut, Jawa Barat', 3, 0, 0, 0, 0, NULL, NULL),
(11, 'SMK HIKMAH', 'SMA', 0, 0, 101, 0, 2, 0, 'Jl. Guntursari 981, Kabupaten Garut, Prov. Jawa Barat', 3, 0, 0, 0, 0, NULL, NULL),
(12, 'TK AISYIYAH BA', 'PAUD', 0, 0, 8, 55, 0, 2, NULL, 3, 0, 0, 0, 0, NULL, NULL),
(13, 'TK TADIKA ANTARES', 'PAUD', 0, 0, 5, 14, 0, 2, 'Jl. Guntursari No. 3 Haurpanggung, Kab. Garut', 3, 0, 0, 0, 0, NULL, NULL),
(14, 'RA MIFTAHUL KHOER', 'PAUD', 25, 5, 5, 25, 0, 2, NULL, 3, 14, 11, 0, 5, NULL, NULL),
(15, 'KOBER AT - THOHIRIN', 'PAUD', 25, 4, 6, 25, 0, 2, NULL, 3, 11, 14, 0, 4, NULL, NULL),
(16, 'KOBER - TK ASH SHOLIHIN', 'PAUD', 66, 10, 10, 66, 0, 4, NULL, 3, 34, 32, 1, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fQBcMzqTjuHIY19nlGgwe6KmWZi83LZvTivudcQZ', 2, '172.69.176.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZGRESzVpOHlBcmR5NjV0b2RSVkJGOWJNYjBxcWRzcDEweXZBckEzRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NzM6Imh0dHBzOi8vbnV0cml6aS5za2FsYWRlcy5iaXouaWQvYXVkaXQvZXhwb3J0P2RhdGU9MjAyNi0wMi0wMiZraXRjaGVuX2lkPTMiO3M6NToicm91dGUiO3M6MTI6ImF1ZGl0LmV4cG9ydCI7fX0=', 1779907395);

-- --------------------------------------------------------

--
-- Table structure for table `student_profiles`
--

CREATE TABLE `student_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `allergens` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'NUTRITIONIST',
  `kitchen_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `title`, `password`, `role`, `kitchen_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Test Administrator', NULL, '$2y$12$xwEwAymJ47TmyyQHrQlvB.D8BhSYVI6ra4ZBaOaE2D/RdjWTqkN7W', 'ADMIN', 1, NULL, '2026-04-06 08:14:59', '2026-04-06 08:14:59'),
(2, 'anissa', 'Anissa', 'SKM', '$2y$12$lP6AKzjD94.mZYP6AA2QXOsmjG8OInnxMBodRtm1xgjQUSUYuWm5S', 'NUTRITIONIST', 3, 'B2oArwlhZSMx1Exb2qgmhUiEKUHqueBvDIr5VfxbH6LX91O6iwszHDbu33Yf', '2026-04-06 20:13:18', '2026-04-06 20:13:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `audit_logs_kitchen_id_audit_date_unique` (`kitchen_id`,`audit_date`),
  ADD KEY `audit_logs_audited_by_foreign` (`audited_by`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `daily_menus`
--
ALTER TABLE `daily_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_menus_school_id_foreign` (`school_id`),
  ADD KEY `daily_menus_master_menu_id_foreign` (`master_menu_id`),
  ADD KEY `daily_menus_created_by_foreign` (`created_by`),
  ADD KEY `daily_menus_kitchen_id_foreign` (`kitchen_id`);

--
-- Indexes for table `daily_menu_items`
--
ALTER TABLE `daily_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_menu_items_daily_menu_id_foreign` (`daily_menu_id`),
  ADD KEY `daily_menu_items_food_item_id_foreign` (`food_item_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food_conversions`
--
ALTER TABLE `food_conversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_conversions_food_item_id_foreign` (`food_item_id`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kitchens`
--
ALTER TABLE `kitchens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_menus`
--
ALTER TABLE `master_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_menus_created_by_foreign` (`created_by`),
  ADD KEY `master_menus_kitchen_id_foreign` (`kitchen_id`);

--
-- Indexes for table `master_menu_items`
--
ALTER TABLE `master_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_menu_items_master_menu_id_foreign` (`master_menu_id`),
  ADD KEY `master_menu_items_food_item_id_foreign` (`food_item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `portion_configs`
--
ALTER TABLE `portion_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schools_school_name_index` (`school_name`),
  ADD KEY `schools_target_group_index` (`target_group`),
  ADD KEY `schools_kitchen_id_index` (`kitchen_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_profiles_school_id_foreign` (`school_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `daily_menus`
--
ALTER TABLE `daily_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `daily_menu_items`
--
ALTER TABLE `daily_menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_conversions`
--
ALTER TABLE `food_conversions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kitchens`
--
ALTER TABLE `kitchens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_menus`
--
ALTER TABLE `master_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `master_menu_items`
--
ALTER TABLE `master_menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `portion_configs`
--
ALTER TABLE `portion_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student_profiles`
--
ALTER TABLE `student_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_audited_by_foreign` FOREIGN KEY (`audited_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `audit_logs_kitchen_id_foreign` FOREIGN KEY (`kitchen_id`) REFERENCES `kitchens` (`id`);

--
-- Constraints for table `daily_menus`
--
ALTER TABLE `daily_menus`
  ADD CONSTRAINT `daily_menus_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_menus_kitchen_id_foreign` FOREIGN KEY (`kitchen_id`) REFERENCES `kitchens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_menus_master_menu_id_foreign` FOREIGN KEY (`master_menu_id`) REFERENCES `master_menus` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `daily_menus_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `daily_menu_items`
--
ALTER TABLE `daily_menu_items`
  ADD CONSTRAINT `daily_menu_items_daily_menu_id_foreign` FOREIGN KEY (`daily_menu_id`) REFERENCES `daily_menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_menu_items_food_item_id_foreign` FOREIGN KEY (`food_item_id`) REFERENCES `food_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `food_conversions`
--
ALTER TABLE `food_conversions`
  ADD CONSTRAINT `food_conversions_food_item_id_foreign` FOREIGN KEY (`food_item_id`) REFERENCES `food_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `master_menus`
--
ALTER TABLE `master_menus`
  ADD CONSTRAINT `master_menus_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `master_menus_kitchen_id_foreign` FOREIGN KEY (`kitchen_id`) REFERENCES `kitchens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `master_menu_items`
--
ALTER TABLE `master_menu_items`
  ADD CONSTRAINT `master_menu_items_food_item_id_foreign` FOREIGN KEY (`food_item_id`) REFERENCES `food_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `master_menu_items_master_menu_id_foreign` FOREIGN KEY (`master_menu_id`) REFERENCES `master_menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD CONSTRAINT `student_profiles_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
