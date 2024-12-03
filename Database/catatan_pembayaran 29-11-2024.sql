-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 08:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
(8, 'MAJESTIC BLISS', 1),
(20, 'Lainnya', 2);

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
  `foto_rincian` varchar(255) DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_saldo`
--

INSERT INTO `detail_saldo` (`id`, `cop_karantina`, `phqc_karantina`, `pnbp_labuh`, `pnbp_mc`, `pnbp_rambu`, `buku_kesehatan_karantina`, `total_trip`, `tanggal_terima`, `foto_rincian`, `catatan`) VALUES
(1, 420000, 180000, 2103900, 270100, 132900, 0, 6, '2024-09-11', '', ''),
(2, 650000, 270000, 4002800, 360400, 208000, 0, 8, '2024-09-07', '', ''),
(5, 665000, 275000, 4202350, 360400, 0, 0, 8, '2024-09-14', '', 'MC sebelumnya kurang 3500 sudah di claim\n4 Trip MB dan 4 TRIP WM\n\nUpdate Claim\n7 Trip MB dan 1 Trip WM'),
(6, 450000, 190000, 2503100, 270000, 0, 100000, 6, '2024-09-18', '', 'MC sebelumnya kurang 8800\n6 Trip WM\nUpdate \n4 Trip WM 2 Trip MB\nbuku kesehatan karantina sudah di klaim'),
(7, 620000, 260000, 3603600, 360000, 0, 0, 8, '2024-09-21', '', 'MC sebelumnya sisa 2100'),
(12, 450000, 190000, 2503116, 267400, 0, 0, 6, '2024-09-25', '', 'Sisa MC sebelumnya 104, Update 4Trip WM 2 TRIP MB'),
(13, 650000, 270000, 4002768, 352400, 204400, 0, 8, '2024-09-28', '', 'MC sebelumnya sisa 1340, UPdate 6 Trip WM 2 Trip MU'),
(14, 420000, 180000, 2103948, 267500, 0, 0, 6, '2024-10-02', '', 'Sisa MC sebelumnya -6068'),
(15, 590000, 250000, 3204432, 356000, 0, 0, 8, '2024-10-05', '', 'MC sebelumnya ada lebih +1700'),
(16, 420000, 180000, 2103948, 276400, 0, 0, 6, '2024-10-09', '', 'MC sebelumnya kurang 7800, tapi di titip jadi total mc yang di terima 284200, Rambu sudah lunas'),
(19, 590000, 250000, 3204432, 368100, 134300, 0, 8, '2024-10-12', '', 'MC trip Sebelumnnya -Rp 1100, di periode sbeelumnya ada 2 Trip MB'),
(21, 420000, 180000, 2103948, 273400, 0, 0, 6, '2024-10-16', '', 'MC Trip Sebelumnya kurang 1600'),
(22, 620000, 260000, 3603600, 364400, 0, 0, 8, '2024-10-19', '', 'MC sebelumnya kurang 2300\r\ndan di trip sebelumnya ada MAJESTIC ULTIMATE masuk 2 Trip dan sudah di klaim saldonya\r\n'),
(23, 420000, 180000, 2103948, 270400, 0, 0, 6, '2024-10-23', '', 'buku kesehatan sama rambu sudah di klaim. MC trip sebelumnya -2100'),
(24, 590000, 250000, 3204432, 364000, 0, 0, 8, '2024-10-26', '', 'MC trip Sebelumnya -5700, sudah di klaim'),
(25, 450000, 190000, 2503116, 276400, 212700, 0, 6, '2024-10-30', '', 'MC sebelumnya Kurang -5000, sudah di klaim dan ada 2 Trip Majestic Ultimate dan sudah di klaim. Saldo ini berlaku dari 30 Oktober HIngga 01 November 2024.'),
(26, 650000, 270000, 4002768, 360800, 347500, 0, 8, '2024-11-02', '', 'Mc sebelumnya -2700, Rambu sudah di klaim dan di masukin ke riwayat sebelumnya\r\n\r\n4 TRIP ULTIMATE\r\n2 TRIP BLISS\r\n2 TRIP WM\r\n\r\nRAMBU WM 9\r\nRAMBU BLISS'),
(27, 420000, 180000, 2103948, 276600, 0, 0, 6, '2024-11-06', 'https://i.ibb.co.com/7zgjND1/Whats-App-Image-2024-11-05-at-14-26-58-611b0f51.jpg', 'Yg di terima:\r\n- 6 TRIP WM 9\r\n- MC SEBELUMNYA -RP 10800\r\n- RAMBU WM 9 (LUNAS)\r\n- RAMBU MB (LUNAS)'),
(28, 560000, 240000, 2805264, 372300, 0, 0, 8, '2024-11-09', 'https://i.ibb.co.com/8N28Vrh/Whats-App-Image-2024-11-08-at-14-40-38-7837e08e.jpg', '- MC -Rp3400- 8 Trip WM'),
(29, 420000, 180000, 2103948, 276600, 0, 0, 6, '2024-11-13', 'https://i.ibb.co.com/TWNfVnD/Whats-App-Image-2024-11-12-at-14-20-39-f4ca7168.jpg', 'MC SEBELUMNYA -4400'),
(30, 560000, 240000, 2805264, 372000, 0, 0, 8, '2024-11-16', 'https://i.ibb.co.com/WxH8qxx/Whats-App-Image-2024-11-15-at-14-11-37-0b2dc420.jpg', 'MC Sebelumnya -7800'),
(31, 0, 0, 0, 0, 0, 0, 0, '0000-00-00', '', ''),
(32, 420000, 180000, 2103948, 280000, 0, 0, 6, '2024-11-20', 'https://i.ibb.co.com/LRJHY9h/Whats-App-Image-2024-11-19-at-14-25-48-4fc9545c.jpg', 'MC sebelumnya -3300\r\nRAMBU WM 5 '),
(33, 560000, 240000, 2805264, 375500, 0, 0, 8, '2024-11-23', 'https://i.ibb.co.com/2WNRXq2/Whats-App-Image-2024-11-23-at-08-26-25-c6551bdd.jpg', ''),
(34, 420000, 180000, 2103948, 279800, 0, 0, 6, '2024-11-27', 'https://i.ibb.co.com/vQ8CVwM/Whats-App-Image-2024-11-26-at-14-07-12-869999bf.jpg', 'MCnya edit 279800'),
(35, 620000, 260000, 3603600, 372400, 0, 0, 8, '2024-11-30', 'https://i.ibb.co.com/98MBQ82/Whats-App-Image-2024-11-29-at-14-18-19-b7ae4dc7.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan_kru`
--

