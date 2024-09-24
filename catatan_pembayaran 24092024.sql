-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 03:59 AM
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
-- Database: `catatan_pembayaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_kapal`
--

CREATE TABLE `daftar_kapal` (
  `id` int(11) NOT NULL,
  `nama_kapal` varchar(255) NOT NULL,
  `tipe_kapal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_kapal`
--

INSERT INTO `daftar_kapal` (`id`, `nama_kapal`, `tipe_kapal_id`) VALUES
(1, 'WM 3', 2),
(2, 'WM 5', 2),
(3, 'WM 6', 2),
(4, 'WM 7', 2),
(5, 'WM 8', 2),
(6, 'WM 9', 2),
(7, 'MAJESTIC ULTIMATE', 1),
(8, 'MAJESTIC BLISS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_kapal`
--

CREATE TABLE `data_kapal` (
  `id` int(11) NOT NULL,
  `kapal_id` int(11) NOT NULL,
  `imo` int(11) DEFAULT NULL,
  `call_sign` varchar(255) DEFAULT NULL,
  `mmsi` int(11) DEFAULT NULL,
  `bendera` varchar(255) DEFAULT NULL,
  `kapasitas_penumpang` int(11) DEFAULT NULL,
  `draft_max` decimal(10,2) DEFAULT NULL,
  `draft_depan` decimal(10,2) DEFAULT NULL,
  `draft_belakang` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_kapal`
--

INSERT INTO `data_kapal` (`id`, `kapal_id`, `imo`, `call_sign`, `mmsi`, `bendera`, `kapasitas_penumpang`, `draft_max`, `draft_depan`, `draft_belakang`) VALUES
(1, 1, 9257840, '9V6134', 563049800, 'Singapore', 197, 2.50, 2.00, 2.10),
(2, 2, 9257888, '9V6136', 563002840, 'Singapore', 1, 2.50, 2.00, 2.10),
(3, 3, 9261126, '9V6137', 563002940, 'Singapore', 0, 2.50, 2.00, 2.10),
(4, 4, 9264257, '9V6138', 563070100, 'Singapore', 0, 2.50, 2.00, 2.10),
(5, 5, 9268459, '9V6139', 563026600, 'Singapore', 0, 2.50, 2.00, 2.10),
(6, 6, 9275232, '9V6140', 563003330, 'Singapore', 0, 2.50, 2.00, 2.10),
(7, 7, 1017397, '9V8994', 563218800, 'Singapore', 312, 3.25, 0.90, 2.00),
(8, 8, 1052945, '9V9817', 563229900, 'Singapore', 312, 3.25, 0.90, 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `detail_saldo`
--

CREATE TABLE `detail_saldo` (
  `id` int(11) NOT NULL,
  `cop_karantina` int(11) NOT NULL,
  `phqc_karantina` int(11) NOT NULL,
  `pnbp_labuh` int(11) NOT NULL,
  `pnbp_mc` int(11) NOT NULL,
  `pnbp_rambu` int(11) NOT NULL,
  `buku_kesehatan_karantina` int(11) NOT NULL,
  `total_trip` int(11) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `catatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_saldo`
--

INSERT INTO `detail_saldo` (`id`, `cop_karantina`, `phqc_karantina`, `pnbp_labuh`, `pnbp_mc`, `pnbp_rambu`, `buku_kesehatan_karantina`, `total_trip`, `tanggal_terima`, `catatan`) VALUES
(1, 420000, 180000, 2103900, 270100, 132900, 0, 6, '2024-09-11', ''),
(2, 650000, 270000, 4002800, 360400, 208000, 0, 8, '2024-09-07', ''),
(5, 665000, 275000, 4202350, 360400, 0, 0, 8, '2024-09-14', 'MC sebelumnya kurang 3500 sudah di claim\n4 Trip MB dan 4 TRIP WM\n\nUpdate Claim\n7 Trip MB dan 1 Trip WM'),
(6, 450000, 190000, 2503100, 270000, 0, 100000, 6, '2024-09-18', 'MC sebelumnya kurang 8800\n6 Trip WM\nUpdate \n4 Trip WM 2 Trip MB\nbuku kesehatan karantina sudah di klaim'),
(7, 620000, 260000, 3603600, 360000, 0, 0, 8, '2024-09-21', 'MC sebelumnya sisa 2100');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_kapal`
--

CREATE TABLE `pembayaran_kapal` (
  `id` int(11) NOT NULL,
  `kapal_id` int(11) NOT NULL,
  `tipe_kapal_id` int(11) NOT NULL,
  `tujuan_pembayaran_id` int(11) NOT NULL,
  `status_pembayaran_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `catatan_transaksi` varchar(255) DEFAULT NULL,
  `status_claim` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran_kapal`
--

INSERT INTO `pembayaran_kapal` (`id`, `kapal_id`, `tipe_kapal_id`, `tujuan_pembayaran_id`, `status_pembayaran_id`, `trip_id`, `harga`, `tanggal_transaksi`, `catatan_transaksi`, `status_claim`) VALUES
(1, 6, 2, 1, 1, 1, 70000, '2024-09-12', '', 1),
(2, 6, 2, 2, 1, 1, 30000, '2024-09-12', '', 1),
(3, 6, 2, 3, 1, 1, 350658, '2024-09-12', '', 1),
(4, 6, 2, 4, 1, 1, 45659, '2024-09-12', '', 1),
(5, 6, 2, 1, 1, 2, 70000, '2024-09-11', '', 1),
(6, 6, 2, 2, 1, 2, 30000, '2024-09-11', '', 1),
(7, 6, 2, 3, 1, 2, 350658, '2024-09-11', '', 1),
(9, 6, 2, 1, 1, 1, 70000, '2024-09-11', '', 1),
(10, 6, 2, 2, 1, 1, 30000, '2024-09-11', '', 1),
(11, 6, 2, 3, 1, 1, 350658, '2024-09-11', '', 1),
(12, 6, 2, 4, 1, 1, 45657, '2024-09-11', '', 1),
(13, 1, 2, 1, 1, 2, 70000, '2024-09-10', '', 1),
(14, 1, 2, 2, 1, 2, 30000, '2024-09-10', '', 1),
(15, 1, 2, 3, 1, 2, 350658, '2024-09-10', '', 1),
(16, 1, 2, 4, 1, 2, 45657, '2024-09-10', '', 1),
(17, 1, 2, 4, 1, 1, 45438, '2024-09-10', '', 1),
(18, 1, 2, 1, 1, 1, 70000, '2024-09-10', '', 1),
(19, 1, 2, 2, 1, 1, 30000, '2024-09-10', '', 1),
(20, 1, 2, 3, 1, 1, 350658, '2024-09-10', '', 1),
(21, 6, 2, 5, 1, 1, 132867, '2024-09-11', '', 1),
(22, 8, 1, 4, 1, 2, 45438, '2024-09-09', '', 1),
(23, 8, 1, 2, 1, 2, 35000, '2024-09-09', '', 1),
(24, 8, 1, 1, 1, 2, 85000, '2024-09-09', '', 1),
(25, 8, 1, 3, 1, 2, 550242, '2024-09-09', '', 1),
(26, 8, 1, 3, 1, 1, 550242, '2024-09-09', '', 1),
(27, 8, 1, 4, 1, 1, 45549, '2024-09-09', '', 1),
(28, 8, 1, 2, 1, 1, 35000, '2024-09-09', '', 1),
(29, 8, 1, 1, 1, 1, 85000, '2024-09-09', '', 1),
(30, 8, 1, 3, 1, 2, 550242, '2024-09-08', '', 1),
(31, 8, 1, 2, 1, 2, 35000, '2024-09-08', '', 1),
(32, 8, 1, 1, 1, 2, 85000, '2024-09-08', '', 1),
(33, 8, 1, 4, 1, 2, 45549, '2024-09-08', '', 1),
(34, 8, 1, 4, 1, 1, 45549, '2024-09-08', '', 1),
(35, 8, 1, 2, 1, 1, 35000, '2024-09-08', '', 1),
(36, 8, 1, 3, 1, 1, 550242, '2024-09-08', '', 1),
(37, 8, 1, 1, 1, 1, 85000, '2024-09-08', '', 1),
(38, 8, 1, 4, 1, 2, 45549, '2024-09-07', '', 1),
(39, 8, 1, 5, 1, 2, 208005, '2024-09-07', '', 1),
(40, 8, 1, 3, 1, 2, 550242, '2024-09-07', '', 1),
(41, 8, 1, 2, 1, 2, 35000, '2024-09-07', '', 1),
(42, 8, 1, 1, 1, 2, 85000, '2024-09-07', '', 1),
(43, 8, 1, 3, 1, 1, 550242, '2024-09-07', '', 1),
(44, 8, 1, 1, 1, 1, 85000, '2024-09-07', '', 1),
(45, 8, 1, 2, 1, 1, 35000, '2024-09-07', '', 1),
(46, 8, 1, 4, 1, 1, 45549, '2024-09-07', '', 1),
(47, 6, 2, 1, 1, 2, 70000, '2024-09-12', '', 1),
(48, 6, 2, 2, 1, 2, 30000, '2024-09-12', '', 1),
(49, 6, 2, 3, 1, 2, 350658, '2024-09-12', '', 1),
(50, 6, 2, 4, 1, 2, 45564, '2024-09-12', '', 1),
(51, 6, 2, 1, 1, 1, 70000, '2024-09-13', '', 1),
(52, 6, 2, 2, 1, 1, 30000, '2024-09-13', '', 1),
(53, 6, 2, 3, 1, 1, 350658, '2024-09-13', '', 1),
(54, 6, 2, 4, 1, 1, 45564, '2024-09-13', '', 1),
(55, 6, 2, 1, 1, 2, 70000, '2024-09-13', '', 1),
(56, 6, 2, 2, 1, 2, 30000, '2024-09-13', '', 1),
(57, 6, 2, 3, 1, 2, 350658, '2024-09-13', '', 1),
(58, 6, 2, 4, 1, 2, 45582, '2024-09-13', '', 1),
(61, 8, 0, 3, 1, 1, 550242, '2024-09-14', '', NULL),
(62, 8, 0, 1, 1, 1, 85000, '2024-09-14', '', NULL),
(63, 8, 0, 2, 1, 1, 35000, '2024-09-14', '', NULL),
(64, 8, 0, 4, 1, 1, 45582, '2024-09-14', '', NULL),
(65, 8, 0, 1, 1, 2, 85000, '2024-09-14', '', NULL),
(66, 8, 0, 2, 1, 2, 35000, '2024-09-14', '', NULL),
(67, 8, 0, 3, 1, 2, 550242, '2024-09-14', '', NULL),
(68, 8, 0, 4, 1, 2, 45582, '2024-09-14', '', NULL),
(93, 8, 1, 1, 1, 1, 85000, '2024-09-15', '', 1),
(94, 8, 1, 2, 1, 1, 35000, '2024-09-15', '', 1),
(95, 8, 1, 3, 1, 1, 550242, '2024-09-15', '', 1),
(96, 8, 1, 3, 1, 2, 550242, '2024-09-15', '', 1),
(97, 8, 1, 2, 1, 2, 35000, '2024-09-15', '', 1),
(98, 8, 1, 1, 1, 2, 85000, '2024-09-15', '', 1),
(99, 8, 1, 1, 1, 1, 85000, '2024-09-16', '', 1),
(100, 8, 1, 2, 1, 1, 35000, '2024-09-16', '', 1),
(101, 8, 1, 3, 1, 1, 550242, '2024-09-16', '', 1),
(102, 8, 1, 3, 1, 2, 550242, '2024-09-16', '', 1),
(103, 8, 1, 2, 1, 2, 35000, '2024-09-16', '', 1),
(104, 8, 1, 1, 1, 2, 85000, '2024-09-16', '', 1),
(105, 8, 1, 1, 1, 1, 85000, '2024-09-17', '', 1),
(106, 8, 1, 2, 1, 1, 35000, '2024-09-17', '', 1),
(107, 8, 1, 3, 1, 1, 550242, '2024-09-17', '', 1),
(108, 6, 2, 1, 1, 2, 70000, '2024-09-17', '', 1),
(109, 6, 2, 2, 1, 2, 30000, '2024-09-17', '', 1),
(110, 6, 2, 3, 1, 2, 350658, '2024-09-17', '', 1),
(111, 6, 2, 4, 1, 2, 45535, '2024-09-17', '', 1),
(112, 8, 1, 4, 1, 1, 45582, '2024-09-17', '', 1),
(113, 8, 1, 4, 1, 2, 45582, '2024-09-16', '', 1),
(114, 8, 1, 4, 1, 1, 45582, '2024-09-16', '', 1),
(115, 8, 1, 4, 1, 2, 50140, '2024-09-15', '', 1),
(116, 8, 1, 4, 1, 1, 45582, '2024-09-15', '', 1),
(117, 6, 0, 1, 1, 1, 70000, '2024-09-18', '', NULL),
(118, 6, 0, 2, 1, 1, 30000, '2024-09-18', '', NULL),
(119, 6, 0, 3, 1, 1, 350658, '2024-09-18', '', NULL),
(120, 6, 2, 4, 1, 1, 45535, '2024-09-18', '', 1),
(121, 6, 0, 4, 1, 2, 45337, '2024-09-18', '', NULL),
(122, 6, 0, 1, 1, 2, 70000, '2024-09-18', '', NULL),
(123, 6, 0, 2, 1, 2, 30000, '2024-09-18', '', NULL),
(124, 6, 0, 3, 1, 2, 350658, '2024-09-18', '', NULL),
(125, 6, 0, 1, 1, 1, 70000, '2024-09-19', '', NULL),
(126, 6, 0, 2, 1, 1, 30000, '2024-09-19', '', NULL),
(128, 6, 0, 6, 1, 2, 100000, '2024-09-18', '', NULL),
(131, 6, 0, 3, 1, 1, 350658, '2024-09-19', '', NULL),
(132, 6, 0, 1, 1, 2, 70000, '2024-09-19', '', NULL),
(133, 6, 0, 2, 1, 2, 30000, '2024-09-19', '', NULL),
(134, 6, 0, 3, 1, 2, 350658, '2024-09-19', '', NULL),
(135, 6, 0, 4, 1, 1, 45337, '2024-09-19', '', NULL),
(136, 6, 0, 4, 1, 2, 45372, '2024-09-19', '', NULL),
(137, 8, 1, 1, 1, 1, 85000, '2024-09-20', '', 1),
(138, 8, 1, 2, 1, 1, 35000, '2024-09-20', '', 1),
(139, 8, 1, 3, 1, 1, 550242, '2024-09-20', '', 1),
(140, 8, 1, 4, 1, 1, 45372, '2024-09-20', '', 1),
(141, 8, 1, 1, 1, 2, 85000, '2024-09-20', '', 1),
(142, 8, 1, 2, 1, 2, 35000, '2024-09-20', '', 1),
(143, 8, 1, 3, 1, 2, 550242, '2024-09-20', '', 1),
(144, 8, 0, 4, 1, 2, 45187, '2024-09-20', '', NULL),
(145, 8, 0, 1, 1, 1, 85000, '2024-09-21', '', NULL),
(146, 8, 0, 2, 1, 1, 35000, '2024-09-21', '', NULL),
(147, 8, 0, 3, 1, 1, 550242, '2024-09-21', '', NULL),
(148, 8, 0, 4, 1, 1, 45187, '2024-09-21', '', NULL),
(153, 8, 0, 1, 1, 2, 85000, '2024-09-21', '', NULL),
(154, 8, 0, 2, 1, 2, 35000, '2024-09-21', '', NULL),
(155, 8, 0, 3, 1, 2, 550242, '2024-09-21', '', NULL),
(157, 8, 0, 4, 1, 2, 45187, '2024-09-21', '', NULL),
(158, 8, 0, 1, 1, 1, 85000, '2024-09-22', '', NULL),
(159, 8, 0, 2, 1, 1, 35000, '2024-09-22', '', NULL),
(160, 8, 0, 3, 1, 1, 550242, '2024-09-22', '', NULL),
(161, 8, 0, 4, 1, 1, 45187, '2024-09-22', '', NULL),
(162, 8, 0, 1, 1, 2, 85000, '2024-09-22', '', NULL),
(163, 8, 0, 2, 1, 2, 35000, '2024-09-22', '', NULL),
(164, 8, 0, 3, 1, 2, 550242, '2024-09-22', '', NULL),
(165, 1, 0, 1, 1, 1, 70000, '2024-09-23', '', NULL),
(166, 8, 0, 4, 1, 2, 45187, '2024-09-22', '', NULL),
(167, 1, 0, 2, 1, 1, 30000, '2024-09-23', '', NULL),
(168, 1, 0, 3, 1, 1, 350658, '2024-09-23', '', NULL),
(169, 1, 0, 4, 1, 1, 45187, '2024-09-23', '', NULL),
(170, 1, 0, 1, 1, 2, 70000, '2024-09-23', '', NULL),
(171, 1, 0, 2, 1, 2, 30000, '2024-09-23', '', NULL),
(172, 1, 0, 3, 1, 2, 350658, '2024-09-23', '', NULL),
(173, 1, 0, 4, 1, 2, 44633, '2024-09-23', '', NULL),
(174, 1, 0, 1, 1, 1, 70000, '2024-09-24', '', NULL),
(175, 1, 0, 2, 1, 1, 30000, '2024-09-24', '', NULL),
(176, 1, 0, 3, 1, 1, 350658, '2024-09-24', '', NULL),
(177, 1, 0, 4, 1, 1, 44633, '2024-09-24', '', NULL),
(178, 1, 0, 1, 1, 2, 70000, '2024-09-24', '', NULL),
(179, 1, 0, 2, 1, 2, 30000, '2024-09-24', '', NULL),
(180, 1, 0, 3, 1, 2, 350658, '2024-09-24', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pkka_kapal`
--

CREATE TABLE `pkka_kapal` (
  `id` int(11) NOT NULL,
  `kapal_id` int(11) NOT NULL,
  `nomor_trayek` varchar(255) NOT NULL,
  `berlaku_dari` date NOT NULL,
  `berlaku_sampai` date NOT NULL,
  `masa_berlaku` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pkka_kapal`
--

INSERT INTO `pkka_kapal` (`id`, `kapal_id`, `nomor_trayek`, `berlaku_dari`, `berlaku_sampai`, `masa_berlaku`) VALUES
(21, 8, 'AL.203/2000/03099/180942/24', '2024-09-01', '2024-09-16', '9/1/2024 - 9/16/2024'),
(22, 7, 'AL.203/2000/03093/180940/24', '2024-08-28', '2024-09-12', '8/28/2024 - 9/12/2024'),
(23, 8, 'AL.203/2000/03100/180951/24', '2024-09-15', '2024-09-30', '9/15/2024 - 9/30/2024'),
(24, 1, 'AL.203/2000/03119/181087/24', '2024-09-15', '2024-09-30', '9/15/2024 - 9/30/2024'),
(25, 2, 'AL.203/2000/03105/181028/24', '2024-09-15', '2024-09-30', '9/15/2024 - 9/30/2024'),
(26, 3, 'AL.203/2000/03107/181030/24', '2024-09-15', '2024-09-30', '9/15/2024 - 9/30/2024'),
(27, 4, 'AL.203/2000/03109/181073/24', '2024-09-15', '2024-09-30', '9/15/2024 - 9/30/2024'),
(28, 5, 'AL.203/2000/03112/181074/24', '2024-09-15', '2024-09-30', '9/15/2024 - 9/30/2024'),
(29, 6, 'AL.203/2000/03114/181042/24', '2024-09-15', '2024-09-30', '9/15/2024 - 9/30/2024'),
(30, 7, 'AL.203/2000/03096/181257/24', '2024-09-13', '2024-09-28', '9/13/2024 - 9/28/2024');

-- --------------------------------------------------------

--
-- Table structure for table `status_pembayaran`
--

CREATE TABLE `status_pembayaran` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_pembayaran`
--

INSERT INTO `status_pembayaran` (`id`, `status`) VALUES
(1, 'BERHASIL'),
(2, 'PENDING'),
(3, 'GAGAL');

-- --------------------------------------------------------

--
-- Table structure for table `tipe_kapal`
--

CREATE TABLE `tipe_kapal` (
  `id` int(11) NOT NULL,
  `nama_tipe` varchar(50) NOT NULL,
  `harga_cop` int(11) DEFAULT NULL,
  `harga_phqc` int(11) DEFAULT NULL,
  `harga_labuh` int(11) DEFAULT NULL,
  `harga_buku_kesehatan_karantina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tipe_kapal`
--

INSERT INTO `tipe_kapal` (`id`, `nama_tipe`, `harga_cop`, `harga_phqc`, `harga_labuh`, `harga_buku_kesehatan_karantina`) VALUES
(1, 'MAJESTIC', NULL, NULL, NULL, NULL),
(2, 'WAVEMASTER', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trip_kapal`
--

CREATE TABLE `trip_kapal` (
  `id` int(11) NOT NULL,
  `waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip_kapal`
--

INSERT INTO `trip_kapal` (`id`, `waktu`) VALUES
(1, '07:30:00'),
(2, '13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tujuan_pembayaran`
--

CREATE TABLE `tujuan_pembayaran` (
  `id` int(11) NOT NULL,
  `nama_tujuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tujuan_pembayaran`
--

INSERT INTO `tujuan_pembayaran` (`id`, `nama_tujuan`) VALUES
(1, 'COP Karantina'),
(2, 'PHQC Karantina'),
(3, 'PNBP LABUH'),
(4, 'PNBP MASTER CABLE (MC)'),
(5, 'PNBP RAMBU'),
(6, 'Buku Kesehatan Karantina');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_kapal`
--
ALTER TABLE `daftar_kapal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_kapal`
--
ALTER TABLE `data_kapal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_saldo`
--
ALTER TABLE `detail_saldo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran_kapal`
--
ALTER TABLE `pembayaran_kapal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkka_kapal`
--
ALTER TABLE `pkka_kapal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_pembayaran`
--
ALTER TABLE `status_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipe_kapal`
--
ALTER TABLE `tipe_kapal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_kapal`
--
ALTER TABLE `trip_kapal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tujuan_pembayaran`
--
ALTER TABLE `tujuan_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_kapal`
--
ALTER TABLE `daftar_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `data_kapal`
--
ALTER TABLE `data_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `detail_saldo`
--
ALTER TABLE `detail_saldo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pembayaran_kapal`
--
ALTER TABLE `pembayaran_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `pkka_kapal`
--
ALTER TABLE `pkka_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `status_pembayaran`
--
ALTER TABLE `status_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipe_kapal`
--
ALTER TABLE `tipe_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trip_kapal`
--
ALTER TABLE `trip_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tujuan_pembayaran`
--
ALTER TABLE `tujuan_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
