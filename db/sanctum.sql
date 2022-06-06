-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2022 at 03:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanctum`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `getixes`
--

CREATE TABLE `getixes` (
  `id` int(50) NOT NULL,
  `konser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_organizer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_tiket` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kursi` int(50) NOT NULL,
  `harga_tiket` int(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `getixes`
--

INSERT INTO `getixes` (`id`, `konser`, `event_organizer`, `tanggal`, `jumlah_tiket`, `jenis_kursi`, `harga_tiket`, `updated_at`, `created_at`) VALUES
(1, 'akak', 'kjkss', '2022-06-08', 'msl', 11, 11, '2022-06-06 01:50:10', '2022-06-06 01:51:02'),
(2, 'owiwo', 'sksk', '2022-02-02', 'ajka', 2, 2, '2022-06-05 18:51:17', '2022-06-05 18:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(4, 'App\\Models\\User', 1, 'auth_token', 'd695b8cc77f4c55d68d54c03bcd3097666f904dd3d87d0340bc26f0d331de769', '[\"*\"]', '2022-06-05 17:52:09', '2022-06-05 16:41:23', '2022-06-05 17:52:09'),
(5, 'App\\Models\\User', 2, 'auth_token', '10f5e4c3eb0ce60b8b7334a789d669d0f28b9ece705cfd30fb1ef276d90d0d42', '[\"*\"]', NULL, '2022-06-05 17:23:49', '2022-06-05 17:23:49'),
(6, 'App\\Models\\User', 1, 'auth_token', 'd1e7ad4795e7314e43956aa021a534d79329ef8125e9126ae5d7e67b4ff98505', '[\"*\"]', '2022-06-05 18:51:17', '2022-06-05 18:34:00', '2022-06-05 18:51:17'),
(7, 'App\\Models\\User', 3, 'auth_token', '3775fb979077a3aebf0249cf35cb850237c358e7c234978398b030363061dc65', '[\"*\"]', NULL, '2022-06-05 18:36:08', '2022-06-05 18:36:08'),
(8, 'App\\Models\\User', 4, 'auth_token', 'dbfe1dbcba7399a023043cdfab3c76665cb0f918d51cd6fcc4981ad0f3531d5e', '[\"*\"]', NULL, '2022-06-05 18:37:20', '2022-06-05 18:37:20'),
(9, 'App\\Models\\User', 4, 'auth_token', '39535887d29e5c7bfab91e391ce8df45bf8e17e6370c83ed1b400c651caf0084', '[\"*\"]', NULL, '2022-06-05 18:38:14', '2022-06-05 18:38:14'),
(10, 'App\\Models\\User', 4, 'auth_token', '7e6de20d64c57646a015580780901385f628507e0c39e856716c48e3d3d73cfe', '[\"*\"]', NULL, '2022-06-05 18:38:32', '2022-06-05 18:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `jenis` smallint(6) NOT NULL,
  `origin_id` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `destination_id` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `jenis`, `origin_id`, `waktu`, `destination_id`, `nominal`) VALUES
(1, 1, 5, '2022-06-05 22:11:31', 0, 10000),
(2, 2, 5, '2022-06-05 22:11:31', 1, 5000),
(3, 1, 5, '2022-06-05 22:11:31', 0, 10000),
(4, 2, 5, '2022-06-05 22:11:31', 1, 10000),
(5, 1, 14, '2022-06-05 22:11:31', 0, 10000),
(6, 2, 14, '2022-06-05 22:11:31', 3, 5000),
(7, 1, 17, '2022-06-05 22:11:31', 0, 30000),
(8, 2, 17, '2022-06-05 22:11:31', 5, 10000),
(9, 1, 17, '2022-06-05 22:11:31', 0, 100000),
(10, 1, 18, '2022-06-05 22:11:31', 0, 10000),
(11, 1, 20, '2022-06-05 22:11:31', 0, 10000),
(12, 1, 20, '2022-06-05 22:11:31', 0, 10000),
(13, 1, 20, '2022-06-05 22:11:31', 0, 1000000),
(14, 1, 20, '2022-06-05 22:11:31', 0, 1000000),
(15, 1, 20, '2022-06-05 22:11:31', 0, 1),
(16, 1, 20, '2022-06-05 22:11:31', 0, 1),
(17, 2, 20, '2022-06-05 22:11:31', 3, 10000),
(18, 2, 22, '2022-06-05 22:11:31', 3, 10000),
(19, 2, 20, '2022-06-05 22:11:31', 3, 10000),
(20, 2, 20, '2022-06-05 22:11:31', 3, 10000),
(21, 2, 22, '2022-06-05 22:11:31', 28, 10000),
(22, 2, 24, '2022-06-05 22:11:31', 32, 1000),
(23, 2, 24, '2022-06-05 22:11:31', 32, 10000),
(24, 2, 24, '2022-06-05 22:11:31', 32, 10000),
(25, 2, 22, '2022-06-05 22:11:31', 28, 1000),
(26, 2, 22, '2022-06-05 22:11:31', 28, 10000),
(27, 2, 34, '2022-06-05 22:11:31', 33, 10),
(28, 2, 34, '2022-06-05 22:11:31', 33, 10),
(29, 2, 34, '2022-06-05 22:11:31', 33, 100),
(30, 2, 34, '2022-06-05 22:11:31', 33, 100),
(31, 2, 34, '2022-06-05 22:11:31', 33, 10),
(32, 2, 34, '2022-06-05 22:11:31', 33, 10),
(33, 2, 34, '2022-06-05 22:11:31', 33, 100),
(34, 2, 17, '2022-06-05 22:11:31', 15, 10000),
(35, 2, 24, '2022-06-05 22:11:31', 32, 10000),
(36, 2, 22, '2022-06-05 22:11:31', 28, 10000),
(37, 2, 34, '2022-06-05 22:11:31', 33, 100),
(38, 2, 22, '2022-06-05 22:11:31', 28, 1000),
(39, 2, 22, '2022-06-05 22:11:31', 28, 100),
(40, 2, 22, '2022-06-05 22:11:31', 28, 100),
(41, 2, 36, '2022-06-05 22:11:31', 36, 1000),
(42, 2, 36, '2022-06-05 22:11:31', 37, 1000),
(43, 2, 36, '2022-06-05 22:11:31', 37, 1000),
(44, 2, 36, '2022-06-05 22:11:31', 37, 1000),
(45, 2, 34, '2022-06-05 22:11:31', 33, 10),
(46, 2, 34, '2022-06-05 22:11:31', 33, 10),
(47, 2, 34, '2022-06-05 22:11:31', 33, 1000),
(48, 2, 33, '2022-06-05 22:11:31', 33, 1000),
(49, 2, 40, '2022-06-05 22:11:31', 41, 10000),
(50, 2, 40, '2022-06-05 22:11:31', 41, 10000),
(51, 2, 40, '2022-06-05 22:11:31', 41, 10000),
(52, 2, 40, '2022-06-05 22:11:31', 41, 10000),
(53, 2, 38, '2022-06-05 22:11:31', 39, 1000),
(54, 2, 38, '2022-06-05 22:11:31', 39, 1000),
(55, 2, 38, '2022-06-05 22:11:31', 39, 1000),
(56, 2, 25, '2022-06-05 22:11:31', 26, 120000),
(57, 2, 25, '2022-06-05 22:11:31', 26, 15000),
(58, 2, 44, '2022-06-05 22:11:31', 50, 5000),
(59, 2, 17, '2022-06-05 22:11:31', 3, 10000),
(60, 2, 22, '2022-06-05 22:11:31', 28, 5000),
(61, 2, 22, '2022-06-05 22:11:31', 28, 5000),
(62, 2, 40, '2022-06-05 22:11:31', 41, 10000),
(63, 2, 34, '2022-06-05 22:11:31', 53, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '2',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saldo` bigint(20) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `email`, `email_verified_at`, `password`, `telepon`, `saldo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '2', 'khafidh', 'kha@gmail.com', NULL, '$2y$10$HCgze2sR3BYggltRnmCjz.QtslZi9txceVZ34usb234jLviKPbWJm', '', 0, NULL, '2022-06-05 16:26:35', '2022-06-05 16:26:35'),
(2, '3', 'kemas', 'kemas@gmail.com', NULL, '$2y$10$FO18iVpUIUE96RMOxhzKcejymm/qyNaJor2HbxV6F/3pAUsw2lwlu', '0999999999', 30000, NULL, '2022-06-05 17:23:49', '2022-06-05 17:23:49'),
(3, '3', 'putra', 'putra@gmail.com', NULL, '$2y$10$yM4t7N3exvXvFr5oqZFs1ORIiy6lJHDo7xtlf9zIyvqt/ni/dWFiK', '0999999999', 30000, NULL, '2022-06-05 18:36:08', '2022-06-05 18:36:08'),
(4, '3', 'putra', 'lolo@gmail.com', NULL, '$2y$10$95aA/xWa7CjD30wD/Wi6ieWKTIp2jaGIky3U9GbCnPPtUI.SCPg1S', '0999999999', 30000, NULL, '2022-06-05 18:37:20', '2022-06-05 18:37:20');

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
-- Indexes for table `getixes`
--
ALTER TABLE `getixes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `getixes`
--
ALTER TABLE `getixes`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migration`
--
ALTER TABLE `migration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