CREATE TABLE `jabatan_kru` (
  `id` int(11) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan_kru`
--

INSERT INTO `jabatan_kru` (`id`, `nama_jabatan`) VALUES
(1, 'NAHKODA'),
(2, 'MUALIM I'),
(3, 'MUALIM II'),
(4, 'MUALIM III'),
(5, 'KKM'),
(6, 'MASINIS I'),
(7, 'MASINIS II'),
(8, 'AB');

-- --------------------------------------------------------

--
-- Table structure for table `kru_kapal`
--

CREATE TABLE `kru_kapal` (
  `id` int(11) NOT NULL,
  `nama_awak` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kebangsaan` varchar(10) NOT NULL,
  `no_buku_pelaut` varchar(50) DEFAULT NULL,
  `expired_buku_pelaut` date DEFAULT NULL,
  `jabatan` varchar(1) NOT NULL,
  `kode_pelaut` varchar(30) DEFAULT NULL,
  `no_PKL` varchar(30) DEFAULT NULL,
  `tanggal_sign_on` date DEFAULT NULL,
  `sertifikat_ijazah_pelaut` varchar(20) DEFAULT NULL,
  `no_sertifikat_ijazah_pelaut` varchar(50) DEFAULT NULL,
  `passpor_wna` varchar(10) DEFAULT NULL,
  `vaksin` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kru_kapal`
--

INSERT INTO `kru_kapal` (`id`, `nama_awak`, `jenis_kelamin`, `tanggal_lahir`, `kebangsaan`, `no_buku_pelaut`, `expired_buku_pelaut`, `jabatan`, `kode_pelaut`, `no_PKL`, `tanggal_sign_on`, `sertifikat_ijazah_pelaut`, `no_sertifikat_ijazah_pelaut`, `passpor_wna`, `vaksin`) VALUES
(2, 'MOHAMMAD ALI NURKHOLIDA', 'M', '1976-02-01', 'INDONESIA', 'H 014348', '2025-04-28', '1', '6200353256', 'MFFPL/CREW/OFF0401', '2018-08-22', 'ANT IV MANAJEMEN', '6200353256M40518', '', 'SUDAH'),
(5, 'JOOTJE PELENGKAHU', 'M', '1964-02-11', 'INDONESIA', 'F 300021', '2024-11-14', '2', '6200080714', 'MFFPL/CREW/OFF0382', '2021-07-24', 'ANT III MANAJEMEN', '6200080714M43816', '', 'SUDAH'),
(13, 'SAIYID MUHAMMAD JAUZI HIDAYATULLAH', 'M', '1985-03-26', 'INDONESIA', 'F 132535', '2025-07-02', '3', '6200405943', 'MFFPL/CREW/0FF0403', '2022-09-14', 'ANT III MANAJEMEN', '6200405943M35121', '', 'SUDAH'),
(14, 'ANTHONY MANUEL SILITONGA', 'M', '2002-06-17', 'INDONESIA', 'F 336416', '2025-07-21', '4', '6212004172', 'MFFPL/CREWOFF0479', '2024-07-18', 'ANT IV MANAJEMEN', '6212004172M45124', '', 'SUDAH'),
(15, 'SAIFUL', 'M', '1976-05-23', 'INDONESIA', 'F 300151', '2026-12-06', '5', '6200032499', 'MFFPL/CREW/OFF0417', '2023-04-25', 'ATT III MANAJEMEN', '6200032499S30121', '', 'SUDAH'),
(16, 'LUNDU MALAU', 'M', '1990-03-03', 'INDONESIA', 'F 238318', '2026-05-09', '6', '6201295754', 'MFFPL/CREW/OFF0370', '2023-11-07', 'ATT III MANAJEMEN', '6201295754S30121', '', 'SUDAH'),
(17, 'ANDRI PRIYANTO', 'M', '1995-10-30', 'INDONESIA', 'F 143827', '2025-08-14', '8', '6211605981', 'MFFPL/CREW/OFF0342', '2023-07-19', 'RATING', '6211605981040719', '', 'SUDAH'),
(18, 'BAYU SURANTO', 'M', '2000-04-03', 'INDONESIA', 'F 315364', '2025-04-16', '8', '6212003503', 'MFFPL/CREW/OFF0378', '2023-02-20', 'RATING', '6212003503013820', '', 'SUDAH'),
(19, 'IMAM MUJIONO', 'M', '1983-08-11', 'INDONESIA', 'F 335842', '2025-04-14', '1', '6200540221', 'MFFPL/CREW/OFF0245', '2023-07-11', 'ANT III MANAJEMEN', '6200540221M40216', '', 'SUDAH'),
(20, 'AJI KURNIAWAN', 'M', '1991-12-25', 'INDONESIA', 'G 057235', '2026-03-10', '8', '6201303532', 'MFFPL/CREW/OFF0398', '2023-12-06', 'RATING', '6201303532N60711', '', 'SUDAH');

-- --------------------------------------------------------

--
-- Table structure for table `login_token`
--

CREATE TABLE `login_token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `sisa_saldo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran_kapal`
--

INSERT INTO `pembayaran_kapal` (`id`, `kapal_id`, `tipe_kapal_id`, `tujuan_pembayaran_id`, `status_pembayaran_id`, `trip_id`, `user_id`, `harga`, `tanggal_transaksi`, `catatan_transaksi`, `status_claim`, `bukti_pembayaran`, `sisa_saldo`) VALUES
(1, 6, 2, 1, 1, 1, 0, 70000, '2024-09-12', '', 1, NULL, NULL),
(2, 6, 2, 2, 1, 1, 0, 30000, '2024-09-12', '', 1, NULL, NULL),
(4, 6, 2, 4, 1, 1, 0, 45659, '2024-09-12', '', 1, NULL, NULL),
(5, 6, 2, 1, 1, 2, 0, 70000, '2024-09-11', '', 1, NULL, NULL),
(6, 6, 2, 2, 1, 2, 0, 30000, '2024-09-11', '', 1, NULL, NULL),
(7, 6, 2, 3, 1, 2, 0, 350658, '2024-09-11', '', 1, NULL, NULL),
(9, 6, 2, 1, 1, 1, 0, 70000, '2024-09-11', '', 1, NULL, NULL),
(10, 6, 2, 2, 1, 1, 0, 30000, '2024-09-11', '', 1, NULL, NULL),
(11, 6, 2, 3, 1, 1, 0, 350658, '2024-09-11', '', 1, NULL, NULL),
(12, 6, 2, 4, 1, 1, 0, 45657, '2024-09-11', '', 1, NULL, NULL),
(13, 1, 2, 1, 1, 2, 0, 70000, '2024-09-10', '', 1, NULL, NULL),
(14, 1, 2, 2, 1, 2, 0, 30000, '2024-09-10', '', 1, NULL, NULL),
(15, 1, 2, 3, 1, 2, 0, 350658, '2024-09-10', '', 1, NULL, NULL),
(16, 1, 2, 4, 1, 2, 0, 45657, '2024-09-10', '', 1, NULL, NULL),
(17, 1, 2, 4, 1, 1, 0, 45438, '2024-09-10', '', 1, NULL, NULL),
(18, 1, 2, 1, 1, 1, 0, 70000, '2024-09-10', '', 1, NULL, NULL),
(19, 1, 2, 2, 1, 1, 0, 30000, '2024-09-10', '', 1, NULL, NULL),
(20, 1, 2, 3, 1, 1, 0, 350658, '2024-09-10', '', 1, NULL, NULL),
(21, 6, 2, 5, 1, 1, 0, 132867, '2024-09-11', '', 1, NULL, NULL),
(22, 8, 1, 4, 1, 2, 0, 45438, '2024-09-09', '', 1, NULL, NULL),
(23, 8, 1, 2, 1, 2, 0, 35000, '2024-09-09', '', 1, NULL, NULL),
(24, 8, 1, 1, 1, 2, 0, 85000, '2024-09-09', '', 1, NULL, NULL),
(25, 8, 1, 3, 1, 2, 0, 550242, '2024-09-09', '', 1, NULL, NULL),
(26, 8, 1, 3, 1, 1, 0, 550242, '2024-09-09', '', 1, NULL, NULL),
(27, 8, 1, 4, 1, 1, 0, 45549, '2024-09-09', '', 1, NULL, NULL),
(28, 8, 1, 2, 1, 1, 0, 35000, '2024-09-09', '', 1, NULL, NULL),
(29, 8, 1, 1, 1, 1, 0, 85000, '2024-09-09', '', 1, NULL, NULL),
(30, 8, 1, 3, 1, 2, 0, 550242, '2024-09-08', '', 1, NULL, NULL),
(31, 8, 1, 2, 1, 2, 0, 35000, '2024-09-08', '', 1, NULL, NULL),
(32, 8, 1, 1, 1, 2, 0, 85000, '2024-09-08', '', 1, NULL, NULL),
(33, 8, 1, 4, 1, 2, 0, 45549, '2024-09-08', '', 1, NULL, NULL),
(34, 8, 1, 4, 1, 1, 0, 45549, '2024-09-08', '', 1, NULL, NULL),
(35, 8, 1, 2, 1, 1, 0, 35000, '2024-09-08', '', 1, NULL, NULL),
(36, 8, 1, 3, 1, 1, 0, 550242, '2024-09-08', '', 1, NULL, NULL),
(37, 8, 1, 1, 1, 1, 0, 85000, '2024-09-08', '', 1, NULL, NULL),
(38, 8, 1, 4, 1, 2, 0, 45549, '2024-09-07', '', 1, NULL, NULL),
(39, 8, 1, 5, 1, 2, 0, 208005, '2024-09-07', '', 1, NULL, NULL),
(40, 8, 1, 3, 1, 2, 0, 550242, '2024-09-07', '', 1, NULL, NULL),
(41, 8, 1, 2, 1, 2, 0, 35000, '2024-09-07', '', 1, NULL, NULL),
(42, 8, 1, 1, 1, 2, 0, 85000, '2024-09-07', '', 1, NULL, NULL),
(43, 8, 1, 3, 1, 1, 0, 550242, '2024-09-07', '', 1, NULL, NULL),
(44, 8, 1, 1, 1, 1, 0, 85000, '2024-09-07', '', 1, NULL, NULL),
(45, 8, 1, 2, 1, 1, 0, 35000, '2024-09-07', '', 1, NULL, NULL),
(46, 8, 1, 4, 1, 1, 0, 45549, '2024-09-07', '', 1, NULL, NULL),
(47, 6, 2, 1, 1, 2, 0, 70000, '2024-09-12', '', 1, NULL, NULL),
(48, 6, 2, 2, 1, 2, 0, 30000, '2024-09-12', '', 1, NULL, NULL),
(49, 6, 2, 3, 1, 2, 0, 350658, '2024-09-12', '', 1, NULL, NULL),
(50, 6, 2, 4, 1, 2, 0, 45564, '2024-09-12', '', 1, NULL, NULL),
(51, 6, 2, 1, 1, 1, 0, 70000, '2024-09-13', '', 1, NULL, NULL),
(52, 6, 2, 2, 1, 1, 0, 30000, '2024-09-13', '', 1, NULL, NULL),
(53, 6, 2, 3, 1, 1, 0, 350658, '2024-09-13', '', 1, NULL, NULL),
(54, 6, 2, 4, 1, 1, 0, 45564, '2024-09-13', '', 1, NULL, NULL),
(55, 6, 2, 1, 1, 2, 0, 70000, '2024-09-13', '', 1, NULL, NULL),
(56, 6, 2, 2, 1, 2, 0, 30000, '2024-09-13', '', 1, NULL, NULL),
(57, 6, 2, 3, 1, 2, 0, 350658, '2024-09-13', '', 1, NULL, NULL),
(58, 6, 2, 4, 1, 2, 0, 45582, '2024-09-13', '', 1, NULL, NULL),
(61, 8, 0, 3, 1, 1, 0, 550242, '2024-09-14', '', NULL, NULL, NULL),
(62, 8, 0, 1, 1, 1, 0, 85000, '2024-09-14', '', NULL, NULL, NULL),
(63, 8, 0, 2, 1, 1, 0, 35000, '2024-09-14', '', NULL, NULL, NULL),
(64, 8, 0, 4, 1, 1, 0, 45582, '2024-09-14', '', NULL, NULL, NULL),
(65, 8, 0, 1, 1, 2, 0, 85000, '2024-09-14', '', NULL, NULL, NULL),
(66, 8, 0, 2, 1, 2, 0, 35000, '2024-09-14', '', NULL, NULL, NULL),
(67, 8, 0, 3, 1, 2, 0, 550242, '2024-09-14', '', NULL, NULL, NULL),
(68, 8, 0, 4, 1, 2, 0, 45582, '2024-09-14', '', NULL, NULL, NULL),
(93, 8, 1, 1, 1, 1, 0, 85000, '2024-09-15', '', 1, NULL, NULL),
(94, 8, 1, 2, 1, 1, 0, 35000, '2024-09-15', '', 1, NULL, NULL),
(95, 8, 1, 3, 1, 1, 0, 550242, '2024-09-15', '', 1, NULL, NULL),
(96, 8, 1, 3, 1, 2, 0, 550242, '2024-09-15', '', 1, NULL, NULL),
(97, 8, 1, 2, 1, 2, 0, 35000, '2024-09-15', '', 1, NULL, NULL),
(98, 8, 1, 1, 1, 2, 0, 85000, '2024-09-15', '', 1, NULL, NULL),
(99, 8, 1, 1, 1, 1, 0, 85000, '2024-09-16', '', 1, NULL, NULL),
(100, 8, 1, 2, 1, 1, 0, 35000, '2024-09-16', '', 1, NULL, NULL),
(101, 8, 1, 3, 1, 1, 0, 550242, '2024-09-16', '', 1, NULL, NULL),
(102, 8, 1, 3, 1, 2, 0, 550242, '2024-09-16', '', 1, NULL, NULL),
(103, 8, 1, 2, 1, 2, 0, 35000, '2024-09-16', '', 1, NULL, NULL),
(104, 8, 1, 1, 1, 2, 0, 85000, '2024-09-16', '', 1, NULL, NULL),
(105, 8, 1, 1, 1, 1, 0, 85000, '2024-09-17', '', 1, NULL, NULL),
(106, 8, 1, 2, 1, 1, 0, 35000, '2024-09-17', '', 1, NULL, NULL),
(107, 8, 1, 3, 1, 1, 0, 550242, '2024-09-17', '', 1, NULL, NULL),
(108, 6, 2, 1, 1, 2, 0, 70000, '2024-09-17', '', 1, NULL, NULL),
(109, 6, 2, 2, 1, 2, 0, 30000, '2024-09-17', '', 1, NULL, NULL),
(110, 6, 2, 3, 1, 2, 0, 350658, '2024-09-17', '', 1, NULL, NULL),
(111, 6, 2, 4, 1, 2, 0, 45535, '2024-09-17', '', 1, NULL, NULL),
(112, 8, 1, 4, 1, 1, 0, 45582, '2024-09-17', '', 1, NULL, NULL),
(113, 8, 1, 4, 1, 2, 0, 45582, '2024-09-16', '', 1, NULL, NULL),
(114, 8, 1, 4, 1, 1, 0, 45582, '2024-09-16', '', 1, NULL, NULL),
(115, 8, 1, 4, 1, 2, 0, 50140, '2024-09-15', '', 1, NULL, NULL),
(116, 8, 1, 4, 1, 1, 0, 45582, '2024-09-15', '', 1, NULL, NULL),
(117, 6, 0, 1, 1, 1, 0, 70000, '2024-09-18', '', NULL, NULL, NULL),
(118, 6, 0, 2, 1, 1, 0, 30000, '2024-09-18', '', NULL, NULL, NULL),
(119, 6, 0, 3, 1, 1, 0, 350658, '2024-09-18', '', NULL, NULL, NULL),
(120, 6, 2, 4, 1, 1, 0, 45535, '2024-09-18', '', 1, NULL, NULL),
(121, 6, 0, 4, 1, 2, 0, 45337, '2024-09-18', '', NULL, NULL, NULL),
(122, 6, 0, 1, 1, 2, 0, 70000, '2024-09-18', '', NULL, NULL, NULL),
(123, 6, 0, 2, 1, 2, 0, 30000, '2024-09-18', '', NULL, NULL, NULL),
(124, 6, 0, 3, 1, 2, 0, 350658, '2024-09-18', '', NULL, NULL, NULL),
(125, 6, 0, 1, 1, 1, 0, 70000, '2024-09-19', '', NULL, NULL, NULL),
(126, 6, 0, 2, 1, 1, 0, 30000, '2024-09-19', '', NULL, NULL, NULL),
(128, 6, 0, 6, 1, 2, 0, 100000, '2024-09-18', '', NULL, NULL, NULL),
(131, 6, 0, 3, 1, 1, 0, 350658, '2024-09-19', '', NULL, NULL, NULL),
(132, 6, 0, 1, 1, 2, 0, 70000, '2024-09-19', '', NULL, NULL, NULL),
(133, 6, 0, 2, 1, 2, 0, 30000, '2024-09-19', '', NULL, NULL, NULL),
(134, 6, 0, 3, 1, 2, 0, 350658, '2024-09-19', '', NULL, NULL, NULL),
(135, 6, 0, 4, 1, 1, 0, 45337, '2024-09-19', '', NULL, NULL, NULL),
(136, 6, 0, 4, 1, 2, 0, 45372, '2024-09-19', '', NULL, NULL, NULL),
(137, 8, 1, 1, 1, 1, 0, 85000, '2024-09-20', '', 1, NULL, NULL),
(138, 8, 1, 2, 1, 1, 0, 35000, '2024-09-20', '', 1, NULL, NULL),
(139, 8, 1, 3, 1, 1, 0, 550242, '2024-09-20', '', 1, NULL, NULL),
(140, 8, 1, 4, 1, 1, 0, 45372, '2024-09-20', '', 1, NULL, NULL),
(141, 8, 1, 1, 1, 2, 0, 85000, '2024-09-20', '', 1, NULL, NULL),
(142, 8, 1, 2, 1, 2, 0, 35000, '2024-09-20', '', 1, NULL, NULL),
(143, 8, 1, 3, 1, 2, 0, 550242, '2024-09-20', '', 1, NULL, NULL),
(144, 8, 0, 4, 1, 2, 0, 45187, '2024-09-20', '', NULL, NULL, NULL),
(145, 8, 0, 1, 1, 1, 0, 85000, '2024-09-21', '', NULL, NULL, NULL),
(146, 8, 0, 2, 1, 1, 0, 35000, '2024-09-21', '', NULL, NULL, NULL),
(147, 8, 0, 3, 1, 1, 0, 550242, '2024-09-21', '', NULL, NULL, NULL),
(148, 8, 0, 4, 1, 1, 0, 45187, '2024-09-21', '', NULL, NULL, NULL),
(153, 8, 0, 1, 1, 2, 0, 85000, '2024-09-21', '', NULL, NULL, NULL),
(154, 8, 0, 2, 1, 2, 0, 35000, '2024-09-21', '', NULL, NULL, NULL),
(155, 8, 0, 3, 1, 2, 0, 550242, '2024-09-21', '', NULL, NULL, NULL),
(157, 8, 0, 4, 1, 2, 0, 45187, '2024-09-21', '', NULL, NULL, NULL),
(158, 8, 0, 1, 1, 1, 0, 85000, '2024-09-22', '', NULL, NULL, NULL),
(159, 8, 0, 2, 1, 1, 0, 35000, '2024-09-22', '', NULL, NULL, NULL),
(160, 8, 0, 3, 1, 1, 0, 550242, '2024-09-22', '', NULL, NULL, NULL),
(161, 8, 0, 4, 1, 1, 0, 45187, '2024-09-22', '', NULL, NULL, NULL),
(162, 8, 0, 1, 1, 2, 0, 85000, '2024-09-22', '', NULL, NULL, NULL),
(163, 8, 0, 2, 1, 2, 0, 35000, '2024-09-22', '', NULL, NULL, NULL),
(164, 8, 0, 3, 1, 2, 0, 550242, '2024-09-22', '', NULL, NULL, NULL),
(165, 1, 0, 1, 1, 1, 0, 70000, '2024-09-23', '', NULL, NULL, NULL),
(166, 8, 0, 4, 1, 2, 0, 45187, '2024-09-22', '', NULL, NULL, NULL),
(167, 1, 0, 2, 1, 1, 0, 30000, '2024-09-23', '', NULL, NULL, NULL),
(168, 1, 0, 3, 1, 1, 0, 350658, '2024-09-23', '', NULL, NULL, NULL),
(169, 1, 0, 4, 1, 1, 0, 45187, '2024-09-23', '', NULL, NULL, NULL),
(170, 1, 0, 1, 1, 2, 0, 70000, '2024-09-23', '', NULL, NULL, NULL),
(171, 1, 0, 2, 1, 2, 0, 30000, '2024-09-23', '', NULL, NULL, NULL),
(172, 1, 0, 3, 1, 2, 0, 350658, '2024-09-23', '', NULL, NULL, NULL),
(173, 1, 0, 4, 1, 2, 0, 44633, '2024-09-23', '', NULL, NULL, NULL),
(174, 1, 0, 1, 1, 1, 0, 70000, '2024-09-24', '', NULL, NULL, NULL),
(175, 1, 0, 2, 1, 1, 0, 30000, '2024-09-24', '', NULL, NULL, NULL),
(176, 1, 0, 3, 1, 1, 0, 350658, '2024-09-24', '', NULL, NULL, NULL),
(177, 1, 0, 4, 1, 1, 0, 44633, '2024-09-24', '', NULL, NULL, NULL),
(178, 1, 0, 1, 1, 2, 0, 70000, '2024-09-24', '', NULL, NULL, NULL),
(179, 1, 0, 2, 1, 2, 0, 30000, '2024-09-24', '', NULL, NULL, NULL),
(180, 1, 0, 3, 1, 2, 0, 350658, '2024-09-24', '', NULL, NULL, NULL),
(181, 1, 0, 4, 1, 2, 0, 44903, '2024-09-24', '', NULL, NULL, NULL),
(182, 1, 0, 1, 1, 1, 0, 70000, '2024-09-25', '', NULL, NULL, NULL),
(183, 1, 0, 2, 1, 1, 0, 30000, '2024-09-25', '', NULL, NULL, NULL),
(184, 1, 0, 3, 1, 1, 0, 350658, '2024-09-25', '', NULL, NULL, NULL),
(185, 1, 0, 4, 1, 1, 0, 44903, '2024-09-25', '', NULL, NULL, NULL),
(186, 1, 0, 1, 1, 2, 0, 70000, '2024-09-25', '', NULL, NULL, NULL),
(187, 1, 0, 2, 1, 2, 0, 30000, '2024-09-25', '', NULL, NULL, NULL),
(188, 1, 0, 3, 1, 2, 0, 350658, '2024-09-25', '', NULL, NULL, NULL),
(189, 1, 0, 4, 1, 2, 0, 44888, '2024-09-25', '', NULL, NULL, NULL),
(190, 1, 0, 1, 1, 1, 0, 70000, '2024-09-26', '', NULL, NULL, NULL),
(191, 1, 0, 2, 1, 1, 0, 30000, '2024-09-26', '', NULL, NULL, NULL),
(192, 1, 0, 3, 1, 1, 0, 350658, '2024-09-26', '', NULL, NULL, NULL),
(193, 1, 0, 4, 1, 1, 0, 44888, '2024-09-26', '', NULL, NULL, NULL),
(194, 1, 0, 1, 1, 2, 0, 70000, '2024-09-26', '', NULL, NULL, NULL),
(195, 1, 0, 2, 1, 2, 0, 30000, '2024-09-26', '', NULL, NULL, NULL),
(196, 1, 0, 3, 1, 2, 0, 350658, '2024-09-26', '', NULL, NULL, NULL),
(197, 1, 0, 4, 1, 2, 0, 44609, '2024-09-26', '', NULL, NULL, NULL),
(198, 8, 0, 1, 1, 1, 0, 85000, '2024-09-27', '', NULL, NULL, NULL),
(199, 8, 0, 2, 1, 1, 0, 35000, '2024-09-27', '', NULL, NULL, NULL),
(200, 8, 0, 3, 1, 1, 0, 550242, '2024-09-27', '', NULL, NULL, NULL),
(201, 8, 0, 1, 1, 2, 0, 85000, '2024-09-27', '', NULL, NULL, NULL),
(202, 8, 0, 2, 1, 2, 0, 35000, '2024-09-27', '', NULL, NULL, NULL),
(203, 8, 0, 3, 1, 2, 0, 550242, '2024-09-27', '', NULL, NULL, NULL),
(204, 8, 0, 4, 1, 1, 0, 44609, '2024-09-27', '', NULL, NULL, NULL),
(205, 8, 0, 4, 1, 2, 0, 44843, '2024-09-27', '', NULL, NULL, NULL),
(206, 8, 0, 1, 1, 1, 0, 85000, '2024-09-28', '', NULL, NULL, NULL),
(207, 8, 0, 2, 1, 1, 0, 35000, '2024-09-28', '', NULL, NULL, NULL),
(208, 8, 0, 3, 1, 1, 0, 550242, '2024-09-28', '', NULL, NULL, NULL),
(209, 8, 0, 1, 1, 2, 0, 85000, '2024-09-28', '', NULL, NULL, NULL),
(210, 8, 0, 2, 1, 2, 0, 35000, '2024-09-28', '', NULL, NULL, NULL),
(211, 8, 0, 3, 1, 2, 0, 550242, '2024-09-28', '', NULL, NULL, NULL),
(212, 8, 0, 4, 1, 1, 0, 44843, '2024-09-28', '', NULL, NULL, NULL),
(213, 8, 0, 4, 1, 2, 0, 44843, '2024-09-28', '', NULL, NULL, NULL),
(214, 8, 0, 4, 1, 1, 0, 44843, '2024-09-29', '', NULL, NULL, NULL),
(215, 8, 0, 1, 1, 1, 0, 85000, '2024-09-29', '', NULL, NULL, NULL),
(216, 8, 0, 2, 1, 1, 0, 35000, '2024-09-29', '', NULL, NULL, NULL),
(217, 8, 0, 3, 1, 1, 0, 550242, '2024-09-29', '', NULL, NULL, NULL),
(218, 8, 0, 1, 1, 2, 0, 85000, '2024-09-29', '', NULL, NULL, NULL),
(219, 8, 0, 2, 1, 2, 0, 35000, '2024-09-29', '', NULL, NULL, NULL),
(220, 8, 0, 3, 1, 2, 0, 550242, '2024-09-29', '', NULL, NULL, NULL),
(221, 8, 0, 4, 2, 2, 0, 44843, '2024-09-29', 'Pembayaran di DANA PENDING jadi pakai Gopay', NULL, NULL, NULL),
(222, 6, 0, 1, 1, 1, 0, 70000, '2024-09-30', '', NULL, NULL, NULL),
(223, 6, 0, 2, 1, 1, 0, 30000, '2024-09-30', '', NULL, NULL, NULL),
(225, 6, 0, 1, 1, 2, 0, 70000, '2024-09-30', '', NULL, NULL, NULL),
(226, 6, 0, 2, 1, 2, 0, 30000, '2024-09-30', '', NULL, NULL, NULL),
(227, 6, 0, 3, 1, 2, 0, 350658, '2024-09-30', '', NULL, NULL, NULL),
(228, 6, 0, 3, 1, 1, 0, 350658, '2024-09-30', '', NULL, NULL, NULL),
(229, 6, 0, 4, 1, 1, 0, 44843, '2024-09-30', '', NULL, NULL, NULL),
(230, 6, 0, 4, 1, 2, 0, 44745, '2024-09-30', '', NULL, NULL, NULL),
(231, 7, 0, 1, 1, 1, 0, 85000, '2024-10-01', '', NULL, NULL, NULL),
(232, 7, 0, 2, 1, 1, 0, 35000, '2024-10-01', '', NULL, NULL, NULL),
(233, 7, 0, 3, 1, 1, 0, 550242, '2024-10-01', '', NULL, NULL, NULL),
(234, 7, 0, 4, 1, 1, 0, 44745, '2024-10-01', '', NULL, NULL, NULL),
(235, 7, 0, 5, 1, 1, 0, 204333, '2024-10-01', '', NULL, NULL, NULL),
(236, 7, 0, 1, 1, 2, 0, 85000, '2024-10-01', '', NULL, NULL, NULL),
(237, 7, 0, 2, 1, 2, 0, 35000, '2024-10-01', '', NULL, NULL, NULL),
(238, 7, 0, 3, 1, 2, 0, 550242, '2024-10-01', '', NULL, NULL, NULL),
(239, 7, 0, 4, 1, 2, 0, 44763, '2024-10-01', '', NULL, NULL, NULL),
(240, 6, 0, 1, 1, 1, 0, 70000, '2024-10-02', '', NULL, NULL, NULL),
(241, 6, 0, 2, 1, 1, 0, 30000, '2024-10-02', '', NULL, NULL, NULL),
(242, 6, 0, 3, 1, 1, 0, 350658, '2024-10-02', '', NULL, NULL, NULL),
(243, 6, 0, 4, 1, 1, 0, 44763, '2024-10-02', '', NULL, NULL, NULL),
(244, 6, 0, 1, 1, 2, 0, 70000, '2024-10-02', '', NULL, NULL, NULL),
(245, 6, 0, 2, 1, 2, 0, 30000, '2024-10-02', '', NULL, NULL, NULL),
(246, 6, 0, 3, 1, 2, 0, 350658, '2024-10-02', '', NULL, NULL, NULL),
(247, 6, 0, 4, 1, 2, 0, 44940, '2024-10-02', '', NULL, NULL, NULL),
(248, 6, 0, 1, 1, 1, 0, 70000, '2024-10-03', '', NULL, NULL, NULL),
(249, 6, 0, 2, 1, 1, 0, 30000, '2024-10-03', '', NULL, NULL, NULL),
(250, 6, 0, 3, 1, 1, 0, 350658, '2024-10-03', '', NULL, NULL, NULL),
(251, 6, 0, 1, 1, 2, 0, 70000, '2024-10-03', '', NULL, NULL, NULL),
(252, 6, 0, 2, 1, 2, 0, 30000, '2024-10-03', '', NULL, NULL, NULL),
(253, 6, 0, 3, 1, 2, 0, 350658, '2024-10-03', '', NULL, NULL, NULL),
(254, 6, 0, 4, 1, 1, 0, 44940, '2024-10-03', '', NULL, NULL, NULL),
(255, 6, 0, 4, 1, 2, 0, 45068, '2024-10-03', '', NULL, NULL, NULL),
(256, 6, 0, 1, 1, 1, 0, 70000, '2024-10-04', '', NULL, NULL, NULL),
(257, 6, 0, 2, 1, 1, 0, 30000, '2024-10-04', '', NULL, NULL, NULL),
(258, 6, 0, 3, 1, 1, 0, 350658, '2024-10-04', '', NULL, NULL, NULL),
(259, 6, 0, 4, 1, 1, 0, 40562, '2024-10-04', '', NULL, NULL, NULL),
(260, 6, 0, 4, 1, 2, 0, 45503, '2024-10-04', '', NULL, NULL, NULL),
(261, 6, 0, 1, 1, 2, 0, 70000, '2024-10-04', '', NULL, NULL, NULL),
(262, 6, 0, 2, 1, 2, 0, 30000, '2024-10-04', '', NULL, NULL, NULL),
(263, 6, 0, 3, 1, 2, 0, 350658, '2024-10-04', '', NULL, NULL, NULL),
(265, 6, 0, 2, 1, 1, 0, 30000, '2024-10-05', '', NULL, NULL, NULL),
(266, 6, 0, 3, 1, 1, 0, 350658, '2024-10-05', '', NULL, NULL, NULL),
(267, 6, 0, 1, 1, 1, 0, 70000, '2024-10-05', '', NULL, NULL, NULL),
(268, 6, 0, 4, 1, 1, 0, 45503, '2024-10-05', '', NULL, '', NULL),
(270, 6, 0, 2, 1, 2, 0, 30000, '2024-10-05', '', NULL, 'https://i.ibb.co.com/DwKzwrS/phqc-bayar.jpg', NULL),
(271, 6, 0, 3, 1, 2, 0, 350658, '2024-10-05', '', NULL, 'https://i.ibb.co.com/cT5vBj9/Whats-App-Image-2024-10-05-at-11-32-30-85c8d600.jpg', NULL),
(273, 6, 0, 4, 1, 2, 0, 45503, '2024-10-05', '', NULL, 'https://i.ibb.co.com/jhKPK2G/mc.jpg', NULL),
(274, 6, 0, 1, 1, 2, 0, 70000, '2024-10-05', '', NULL, 'https://i.ibb.co.com/smB2nyt/cop.jpg', NULL),
(275, 8, 0, 1, 1, 1, 0, 85000, '2024-10-06', '', NULL, 'https://i.ibb.co.com/D8d6fRL/Whats-App-Image-2024-10-05-at-17-18-22-0b59c582.jpg', NULL),
(276, 8, 0, 2, 1, 1, 0, 35000, '2024-10-06', '', NULL, 'https://i.ibb.co.com/0nv12fp/Whats-App-Image-2024-10-05-at-17-19-04-2a007f86.jpg', NULL),
(277, 8, 0, 3, 1, 1, 0, 550242, '2024-10-06', '', NULL, 'https://i.ibb.co.com/GCF2W3W/Whats-App-Image-2024-10-05-at-18-53-25-7b14bf4d.jpg', NULL),
(278, 8, 0, 4, 1, 1, 0, 45503, '2024-10-06', '', NULL, 'https://i.ibb.co.com/F0NHBqS/Whats-App-Image-2024-10-05-at-18-04-20-ecb1217e.jpg', NULL),
(279, 8, 0, 1, 1, 2, 0, 85000, '2024-10-06', '', NULL, 'https://i.ibb.co.com/drrw1Fb/Whats-App-Image-2024-10-06-at-10-51-10-8340bd79.jpg', NULL),
(280, 8, 0, 2, 1, 2, 0, 35000, '2024-10-06', '', NULL, 'https://i.ibb.co.com/5BSkf3t/Whats-App-Image-2024-10-06-at-10-51-40-dc2738d8.jpg', NULL),
(281, 8, 0, 3, 1, 2, 0, 550242, '2024-10-06', '', NULL, 'https://i.ibb.co.com/rHqzcC6/Whats-App-Image-2024-10-06-at-11-17-21-f46e756a.jpg', NULL),
(282, 8, 0, 4, 1, 2, 0, 45503, '2024-10-06', '', NULL, 'https://i.ibb.co.com/FBkwTgd/Whats-App-Image-2024-10-06-at-10-44-52-ce54d4c9.jpg', NULL),
(283, 8, 0, 5, 1, 2, 0, 207789, '2024-10-06', '', NULL, 'https://i.ibb.co.com/cTvhpyM/Whats-App-Image-2024-10-06-at-12-45-24-07ddc5da.jpg', NULL),
(284, 6, 0, 4, 1, 1, 0, 45503, '2024-10-07', '', NULL, 'https://i.ibb.co.com/7j76LLB/Whats-App-Image-2024-10-06-at-17-03-35-166c4e6d.jpg', NULL),
(285, 6, 0, 1, 1, 1, 0, 70000, '2024-10-07', '', NULL, 'https://i.ibb.co.com/zfYmtBX/Whats-App-Image-2024-10-06-at-17-22-26-6188cdf5.jpg', NULL),
(286, 6, 0, 2, 1, 1, 0, 30000, '2024-10-07', '', NULL, 'https://i.ibb.co.com/YbT3q3m/Whats-App-Image-2024-10-06-at-17-23-01-1f940386.jpg', NULL),
(287, 6, 0, 3, 1, 1, 0, 350658, '2024-10-07', '', NULL, 'https://i.ibb.co.com/NWn2zcy/Whats-App-Image-2024-10-06-at-19-08-00-af63f1e7.jpg', NULL),
(288, 6, 0, 1, 1, 2, 0, 70000, '2024-10-07', '', NULL, 'https://i.ibb.co.com/4j9w87v/Whats-App-Image-2024-10-07-at-11-13-42-debdf3d2.jpg', NULL),
(289, 6, 0, 2, 1, 2, 0, 30000, '2024-10-07', '', NULL, 'https://i.ibb.co.com/JmLZXJ2/Whats-App-Image-2024-10-07-at-11-14-10-3b16fae9.jpg', NULL),
(290, 6, 0, 3, 1, 2, 0, 350658, '2024-10-07', '', NULL, 'https://i.ibb.co.com/MV1g6bg/Whats-App-Image-2024-10-07-at-11-23-06-d633da7d.jpg', NULL),
(291, 6, 0, 4, 1, 2, 0, 45800, '2024-10-07', '', NULL, 'https://i.ibb.co.com/qsnNF4b/Whats-App-Image-2024-10-07-at-11-01-39-97dcb904.jpg', NULL),
(292, 6, 0, 1, 1, 1, 0, 70000, '2024-10-08', '', NULL, 'https://i.ibb.co.com/8rSVCq9/Whats-App-Image-2024-10-07-at-17-12-28-b8203014.jpg', NULL),
(293, 6, 0, 2, 1, 1, 0, 30000, '2024-10-08', '', NULL, 'https://i.ibb.co.com/88jZxdZ/Whats-App-Image-2024-10-07-at-17-12-08-1521ba2d.jpg', NULL),
(294, 6, 0, 3, 1, 1, 0, 350658, '2024-10-08', '', NULL, 'https://i.ibb.co.com/nPfyhdj/Whats-App-Image-2024-10-07-at-17-57-51-3865a7ae.jpg', NULL),
(295, 6, 0, 4, 1, 1, 0, 45800, '2024-10-08', '', NULL, 'https://i.ibb.co.com/HVnHRfy/Whats-App-Image-2024-10-07-at-17-04-44-7a8e97dd.jpg', NULL),
(304, 6, 0, 1, 1, 2, 1, 70000, '2024-10-08', '', NULL, 'https://i.ibb.co.com/MGB9tqv/Whats-App-Image-2024-10-08-at-11-06-22-86e443fe.jpg', NULL),
(305, 6, 0, 2, 1, 2, 1, 30000, '2024-10-08', '', NULL, 'https://i.ibb.co.com/cgW940n/Whats-App-Image-2024-10-08-at-11-06-51-a6ec1b29.jpg', NULL),
(306, 6, 0, 3, 1, 2, 1, 350658, '2024-10-08', '', NULL, 'https://i.ibb.co.com/Vq1pXf9/Whats-App-Image-2024-10-08-at-11-23-13-2512fa79.jpg', NULL),
(307, 6, 0, 4, 1, 2, 1, 46348, '2024-10-08', '', NULL, 'https://i.ibb.co.com/cw3Gzny/Whats-App-Image-2024-10-08-at-10-50-05-f81b617c.jpg', NULL),
(308, 6, 0, 1, 1, 1, 1, 70000, '2024-10-09', '', NULL, 'https://i.ibb.co.com/64bsRtf/Whats-App-Image-2024-10-08-at-17-22-11-e80ad433.jpg', NULL),
(309, 6, 0, 2, 1, 1, 1, 30000, '2024-10-09', '', NULL, 'https://i.ibb.co.com/hdwvFFb/Whats-App-Image-2024-10-08-at-17-24-03-8559b890.jpg', NULL),
(310, 6, 0, 4, 1, 1, 1, 46348, '2024-10-09', '', NULL, 'https://i.ibb.co.com/10rjq1X/Whats-App-Image-2024-10-08-at-17-21-26-3b254d07.jpg', NULL),
(311, 6, 0, 3, 1, 1, 1, 350658, '2024-10-09', '', NULL, 'https://i.ibb.co.com/BqYsTnF/Whats-App-Image-2024-10-08-at-17-45-23-82371758.jpg', NULL),
(312, 6, 0, 1, 1, 2, 1, 70000, '2024-10-09', '', NULL, 'https://i.ibb.co.com/800g1b5/Whats-App-Image-2024-10-09-at-10-37-55-b87124ae.jpg', NULL),
(313, 6, 0, 2, 1, 2, 1, 30000, '2024-10-09', '', NULL, 'https://i.ibb.co.com/Nt5QvCL/Whats-App-Image-2024-10-09-at-10-38-34-762df2b1.jpg', NULL),
(314, 6, 0, 3, 1, 2, 1, 350658, '2024-10-09', '', NULL, 'https://i.ibb.co.com/ZM4jfqc/Whats-App-Image-2024-10-09-at-11-47-21-d54c26a1.jpg', NULL),
(315, 6, 0, 4, 1, 2, 1, 46322, '2024-10-09', '', NULL, 'https://i.ibb.co.com/7Q6QdgQ/Whats-App-Image-2024-10-09-at-10-54-56-670794a0.jpg', NULL),
(316, 7, 0, 1, 1, 1, 1, 85000, '2024-10-10', '', NULL, 'https://i.ibb.co.com/db5Vs8m/Whats-App-Image-2024-10-09-at-17-18-52-b8fbb646.jpg', NULL),
(317, 7, 0, 2, 1, 1, 1, 35000, '2024-10-10', '', NULL, 'https://i.ibb.co.com/WPy8MGQ/Whats-App-Image-2024-10-09-at-17-19-35-e965a0bc.jpg', NULL),
(318, 7, 0, 3, 1, 1, 1, 550242, '2024-10-10', '', NULL, 'https://i.ibb.co.com/9Wb2nSj/Whats-App-Image-2024-10-09-at-19-09-06-00b1b6c3.jpg', NULL),
(319, 7, 0, 4, 1, 1, 1, 46322, '2024-10-10', '', NULL, 'https://i.ibb.co.com/Jsvk2Xj/Whats-App-Image-2024-10-09-at-17-36-44-aff7532c.jpg', NULL),
(320, 7, 0, 1, 1, 2, 1, 85000, '2024-10-10', '', NULL, 'https://i.ibb.co.com/6yVy3Mq/Whats-App-Image-2024-10-10-at-10-35-55-4050aa60.jpg', NULL),
(321, 7, 0, 2, 1, 2, 1, 35000, '2024-10-10', '', NULL, 'https://i.ibb.co.com/sKYYb2h/Whats-App-Image-2024-10-10-at-10-36-21-09288ab9.jpg', NULL),
(322, 7, 0, 4, 1, 2, 1, 46132, '2024-10-10', '', NULL, 'https://i.ibb.co.com/mFpnBq7/Whats-App-Image-2024-10-10-at-11-13-31-99216489.jpg', NULL),
(323, 7, 0, 3, 1, 2, 1, 550242, '2024-10-10', '', NULL, 'https://i.ibb.co.com/qC5TdKZ/Whats-App-Image-2024-10-10-at-11-37-38-903000ba.jpg', NULL),
(324, 1, 0, 1, 1, 1, 1, 70000, '2024-10-11', '', NULL, 'https://i.ibb.co.com/hB4qT2Z/Whats-App-Image-2024-10-10-at-17-13-33-aa97447b.jpg', NULL),
(325, 1, 0, 2, 1, 1, 1, 30000, '2024-10-11', '', NULL, 'https://i.ibb.co.com/RQBDkNT/Whats-App-Image-2024-10-10-at-17-14-04-2e3ca0fb.jpg', NULL),
(326, 1, 0, 3, 1, 1, 1, 350658, '2024-10-11', '', NULL, 'https://i.ibb.co.com/dL9cP3T/Whats-App-Image-2024-10-10-at-18-33-08-7f398695.jpg', NULL),
(327, 1, 0, 4, 1, 1, 1, 46132, '2024-10-11', '', NULL, 'https://i.ibb.co.com/sqBjLC5/Whats-App-Image-2024-10-10-at-17-29-01-6f80ff7e.jpg', NULL),
(328, 1, 0, 5, 1, 1, 1, 134252, '2024-10-11', '', NULL, 'https://i.ibb.co.com/vjYSZLP/Whats-App-Image-2024-10-10-at-17-29-01-0ac69b60.jpg', NULL),
(329, 1, 0, 1, 1, 2, 1, 70000, '2024-10-11', '', NULL, 'https://i.ibb.co.com/D5rhnxH/Whats-App-Image-2024-10-11-at-10-51-11-568cfe79.jpg', NULL),
(330, 1, 0, 2, 1, 2, 1, 30000, '2024-10-11', '', NULL, 'https://i.ibb.co.com/NWFRqC3/Whats-App-Image-2024-10-11-at-10-51-46-00c115d7.jpg', NULL),
(331, 1, 0, 3, 1, 2, 1, 350658, '2024-10-11', '', NULL, 'https://i.ibb.co.com/9g026N4/Whats-App-Image-2024-10-11-at-11-11-38-9c5dadcf.jpg', NULL),
(332, 1, 0, 4, 1, 2, 1, 46283, '2024-10-11', '', NULL, 'https://i.ibb.co.com/zm2VgvT/Whats-App-Image-2024-10-11-at-10-55-27-5d14acbd.jpg', NULL),
(333, 1, 0, 1, 1, 1, 1, 70000, '2024-10-12', '', NULL, 'https://i.ibb.co.com/XyfSptC/Whats-App-Image-2024-10-11-at-17-27-11-b81d8f76.jpg', NULL),
(334, 1, 0, 2, 1, 1, 1, 30000, '2024-10-12', '', NULL, 'https://i.ibb.co.com/GVKNcr4/Whats-App-Image-2024-10-11-at-17-27-40-d2057487.jpg', NULL),
(335, 1, 0, 3, 1, 1, 1, 350658, '2024-10-12', '', NULL, 'https://i.ibb.co.com/XC6ZWws/Whats-App-Image-2024-10-11-at-18-54-08-7b1b4a98.jpg', NULL),
(336, 1, 0, 4, 1, 1, 1, 46283, '2024-10-12', '', NULL, 'https://i.ibb.co.com/DpvG0t6/Whats-App-Image-2024-10-11-at-17-43-22-2be119d1.jpg', NULL),
(337, 1, 0, 4, 1, 2, 1, 46283, '2024-10-12', '', NULL, 'https://i.ibb.co.com/mSb0TxL/Whats-App-Image-2024-10-12-at-10-40-17-03ad9bb7.jpg', NULL),
(338, 1, 0, 1, 1, 2, 1, 70000, '2024-10-12', '', NULL, 'https://i.ibb.co.com/4R8D5mn/Whats-App-Image-2024-10-12-at-10-44-34-2269b320.jpg', NULL),
(339, 1, 0, 2, 1, 2, 1, 30000, '2024-10-12', '', NULL, 'https://i.ibb.co.com/hK1Ywsm/Whats-App-Image-2024-10-12-at-10-45-34-e4a57ece.jpg', NULL),
(340, 1, 0, 3, 1, 2, 1, 350658, '2024-10-12', '', NULL, 'https://i.ibb.co.com/6PtRhM7/Whats-App-Image-2024-10-12-at-10-57-12-9a76f88b.jpg', NULL),
(341, 1, 0, 4, 1, 1, 1, 46283, '2024-10-13', '', NULL, 'https://i.ibb.co.com/FbvQFtH/Whats-App-Image-2024-10-12-at-16-55-42-259bf950.jpg', NULL),
(342, 1, 0, 1, 1, 1, 1, 70000, '2024-10-13', '', NULL, 'https://i.ibb.co.com/pWxqP7S/Whats-App-Image-2024-10-12-at-17-06-38-cf7bab60.jpg', NULL),
(343, 1, 0, 2, 1, 1, 1, 30000, '2024-10-13', '', NULL, 'https://i.ibb.co.com/pXSYKzY/Whats-App-Image-2024-10-12-at-17-07-07-021cd0fd.jpg', NULL),
(344, 1, 0, 3, 1, 1, 1, 350658, '2024-10-13', '', NULL, 'https://i.ibb.co.com/BL5Mw8b/Whats-App-Image-2024-10-12-at-17-34-10-9346fc63.jpg', NULL),
(345, 1, 0, 4, 1, 2, 1, 46283, '2024-10-13', '', NULL, 'https://i.ibb.co.com/KVmpsHf/Whats-App-Image-2024-10-13-at-10-39-28-736f56a4.jpg', NULL),
(346, 1, 0, 1, 1, 2, 1, 70000, '2024-10-13', '', NULL, 'https://i.ibb.co.com/LYVgxY3/Whats-App-Image-2024-10-13-at-10-42-57-a396634d.jpg', NULL),
(347, 1, 0, 2, 1, 2, 1, 30000, '2024-10-13', '', NULL, 'https://i.ibb.co.com/F4n7FhT/Whats-App-Image-2024-10-13-at-10-43-42-6a8180b7.jpg', NULL),
(348, 1, 0, 3, 1, 2, 1, 350658, '2024-10-13', '', NULL, 'https://i.ibb.co.com/K7nZ7BZ/Whats-App-Image-2024-10-13-at-11-13-53-293e78fd.jpg', NULL),
(349, 1, 0, 1, 1, 1, 1, 70000, '2024-10-14', '', NULL, 'https://i.ibb.co.com/XbFW2Tb/Whats-App-Image-2024-10-13-at-17-17-51-4e636f43.jpg', NULL),
(350, 1, 0, 2, 1, 1, 1, 30000, '2024-10-14', '', NULL, 'https://i.ibb.co.com/vYW65KS/Whats-App-Image-2024-10-13-at-17-18-20-ea496503.jpg', NULL),
(351, 1, 0, 4, 1, 1, 1, 46283, '2024-10-14', '', NULL, 'https://i.ibb.co.com/yQf4rrY/Whats-App-Image-2024-10-13-at-17-25-54-70f93629.jpg', NULL),
(352, 1, 0, 3, 1, 1, 1, 350658, '2024-10-14', '', NULL, 'https://i.ibb.co.com/YPSdq0y/Whats-App-Image-2024-10-13-at-18-31-53-905fb8c1.jpg', NULL),
(353, 1, 0, 1, 1, 2, 1, 70000, '2024-10-14', '', NULL, 'https://i.ibb.co.com/m9SP1rC/Whats-App-Image-2024-10-14-at-10-37-49-31a01ab8.jpg', NULL),
(354, 1, 0, 2, 1, 2, 1, 30000, '2024-10-14', '', NULL, 'https://i.ibb.co.com/YRdHKq2/Whats-App-Image-2024-10-14-at-10-37-20-cd5755fa.jpg', NULL),
(355, 1, 0, 3, 1, 2, 1, 350658, '2024-10-14', '', NULL, 'https://i.ibb.co.com/jGb1Kbv/Whats-App-Image-2024-10-14-at-11-19-59-73f6db48.jpg', NULL),
(356, 1, 0, 4, 1, 2, 1, 46138, '2024-10-14', '', NULL, 'https://i.ibb.co.com/FWrYStj/Whats-App-Image-2024-10-14-at-10-48-03-9670f323.jpg', NULL),
(357, 1, 0, 3, 1, 1, 1, 350658, '2024-10-15', '', NULL, 'https://i.ibb.co.com/ftfKv3r/Whats-App-Image-2024-10-14-at-17-27-03-55c824a4.jpg', NULL),
(358, 1, 0, 2, 1, 1, 1, 30000, '2024-10-15', '', NULL, 'https://i.ibb.co.com/Jp6sKDR/Whats-App-Image-2024-10-14-at-17-10-52-49c863fa.jpg', NULL),
(359, 1, 0, 1, 1, 1, 1, 70000, '2024-10-15', '', NULL, 'https://i.ibb.co.com/Sd12pjc/Whats-App-Image-2024-10-14-at-17-09-38-8a7a9ae9.jpg', NULL),
(360, 1, 0, 4, 1, 1, 1, 46138, '2024-10-15', '', NULL, 'https://i.ibb.co.com/Np2py0F/Whats-App-Image-2024-10-14-at-17-08-46-b94b8188.jpg', NULL),
(361, 1, 0, 1, 1, 2, 1, 70000, '2024-10-15', '', NULL, 'https://i.ibb.co.com/hysMSFz/Whats-App-Image-2024-10-15-at-10-39-45-bb1739c7.jpg', NULL),
(362, 1, 0, 3, 1, 2, 1, 350658, '2024-10-15', '', NULL, 'https://i.ibb.co.com/1rW8SYh/Whats-App-Image-2024-10-15-at-11-11-46-7e5a77b8.jpg', NULL),
(363, 1, 0, 2, 1, 2, 1, 30000, '2024-10-15', '', NULL, 'https://i.ibb.co.com/5cbRgNR/Whats-App-Image-2024-10-15-at-10-40-18-60432d78.jpg', NULL),
(364, 1, 0, 4, 1, 2, 1, 46055, '2024-10-15', '', NULL, 'https://i.ibb.co.com/0XLLctW/Whats-App-Image-2024-10-15-at-10-41-37-de0c0856.jpg', NULL),
(365, 1, 0, 1, 1, 1, 1, 70000, '2024-10-17', '', NULL, 'https://i.ibb.co.com/c13zq95/Whats-App-Image-2024-10-17-at-08-34-39-308087f5.jpg', NULL),
(366, 1, 0, 2, 1, 1, 1, 30000, '2024-10-17', '', NULL, 'https://i.ibb.co.com/WB8g2T2/Whats-App-Image-2024-10-17-at-08-35-03-541af5fb.jpg', NULL),
(367, 1, 0, 3, 1, 1, 1, 350658, '2024-10-17', '', NULL, 'https://i.ibb.co.com/zsZLjMH/Whats-App-Image-2024-10-17-at-08-35-55-cd99a4ea.jpg', NULL),
(368, 1, 0, 4, 1, 1, 1, 45978, '2024-10-17', '', NULL, 'https://i.ibb.co.com/0Gfrkjw/Whats-App-Image-2024-10-17-at-08-35-34-5e46fa46.jpg', NULL),
(369, 1, 0, 1, 1, 1, 1, 70000, '2024-10-16', '', NULL, 'https://i.ibb.co.com/yqV1sTL/Whats-App-Image-2024-10-17-at-08-28-17-3abbb760.jpg', NULL),
(370, 1, 0, 2, 1, 1, 1, 30000, '2024-10-16', '', NULL, 'https://i.ibb.co.com/6F6TKhp/Whats-App-Image-2024-10-17-at-08-29-24-4d43e712.jpg', NULL),
(371, 1, 0, 3, 1, 1, 1, 350658, '2024-10-16', '', NULL, 'https://i.ibb.co.com/P4vwQHK/Whats-App-Image-2024-10-17-at-08-30-21-cd2d5d16.jpg', NULL),
(372, 1, 0, 4, 1, 1, 1, 46055, '2024-10-16', '', NULL, 'https://i.ibb.co.com/yNMqrgf/Whats-App-Image-2024-10-17-at-08-29-52-9923dbbf.jpg', NULL),
(373, 1, 0, 1, 1, 2, 1, 70000, '2024-10-16', '', NULL, 'https://i.ibb.co.com/HNy8GJG/Whats-App-Image-2024-10-17-at-08-32-28-da274c33.jpg', NULL),
(374, 1, 0, 2, 1, 2, 1, 30000, '2024-10-16', '', NULL, 'https://i.ibb.co.com/rQ8bVXv/Whats-App-Image-2024-10-17-at-08-33-09-b3430f1f.jpg', NULL),
(375, 1, 0, 3, 1, 2, 1, 350658, '2024-10-16', '', NULL, 'https://i.ibb.co.com/NpS82Z4/Whats-App-Image-2024-10-17-at-08-33-42-451c5cb6.jpg', NULL),
(376, 1, 0, 4, 1, 2, 1, 45978, '2024-10-16', '', NULL, 'https://i.ibb.co.com/d027Ggx/Whats-App-Image-2024-10-17-at-08-31-54-8a9d5452.jpg', NULL),
(377, 1, 0, 1, 1, 2, 1, 70000, '2024-10-17', '', NULL, 'https://i.ibb.co.com/KWJDHbW/Whats-App-Image-2024-10-17-at-10-55-44-9b2f9971.jpg', NULL),
(378, 1, 0, 2, 1, 2, 1, 30000, '2024-10-17', '', NULL, 'https://i.ibb.co.com/nc7fXYK/Whats-App-Image-2024-10-17-at-10-56-32-6319a023.jpg', NULL),
(379, 1, 0, 3, 1, 2, 1, 350658, '2024-10-17', '', NULL, 'https://i.ibb.co.com/yBxMdc0/Whats-App-Image-2024-10-17-at-10-57-18-a2aabe74.jpg', NULL),
(380, 1, 0, 4, 1, 2, 1, 45922, '2024-10-17', '', NULL, 'https://i.ibb.co.com/xmzkY7R/Whats-App-Image-2024-10-17-at-10-42-38-aa934410.jpg', NULL),
(381, 7, 0, 1, 1, 1, 1, 85000, '2024-10-18', '', NULL, 'https://i.ibb.co.com/41kwq1Y/Whats-App-Image-2024-10-17-at-17-08-59-a91f8ebe.jpg', NULL),
(382, 7, 0, 2, 1, 1, 1, 35000, '2024-10-18', '', NULL, 'https://i.ibb.co.com/1GwwxPD/Whats-App-Image-2024-10-17-at-17-10-16-f521d3b6.jpg', NULL),
(383, 7, 0, 3, 1, 1, 1, 550242, '2024-10-18', '', NULL, 'https://i.ibb.co.com/Bgkg18n/Whats-App-Image-2024-10-17-at-18-52-05-c6a7008a.jpg', NULL),
(384, 7, 0, 4, 1, 1, 1, 45922, '2024-10-18', '', NULL, 'https://i.ibb.co.com/Ps2dWLJ/Whats-App-Image-2024-10-17-at-17-06-03-c5f62a27.jpg', NULL),
(385, 7, 0, 1, 1, 1, 1, 85000, '2024-10-19', '', NULL, 'https://i.ibb.co.com/Jx0ykBf/Whats-App-Image-2024-10-18-at-17-19-34-3af2c106.jpg', NULL),
(386, 7, 0, 2, 1, 1, 1, 35000, '2024-10-19', '', NULL, 'https://i.ibb.co.com/DCdrDws/Whats-App-Image-2024-10-18-at-17-20-23-7fdf95f0.jpg', NULL),
(387, 7, 0, 1, 1, 2, 1, 85000, '2024-10-18', '', NULL, 'https://i.ibb.co.com/7CK6TvL/Whats-App-Image-2024-10-18-at-10-50-59-23d400f3.jpg', NULL),
(388, 7, 0, 2, 1, 2, 1, 35000, '2024-10-18', '', NULL, 'https://i.ibb.co.com/wCSD9LF/Whats-App-Image-2024-10-18-at-10-52-00-7fad9e4d.jpg', NULL),
(390, 7, 0, 4, 1, 2, 1, 45863, '2024-10-18', '', NULL, 'https://i.ibb.co.com/brKJy4t/Whats-App-Image-2024-10-18-at-10-38-18-2d0be1e4.jpg', NULL),
(391, 7, 0, 3, 1, 1, 1, 550242, '2024-10-19', '', NULL, 'https://i.ibb.co.com/xYBBKQW/Whats-App-Image-2024-10-18-at-18-35-21-7c039207.jpg', NULL),
(392, 7, 0, 3, 1, 2, 1, 550242, '2024-10-18', '', NULL, 'https://i.ibb.co.com/M9YHXvB/Whats-App-Image-2024-10-18-at-11-02-38-f590654d.jpg', NULL),
(393, 7, 0, 4, 1, 1, 1, 45863, '2024-10-19', '', NULL, 'https://i.ibb.co.com/wgNp1z2/Whats-App-Image-2024-10-18-at-17-18-08-63f00873.jpg', NULL),
(394, 7, 0, 1, 1, 2, 1, 85000, '2024-10-19', '', NULL, 'https://i.ibb.co.com/28wMxjW/Whats-App-Image-2024-10-21-at-08-48-24-94d1fb52.jpg', NULL),
(395, 7, 0, 2, 1, 2, 1, 35000, '2024-10-19', '', NULL, 'https://i.ibb.co.com/fGpKyYP/Whats-App-Image-2024-10-19-at-10-54-11-36241982.jpg', NULL),
(396, 7, 0, 3, 1, 2, 1, 550242, '2024-10-19', '', NULL, 'https://i.ibb.co.com/2vhbvr3/Whats-App-Image-2024-10-19-at-11-25-22-fd5eea52.jpg', NULL),
(397, 7, 0, 4, 1, 2, 1, 45863, '2024-10-19', '', NULL, 'https://i.ibb.co.com/khkjJyG/Whats-App-Image-2024-10-19-at-11-12-51-ae61edff.jpg', NULL),
(398, 7, 0, 1, 1, 1, 1, 85000, '2024-10-20', '', NULL, 'https://i.ibb.co.com/2Z97Zmx/Whats-App-Image-2024-10-19-at-17-02-53-26ab6c9c.jpg', NULL),
(399, 7, 0, 2, 1, 1, 1, 35000, '2024-10-20', '', NULL, 'https://i.ibb.co.com/6bTyFpK/Whats-App-Image-2024-10-19-at-17-03-53-f2473fc5.jpg', NULL),
(400, 7, 0, 3, 1, 1, 1, 550242, '2024-10-20', '', NULL, 'https://i.ibb.co.com/QbtxZ0n/Whats-App-Image-2024-10-19-at-19-15-23-91693e9f.jpg', NULL),
(401, 7, 0, 4, 1, 1, 1, 45863, '2024-10-20', '', NULL, 'https://i.ibb.co.com/VqPwQDb/Whats-App-Image-2024-10-19-at-17-41-41-67a0ae0d.jpg', NULL),
(402, 7, 0, 1, 1, 2, 1, 85000, '2024-10-20', '', NULL, 'https://i.ibb.co.com/Hq2QHm7/Whats-App-Image-2024-10-20-at-10-58-03-6e7a9a28.jpg', NULL),
(403, 7, 0, 2, 1, 2, 1, 35000, '2024-10-20', '', NULL, 'https://i.ibb.co.com/Bgkq6Yn/Whats-App-Image-2024-10-20-at-10-59-01-6082354f.jpg', NULL),
(404, 7, 0, 3, 1, 2, 1, 550242, '2024-10-20', '', NULL, 'https://i.ibb.co.com/bPZBnWh/Whats-App-Image-2024-10-20-at-12-02-40-016e5cfa.jpg', 319022),
(405, 7, 0, 4, 1, 2, 1, 45863, '2024-10-20', '', NULL, 'https://i.ibb.co.com/5R6C7pV/Whats-App-Image-2024-10-20-at-10-47-31-6f4b171a.jpg', NULL),
(406, 2, 0, 1, 1, 1, 1, 70000, '2024-10-21', '', NULL, 'https://i.ibb.co.com/StFwzYR/Whats-App-Image-2024-10-20-at-17-08-31-d41360d9.jpg', 1249022),
(407, 2, 0, 2, 1, 1, 1, 30000, '2024-10-21', '', NULL, 'https://i.ibb.co.com/xCKbKNp/Whats-App-Image-2024-10-20-at-17-09-02-98d26f9f.jpg', 1219022),
(408, 2, 0, 3, 1, 1, 1, 350658, '2024-10-21', '', NULL, 'https://i.ibb.co.com/PtqkR6X/Whats-App-Image-2024-10-20-at-19-00-10-f99b6b70.jpg', 689032),
(409, 2, 0, 4, 1, 1, 1, 45863, '2024-10-21', '', NULL, 'https://i.ibb.co.com/3ymtwrH/Whats-App-Image-2024-10-20-at-17-30-27-b066c8b5.jpg', 1173159),
(410, 2, 0, 5, 1, 1, 1, 133469, '2024-10-21', '', NULL, 'https://i.ibb.co.com/mc385kX/Whats-App-Image-2024-10-20-at-17-43-15-b47a4a4e.jpg', 1039690),
(418, 2, 0, 4, 1, 2, 1, 45715, '2024-10-21', '', NULL, 'https://i.ibb.co.com/d6Fz0Rs/Whats-App-Image-2024-10-21-at-11-07-29-b625d6da.jpg', 638317),
(419, 2, 0, 1, 1, 2, 1, 70000, '2024-10-21', '', NULL, 'https://i.ibb.co.com/bXtpkDs/Whats-App-Image-2024-10-21-at-11-12-50-a076604b.jpg', 568317),
(420, 2, 0, 2, 1, 2, 1, 30000, '2024-10-21', '', NULL, 'https://i.ibb.co.com/R42s233/Whats-App-Image-2024-10-21-at-11-11-59-c9fdb909.jpg', 538317),
(421, 2, 0, 6, 1, 2, 1, 100000, '2024-10-21', '', NULL, 'https://i.ibb.co.com/NFP3sVW/Whats-App-Image-2024-10-21-at-11-13-39-3902fa3a.jpg', 438317),
(422, 2, 0, 3, 1, 2, 1, 350658, '2024-10-21', '', NULL, 'https://i.ibb.co.com/LpZwg8z/Whats-App-Image-2024-10-21-at-12-17-53-98abbeff.jpg', 87659),
(433, 2, 0, 1, 1, 1, 1, 70000, '2024-10-22', '', NULL, 'https://i.ibb.co.com/p42T0Tr/Whats-App-Image-2024-10-21-at-17-07-50-fe13133f.jpg', 1016159),
(434, 2, 0, 2, 1, 1, 1, 30000, '2024-10-22', '', NULL, 'https://i.ibb.co.com/QrYj0XV/Whats-App-Image-2024-10-21-at-17-08-52-6873f031.jpg', 986159),
(435, 2, 0, 4, 1, 1, 1, 45715, '2024-10-22', '', NULL, 'https://i.ibb.co.com/ngmVGNC/Whats-App-Image-2024-10-21-at-17-27-52-da03e321.jpg', 940444),
(436, 2, 0, 3, 1, 1, 1, 350658, '2024-10-22', '', NULL, 'https://i.ibb.co.com/VCLgLdK/Whats-App-Image-2024-10-21-at-18-44-01-63efdbac.jpg', 589786),
(437, 2, 0, 1, 1, 2, 1, 70000, '2024-10-22', '', NULL, 'https://i.ibb.co.com/DLMvpxf/Whats-App-Image-2024-10-22-at-10-57-07-59e75e05.jpg', 519786),
(438, 2, 0, 2, 1, 2, 1, 30000, '2024-10-22', '', NULL, 'https://i.ibb.co.com/m4qPXmN/Whats-App-Image-2024-10-22-at-10-59-31-2b609fa7.jpg', 489786),
(439, 2, 0, 4, 1, 2, 1, 45712, '2024-10-22', '', NULL, 'https://i.ibb.co.com/cQ5QRGR/Whats-App-Image-2024-10-22-at-11-08-33-98fc5ed7.jpg', 444074),
(440, 2, 0, 3, 1, 2, 1, 350658, '2024-10-22', '', NULL, 'https://i.ibb.co.com/fktTB9v/Whats-App-Image-2024-10-22-at-11-43-40-fb72d702.jpg', 93416),
(441, 2, 0, 4, 1, 1, 1, 45712, '2024-10-23', '', NULL, 'https://i.ibb.co.com/y0K77nJ/Whats-App-Image-2024-10-22-at-17-41-40-6ece1d97.jpg', 3954288),
(443, 2, 0, 1, 1, 1, 1, 70000, '2024-10-23', '', NULL, 'https://i.ibb.co.com/0Gj8Vm9/Whats-App-Image-2024-10-22-at-17-42-20-5bac5351.jpg', 3884288),
(444, 2, 0, 2, 1, 1, 1, 30000, '2024-10-23', '', NULL, 'https://i.ibb.co.com/yVDCQ9G/Whats-App-Image-2024-10-22-at-17-42-56-fa4751b4.jpg', 3854288),
(445, 2, 0, 3, 1, 1, 1, 350658, '2024-10-23', '', NULL, 'https://i.ibb.co.com/Rp1Qtpf/Whats-App-Image-2024-10-22-at-18-00-33-1dd33305.jpg', 3503630),
(446, 2, 0, 1, 1, 2, 1, 70000, '2024-10-23', '', NULL, 'https://i.ibb.co.com/GpXZ7xF/Whats-App-Image-2024-10-23-at-10-57-01-ff4e2237.jpg', 3433630),
(447, 2, 0, 2, 1, 2, 1, 30000, '2024-10-23', '', NULL, 'https://i.ibb.co.com/sQZKBrD/Whats-App-Image-2024-10-23-at-10-57-37-6235fa29.jpg', 3403630),
(448, 2, 0, 3, 1, 2, 1, 350658, '2024-10-23', '', NULL, 'https://i.ibb.co.com/vwCjXBK/Whats-App-Image-2024-10-23-at-11-19-41-6208b1f0.jpg', 3052972),
(449, 2, 0, 4, 1, 2, 1, 45993, '2024-10-23', '', NULL, 'https://i.ibb.co.com/6nspYpq/Whats-App-Image-2024-10-23-at-11-20-50-09d1973e.jpg', 3006979),
(450, 2, 0, 1, 1, 1, 1, 70000, '2024-10-24', '', NULL, 'https://i.ibb.co.com/sy6SFz5/Whats-App-Image-2024-10-23-at-17-44-02-6cde9e95.jpg', 2936979),
(451, 2, 0, 2, 1, 1, 1, 30000, '2024-10-24', '', NULL, 'https://i.ibb.co.com/27x9LLb/Whats-App-Image-2024-10-23-at-17-44-54-b640137b.jpg', 2906979),
(452, 2, 0, 4, 1, 1, 1, 45993, '2024-10-24', '', NULL, 'https://i.ibb.co.com/WK1d5xp/Whats-App-Image-2024-10-23-at-18-27-33-e158aacc.jpg', 2860986),
(453, 2, 0, 3, 1, 1, 1, 350658, '2024-10-24', '', NULL, 'https://i.ibb.co.com/WK1d5xp/Whats-App-Image-2024-10-23-at-18-27-33-e158aacc.jpg', 2510328),
(454, 2, 0, 1, 1, 2, 1, 70000, '2024-10-24', '', NULL, 'https://i.ibb.co.com/GRFpm9p/Whats-App-Image-2024-10-24-at-10-40-10-3c1a7653.jpg', 2440328),
(455, 2, 0, 2, 1, 2, 1, 30000, '2024-10-24', '', NULL, 'https://i.ibb.co.com/55HVcbG/Whats-App-Image-2024-10-24-at-10-40-47-00b28e89.jpg', 2410328),
(456, 2, 0, 4, 1, 2, 1, 46170, '2024-10-24', '', NULL, 'https://i.ibb.co.com/31F8VtB/Whats-App-Image-2024-10-24-at-11-15-00-08326e3e.jpg', 2364158),
(457, 2, 0, 3, 1, 2, 1, 350658, '2024-10-24', '', NULL, 'https://i.ibb.co.com/zNRfmrY/Whats-App-Image-2024-10-24-at-12-14-37-ef81a13f.jpg', 2013500),
(458, 2, 0, 1, 1, 1, 1, 70000, '2024-10-25', '', NULL, 'https://i.ibb.co.com/Df3G9R4/Whats-App-Image-2024-10-24-at-16-55-20-a25bf276.jpg', 1943500),
(459, 2, 0, 2, 1, 1, 1, 30000, '2024-10-25', '', NULL, 'https://i.ibb.co.com/Vt9SChN/Whats-App-Image-2024-10-24-at-16-56-22-9f295507.jpg', 1913500),
(460, 2, 0, 4, 1, 1, 1, 46170, '2024-10-25', '', NULL, 'https://i.ibb.co.com/r4gg3st/Whats-App-Image-2024-10-24-at-17-14-32-af29ea58.jpg', 1867330),
(461, 2, 0, 3, 1, 1, 1, 350658, '2024-10-25', '', NULL, 'https://i.ibb.co.com/vx35bBk/Whats-App-Image-2024-10-24-at-18-26-26-acbdf904.jpg', 1516672),
(462, 2, 0, 1, 1, 2, 1, 70000, '2024-10-25', '', NULL, 'https://i.ibb.co.com/Sx8rKF2/Whats-App-Image-2024-10-25-at-10-57-55-1986ead2.jpg', 1446672),
(463, 2, 0, 2, 1, 2, 1, 30000, '2024-10-25', '', NULL, 'https://i.ibb.co.com/bNm3fFK/Whats-App-Image-2024-10-25-at-10-58-28-5330b435.jpg', 1416672),
(464, 2, 0, 4, 1, 2, 1, 46090, '2024-10-25', '', NULL, 'https://i.ibb.co.com/jkhyspC/Whats-App-Image-2024-10-25-at-11-24-31-384983df.jpg', 1370582),
(465, 2, 0, 3, 1, 2, 1, 350658, '2024-10-25', '', NULL, 'https://i.ibb.co.com/JQ3J7wh/Whats-App-Image-2024-10-25-at-11-55-01-bc130c92.jpg', 1019924),
(466, 2, 0, 1, 1, 1, 1, 70000, '2024-10-26', '', NULL, 'https://i.ibb.co.com/WVqfRkX/Whats-App-Image-2024-10-25-at-17-18-26-099f5cfa.jpg', 949924),
(467, 2, 0, 2, 1, 1, 1, 30000, '2024-10-26', '', NULL, 'https://i.ibb.co.com/S3ksCfm/Whats-App-Image-2024-10-25-at-17-19-07-89436718.jpg', 919924),
(468, 2, 0, 4, 1, 1, 1, 46090, '2024-10-26', '', NULL, 'https://i.ibb.co.com/tz44KJt/Whats-App-Image-2024-10-25-at-17-28-10-bfcf86b0.jpg', 873834),
(469, 2, 0, 3, 1, 1, 1, 350658, '2024-10-26', '', NULL, 'https://i.ibb.co.com/F6HgRcy/Whats-App-Image-2024-10-25-at-18-03-50-01eca649.jpg', 523176),
(470, 2, 0, 1, 1, 2, 1, 70000, '2024-10-26', '', NULL, 'https://i.ibb.co.com/BqzpHVj/Whats-App-Image-2024-10-26-at-10-54-21-77048456.jpg', 5453176),
(471, 2, 0, 2, 1, 2, 1, 30000, '2024-10-26', '', NULL, 'https://i.ibb.co.com/t35M67D/Whats-App-Image-2024-10-26-at-10-58-03-9010aa2d.jpg', 5423176),
(472, 2, 0, 4, 1, 2, 1, 46090, '2024-10-26', '', NULL, 'https://i.ibb.co.com/BqzpHVj/Whats-App-Image-2024-10-26-at-10-54-21-77048456.jpg', 5377086),
(473, 2, 0, 3, 1, 2, 1, 350658, '2024-10-26', '', NULL, 'https://i.ibb.co.com/GkNbFMy/Whats-App-Image-2024-10-26-at-12-02-22-adfd9d36.jpg', 5026428),
(474, 2, 0, 1, 1, 1, 1, 70000, '2024-10-27', '', NULL, 'https://i.ibb.co.com/rMy2zct/Whats-App-Image-2024-10-26-at-17-01-53-ec6074de.jpg', 4956428),
(475, 2, 0, 2, 1, 1, 1, 30000, '2024-10-27', '', NULL, 'https://i.ibb.co.com/tDTyvz4/Whats-App-Image-2024-10-26-at-17-03-25-bf5643e6.jpg', 4926428),
(476, 2, 0, 4, 1, 1, 1, 46090, '2024-10-27', '', NULL, 'https://i.ibb.co.com/s2cZqg1/Whats-App-Image-2024-10-26-at-17-38-48-835c6549.jpg', 4880338),
(477, 2, 0, 3, 1, 1, 1, 350658, '2024-10-27', '', NULL, 'https://i.ibb.co.com/NndFBKy/Whats-App-Image-2024-10-26-at-17-35-10-9ed8b209.jpg', 4529680),
(478, 2, 0, 1, 1, 2, 1, 70000, '2024-10-27', '', NULL, 'https://i.ibb.co.com/8Pwwv9R/Whats-App-Image-2024-10-27-at-10-49-42-500598aa.jpg', 4459680),
(479, 2, 0, 2, 1, 2, 1, 30000, '2024-10-27', '', NULL, 'https://i.ibb.co.com/Wz8ymFn/Whats-App-Image-2024-10-27-at-10-50-33-89230d1a.jpg', 4429680),
(480, 2, 0, 4, 1, 2, 1, 46090, '2024-10-27', '', NULL, 'https://i.ibb.co.com/PMky4yg/Whats-App-Image-2024-10-27-at-11-34-41-4478204f.jpg', 4383590),
(481, 2, 0, 3, 1, 2, 1, 350658, '2024-10-27', '', NULL, 'https://i.ibb.co.com/7WQhpK0/Whats-App-Image-2024-10-27-at-11-47-13-0ab0a8bd.jpg', 4032932),
(482, 2, 0, 1, 1, 1, 1, 70000, '2024-10-28', '', NULL, 'https://i.ibb.co.com/vPp7ckL/Whats-App-Image-2024-10-27-at-17-24-08-cd795ce5.jpg', 3962932),
(483, 2, 0, 2, 1, 1, 1, 30000, '2024-10-28', '', NULL, 'https://i.ibb.co.com/gjyLw4k/Whats-App-Image-2024-10-27-at-17-25-44-de8f616c.jpg', 3932932),
(484, 2, 0, 4, 1, 1, 1, 46090, '2024-10-28', '', NULL, 'https://i.ibb.co.com/McXBv8j/Whats-App-Image-2024-10-27-at-17-32-11-7e63f692.jpg', 3886842),
(485, 2, 0, 3, 1, 1, 1, 350658, '2024-10-28', '', NULL, 'https://i.ibb.co.com/Fnqhf24/Whats-App-Image-2024-10-27-at-17-52-05-38939db7.jpg', 3536184),
(486, 2, 0, 1, 1, 2, 1, 70000, '2024-10-28', '', NULL, 'https://i.ibb.co.com/Ch17Nx4/Whats-App-Image-2024-10-28-at-10-54-06-620ce984.jpg', 3466184),
(487, 2, 0, 2, 1, 2, 1, 30000, '2024-10-28', '', NULL, 'https://i.ibb.co.com/B3q7jMz/Whats-App-Image-2024-10-28-at-10-54-54-489f007b.jpg', 3436184),
(488, 2, 0, 4, 1, 2, 1, 46197, '2024-10-28', '', NULL, 'https://i.ibb.co.com/dcm7sR2/Whats-App-Image-2024-10-28-at-11-01-18-78422764.jpg', 3389987),
(489, 2, 0, 3, 1, 2, 1, 350658, '2024-10-28', '', NULL, 'https://i.ibb.co.com/5T4g2gB/Whats-App-Image-2024-10-28-at-11-17-14-186e34f2.jpg', 3039329),
(490, 7, 0, 1, 1, 1, 1, 85000, '2024-10-29', '', NULL, 'https://i.ibb.co.com/P4QJdmM/Whats-App-Image-2024-10-28-at-17-44-03-b83f824e.jpg', 2954329),
(491, 7, 0, 2, 1, 1, 1, 35000, '2024-10-29', '', NULL, 'https://i.ibb.co.com/KsbF9Ky/Whats-App-Image-2024-10-28-at-17-44-54-da1f711a.jpg', 2919329),
(492, 7, 0, 4, 1, 1, 1, 46197, '2024-10-29', '', NULL, 'https://i.ibb.co.com/t417f80/Whats-App-Image-2024-10-28-at-17-45-25-5b1fd6d6.jpg', 2873132),
(493, 7, 0, 3, 1, 1, 1, 550242, '2024-10-29', '', NULL, 'https://i.ibb.co.com/6t7BCBd/Whats-App-Image-2024-10-28-at-19-14-09-5d17660e.jpg', 2322890),
(496, 7, 0, 1, 1, 2, 1, 85000, '2024-10-29', '', NULL, 'https://i.ibb.co.com/ySrW4Y2/Whats-App-Image-2024-10-29-at-10-43-34-15b4a80c.jpg', 2237890),
(497, 7, 0, 2, 1, 2, 1, 35000, '2024-10-29', '', NULL, 'https://i.ibb.co.com/nLzGGSv/Whats-App-Image-2024-10-29-at-10-44-15-032ce905.jpg', 2202890),
(498, 7, 0, 4, 1, 2, 1, 46197, '2024-10-29', '', NULL, 'https://i.ibb.co.com/PtDtRpJ/Whats-App-Image-2024-10-29-at-10-41-56-225cd461.jpg', 2156693),
(499, 7, 0, 3, 1, 2, 1, 550242, '2024-10-29', '', NULL, 'https://i.ibb.co.com/h8ZYmxK/Whats-App-Image-2024-10-29-at-15-15-57-d3b80e33.jpg', 1606451),
(500, 1, 0, 1, 1, 1, 1, 70000, '2024-10-30', '', NULL, 'https://i.ibb.co.com/wMzh7Qv/Whats-App-Image-2024-10-29-at-17-03-40-505f68da.jpg', 1536451),
(501, 1, 0, 2, 1, 1, 1, 30000, '2024-10-30', '', NULL, 'https://i.ibb.co.com/0tkyF1v/Whats-App-Image-2024-10-29-at-17-04-34-8dc60286.jpg', 1506451),
(502, 1, 0, 4, 1, 1, 1, 46493, '2024-10-30', '', NULL, 'https://i.ibb.co.com/fksy79g/Whats-App-Image-2024-10-29-at-17-11-59-70193235.jpg', 1459958),
(503, 1, 0, 3, 1, 1, 1, 350658, '2024-10-30', '', NULL, 'https://i.ibb.co.com/5sq7GrR/Whats-App-Image-2024-10-29-at-18-46-41-42221434.jpg', 1109300),
(504, 1, 0, 4, 1, 2, 1, 46584, '2024-10-30', '', NULL, 'https://i.ibb.co.com/P6kHHsq/Whats-App-Image-2024-10-30-at-10-42-23-1f8d7d76.jpg', 1062716),
(505, 1, 0, 1, 1, 2, 1, 70000, '2024-10-30', '', NULL, 'https://i.ibb.co.com/23Krr4L/Whats-App-Image-2024-10-30-at-10-42-58-fd51b1b1.jpg', 992716),
(506, 1, 0, 2, 1, 2, 1, 30000, '2024-10-30', '', NULL, 'https://i.ibb.co.com/cgPHzv4/Whats-App-Image-2024-10-30-at-10-43-36-c9df660a.jpg', 962716),
(507, 1, 0, 3, 1, 2, 1, 350658, '2024-10-30', '', NULL, 'https://i.ibb.co.com/vY4q3RZ/Whats-App-Image-2024-10-30-at-11-04-58-f71abe15.jpg', 612058),
(508, 7, 0, 1, 1, 1, 1, 85000, '2024-10-31', '', NULL, 'https://i.ibb.co.com/nfVp9gh/Whats-App-Image-2024-10-30-at-17-19-44-a0d90cdc.jpg', 4527058),
(509, 7, 0, 2, 1, 1, 1, 35000, '2024-10-31', '', NULL, 'https://i.ibb.co.com/WB4xtmr/Whats-App-Image-2024-10-30-at-17-20-23-45c528b5.jpg', 4492058),
(510, 7, 0, 4, 1, 1, 1, 46584, '2024-10-31', '', NULL, 'https://i.ibb.co.com/RgYggqn/Whats-App-Image-2024-10-30-at-17-43-28-e0a33d5e.jpg', 4445474),
(511, 7, 0, 5, 1, 1, 1, 212729, '2024-10-31', '', NULL, 'https://i.ibb.co.com/jg5J1XF/Whats-App-Image-2024-10-30-at-19-30-01-6598e295.jpg', 4232745),
(512, 7, 0, 3, 1, 1, 1, 550242, '2024-10-31', '', NULL, 'https://i.ibb.co.com/gj6TJSX/Whats-App-Image-2024-10-30-at-19-43-09-d3034292.jpg', 3682503),
(513, 20, 0, 7, 1, 1, 1, 10000, '2024-10-31', 'Bantu Ce Grace', NULL, 'https://i.ibb.co.com/yXCkrnq/Whats-App-Image-2024-10-31-at-09-02-02-3bd3f5d3.jpg', 3672503),
(522, 7, 0, 1, 1, 2, 1, 85000, '2024-10-31', '', NULL, 'https://i.ibb.co.com/B333fC9/Whats-App-Image-2024-10-31-at-10-55-38-a5a2fd09.jpg', 3587503),
(523, 7, 0, 2, 1, 2, 1, 35000, '2024-10-31', '', NULL, 'https://i.ibb.co.com/19DNT9f/Whats-App-Image-2024-10-31-at-10-56-18-123df9b7.jpg', 3552503),
(524, 7, 0, 4, 1, 2, 1, 46502, '2024-10-31', '', NULL, 'https://i.ibb.co.com/DtnrHdW/Whats-App-Image-2024-10-31-at-11-23-04-60e29560.jpg', 3506001),
(525, 7, 0, 3, 1, 2, 1, 550242, '2024-10-31', '', NULL, 'https://i.ibb.co.com/bgS5Vfv/Whats-App-Image-2024-10-31-at-12-09-39-f6e30073.jpg', 2955759),
(526, 1, 0, 1, 1, 1, 1, 70000, '2024-11-01', '', NULL, 'https://i.ibb.co.com/SVPXDyx/Whats-App-Image-2024-10-31-at-18-22-39-732c6c91.jpg', 2885759),
(528, 1, 0, 3, 1, 1, 1, 350658, '2024-11-01', '', NULL, 'https://i.ibb.co.com/8M8Yfhm/Whats-App-Image-2024-10-31-at-19-10-44-3df920cc.jpg', 2505101),
(531, 1, 0, 4, 1, 1, 1, 46502, '2024-11-01', '', NULL, 'https://i.ibb.co.com/tcMNZrk/Whats-App-Image-2024-11-01-at-08-16-33-4aef912c.jpg', 2488599),
(532, 1, 0, 2, 1, 1, 1, 30000, '2024-11-01', '', NULL, 'https://i.ibb.co.com/5R53kFw/Whats-App-Image-2024-10-31-at-18-22-55-40718106.jpg', 2458599),
(536, 1, 0, 1, 1, 2, 1, 70000, '2024-11-01', '', NULL, 'https://i.ibb.co.com/gDnPt6c/Whats-App-Image-2024-11-01-at-10-39-26-1cdd3017.jpg', 2388599),
(537, 1, 0, 2, 1, 2, 1, 30000, '2024-11-01', '', NULL, 'https://i.ibb.co.com/3zB12MB/Whats-App-Image-2024-11-01-at-10-40-44-3fde9ee3.jpg', 2358599),
(538, 1, 0, 4, 1, 2, 1, 46422, '2024-11-01', '', NULL, 'https://i.ibb.co.com/ngKSkWp/Whats-App-Image-2024-11-01-at-10-52-38-e1a3cb57.jpg', 2312177),
(539, 1, 0, 3, 1, 2, 1, 350658, '2024-11-01', '', NULL, 'https://i.ibb.co.com/rFwjyt0/Whats-App-Image-2024-11-01-at-11-14-16-fe3e427c.jpg', 1961519),
(540, 7, 0, 1, 1, 1, 1, 85000, '2024-11-02', '', NULL, 'https://i.ibb.co.com/dQdfb8Q/Whats-App-Image-2024-11-01-at-17-41-07-0316f4af.jpg', 1876519),
(541, 7, 0, 2, 1, 1, 1, 35000, '2024-11-02', '', NULL, 'https://i.ibb.co.com/XZdvBTQ/Whats-App-Image-2024-11-01-at-17-41-22-ba07f26f.jpg', 1841519),
(542, 7, 0, 4, 1, 1, 1, 46422, '2024-11-02', '', NULL, 'https://i.ibb.co.com/NW95cVW/Whats-App-Image-2024-11-01-at-17-42-29-34510299.jpg', 1795097),
(543, 7, 0, 3, 1, 1, 1, 550242, '2024-11-02', '', NULL, 'https://i.ibb.co.com/gVDhyWL/Whats-App-Image-2024-11-01-at-18-39-16-ebc45cfc.jpg', 1244855),
(544, 7, 0, 1, 1, 2, 1, 85000, '2024-11-02', '', NULL, 'https://i.ibb.co.com/f9yhMXt/Whats-App-Image-2024-11-02-at-10-41-53-564f7655.jpg', 1159855),
(545, 7, 0, 2, 1, 2, 1, 35000, '2024-11-02', '', NULL, 'https://i.ibb.co.com/nn8nx55/Whats-App-Image-2024-11-02-at-10-42-29-368da574.jpg', 1124855),
(546, 7, 0, 4, 1, 2, 1, 46422, '2024-11-02', '', NULL, 'https://i.ibb.co.com/4232ZNK/Whats-App-Image-2024-11-02-at-11-26-28-085528a8.jpg', 1078433),
(547, 7, 0, 3, 1, 2, 1, 550242, '2024-11-02', '', NULL, 'https://i.ibb.co.com/G0S1k6V/Whats-App-Image-2024-11-02-at-11-44-47-ea6766fa.jpg', 528191),
(548, 7, 0, 4, 1, 1, 1, 46422, '2024-11-03', '', NULL, 'https://i.ibb.co.com/tLVB4Jf/Whats-App-Image-2024-11-02-at-17-35-41-a592e2b8.jpg', 481769),
(549, 7, 0, 1, 1, 1, 1, 85000, '2024-11-03', '', NULL, 'https://i.ibb.co.com/8800CC2/Whats-App-Image-2024-11-02-at-17-49-27-91dd9c0a.jpg', 6196769),
(550, 7, 0, 2, 1, 1, 1, 35000, '2024-11-03', '', NULL, 'https://i.ibb.co.com/GPP7Lvz/Whats-App-Image-2024-11-02-at-17-50-34-740d9cdf.jpg', 6161769),
(551, 7, 0, 3, 1, 1, 1, 550242, '2024-11-03', '', NULL, 'https://i.ibb.co.com/YRhG1cy/Whats-App-Image-2024-11-02-at-20-01-04-00208bc1.jpg', 5611527),
(552, 7, 0, 1, 1, 2, 1, 85000, '2024-11-03', '', NULL, 'https://i.ibb.co.com/TvRTZ3c/Whats-App-Image-2024-11-03-at-10-45-31-100d303e.jpg', 5526527);
INSERT INTO `pembayaran_kapal` (`id`, `kapal_id`, `tipe_kapal_id`, `tujuan_pembayaran_id`, `status_pembayaran_id`, `trip_id`, `user_id`, `harga`, `tanggal_transaksi`, `catatan_transaksi`, `status_claim`, `bukti_pembayaran`, `sisa_saldo`) VALUES
(553, 7, 0, 2, 1, 2, 1, 35000, '2024-11-03', '', NULL, 'https://i.ibb.co.com/FJMS3VR/Whats-App-Image-2024-11-03-at-10-46-21-ce9dd43e.jpg', 5491527),
(554, 7, 0, 4, 1, 2, 1, 46422, '2024-11-03', '', NULL, 'https://i.ibb.co.com/ys8bvNR/Whats-App-Image-2024-11-03-at-11-06-32-104b95bd.jpg', 5445105),
(555, 7, 0, 3, 1, 2, 1, 550242, '2024-11-03', '', NULL, 'https://i.ibb.co.com/xjy284d/Whats-App-Image-2024-11-03-at-11-11-19-2c1d34ab.jpg', 4894863),
(556, 8, 0, 1, 1, 1, 1, 85000, '2024-11-04', '', NULL, 'https://i.ibb.co.com/kH6qG91/Whats-App-Image-2024-11-03-at-17-03-06-f7fdcbef.jpg', 4809863),
(557, 8, 0, 2, 1, 1, 1, 35000, '2024-11-04', '', NULL, 'https://i.ibb.co.com/1M6pjCZ/Whats-App-Image-2024-11-03-at-17-03-43-8257f756.jpg', 4774863),
(558, 8, 0, 4, 1, 1, 1, 46422, '2024-11-04', '', NULL, 'https://i.ibb.co.com/n0dJyTw/Whats-App-Image-2024-11-03-at-17-56-50-86a6fa39.jpg', 4728441),
(559, 8, 0, 3, 1, 1, 1, 550242, '2024-11-04', '', NULL, 'https://i.ibb.co.com/f010VZg/Whats-App-Image-2024-11-03-at-19-33-22-9f420856.jpg', 4178199),
(560, 8, 0, 1, 1, 2, 1, 85000, '2024-11-04', '', NULL, 'https://i.ibb.co.com/njLg5Gk/Whats-App-Image-2024-11-04-at-10-41-00-a2b43de9.jpg', 4093199),
(561, 8, 0, 2, 1, 2, 1, 35000, '2024-11-04', '', NULL, 'https://i.ibb.co.com/KDxkvYx/Whats-App-Image-2024-11-04-at-10-41-37-d23b1aaa.jpg', 4058199),
(562, 8, 0, 4, 1, 2, 1, 46475, '2024-11-04', '', NULL, 'https://i.ibb.co.com/Q7V360n/Whats-App-Image-2024-11-04-at-10-55-30-3bb285e7.jpg', 4011724),
(563, 8, 0, 5, 1, 2, 1, 212230, '2024-11-04', '', NULL, 'https://i.ibb.co.com/tHPGwMC/Whats-App-Image-2024-11-04-at-11-36-37-419b42dc.jpg', 3799494),
(564, 8, 0, 3, 1, 2, 1, 550242, '2024-11-04', '', NULL, 'https://i.ibb.co.com/RYRyNvK/Whats-App-Image-2024-11-04-at-11-48-10-afbe2acd.jpg', 3249252),
(565, 6, 0, 1, 1, 1, 1, 70000, '2024-11-05', '', NULL, 'https://i.ibb.co.com/zs2FLLc/Whats-App-Image-2024-11-04-at-17-16-16-3af65101.jpg', 3179252),
(566, 6, 0, 2, 1, 1, 1, 30000, '2024-11-05', '', NULL, 'https://i.ibb.co.com/9t0SXmX/Whats-App-Image-2024-11-04-at-17-16-50-04d9099a.jpg', 3149252),
(567, 6, 0, 5, 1, 1, 1, 135250, '2024-11-05', '', NULL, 'https://i.ibb.co.com/pwFPT4g/Whats-App-Image-2024-11-04-at-18-41-09-1ab4b6b7.jpg', 3014002),
(568, 6, 0, 4, 1, 1, 1, 46475, '2024-11-05', '', NULL, 'https://i.ibb.co.com/CQbmLwx/Whats-App-Image-2024-11-04-at-18-44-18-a95173d0.jpg', 2967527),
(569, 6, 0, 3, 1, 1, 1, 350658, '2024-11-05', '', NULL, 'https://i.ibb.co.com/S7krrRC/Whats-App-Image-2024-11-04-at-19-54-21-1b1d00b1.jpg', 2616869),
(570, 6, 0, 1, 1, 2, 1, 70000, '2024-11-05', '', NULL, 'https://i.ibb.co.com/PxKz5Rd/Whats-App-Image-2024-11-05-at-10-37-38-2d58a0ed.jpg', 2546869),
(571, 6, 0, 2, 1, 2, 1, 30000, '2024-11-05', '', NULL, 'https://i.ibb.co.com/z5FJ0WF/Whats-App-Image-2024-11-05-at-10-38-40-5170d8ab.jpg', 2516869),
(572, 6, 0, 4, 1, 2, 1, 46558, '2024-11-05', '', NULL, 'https://i.ibb.co.com/HzX6X2X/Whats-App-Image-2024-11-05-at-10-42-59-a3c43789.jpg', 2470311),
(573, 6, 0, 3, 1, 2, 1, 350658, '2024-11-05', '', NULL, 'https://i.ibb.co.com/tP2nySL/Whats-App-Image-2024-11-05-at-10-58-47-7bb3d213.jpg', 2119653),
(575, 6, 0, 4, 1, 1, 1, 46558, '2024-11-06', '', NULL, 'https://i.ibb.co.com/SrHxXjV/Whats-App-Image-2024-11-05-at-17-26-23-a1bd2fbb.jpg', 2073095),
(576, 6, 0, 1, 1, 1, 1, 70000, '2024-11-06', '', NULL, 'https://i.ibb.co.com/mRsygBy/Whats-App-Image-2024-11-05-at-17-36-18-ed09fb33.jpg', 2003095),
(577, 6, 0, 2, 1, 1, 1, 30000, '2024-11-06', '', NULL, 'https://i.ibb.co.com/Bfr2p1r/Whats-App-Image-2024-11-05-at-17-37-01-3c5ddbd2.jpg', 1973095),
(578, 6, 0, 3, 1, 1, 1, 350658, '2024-11-06', '', NULL, 'https://i.ibb.co.com/hMYCR3V/Whats-App-Image-2024-11-05-at-17-53-09-acbd0505.jpg', 1622437),
(579, 6, 0, 1, 1, 2, 1, 70000, '2024-11-06', '', NULL, 'https://i.ibb.co.com/9rHS8JP/Whats-App-Image-2024-11-06-at-10-39-54-9e3d9dbc.jpg', 1552437),
(580, 6, 0, 2, 1, 2, 1, 30000, '2024-11-06', '', NULL, 'https://i.ibb.co.com/Zc5c61W/Whats-App-Image-2024-11-06-at-10-40-31-70412b1b.jpg', 1522437),
(581, 6, 0, 4, 1, 2, 1, 46602, '2024-11-06', '', NULL, 'https://i.ibb.co.com/rZ9XjS2/Whats-App-Image-2024-11-06-at-11-09-19-08b80c79.jpg', 1475835),
(582, 6, 0, 3, 1, 2, 1, 350658, '2024-11-06', '', NULL, 'https://i.ibb.co.com/55TLTHX/Whats-App-Image-2024-11-06-at-12-04-21-b1b2154e.jpg', 1125177),
(583, 6, 0, 1, 1, 1, 1, 70000, '2024-11-07', '', NULL, 'https://i.ibb.co.com/s9zg9dj/Whats-App-Image-2024-11-06-at-17-09-12-cbd4e513.jpg', 1055177),
(584, 6, 0, 2, 1, 1, 1, 30000, '2024-11-07', '', NULL, 'https://i.ibb.co.com/SR4XnDy/Whats-App-Image-2024-11-06-at-17-09-58-fe7587a6.jpg', 1025177),
(585, 6, 0, 4, 1, 1, 1, 46602, '2024-11-07', '', NULL, 'https://i.ibb.co.com/12bcBZy/Whats-App-Image-2024-11-06-at-17-15-35-652feeee.jpg', 978575),
(586, 6, 0, 3, 1, 1, 1, 350658, '2024-11-07', '', NULL, 'https://i.ibb.co.com/pP0Q6jW/Whats-App-Image-2024-11-06-at-18-36-45-69bf8a9f.jpg', 627917),
(587, 6, 0, 1, 1, 2, 1, 70000, '2024-11-07', '', NULL, 'https://i.ibb.co.com/cYFHy0R/Whats-App-Image-2024-11-07-at-10-37-14-85b4b7bd.jpg', 557917),
(588, 6, 0, 2, 1, 2, 1, 30000, '2024-11-07', '', NULL, 'https://i.ibb.co.com/T1493B3/Whats-App-Image-2024-11-07-at-10-37-44-232c039e.jpg', 527917),
(589, 6, 0, 4, 1, 2, 1, 46820, '2024-11-07', '', NULL, 'https://i.ibb.co.com/mbqtHnT/Whats-App-Image-2024-11-07-at-10-42-59-548d7e2a.jpg', 481097),
(590, 6, 0, 3, 1, 2, 1, 350658, '2024-11-07', '', NULL, 'https://i.ibb.co.com/Lkxf6h0/Whats-App-Image-2024-11-07-at-11-14-42-2ef6e45e.jpg', 130439),
(591, 6, 0, 4, 1, 1, 1, 46820, '2024-11-08', '', NULL, 'https://i.ibb.co.com/SJxvLM5/Whats-App-Image-2024-11-07-at-19-36-29-d82737fd.jpg', 1083619),
(592, 6, 0, 3, 1, 1, 1, 350658, '2024-11-08', '', NULL, 'https://i.ibb.co.com/SJxvLM5/Whats-App-Image-2024-11-07-at-19-36-29-d82737fd.jpg', 732961),
(593, 6, 0, 1, 1, 1, 1, 70000, '2024-11-08', '', NULL, 'https://i.ibb.co.com/ZcWmmqq/Whats-App-Image-2024-11-08-at-11-21-04-eb480fcb.jpg', 662961),
(594, 6, 0, 2, 1, 1, 1, 30000, '2024-11-08', '', NULL, 'https://i.ibb.co.com/qM74Dkz/Whats-App-Image-2024-11-08-at-11-21-43-7beb529d.jpg', 632961),
(595, 6, 0, 1, 1, 2, 1, 70000, '2024-11-08', '', NULL, 'https://i.ibb.co.com/GdgPNn1/Whats-App-Image-2024-11-08-at-10-57-52-a7b6b09b.jpg', 562961),
(596, 6, 0, 2, 1, 2, 1, 30000, '2024-11-08', '', NULL, 'https://i.ibb.co.com/drkfkFC/Whats-App-Image-2024-11-08-at-10-58-38-73699fe4.jpg', 532961),
(597, 6, 0, 4, 1, 2, 1, 46605, '2024-11-08', '', NULL, 'https://i.ibb.co.com/J2YZX85/Whats-App-Image-2024-11-08-at-11-04-53-c5f7fe25.jpg', 486356),
(598, 6, 0, 3, 1, 2, 1, 350658, '2024-11-08', '', NULL, 'https://i.ibb.co.com/0C0bZDn/Whats-App-Image-2024-11-08-at-11-36-08-28e50d3c.jpg', 135698),
(599, 6, 0, 1, 1, 1, 1, 70000, '2024-11-09', '', NULL, 'https://i.ibb.co.com/P1YvxhR/Whats-App-Image-2024-11-08-at-17-01-55-a85b2f55.jpg', 3965698),
(600, 6, 0, 2, 1, 1, 1, 30000, '2024-11-09', '', NULL, 'https://i.ibb.co.com/WyGQ4nj/Whats-App-Image-2024-11-08-at-17-02-50-c8e36ed2.jpg', 3935698),
(601, 6, 0, 4, 1, 1, 1, 51265, '2024-11-09', '', NULL, 'https://i.ibb.co.com/g78wfJY/Whats-App-Image-2024-11-08-at-18-56-37-d4f0d8ce.jpg', 3884433),
(602, 6, 0, 3, 1, 1, 1, 350658, '2024-11-09', '', NULL, 'https://i.ibb.co.com/16Vn6n2/Whats-App-Image-2024-11-08-at-19-22-57-717d29b6.jpg', 3533775),
(603, 6, 0, 1, 1, 2, 1, 70000, '2024-11-09', '', NULL, 'https://i.ibb.co.com/VN2tGms/Whats-App-Image-2024-11-09-at-10-52-36-622735c8.jpg', 3463775),
(604, 6, 0, 2, 1, 2, 1, 30000, '2024-11-09', '', NULL, 'https://i.ibb.co.com/4TnXnJ3/Whats-App-Image-2024-11-09-at-10-53-10-6918e19c.jpg', 3433775),
(605, 6, 0, 3, 1, 2, 1, 350658, '2024-11-09', '', NULL, 'https://i.ibb.co.com/vd3dvc0/Whats-App-Image-2024-11-09-at-11-15-00-1486f42c.jpg', 3083117),
(606, 6, 0, 4, 1, 2, 1, 46605, '2024-11-09', '', NULL, 'https://i.ibb.co.com/QMBPg0S/Whats-App-Image-2024-11-09-at-10-51-54-53bdeb42.jpg', 3036512),
(607, 6, 0, 1, 1, 1, 1, 70000, '2024-11-10', '', NULL, 'https://i.ibb.co.com/tXwSP2b/Whats-App-Image-2024-11-09-at-16-52-43-af6c95fb.jpg', 2966512),
(608, 6, 0, 2, 1, 1, 1, 30000, '2024-11-10', '', NULL, 'https://i.ibb.co.com/GdtTfGd/Whats-App-Image-2024-11-09-at-16-53-24-4c931fac.jpg', 2936512),
(609, 6, 0, 3, 1, 1, 1, 350658, '2024-11-10', '', NULL, 'https://i.ibb.co.com/wQLRpKH/Whats-App-Image-2024-11-09-at-17-30-14-04db2f15.jpg', 2585854),
(610, 6, 0, 4, 1, 1, 1, 46605, '2024-11-10', '', NULL, 'https://i.ibb.co.com/yP3X48K/Whats-App-Image-2024-11-09-at-17-29-19-e428631d.jpg', 2539249),
(611, 6, 0, 1, 1, 2, 1, 70000, '2024-11-10', '', NULL, 'https://i.ibb.co.com/5r0RWRR/Whats-App-Image-2024-11-10-at-10-37-41-bdcccbe5.jpg', 2469249),
(612, 6, 0, 2, 1, 2, 1, 30000, '2024-11-10', '', NULL, 'https://i.ibb.co.com/xj1Sjj9/Whats-App-Image-2024-11-10-at-10-38-17-9ffb5257.jpg', 2439249),
(613, 6, 0, 3, 1, 2, 1, 350658, '2024-11-10', '', NULL, 'https://i.ibb.co.com/BgYYgsN/Whats-App-Image-2024-11-10-at-11-44-36-a167670d.jpg', 2088591),
(614, 6, 0, 4, 1, 2, 1, 46605, '2024-11-10', '', NULL, 'https://i.ibb.co.com/N2y8qsk/Whats-App-Image-2024-11-10-at-10-31-39-13fb5eb6.jpg', 2041986),
(615, 2, 0, 1, 1, 1, 1, 70000, '2024-11-11', '', NULL, 'https://i.ibb.co.com/ZYLz99c/Whats-App-Image-2024-11-10-at-16-59-39-cd8319a9.jpg', 1971986),
(616, 2, 0, 2, 1, 1, 1, 30000, '2024-11-11', '', NULL, 'https://i.ibb.co.com/mRctbDh/Whats-App-Image-2024-11-10-at-17-00-11-85cf028f.jpg', 1941986),
(617, 2, 0, 3, 1, 1, 1, 350658, '2024-11-11', '', NULL, 'https://i.ibb.co.com/bK7TdnY/Whats-App-Image-2024-11-10-at-19-01-55-767486f1.jpg', 1591328),
(618, 2, 0, 4, 1, 1, 1, 46605, '2024-11-11', '', NULL, 'https://i.ibb.co.com/7k6FfBZ/Whats-App-Image-2024-11-10-at-17-03-48-f53ce9f5.jpg', 1544723),
(619, 2, 0, 1, 1, 2, 1, 70000, '2024-11-11', '', NULL, 'https://i.ibb.co.com/GVSXMQb/Whats-App-Image-2024-11-11-at-10-43-44-0bdc929c.jpg', 1474723),
(620, 2, 0, 2, 1, 2, 1, 30000, '2024-11-11', '', NULL, 'https://i.ibb.co.com/Bj78mSR/Whats-App-Image-2024-11-11-at-10-44-25-69fe7971.jpg', 1444723),
(621, 2, 0, 3, 1, 2, 1, 350658, '2024-11-11', '', NULL, 'https://i.ibb.co.com/BcgTXxB/Whats-App-Image-2024-11-11-at-11-03-21-e2a6f46e.jpg', 1094065),
(622, 2, 0, 4, 1, 2, 1, 46322, '2024-11-11', '', NULL, 'https://i.ibb.co.com/nzL9wL0/Whats-App-Image-2024-11-11-at-10-50-40-b41c00f5.jpg', 1047743),
(623, 2, 0, 4, 1, 1, 1, 46322, '2024-11-12', '', NULL, 'https://i.ibb.co.com/7jnXfR9/Whats-App-Image-2024-11-11-at-17-03-04-03e448d8.jpg', 1001421),
(624, 2, 0, 1, 1, 1, 1, 70000, '2024-11-12', '', NULL, 'https://i.ibb.co.com/MG0f9gM/Whats-App-Image-2024-11-11-at-18-11-07-fd699981.jpg', 931421),
(625, 2, 0, 2, 1, 1, 1, 30000, '2024-11-12', '', NULL, 'https://i.ibb.co.com/Z15n9Xd/Whats-App-Image-2024-11-11-at-18-11-45-3c109c8c.jpg', 901421),
(626, 2, 0, 3, 1, 1, 1, 350658, '2024-11-12', '', NULL, 'https://i.ibb.co.com/56F0Wyj/Whats-App-Image-2024-11-11-at-17-56-57-bf5b91f4.jpg', 550763),
(627, 2, 0, 1, 1, 2, 1, 70000, '2024-11-12', '', NULL, 'https://i.ibb.co.com/x5HkLW1/Whats-App-Image-2024-11-12-at-10-42-16-ef2e1fe3.jpg', 480763),
(628, 2, 0, 2, 1, 2, 1, 30000, '2024-11-12', '', NULL, 'https://i.ibb.co.com/Dr51FnD/Whats-App-Image-2024-11-12-at-10-42-48-cf4dfd7e.jpg', 450763),
(629, 2, 0, 3, 1, 2, 1, 350658, '2024-11-12', '', NULL, 'https://i.ibb.co.com/BVxXtDn/Whats-App-Image-2024-11-12-at-11-02-03-d02b3d35.jpg', 100105),
(630, 2, 0, 4, 1, 2, 1, 46339, '2024-11-12', '', NULL, 'https://i.ibb.co.com/jLPC9mV/Whats-App-Image-2024-11-12-at-10-49-25-51a81d0a.jpg', 53766),
(631, 2, 0, 1, 1, 1, 1, 70000, '2024-11-13', '', NULL, 'https://i.ibb.co.com/2KLMvMW/Whats-App-Image-2024-11-12-at-17-14-00-5f4fbb92.jpg', 3083766),
(632, 2, 0, 2, 1, 1, 1, 30000, '2024-11-13', '', NULL, 'https://i.ibb.co.com/ZM1vk0P/Whats-App-Image-2024-11-12-at-17-14-47-bf9d5f1d.jpg', 3053766),
(633, 2, 0, 3, 1, 1, 1, 350658, '2024-11-13', '', NULL, 'https://i.ibb.co.com/HKQDVqx/Whats-App-Image-2024-11-12-at-18-45-37-8ce312af.jpg', 2703108),
(634, 2, 0, 4, 1, 1, 1, 50973, '2024-11-13', '', NULL, 'https://i.ibb.co.com/c6rB2HT/Whats-App-Image-2024-11-12-at-18-28-05-ceead39c.jpg', 2652135),
(635, 2, 0, 1, 1, 2, 1, 70000, '2024-11-13', '', NULL, 'https://i.ibb.co.com/1rZtrPk/Whats-App-Image-2024-11-13-at-10-32-24-850043c4.jpg', 2582135),
(636, 2, 0, 2, 1, 2, 1, 30000, '2024-11-13', '', NULL, 'https://i.ibb.co.com/DYySC66/Whats-App-Image-2024-11-13-at-10-33-10-713a24b1.jpg', 2552135),
(637, 2, 0, 3, 1, 2, 1, 350658, '2024-11-13', '', NULL, 'https://i.ibb.co.com/LCzZkhN/Whats-App-Image-2024-11-13-at-11-04-16-12695324.jpg', 2201477),
(641, 2, 0, 4, 1, 2, 1, 46617, '2024-11-13', '', NULL, 'https://i.ibb.co.com/hZpMwY6/Whats-App-Image-2024-11-13-at-10-41-12-9454b082.jpg', 2154860),
(642, 2, 0, 1, 1, 1, 1, 70000, '2024-11-14', '', NULL, 'https://i.ibb.co.com/ZBK0rhY/Whats-App-Image-2024-11-13-at-17-06-55-3de87efd.jpg', 2084860),
(643, 2, 0, 2, 1, 1, 1, 30000, '2024-11-14', '', NULL, 'https://i.ibb.co.com/ChD6mCM/Whats-App-Image-2024-11-13-at-17-07-30-e368065f.jpg', 2054860),
(644, 2, 0, 3, 1, 1, 1, 350658, '2024-11-14', '', NULL, 'https://i.ibb.co.com/HHkCqkC/Whats-App-Image-2024-11-13-at-17-54-28-5f2bdcb8.jpg', 1704202),
(645, 2, 0, 4, 1, 1, 1, 46617, '2024-11-14', '', NULL, 'https://i.ibb.co.com/bzZNnpF/Whats-App-Image-2024-11-13-at-19-20-23-6e8b53d2.jpg', 1657585),
(646, 2, 0, 1, 1, 2, 1, 70000, '2024-11-14', '', NULL, 'https://i.ibb.co.com/tmZtS6h/Whats-App-Image-2024-11-14-at-10-29-15-cbc2f73c.jpg', 1587585),
(647, 2, 0, 2, 1, 2, 1, 30000, '2024-11-14', '', NULL, 'https://i.ibb.co.com/VBw5ywX/Whats-App-Image-2024-11-14-at-10-29-51-e7c5479d.jpg', 1557585),
(648, 2, 0, 3, 1, 2, 1, 350658, '2024-11-14', '', NULL, 'https://i.ibb.co.com/ctvxjcC/Whats-App-Image-2024-11-14-at-11-55-44-68c3f1a1.jpg', 1206927),
(649, 2, 0, 4, 1, 2, 1, 46649, '2024-11-14', '', NULL, 'https://i.ibb.co.com/343BSZP/Whats-App-Image-2024-11-14-at-10-56-09-c533ba67.jpg', 1160278),
(650, 2, 0, 1, 1, 1, 1, 70000, '2024-11-15', '', NULL, 'https://i.ibb.co.com/SxVSPHm/Whats-App-Image-2024-11-14-at-17-15-33-cf26d15c.jpg', 1090278),
(651, 2, 0, 2, 1, 1, 1, 30000, '2024-11-15', '', NULL, 'https://i.ibb.co.com/SQBg03X/Whats-App-Image-2024-11-14-at-17-16-13-de1d6bc6.jpg', 1060278),
(652, 2, 0, 3, 1, 1, 1, 350658, '2024-11-15', '', NULL, 'https://i.ibb.co.com/gDZs3dS/Whats-App-Image-2024-11-14-at-19-54-51-8cee4298.jpg', 709620),
(653, 2, 0, 4, 1, 1, 1, 46649, '2024-11-15', '', NULL, 'https://i.ibb.co.com/1zsg7Xd/Whats-App-Image-2024-11-14-at-18-53-41-3952ec0a.jpg', 662971),
(654, 2, 0, 1, 1, 2, 1, 70000, '2024-11-15', '', NULL, 'https://i.ibb.co.com/42scq8X/Whats-App-Image-2024-11-15-at-10-39-07-a52c0cd2.jpg', 592971),
(655, 2, 0, 2, 1, 2, 1, 30000, '2024-11-15', '', NULL, 'https://i.ibb.co.com/bdR8Hbn/Whats-App-Image-2024-11-15-at-10-40-50-74cafb05.jpg', 562971),
(656, 2, 0, 3, 1, 2, 1, 350658, '2024-11-15', '', NULL, 'https://i.ibb.co.com/1Q5N478/Whats-App-Image-2024-11-15-at-11-13-27-e1e38228.jpg', 212313),
(657, 2, 0, 4, 1, 2, 1, 46918, '2024-11-15', '', NULL, 'https://i.ibb.co.com/YRcvYtC/Whats-App-Image-2024-11-15-at-10-35-25-8b47642d.jpg', 165395),
(658, 2, 0, 1, 1, 1, 1, 70000, '2024-11-16', '', NULL, 'https://i.ibb.co.com/strdrpX/Whats-App-Image-2024-11-15-at-17-34-23-4ed42f7b.jpg', 4195395),
(659, 2, 0, 2, 1, 1, 1, 30000, '2024-11-16', '', NULL, 'https://i.ibb.co.com/7zSnPQX/Whats-App-Image-2024-11-15-at-17-34-51-6c0fcd34.jpg', 4165395),
(660, 2, 0, 3, 1, 1, 1, 350658, '2024-11-16', '', NULL, 'https://i.ibb.co.com/nc8TqKn/Whats-App-Image-2024-11-15-at-19-09-53-a900b187.jpg', 3814737),
(661, 2, 0, 4, 1, 1, 1, 46918, '2024-11-16', '', NULL, 'https://i.ibb.co.com/wMF8s14/Whats-App-Image-2024-11-15-at-17-33-15-2a6cbd39.jpg', 3767819),
(662, 2, 0, 1, 1, 2, 1, 70000, '2024-11-16', '', NULL, 'https://i.ibb.co.com/wBMwXpJ/Whats-App-Image-2024-11-16-at-10-50-52-5f24ddea.jpg', 3697819),
(663, 2, 0, 2, 1, 2, 1, 30000, '2024-11-16', '', NULL, 'https://i.ibb.co.com/5MqKfg5/Whats-App-Image-2024-11-16-at-10-51-24-d38064ce.jpg', 3667819),
(664, 2, 0, 3, 1, 2, 1, 350658, '2024-11-16', '', NULL, 'https://i.ibb.co.com/ZMFr0cy/Whats-App-Image-2024-11-16-at-12-03-30-17f18a0a.jpg', 3317161),
(665, 2, 0, 4, 1, 2, 1, 46918, '2024-11-16', '', NULL, 'https://i.ibb.co.com/7CJWxpZ/Whats-App-Image-2024-11-16-at-11-05-56-b54a8cd7.jpg', 3270243),
(666, 2, 0, 1, 1, 1, 1, 70000, '2024-11-17', '', NULL, 'https://i.ibb.co.com/XL7L6Z4/Whats-App-Image-2024-11-16-at-17-00-23-a5943606.jpg', 3200243),
(667, 2, 0, 2, 1, 1, 1, 30000, '2024-11-17', '', NULL, 'https://i.ibb.co.com/DQYFXFJ/Whats-App-Image-2024-11-16-at-17-02-19-c9f82e4a.jpg', 3170243),
(668, 2, 0, 3, 1, 1, 1, 350658, '2024-11-17', '', NULL, 'https://i.ibb.co.com/KwGyD3m/Whats-App-Image-2024-11-16-at-19-17-02-1d44ff79.jpg', 2819585),
(669, 2, 0, 4, 1, 1, 1, 46918, '2024-11-17', '', NULL, 'https://i.ibb.co.com/s98TZW2/Whats-App-Image-2024-11-16-at-17-33-35-89e1ed5c.jpg', 2772667),
(670, 2, 0, 1, 1, 2, 1, 70000, '2024-11-17', '', NULL, 'https://i.ibb.co.com/1JMFLq7/Whats-App-Image-2024-11-17-at-11-57-39-0fbbaf46.jpg', 2702667),
(671, 2, 0, 2, 1, 2, 1, 30000, '2024-11-17', '', NULL, 'https://i.ibb.co.com/rpgVW54/Whats-App-Image-2024-11-17-at-11-58-24-23bdeaa3.jpg', 2672667),
(672, 2, 0, 3, 1, 2, 1, 350658, '2024-11-17', '', NULL, 'https://i.ibb.co.com/7z2Lk7n/Whats-App-Image-2024-11-17-at-11-32-31-ee92e392.jpg', 2322009),
(673, 2, 0, 4, 1, 2, 1, 46918, '2024-11-17', '', NULL, 'https://i.ibb.co.com/LJNxR4v/Whats-App-Image-2024-11-17-at-10-57-29-9a234fec.jpg', 2275091),
(674, 2, 0, 1, 1, 1, 1, 70000, '2024-11-18', '', NULL, 'https://i.ibb.co.com/88P33H2/Whats-App-Image-2024-11-17-at-16-52-12-dc522b18.jpg', 2205091),
(675, 2, 0, 2, 1, 1, 1, 30000, '2024-11-18', '', NULL, 'https://i.ibb.co.com/FXG4Ytb/Whats-App-Image-2024-11-17-at-16-52-47-538c1f4d.jpg', 2175091),
(676, 2, 0, 3, 1, 1, 1, 350658, '2024-11-18', '', NULL, 'https://i.ibb.co.com/S0YWBQj/Whats-App-Image-2024-11-17-at-18-47-27-e8166719.jpg', 1824433),
(677, 2, 0, 4, 1, 1, 1, 46918, '2024-11-18', '', NULL, 'https://i.ibb.co.com/GRJkmNP/Whats-App-Image-2024-11-17-at-17-11-13-a79f1478.jpg', 1777515),
(678, 2, 0, 1, 1, 2, 1, 70000, '2024-11-18', '', NULL, 'https://i.ibb.co.com/M2wV0Dk/Whats-App-Image-2024-11-18-at-10-41-47-9510edde.jpg', 1707515),
(679, 2, 0, 2, 1, 2, 1, 30000, '2024-11-18', '', NULL, 'https://i.ibb.co.com/MGp0cpr/Whats-App-Image-2024-11-18-at-10-42-21-0232ecaa.jpg', 1677515),
(680, 2, 0, 3, 1, 2, 1, 350658, '2024-11-18', '', NULL, 'https://i.ibb.co.com/j6N0D87/Whats-App-Image-2024-11-18-at-11-10-01-8cc8cfd6.jpg', 1326857),
(681, 2, 0, 4, 1, 2, 1, 46963, '2024-11-18', '', NULL, 'https://i.ibb.co.com/g3mjzVG/Whats-App-Image-2024-11-18-at-10-56-05-414d18eb.jpg', 1279894),
(682, 2, 0, 1, 1, 1, 1, 70000, '2024-11-19', '', NULL, 'https://i.ibb.co.com/rdNGnWn/Whats-App-Image-2024-11-18-at-17-58-03-14fd5455.jpg', 1209894),
(683, 2, 0, 2, 1, 1, 1, 30000, '2024-11-19', '', NULL, 'https://i.ibb.co.com/X2fTdyJ/Whats-App-Image-2024-11-18-at-17-58-36-4424539f.jpg', 1179894),
(684, 2, 0, 3, 1, 1, 1, 350658, '2024-11-19', '', NULL, 'https://i.ibb.co.com/X8vnMss/Whats-App-Image-2024-11-18-at-19-24-19-fb1dfe76.jpg', 829236),
(685, 2, 0, 4, 1, 1, 1, 46963, '2024-11-19', '', NULL, 'https://i.ibb.co.com/LzkpWJk/Whats-App-Image-2024-11-18-at-18-54-48-1804f4b2.jpg', 782273),
(686, 2, 0, 5, 1, 1, 1, 136669, '2024-11-19', '', NULL, 'https://i.ibb.co.com/LxxXKzW/Whats-App-Image-2024-11-18-at-19-12-23-1e02465f.jpg', 645604),
(687, 2, 0, 1, 1, 2, 1, 70000, '2024-11-19', '', NULL, 'https://i.ibb.co.com/smxHFZ0/Whats-App-Image-2024-11-19-at-10-49-03-6a1d56f9.jpg', 575604),
(688, 2, 0, 2, 1, 2, 1, 30000, '2024-11-19', '', NULL, 'https://i.ibb.co.com/BTDCF3T/Whats-App-Image-2024-11-19-at-10-49-50-0b9a9522.jpg', 545604),
(689, 2, 0, 3, 1, 2, 1, 350658, '2024-11-19', '', NULL, 'https://i.ibb.co.com/sQZC5Yc/Whats-App-Image-2024-11-19-at-12-08-08-f2008eb7.jpg', 194946),
(690, 2, 0, 4, 1, 2, 1, 46844, '2024-11-19', '', NULL, 'https://i.ibb.co.com/t89Sd3n/Whats-App-Image-2024-11-19-at-11-05-41-aeb2f996.jpg', 148102),
(691, 6, 0, 1, 1, 1, 1, 70000, '2024-11-20', '', NULL, 'https://i.ibb.co.com/nRYtrw7/Whats-App-Image-2024-11-19-at-17-12-05-35fc5b2f.jpg', 3178102),
(692, 6, 0, 2, 1, 1, 1, 30000, '2024-11-20', '', NULL, 'https://i.ibb.co.com/y6xgjWT/Whats-App-Image-2024-11-19-at-17-12-34-cbeda3f5.jpg', 3148102),
(693, 6, 0, 3, 1, 1, 1, 350658, '2024-11-20', '', NULL, 'https://i.ibb.co.com/xDTT1NS/Whats-App-Image-2024-11-19-at-19-17-55-ad799032.jpg', 2797444),
(694, 6, 0, 4, 1, 1, 1, 46844, '2024-11-20', '', NULL, 'https://i.ibb.co.com/88yvgKF/Whats-App-Image-2024-11-19-at-17-16-00-5b7185df.jpg	', 2750600),
(695, 6, 0, 1, 1, 2, 1, 70000, '2024-11-20', '', NULL, 'https://i.ibb.co.com/hc9mDfQ/Whats-App-Image-2024-11-20-at-11-13-26-5dfa9996.jpg', 2680600),
(696, 6, 0, 2, 1, 2, 1, 30000, '2024-11-20', '', NULL, 'https://i.ibb.co.com/P1kgZ0L/Whats-App-Image-2024-11-20-at-11-14-00-a57667b0.jpg', 2650600),
(697, 6, 0, 3, 1, 2, 1, 350658, '2024-11-20', '', NULL, 'https://i.ibb.co.com/VNPZnnV/Whats-App-Image-2024-11-20-at-11-17-01-b1d42118.jpg', 2299942),
(698, 6, 0, 4, 1, 2, 1, 46749, '2024-11-20', '', NULL, 'https://i.ibb.co.com/JqMMNG5/Whats-App-Image-2024-11-20-at-10-46-32-56ee9260.jpg', 2253193),
(699, 6, 0, 1, 1, 1, 1, 70000, '2024-11-21', '', NULL, 'https://i.ibb.co.com/gRMkNdv/Whats-App-Image-2024-11-20-at-17-08-43-6698d040.jpg', 2183193),
(700, 6, 0, 2, 1, 1, 1, 30000, '2024-11-21', '', NULL, 'https://i.ibb.co.com/d2Ymy5R/Whats-App-Image-2024-11-20-at-17-08-10-4eca110c.jpg', 2153193),
(701, 6, 0, 3, 1, 1, 1, 350658, '2024-11-21', '', NULL, 'https://i.ibb.co.com/FzZ1wyL/Whats-App-Image-2024-11-20-at-18-14-24-0e83f255.jpg', 1802535),
(702, 6, 0, 4, 1, 1, 1, 46749, '2024-11-21', '', NULL, 'https://i.ibb.co.com/5BZxrpM/Whats-App-Image-2024-11-20-at-17-31-10-e496dbed.jpg', 1755786),
(703, 6, 0, 1, 1, 2, 1, 70000, '2024-11-21', '', NULL, 'https://i.ibb.co.com/Nszd1n4/Whats-App-Image-2024-11-21-at-10-49-09-e198702d.jpg', 1685786),
(704, 6, 0, 2, 1, 2, 1, 30000, '2024-11-21', '', NULL, 'https://i.ibb.co.com/4j96qk5/Whats-App-Image-2024-11-21-at-10-49-44-09cae0ec.jpg', 1655786),
(705, 6, 0, 3, 1, 2, 1, 350658, '2024-11-21', '', NULL, 'https://i.ibb.co.com/MRZKRWF/Whats-App-Image-2024-11-21-at-11-22-43-0039456b.jpg', 1305128),
(707, 6, 0, 4, 1, 2, 1, 46874, '2024-11-21', '', NULL, 'https://i.ibb.co.com/HzmDdYD/Whats-App-Image-2024-11-21-at-10-43-14-576fc221.jpg', 1258254),
(711, 6, 0, 1, 1, 1, 1, 65000, '2024-11-22', '', NULL, 'https://i.ibb.co.com/kqynktg/Whats-App-Image-2024-11-21-at-17-09-08-1e232df2.jpg', 1193254),
(712, 6, 0, 2, 1, 1, 1, 30000, '2024-11-22', '', NULL, 'https://i.ibb.co.com/VvS7BfS/Whats-App-Image-2024-11-21-at-17-10-18-3047f532.jpg', 1163254),
(713, 6, 0, 3, 1, 1, 1, 350658, '2024-11-22', '', NULL, 'https://i.ibb.co.com/d0WWJqn/Whats-App-Image-2024-11-21-at-18-13-48-3061c78a.jpg', 812596),
(714, 6, 0, 4, 1, 1, 1, 46874, '2024-11-22', '', NULL, 'https://i.ibb.co.com/7JMwFkD/Whats-App-Image-2024-11-21-at-17-14-00-2862c55a.jpg', 765722),
(715, 20, 0, 7, 1, 2, 1, 100000, '2024-11-22', 'Tukar Cash', NULL, '', 665722),
(716, 6, 0, 1, 1, 2, 1, 70000, '2024-11-22', '', NULL, 'https://i.ibb.co.com/wwYg2DT/Whats-App-Image-2024-11-22-at-10-50-40-add779c5.jpg', 595722),
(717, 6, 0, 2, 1, 2, 1, 30000, '2024-11-22', '', NULL, 'https://i.ibb.co.com/8gS7nRq/Whats-App-Image-2024-11-22-at-10-51-23-68c5fec0.jpg', 565722),
(718, 6, 0, 3, 1, 2, 1, 350658, '2024-11-22', '', NULL, 'https://i.ibb.co.com/ZHr7zQt/Whats-App-Image-2024-11-22-at-11-44-22-f9d86fd8.jpg', 215064),
(719, 6, 0, 4, 1, 2, 1, 47122, '2024-11-22', '', NULL, 'https://i.ibb.co.com/X7dFrsG/Whats-App-Image-2024-11-22-at-10-55-30-47305c65.jpg', 167942),
(720, 6, 0, 1, 1, 1, 1, 70000, '2024-11-23', '', NULL, 'https://i.ibb.co.com/vhBxDDd/Whats-App-Image-2024-11-22-at-17-16-46-322fd59e.jpg', 4397942),
(721, 6, 0, 2, 1, 1, 1, 30000, '2024-11-23', '', NULL, 'https://i.ibb.co.com/BPtzYjV/Whats-App-Image-2024-11-22-at-17-17-35-b62c8747.jpg', 4367942),
(722, 6, 0, 3, 1, 1, 1, 350658, '2024-11-23', '', NULL, 'https://i.ibb.co.com/k82v05q/Whats-App-Image-2024-11-22-at-19-21-30-f82556dd.jpg', 4017284),
(723, 6, 0, 4, 1, 1, 1, 47122, '2024-11-23', '', NULL, 'https://i.ibb.co.com/BZhmSVF/Whats-App-Image-2024-11-22-at-18-28-32-4075bd8e.jpg', 3970162),
(724, 6, 0, 1, 1, 2, 1, 70000, '2024-11-23', '', NULL, 'https://i.ibb.co.com/rtXpPrf/Whats-App-Image-2024-11-23-at-10-49-13-bda4a701.jpg', 3900162),
(725, 6, 0, 2, 1, 2, 1, 30000, '2024-11-23', '', NULL, 'https://i.ibb.co.com/Pzxzd0J/Whats-App-Image-2024-11-23-at-10-49-43-b450179b.jpg', 3870162),
(726, 6, 0, 3, 1, 2, 1, 350658, '2024-11-23', '', NULL, 'https://i.ibb.co.com/PmzNr81/Whats-App-Image-2024-11-23-at-11-33-00-dc7b723d.jpg', 3519504),
(727, 6, 0, 4, 1, 2, 1, 47122, '2024-11-23', '', NULL, 'https://i.ibb.co.com/d0t0kZK/Whats-App-Image-2024-11-23-at-10-47-25-b902bd3c.jpg', 3472382),
(728, 6, 0, 1, 1, 1, 1, 70000, '2024-11-24', '', NULL, 'https://i.ibb.co.com/X78nwZg/Whats-App-Image-2024-11-23-at-17-01-59-5c785e43.jpg', 3402382),
(729, 6, 0, 2, 1, 1, 1, 30000, '2024-11-24', '', NULL, 'https://i.ibb.co.com/9s0JcwH/Whats-App-Image-2024-11-23-at-17-02-30-14a87963.jpg', 3372382),
(730, 6, 0, 3, 1, 1, 1, 350658, '2024-11-24', '', NULL, 'https://i.ibb.co.com/8NBvBTk/Whats-App-Image-2024-11-23-at-17-14-35-4041d0e1.jpg', 3021724),
(731, 6, 0, 4, 1, 1, 1, 47122, '2024-11-24', '', NULL, 'https://i.ibb.co.com/5TYrCBX/Whats-App-Image-2024-11-23-at-17-08-52-98a566c1.jpg', 2974602),
(732, 6, 0, 1, 1, 2, 1, 70000, '2024-11-24', '', NULL, 'https://i.ibb.co.com/2gVR4YX/Whats-App-Image-2024-11-24-at-10-46-36-e6240905.jpg', 2904602),
(733, 6, 0, 2, 1, 2, 1, 30000, '2024-11-24', '', NULL, 'https://i.ibb.co.com/R27JbNt/Whats-App-Image-2024-11-24-at-10-47-04-13a9ff77.jpg', 2874602),
(734, 6, 0, 3, 1, 2, 1, 350658, '2024-11-24', '', NULL, 'https://i.ibb.co.com/dpN1bQy/Whats-App-Image-2024-11-24-at-12-02-50-46ff3232.jpg', 2523944),
(735, 6, 0, 4, 1, 2, 1, 47122, '2024-11-24', '', NULL, 'https://i.ibb.co.com/KFfjxwR/Whats-App-Image-2024-11-24-at-10-37-03-be2a2dff.jpg', 2476822),
(736, 1, 0, 1, 1, 1, 1, 70000, '2024-11-25', '', NULL, 'https://i.ibb.co.com/myD2yp8/Whats-App-Image-2024-11-24-at-17-56-38-aa4b86af.jpg', 2406822),
(737, 1, 0, 2, 1, 1, 1, 30000, '2024-11-25', '', NULL, 'https://i.ibb.co.com/DpjXfWc/Whats-App-Image-2024-11-24-at-17-57-07-65de7989.jpg', 2376822),
(738, 1, 0, 3, 1, 1, 1, 350658, '2024-11-25', '', NULL, 'https://i.ibb.co.com/26G4DJK/Whats-App-Image-2024-11-24-at-19-01-55-348430e0.jpg', 2026164),
(739, 1, 0, 4, 1, 1, 1, 47122, '2024-11-25', '', NULL, 'https://i.ibb.co.com/xzrwr3y/Whats-App-Image-2024-11-24-at-17-39-05-1dabce59.jpg', 1979042),
(740, 1, 0, 5, 1, 1, 1, 137134, '2024-11-25', '', NULL, 'https://i.ibb.co.com/dkd62zz/Whats-App-Image-2024-11-24-at-18-46-34-ff54f848.jpg', 1841908),
(741, 1, 0, 1, 1, 2, 1, 70000, '2024-11-25', '', NULL, 'https://i.ibb.co.com/vjWF1yB/Whats-App-Image-2024-11-25-at-10-47-20-ea4e856b.jpg', 1771908),
(742, 1, 0, 2, 1, 2, 1, 30000, '2024-11-25', '', NULL, 'https://i.ibb.co.com/X5r2Cwd/Whats-App-Image-2024-11-25-at-10-48-13-617cd22d.jpg', 1741908),
(743, 1, 0, 3, 1, 2, 1, 350658, '2024-11-25', '', NULL, 'https://i.ibb.co.com/DCkys0P/Whats-App-Image-2024-11-25-at-11-02-25-d8b3c10e.jpg', 1391250),
(744, 1, 0, 4, 1, 2, 1, 47030, '2024-11-25', '', NULL, 'https://i.ibb.co.com/X5JpYr0/Whats-App-Image-2024-11-25-at-10-36-43-b232a2aa.jpg', 1344220),
(745, 1, 0, 1, 1, 1, 1, 70000, '2024-11-26', '', NULL, 'https://i.ibb.co.com/qk7f64m/Whats-App-Image-2024-11-25-at-17-30-59-b92a802c.jpg', 1274220),
(746, 1, 0, 2, 1, 1, 1, 30000, '2024-11-26', '', NULL, 'https://i.ibb.co.com/Gx56k1Y/Whats-App-Image-2024-11-25-at-17-31-41-56be6848.jpg', 1244220),
(747, 1, 0, 3, 1, 1, 1, 350658, '2024-11-26', '', NULL, 'https://i.ibb.co.com/BcWDd3y/Whats-App-Image-2024-11-25-at-18-07-05-afa458aa.jpg', 893562),
(748, 1, 0, 4, 1, 1, 1, 47030, '2024-11-26', '', NULL, 'https://i.ibb.co.com/MCpY08K/Whats-App-Image-2024-11-25-at-17-32-39-11b51ffe.jpg', 846532),
(749, 1, 0, 1, 1, 2, 1, 70000, '2024-11-26', '', NULL, 'https://i.ibb.co.com/0C92LqD/Whats-App-Image-2024-11-26-at-10-53-20-85ac9c79.jpg', 776532),
(750, 1, 0, 2, 1, 2, 1, 30000, '2024-11-26', '', NULL, 'https://i.ibb.co.com/cgDJ2qC/Whats-App-Image-2024-11-26-at-10-53-50-d5cfe6f7.jpg', 746532),
(751, 1, 0, 3, 1, 2, 1, 350658, '2024-11-26', '', NULL, 'https://i.ibb.co.com/PNP9RK2/Whats-App-Image-2024-11-26-at-11-11-03-caba141f.jpg', 395874),
(752, 1, 0, 4, 1, 2, 1, 46892, '2024-11-26', '', NULL, 'https://i.ibb.co.com/x5zsjDq/Whats-App-Image-2024-11-26-at-10-51-33-6f19a3d8.jpg', 348982),
(753, 1, 0, 1, 1, 1, 1, 70000, '2024-11-27', '', NULL, 'https://i.ibb.co.com/xFKjrfw/Whats-App-Image-2024-11-26-at-17-54-51-871dc25d.jpg', 3678982),
(754, 1, 0, 2, 1, 1, 1, 30000, '2024-11-27', '', NULL, 'https://i.ibb.co.com/3YNHF3J/Whats-App-Image-2024-11-26-at-17-55-28-dc0bc235.jpg', 3648982),
(755, 1, 0, 3, 1, 1, 1, 350658, '2024-11-27', '', NULL, 'https://i.ibb.co.com/zHQ9Q1n/Whats-App-Image-2024-11-26-at-19-58-38-3c1e89d3.jpg', 3298324),
(756, 1, 0, 4, 1, 1, 1, 46892, '2024-11-27', '', NULL, 'https://i.ibb.co.com/fk987mG/Whats-App-Image-2024-11-26-at-19-00-36-4eb6eb02.jpg', 3251432),
(757, 1, 0, 1, 1, 2, 1, 70000, '2024-11-27', '', NULL, 'https://i.ibb.co.com/kBfq2X2/Whats-App-Image-2024-11-27-at-10-59-09-2ce0835c.jpg', 3181432),
(758, 1, 0, 2, 1, 2, 1, 30000, '2024-11-27', '', NULL, 'https://i.ibb.co.com/d43JtpN/Whats-App-Image-2024-11-27-at-10-59-41-feb1bad1.jpg', 3151432),
(759, 1, 0, 3, 1, 2, 1, 350658, '2024-11-27', '', NULL, 'https://i.ibb.co.com/19vvLGH/Whats-App-Image-2024-11-27-at-16-53-34-6c21731a.jpg', 2800774),
(760, 1, 0, 4, 1, 2, 1, 46892, '2024-11-27', '', NULL, 'https://i.ibb.co.com/cJRKMyV/Whats-App-Image-2024-11-27-at-16-52-33-da0d7f09.jpg', 2753882),
(761, 1, 0, 1, 1, 1, 1, 70000, '2024-11-28', '', NULL, 'https://i.ibb.co.com/1QFvv5h/Whats-App-Image-2024-11-27-at-17-09-45-951f981b.jpg', 2683882),
(762, 1, 0, 2, 1, 1, 1, 30000, '2024-11-28', '', NULL, 'https://i.ibb.co.com/qyHLS30/Whats-App-Image-2024-11-27-at-17-10-36-b6bc14d2.jpg', 2653882),
(763, 1, 0, 3, 1, 1, 1, 350658, '2024-11-28', '', NULL, 'https://i.ibb.co.com/vcFD14b/Whats-App-Image-2024-11-27-at-17-19-41-9cb1af67.jpg', 2303224),
(764, 1, 0, 4, 1, 1, 1, 46892, '2024-11-28', '', NULL, 'https://i.ibb.co.com/fkgK2xb/Whats-App-Image-2024-11-27-at-16-59-04-b6b465c9.jpg', 2256332),
(765, 1, 0, 1, 1, 2, 1, 70000, '2024-11-28', '', NULL, 'https://i.ibb.co.com/9YVM0FD/Whats-App-Image-2024-11-28-at-10-53-28-307ad20f.jpg', 2086332),
(766, 1, 0, 2, 1, 2, 1, 30000, '2024-11-28', '', NULL, 'https://i.ibb.co.com/tMrxBMd/Whats-App-Image-2024-11-28-at-10-54-25-71fa029f.jpg', 2056332),
(767, 1, 0, 3, 1, 2, 1, 350658, '2024-11-28', '', NULL, 'https://i.ibb.co.com/N2Y9fwh/Whats-App-Image-2024-11-28-at-10-50-57-f9a90698.jpg', 1705674),
(768, 1, 0, 4, 1, 2, 1, 47087, '2024-11-28', '', NULL, 'https://i.ibb.co.com/JxSkn5P/Whats-App-Image-2024-11-28-at-10-36-29-b2fa3949.jpg', 1658587),
(769, 1, 0, 1, 1, 1, 1, 70000, '2024-11-29', '', NULL, 'https://i.ibb.co.com/J22j6dF/Whats-App-Image-2024-11-28-at-17-08-13-a1dac1a0.jpg', 1588587),
(770, 1, 0, 2, 1, 1, 1, 30000, '2024-11-29', '', NULL, 'https://i.ibb.co.com/s3315rN/Whats-App-Image-2024-11-28-at-17-09-08-b91ac0cb.jpg', 1558587),
(771, 1, 0, 3, 1, 1, 1, 350658, '2024-11-29', '', NULL, 'https://i.ibb.co.com/C2G0SQ8/Whats-App-Image-2024-11-28-at-19-20-23-231ca4ef.jpg', 1207929),
(772, 1, 0, 4, 1, 1, 1, 47087, '2024-11-29', '', NULL, 'https://i.ibb.co.com/b5ckcby/Whats-App-Image-2024-11-28-at-17-27-04-df189ef3.jpg', 1160842),
(773, 1, 0, 1, 1, 2, 1, 70000, '2024-11-29', '', NULL, 'https://i.ibb.co.com/wNM0Kng/Whats-App-Image-2024-11-29-at-11-01-51-4a4a3c71.jpg', 1090842),
(774, 1, 0, 2, 1, 2, 1, 30000, '2024-11-29', '', NULL, 'https://i.ibb.co.com/JzP0dpP/Whats-App-Image-2024-11-29-at-10-59-02-417db900.jpg', 1060842),
(775, 1, 0, 3, 1, 2, 1, 350658, '2024-11-29', '', NULL, 'https://i.ibb.co.com/bzdNP7L/Whats-App-Image-2024-11-29-at-11-00-22-691cd33a.jpg', 710184),
(776, 1, 0, 4, 1, 2, 1, 46892, '2024-11-29', '', NULL, 'https://i.ibb.co.com/ZGBw4Dt/Whats-App-Image-2024-11-29-at-10-51-37-1269f576.jpg', 663292);

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
(55, 3, 'AL.203/2000/03440/183909/24', '2024-10-16', '2024-10-31', '16-10-2024 - 31-10-2024'),
(57, 4, 'AL.203/2000/03452/183990/24', '2024-10-16', '2024-10-31', '16-10-2024 - 31-10-2024'),
(69, 7, 'AL.203/2000/03942/187941/24', '2024-11-15', '2024-11-30', '15-11-2024 - 30-11-2024'),
(70, 8, 'AL.203/2000/03947/187943/24', '2024-11-15', '2024-11-30', '15-11-2024 - 30-11-2024'),
(71, 6, 'AL.203/2000/03965/187930/24', '2024-11-15', '2024-11-30', '15-11-2024 - 30-11-2024'),
(72, 6, 'AL.203/2000/03964/187972/24', '2024-11-01', '2024-11-15', '01-11-2024 - 15-11-2024'),
(73, 5, 'AL.203/2000/03960/187970/24', '2024-11-01', '2024-11-15', '01-11-2024 - 15-11-2024'),
(74, 5, 'AL.203/2000/03963/187945/24', '2024-11-15', '2024-11-30', '15-11-2024 - 30-11-2024'),
(75, 4, 'AL.203/2000/03958/187971/24', '2024-11-15', '2024-11-30', '15-11-2024 - 30-11-2024'),
(76, 4, 'AL.203/2000/03957/187956/24', '2024-11-01', '2024-11-16', '01-11-2024 - 16-11-2024'),
(77, 3, 'AL.203/2000/03955/187948/24', '2024-11-01', '2024-11-16', '01-11-2024 - 16-11-2024'),
(78, 3, 'AL.203/2000/03956/187946/24', '2024-11-15', '2024-11-30', '15-11-2024 - 30-11-2024'),
(80, 2, 'AL.203/2000/03953/187955/24', '2024-11-15', '2024-11-30', '15-11-2024 - 30-11-2024'),
(82, 1, 'AL.203/2000/03951/187973/24', '2024-11-15', '2024-11-30', '15-11-2024 - 30-11-2024'),
(83, 8, 'AL.203/2000/03945/187954/24', '2024-11-01', '2024-11-16', '01-11-2024 - 16-11-2024');

-- --------------------------------------------------------

--
-- Table structure for table `rambu_kapal`
--

CREATE TABLE `rambu_kapal` (
  `id` int(11) NOT NULL,
  `kapal_id` int(11) NOT NULL,
  `berlaku_dari` date NOT NULL,
  `berlaku_sampai` date NOT NULL,
  `masa_berlaku` varchar(255) NOT NULL,
  `dokumen_rambu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rambu_kapal`
--

INSERT INTO `rambu_kapal` (`id`, `kapal_id`, `berlaku_dari`, `berlaku_sampai`, `masa_berlaku`, `dokumen_rambu`) VALUES
(1, 6, '2024-11-04', '2024-12-03', '2024-11-04', 'https://i.ibb.co.com/HFNzRtC/image.png'),
(2, 1, '2024-11-24', '2024-12-23', '2024-11-24', 'https://i.ibb.co.com/7SGkNDW/image.png'),
(4, 2, '2024-10-20', '2024-11-18', '2024-10-20', 'https://i.ibb.co.com/K01tv1c/image.png'),
(5, 3, '2024-10-11', '2024-10-12', '2024-02-26', NULL),
(6, 4, '2024-10-11', '2024-10-12', '2023-10-17', NULL),
(7, 5, '2024-10-11', '2024-10-12', '2024-01-02', NULL),
(8, 7, '2024-10-30', '2024-11-28', '2024-10-30', 'https://i.ibb.co.com/8dZ1TxH/image.png'),
(9, 8, '2024-11-04', '2024-12-03', '2024-11-04', 'https://i.ibb.co.com/VTCvzTM/image.png');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_topup`
--

CREATE TABLE `riwayat_topup` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `bukti_topup` varchar(255) DEFAULT NULL,
  `tanggal_topup` date NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `sisa_saldo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_topup`
--

INSERT INTO `riwayat_topup` (`id`, `user_id`, `saldo`, `bukti_topup`, `tanggal_topup`, `catatan`, `sisa_saldo`) VALUES
(7, 1, 1000000, 'https://i.ibb.co.com/0fK28N1/Whats-App-Image-2024-10-08-at-14-09-31-e4fd37ff.jpg', '2024-10-08', NULL, NULL),
(9, 1, 714308, 'https://i.ibb.co.com/H77C62Z/Whats-App-Image-2024-10-09-at-13-27-45-38c235ad.jpg', '2024-10-09', NULL, NULL),
(10, 1, 944228, 'https://i.ibb.co.com/cCJ6G80/Whats-App-Image-2024-10-10-at-08-26-13-2ed8c748.jpg', '2024-10-10', NULL, NULL),
(11, 1, 1000000, 'https://i.ibb.co.com/m6L10SY/Whats-App-Image-2024-10-10-at-17-17-02-54689f55.jpg', '2024-10-10', NULL, NULL),
(12, 1, 1000000, 'https://i.ibb.co.com/CJ8nVYc/Whats-App-Image-2024-10-11-at-15-55-27-bf91a77a.jpg', '2024-10-11', NULL, NULL),
(14, 1, 870327, 'https://i.ibb.co.com/S6HX7kH/Whats-App-Image-2024-10-12-at-14-37-04-b4d83a5b.jpg', '2024-10-12', 'Ada beli barang di STEAM seharga 129673', NULL),
(15, 1, 1000000, 'https://i.ibb.co.com/L9GYpFm/Whats-App-Image-2024-10-13-at-17-17-29-13da7574.jpg', '2024-10-14', NULL, NULL),
(16, 1, 1000000, 'https://i.ibb.co.com/phQbVcs/Whats-App-Image-2024-10-14-at-11-19-33-4119c744.jpg', '2024-10-14', '', NULL),
(17, 1, 1000000, 'https://i.ibb.co.com/TR8R7gf/Whats-App-Image-2024-10-15-at-08-43-42-624fcda5.jpg', '2024-10-15', '', NULL),
(18, 1, 950000, 'https://i.ibb.co.com/VmR370b/Whats-App-Image-2024-10-17-at-08-37-07-110982c7.jpg', '2024-10-17', 'Topup 16 Oktober 2024 12:02\r\n50rb Beli barang Qris Ce grace', NULL),
(19, 1, 1000000, 'https://i.ibb.co.com/YZ2ZX58/Whats-App-Image-2024-10-17-at-11-01-54-193ff83a.jpg', '2024-10-17', '', NULL),
(20, 1, 1200000, 'https://i.ibb.co.com/0DpcbCS/Whats-App-Image-2024-10-18-at-08-15-30-f3e13a0c.jpg', '2024-10-18', '', NULL),
(21, 1, 1400000, 'https://i.ibb.co.com/Kz56D7w/Whats-App-Image-2024-10-19-at-08-49-36-7851e1d2.jpg', '2024-10-19', '', NULL),
(22, 1, 1000000, 'https://i.ibb.co.com/SsXfS45/Whats-App-Image-2024-10-20-at-17-07-24-82f4ce58.jpg', '2024-10-20', 'jam 17.00', 1319022),
(23, 1, 1000000, 'https://i.ibb.co.com/ZNYbG6B/Whats-App-Image-2024-10-20-at-10-47-40-761381cc.jpg', '2024-10-20', 'jam 1045', 35127),
(27, 1, 993500, 'https://i.ibb.co.com/n1TVRyG/Whats-App-Image-2024-10-22-at-08-13-30-c51bbd0c.jpg', '2024-10-21', 'Total Biaya Admin 6500', 1086159),
(28, 1, 3906584, 'https://i.ibb.co.com/yN7pNxv/Whats-App-Image-2024-10-22-at-13-37-36-26c25558.jpg', '2024-10-22', '', 4000000),
(29, 1, 5000000, 'https://i.ibb.co.com/9c3qGBp/Whats-App-Image-2024-10-26-at-09-04-44-d78556ac.jpg', '2024-10-26', '', 5523176),
(30, 1, 4000000, 'https://i.ibb.co.com/z5m7VDX/Whats-App-Image-2024-10-30-at-14-08-35-11cf8ef8.jpg', '2024-10-30', '', 4612058),
(31, 1, 5800000, 'https://i.ibb.co.com/Jkw26xZ/Whats-App-Image-2024-11-02-at-17-36-33-5abd5b16.jpg', '2024-11-04', '2 November 2024 1722', 6281769),
(32, 1, 1000000, '', '2024-11-07', '', 1130439),
(33, 1, 3900000, '', '2024-11-09', '', 4035698),
(34, 1, 3100000, '', '2024-11-13', '', 3153766),
(35, 1, 4000000, '', '2024-11-28', 'Tukar Cash di tgl 21 dan 22', 4265395),
(36, 1, 3100000, '', '2024-11-28', '', 3248102),
(37, 1, 4300000, '', '2024-11-28', 'Seabank', 4467942),
(38, 1, 3400000, '', '2024-11-28', '', 3748982);

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
(6, 'Buku Kesehatan Karantina'),
(7, 'Lainnya');

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
-- Indexes for table `jabatan_kru`
--
ALTER TABLE `jabatan_kru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kru_kapal`
--
ALTER TABLE `kru_kapal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_token`
--
ALTER TABLE `login_token`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `data_kapal`
--
ALTER TABLE `data_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `detail_saldo`
--
ALTER TABLE `detail_saldo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `jabatan_kru`
--
ALTER TABLE `jabatan_kru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kru_kapal`
--
ALTER TABLE `kru_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `login_token`
--
ALTER TABLE `login_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayaran_kapal`
--
ALTER TABLE `pembayaran_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=777;

--
-- AUTO_INCREMENT for table `pkka_kapal`
--
ALTER TABLE `pkka_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `rambu_kapal`
--
ALTER TABLE `rambu_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `riwayat_topup`
--
ALTER TABLE `riwayat_topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tujuan_pembayaran`
--
ALTER TABLE `tujuan_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
