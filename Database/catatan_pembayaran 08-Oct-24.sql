-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2024 at 10:49 AM
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
(2, 2, 9257888, '9V6136', 563002840, 'Singapore', 197, 2.50, 2.00, 2.10),
(3, 3, 9261126, '9V6137', 563002940, 'Singapore', 168, 2.50, 2.00, 2.10),
(4, 4, 9264257, '9V6138', 563070100, 'Singapore', 197, 2.50, 2.00, 2.10),
(5, 5, 9268459, '9V6139', 563026600, 'Singapore', 168, 2.50, 2.00, 2.10),
(6, 6, 9275232, '9V6140', 563003330, 'Singapore', 197, 2.50, 2.00, 2.10),
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
(7, 620000, 260000, 3603600, 360000, 0, 0, 8, '2024-09-21', 'MC sebelumnya sisa 2100'),
(12, 450000, 190000, 2503116, 267400, 0, 0, 6, '2024-09-25', 'Sisa MC sebelumnya 104, Update 4Trip WM 2 TRIP MB'),
(13, 650000, 270000, 4002768, 352400, 204400, 0, 8, '2024-09-28', 'MC sebelumnya sisa 1340, UPdate 6 Trip WM 2 Trip MU'),
(14, 420000, 180000, 2103948, 267500, 0, 0, 6, '2024-10-02', 'Sisa MC sebelumnya -6068'),
(15, 590000, 250000, 3204432, 356000, 0, 0, 8, '2024-10-05', 'MC sebelumnya ada lebih +1700'),
(16, 420000, 180000, 2103948, 276400, 0, 0, 6, '2024-10-09', 'MC sebelumnya kurang 7800, tapi di titip jadi total mc yang di terima 284200, Rambu sudah lunas');

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
  `user_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `catatan_transaksi` varchar(255) DEFAULT NULL,
  `status_claim` int(11) DEFAULT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran_kapal`
--

