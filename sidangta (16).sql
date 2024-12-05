-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 02:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sidangta`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosens`
--

CREATE TABLE `dosens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jadwalproposals`
--

CREATE TABLE `jadwalproposals` (
  `id` bigint(20) NOT NULL,
  `id_proposal` bigint(20) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `id_ruang` bigint(20) NOT NULL,
  `id_mahasiswa` bigint(20) DEFAULT NULL,
  `id_sesi` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pembimbing1` bigint(20) NOT NULL,
  `id_pembimbing2` bigint(20) NOT NULL,
  `id_penguji` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwalproposals`
--

INSERT INTO `jadwalproposals` (`id`, `id_proposal`, `judul`, `id_ruang`, `id_mahasiswa`, `id_sesi`, `tanggal`, `id_pembimbing1`, `id_pembimbing2`, `id_penguji`, `created_at`, `updated_at`) VALUES
(9, 64, 'tes', 2, 9, 3, '2024-06-27', 57, 16, 61, '2024-06-23 10:02:10', '2024-06-23 03:02:10'),
(11, 65, 'sidang ta', 2, 92, 1, '2024-07-24', 16, 17, 61, '2024-07-04 21:02:14', '2024-07-04 21:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `jadwaltas`
--

CREATE TABLE `jadwaltas` (
  `id` bigint(20) NOT NULL,
  `id_ta` bigint(20) NOT NULL,
  `id_mahasiswa` bigint(20) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `id_ketua` bigint(20) NOT NULL,
  `id_penguji1` bigint(20) NOT NULL,
  `id_penguji2` bigint(20) NOT NULL,
  `id_penguji3` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `id_ruang` bigint(20) NOT NULL,
  `id_sesi` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwaltas`
--

INSERT INTO `jadwaltas` (`id`, `id_ta`, `id_mahasiswa`, `nim`, `judul`, `id_ketua`, `id_penguji1`, `id_penguji2`, `id_penguji3`, `tanggal`, `id_ruang`, `id_sesi`, `created_at`, `updated_at`) VALUES
(30, 8, 9, '2211082043', '123456', 17, 68, 57, 19, '2024-06-26', 2, 3, '2024-06-26 06:03:01', '2024-06-27 04:37:26'),
(31, 9, 34, '2211083040', '654321', 19, 57, 16, 75, '2024-06-27', 2, 3, '2024-06-27 03:37:47', '2024-06-28 19:43:14'),
(38, 11, 91, '2211082003', 'bahri 23', 16, 57, 75, 68, '2024-07-05', 1, 3, '2024-07-04 19:59:45', '2024-07-04 19:59:45'),
(43, 12, 92, '2211082033', 'sidang ta', 16, 17, 19, 61, '2024-07-18', 1, 2, '2024-07-04 21:10:23', '2024-07-04 21:10:23'),
(44, 10, 35, '2211083050', '987654321', 19, 16, 17, 57, '2024-07-20', 2, 3, '2024-07-06 00:54:43', '2024-07-06 00:54:43'),
(64, 13, 93, '2211083028', 'imam', 75, 86, 68, 61, '2024-07-20', 4, 3, '2024-07-06 03:35:49', '2024-07-06 03:35:49');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_23_045450_create_dosens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilaiketuas`
--

CREATE TABLE `nilaiketuas` (
  `id` bigint(20) NOT NULL,
  `id_sidang` bigint(20) NOT NULL,
  `id_mahasiswa` bigint(20) NOT NULL,
  `id_ketua` bigint(20) DEFAULT NULL,
  `sikap` decimal(4,1) DEFAULT NULL,
  `komunikasi` decimal(4,1) DEFAULT NULL,
  `penguasaan_materi` decimal(4,1) DEFAULT NULL,
  `identifikasi_masalah` decimal(4,1) DEFAULT NULL,
  `relevansi_teori` decimal(4,1) DEFAULT NULL,
  `metode` decimal(4,1) DEFAULT NULL,
  `hasil` decimal(4,1) DEFAULT NULL,
  `kesimpulan` decimal(4,1) DEFAULT NULL,
  `penggunaan_bahasa` decimal(4,1) DEFAULT NULL,
  `kesesuaian` decimal(4,1) DEFAULT NULL,
  `total` decimal(4,1) DEFAULT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilaiketuas`
--

INSERT INTO `nilaiketuas` (`id`, `id_sidang`, `id_mahasiswa`, `id_ketua`, `sikap`, `komunikasi`, `penguasaan_materi`, `identifikasi_masalah`, `relevansi_teori`, `metode`, `hasil`, `kesimpulan`, `penggunaan_bahasa`, `kesesuaian`, `total`, `komentar`, `updated_at`, `created_at`) VALUES
(4, 30, 9, 17, 87.3, 33.2, 22.6, 77.8, 77.4, 33.5, 55.6, 34.5, 34.7, 100.0, 58.5, 'suaiii', '2024-06-27 04:37:26', '2024-06-26 06:03:01'),
(5, 31, 34, 19, 35.0, 36.0, 37.0, 38.0, 40.0, 41.0, 42.0, 43.0, 44.0, 45.0, 40.9, 'bagus', '2024-07-07 04:55:02', '2024-06-27 03:37:47'),
(12, 38, 91, 16, 34.0, 24.0, 100.0, 76.0, 54.0, 98.0, 76.0, 54.0, 32.0, 100.0, 79.9, 'sadhjgsa', '2024-07-04 20:07:47', '2024-07-04 19:59:45'),
(17, 43, 92, 16, 54.0, 89.0, 99.0, 87.0, 35.0, 66.0, 84.0, 46.0, 88.5, 55.9, 73.0, 'bagus', '2024-07-07 04:46:38', '2024-07-04 21:10:23'),
(18, 44, 35, 19, 41.0, 42.0, 43.0, 44.0, 45.0, 46.0, 47.0, 48.0, 49.0, 50.0, 46.2, 'bagus', '2024-07-07 04:55:36', '2024-07-06 00:54:43'),
(38, 64, 93, 75, 69.0, 98.0, 67.0, 66.0, 65.0, 64.0, 63.0, 62.0, 61.0, 60.0, 65.3, 'bagus', '2024-07-07 05:05:18', '2024-07-06 03:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `nilaipembimbing2s`
--

CREATE TABLE `nilaipembimbing2s` (
  `id` bigint(20) NOT NULL,
  `id_ta` bigint(20) NOT NULL,
  `id_mahasiswa` bigint(20) NOT NULL,
  `id_pembimbing2` bigint(20) NOT NULL,
  `sikap` decimal(4,1) DEFAULT NULL,
  `komunikasi` decimal(4,1) DEFAULT NULL,
  `penguasaan_materi` decimal(4,1) DEFAULT NULL,
  `identifikasi_masalah` decimal(4,1) DEFAULT NULL,
  `relevansi_teori` decimal(4,1) DEFAULT NULL,
  `metode` decimal(4,1) DEFAULT NULL,
  `hasil` decimal(4,1) DEFAULT NULL,
  `kesimpulan` decimal(4,1) DEFAULT NULL,
  `penggunaan_bahasa` decimal(4,1) DEFAULT NULL,
  `kesesuaian` decimal(4,1) DEFAULT NULL,
  `total` decimal(4,1) DEFAULT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilaipembimbing2s`
--

INSERT INTO `nilaipembimbing2s` (`id`, `id_ta`, `id_mahasiswa`, `id_pembimbing2`, `sikap`, `komunikasi`, `penguasaan_materi`, `identifikasi_masalah`, `relevansi_teori`, `metode`, `hasil`, `kesimpulan`, `penggunaan_bahasa`, `kesesuaian`, `total`, `komentar`, `updated_at`, `created_at`) VALUES
(3, 8, 9, 17, 100.0, 100.0, 100.0, 100.0, 100.0, 100.0, 100.0, 100.0, 100.0, 98.0, 99.5, 'lah pass bana', '2024-06-27 03:01:52', '2024-06-25 04:32:02'),
(4, 9, 34, 17, 87.0, 45.0, 65.0, 55.0, 24.0, 23.0, 24.0, 31.0, 55.4, 23.8, 39.7, 'bagus', '2024-07-07 04:49:33', '2024-06-27 03:22:34'),
(5, 10, 35, 61, 81.0, 82.0, 83.0, 84.0, 85.0, 86.0, 87.0, 88.0, 89.0, 90.0, 86.2, 'bagus', '2024-07-07 05:00:37', '2024-06-27 03:54:01'),
(6, 11, 91, 17, 90.0, 76.0, 98.0, 65.0, 89.0, 89.0, 90.0, 89.0, 98.0, 65.0, 83.6, 'dhgfjdh', '2024-07-04 19:56:30', '2024-07-04 19:36:51'),
(7, 12, 92, 17, 22.8, 33.7, 56.9, 77.8, 55.7, 87.6, 98.6, 65.4, 44.3, 47.0, 61.7, 'bagus', '2024-07-07 04:50:19', '2024-07-04 21:05:14'),
(8, 13, 93, 17, 54.0, 32.0, 56.0, 42.0, 46.0, 98.0, 54.0, 66.0, 62.0, 35.0, 53.0, 'bagus', '2024-07-07 04:51:02', '2024-07-06 01:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `nilaipenguji1s`
--

CREATE TABLE `nilaipenguji1s` (
  `id` bigint(20) NOT NULL,
  `id_sidang` bigint(20) NOT NULL,
  `id_mahasiswa` bigint(20) NOT NULL,
  `id_penguji1` bigint(20) NOT NULL,
  `sikap` decimal(4,1) DEFAULT NULL,
  `komunikasi` decimal(4,1) DEFAULT NULL,
  `penguasaan_materi` decimal(4,1) DEFAULT NULL,
  `identifikasi_masalah` decimal(4,1) DEFAULT NULL,
  `relevansi_teori` decimal(4,1) DEFAULT NULL,
  `metode` decimal(4,1) DEFAULT NULL,
  `hasil` decimal(4,1) DEFAULT NULL,
  `kesimpulan` decimal(4,1) DEFAULT NULL,
  `penggunaan_bahasa` decimal(4,1) DEFAULT NULL,
  `kesesuaian` decimal(4,1) DEFAULT NULL,
  `total` decimal(4,1) DEFAULT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilaipenguji1s`
--

INSERT INTO `nilaipenguji1s` (`id`, `id_sidang`, `id_mahasiswa`, `id_penguji1`, `sikap`, `komunikasi`, `penguasaan_materi`, `identifikasi_masalah`, `relevansi_teori`, `metode`, `hasil`, `kesimpulan`, `penggunaan_bahasa`, `kesesuaian`, `total`, `komentar`, `updated_at`, `created_at`) VALUES
(4, 30, 9, 68, 55.4, 33.4, 55.6, 55.0, 80.9, 55.4, 45.6, 66.7, 66.4, 99.4, 66.2, 'sasuai bana', '2024-06-27 04:37:26', '2024-06-26 06:03:01'),
(5, 31, 34, 57, 61.0, 62.0, 63.0, 64.0, 65.0, 66.0, 67.0, 68.0, 69.0, 70.0, 66.2, 'bagus', '2024-07-07 04:58:31', '2024-06-27 03:37:47'),
(12, 38, 91, 57, 65.0, 43.0, 32.0, 32.0, 54.0, 54.0, 76.0, 65.0, 33.0, 22.0, 43.3, 'dsds', '2024-07-04 20:04:23', '2024-07-04 19:59:45'),
(17, 43, 92, 17, 53.0, 66.0, 85.0, 57.0, 64.0, 57.0, 32.0, 65.0, 55.0, 90.0, 68.0, 'bagus', '2024-07-07 04:51:59', '2024-07-04 21:10:23'),
(18, 44, 35, 16, 54.6, 55.5, 88.5, 45.7, 44.8, 99.6, 57.3, 76.9, 86.4, 54.8, 68.2, 'bagus', '2024-07-07 04:47:39', '2024-07-06 00:54:43'),
(38, 64, 93, 86, 65.0, 64.0, 63.0, 62.0, 61.0, 75.0, 74.0, 73.0, 72.0, 79.0, 70.8, 'bagus', '2024-07-07 05:09:01', '2024-07-06 03:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `nilaipenguji2s`
--

CREATE TABLE `nilaipenguji2s` (
  `id` bigint(20) NOT NULL,
  `id_sidang` bigint(20) NOT NULL,
  `id_mahasiswa` bigint(20) NOT NULL,
  `id_penguji2` bigint(20) NOT NULL,
  `sikap` decimal(4,1) DEFAULT NULL,
  `komunikasi` decimal(4,1) DEFAULT NULL,
  `penguasaan_materi` decimal(4,1) DEFAULT NULL,
  `identifikasi_masalah` decimal(4,1) DEFAULT NULL,
  `relevansi_teori` decimal(4,1) DEFAULT NULL,
  `metode` decimal(4,1) DEFAULT NULL,
  `hasil` decimal(4,1) DEFAULT NULL,
  `kesimpulan` decimal(4,1) DEFAULT NULL,
  `penggunaan_bahasa` decimal(4,1) DEFAULT NULL,
  `kesesuaian` decimal(4,1) DEFAULT NULL,
  `total` decimal(4,1) DEFAULT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilaipenguji2s`
--

INSERT INTO `nilaipenguji2s` (`id`, `id_sidang`, `id_mahasiswa`, `id_penguji2`, `sikap`, `komunikasi`, `penguasaan_materi`, `identifikasi_masalah`, `relevansi_teori`, `metode`, `hasil`, `kesimpulan`, `penggunaan_bahasa`, `kesesuaian`, `total`, `komentar`, `updated_at`, `created_at`) VALUES
(4, 30, 9, 57, 98.4, 54.3, 43.5, 44.3, 55.7, 77.4, 88.5, 87.4, 99.3, 50.0, 64.2, 'itu nyo', '2024-06-27 04:37:26', '2024-06-26 06:03:01'),
(5, 31, 34, 16, 56.0, 56.0, 56.0, 56.0, 56.0, 56.0, 56.0, 56.0, 56.0, 56.0, 56.0, 'bagus', '2024-07-07 05:11:02', '2024-06-27 03:37:47'),
(12, 38, 91, 75, 76.0, 98.0, 98.0, 97.0, 78.0, 88.0, 97.0, 87.0, 96.0, 99.0, 94.3, 'gdysgd', '2024-07-04 20:05:38', '2024-07-04 19:59:45'),
(17, 43, 92, 19, 51.0, 52.0, 53.0, 54.0, 55.0, 56.0, 57.0, 58.0, 59.0, 60.0, 56.2, 'bagus', '2024-07-07 04:56:42', '2024-07-04 21:10:23'),
(18, 44, 35, 17, 85.0, 65.0, 45.0, 56.0, 46.0, 33.0, 35.0, 34.0, 84.0, 85.0, 57.3, 'bagus', '2024-07-07 04:52:38', '2024-07-06 00:54:43'),
(38, 64, 93, 68, 79.0, 78.0, 77.0, 76.0, 75.0, 74.0, 73.0, 72.0, 71.0, 70.0, 73.8, 'bagus', '2024-07-07 05:03:49', '2024-07-06 03:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `nilaipenguji3s`
--

CREATE TABLE `nilaipenguji3s` (
  `id` bigint(20) NOT NULL,
  `id_sidang` bigint(20) NOT NULL,
  `id_mahasiswa` bigint(20) NOT NULL,
  `id_penguji3` bigint(20) NOT NULL,
  `sikap` decimal(4,1) DEFAULT NULL,
  `komunikasi` decimal(4,1) DEFAULT NULL,
  `penguasaan_materi` decimal(4,1) DEFAULT NULL,
  `identifikasi_masalah` decimal(4,1) DEFAULT NULL,
  `relevansi_teori` decimal(4,1) DEFAULT NULL,
  `metode` decimal(4,1) DEFAULT NULL,
  `hasil` decimal(4,1) DEFAULT NULL,
  `kesimpulan` decimal(4,1) DEFAULT NULL,
  `penggunaan_bahasa` decimal(4,1) DEFAULT NULL,
  `kesesuaian` decimal(4,1) DEFAULT NULL,
  `total` decimal(4,1) DEFAULT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilaipenguji3s`
--

INSERT INTO `nilaipenguji3s` (`id`, `id_sidang`, `id_mahasiswa`, `id_penguji3`, `sikap`, `komunikasi`, `penguasaan_materi`, `identifikasi_masalah`, `relevansi_teori`, `metode`, `hasil`, `kesimpulan`, `penggunaan_bahasa`, `kesesuaian`, `total`, `komentar`, `updated_at`, `created_at`) VALUES
(2, 30, 9, 19, 65.6, 55.3, 55.6, 66.5, 77.5, 65.7, 98.6, 32.6, 67.5, 100.0, 75.7, 'itu lah suai', '2024-06-27 04:37:26', '2024-06-26 06:03:01'),
(3, 31, 34, 75, 99.0, 98.0, 97.0, 96.0, 95.0, 94.0, 93.0, 92.0, 91.0, 90.0, 93.8, 'bagus', '2024-07-07 05:07:56', '2024-06-27 03:37:47'),
(10, 38, 91, 68, 88.0, 98.0, 90.0, 87.0, 97.0, 89.0, 79.0, 98.0, 98.0, 99.0, 91.8, 'fedd', '2024-07-04 20:06:51', '2024-07-04 19:59:45'),
(15, 43, 92, 61, 99.0, 98.0, 97.0, 96.0, 95.0, 94.0, 93.0, 92.0, 91.0, 90.0, 93.8, 'bagus', '2024-07-07 05:01:50', '2024-07-04 21:10:23'),
(16, 44, 35, 57, 71.0, 72.0, 73.0, 74.0, 75.0, 76.0, 77.0, 78.0, 79.0, 80.0, 76.2, 'bagus', '2024-07-07 04:59:15', '2024-07-06 00:54:43'),
(36, 64, 93, 61, 89.0, 88.0, 87.0, 86.0, 85.0, 84.0, 83.0, 82.0, 81.0, 80.0, 83.8, 'bagus', '2024-07-07 05:02:22', '2024-07-06 03:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `nilaitamahasiswas`
--

CREATE TABLE `nilaitamahasiswas` (
  `id` bigint(20) NOT NULL,
  `id_mahasiswa` bigint(20) NOT NULL,
  `id_pembimbing1` bigint(20) DEFAULT NULL,
  `id_pembimbing2` bigint(20) DEFAULT NULL,
  `id_ketua` bigint(20) DEFAULT NULL,
  `id_penguji1` bigint(20) DEFAULT NULL,
  `id_penguji2` bigint(20) DEFAULT NULL,
  `id_penguji3` bigint(20) DEFAULT NULL,
  `total_pembimbing1` decimal(4,1) DEFAULT NULL,
  `total_pembimbing2` decimal(4,1) DEFAULT NULL,
  `total_ketua` decimal(4,1) DEFAULT NULL,
  `total_penguji1` decimal(4,1) DEFAULT NULL,
  `total_penguji2` decimal(4,1) DEFAULT NULL,
  `total_penguji3` decimal(4,1) DEFAULT NULL,
  `rata_pembimbing` decimal(4,1) DEFAULT NULL,
  `rata_penguji` decimal(4,1) DEFAULT NULL,
  `nilai_akhir` decimal(4,1) DEFAULT NULL,
  `komentar1` varchar(255) DEFAULT NULL,
  `komentar2` varchar(255) DEFAULT NULL,
  `komentar3` varchar(255) DEFAULT NULL,
  `komentar4` varchar(255) DEFAULT NULL,
  `komentar5` varchar(255) DEFAULT NULL,
  `komentar6` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilaitamahasiswas`
--

INSERT INTO `nilaitamahasiswas` (`id`, `id_mahasiswa`, `id_pembimbing1`, `id_pembimbing2`, `id_ketua`, `id_penguji1`, `id_penguji2`, `id_penguji3`, `total_pembimbing1`, `total_pembimbing2`, `total_ketua`, `total_penguji1`, `total_penguji2`, `total_penguji3`, `rata_pembimbing`, `rata_penguji`, `nilai_akhir`, `komentar1`, `komentar2`, `komentar3`, `komentar4`, `komentar5`, `komentar6`, `status`, `created_at`, `updated_at`) VALUES
(23, 9, 16, 17, 17, 68, 57, 19, 75.0, 99.5, 58.5, 66.2, 64.2, 75.7, 87.3, 66.2, 73.2, 'lah suai', 'lah pass bana', 'suaiii', 'sasuai bana', 'itu nyo', 'itu lah suai', 'Tidak lulus sidang', '2024-06-26 21:38:40', '2024-07-07 05:09:31'),
(26, 34, 16, 17, 19, 57, 16, 75, 77.1, 39.7, 40.9, 66.2, 56.0, 93.8, 58.4, 64.2, 62.3, 'bagus', 'bagus', 'bagus', 'bagus', 'bagus', 'bagus', 'Tidak lulus sidang', '2024-06-27 03:49:39', '2024-07-07 05:11:37'),
(27, 91, 16, 17, 16, 57, 75, 68, 42.5, 83.6, 79.9, 43.3, 94.3, 91.8, 63.1, 77.3, 72.6, 'dwhjfhjwgfhjg', 'dhgfjdh', 'sadhjgsa', 'dsds', 'gdysgd', 'fedd', 'Lulus sidang', '2024-07-04 19:58:22', '2024-07-07 05:13:30'),
(28, 35, 19, 61, 19, 16, 17, 57, 62.8, 86.2, 46.2, 68.2, 57.3, 76.2, 74.5, 62.0, 66.2, 'bagus', 'bagus', 'bagus', 'bagus', 'bagus', 'bagus', 'Tidak lulus sidang', '2024-07-07 05:11:58', '2024-07-07 05:11:58'),
(29, 92, 16, 17, 16, 17, 19, 61, 70.2, 61.7, 73.0, 68.0, 56.2, 93.8, 66.0, 72.8, 70.5, 'bagus', 'bagus', 'bagus', 'bagus', 'bagus', 'bagus', 'Lulus sidang', '2024-07-07 05:13:49', '2024-07-07 05:13:49'),
(30, 93, 16, 17, 75, 86, 68, 61, 83.6, 53.0, 65.3, 70.8, 73.8, 83.8, 68.3, 73.4, 71.7, 'bagus', 'bagus', 'bagus', 'bagus', 'bagus', 'bagus', 'Lulus sidang', '2024-07-07 05:14:15', '2024-07-07 05:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `nilaitas`
--

CREATE TABLE `nilaitas` (
  `id` bigint(20) NOT NULL,
  `id_ta` bigint(20) NOT NULL,
  `id_mahasiswa` bigint(20) NOT NULL,
  `id_pembimbing1` bigint(20) NOT NULL,
  `sikap` decimal(4,1) DEFAULT NULL,
  `komunikasi` decimal(4,1) DEFAULT NULL,
  `penguasaan_materi` decimal(4,1) DEFAULT NULL,
  `identifikasi_masalah` decimal(4,1) DEFAULT NULL,
  `relevansi_teori` decimal(4,1) DEFAULT NULL,
  `metode` decimal(4,1) DEFAULT NULL,
  `hasil` decimal(4,1) DEFAULT NULL,
  `kesimpulan` decimal(4,1) DEFAULT NULL,
  `penggunaan_bahasa` decimal(4,1) DEFAULT NULL,
  `kesesuaian` decimal(4,1) DEFAULT NULL,
  `total` decimal(4,1) DEFAULT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilaitas`
--

INSERT INTO `nilaitas` (`id`, `id_ta`, `id_mahasiswa`, `id_pembimbing1`, `sikap`, `komunikasi`, `penguasaan_materi`, `identifikasi_masalah`, `relevansi_teori`, `metode`, `hasil`, `kesimpulan`, `penggunaan_bahasa`, `kesesuaian`, `total`, `komentar`, `updated_at`, `created_at`) VALUES
(14, 8, 9, 16, 100.0, 100.0, 50.0, 100.0, 100.0, 100.0, 100.0, 50.0, 100.0, 50.0, 75.0, 'lah suai', '2024-06-27 02:49:59', '2024-06-25 04:32:02'),
(15, 9, 34, 16, 56.0, 48.0, 96.0, 54.0, 64.0, 35.0, 79.0, 54.0, 99.0, 95.0, 77.1, 'bagus', '2024-07-07 04:43:59', '2024-06-27 03:22:34'),
(16, 10, 35, 19, 56.0, 55.0, 65.0, 64.0, 35.0, 24.0, 46.0, 51.0, 58.0, 98.0, 62.8, 'bagus', '2024-07-07 04:54:19', '2024-06-27 03:54:01'),
(17, 11, 91, 16, 89.4, 77.3, 87.3, 55.5, 33.2, 10.2, 43.4, 33.2, 10.4, 10.4, 42.5, 'dwhjfhjwgfhjg', '2024-07-04 19:54:13', '2024-07-04 19:36:51'),
(18, 12, 92, 16, 99.0, 54.0, 87.0, 58.8, 55.9, 66.3, 54.0, 68.0, 95.0, 66.0, 70.2, 'bagus', '2024-07-07 04:44:56', '2024-07-04 21:05:14'),
(19, 13, 93, 16, 98.0, 88.0, 97.0, 65.0, 54.0, 68.0, 87.0, 77.0, 79.0, 85.0, 83.6, 'bagus', '2024-07-07 04:45:29', '2024-07-06 01:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('tisu@gmail.com', 'E6X09sLKIc1oDnzPCKQEhqaHgLW8UGDkvGY3zVbtfD4UzCJgtuw4Cr8U9ebQ', '2024-07-04 06:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prodis`
--

CREATE TABLE `prodis` (
  `id` int(11) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodis`
--

INSERT INTO `prodis` (`id`, `nama_prodi`, `updated_at`, `created_at`) VALUES
(1, 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL),
(2, 'Manajemen Informatika', NULL, NULL),
(3, 'Teknik Komputer', NULL, NULL),
(4, 'Animasi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proposaltas`
--

CREATE TABLE `proposaltas` (
  `id` bigint(20) NOT NULL,
  `id_mahasiswa` bigint(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `proposal` varchar(255) DEFAULT NULL,
  `nim` varchar(255) NOT NULL,
  `id_pembimbing` bigint(20) DEFAULT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `id_pembimbing2` bigint(20) DEFAULT NULL,
  `komentar2` varchar(255) DEFAULT NULL,
  `id_kaprodi` bigint(20) DEFAULT NULL,
  `komentar3` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_pembimbing2` varchar(255) DEFAULT NULL,
  `status_kaprodi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proposaltas`
--

INSERT INTO `proposaltas` (`id`, `id_mahasiswa`, `judul`, `proposal`, `nim`, `id_pembimbing`, `komentar`, `id_pembimbing2`, `komentar2`, `id_kaprodi`, `komentar3`, `status`, `status_pembimbing2`, `status_kaprodi`, `created_at`, `updated_at`) VALUES
(64, 9, 'tes', 'proposal1718800709_Laporan_automated_testing_Akmal_Rendiansyah_2211083040.pdf', '2211082043', 57, 'sudah benar', 16, '', 67, 'lah pass bana', 'Di setujui', 'Di setujui', 'Di setujui', '2024-06-19 05:38:29', '2024-06-19 07:35:15'),
(65, 92, 'sidang ta', 'proposal1720151951_agen cerdas akmal rendiansyah trpl 2a.pdf', '2211082033', 16, 'bagus', 17, 'bagus', 47, 'bagus', 'Di setujui', 'Di setujui', 'Di setujui', '2024-07-04 20:59:11', '2024-07-04 21:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `ruangs`
--

CREATE TABLE `ruangs` (
  `id` int(11) NOT NULL,
  `ruang` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruangs`
--

INSERT INTO `ruangs` (`id`, `ruang`, `created_at`, `updated_at`) VALUES
(1, 'E201', NULL, NULL),
(2, 'E202', NULL, NULL),
(4, 'E203', '2024-06-10 05:56:26', '2024-06-10 05:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `sesis`
--

CREATE TABLE `sesis` (
  `id` int(11) NOT NULL,
  `mulai` time NOT NULL,
  `selesai` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sesis`
--

INSERT INTO `sesis` (`id`, `mulai`, `selesai`, `created_at`, `updated_at`) VALUES
(1, '08:00:00', '10:00:00', NULL, NULL),
(2, '10:00:00', '12:00:00', NULL, NULL),
(3, '13:00:00', '15:00:00', NULL, NULL),
(4, '15:00:00', '17:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sidangtas`
--

CREATE TABLE `sidangtas` (
  `id` bigint(20) NOT NULL,
  `id_mahasiswa` bigint(20) NOT NULL,
  `id_pembimbing` bigint(20) NOT NULL,
  `id_pembimbing2` bigint(20) NOT NULL,
  `id_kaprodi` bigint(20) NOT NULL,
  `laporanpkl` varchar(255) NOT NULL,
  `lembarbimbingan` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `proposal` varchar(255) NOT NULL,
  `laporanta` varchar(255) NOT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `komentar2` varchar(255) DEFAULT NULL,
  `komentar3` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_pembimbing2` varchar(255) DEFAULT NULL,
  `status_kaprodi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sidangtas`
--

INSERT INTO `sidangtas` (`id`, `id_mahasiswa`, `id_pembimbing`, `id_pembimbing2`, `id_kaprodi`, `laporanpkl`, `lembarbimbingan`, `judul`, `proposal`, `laporanta`, `komentar`, `komentar2`, `komentar3`, `status`, `status_pembimbing2`, `status_kaprodi`, `created_at`, `updated_at`) VALUES
(8, 9, 16, 17, 47, 'laporanpkl1719315122_agen cerdas akmal rendiansyah trpl 2a.pdf', 'lembarbimbingan1719315122_analisa metode Depth First Search, Depth-Limited Search dan Uniform-Cost Search akmal rendiansyah.pdf', '123456', 'proposal1719315122_Artikel CSR Akmal rendiansyah.pdf', 'laporanta1719315122_Untitled.pdf', 'ggashgha', 'adygaydg', 'ahsgdhjag', 'Di setujui', 'Di setujui', 'Di setujui', '2024-06-25 04:32:02', '2024-06-25 04:32:02'),
(9, 34, 16, 17, 47, 'laporanpkl1719483754_agen cerdas akmal rendiansyah trpl 2a.pdf', 'lembarbimbingan1719483754_Artikel CSR Akmal rendiansyah.pdf', '654321', 'proposal1719483754_algoritima _genetika(akmal rendiansyah).pdf', 'laporanta1719483754_Akmal rendiansyah pencarian searah.pdf', 'ndjsnvkjs', 'sbcjhbsjhc', 'hsgfjhsgfhgs', 'Di setujui', 'Di setujui', 'Di setujui', '2024-06-27 03:22:34', '2024-06-27 03:22:34'),
(10, 35, 19, 61, 47, 'laporanpkl1719485641_analisa metode Depth First Search, Depth-Limited Search dan Uniform-Cost Search akmal rendiansyah.pdf', 'lembarbimbingan1719485641_Artikel CSR Akmal rendiansyah.pdf', '987654321', 'proposal1719485641_algoritima _genetika(akmal rendiansyah).pdf', 'laporanta1719485641_agen cerdas akmal rendiansyah trpl 2a.pdf', 'shjajfhajha', 'shahdgag', 'svgavgdga', 'Di setujui', 'Di setujui', 'Di setujui', '2024-06-27 03:54:01', '2024-06-27 03:54:01'),
(11, 91, 16, 17, 89, 'laporanpkl1720147011_Artikel CSR Akmal rendiansyah.pdf', 'lembarbimbingan1720147011_agen cerdas akmal rendiansyah trpl 2a.pdf', 'bahri 23', 'proposal1720147011_analisa metode Depth First Search, Depth-Limited Search dan Uniform-Cost Search akmal rendiansyah.pdf', 'laporanta1720147011_PERTEMUAN VI_QUIZ.05. TRPL.2A.Akmal rendiansyah.pdf', 'bahribana', 'hjafhjgf', NULL, 'Di setujui', 'Di setujui', NULL, '2024-07-04 19:36:51', '2024-07-04 19:45:08'),
(12, 92, 16, 17, 47, 'laporanpkl1720152314_Untitled.pdf', 'lembarbimbingan1720152314_Artikel CSR Akmal rendiansyah.pdf', 'sidang ta', 'proposal1720152314_agen cerdas akmal rendiansyah trpl 2a.pdf', 'laporanta1720152314_Akmal rendiansyah pencarian searah.pdf', 'bagus', 'bagus', 'bagus', 'Di setujui', 'Di setujui', 'Di setujui', '2024-07-04 21:05:14', '2024-07-04 21:06:56'),
(13, 93, 16, 17, 47, 'laporanpkl1720254695_agen cerdas akmal rendiansyah trpl 2a.pdf', 'lembarbimbingan1720254695_Artikel CSR Akmal rendiansyah.pdf', 'imam', 'proposal1720254695_Laporan_automated_testing_Akmal_Rendiansyah_2211083040.pdf', 'laporanta1720254695_analisa metode Depth First Search, Depth-Limited Search dan Uniform-Cost Search akmal rendiansyah.pdf', 'bagus', 'bagus', 'bagus', 'Di setujui', 'Di setujui', 'Di setujui', '2024-07-06 01:31:35', '2024-07-07 05:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('mahasiswa','dosen','admin','kaprodi') NOT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `nidn` varchar(255) DEFAULT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `nim`, `nidn`, `nip`, `id_prodi`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Akmal Rendiansyah', 'akmalrendiansyah@gmail.com', NULL, '$2y$10$zrFX8LpyTAqAYqvk9naZ/OYXN7d/0QpJTBfpOL5R8G8dS7hg9nMbG', 'mahasiswa', '2211083004', NULL, '', 3, NULL, '2024-05-27 06:02:30', '2024-07-04 20:17:49'),
(16, 'Defni, S.Si., M.Kom', 'defni@gmail.com', NULL, '$2y$10$RXsCQfM9PVTj5yq/fdN8luKGTsJdSKcaDBOUUXx1r64Fe3hJLH8x.', 'dosen', NULL, '1234567499', '', 1, NULL, '2024-05-28 05:09:20', '2024-06-16 05:25:58'),
(17, 'Indri Rahmayuni, S.T., M.T', 'indri@gmail.com', NULL, '$2y$10$cBgNrBV8tV.rFiT4PWRYK.Uc/nAtnsgTKaq5d6SvCqbIG1thjP57m', 'dosen', NULL, '1234567895', '', 1, NULL, '2024-05-28 05:12:32', '2024-06-11 19:02:06'),
(19, 'Fazrol Rozi, M.Sc', 'oji@gmail.com', NULL, '$2y$10$0aETvTX5aehTL09FyldIHemNDbH6CyvyVRxPiph4wHb0lhlMG8vq6', 'dosen', NULL, '9876543214', '', 1, NULL, '2024-05-28 05:23:53', '2024-06-11 19:02:17'),
(32, 'admin1', 'admin1@gmail.com', NULL, '$2y$10$S0X5LP4xMUi3RP1.NX0qlOpvkW5PFUkgTSF1rRU1Q8Nx4hslQ8Us6', 'admin', NULL, NULL, '1234567892', 1, NULL, '2024-06-07 20:04:38', '2024-06-16 05:15:09'),
(33, 'admin2', 'admin2@gmail.com', NULL, '$2y$10$wEX0La20znmN5.5V5lkkZu9ZaUqdnl92L8DIqnlfXRv6it3a6SFha', 'admin', NULL, NULL, '1234567896', 2, NULL, '2024-06-07 20:19:16', '2024-06-07 20:19:16'),
(34, 'Aqmal Bahri', 'aqmal@gmail.com', NULL, '$2y$10$I6lo9Djta5gpbTibQAM.E.CBSNrWqL4X77dquf0TVQLMVBa4Rmady', 'mahasiswa', '2211083040', NULL, NULL, 3, NULL, '2024-06-07 20:36:35', '2024-06-07 20:36:35'),
(35, 'Fuad Alfajri', 'fuadd@gmail.com', NULL, '$2y$10$J2Gup3lOrwlGKu1H1Y7LZutYN.7.fEh3vxOyU.XxhSy/oynRcNKRO', 'mahasiswa', '2211083050', NULL, NULL, 1, NULL, '2024-06-10 21:49:28', '2024-06-16 05:32:37'),
(47, 'kaprodi_trpl', 'kaprodi1@gmail.com', NULL, '$2y$10$LWCzpUwfJKC/lp7GAxZVfOn65mtr4k7vVd4b8FT/fvRGeqdBrUR/O', 'kaprodi', NULL, '1281378789', NULL, 1, NULL, '2024-06-12 19:56:27', '2024-06-12 19:56:27'),
(55, 'admin3', 'admin3@gmail.com', NULL, '$2y$10$zu31kQVcoTODA2rn0euiIefiIIhK9uch1yILGMxsb5WX2goP9qbdO', 'admin', NULL, NULL, '1234567887', NULL, NULL, '2024-06-12 20:32:40', '2024-06-12 20:32:40'),
(57, 'Fanni Sukma, S.ST., M.T', 'fani@gmail.com', NULL, '$2y$10$LseXLHqP1NzlVn0Ov8RK9OdEOZQEjWa48Hc.6oBMHEFDUS7z2Vjwq', 'dosen', NULL, '1243526777', NULL, NULL, NULL, '2024-06-12 20:37:20', '2024-06-12 20:37:20'),
(58, 'kaprodi_mi', 'kaprodi2@gmail.com', NULL, '$2y$10$JPDfF7Hu3yEfLMEJTEmdquW9BC0XSjLtaiPZCTSBpTASQx8.G1m8.', 'kaprodi', NULL, '8765432100', NULL, 2, NULL, '2024-06-12 20:40:48', '2024-06-16 05:22:08'),
(61, 'Dr. Yulherniwati, S.Kom., M.T', 'heni@gmail.com', NULL, '$2y$10$svZZWbTlr/SYg27TJJIDVuXiSQEPqTco7DI7RqHpG0scZkq4iihkC', 'dosen', NULL, '1234567865', NULL, NULL, NULL, '2024-06-12 21:32:56', '2024-06-12 21:32:56'),
(67, 'kaprodi_tk', 'kaprodi3@gmail.com ', NULL, '$2y$10$oa0ZqWDfu569Yzm7O5ihf.3dHSS/6TMQfG59dZ0aOeSTH6GtYhyMS', 'kaprodi', NULL, '1234567860', NULL, 3, NULL, '2024-06-16 05:22:28', '2024-06-16 05:22:28'),
(68, 'Ainil Mardiah', 'diah@gmail.com', NULL, '$2y$10$o9DMu6qPsKk.21TZ9.sG6Os1zCzdRiqofvzOHnBA00xnsch4BPdxO', 'dosen', NULL, '1234567863', NULL, NULL, NULL, '2024-06-16 05:26:37', '2024-06-16 05:26:37'),
(69, 'Alifah Ulfiah', 'alfii@gmail.com', NULL, '$2y$10$wGBWJFaDlcYM9f3RFfev4eqgg0mUEbn/zgMv.1/d7KoDJvbGf6l5W', 'mahasiswa', '2211083049', NULL, NULL, 2, NULL, '2024-06-16 05:33:01', '2024-06-16 05:33:01'),
(70, 'admin4', 'admin4@gmail.com', NULL, '$2y$10$Mk040GR6kUKGHmWF2jQG5..SLTsa9tRMjcYe9dKLPO9bGpQ.L9YqO', 'admin', NULL, NULL, '6543212348', NULL, NULL, '2024-06-26 00:09:48', '2024-06-26 00:09:48'),
(74, 'Taufik Gusman', 'taufik@gmail.com', NULL, '$2y$10$65myftsc4.F8MAjJmPovn.ToSiyfwtUifp/LT.O.TGFq3T1gO3eze', 'dosen', NULL, '7654321765', NULL, NULL, NULL, '2024-06-28 08:07:49', '2024-06-28 08:07:49'),
(75, 'Harfebi Fryonanda', 'febi@gmail.com', NULL, '$2y$10$J2MrX60crfoeVUUPZUPglOiuU5nuWAFsq/nIBAXL.WfK6PoXn051e', 'dosen', NULL, '7654321769', NULL, NULL, NULL, '2024-06-28 08:09:32', '2024-06-28 08:09:32'),
(76, 'admin5', 'admin5@gmail.com', NULL, '$2y$10$L33UPc3LJpxDwEOTSeLNBO6i3IFppBStCDLsYogtS20ZVyxEspiNi', 'admin', NULL, NULL, '5432154321', NULL, NULL, '2024-06-28 08:27:03', '2024-06-28 08:27:03'),
(77, 'admin6', 'admin6@gmail.com', NULL, '$2y$10$XkrIEEV7cV9MSKPZeeuaTe0.C0w2dCcpfuK4GroHwd5giBQ8K0rZK', 'admin', NULL, NULL, '1234512345', NULL, NULL, '2024-06-28 08:27:03', '2024-06-28 08:27:03'),
(83, 'Abdillah Rahman', 'abdi@gmail.com', NULL, '$2y$10$LkKrOMITsUUi0BeMZzh45.ZQfK486e1ACfQDPBwOwLp6LmLyFqo7a', 'mahasiswa', '2211089897', NULL, NULL, 1, NULL, '2024-06-28 08:30:27', '2024-06-28 08:30:27'),
(84, 'Alfa Ramadhan', 'alfa@gmail.com', NULL, '$2y$10$MIJi8opePwBABqpVs7jWiuMDA6.y2AiKblF1Aw4gK1SfJsvvR0Smm', 'mahasiswa', '2211085465', NULL, NULL, 2, NULL, '2024-06-28 08:30:28', '2024-06-28 08:30:28'),
(85, 'admin7', 'admin7@gmail.com', NULL, '$2y$10$DirwA/yMUZUN18QSCmvQ3uy5vdP0nhvjle93LrNyvHNVKB6wU87Um', 'admin', NULL, NULL, '4321432112', NULL, NULL, '2024-07-02 05:25:17', '2024-07-02 05:25:17'),
(86, 'Deni Satri', 'deni@gmail.com', NULL, '$2y$10$.0lVJScKd7hsna8cgAXmAeLlpq8g8e5lBSb56Q3DRKZrOyQ1lYgNi', 'dosen', NULL, '9876543264', NULL, NULL, NULL, '2024-07-04 06:11:07', '2024-07-04 06:11:07'),
(87, 'admin8', 'admin8@gmail.com', NULL, '$2y$10$EMr9MoEGSGx6Q5XcoHx/h.5TM7qMgsfHZ0H02Hg0wh8K3EQmEhJRy', 'admin', NULL, NULL, '3213213213', NULL, NULL, '2024-07-04 06:21:26', '2024-07-04 06:21:26'),
(88, 'Farhan', 'farhan@gmail.com', NULL, '$2y$10$5tz4yVqO9wrec/2lud79w.9VlziiVKtBHd/5Y3VLgdGrHIRZolZ1y', 'mahasiswa', '2211082011', NULL, NULL, 2, NULL, '2024-07-04 06:22:13', '2024-07-04 06:22:13'),
(89, 'kaprodi_Animasi', 'kaprodi4@gmail.com', NULL, '$2y$10$r/7cv3w08tv7o7u2hwQTy.gGEtg9y4D1bANbGBJXgA5cW1NqOdM3W', 'kaprodi', NULL, '9876509877', NULL, 4, NULL, '2024-07-04 07:15:03', '2024-07-04 07:15:03'),
(91, 'Erfan Fadhil Juzar', 'erfan@gmail.com', NULL, '$2y$10$yF8oEC2V0s4.9uRrvqnHhe26GwhBZwv4ouyq1mGNv5chbO3Tikx.G', 'mahasiswa', '2211082003', NULL, NULL, 1, NULL, '2024-07-04 19:34:27', '2024-07-04 19:34:27'),
(92, 'Amir Syafwan', 'amir@gmail.com', NULL, '$2y$10$CLlKmgwvxMJf2sSzlHp51ug6xSXYAKukQESXhsd9oePz9hoJ21Qr.', 'mahasiswa', '2211082033', NULL, NULL, 1, NULL, '2024-07-04 20:45:03', '2024-07-04 20:45:03'),
(93, 'Imam Mahmuda', 'imammahmuda11@gmail.com', NULL, '$2y$10$IEYyPDeeDkW7Me6wSjcrGe364uLtiSS14fke6V1hje9w3LByqCPze', 'mahasiswa', '2211083028', NULL, NULL, 1, NULL, '2024-07-04 21:51:07', '2024-07-04 21:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `validasiproposals`
--

CREATE TABLE `validasiproposals` (
  `id` bigint(20) NOT NULL,
  `id_proposal` bigint(20) NOT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_admins`
-- (See below for the actual view)
--
CREATE TABLE `v_admins` (
`id` bigint(20) unsigned
,`name` varchar(255)
,`email` varchar(255)
,`role` enum('mahasiswa','dosen','admin','kaprodi')
,`password` varchar(255)
,`nip` varchar(255)
,`id_prodi` int(11)
,`updated_at` timestamp
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_dosens`
-- (See below for the actual view)
--
CREATE TABLE `v_dosens` (
`id` bigint(20) unsigned
,`name` varchar(255)
,`email` varchar(255)
,`role` enum('mahasiswa','dosen','admin','kaprodi')
,`password` varchar(255)
,`nidn` varchar(255)
,`id_prodi` int(11)
,`updated_at` timestamp
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_kaprodis`
-- (See below for the actual view)
--
CREATE TABLE `v_kaprodis` (
`id` bigint(20) unsigned
,`name` varchar(255)
,`email` varchar(255)
,`role` enum('mahasiswa','dosen','admin','kaprodi')
,`password` varchar(255)
,`nidn` varchar(255)
,`id_prodi` int(11)
,`updated_at` timestamp
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_mahasiswas`
-- (See below for the actual view)
--
CREATE TABLE `v_mahasiswas` (
`id` bigint(20) unsigned
,`name` varchar(255)
,`email` varchar(255)
,`role` enum('mahasiswa','dosen','admin','kaprodi')
,`password` varchar(255)
,`nim` varchar(255)
,`id_prodi` int(11)
,`updated_at` timestamp
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Structure for view `v_admins`
--
DROP TABLE IF EXISTS `v_admins`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_admins`  AS SELECT `users`.`id` AS `id`, `users`.`name` AS `name`, `users`.`email` AS `email`, `users`.`role` AS `role`, `users`.`password` AS `password`, `users`.`nip` AS `nip`, `users`.`id_prodi` AS `id_prodi`, `users`.`updated_at` AS `updated_at`, `users`.`created_at` AS `created_at` FROM `users` WHERE `users`.`role` = 'admin' ;

-- --------------------------------------------------------

--
-- Structure for view `v_dosens`
--
DROP TABLE IF EXISTS `v_dosens`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_dosens`  AS SELECT `users`.`id` AS `id`, `users`.`name` AS `name`, `users`.`email` AS `email`, `users`.`role` AS `role`, `users`.`password` AS `password`, `users`.`nidn` AS `nidn`, `users`.`id_prodi` AS `id_prodi`, `users`.`updated_at` AS `updated_at`, `users`.`created_at` AS `created_at` FROM `users` WHERE `users`.`role` = 'dosen' ;

-- --------------------------------------------------------

--
-- Structure for view `v_kaprodis`
--
DROP TABLE IF EXISTS `v_kaprodis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kaprodis`  AS SELECT `users`.`id` AS `id`, `users`.`name` AS `name`, `users`.`email` AS `email`, `users`.`role` AS `role`, `users`.`password` AS `password`, `users`.`nidn` AS `nidn`, `users`.`id_prodi` AS `id_prodi`, `users`.`updated_at` AS `updated_at`, `users`.`created_at` AS `created_at` FROM `users` WHERE `users`.`role` = 'kaprodi' ;

-- --------------------------------------------------------

--
-- Structure for view `v_mahasiswas`
--
DROP TABLE IF EXISTS `v_mahasiswas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mahasiswas`  AS SELECT `users`.`id` AS `id`, `users`.`name` AS `name`, `users`.`email` AS `email`, `users`.`role` AS `role`, `users`.`password` AS `password`, `users`.`nim` AS `nim`, `users`.`id_prodi` AS `id_prodi`, `users`.`updated_at` AS `updated_at`, `users`.`created_at` AS `created_at` FROM `users` WHERE `users`.`role` = 'mahasiswa' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosens`
--
ALTER TABLE `dosens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jadwalproposals`
--
ALTER TABLE `jadwalproposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwaltas`
--
ALTER TABLE `jadwaltas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaiketuas`
--
ALTER TABLE `nilaiketuas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaipembimbing2s`
--
ALTER TABLE `nilaipembimbing2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaipenguji1s`
--
ALTER TABLE `nilaipenguji1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaipenguji2s`
--
ALTER TABLE `nilaipenguji2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaipenguji3s`
--
ALTER TABLE `nilaipenguji3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaitamahasiswas`
--
ALTER TABLE `nilaitamahasiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaitas`
--
ALTER TABLE `nilaitas`
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
-- Indexes for table `prodis`
--
ALTER TABLE `prodis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposaltas`
--
ALTER TABLE `proposaltas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`);

--
-- Indexes for table `ruangs`
--
ALTER TABLE `ruangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sesis`
--
ALTER TABLE `sesis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidangtas`
--
ALTER TABLE `sidangtas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nim_unique` (`nim`),
  ADD UNIQUE KEY `users_nidn_unique` (`nidn`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `validasiproposals`
--
ALTER TABLE `validasiproposals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosens`
--
ALTER TABLE `dosens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwalproposals`
--
ALTER TABLE `jadwalproposals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jadwaltas`
--
ALTER TABLE `jadwaltas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nilaiketuas`
--
ALTER TABLE `nilaiketuas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `nilaipembimbing2s`
--
ALTER TABLE `nilaipembimbing2s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nilaipenguji1s`
--
ALTER TABLE `nilaipenguji1s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `nilaipenguji2s`
--
ALTER TABLE `nilaipenguji2s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `nilaipenguji3s`
--
ALTER TABLE `nilaipenguji3s`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `nilaitamahasiswas`
--
ALTER TABLE `nilaitamahasiswas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `nilaitas`
--
ALTER TABLE `nilaitas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prodis`
--
ALTER TABLE `prodis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `proposaltas`
--
ALTER TABLE `proposaltas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `ruangs`
--
ALTER TABLE `ruangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sesis`
--
ALTER TABLE `sesis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sidangtas`
--
ALTER TABLE `sidangtas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `validasiproposals`
--
ALTER TABLE `validasiproposals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
