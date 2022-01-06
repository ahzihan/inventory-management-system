-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 06:20 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `advancesalaries`
--

CREATE TABLE `advancesalaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `advanced_salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advancesalaries`
--

INSERT INTO `advancesalaries` (`id`, `emp_id`, `date`, `advanced_salary`, `created_at`, `updated_at`) VALUES
(2, 2, '2020-12-04', '5000', NULL, NULL),
(5, 8, '2020-12-01', '5000', '2020-12-23 05:28:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `att_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `att_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `att_date`, `att_year`, `attendance`, `edit_date`, `month`, `created_at`, `updated_at`) VALUES
(1, 1, '09/12/20', '2020', 'present', '09_12_20', NULL, NULL, NULL),
(2, 2, '09/12/20', '2020', 'present', '09_12_20', NULL, NULL, '2020-12-09 12:05:17'),
(3, 1, '13/12/20', '2020', 'present', '13_12_20', 'December', '2020-12-13 00:29:00', '2020-12-13 00:29:00'),
(4, 2, '13/12/20', '2020', 'present', '13_12_20', 'December', '2020-12-13 00:29:00', '2020-12-13 00:29:00'),
(5, 4, '13/12/20', '2020', 'present', '13_12_20', 'December', '2020-12-13 00:29:00', '2020-12-13 00:29:00'),
(6, 1, '14/12/20', '2020', 'present', '14_12_20', 'December', '2020-12-14 01:22:16', '2020-12-14 01:22:16'),
(7, 2, '14/12/20', '2020', 'present', '14_12_20', 'December', '2020-12-14 01:22:16', '2020-12-14 01:22:16'),
(8, 4, '14/12/20', '2020', 'present', '14_12_20', 'December', '2020-12-14 01:22:16', '2020-12-14 01:22:16'),
(9, 1, '20/12/20', '2020', 'present', '20_12_20', 'December', '2020-12-20 06:29:21', '2020-12-20 06:29:21'),
(10, 2, '20/12/20', '2020', 'absence', '20_12_20', 'December', '2020-12-20 06:29:21', '2020-12-20 06:29:21'),
(11, 4, '20/12/20', '2020', 'present', '20_12_20', 'December', '2020-12-20 06:29:21', '2020-12-20 06:29:21'),
(12, 2, '23/12/20', '2020', 'present', '23_12_20', 'December', '2020-12-23 00:09:19', '2020-12-23 00:09:19'),
(13, 4, '23/12/20', '2020', 'present', '23_12_20', 'December', '2020-12-23 00:09:19', '2020-12-23 00:09:19'),
(14, 6, '23/12/20', '2020', 'absence', '23_12_20', 'December', '2020-12-23 00:09:19', '2020-12-23 00:09:19'),
(15, 7, '23/12/20', '2020', 'present', '23_12_20', 'December', '2020-12-23 00:09:19', '2020-12-23 00:09:19'),
(16, 8, '23/12/20', '2020', 'present', '23_12_20', 'December', '2020-12-23 00:09:19', '2020-12-23 00:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'Notebook', '2020-12-06 00:37:09', '2020-12-22 23:32:21'),
(5, 'Desktop', '2020-12-06 00:49:46', '2020-12-22 23:32:36'),
(7, 'Camera', '2020-12-06 01:04:35', '2020-12-22 23:32:49'),
(8, 'Printer', '2020-12-06 01:04:56', '2020-12-22 23:33:17'),
(9, 'Photocopier', '2020-12-06 01:05:11', '2020-12-22 23:33:35'),
(10, 'Digital Security', '2020-12-06 01:05:24', '2020-12-22 23:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shoapname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `shoapname`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(6, 'Asikul islam', 'asi9k@gmail.com', '01776328578', 'noakhali sadar', 'Asik computer', 'asik', '455567292112', 'DBBL', 'Noakhali', 'Noakhali', '2020-12-22 23:09:00', '2020-12-22 23:09:00'),
(7, 'Siddikur Rahman', 'siddik@gmail.com', '01610673467', 'Noagaon,rajsahi', 'Vai Vai computers', 'Siddikur rahman', '127543900945', 'Rupali Bank', 'naogaon', 'naogaon', '2020-12-22 23:12:42', '2020-12-22 23:12:42'),
(8, 'Sahinur islam', 'sahin@gmail.com', '01930470759', 'Pabna sadar', 'pabna computer store', 'sahinur islam', '6547895696985', 'Dhaka Bank', 'pabna sadar', 'pabna', '2020-12-22 23:14:34', '2020-12-22 23:14:34'),
(9, 'Shawon islam', 'shawon@yahoo.com', '01610673466', 'Faridpur sadar', 'Digital computer center', 'shawon islam', '87547846', 'Brack Bank', 'faridpur sadar', 'faridpur', '2020-12-22 23:16:46', '2020-12-22 23:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experiance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `photo`, `address`, `experiance`, `salary`, `vacation`, `city`, `created_at`, `updated_at`) VALUES
(2, 'AH Zihan', 'akbarhossain5813@gmail.com', '01610673467', '1608699333_Image.jpg', 'Mohammadpur-1207', '2 year', '25000', '5', 'Dhaka', '2020-12-04 11:34:10', '2020-12-22 22:55:33'),
(4, 'Rafsan Jani Omio', 'omio5@email.com', '01610673467', '1608733559_sdf.jpg', 'Mohammadpur', '1 year', '20000', '5', 'Dhaka', '2020-12-10 10:26:19', '2020-12-23 08:25:59'),
(6, 'Sahriar Hossain', 'sahriar@gmail.com', '0132455876', '1608699706_6en7aJeA.jpg', 'Dhanmondi', 'Fresh', '18000', '0', 'Cumilla', '2020-12-22 23:01:46', '2020-12-22 23:01:46'),
(7, 'Jahanur Islam', 'jahanur@gmail.com', '0912345', '1608699798_122016_bangladesh_pratidin_Biden.jpg', 'Zigatola', 'Fresh', '15000', '2', 'Dinajpur', '2020-12-22 23:03:18', '2020-12-22 23:03:18'),
(8, 'Fakrul Islam', 'fakrul@gmail.com', '015647383', '1608699913_Fakrul_Islam_Tushar.jpg', 'Uttara', '1 year', '19000', '10', 'Noakhali', '2020-12-22 23:05:13', '2020-12-22 23:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `details`, `amount`, `month`, `date`, `year`, `created_at`, `updated_at`) VALUES
(1, 'Buy 2 computer 49000 tk and also 2 pendrive 1000 tk.', '50000', 'December', '2007-12-20', '0000-00-00', '2020-12-07 07:25:40', '2020-12-23 00:01:26'),
(2, '3 laptop 90000, 3 speeker 12000, 5 keyboard 1200.', '103200', 'December', '2007-12-20', '0000-00-00', '2020-12-07 07:29:11', '2020-12-07 07:29:11'),
(3, '5 multi flag 1500 tk', '1500', 'December', '2020-12-07', '0000-00-00', '2020-12-07 07:38:59', '2020-12-07 07:38:59'),
(6, '10 balbe 2800 tk', '2800', 'December', 'December 07', '2020', '2020-12-07 07:58:43', '2020-12-07 07:58:43'),
(7, 'Monitor 5 pice, 14000 tk', '14000', 'December', '06/12/20', '2020', '2020-12-07 08:00:23', '2020-12-07 09:12:43'),
(8, 'Printer 3 ta, 70000 tk, scanner 1 ta 20000 tk.', '90000', 'December', '07/12/20', '2020', '2020-12-07 08:02:15', '2020-12-07 09:11:31'),
(9, 'pc 2 ta, 50000  tk', '50000', 'December', '07/12/20', '2020', '2020-12-07 08:41:09', '2020-12-07 08:41:09'),
(10, '10 ta lequide 1200 tk. 12 ta hand wash 500 tk.', '1700', 'December', '07/12/20', '2020', '2020-12-07 08:43:17', '2020-12-07 09:21:04'),
(11, 'Electricty bill 3000 tk and Net bill 2000 tk.', '5000', 'December', '08/12/20', '2020', '2020-12-08 06:52:27', '2020-12-08 06:52:27'),
(12, '3 pc , 90000 tk', '90000', 'December', '13/11/20', '2020', '2020-12-13 00:27:13', '2020-12-13 00:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_04_123915_create_employees_table', 2),
(5, '2020_12_05_041213_create_customers_table', 3),
(6, '2020_12_05_054338_create_suppliers_table', 4),
(7, '2020_12_05_131849_create_salaries_table', 5),
(8, '2020_12_05_145237_create_salaries_table', 6),
(9, '2020_12_05_152527_create_advanced_salaries_table', 7),
(10, '2020_12_05_152824_create_advancesalaries_table', 8),
(11, '2020_12_06_043134_create_salaries_table', 9),
(12, '2020_12_06_055829_create_categories_table', 10),
(13, '2020_12_06_063603_create_categories_table', 11),
(14, '2020_12_06_093917_create_products_table', 12),
(15, '2020_12_07_122357_create_expenses_table', 13),
(16, '2020_12_08_143038_create_attendances_table', 14),
(17, '2020_12_10_135812_create_settings_table', 15),
(18, '2020_12_20_154520_create_orders_table', 16),
(19, '2020_12_20_154643_create_orderdetails_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unitcost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `qty`, `unitcost`, `total`, `created_at`, `updated_at`) VALUES
(28, 12, 1, '2', '32000', '70400', NULL, NULL),
(29, 12, 2, '3', '45000', '148500', NULL, NULL),
(30, 12, 4, '5', '10000', '55000', NULL, NULL),
(31, 13, 1, '3', '32000', '105600', NULL, NULL),
(32, 13, 2, '1', '45000', '49500', NULL, NULL),
(33, 13, 4, '2', '10000', '22000', NULL, NULL),
(34, 14, 11, '1', '17000', '18700', NULL, NULL),
(35, 14, 6, '1', '3200', '3520', NULL, NULL),
(36, 15, 12, '2', '100000', '220000', NULL, NULL),
(37, 15, 11, '1', '17000', '18700', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_products` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `order_status`, `total_products`, `sub_total`, `vat`, `total`, `payment_status`, `pay`, `due`, `created_at`, `updated_at`) VALUES
(12, 6, '23/12/20', 'success', '10', '249,000.00', '24,900.00', '273,900.00', 'hand_cash', '273900', '00', NULL, NULL),
(13, 7, '23/12/20', 'success', '6', '161,000.00', '16,100.00', '177,100.00', 'hand_cash', '177000', '100', NULL, NULL),
(14, 8, '23/12/20', 'pending', '2', '20,200.00', '2,020.00', '22,220.00', 'hand_cash', '22220', '00', NULL, NULL),
(15, 9, '23/12/20', 'pending', '3', '217,000.00', '21,700.00', '238,700.00', 'hand_cash', '238000', '700', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ahzihan7@gmail.com', '$2y$10$AS.q2laO8L.Znz307gXtcOMx9gwEAP9rUxux4wmu/DyjmMTB581fG', '2020-12-06 09:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sup_id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_garage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `buying_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `cat_id`, `photo`, `sup_id`, `product_code`, `product_garage`, `product_route`, `buy_date`, `expire_date`, `buying_price`, `selling_price`, `created_at`, `updated_at`) VALUES
(1, 'Asus Laptop', 1, '1608703152_download (11).jpg', 3, 'a-234', 'G-1', 'A1', '2020-12-01', '2022-12-06', '30000', '32000', '2020-12-06 06:30:39', '2020-12-22 23:59:12'),
(2, 'Hp pavillion', 1, '1608703210_download (12).jpg', 3, 'h-1230', 'G-1', 's-2', '2020-11-30', '2020-12-06', '40000', '45000', '2020-12-06 06:33:04', '2020-12-23 00:00:10'),
(4, 'Monitor', 5, '1608702150_download (3).jpg', 1, 'S-298', 'One', 's-3', '2020-12-06', '2025-12-06', '8000', '10000', '2020-12-06 09:03:39', '2020-12-22 23:42:30'),
(6, 'Ram 4gb', 5, '1608702252_download (4).jpg', 3, 'P-390', 'A4', 's-1', '2020-12-13', '2024-12-13', '2500', '3200', '2020-12-13 22:31:41', '2020-12-22 23:44:12'),
(7, 'Mouse', 5, '1608702371_download (5).jpg', 3, '123', 'g-2', 's-1', '2020-12-14', '2020-12-14', '280', '350', '2020-12-13 23:26:51', '2020-12-22 23:46:11'),
(8, 'Keyboard', 5, '1608702500_LenovoKeyboard.jpg', 4, 'gku', 'G-1', 's-1', '2020-12-04', '2021-01-09', '350', '500', '2020-12-22 23:48:20', '2020-12-22 23:48:20'),
(9, 'Motherboard', 5, '1608702633_download (6).jpg', 4, 'murktl4i5', 'G-1', 'A1', '2020-12-01', '2020-12-25', '8000', '10000', '2020-12-22 23:50:33', '2020-12-22 23:50:33'),
(10, 'Canon-eos320', 7, '1608702730_download (7).jpg', 4, 'c-78576', 'g-2', 'A1', '2020-11-29', '2021-01-09', '28000', '35000', '2020-12-22 23:52:10', '2020-12-22 23:52:10'),
(11, 'Canon printer', 8, '1608702830_download (8).jpg', 3, 'p-43756', 'Two', 'A1', '2020-11-04', '2021-01-02', '12000', '17000', '2020-12-22 23:53:50', '2020-12-22 23:53:50'),
(12, 'Toshiba', 9, '1608702940_download (9).jpg', 1, 't-7656', 'One', 'A1', '2020-12-02', '2021-03-25', '80000', '100000', '2020-12-22 23:55:40', '2020-12-22 23:55:40'),
(13, 'CC Camera', 10, '1608703035_download (10).jpg', 1, 'B-1230', 'g-2', 'A1', '2020-12-04', '2021-01-08', '3000', '3800', '2020-12-22 23:57:15', '2020-12-22 23:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `salary_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `company_address`, `company_email`, `company_phone`, `company_logo`, `company_city`, `company_zip_code`, `company_country`, `created_at`, `updated_at`) VALUES
(1, 'AH Zihan', 'Mirpur-1', 'ahzihan7@gmail.com', '01776328578', '1607843438_ahzihan.jpg', 'Dhaka', '1216', 'Bangladesh', '2020-12-09 18:00:00', '2020-12-13 01:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shoap` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `type`, `shoap`, `account_holder`, `account_number`, `bank_name`, `branch_name`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Zihan Ahmed', 'akbarhossain5813@gmail.com', '01610673467', 'mirpur-1', 'Whole_Seller', 'Zihan Enterprise', 'Zihan Ahmed', '1275439009', 'Rupali Bank', 'mirpur-1', 'Dhaka', '2020-12-05 00:41:28', '2020-12-22 23:23:21'),
(3, 'Imran hossain', 'ahzihan7@gmail.com', '01116328578', 'Mohammadpur-1207', 'Distributor', 'BD Shop', 'Imran hossain', '1275439009', 'Brack bank', 'Mirpur-1', 'Dhaka', '2020-12-05 01:13:49', '2020-12-22 23:24:35'),
(4, 'Zinat sultana', 'zinzt@gmail.com', '09876540', 'Uttara', 'Brochure', 'Zinat enterprise', 'Zinat sultana', '57968076', 'Sibl', 'uttara', 'uttara', '2020-12-22 23:26:30', '2020-12-22 23:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('super_admin','admin','','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ahzihan', 'ahzihan7@gmail.com', NULL, '$2y$10$ds62FF7Tma6Qj6g7eIRKg.aY4ORaH8MIKz49jfiTltx7cwmMxwisa', 'super_admin', NULL, '2020-12-04 03:34:42', '2020-12-04 03:34:42'),
(2, 'Rafsan Jani Omio', 'omio@gmail.com', '2020-12-12 18:00:00', '25d55ad283aa400af464c76d713c07ad', 'admin', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advancesalaries`
--
ALTER TABLE `advancesalaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `sup_id` (`sup_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `advancesalaries`
--
ALTER TABLE `advancesalaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advancesalaries`
--
ALTER TABLE `advancesalaries`
  ADD CONSTRAINT `advancesalaries_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`sup_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