INSERT INTO `pembayaran_kapal` (`id`, `kapal_id`, `tipe_kapal_id`, `tujuan_pembayaran_id`, `status_pembayaran_id`, `trip_id`, `user_id`, `harga`, `tanggal_transaksi`, `catatan_transaksi`, `status_claim`, `bukti_pembayaran`) VALUES
(1, 6, 2, 1, 1, 1, 0, 70000, '2024-09-12', '', 1, NULL),
(2, 6, 2, 2, 1, 1, 0, 30000, '2024-09-12', '', 1, NULL),
(4, 6, 2, 4, 1, 1, 0, 45659, '2024-09-12', '', 1, NULL),
(5, 6, 2, 1, 1, 2, 0, 70000, '2024-09-11', '', 1, NULL),
(6, 6, 2, 2, 1, 2, 0, 30000, '2024-09-11', '', 1, NULL),
(7, 6, 2, 3, 1, 2, 0, 350658, '2024-09-11', '', 1, NULL),
(9, 6, 2, 1, 1, 1, 0, 70000, '2024-09-11', '', 1, NULL),
(10, 6, 2, 2, 1, 1, 0, 30000, '2024-09-11', '', 1, NULL),
(11, 6, 2, 3, 1, 1, 0, 350658, '2024-09-11', '', 1, NULL),
(12, 6, 2, 4, 1, 1, 0, 45657, '2024-09-11', '', 1, NULL),
(13, 1, 2, 1, 1, 2, 0, 70000, '2024-09-10', '', 1, NULL),
(14, 1, 2, 2, 1, 2, 0, 30000, '2024-09-10', '', 1, NULL),
(15, 1, 2, 3, 1, 2, 0, 350658, '2024-09-10', '', 1, NULL),
(16, 1, 2, 4, 1, 2, 0, 45657, '2024-09-10', '', 1, NULL),
(17, 1, 2, 4, 1, 1, 0, 45438, '2024-09-10', '', 1, NULL),
(18, 1, 2, 1, 1, 1, 0, 70000, '2024-09-10', '', 1, NULL),
(19, 1, 2, 2, 1, 1, 0, 30000, '2024-09-10', '', 1, NULL),
(20, 1, 2, 3, 1, 1, 0, 350658, '2024-09-10', '', 1, NULL),
(21, 6, 2, 5, 1, 1, 0, 132867, '2024-09-11', '', 1, NULL),
(22, 8, 1, 4, 1, 2, 0, 45438, '2024-09-09', '', 1, NULL),
(23, 8, 1, 2, 1, 2, 0, 35000, '2024-09-09', '', 1, NULL),
(24, 8, 1, 1, 1, 2, 0, 85000, '2024-09-09', '', 1, NULL),
(25, 8, 1, 3, 1, 2, 0, 550242, '2024-09-09', '', 1, NULL),
(26, 8, 1, 3, 1, 1, 0, 550242, '2024-09-09', '', 1, NULL),
(27, 8, 1, 4, 1, 1, 0, 45549, '2024-09-09', '', 1, NULL),
(28, 8, 1, 2, 1, 1, 0, 35000, '2024-09-09', '', 1, NULL),
(29, 8, 1, 1, 1, 1, 0, 85000, '2024-09-09', '', 1, NULL),
(30, 8, 1, 3, 1, 2, 0, 550242, '2024-09-08', '', 1, NULL),
(31, 8, 1, 2, 1, 2, 0, 35000, '2024-09-08', '', 1, NULL),
(32, 8, 1, 1, 1, 2, 0, 85000, '2024-09-08', '', 1, NULL),
(33, 8, 1, 4, 1, 2, 0, 45549, '2024-09-08', '', 1, NULL),
(34, 8, 1, 4, 1, 1, 0, 45549, '2024-09-08', '', 1, NULL),
(35, 8, 1, 2, 1, 1, 0, 35000, '2024-09-08', '', 1, NULL),
(36, 8, 1, 3, 1, 1, 0, 550242, '2024-09-08', '', 1, NULL),
(37, 8, 1, 1, 1, 1, 0, 85000, '2024-09-08', '', 1, NULL),
(38, 8, 1, 4, 1, 2, 0, 45549, '2024-09-07', '', 1, NULL),
(39, 8, 1, 5, 1, 2, 0, 208005, '2024-09-07', '', 1, NULL),
(40, 8, 1, 3, 1, 2, 0, 550242, '2024-09-07', '', 1, NULL),
(41, 8, 1, 2, 1, 2, 0, 35000, '2024-09-07', '', 1, NULL),
(42, 8, 1, 1, 1, 2, 0, 85000, '2024-09-07', '', 1, NULL),
(43, 8, 1, 3, 1, 1, 0, 550242, '2024-09-07', '', 1, NULL),
(44, 8, 1, 1, 1, 1, 0, 85000, '2024-09-07', '', 1, NULL),
(45, 8, 1, 2, 1, 1, 0, 35000, '2024-09-07', '', 1, NULL),
(46, 8, 1, 4, 1, 1, 0, 45549, '2024-09-07', '', 1, NULL),
(47, 6, 2, 1, 1, 2, 0, 70000, '2024-09-12', '', 1, NULL),
(48, 6, 2, 2, 1, 2, 0, 30000, '2024-09-12', '', 1, NULL),
(49, 6, 2, 3, 1, 2, 0, 350658, '2024-09-12', '', 1, NULL),
(50, 6, 2, 4, 1, 2, 0, 45564, '2024-09-12', '', 1, NULL),
(51, 6, 2, 1, 1, 1, 0, 70000, '2024-09-13', '', 1, NULL),
(52, 6, 2, 2, 1, 1, 0, 30000, '2024-09-13', '', 1, NULL),
(53, 6, 2, 3, 1, 1, 0, 350658, '2024-09-13', '', 1, NULL),
(54, 6, 2, 4, 1, 1, 0, 45564, '2024-09-13', '', 1, NULL),
(55, 6, 2, 1, 1, 2, 0, 70000, '2024-09-13', '', 1, NULL),
(56, 6, 2, 2, 1, 2, 0, 30000, '2024-09-13', '', 1, NULL),
(57, 6, 2, 3, 1, 2, 0, 350658, '2024-09-13', '', 1, NULL),
(58, 6, 2, 4, 1, 2, 0, 45582, '2024-09-13', '', 1, NULL),
(61, 8, 0, 3, 1, 1, 0, 550242, '2024-09-14', '', NULL, NULL),
(62, 8, 0, 1, 1, 1, 0, 85000, '2024-09-14', '', NULL, NULL),
(63, 8, 0, 2, 1, 1, 0, 35000, '2024-09-14', '', NULL, NULL),
(64, 8, 0, 4, 1, 1, 0, 45582, '2024-09-14', '', NULL, NULL),
(65, 8, 0, 1, 1, 2, 0, 85000, '2024-09-14', '', NULL, NULL),
(66, 8, 0, 2, 1, 2, 0, 35000, '2024-09-14', '', NULL, NULL),
(67, 8, 0, 3, 1, 2, 0, 550242, '2024-09-14', '', NULL, NULL),
(68, 8, 0, 4, 1, 2, 0, 45582, '2024-09-14', '', NULL, NULL),
(93, 8, 1, 1, 1, 1, 0, 85000, '2024-09-15', '', 1, NULL),
(94, 8, 1, 2, 1, 1, 0, 35000, '2024-09-15', '', 1, NULL),
(95, 8, 1, 3, 1, 1, 0, 550242, '2024-09-15', '', 1, NULL),
(96, 8, 1, 3, 1, 2, 0, 550242, '2024-09-15', '', 1, NULL),
(97, 8, 1, 2, 1, 2, 0, 35000, '2024-09-15', '', 1, NULL),
(98, 8, 1, 1, 1, 2, 0, 85000, '2024-09-15', '', 1, NULL),
(99, 8, 1, 1, 1, 1, 0, 85000, '2024-09-16', '', 1, NULL),
(100, 8, 1, 2, 1, 1, 0, 35000, '2024-09-16', '', 1, NULL),
(101, 8, 1, 3, 1, 1, 0, 550242, '2024-09-16', '', 1, NULL),
(102, 8, 1, 3, 1, 2, 0, 550242, '2024-09-16', '', 1, NULL),
(103, 8, 1, 2, 1, 2, 0, 35000, '2024-09-16', '', 1, NULL),
(104, 8, 1, 1, 1, 2, 0, 85000, '2024-09-16', '', 1, NULL),
(105, 8, 1, 1, 1, 1, 0, 85000, '2024-09-17', '', 1, NULL),
(106, 8, 1, 2, 1, 1, 0, 35000, '2024-09-17', '', 1, NULL),
(107, 8, 1, 3, 1, 1, 0, 550242, '2024-09-17', '', 1, NULL),
(108, 6, 2, 1, 1, 2, 0, 70000, '2024-09-17', '', 1, NULL),
(109, 6, 2, 2, 1, 2, 0, 30000, '2024-09-17', '', 1, NULL),
(110, 6, 2, 3, 1, 2, 0, 350658, '2024-09-17', '', 1, NULL),
(111, 6, 2, 4, 1, 2, 0, 45535, '2024-09-17', '', 1, NULL),
(112, 8, 1, 4, 1, 1, 0, 45582, '2024-09-17', '', 1, NULL),
(113, 8, 1, 4, 1, 2, 0, 45582, '2024-09-16', '', 1, NULL),
(114, 8, 1, 4, 1, 1, 0, 45582, '2024-09-16', '', 1, NULL),
(115, 8, 1, 4, 1, 2, 0, 50140, '2024-09-15', '', 1, NULL),
(116, 8, 1, 4, 1, 1, 0, 45582, '2024-09-15', '', 1, NULL),
(117, 6, 0, 1, 1, 1, 0, 70000, '2024-09-18', '', NULL, NULL),
(118, 6, 0, 2, 1, 1, 0, 30000, '2024-09-18', '', NULL, NULL),
(119, 6, 0, 3, 1, 1, 0, 350658, '2024-09-18', '', NULL, NULL),
(120, 6, 2, 4, 1, 1, 0, 45535, '2024-09-18', '', 1, NULL),
(121, 6, 0, 4, 1, 2, 0, 45337, '2024-09-18', '', NULL, NULL),
(122, 6, 0, 1, 1, 2, 0, 70000, '2024-09-18', '', NULL, NULL),
(123, 6, 0, 2, 1, 2, 0, 30000, '2024-09-18', '', NULL, NULL),
(124, 6, 0, 3, 1, 2, 0, 350658, '2024-09-18', '', NULL, NULL),
(125, 6, 0, 1, 1, 1, 0, 70000, '2024-09-19', '', NULL, NULL),
(126, 6, 0, 2, 1, 1, 0, 30000, '2024-09-19', '', NULL, NULL),
(128, 6, 0, 6, 1, 2, 0, 100000, '2024-09-18', '', NULL, NULL),
(131, 6, 0, 3, 1, 1, 0, 350658, '2024-09-19', '', NULL, NULL),
(132, 6, 0, 1, 1, 2, 0, 70000, '2024-09-19', '', NULL, NULL),
(133, 6, 0, 2, 1, 2, 0, 30000, '2024-09-19', '', NULL, NULL),
(134, 6, 0, 3, 1, 2, 0, 350658, '2024-09-19', '', NULL, NULL),
(135, 6, 0, 4, 1, 1, 0, 45337, '2024-09-19', '', NULL, NULL),
(136, 6, 0, 4, 1, 2, 0, 45372, '2024-09-19', '', NULL, NULL),
(137, 8, 1, 1, 1, 1, 0, 85000, '2024-09-20', '', 1, NULL),
(138, 8, 1, 2, 1, 1, 0, 35000, '2024-09-20', '', 1, NULL),
(139, 8, 1, 3, 1, 1, 0, 550242, '2024-09-20', '', 1, NULL),
(140, 8, 1, 4, 1, 1, 0, 45372, '2024-09-20', '', 1, NULL),
(141, 8, 1, 1, 1, 2, 0, 85000, '2024-09-20', '', 1, NULL),
(142, 8, 1, 2, 1, 2, 0, 35000, '2024-09-20', '', 1, NULL),
(143, 8, 1, 3, 1, 2, 0, 550242, '2024-09-20', '', 1, NULL),
(144, 8, 0, 4, 1, 2, 0, 45187, '2024-09-20', '', NULL, NULL),
(145, 8, 0, 1, 1, 1, 0, 85000, '2024-09-21', '', NULL, NULL),
(146, 8, 0, 2, 1, 1, 0, 35000, '2024-09-21', '', NULL, NULL),
(147, 8, 0, 3, 1, 1, 0, 550242, '2024-09-21', '', NULL, NULL),
(148, 8, 0, 4, 1, 1, 0, 45187, '2024-09-21', '', NULL, NULL),
(153, 8, 0, 1, 1, 2, 0, 85000, '2024-09-21', '', NULL, NULL),
(154, 8, 0, 2, 1, 2, 0, 35000, '2024-09-21', '', NULL, NULL),
(155, 8, 0, 3, 1, 2, 0, 550242, '2024-09-21', '', NULL, NULL),
(157, 8, 0, 4, 1, 2, 0, 45187, '2024-09-21', '', NULL, NULL),
(158, 8, 0, 1, 1, 1, 0, 85000, '2024-09-22', '', NULL, NULL),
(159, 8, 0, 2, 1, 1, 0, 35000, '2024-09-22', '', NULL, NULL),
(160, 8, 0, 3, 1, 1, 0, 550242, '2024-09-22', '', NULL, NULL),
(161, 8, 0, 4, 1, 1, 0, 45187, '2024-09-22', '', NULL, NULL),
(162, 8, 0, 1, 1, 2, 0, 85000, '2024-09-22', '', NULL, NULL),
(163, 8, 0, 2, 1, 2, 0, 35000, '2024-09-22', '', NULL, NULL),
(164, 8, 0, 3, 1, 2, 0, 550242, '2024-09-22', '', NULL, NULL),
(165, 1, 0, 1, 1, 1, 0, 70000, '2024-09-23', '', NULL, NULL),
(166, 8, 0, 4, 1, 2, 0, 45187, '2024-09-22', '', NULL, NULL),
(167, 1, 0, 2, 1, 1, 0, 30000, '2024-09-23', '', NULL, NULL),
(168, 1, 0, 3, 1, 1, 0, 350658, '2024-09-23', '', NULL, NULL),
(169, 1, 0, 4, 1, 1, 0, 45187, '2024-09-23', '', NULL, NULL),
(170, 1, 0, 1, 1, 2, 0, 70000, '2024-09-23', '', NULL, NULL),
(171, 1, 0, 2, 1, 2, 0, 30000, '2024-09-23', '', NULL, NULL),
(172, 1, 0, 3, 1, 2, 0, 350658, '2024-09-23', '', NULL, NULL),
(173, 1, 0, 4, 1, 2, 0, 44633, '2024-09-23', '', NULL, NULL),
(174, 1, 0, 1, 1, 1, 0, 70000, '2024-09-24', '', NULL, NULL),
(175, 1, 0, 2, 1, 1, 0, 30000, '2024-09-24', '', NULL, NULL),
(176, 1, 0, 3, 1, 1, 0, 350658, '2024-09-24', '', NULL, NULL),
(177, 1, 0, 4, 1, 1, 0, 44633, '2024-09-24', '', NULL, NULL),
(178, 1, 0, 1, 1, 2, 0, 70000, '2024-09-24', '', NULL, NULL),
(179, 1, 0, 2, 1, 2, 0, 30000, '2024-09-24', '', NULL, NULL),
(180, 1, 0, 3, 1, 2, 0, 350658, '2024-09-24', '', NULL, NULL),
(181, 1, 0, 4, 1, 2, 0, 44903, '2024-09-24', '', NULL, NULL),
(182, 1, 0, 1, 1, 1, 0, 70000, '2024-09-25', '', NULL, NULL),
(183, 1, 0, 2, 1, 1, 0, 30000, '2024-09-25', '', NULL, NULL),
(184, 1, 0, 3, 1, 1, 0, 350658, '2024-09-25', '', NULL, NULL),
(185, 1, 0, 4, 1, 1, 0, 44903, '2024-09-25', '', NULL, NULL),
(186, 1, 0, 1, 1, 2, 0, 70000, '2024-09-25', '', NULL, NULL),
(187, 1, 0, 2, 1, 2, 0, 30000, '2024-09-25', '', NULL, NULL),
(188, 1, 0, 3, 1, 2, 0, 350658, '2024-09-25', '', NULL, NULL),
(189, 1, 0, 4, 1, 2, 0, 44888, '2024-09-25', '', NULL, NULL),
(190, 1, 0, 1, 1, 1, 0, 70000, '2024-09-26', '', NULL, NULL),
(191, 1, 0, 2, 1, 1, 0, 30000, '2024-09-26', '', NULL, NULL),
(192, 1, 0, 3, 1, 1, 0, 350658, '2024-09-26', '', NULL, NULL),
(193, 1, 0, 4, 1, 1, 0, 44888, '2024-09-26', '', NULL, NULL),
(194, 1, 0, 1, 1, 2, 0, 70000, '2024-09-26', '', NULL, NULL),
(195, 1, 0, 2, 1, 2, 0, 30000, '2024-09-26', '', NULL, NULL),
(196, 1, 0, 3, 1, 2, 0, 350658, '2024-09-26', '', NULL, NULL),
(197, 1, 0, 4, 1, 2, 0, 44609, '2024-09-26', '', NULL, NULL),
(198, 8, 0, 1, 1, 1, 0, 85000, '2024-09-27', '', NULL, NULL),
(199, 8, 0, 2, 1, 1, 0, 35000, '2024-09-27', '', NULL, NULL),
(200, 8, 0, 3, 1, 1, 0, 550242, '2024-09-27', '', NULL, NULL),
(201, 8, 0, 1, 1, 2, 0, 85000, '2024-09-27', '', NULL, NULL),
(202, 8, 0, 2, 1, 2, 0, 35000, '2024-09-27', '', NULL, NULL),
(203, 8, 0, 3, 1, 2, 0, 550242, '2024-09-27', '', NULL, NULL),
(204, 8, 0, 4, 1, 1, 0, 44609, '2024-09-27', '', NULL, NULL),
(205, 8, 0, 4, 1, 2, 0, 44843, '2024-09-27', '', NULL, NULL),
(206, 8, 0, 1, 1, 1, 0, 85000, '2024-09-28', '', NULL, NULL),
(207, 8, 0, 2, 1, 1, 0, 35000, '2024-09-28', '', NULL, NULL),
(208, 8, 0, 3, 1, 1, 0, 550242, '2024-09-28', '', NULL, NULL),
(209, 8, 0, 1, 1, 2, 0, 85000, '2024-09-28', '', NULL, NULL),
(210, 8, 0, 2, 1, 2, 0, 35000, '2024-09-28', '', NULL, NULL),
(211, 8, 0, 3, 1, 2, 0, 550242, '2024-09-28', '', NULL, NULL),
(212, 8, 0, 4, 1, 1, 0, 44843, '2024-09-28', '', NULL, NULL),
(213, 8, 0, 4, 1, 2, 0, 44843, '2024-09-28', '', NULL, NULL),
(214, 8, 0, 4, 1, 1, 0, 44843, '2024-09-29', '', NULL, NULL),
(215, 8, 0, 1, 1, 1, 0, 85000, '2024-09-29', '', NULL, NULL),
(216, 8, 0, 2, 1, 1, 0, 35000, '2024-09-29', '', NULL, NULL),
(217, 8, 0, 3, 1, 1, 0, 550242, '2024-09-29', '', NULL, NULL),
(218, 8, 0, 1, 1, 2, 0, 85000, '2024-09-29', '', NULL, NULL),
(219, 8, 0, 2, 1, 2, 0, 35000, '2024-09-29', '', NULL, NULL),
(220, 8, 0, 3, 1, 2, 0, 550242, '2024-09-29', '', NULL, NULL),
(221, 8, 0, 4, 2, 2, 0, 44843, '2024-09-29', 'Pembayaran di DANA PENDING jadi pakai Gopay', NULL, NULL),
(222, 6, 0, 1, 1, 1, 0, 70000, '2024-09-30', '', NULL, NULL),
(223, 6, 0, 2, 1, 1, 0, 30000, '2024-09-30', '', NULL, NULL),
(225, 6, 0, 1, 1, 2, 0, 70000, '2024-09-30', '', NULL, NULL),
(226, 6, 0, 2, 1, 2, 0, 30000, '2024-09-30', '', NULL, NULL),
(227, 6, 0, 3, 1, 2, 0, 350658, '2024-09-30', '', NULL, NULL),
(228, 6, 0, 3, 1, 1, 0, 350658, '2024-09-30', '', NULL, NULL),
(229, 6, 0, 4, 1, 1, 0, 44843, '2024-09-30', '', NULL, NULL),
(230, 6, 0, 4, 1, 2, 0, 44745, '2024-09-30', '', NULL, NULL),
(231, 7, 0, 1, 1, 1, 0, 85000, '2024-10-01', '', NULL, NULL),
(232, 7, 0, 2, 1, 1, 0, 35000, '2024-10-01', '', NULL, NULL),
(233, 7, 0, 3, 1, 1, 0, 550242, '2024-10-01', '', NULL, NULL),
(234, 7, 0, 4, 1, 1, 0, 44745, '2024-10-01', '', NULL, NULL),
(235, 7, 0, 5, 1, 1, 0, 204333, '2024-10-01', '', NULL, NULL),
(236, 7, 0, 1, 1, 2, 0, 85000, '2024-10-01', '', NULL, NULL),
(237, 7, 0, 2, 1, 2, 0, 35000, '2024-10-01', '', NULL, NULL),
(238, 7, 0, 3, 1, 2, 0, 550242, '2024-10-01', '', NULL, NULL),
(239, 7, 0, 4, 1, 2, 0, 44763, '2024-10-01', '', NULL, NULL),
(240, 6, 0, 1, 1, 1, 0, 70000, '2024-10-02', '', NULL, NULL),
(241, 6, 0, 2, 1, 1, 0, 30000, '2024-10-02', '', NULL, NULL),
(242, 6, 0, 3, 1, 1, 0, 350658, '2024-10-02', '', NULL, NULL),
(243, 6, 0, 4, 1, 1, 0, 44763, '2024-10-02', '', NULL, NULL),
(244, 6, 0, 1, 1, 2, 0, 70000, '2024-10-02', '', NULL, NULL),
(245, 6, 0, 2, 1, 2, 0, 30000, '2024-10-02', '', NULL, NULL),
(246, 6, 0, 3, 1, 2, 0, 350658, '2024-10-02', '', NULL, NULL),
(247, 6, 0, 4, 1, 2, 0, 44940, '2024-10-02', '', NULL, NULL),
(248, 6, 0, 1, 1, 1, 0, 70000, '2024-10-03', '', NULL, NULL),
(249, 6, 0, 2, 1, 1, 0, 30000, '2024-10-03', '', NULL, NULL),
(250, 6, 0, 3, 1, 1, 0, 350658, '2024-10-03', '', NULL, NULL),
(251, 6, 0, 1, 1, 2, 0, 70000, '2024-10-03', '', NULL, NULL),
(252, 6, 0, 2, 1, 2, 0, 30000, '2024-10-03', '', NULL, NULL),
(253, 6, 0, 3, 1, 2, 0, 350658, '2024-10-03', '', NULL, NULL),
(254, 6, 0, 4, 1, 1, 0, 44940, '2024-10-03', '', NULL, NULL),
(255, 6, 0, 4, 1, 2, 0, 45068, '2024-10-03', '', NULL, NULL),
(256, 6, 0, 1, 1, 1, 0, 70000, '2024-10-04', '', NULL, NULL),
(257, 6, 0, 2, 1, 1, 0, 30000, '2024-10-04', '', NULL, NULL),
(258, 6, 0, 3, 1, 1, 0, 350658, '2024-10-04', '', NULL, NULL),
(259, 6, 0, 4, 1, 1, 0, 40562, '2024-10-04', '', NULL, NULL),
(260, 6, 0, 4, 1, 2, 0, 45503, '2024-10-04', '', NULL, NULL),
(261, 6, 0, 1, 1, 2, 0, 70000, '2024-10-04', '', NULL, NULL),
(262, 6, 0, 2, 1, 2, 0, 30000, '2024-10-04', '', NULL, NULL),
(263, 6, 0, 3, 1, 2, 0, 350658, '2024-10-04', '', NULL, NULL),
(265, 6, 0, 2, 1, 1, 0, 30000, '2024-10-05', '', NULL, NULL),
(266, 6, 0, 3, 1, 1, 0, 350658, '2024-10-05', '', NULL, NULL),
(267, 6, 0, 1, 1, 1, 0, 70000, '2024-10-05', '', NULL, NULL),
(268, 6, 0, 4, 1, 1, 0, 45503, '2024-10-05', '', NULL, ''),
(270, 6, 0, 2, 1, 2, 0, 30000, '2024-10-05', '', NULL, 'https://i.ibb.co.com/DwKzwrS/phqc-bayar.jpg'),
(271, 6, 0, 3, 1, 2, 0, 350658, '2024-10-05', '', NULL, 'https://i.ibb.co.com/cT5vBj9/Whats-App-Image-2024-10-05-at-11-32-30-85c8d600.jpg'),
(273, 6, 0, 4, 1, 2, 0, 45503, '2024-10-05', '', NULL, 'https://i.ibb.co.com/jhKPK2G/mc.jpg'),
(274, 6, 0, 1, 1, 2, 0, 70000, '2024-10-05', '', NULL, 'https://i.ibb.co.com/smB2nyt/cop.jpg'),
(275, 8, 0, 1, 1, 1, 0, 85000, '2024-10-06', '', NULL, 'https://i.ibb.co.com/D8d6fRL/Whats-App-Image-2024-10-05-at-17-18-22-0b59c582.jpg'),
(276, 8, 0, 2, 1, 1, 0, 35000, '2024-10-06', '', NULL, 'https://i.ibb.co.com/0nv12fp/Whats-App-Image-2024-10-05-at-17-19-04-2a007f86.jpg'),
(277, 8, 0, 3, 1, 1, 0, 550242, '2024-10-06', '', NULL, 'https://i.ibb.co.com/GCF2W3W/Whats-App-Image-2024-10-05-at-18-53-25-7b14bf4d.jpg'),
(278, 8, 0, 4, 1, 1, 0, 45503, '2024-10-06', '', NULL, 'https://i.ibb.co.com/F0NHBqS/Whats-App-Image-2024-10-05-at-18-04-20-ecb1217e.jpg'),
(279, 8, 0, 1, 1, 2, 0, 85000, '2024-10-06', '', NULL, 'https://i.ibb.co.com/drrw1Fb/Whats-App-Image-2024-10-06-at-10-51-10-8340bd79.jpg'),
(280, 8, 0, 2, 1, 2, 0, 35000, '2024-10-06', '', NULL, 'https://i.ibb.co.com/5BSkf3t/Whats-App-Image-2024-10-06-at-10-51-40-dc2738d8.jpg'),
(281, 8, 0, 3, 1, 2, 0, 550242, '2024-10-06', '', NULL, 'https://i.ibb.co.com/rHqzcC6/Whats-App-Image-2024-10-06-at-11-17-21-f46e756a.jpg'),
(282, 8, 0, 4, 1, 2, 0, 45503, '2024-10-06', '', NULL, 'https://i.ibb.co.com/FBkwTgd/Whats-App-Image-2024-10-06-at-10-44-52-ce54d4c9.jpg'),
(283, 8, 0, 5, 1, 2, 0, 207789, '2024-10-06', '', NULL, 'https://i.ibb.co.com/cTvhpyM/Whats-App-Image-2024-10-06-at-12-45-24-07ddc5da.jpg'),
(284, 6, 0, 4, 1, 1, 0, 45503, '2024-10-07', '', NULL, 'https://i.ibb.co.com/7j76LLB/Whats-App-Image-2024-10-06-at-17-03-35-166c4e6d.jpg'),
(285, 6, 0, 1, 1, 1, 0, 70000, '2024-10-07', '', NULL, 'https://i.ibb.co.com/zfYmtBX/Whats-App-Image-2024-10-06-at-17-22-26-6188cdf5.jpg'),
(286, 6, 0, 2, 1, 1, 0, 30000, '2024-10-07', '', NULL, 'https://i.ibb.co.com/YbT3q3m/Whats-App-Image-2024-10-06-at-17-23-01-1f940386.jpg'),
(287, 6, 0, 3, 1, 1, 0, 350658, '2024-10-07', '', NULL, 'https://i.ibb.co.com/NWn2zcy/Whats-App-Image-2024-10-06-at-19-08-00-af63f1e7.jpg'),
(288, 6, 0, 1, 1, 2, 0, 70000, '2024-10-07', '', NULL, 'https://i.ibb.co.com/4j9w87v/Whats-App-Image-2024-10-07-at-11-13-42-debdf3d2.jpg'),
(289, 6, 0, 2, 1, 2, 0, 30000, '2024-10-07', '', NULL, 'https://i.ibb.co.com/JmLZXJ2/Whats-App-Image-2024-10-07-at-11-14-10-3b16fae9.jpg'),
(290, 6, 0, 3, 1, 2, 0, 350658, '2024-10-07', '', NULL, 'https://i.ibb.co.com/MV1g6bg/Whats-App-Image-2024-10-07-at-11-23-06-d633da7d.jpg'),
(291, 6, 0, 4, 1, 2, 0, 45800, '2024-10-07', '', NULL, 'https://i.ibb.co.com/qsnNF4b/Whats-App-Image-2024-10-07-at-11-01-39-97dcb904.jpg'),
(292, 6, 0, 1, 1, 1, 0, 70000, '2024-10-08', '', NULL, 'https://i.ibb.co.com/8rSVCq9/Whats-App-Image-2024-10-07-at-17-12-28-b8203014.jpg'),
(293, 6, 0, 2, 1, 1, 0, 30000, '2024-10-08', '', NULL, 'https://i.ibb.co.com/88jZxdZ/Whats-App-Image-2024-10-07-at-17-12-08-1521ba2d.jpg'),
(294, 6, 0, 3, 1, 1, 0, 350658, '2024-10-08', '', NULL, 'https://i.ibb.co.com/nPfyhdj/Whats-App-Image-2024-10-07-at-17-57-51-3865a7ae.jpg'),
(295, 6, 0, 4, 1, 1, 0, 45800, '2024-10-08', '', NULL, 'https://i.ibb.co.com/HVnHRfy/Whats-App-Image-2024-10-07-at-17-04-44-7a8e97dd.jpg'),
(304, 6, 0, 1, 1, 2, 1, 70000, '2024-10-08', '', NULL, 'https://i.ibb.co.com/MGB9tqv/Whats-App-Image-2024-10-08-at-11-06-22-86e443fe.jpg'),
(305, 6, 0, 2, 1, 2, 1, 30000, '2024-10-08', '', NULL, 'https://i.ibb.co.com/cgW940n/Whats-App-Image-2024-10-08-at-11-06-51-a6ec1b29.jpg'),
(306, 6, 0, 3, 1, 2, 1, 350658, '2024-10-08', '', NULL, 'https://i.ibb.co.com/Vq1pXf9/Whats-App-Image-2024-10-08-at-11-23-13-2512fa79.jpg'),
(307, 6, 0, 4, 1, 2, 1, 46348, '2024-10-08', '', NULL, 'https://i.ibb.co.com/cw3Gzny/Whats-App-Image-2024-10-08-at-10-50-05-f81b617c.jpg');

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
(48, 7, 'AL.203/2000/03424/183906/24', '2024-09-29', '2024-10-14', '9/29/2024 - 10/14/2024'),
(49, 7, 'AL.203/2000/03425/183893/24', '2024-10-15', '2024-10-30', '10/15/2024 - 10/30/2024'),
(50, 1, 'AL.203/2000/03430/183811/24', '2024-10-01', '2024-10-16', '10/1/2024 - 10/16/2024'),
(51, 1, 'AL.203/2000/03431/183820/24', '2024-10-16', '2024-10-31', '10/16/2024 - 10/31/2024'),
(52, 2, 'AL.203/2000/03436/183897/24', '2024-10-01', '2024-10-16', '10/1/2024 - 10/16/2024'),
(53, 2, 'AL.203/2000/03437/183886/24', '2024-10-16', '2024-10-31', '10/16/2024 - 10/31/2024'),
(54, 3, 'AL.203/2000/03438/183892/24', '2024-10-01', '2024-10-16', '10/1/2024 - 10/16/2024'),
(55, 3, 'AL.203/2000/03440/183909/24', '2024-10-16', '2024-10-31', '10/16/2024 - 10/31/2024'),
(56, 4, 'AL.203/2000/03441/183910/24', '2024-10-01', '2024-10-16', '10/1/2024 - 10/16/2024'),
(57, 4, 'AL.203/2000/03452/183990/24', '2024-10-16', '2024-10-31', '10/16/2024 - 10/31/2024'),
(58, 5, 'AL.203/2000/03454/183994/24', '2024-10-01', '2024-10-16', '10/1/2024 - 10/16/2024'),
(59, 5, 'AL.203/2000/03456/183959/24', '2024-10-16', '2024-10-31', '10/16/2024 - 10/31/2024'),
(60, 6, 'AL.203/2000/03458/183991/24', '2024-10-01', '2024-10-16', '10/1/2024 - 10/16/2024'),
(61, 6, 'AL.203/2000/03459/183873/24', '2024-10-16', '2024-10-31', '10/16/2024 - 10/31/2024'),
(62, 8, 'AL.203/2000/03426/183894/24', '2024-10-01', '2024-10-16', '10/1/2024 - 10/16/2024'),
(63, 8, 'AL.203/2000/03428/183883/24', '2024-10-16', '2024-10-31', '10/16/2024 - 10/31/2024');

