-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 28, 2024 at 12:51 PM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `symprosys_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` bigint UNSIGNED NOT NULL,
  `loan_id` bigint UNSIGNED DEFAULT NULL,
  `emi` int NOT NULL,
  `monthly_interest` double NOT NULL,
  `last_advance_payment` date NOT NULL,
  `remaining_loan` int NOT NULL,
  `schedual` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `loan_id`, `emi`, `monthly_interest`, `last_advance_payment`, `remaining_loan`, `schedual`, `created_at`, `updated_at`) VALUES
(4, 4, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:46:45', '2024-10-28 06:46:45'),
(5, 5, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:47:13', '2024-10-28 06:47:13'),
(6, 6, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:47:32', '2024-10-28 06:47:32'),
(7, 7, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:48:33', '2024-10-28 06:48:33'),
(8, 8, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:49:33', '2024-10-28 06:49:33'),
(9, 9, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:49:50', '2024-10-28 06:49:50'),
(10, 10, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:50:06', '2024-10-28 06:50:06'),
(11, 11, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:50:47', '2024-10-28 06:50:47'),
(12, 12, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:53:11', '2024-10-28 06:53:11'),
(13, 13, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:56:42', '2024-10-28 06:56:42'),
(14, 14, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:56:52', '2024-10-28 06:56:52'),
(15, 15, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:57:33', '2024-10-28 06:57:33'),
(16, 16, 21, 0.5027661850526, '2024-10-28', 103, '[{\"emi_amount\": \"20.50\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"82.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"61.51\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"41.01\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"20.50\", \"monthly_interst\": \"0.50\"}, {\"emi_amount\": \"20.50\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.50\"}]', '2024-10-28 06:59:14', '2024-10-28 06:59:14'),
(17, 17, 34, 0.66887781481344, '2024-10-28', 102, '[{\"emi_amount\": \"34.00\", \"emi_number\": 1, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"68.00\", \"monthly_interst\": \"0.67\"}, {\"emi_amount\": \"34.00\", \"emi_number\": 2, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"34.00\", \"monthly_interst\": \"0.67\"}, {\"emi_amount\": \"34.00\", \"emi_number\": 3, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"0.67\"}]', '2024-10-28 07:02:02', '2024-10-28 07:02:02'),
(18, 18, 35, 1.4547643448967, '2024-10-28', 104, '[{\"emi_amount\": \"34.79\", \"emi_number\": 1, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"69.58\", \"monthly_interst\": \"1.45\"}, {\"emi_amount\": \"34.79\", \"emi_number\": 2, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"34.79\", \"monthly_interst\": \"1.45\"}, {\"emi_amount\": \"34.79\", \"emi_number\": 3, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"1.45\"}]', '2024-10-28 07:03:00', '2024-10-28 07:03:00'),
(19, 19, 35, 1.4547643448967, '2024-10-28', 104, '[{\"emi_amount\": \"34.79\", \"emi_number\": 1, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"69.58\", \"monthly_interst\": \"1.45\"}, {\"emi_amount\": \"34.79\", \"emi_number\": 2, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"34.79\", \"monthly_interst\": \"1.45\"}, {\"emi_amount\": \"34.79\", \"emi_number\": 3, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"1.45\"}]', '2024-10-28 07:03:44', '2024-10-28 07:03:44'),
(20, 20, 35, 1.4547643448967, '2024-10-28', 104, '[{\"emi_amount\": \"34.79\", \"emi_number\": 1, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"69.58\", \"monthly_interst\": \"1.45\"}, {\"emi_amount\": \"34.79\", \"emi_number\": 2, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"34.79\", \"monthly_interst\": \"1.45\"}, {\"emi_amount\": \"34.79\", \"emi_number\": 3, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"1.45\"}]', '2024-10-28 07:07:06', '2024-10-28 07:07:06'),
(21, 21, 35, 1.4547643448967, '2024-10-28', 104, '[{\"emi_amount\": \"34.79\", \"emi_number\": 1, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"69.58\", \"monthly_interst\": \"1.45\"}, {\"emi_amount\": \"34.79\", \"emi_number\": 2, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"34.79\", \"monthly_interst\": \"1.45\"}, {\"emi_amount\": \"34.79\", \"emi_number\": 3, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"1.45\"}]', '2024-10-28 07:07:23', '2024-10-28 07:07:23'),
(22, 22, 35, 1.4547643448967, '2024-10-28', 104, '[{\"emi_amount\": \"34.79\", \"emi_number\": 1, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"69.58\", \"monthly_interst\": \"1.45\"}, {\"emi_amount\": \"34.79\", \"emi_number\": 2, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"34.79\", \"monthly_interst\": \"1.45\"}, {\"emi_amount\": \"34.79\", \"emi_number\": 3, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"1.45\"}]', '2024-10-28 07:08:01', '2024-10-28 07:08:01'),
(23, 23, 35, 1.4547643448967, '2024-10-28', 104, '[{\"emi_amount\": \"34.79\", \"emi_number\": 1, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"69.58\", \"monthly_interst\": \"1.45\"}, {\"emi_amount\": \"34.79\", \"emi_number\": 2, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"34.79\", \"monthly_interst\": \"1.45\"}, {\"emi_amount\": \"34.79\", \"emi_number\": 3, \"intrest_rate\": \"26.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"1.45\"}]', '2024-10-28 07:10:05', '2024-10-28 07:10:05'),
(24, 24, 88, 4.5825538966766, '2024-10-28', 1055, '[{\"emi_amount\": \"87.92\", \"emi_number\": 1, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"967.07\", \"monthly_interst\": \"4.58\"}, {\"emi_amount\": \"87.92\", \"emi_number\": 2, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"879.16\", \"monthly_interst\": \"4.58\"}, {\"emi_amount\": \"87.92\", \"emi_number\": 3, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"791.24\", \"monthly_interst\": \"4.58\"}, {\"emi_amount\": \"87.92\", \"emi_number\": 4, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"703.33\", \"monthly_interst\": \"4.58\"}, {\"emi_amount\": \"87.92\", \"emi_number\": 5, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"615.41\", \"monthly_interst\": \"4.58\"}, {\"emi_amount\": \"87.92\", \"emi_number\": 6, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"527.50\", \"monthly_interst\": \"4.58\"}, {\"emi_amount\": \"87.92\", \"emi_number\": 7, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"439.58\", \"monthly_interst\": \"4.58\"}, {\"emi_amount\": \"87.92\", \"emi_number\": 8, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"351.66\", \"monthly_interst\": \"4.58\"}, {\"emi_amount\": \"87.92\", \"emi_number\": 9, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"263.75\", \"monthly_interst\": \"4.58\"}, {\"emi_amount\": \"87.92\", \"emi_number\": 10, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"175.83\", \"monthly_interst\": \"4.58\"}, {\"emi_amount\": \"87.92\", \"emi_number\": 11, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"87.92\", \"monthly_interst\": \"4.58\"}, {\"emi_amount\": \"87.92\", \"emi_number\": 12, \"intrest_rate\": \"10.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"4.58\"}]', '2024-10-28 07:14:45', '2024-10-28 07:14:45'),
(25, 25, 89, 5.5154553450083, '2024-10-28', 1066, '[{\"emi_amount\": \"88.85\", \"emi_number\": 1, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"977.34\", \"monthly_interst\": \"5.52\"}, {\"emi_amount\": \"88.85\", \"emi_number\": 2, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"888.49\", \"monthly_interst\": \"5.52\"}, {\"emi_amount\": \"88.85\", \"emi_number\": 3, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"799.64\", \"monthly_interst\": \"5.52\"}, {\"emi_amount\": \"88.85\", \"emi_number\": 4, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"710.79\", \"monthly_interst\": \"5.52\"}, {\"emi_amount\": \"88.85\", \"emi_number\": 5, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"621.94\", \"monthly_interst\": \"5.52\"}, {\"emi_amount\": \"88.85\", \"emi_number\": 6, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"533.09\", \"monthly_interst\": \"5.52\"}, {\"emi_amount\": \"88.85\", \"emi_number\": 7, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"444.24\", \"monthly_interst\": \"5.52\"}, {\"emi_amount\": \"88.85\", \"emi_number\": 8, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"355.40\", \"monthly_interst\": \"5.52\"}, {\"emi_amount\": \"88.85\", \"emi_number\": 9, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"266.55\", \"monthly_interst\": \"5.52\"}, {\"emi_amount\": \"88.85\", \"emi_number\": 10, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"177.70\", \"monthly_interst\": \"5.52\"}, {\"emi_amount\": \"88.85\", \"emi_number\": 11, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"88.85\", \"monthly_interst\": \"5.52\"}, {\"emi_amount\": \"88.85\", \"emi_number\": 12, \"intrest_rate\": \"12.00\", \"remaining_loan\": \"0.00\", \"monthly_interst\": \"5.52\"}]', '2024-10-28 07:15:23', '2024-10-28 07:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `loan_inquery`
--

CREATE TABLE `loan_inquery` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_amount` int NOT NULL DEFAULT '1',
  `interest_rate` int NOT NULL DEFAULT '1',
  `duration` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_inquery`
--

INSERT INTO `loan_inquery` (`id`, `name`, `email`, `loan_amount`, `interest_rate`, `duration`, `created_at`, `updated_at`) VALUES
(4, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:46:45', '2024-10-28 06:46:45'),
(5, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:47:12', '2024-10-28 06:47:12'),
(6, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:47:32', '2024-10-28 06:47:32'),
(7, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:48:33', '2024-10-28 06:48:33'),
(8, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:49:33', '2024-10-28 06:49:33'),
(9, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:49:50', '2024-10-28 06:49:50'),
(10, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:50:06', '2024-10-28 06:50:06'),
(11, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:50:47', '2024-10-28 06:50:47'),
(12, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:53:11', '2024-10-28 06:53:11'),
(13, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:56:42', '2024-10-28 06:56:42'),
(14, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:56:52', '2024-10-28 06:56:52'),
(15, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:57:33', '2024-10-28 06:57:33'),
(16, 'Bruno Davenport', 'zabewop@mailinator.com', 100, 10, 5, '2024-10-28 06:59:14', '2024-10-28 06:59:14'),
(17, 'Conan Rasmussen', 'bewuhizym@mailinator.com', 100, 12, 3, '2024-10-28 07:02:02', '2024-10-28 07:02:02'),
(18, 'Kylynn Bird', 'bipobyne@mailinator.com', 100, 26, 3, '2024-10-28 07:03:00', '2024-10-28 07:03:00'),
(19, 'Kylynn Bird', 'bipobyne@mailinator.com', 100, 26, 3, '2024-10-28 07:03:44', '2024-10-28 07:03:44'),
(20, 'Kylynn Bird', 'bipobyne@mailinator.com', 100, 26, 3, '2024-10-28 07:07:06', '2024-10-28 07:07:06'),
(21, 'Kylynn Bird', 'bipobyne@mailinator.com', 100, 26, 3, '2024-10-28 07:07:23', '2024-10-28 07:07:23'),
(22, 'Kylynn Bird', 'bipobyne@mailinator.com', 100, 26, 3, '2024-10-28 07:08:01', '2024-10-28 07:08:01'),
(23, 'Kylynn Bird', 'bipobyne@mailinator.com', 100, 26, 3, '2024-10-28 07:10:05', '2024-10-28 07:10:05'),
(24, 'Daniel Vang', 'gilapyz@mailinator.com', 1000, 10, 12, '2024-10-28 07:14:45', '2024-10-28 07:14:45'),
(25, 'Acton Clemons', 'riso@mailinator.com', 1000, 12, 12, '2024-10-28 07:15:23', '2024-10-28 07:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_28_101202_create_loan_inquery_table', 1),
(6, '2024_10_28_111929_create_loan_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_loan_id_foreign` (`loan_id`);

--
-- Indexes for table `loan_inquery`
--
ALTER TABLE `loan_inquery`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `loan_inquery`
--
ALTER TABLE `loan_inquery`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loan_inquery` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