-- --------------------------------------------------------

--
-- Table structure for table `rambu_kapal`
--

CREATE TABLE `rambu_kapal` (
  `id` int(11) NOT NULL,
  `kapal_id` int(11) NOT NULL,
  `berlaku_dari` date NOT NULL,
  `berlaku_sampai` date NOT NULL,
  `masa_berlaku` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rambu_kapal`
--

INSERT INTO `rambu_kapal` (`id`, `kapal_id`, `berlaku_dari`, `berlaku_sampai`, `masa_berlaku`) VALUES
(1, 6, '2024-09-10', '2024-10-09', '2024-09-10'),
(2, 1, '2024-09-02', '2024-10-01', '2024-09-02'),
(4, 2, '2024-09-02', '2024-10-01', '2024-09-01'),
(5, 3, '2024-09-02', '2024-10-01', '2024-02-26'),
(6, 4, '2024-09-02', '2024-10-01', '2023-10-17'),
(7, 5, '2024-09-02', '2024-10-01', '2024-01-02'),
(8, 7, '2024-09-02', '2024-10-01', '2024-10-06'),
(9, 8, '2024-09-02', '2024-10-01', '2024-09-30');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_topup`
--

CREATE TABLE `riwayat_topup` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `bukti_topup` varchar(255) DEFAULT NULL,
  `tanggal_topup` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_topup`
--

INSERT INTO `riwayat_topup` (`id`, `user_id`, `saldo`, `bukti_topup`, `tanggal_topup`) VALUES
(7, 1, 1000000, 'https://i.ibb.co.com/0fK28N1/Whats-App-Image-2024-10-08-at-14-09-31-e4fd37ff.jpg', '2024-10-08');

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `saldo`) VALUES
(1, 'rendy', 'asd123', 550336),
(3, 'asd', 'asd123', 0);

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
-- Indexes for table `rambu_kapal`
--
ALTER TABLE `rambu_kapal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_topup`
--
ALTER TABLE `riwayat_topup`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pembayaran_kapal`
--
ALTER TABLE `pembayaran_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `pkka_kapal`
--
ALTER TABLE `pkka_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `rambu_kapal`
--
ALTER TABLE `rambu_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `riwayat_topup`
--
ALTER TABLE `riwayat_topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
