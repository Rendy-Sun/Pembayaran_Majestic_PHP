-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2025 at 02:14 AM
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
(20, 'Lainnya', 2),
(22, 'MAJESTIC SUPREME', 1),
(23, 'UNITY OF MAJESTIC', 1),
(24, 'MAJESTIC HOPE', 1),
(25, 'NOBLE OF MAJESTIC', 1),
(26, 'ETHOS OF MAJESTIC', 1);

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
(8, 8, 1052945, '9V9817', 563229900, 'Singapore', 312, 3.25, 0.90, 2.00),
(9, 22, 1017385, '9V8992', 563218700, 'Singapore', 312, 3.25, 0.90, 2.00),
(10, 23, 1035284, '9V3152', 563230100, 'SINGAPORE', 0, 0.00, 0.00, 0.00),
(11, 24, 1052957, '9VBL2', 563246200, 'SINGAPORE', 312, 0.00, 0.00, 0.00),
(12, 25, 1052933, '9V9820', 563243400, 'SINGAPORE', 0, 0.00, 0.00, 0.00),
(13, 26, 1038169, '9V9416', 563239500, 'SINGAPORE', 0, 0.00, 0.00, 0.00);

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
(35, 620000, 260000, 3603600, 372400, 0, 0, 8, '2024-11-30', 'https://i.ibb.co.com/98MBQ82/Whats-App-Image-2024-11-29-at-14-18-19-b7ae4dc7.jpg', ''),
(37, 620000, 260000, 3603600, 372900, 0, 0, 8, '2024-12-07', 'https://i.ibb.co.com/QPJGG0H/Whats-App-Image-2024-12-07-at-09-52-21-83fe95e6.jpg', '-MC Sebelumnya -Rp 3500\r\n'),
(38, 420000, 180000, 2103948, 279300, 0, 0, 6, '2024-12-11', 'https://i.ibb.co.com/F7Vh6sv/Whats-App-Image-2024-12-11-at-08-41-45-f63a6061.jpg', '- MC -Rp 7200\r\n- Rambu 214500'),
(39, 560000, 240000, 2805264, 376100, 0, 0, 8, '2024-12-14', 'https://i.ibb.co.com/pb6vVT5/Whats-App-Image-2024-12-13-at-14-31-25-9e4af60c.jpg', '- 2600'),
(40, 420000, 180000, 2103948, 282000, 0, 0, 6, '2024-12-18', 'https://i.ibb.co.com/kDmXWDj/Whats-App-Image-2024-12-17-at-14-29-47-accd7f79.jpg', '- mc 6100\r\n- rambu 137100'),
(41, 620000, 260000, 3603600, 384400, 0, 0, 8, '2024-12-21', 'https://i.ibb.co.com/G2q5prS/Whats-App-Image-2024-12-20-at-13-59-48-792e9dcb.jpg', '- MC lebih 2000\r\n- Buku Kesehatan karantina wm9 sudah lunas'),
(42, 480000, 200000, 2902284, 285600, 0, 0, 6, '2024-12-25', 'https://i.ibb.co.com/VVHbS6g/Whats-App-Image-2024-12-24-at-13-35-40-7dd9cbfe.jpg', 'Rambu WM3 140rb\r\nBuku WM 3 100rb\r\nMC 100 perak'),
(44, 620000, 260000, 3564800, 380800, 0, 0, 8, '2024-12-28', 'https://i.ibb.co.com/Jv4DgcY/Whats-App-Image-2024-12-27-at-15-35-09-879d3495.jpg', '- MC trip Sebelumnya kurang 1100\r\n- Rambu MS 214300\r\n-Buku Kesehatan MS 125000\r\n\r\nLABUH MS harganya 540540'),
(45, 480000, 200000, 2902284, 284800, 0, 0, 6, '2025-01-01', 'https://i.ibb.co.com/w72vCXb/Whats-App-Image-2025-01-03-at-14-25-50-9329c860.jpg', 'Rincian Alternatif: https://i.ibb.co.com/sqhX9H2/Whats-App-Image-2025-01-03-at-14-25-51-60dd059a.jpg'),
(47, 650000, 270000, 4002768, 380900, 0, 0, 8, '2025-01-04', 'https://i.ibb.co.com/k11xnYc/Whats-App-Image-2025-01-03-at-14-51-10-9617fb48.jpg', ''),
(48, 420000, 180000, 2103948, 287000, 0, 0, 6, '2025-01-08', 'https://i.ibb.co.com/fY4YyT5/Whats-App-Image-2025-01-07-at-14-25-36-072845ae.jpg', 'Rincian ke 2: https://i.ibb.co.com/cbyZWsf/Whats-App-Image-2025-01-07-at-14-25-47-6073c657.jpg\r\n\r\nLabuh Trip di kurang dengan kelebihan saldo: Rp 2.104.000 - Rp 439.200(Saldo yang berlebih) = Rp 1.664.800\r\n\r\nMC Rp 280.200 + Rp 6800 = Rp 287.000'),
(49, 620000, 260000, 3603600, 380200, 0, 0, 8, '2025-01-11', '', 'MC sebelumnya -200');

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
(776, 1, 0, 4, 1, 2, 1, 46892, '2024-11-29', '', NULL, 'https://i.ibb.co.com/ZGBw4Dt/Whats-App-Image-2024-11-29-at-10-51-37-1269f576.jpg', 663292),
(777, 7, 0, 1, 1, 1, 1, 85000, '2024-11-30', '', NULL, 'https://i.ibb.co.com/0tv50hm/Whats-App-Image-2024-11-29-at-17-11-53-bfe71ad1.jpg', 578292),
(778, 7, 0, 2, 1, 1, 1, 35000, '2024-11-30', '', NULL, 'https://i.ibb.co.com/PZLsNW1/Whats-App-Image-2024-11-29-at-17-12-26-9f6a924e.jpg', 543292),
(781, 7, 0, 3, 1, 1, 1, 550242, '2024-11-30', '', NULL, 'https://i.ibb.co.com/kJRYmGs/Whats-App-Image-2024-11-29-at-18-50-21-e2c2accb.jpg', 4993050),
(782, 7, 0, 4, 1, 1, 1, 46892, '2024-11-30', '', NULL, 'https://i.ibb.co.com/9ZXSHf5/Whats-App-Image-2024-11-29-at-17-17-15-28674ee7.jpg', 4946158),
(783, 7, 0, 1, 1, 2, 1, 85000, '2024-11-30', '', NULL, 'https://i.ibb.co.com/9yLpM9Q/Whats-App-Image-2024-11-30-at-10-51-30-6c277de4.jpg', 4861158),
(784, 7, 0, 2, 1, 2, 1, 35000, '2024-11-30', '', NULL, 'https://i.ibb.co.com/6JsZD2J/Whats-App-Image-2024-11-30-at-10-52-10-6a10a914.jpg', 4826158),
(785, 7, 0, 3, 1, 2, 1, 550242, '2024-11-30', '', NULL, 'https://i.ibb.co.com/7QJyXz0/Whats-App-Image-2024-11-30-at-11-44-46-380b93ba.jpg', 4275916),
(786, 7, 0, 4, 1, 2, 1, 46892, '2024-11-30', '', NULL, 'https://i.ibb.co.com/CKPb2fS/Whats-App-Image-2024-11-30-at-11-03-42-4e0c9bc2.jpg', 4229024),
(787, 7, 0, 1, 1, 1, 1, 85000, '2024-12-01', '', NULL, 'https://i.ibb.co.com/M6RgzWp/Whats-App-Image-2024-11-30-at-17-14-42-fd30f2be.jpg', 4144024),
(788, 7, 0, 2, 1, 1, 1, 35000, '2024-12-01', '', NULL, 'https://i.ibb.co.com/fHMxJv8/Whats-App-Image-2024-11-30-at-17-15-17-16fe5323.jpg', 4109024),
(789, 7, 0, 3, 1, 1, 1, 550242, '2024-12-01', '', NULL, 'https://i.ibb.co.com/1b1QKsv/Whats-App-Image-2024-11-30-at-19-10-48-8ae6ac71.jpg', 3558782),
(790, 7, 0, 4, 1, 1, 1, 46892, '2024-12-01', '', NULL, 'https://i.ibb.co.com/tPp5J9J/Whats-App-Image-2024-11-30-at-17-56-22-21a3f6af.jpg', 3511890),
(791, 7, 0, 1, 1, 2, 1, 85000, '2024-12-01', '', NULL, 'https://i.ibb.co.com/GHTD1jT/Whats-App-Image-2024-12-01-at-10-47-45-6bd6e209.jpg', 3426890),
(792, 7, 0, 2, 1, 2, 1, 35000, '2024-12-01', '', NULL, 'https://i.ibb.co.com/7NWV39y/Whats-App-Image-2024-12-01-at-10-48-18-14bb948e.jpg', 3391890),
(793, 7, 0, 3, 1, 2, 1, 550242, '2024-12-01', '', NULL, 'https://i.ibb.co.com/bzcSvmx/Whats-App-Image-2024-12-01-at-11-50-53-50a6fc75.jpg', 2841648),
(794, 7, 0, 4, 1, 2, 1, 46892, '2024-12-01', '', NULL, 'https://i.ibb.co.com/pdh46wS/Whats-App-Image-2024-12-01-at-10-39-41-bcb5edfa.jpg', 2794756),
(795, 1, 0, 1, 1, 1, 1, 70000, '2024-12-02', '', NULL, 'https://i.ibb.co.com/QcymmnQ/Whats-App-Image-2024-12-01-at-17-11-35-ab71b0fe.jpg', 2724756),
(796, 1, 0, 2, 1, 1, 1, 30000, '2024-12-02', '', NULL, 'https://i.ibb.co.com/b7hTFgH/Whats-App-Image-2024-12-01-at-17-12-17-938216d0.jpg', 2694756),
(797, 1, 0, 3, 1, 1, 1, 350658, '2024-12-02', '', NULL, 'https://i.ibb.co.com/jRtPqQz/Whats-App-Image-2024-12-01-at-18-36-05-923c7b4f.jpg', 2344098),
(798, 1, 0, 4, 1, 1, 1, 46892, '2024-12-02', '', NULL, 'https://i.ibb.co.com/L9XJWDp/Whats-App-Image-2024-12-01-at-17-24-29-180150cf.jpg', 2297206),
(799, 7, 0, 5, 1, 1, 1, 214133, '2024-11-30', '', NULL, 'https://i.ibb.co.com/JRJygv3/Whats-App-Image-2024-11-29-at-17-18-10-568d7380.jpg', 2083073),
(800, 1, 0, 1, 1, 2, 1, 70000, '2024-12-02', '', NULL, 'https://i.ibb.co.com/hXsXML7/Whats-App-Image-2024-12-02-at-10-57-33-8ffa9321.jpg', 2013073),
(801, 1, 0, 2, 1, 2, 1, 30000, '2024-12-02', '', NULL, 'https://i.ibb.co.com/M1tFZDF/Whats-App-Image-2024-12-02-at-10-58-44-81369243.jpg', 1983073),
(802, 1, 0, 3, 1, 2, 1, 350658, '2024-12-02', '', NULL, 'https://i.ibb.co.com/gvNcRh2/Whats-App-Image-2024-12-02-at-11-44-15-5534befd.jpg', 1632415),
(803, 1, 0, 4, 1, 2, 1, 46868, '2024-12-02', '', NULL, 'https://i.ibb.co.com/Jd4nJHP/Whats-App-Image-2024-12-02-at-11-11-14-8c9a7dc9.jpg', 1585547),
(804, 1, 0, 1, 1, 1, 1, 70000, '2024-12-03', '', NULL, 'https://i.ibb.co.com/0mPxYTD/Whats-App-Image-2024-12-02-at-17-12-19-3770b8b3.jpg', 1515547),
(805, 1, 0, 2, 1, 1, 1, 30000, '2024-12-03', '', NULL, 'https://i.ibb.co.com/N7tgNTK/Whats-App-Image-2024-12-02-at-17-12-53-5c2df4d9.jpg', 1485547),
(806, 1, 0, 3, 1, 1, 1, 350658, '2024-12-03', '', NULL, 'https://i.ibb.co.com/0rfYV3D/Whats-App-Image-2024-12-02-at-17-20-46-5e179cac.jpg', 1134889),
(807, 1, 0, 4, 1, 1, 1, 46868, '2024-12-03', '', NULL, 'https://i.ibb.co.com/h2QHGsH/Whats-App-Image-2024-12-02-at-17-04-27-51c6b756.jpg', 1088021),
(808, 1, 0, 1, 1, 2, 1, 70000, '2024-12-03', '', NULL, 'https://i.ibb.co.com/4t6Fxpz/Whats-App-Image-2024-12-03-at-10-37-10-11f259ae.jpg', 1018021),
(809, 1, 0, 2, 1, 2, 1, 30000, '2024-12-03', '', NULL, 'https://i.ibb.co.com/b13krZS/Whats-App-Image-2024-12-03-at-10-37-59-f0d1199e.jpg', 988021),
(810, 1, 0, 3, 1, 2, 1, 350658, '2024-12-03', '', NULL, 'https://i.ibb.co.com/FKHXWK7/Whats-App-Image-2024-12-03-at-11-19-47-07debabf.jpg', 637363),
(811, 1, 0, 4, 1, 2, 1, 47013, '2024-12-03', '', NULL, 'https://i.ibb.co.com/zh6ZDVs/Whats-App-Image-2024-12-03-at-10-45-43-3d7c3947.jpg', 590350),
(812, 1, 0, 1, 1, 1, 1, 70000, '2024-12-04', '', NULL, 'https://i.ibb.co.com/BVMRjgY/Whats-App-Image-2024-12-04-at-10-12-10-e28303f5.jpg', 520350),
(813, 1, 0, 2, 1, 1, 1, 30000, '2024-12-04', '', NULL, 'https://i.ibb.co.com/m98yjjh/Whats-App-Image-2024-12-04-at-10-13-05-80d6ae72.jpg', 490350),
(814, 1, 0, 3, 1, 1, 1, 350658, '2024-12-04', '', NULL, 'https://i.ibb.co.com/hsTKX2y/Whats-App-Image-2024-12-03-at-18-24-43-e34823a5.jpg', 139692),
(815, 1, 0, 4, 1, 1, 1, 47013, '2024-12-04', '', NULL, 'https://i.ibb.co.com/TPqZCdn/Whats-App-Image-2024-12-03-at-17-18-24-05e3628b.jpg', 92679),
(816, 1, 0, 1, 1, 2, 1, 70000, '2024-12-04', '', NULL, 'https://i.ibb.co.com/jfGKvSR/Whats-App-Image-2024-12-04-at-10-32-47-b1fe16c2.jpg', 22679),
(817, 1, 0, 2, 1, 2, 1, 30000, '2024-12-04', '', NULL, 'https://i.ibb.co.com/1nCSjqv/Whats-App-Image-2024-12-04-at-10-33-19-6cc19f9d.jpg', -7321),
(818, 1, 0, 3, 1, 2, 1, 350658, '2024-12-04', '', NULL, 'https://i.ibb.co.com/p4Tb3TL/Whats-App-Image-2024-12-04-at-11-19-46-8603630f.jpg', -357979),
(819, 1, 0, 4, 1, 2, 1, 47145, '2024-12-04', '', NULL, 'https://i.ibb.co.com/QHb6pvW/Whats-App-Image-2024-12-04-at-11-05-19-189c6e1a.jpg', -405124),
(820, 1, 0, 1, 1, 1, 1, 70000, '2024-12-05', 'Pembayaran COP dan PHQC Di gabung dikarenakan ada gangguan tidak muncul kode billing di karantina', NULL, 'https://i.ibb.co.com/5K3LgXq/Whats-App-Image-2024-12-04-at-18-39-25-78795c60.jpg', 3024876),
(821, 1, 0, 2, 1, 1, 1, 30000, '2024-12-05', '', NULL, 'https://i.ibb.co.com/5K3LgXq/Whats-App-Image-2024-12-04-at-18-39-25-78795c60.jpg', 2994876),
(822, 1, 0, 3, 1, 1, 1, 350658, '2024-12-05', '', NULL, 'https://i.ibb.co.com/fdqqqmP/Whats-App-Image-2024-12-04-at-18-05-17-ca9b0986.jpg', 2644218),
(823, 1, 0, 4, 1, 1, 1, 47145, '2024-12-05', '', NULL, 'https://i.ibb.co.com/86BZz0N/Whats-App-Image-2024-12-04-at-17-41-43-bd755d37.jpg', 2597073),
(824, 1, 0, 1, 1, 2, 1, 70000, '2024-12-05', '', NULL, 'https://i.ibb.co.com/D5LbmsM/Whats-App-Image-2024-12-05-at-10-40-57-d927a9a9.jpg', 2527073),
(825, 1, 0, 2, 1, 2, 1, 30000, '2024-12-05', '', NULL, 'https://i.ibb.co.com/SczhVz6/Whats-App-Image-2024-12-05-at-10-41-40-1863b59c.jpg', 2497073),
(826, 1, 0, 3, 1, 2, 1, 350658, '2024-12-05', '', NULL, 'https://i.ibb.co.com/HYhZ2hD/Whats-App-Image-2024-12-05-at-11-11-55-fff901a5.jpg', 2146415),
(827, 1, 0, 4, 1, 2, 1, 47167, '2024-12-05', '', NULL, 'https://i.ibb.co.com/RYfmHQQ/Whats-App-Image-2024-12-05-at-10-48-00-15b24744.jpg', 2099248),
(828, 1, 0, 1, 1, 1, 1, 70000, '2024-12-06', '', NULL, 'https://i.ibb.co.com/tP5mPMB/Whats-App-Image-2024-12-05-at-17-03-53-3b67e595.jpg', 2029248),
(829, 1, 0, 2, 1, 1, 1, 30000, '2024-12-06', '', NULL, 'https://i.ibb.co.com/hWrV7Lf/Whats-App-Image-2024-12-05-at-17-04-28-48950067.jpg', 1999248),
(830, 1, 0, 3, 1, 1, 1, 350658, '2024-12-06', '', NULL, 'https://i.ibb.co.com/zJVL0vy/Whats-App-Image-2024-12-05-at-18-11-40-424cb699.jpg', 1648590),
(831, 1, 0, 4, 1, 1, 1, 47167, '2024-12-06', '', NULL, 'https://i.ibb.co.com/Xz2W3bz/Whats-App-Image-2024-12-05-at-17-02-20-4a5a78b1.jpg', 1601423),
(832, 1, 0, 1, 1, 2, 1, 70000, '2024-12-06', '', NULL, 'https://i.ibb.co.com/yWjHzt3/Whats-App-Image-2024-12-06-at-11-21-59-f4dd06b6.jpg', 1531423),
(833, 1, 0, 2, 1, 2, 1, 30000, '2024-12-06', '', NULL, 'https://i.ibb.co.com/5MfB3zq/Whats-App-Image-2024-12-06-at-11-22-41-1a0064e4.jpg', 1501423),
(834, 1, 0, 3, 1, 2, 1, 350658, '2024-12-06', '', NULL, 'https://i.ibb.co.com/yWjHzt3/Whats-App-Image-2024-12-06-at-11-21-59-f4dd06b6.jpg', 1150765),
(835, 1, 0, 4, 1, 2, 1, 46974, '2024-12-06', '', NULL, 'https://i.ibb.co.com/4Pv2sBm/Whats-App-Image-2024-12-06-at-10-48-19-3e4bf81f.jpg', 1103791),
(836, 8, 0, 1, 1, 1, 1, 85000, '2024-12-07', '', NULL, 'https://i.ibb.co.com/w07KZfj/Whats-App-Image-2024-12-06-at-18-26-25-8a14d337.jpg', 1018791),
(837, 8, 0, 2, 1, 1, 1, 35000, '2024-12-07', '', NULL, 'https://i.ibb.co.com/dfng0Bz/Whats-App-Image-2024-12-06-at-18-26-55-d6e65d70.jpg', 983791),
(838, 8, 0, 3, 1, 1, 1, 550242, '2024-12-07', '', NULL, 'https://i.ibb.co.com/2MdS5SC/Whats-App-Image-2024-12-06-at-18-58-20-1e795030.jpg', 433549),
(839, 8, 0, 4, 1, 1, 1, 46974, '2024-12-07', '', NULL, 'https://i.ibb.co.com/z6hFF3t/Whats-App-Image-2024-12-06-at-17-11-44-57d8e144.jpg', 386575),
(840, 8, 0, 1, 1, 2, 1, 85000, '2024-12-07', '', NULL, 'https://i.ibb.co.com/vQbdVwc/Whats-App-Image-2024-12-07-at-10-49-17-f78caed8.jpg', 5101575),
(841, 8, 0, 2, 1, 2, 1, 35000, '2024-12-07', '', NULL, 'https://i.ibb.co.com/h9VtW95/Whats-App-Image-2024-12-07-at-10-50-09-1ab793ea.jpg', 5066575),
(842, 8, 0, 3, 1, 2, 1, 550242, '2024-12-07', '', NULL, 'https://i.ibb.co.com/BTWTh3z/Whats-App-Image-2024-12-07-at-11-01-10-c66684c4.jpg', 4516333),
(843, 8, 0, 4, 1, 2, 1, 46974, '2024-12-07', '', NULL, 'https://i.ibb.co.com/SVkm0Zx/Whats-App-Image-2024-12-07-at-10-35-09-19ea983d.jpg', 4469359),
(844, 8, 0, 5, 1, 1, 1, 214511, '2024-12-07', '', NULL, 'https://i.ibb.co.com/ySxVrxv/Whats-App-Image-2024-12-06-at-18-41-45-8d87dfbc.jpg', 4254848),
(845, 8, 0, 1, 1, 1, 1, 85000, '2024-12-08', '', NULL, 'https://i.ibb.co.com/vQbdVwc/Whats-App-Image-2024-12-07-at-10-49-17-f78caed8.jpg', 4169848),
(846, 8, 0, 2, 1, 1, 1, 35000, '2024-12-08', '', NULL, 'https://i.ibb.co.com/h9VtW95/Whats-App-Image-2024-12-07-at-10-50-09-1ab793ea.jpg', 4134848),
(847, 8, 0, 3, 1, 1, 1, 550242, '2024-12-08', '', NULL, 'https://i.ibb.co.com/TtKZCJd/Whats-App-Image-2024-12-07-at-17-43-33-a8acd3e3.jpg', 3584606),
(848, 8, 0, 4, 1, 1, 1, 46974, '2024-12-08', '', NULL, 'https://i.ibb.co.com/nwp8DDM/Whats-App-Image-2024-12-07-at-17-12-17-c681794d.jpg', 3537632),
(849, 8, 0, 1, 1, 2, 1, 85000, '2024-12-08', '', NULL, 'https://i.ibb.co.com/gryQKmF/Whats-App-Image-2024-12-08-at-10-40-49-751beea7.jpg', 3452632),
(850, 8, 0, 2, 1, 2, 1, 35000, '2024-12-08', '', NULL, 'https://i.ibb.co.com/crrJCKx/Whats-App-Image-2024-12-08-at-10-41-23-3d545650.jpg', 3417632),
(851, 8, 0, 3, 1, 2, 1, 550242, '2024-12-08', '', NULL, 'https://i.ibb.co.com/x21xvmx/Whats-App-Image-2024-12-08-at-11-59-55-cf7ea276.jpg', 2867390),
(852, 8, 0, 4, 1, 2, 1, 46974, '2024-12-08', '', NULL, 'https://i.ibb.co.com/HNsRwt6/Whats-App-Image-2024-12-08-at-11-04-45-943a5d34.jpg', 2820416),
(853, 2, 0, 1, 1, 1, 1, 70000, '2024-12-09', '', NULL, 'https://i.ibb.co.com/mydMyCc/Whats-App-Image-2024-12-08-at-17-07-01-40967673.jpg', 2750416),
(854, 2, 0, 2, 1, 1, 1, 30000, '2024-12-09', '', NULL, 'https://i.ibb.co.com/64yV4Gd/Whats-App-Image-2024-12-08-at-17-07-43-f6e23d48.jpg', 2720416),
(855, 2, 0, 3, 1, 1, 1, 350658, '2024-12-09', '', NULL, 'https://i.ibb.co.com/550n6V1/Whats-App-Image-2024-12-08-at-19-16-09-ef75041d.jpg', 2369758),
(856, 2, 0, 4, 1, 1, 1, 46974, '2024-12-09', '', NULL, 'https://i.ibb.co.com/TmWCXmM/Whats-App-Image-2024-12-08-at-18-35-24-4db53159.jpg', 2322784),
(857, 2, 0, 1, 1, 2, 1, 70000, '2024-12-09', '', NULL, 'https://i.ibb.co.com/CbzCJqY/Whats-App-Image-2024-12-09-at-14-33-57-a86187a5.jpg', 2252784),
(858, 2, 0, 2, 1, 2, 1, 30000, '2024-12-09', '', NULL, 'https://i.ibb.co.com/CbzCJqY/Whats-App-Image-2024-12-09-at-14-33-57-a86187a5.jpg', 2222784),
(859, 2, 0, 3, 1, 2, 1, 350658, '2024-12-09', '', NULL, 'https://i.ibb.co.com/XDGQYDx/Whats-App-Image-2024-12-09-at-11-22-06-f35fe8ae.jpg', 1872126),
(860, 2, 0, 4, 1, 2, 1, 51529, '2024-12-09', '', NULL, 'https://i.ibb.co.com/rtMRFNM/Whats-App-Image-2024-12-09-at-11-04-04-ec6e3659.jpg', 1820597),
(861, 2, 0, 1, 1, 1, 1, 70000, '2024-12-10', '', NULL, 'https://i.ibb.co.com/XVT1PFt/Whats-App-Image-2024-12-09-at-17-12-02-4bf2c9e1.jpg', 1750597),
(862, 2, 0, 2, 1, 1, 1, 30000, '2024-12-10', '', NULL, 'https://i.ibb.co.com/DwqNLdL/Whats-App-Image-2024-12-09-at-17-12-32-e69686ed.jpg', 1720597),
(863, 2, 0, 3, 1, 1, 1, 350658, '2024-12-10', '', NULL, 'https://i.ibb.co.com/84qhPsW/Whats-App-Image-2024-12-09-at-17-47-37-233bbb8a.jpg', 1369939),
(864, 2, 0, 4, 1, 1, 1, 46844, '2024-12-10', '', NULL, 'https://i.ibb.co.com/mN33CMK/Whats-App-Image-2024-12-09-at-17-48-40-fdb00e65.jpg', 1323095),
(865, 2, 0, 1, 1, 2, 1, 70000, '2024-12-10', '', NULL, 'https://i.ibb.co.com/TRScxnK/Whats-App-Image-2024-12-10-at-10-39-50-1c123f7f.jpg', 1253095),
(866, 2, 0, 2, 1, 2, 1, 30000, '2024-12-10', '', NULL, 'https://i.ibb.co.com/LnCTk5n/Whats-App-Image-2024-12-10-at-10-39-29-c36011d4.jpg', 1223095),
(867, 2, 0, 3, 1, 2, 1, 350658, '2024-12-10', '', NULL, 'https://i.ibb.co.com/7jcWJTd/Whats-App-Image-2024-12-10-at-11-26-15-b2411896.jpg', 872437),
(868, 2, 0, 4, 1, 2, 1, 46883, '2024-12-10', '', NULL, 'https://i.ibb.co.com/mRnHwxn/Whats-App-Image-2024-12-10-at-13-50-01-6777b479.jpg', 825604),
(869, 2, 0, 1, 1, 1, 1, 70000, '2024-12-11', '', NULL, 'https://i.ibb.co.com/Swf7Dtj/Whats-App-Image-2024-12-10-at-17-17-53-82bc5146.jpg', 755554),
(870, 2, 0, 2, 1, 1, 1, 30000, '2024-12-11', '', NULL, 'https://i.ibb.co.com/XSVKQp9/Whats-App-Image-2024-12-10-at-17-18-28-f1c06aec.jpg', 725554),
(871, 2, 0, 3, 1, 1, 1, 350658, '2024-12-11', '', NULL, 'https://i.ibb.co.com/hVVCCNh/Whats-App-Image-2024-12-10-at-18-48-50-932f1dee.jpg', 374896),
(872, 2, 0, 4, 1, 1, 1, 46883, '2024-12-11', '', NULL, 'https://i.ibb.co.com/Mn7mGQC/Whats-App-Image-2024-12-10-at-17-37-52-e27d17d9.jpg', 328013),
(873, 2, 0, 1, 1, 2, 1, 70000, '2024-12-11', '', NULL, 'https://i.ibb.co.com/JKTgD19/Whats-App-Image-2024-12-11-at-10-37-17-a51cac17.jpg', 3058013),
(874, 2, 0, 2, 1, 2, 1, 30000, '2024-12-11', '', NULL, 'https://i.ibb.co.com/YfQL3pK/Whats-App-Image-2024-12-11-at-10-37-46-cee5e85f.jpg', 3028013),
(875, 2, 0, 3, 1, 2, 1, 350658, '2024-12-11', '', NULL, 'https://i.ibb.co.com/N9khSx1/Whats-App-Image-2024-12-11-at-11-10-24-a5c48287.jpg', 2677355),
(876, 2, 0, 4, 1, 2, 1, 46922, '2024-12-11', '', NULL, 'https://i.ibb.co.com/0mZF7kd/Whats-App-Image-2024-12-11-at-10-38-17-728af0bf.jpg', 2630433),
(877, 2, 0, 1, 1, 1, 1, 70000, '2024-12-12', '', NULL, 'https://i.ibb.co.com/mhTHbSd/Whats-App-Image-2024-12-11-at-17-12-07-98add0b3.jpg', 2560433),
(878, 2, 0, 2, 1, 1, 1, 30000, '2024-12-12', '', NULL, 'https://i.ibb.co.com/0G3QrkC/Whats-App-Image-2024-12-11-at-17-12-43-b4beb348.jpg', 2530433),
(879, 2, 0, 3, 1, 1, 1, 350658, '2024-12-12', '', NULL, 'https://i.ibb.co.com/12kskQD/Whats-App-Image-2024-12-11-at-18-15-17-8fc529c1.jpg', 2179775),
(880, 2, 0, 4, 1, 1, 1, 46922, '2024-12-12', '', NULL, 'https://i.ibb.co.com/n31kF2d/Whats-App-Image-2024-12-11-at-16-51-30-a5528a62.jpg', 2132853),
(881, 2, 0, 1, 1, 2, 1, 70000, '2024-12-12', '', NULL, 'https://i.ibb.co.com/Tt9XwV0/Whats-App-Image-2024-12-12-at-11-05-36-940960eb.jpg', 2062853),
(882, 2, 0, 2, 1, 2, 1, 30000, '2024-12-12', '', NULL, 'https://i.ibb.co.com/xGNXLLT/Whats-App-Image-2024-12-12-at-11-06-18-4a65a8e4.jpg', 2032853),
(883, 2, 0, 3, 1, 2, 1, 350658, '2024-12-12', '', NULL, 'https://i.ibb.co.com/HYzM8qQ/Whats-App-Image-2024-12-12-at-11-47-52-113c3072.jpg', 1682195),
(884, 2, 0, 4, 1, 2, 1, 47013, '2024-12-12', '', NULL, 'https://i.ibb.co.com/yBjBj6k/Whats-App-Image-2024-12-12-at-11-05-06-b361cf12.jpg', 1635182),
(885, 2, 0, 1, 1, 1, 1, 70000, '2024-12-13', '', NULL, 'https://i.ibb.co.com/5hvJys0/Whats-App-Image-2024-12-12-at-17-13-10-6d56ba1c.jpg', 1565182),
(886, 2, 0, 2, 1, 1, 1, 30000, '2024-12-13', '', NULL, 'https://i.ibb.co.com/RYPKGcy/Whats-App-Image-2024-12-12-at-17-13-52-04d70438.jpg', 1535182),
(887, 2, 0, 3, 1, 1, 1, 350658, '2024-12-13', '', NULL, 'https://i.ibb.co.com/DRLQZBv/Whats-App-Image-2024-12-12-at-17-21-49-81dc8e2d.jpg', 1184524),
(888, 2, 0, 4, 1, 1, 1, 47013, '2024-12-13', '', NULL, 'https://i.ibb.co.com/j43RHGM/Whats-App-Image-2024-12-12-at-17-10-54-5032701e.jpg', 1137511),
(889, 2, 0, 1, 1, 2, 1, 70000, '2024-12-13', '', NULL, 'https://i.ibb.co.com/0qXvNg3/Whats-App-Image-2024-12-13-at-10-36-05-492de025.jpg', 1067511),
(890, 2, 0, 2, 1, 2, 1, 30000, '2024-12-13', '', NULL, 'https://i.ibb.co.com/BrSJ7KJ/Whats-App-Image-2024-12-13-at-10-36-32-8fd7a222.jpg', 1037511),
(891, 2, 0, 3, 1, 2, 1, 350658, '2024-12-13', '', NULL, 'https://i.ibb.co.com/RHLsJjc/Whats-App-Image-2024-12-13-at-11-21-22-f1b71254.jpg', 686853),
(892, 2, 0, 4, 1, 2, 1, 47113, '2024-12-13', '', NULL, 'https://i.ibb.co.com/cc9Y3ZH/Whats-App-Image-2024-12-13-at-10-58-12-c46849f9.jpg', 639740),
(893, 2, 0, 1, 1, 1, 1, 70000, '2024-12-14', '', NULL, 'https://i.ibb.co.com/D4pJ8P6/Whats-App-Image-2024-12-13-at-17-14-25-dd8eb46b.jpg', 569740),
(894, 2, 0, 2, 1, 1, 1, 30000, '2024-12-14', '', NULL, 'https://i.ibb.co.com/7zBN5zb/Whats-App-Image-2024-12-13-at-17-15-01-538edbb9.jpg', 539740),
(895, 2, 0, 3, 1, 1, 1, 350658, '2024-12-14', '', NULL, 'https://i.ibb.co.com/VphtfZk/Whats-App-Image-2024-12-13-at-17-44-55-e3ce833b.jpg', 189082),
(896, 2, 0, 4, 1, 1, 1, 47113, '2024-12-14', '', NULL, 'https://i.ibb.co.com/q97tgJ5/Whats-App-Image-2024-12-13-at-18-24-13-7ba7226a.jpg', 141969),
(897, 2, 0, 1, 1, 2, 1, 70000, '2024-12-14', '', NULL, 'https://i.ibb.co.com/zVJNK1F/Whats-App-Image-2024-12-14-at-10-34-22-f8cdfd5c.jpg', 921969),
(898, 2, 0, 2, 1, 2, 1, 30000, '2024-12-14', '', NULL, 'https://i.ibb.co.com/tpTGMg5/Whats-App-Image-2024-12-14-at-10-35-09-ff24769b.jpg', 891969),
(899, 2, 0, 3, 1, 2, 1, 350658, '2024-12-14', '', NULL, 'https://i.ibb.co.com/H4tyC2B/Whats-App-Image-2024-12-14-at-11-13-10-cca495a0.jpg', 541311),
(900, 2, 0, 4, 1, 2, 1, 47113, '2024-12-14', '', NULL, 'https://i.ibb.co.com/f2gF2Xc/Whats-App-Image-2024-12-14-at-10-44-26-0ef37e4a.jpg', 494198);
INSERT INTO `pembayaran_kapal` (`id`, `kapal_id`, `tipe_kapal_id`, `tujuan_pembayaran_id`, `status_pembayaran_id`, `trip_id`, `user_id`, `harga`, `tanggal_transaksi`, `catatan_transaksi`, `status_claim`, `bukti_pembayaran`, `sisa_saldo`) VALUES
(901, 2, 0, 1, 1, 1, 1, 70000, '2024-12-15', '', NULL, 'https://i.ibb.co.com/5xq0LCt/Whats-App-Image-2024-12-14-at-16-59-27-1b29da35.jpg', 424198),
(902, 2, 0, 2, 1, 1, 1, 30000, '2024-12-15', '', NULL, 'https://i.ibb.co.com/MDzXsSr/Whats-App-Image-2024-12-14-at-16-59-57-d4425231.jpg', 394198),
(903, 2, 0, 3, 1, 1, 1, 350658, '2024-12-15', '', NULL, 'https://i.ibb.co.com/dfKbxSm/Whats-App-Image-2024-12-14-at-19-13-25-fc90f7ad.jpg', 43540),
(904, 2, 0, 4, 1, 1, 1, 47113, '2024-12-15', '', NULL, 'https://i.ibb.co.com/g9Ww3PS/Whats-App-Image-2024-12-14-at-16-58-58-352afca4.jpg', -3573),
(905, 2, 0, 1, 1, 2, 1, 70000, '2024-12-15', '', NULL, 'https://i.ibb.co.com/pKtYXpd/Whats-App-Image-2024-12-15-at-10-38-37-e8b451a8.jpg', 1926427),
(906, 2, 0, 2, 1, 2, 1, 30000, '2024-12-15', '', NULL, 'https://i.ibb.co.com/jG2gSdW/Whats-App-Image-2024-12-15-at-10-39-22-d5eabeb7.jpg', 1896427),
(907, 2, 0, 3, 1, 2, 1, 350658, '2024-12-15', '', NULL, 'https://i.ibb.co.com/kx3RP96/Whats-App-Image-2024-12-15-at-10-50-56-5496b65e.jpg', 1545769),
(908, 2, 0, 4, 1, 2, 1, 47113, '2024-12-15', '', NULL, 'https://i.ibb.co.com/LzD6Bs2/Whats-App-Image-2024-12-15-at-10-37-03-da6c8e1a.jpg', 1498656),
(909, 6, 0, 1, 1, 1, 1, 70000, '2024-12-16', '', NULL, 'https://i.ibb.co.com/8mVzj6W/Whats-App-Image-2024-12-15-at-17-05-09-685cabee.jpg', 1428656),
(910, 6, 0, 2, 1, 1, 1, 30000, '2024-12-16', '', NULL, 'https://i.ibb.co.com/D8bqNwc/Whats-App-Image-2024-12-15-at-17-05-37-7cae4d7b.jpg', 1398656),
(911, 6, 0, 3, 1, 1, 1, 350658, '2024-12-16', '', NULL, 'https://i.ibb.co.com/R6NMf8J/Whats-App-Image-2024-12-15-at-19-31-00-d5775ca0.jpg', 1047998),
(912, 6, 0, 4, 1, 1, 1, 47113, '2024-12-16', '', NULL, 'https://i.ibb.co.com/s2JrLmj/Whats-App-Image-2024-12-15-at-17-27-53-c2c48fd3.jpg', 1000885),
(913, 6, 0, 5, 1, 1, 1, 137108, '2024-12-16', '', NULL, 'https://i.ibb.co.com/gWDZvKB/Whats-App-Image-2024-12-15-at-17-21-34-0a2560d4.jpg', 863777),
(914, 6, 0, 1, 1, 2, 1, 70000, '2024-12-16', '', NULL, 'https://i.ibb.co.com/FYt0R7N/Whats-App-Image-2024-12-16-at-10-47-35-c2ca3177.jpg', 793777),
(915, 6, 0, 2, 1, 2, 1, 30000, '2024-12-16', '', NULL, 'https://i.ibb.co.com/q5xy5Qs/Whats-App-Image-2024-12-16-at-10-48-05-3e9783db.jpg', 763777),
(916, 6, 0, 3, 1, 2, 1, 350658, '2024-12-16', '', NULL, 'https://i.ibb.co.com/6DmZs9Q/Whats-App-Image-2024-12-16-at-11-32-30-fe551de4.jpg', 413119),
(917, 6, 0, 4, 1, 2, 1, 47255, '2024-12-16', '', NULL, 'https://i.ibb.co.com/hYkJvTX/Whats-App-Image-2024-12-16-at-11-04-58-7f7dbc87.jpg', 365864),
(918, 6, 0, 1, 1, 1, 1, 70000, '2024-12-17', '', NULL, 'https://i.ibb.co.com/qCg4bGm/Whats-App-Image-2024-12-16-at-17-19-48-df7af8dd.jpg', 2295864),
(919, 6, 0, 2, 1, 1, 1, 30000, '2024-12-17', '', NULL, 'https://i.ibb.co.com/ggn8g3d/Whats-App-Image-2024-12-16-at-17-20-19-e4b6f3ed.jpg', 2265864),
(920, 6, 0, 3, 1, 1, 1, 350658, '2024-12-17', '', NULL, 'https://i.ibb.co.com/sRvsxkt/Whats-App-Image-2024-12-16-at-17-55-47-0056cbec.jpg', 1915206),
(921, 6, 0, 4, 1, 1, 1, 47255, '2024-12-17', '', NULL, 'https://i.ibb.co.com/8mGdx6G/Whats-App-Image-2024-12-16-at-17-30-42-f811c570.jpg', 1867951),
(922, 6, 0, 1, 1, 2, 1, 70000, '2024-12-17', '', NULL, 'https://i.ibb.co.com/RBLN6Hz/Whats-App-Image-2024-12-17-at-10-42-14-f8c0da31.jpg', 1797951),
(923, 6, 0, 2, 1, 2, 1, 30000, '2024-12-17', '', NULL, 'https://i.ibb.co.com/0r7Zg7j/Whats-App-Image-2024-12-17-at-10-42-55-789e312e.jpg', 1767951),
(924, 6, 0, 3, 1, 2, 1, 350658, '2024-12-17', '', NULL, 'https://i.ibb.co.com/xD7DhqS/Whats-App-Image-2024-12-17-at-11-07-47-3bdd3128.jpg', 1417293),
(925, 6, 0, 4, 1, 2, 1, 52084, '2024-12-17', '', NULL, 'https://i.ibb.co.com/bJcmNNf/Whats-App-Image-2024-12-17-at-10-37-40-e4745dc4.jpg', 1365209),
(926, 6, 0, 1, 1, 1, 1, 70000, '2024-12-18', '', NULL, 'https://i.ibb.co.com/0mY2nVb/Whats-App-Image-2024-12-17-at-17-12-59-7702c035.jpg', 1295209),
(927, 6, 0, 2, 1, 1, 1, 30000, '2024-12-18', '', NULL, 'https://i.ibb.co.com/CsP9wXY/Whats-App-Image-2024-12-17-at-17-13-35-773393ff.jpg', 1265209),
(928, 6, 0, 3, 1, 1, 1, 350658, '2024-12-18', '', NULL, 'https://i.ibb.co.com/HxLMFZB/Whats-App-Image-2024-12-17-at-17-58-03-7551ca7a.jpg', 914551),
(929, 6, 0, 4, 1, 1, 1, 47349, '2024-12-18', '', NULL, 'https://i.ibb.co.com/vZ6LrZs/Whats-App-Image-2024-12-17-at-17-13-53-e2649317.jpg', 867202),
(930, 6, 0, 1, 1, 2, 1, 70000, '2024-12-18', '', NULL, 'https://i.ibb.co.com/hLBSgQL/Whats-App-Image-2024-12-18-at-10-50-42-e09c9d9c.jpg', 797202),
(931, 6, 0, 2, 1, 2, 1, 30000, '2024-12-18', '', NULL, 'https://i.ibb.co.com/yY3CFGK/Whats-App-Image-2024-12-18-at-10-51-15-39ef335b.jpg', 767202),
(932, 6, 0, 3, 1, 2, 1, 350658, '2024-12-18', '', NULL, 'https://i.ibb.co.com/ZGHKcBy/Whats-App-Image-2024-12-18-at-11-58-38-527d9d70.jpg', 416544),
(934, 6, 0, 4, 1, 2, 1, 42698, '2024-12-18', '', NULL, 'https://i.ibb.co.com/FJyrCHh/Whats-App-Image-2024-12-18-at-11-10-07-116e26ab.jpg', 373846),
(935, 6, 0, 3, 1, 1, 1, 350658, '2024-12-19', '', NULL, 'https://i.ibb.co.com/8gtjhFJ/Whats-App-Image-2024-12-18-at-17-57-50-319b1311.jpg', 1023188),
(936, 6, 0, 1, 1, 1, 1, 70000, '2024-12-19', '', NULL, 'https://i.ibb.co.com/s5qqF68/Whats-App-Image-2024-12-18-at-17-22-50-95d397dd.jpg', 953188),
(937, 6, 0, 2, 1, 1, 1, 30000, '2024-12-19', '', NULL, 'https://i.ibb.co.com/qy0pZLH/Whats-App-Image-2024-12-18-at-17-23-22-ecf324be.jpg', 923188),
(938, 6, 0, 4, 1, 1, 1, 47442, '2024-12-19', '', NULL, 'https://i.ibb.co.com/sWQn0nX/Whats-App-Image-2024-12-18-at-17-20-35-83f4a52d.jpg', 875766),
(939, 6, 0, 1, 1, 2, 1, 70000, '2024-12-19', '', NULL, 'https://i.ibb.co.com/sJKN7cM/Whats-App-Image-2024-12-19-at-10-38-37-33ffeee2.jpg', 1805766),
(940, 6, 0, 2, 1, 2, 1, 30000, '2024-12-19', '', NULL, 'https://i.ibb.co.com/FxG4Xf3/Whats-App-Image-2024-12-19-at-10-39-28-50791a5e.jpg', 1775766),
(941, 6, 0, 3, 1, 2, 1, 350658, '2024-12-19', '', NULL, 'https://i.ibb.co.com/mtdR8ZW/Whats-App-Image-2024-12-19-at-11-00-15-cc97741e.jpg', 1425108),
(942, 6, 0, 4, 1, 2, 1, 47589, '2024-12-19', '', NULL, 'https://i.ibb.co.com/cFfRVSY/Whats-App-Image-2024-12-19-at-10-41-02-b2e36db0.jpg', 1377519),
(943, 6, 0, 1, 1, 1, 1, 70000, '2024-12-20', '', NULL, 'https://i.ibb.co.com/Jy0L7XB/Whats-App-Image-2024-12-19-at-17-10-19-d10e3fe3.jpg', 1307519),
(944, 6, 0, 2, 1, 1, 1, 30000, '2024-12-20', '', NULL, 'https://i.ibb.co.com/fn9v05V/Whats-App-Image-2024-12-19-at-17-10-51-d06aa91f.jpg', 1277519),
(945, 6, 0, 3, 1, 1, 1, 350658, '2024-12-20', '', NULL, 'https://i.ibb.co.com/N6yktmP/Whats-App-Image-2024-12-19-at-17-58-10-da216e80.jpg', 926861),
(946, 6, 0, 4, 1, 1, 1, 47589, '2024-12-20', '', NULL, 'https://i.ibb.co.com/PwdzwL5/Whats-App-Image-2024-12-19-at-17-17-27-3826d188.jpg', 879272),
(947, 6, 0, 1, 1, 2, 1, 70000, '2024-12-20', '', NULL, 'https://i.ibb.co.com/G9MXmq2/Whats-App-Image-2024-12-20-at-10-43-42-70832d70.jpg', 809272),
(948, 6, 0, 2, 1, 2, 1, 30000, '2024-12-20', '', NULL, 'https://i.ibb.co.com/NWMdSyC/Whats-App-Image-2024-12-20-at-10-44-18-01c5a669.jpg', 779272),
(949, 6, 0, 3, 1, 2, 1, 350658, '2024-12-20', '', NULL, 'https://i.ibb.co.com/q7J0vjP/Whats-App-Image-2024-12-20-at-12-00-32-ce940aff.jpg', 428614),
(950, 6, 0, 4, 1, 2, 1, 48113, '2024-12-20', '', NULL, 'https://i.ibb.co.com/3FmMwb9/Whats-App-Image-2024-12-20-at-11-10-17-afd87bed.jpg', 380501),
(951, 6, 0, 6, 1, 2, 1, 100000, '2024-12-20', '', NULL, 'https://i.ibb.co.com/X21H3K7/Whats-App-Image-2024-12-20-at-11-06-54-60ab7b5a.jpg', 280501),
(952, 7, 0, 1, 1, 1, 1, 85000, '2024-12-21', '', NULL, 'https://i.ibb.co.com/1qgZ08B/Whats-App-Image-2024-12-20-at-17-14-21-0d3fe139.jpg', 195501),
(953, 7, 0, 2, 1, 1, 1, 35000, '2024-12-21', '', NULL, 'https://i.ibb.co.com/YX9n8Lz/Whats-App-Image-2024-12-20-at-17-14-53-6ba16aa0.jpg', 160501),
(954, 7, 0, 3, 1, 1, 1, 550242, '2024-12-21', '', NULL, 'https://i.ibb.co.com/prC6vNY/Whats-App-Image-2024-12-20-at-18-46-52-aad7a2d2.jpg', -389741),
(955, 7, 0, 4, 1, 1, 1, 48113, '2024-12-21', '', NULL, 'https://i.ibb.co.com/t45CP4Z/Whats-App-Image-2024-12-20-at-17-26-19-5f410edb.jpg', -437854),
(956, 7, 0, 1, 1, 2, 1, 85000, '2024-12-21', '', NULL, 'https://i.ibb.co.com/gM18KLQ/Whats-App-Image-2024-12-21-at-11-02-08-1c4eefb1.jpg', 1477146),
(957, 7, 0, 2, 1, 2, 1, 35000, '2024-12-21', '', NULL, 'https://i.ibb.co.com/kDXWY4m/Whats-App-Image-2024-12-21-at-11-06-37-f9b728d9.jpg', 1442146),
(958, 7, 0, 3, 1, 2, 1, 550242, '2024-12-21', '', NULL, 'https://i.ibb.co.com/vJybZsj/Whats-App-Image-2024-12-21-at-11-10-36-3425b386.jpg', 891904),
(959, 7, 0, 4, 1, 2, 1, 48113, '2024-12-21', '', NULL, 'https://i.ibb.co.com/Ttzscct/Whats-App-Image-2024-12-21-at-10-57-37-115bedfd.jpg', 2843791),
(960, 7, 0, 1, 1, 1, 1, 85000, '2024-12-22', '', NULL, 'https://i.ibb.co.com/BNVz85h/Whats-App-Image-2024-12-21-at-17-24-18-e8f2e2d9.jpg', 2758791),
(961, 7, 0, 2, 1, 1, 1, 35000, '2024-12-22', '', NULL, 'https://i.ibb.co.com/S0gSmh4/Whats-App-Image-2024-12-21-at-17-24-57-a5b708a2.jpg', 2723791),
(962, 7, 0, 3, 1, 1, 1, 550242, '2024-12-22', '', NULL, 'https://i.ibb.co.com/zHtprj3/Whats-App-Image-2024-12-21-at-17-56-41-a29e9b53.jpg', 2173549),
(963, 7, 0, 4, 1, 1, 1, 48113, '2024-12-22', '', NULL, 'https://i.ibb.co.com/LtJ5CT7/Whats-App-Image-2024-12-21-at-17-10-20-4ea17bb1.jpg', 2125436),
(964, 7, 0, 1, 1, 2, 1, 85000, '2024-12-22', '', NULL, 'https://i.ibb.co.com/tZ8Bc0N/Whats-App-Image-2024-12-22-at-11-09-24-d982ad67.jpg', 2040436),
(965, 7, 0, 2, 1, 2, 1, 35000, '2024-12-22', '', NULL, 'https://i.ibb.co.com/mSwdtqW/Whats-App-Image-2024-12-22-at-11-09-56-9fecc545.jpg', 2005436),
(966, 7, 0, 3, 1, 2, 1, 550242, '2024-12-22', '', NULL, 'https://i.ibb.co.com/L9wPR07/Whats-App-Image-2024-12-22-at-11-23-25-60a46df9.jpg', 1455194),
(967, 7, 0, 4, 1, 2, 1, 48113, '2024-12-22', '', NULL, 'https://i.ibb.co.com/0jVwPNg/Whats-App-Image-2024-12-22-at-11-02-29-56ba4d5d.jpg', 1407081),
(968, 1, 0, 1, 1, 1, 1, 70000, '2024-12-23', '', NULL, 'https://i.ibb.co.com/0DmzTCY/Whats-App-Image-2024-12-22-at-17-12-31-fe7de540.jpg', 1337081),
(969, 1, 0, 2, 1, 1, 1, 30000, '2024-12-23', '', NULL, 'https://i.ibb.co.com/bFP2cGV/Whats-App-Image-2024-12-22-at-17-13-25-3b4de6bf.jpg', 1307081),
(970, 1, 0, 3, 1, 1, 1, 350658, '2024-12-23', '', NULL, 'https://i.ibb.co.com/Ypyqgzn/Whats-App-Image-2024-12-22-at-18-57-51-b1526eba.jpg', 956423),
(971, 1, 0, 4, 1, 1, 1, 48113, '2024-12-23', '', NULL, 'https://i.ibb.co.com/6RKdjfy/Whats-App-Image-2024-12-22-at-17-30-44-0c543f31.jpg', 908310),
(972, 1, 0, 1, 1, 2, 1, 70000, '2024-12-23', '', NULL, 'https://i.ibb.co.com/9WjScpr/Whats-App-Image-2024-12-23-at-11-00-25-37111ba9.jpg', 838290),
(973, 1, 0, 2, 1, 2, 1, 30000, '2024-12-23', '', NULL, 'https://i.ibb.co.com/Vx4b45x/Whats-App-Image-2024-12-23-at-11-01-40-b165591f.jpg', 808290),
(974, 1, 0, 3, 1, 2, 1, 350658, '2024-12-23', '', NULL, 'https://i.ibb.co.com/1X8n6C0/Whats-App-Image-2024-12-23-at-11-42-32-6cc1b6ae.jpg', 457632),
(975, 1, 0, 4, 1, 2, 1, 48092, '2024-12-23', '', NULL, 'https://i.ibb.co.com/w02tTNX/Whats-App-Image-2024-12-23-at-11-02-18-f0273a5b.jpg', 409540),
(976, 1, 0, 1, 1, 1, 1, 70000, '2024-12-24', '', NULL, 'https://i.ibb.co.com/VYV68zk/Whats-App-Image-2024-12-23-at-17-25-34-a39e544d.jpg', 339540),
(977, 1, 0, 2, 1, 1, 1, 30000, '2024-12-24', '', NULL, 'https://i.ibb.co.com/RzcW9sR/Whats-App-Image-2024-12-23-at-17-26-07-48198590.jpg', 309540),
(978, 1, 0, 3, 1, 1, 1, 350658, '2024-12-24', '', NULL, 'https://i.ibb.co.com/GtGwzqz/Whats-App-Image-2024-12-23-at-17-34-01-bbc7b5cc.jpg', -41118),
(979, 1, 0, 4, 1, 1, 1, 48092, '2024-12-24', '', NULL, 'https://i.ibb.co.com/3yRKScd/Whats-App-Image-2024-12-23-at-17-18-21-c1cdada8.jpg', -82010),
(980, 1, 0, 5, 1, 1, 1, 139955, '2024-12-24', '', NULL, 'https://i.ibb.co.com/f01BN3c/Whats-App-Image-2024-12-23-at-18-46-24-cf6e9777.jpg', -221965),
(981, 1, 0, 6, 1, 2, 1, 100000, '2024-12-23', '', NULL, 'https://i.ibb.co.com/PYR5xXw/Whats-App-Image-2024-12-23-at-11-03-34-c406fbdb.jpg', 1670835),
(982, 1, 0, 1, 1, 2, 1, 70000, '2024-12-24', '', NULL, 'https://i.ibb.co.com/h7Hk5Vh/Whats-App-Image-2024-12-24-at-11-23-23-9056fe33.jpg', 1600835),
(983, 1, 0, 2, 1, 2, 1, 30000, '2024-12-24', '', NULL, 'https://i.ibb.co.com/SRWtc1H/Whats-App-Image-2024-12-24-at-11-23-55-f027e2dc.jpg', 1570835),
(984, 1, 0, 3, 1, 2, 1, 350658, '2024-12-24', '', NULL, 'https://i.ibb.co.com/nDS3k3D/Whats-App-Image-2024-12-24-at-11-46-20-1ad21c13.jpg', 1220177),
(985, 1, 0, 4, 1, 2, 1, 47763, '2024-12-24', '', NULL, 'https://i.ibb.co.com/PGt9TNm/Whats-App-Image-2024-12-24-at-10-54-42-13a79835.jpg', 1172414),
(986, 22, 0, 1, 1, 1, 1, 85000, '2024-12-25', '', NULL, 'https://i.ibb.co.com/xXLVJKk/Whats-App-Image-2024-12-24-at-17-19-27-e99a4ef7.jpg', 1087414),
(987, 22, 0, 2, 1, 1, 1, 35000, '2024-12-25', '', NULL, 'https://i.ibb.co.com/qgBB6zW/Whats-App-Image-2024-12-24-at-17-20-03-6b17b034.jpg', 1052414),
(989, 22, 0, 6, 1, 1, 1, 125000, '2024-12-25', '', NULL, 'https://i.ibb.co.com/j6RZ4vM/Whats-App-Image-2024-12-24-at-14-48-13-9bba7621.jpg', 377172),
(990, 22, 0, 3, 1, 1, 1, 540540, '2024-12-25', '', NULL, 'https://i.ibb.co.com/vjCTVvC/Whats-App-Image-2024-12-24-at-19-44-29-4ac8d5bc.jpg', 386874),
(991, 22, 0, 4, 1, 1, 1, 47763, '2024-12-25', '', NULL, 'https://i.ibb.co.com/fDxBhTk/Whats-App-Image-2024-12-24-at-17-54-02-1f08eb5f.jpg', 339111),
(992, 22, 0, 5, 1, 1, 1, 214269, '2024-12-25', '', NULL, 'https://i.ibb.co.com/TMkz1SW/Whats-App-Image-2024-12-24-at-19-20-31-242d6842.jpg', 124842),
(993, 22, 0, 1, 1, 2, 1, 85000, '2024-12-25', '', NULL, 'https://i.ibb.co.com/ThsvJ8c/Whats-App-Image-2024-12-25-at-11-05-24-867dc721.jpg', 2039842),
(994, 22, 0, 2, 1, 2, 1, 35000, '2024-12-25', '', NULL, 'https://i.ibb.co.com/P1wrwM5/Whats-App-Image-2024-12-25-at-11-06-20-56499b04.jpg', 2004842),
(995, 22, 0, 4, 1, 2, 1, 47763, '2024-12-25', '', NULL, 'https://i.ibb.co.com/H273zr5/Whats-App-Image-2024-12-25-at-10-55-00-cf3ce965.jpg', 1957079),
(996, 22, 0, 3, 1, 2, 1, 540540, '2024-12-25', '', NULL, 'https://i.ibb.co.com/9T9m3QW/Whats-App-Image-2024-12-25-at-11-26-37-ccce4e18.jpg', 1416539),
(998, 22, 0, 2, 1, 1, 1, 35000, '2024-12-26', '', NULL, 'https://i.ibb.co.com/q7JQvbt/Whats-App-Image-2024-12-25-at-17-14-26-bf043508.jpg', 1296539),
(999, 22, 0, 4, 1, 1, 1, 47763, '2024-12-26', '', NULL, 'https://i.ibb.co.com/StcNrTh/Whats-App-Image-2024-12-25-at-17-12-00-e760bb2e.jpg', 1248776),
(1000, 22, 0, 3, 1, 1, 1, 540540, '2024-12-26', '', NULL, 'https://i.ibb.co.com/ZNkGVxD/Whats-App-Image-2024-12-25-at-17-33-44-c7745edb.jpg', 708236),
(1001, 22, 0, 1, 1, 2, 1, 85000, '2024-12-26', '', NULL, 'https://i.ibb.co.com/dLnNjm0/Whats-App-Image-2024-12-26-at-11-10-45-887e67ea.jpg', 2623236),
(1002, 22, 0, 2, 1, 2, 1, 35000, '2024-12-26', '', NULL, 'https://i.ibb.co.com/d6CTn9F/Whats-App-Image-2024-12-26-at-11-11-18-507b90ab.jpg', 2588236),
(1003, 22, 0, 3, 1, 2, 1, 540540, '2024-12-26', '', NULL, 'https://i.ibb.co.com/VJ307Dz/Whats-App-Image-2024-12-26-at-12-28-35-14f00f85.jpg', 2047696),
(1004, 22, 0, 4, 1, 2, 1, 47763, '2024-12-26', '', NULL, 'https://i.ibb.co.com/rtYF6J7/Whats-App-Image-2024-12-26-at-11-04-35-758959b2.jpg', 1999933),
(1005, 22, 0, 1, 1, 1, 1, 85000, '2024-12-26', '', NULL, 'https://i.ibb.co.com/7bDtxWg/Whats-App-Image-2024-12-26-at-17-19-31-5e9c1647.jpg', 1914933),
(1010, 22, 0, 1, 1, 1, 1, 85000, '2024-12-27', '', NULL, 'https://i.ibb.co.com/7bDtxWg/Whats-App-Image-2024-12-26-at-17-19-31-5e9c1647.jpg', 1914933),
(1011, 22, 0, 2, 1, 1, 1, 35000, '2024-12-27', '', NULL, 'https://i.ibb.co.com/8M7GKJQ/Whats-App-Image-2024-12-26-at-17-18-46-c9767bde.jpg', 1879933),
(1012, 22, 0, 3, 1, 1, 1, 540540, '2024-12-27', '', NULL, 'https://i.ibb.co.com/pKQj66D/Whats-App-Image-2024-12-26-at-20-07-55-8d41e738.jpg', 1339393),
(1013, 22, 0, 4, 1, 1, 1, 47763, '2024-12-27', '', NULL, 'https://i.ibb.co.com/WGpSy9g/Whats-App-Image-2024-12-26-at-18-12-29-8926f0dc.jpg', 1291630),
(1014, 22, 0, 1, 1, 2, 1, 85000, '2024-12-27', '', NULL, 'https://i.ibb.co.com/PjNfLFL/Whats-App-Image-2024-12-27-at-11-24-59-ca04b4d0.jpg', 1206630),
(1015, 22, 0, 2, 1, 2, 1, 35000, '2024-12-27', '', NULL, 'https://i.ibb.co.com/LQh6yfr/Whats-App-Image-2024-12-27-at-11-25-43-18877f02.jpg', 1171630),
(1016, 22, 0, 3, 1, 2, 1, 540540, '2024-12-27', '', NULL, 'https://i.ibb.co.com/7tDJB3t/Whats-App-Image-2024-12-27-at-11-29-47-291cdbac.jpg', 631090),
(1017, 22, 0, 4, 1, 2, 1, 47908, '2024-12-27', '', NULL, 'https://i.ibb.co.com/7X3BvfL/Whats-App-Image-2024-12-27-at-11-00-32-12b6fc80.jpg', 583182),
(1018, 22, 0, 1, 1, 1, 1, 85000, '2024-12-28', '', NULL, 'https://i.ibb.co.com/jhht5nD/Whats-App-Image-2024-12-27-at-17-16-30-5bb30984.jpg', 2498182),
(1019, 22, 0, 2, 1, 1, 1, 35000, '2024-12-28', '', NULL, 'https://i.ibb.co.com/S0FPTgk/Whats-App-Image-2024-12-27-at-17-17-34-aff46aa1.jpg', 2463182),
(1020, 22, 0, 3, 1, 1, 1, 540540, '2024-12-28', '', NULL, 'https://i.ibb.co.com/4YXMfgV/Whats-App-Image-2024-12-27-at-18-13-00-e0cb8129.jpg', 1922642),
(1021, 22, 0, 4, 1, 1, 1, 47908, '2024-12-28', '', NULL, 'https://i.ibb.co.com/Mc58YnG/Whats-App-Image-2024-12-27-at-17-22-05-42abfc5a.jpg', 1874734),
(1022, 22, 0, 1, 1, 2, 1, 85000, '2024-12-28', '', NULL, 'https://i.ibb.co.com/sHcNDYy/Whats-App-Image-2024-12-28-at-10-35-07-2fa1d80c.jpg', 1789734),
(1023, 22, 0, 2, 1, 2, 1, 35000, '2024-12-28', '', NULL, 'https://i.ibb.co.com/mJPXsYp/Whats-App-Image-2024-12-28-at-10-35-41-f2a1a7bd.jpg', 1754734),
(1024, 22, 0, 3, 1, 2, 1, 540540, '2024-12-28', '', NULL, 'https://i.ibb.co.com/mTRnqgV/Whats-App-Image-2024-12-28-at-11-19-34-d1181fc0.jpg', 1214194),
(1025, 22, 0, 4, 1, 2, 1, 47908, '2024-12-28', '', NULL, 'https://i.ibb.co.com/60Jj1CB/Whats-App-Image-2024-12-28-at-10-50-43-1ed0a8a6.jpg', 1166286),
(1026, 22, 0, 1, 1, 1, 1, 85000, '2024-12-29', '', NULL, 'https://i.ibb.co.com/cyLsGFw/Whats-App-Image-2024-12-28-at-17-09-30-24dbe65b.jpg', 1081286),
(1027, 22, 0, 2, 1, 1, 1, 35000, '2024-12-29', '', NULL, 'https://i.ibb.co.com/BrpS7wH/Whats-App-Image-2024-12-28-at-17-10-14-ab450b6c.jpg', 1046286),
(1028, 22, 0, 3, 1, 1, 1, 540540, '2024-12-29', '', NULL, 'https://i.ibb.co.com/7SLwLsw/Whats-App-Image-2024-12-28-at-18-47-42-b7fae863.jpg', 505746),
(1029, 22, 0, 4, 1, 1, 1, 47908, '2024-12-29', '', NULL, 'https://i.ibb.co.com/TKxCfVM/Whats-App-Image-2024-12-28-at-17-38-30-fc3621ff.jpg', 457838),
(1030, 22, 0, 1, 1, 2, 1, 85000, '2024-12-29', '', NULL, 'https://i.ibb.co.com/BGDN6bQ/Whats-App-Image-2024-12-29-at-10-46-07-dabee0b3.jpg', 372838),
(1031, 22, 0, 2, 1, 2, 1, 35000, '2024-12-29', '', NULL, 'https://i.ibb.co.com/6sXW50x/Whats-App-Image-2024-12-29-at-10-46-40-94b578de.jpg', 337838),
(1032, 22, 0, 3, 1, 2, 1, 540540, '2024-12-29', '', NULL, 'https://i.ibb.co.com/9cVGYVx/Whats-App-Image-2024-12-29-at-11-38-11-89960607.jpg', -202702),
(1033, 22, 0, 4, 1, 2, 1, 47908, '2024-12-29', '', NULL, 'https://i.ibb.co.com/n8B19NL/Whats-App-Image-2024-12-29-at-11-27-23-ccf0589a.jpg', -250610),
(1034, 22, 0, 1, 1, 1, 1, 85000, '2024-12-30', '', NULL, 'https://i.ibb.co.com/FKT55G4/Whats-App-Image-2024-12-29-at-16-58-37-a7b52717.jpg', 1664390),
(1035, 22, 0, 2, 1, 1, 1, 35000, '2024-12-30', '', NULL, 'https://i.ibb.co.com/8g4GMkh/Whats-App-Image-2024-12-29-at-16-59-07-e48baf58.jpg', 1629390),
(1036, 22, 0, 3, 1, 1, 1, 540540, '2024-12-30', '', NULL, 'https://i.ibb.co.com/b7jc3fd/Whats-App-Image-2024-12-29-at-17-09-45-66bb0a34.jpg', 1088850),
(1037, 22, 0, 4, 1, 1, 1, 47908, '2024-12-30', '', NULL, 'https://i.ibb.co.com/23yw6Pc/Whats-App-Image-2024-12-29-at-17-00-05-380345a7.jpg', 1040942),
(1038, 22, 0, 1, 1, 2, 1, 85000, '2024-12-30', '', NULL, 'https://i.ibb.co.com/Rj5rQ7B/Whats-App-Image-2024-12-30-at-10-51-59-98945183.jpg', 955942),
(1039, 22, 0, 2, 1, 2, 1, 35000, '2024-12-30', '', NULL, 'https://ibb.co.com/R98Mrqh', 920942),
(1040, 22, 0, 3, 1, 2, 1, 540540, '2024-12-30', '', NULL, 'https://ibb.co.com/yk4QDRw', 380402),
(1041, 22, 0, 4, 1, 2, 1, 48035, '2024-12-30', '', NULL, 'https://ibb.co.com/G7VzvtL', 332367),
(1042, 7, 0, 1, 1, 1, 1, 85000, '2024-12-31', '', NULL, 'https://ibb.co.com/wyB2qHv', 2247367),
(1043, 7, 0, 2, 1, 1, 1, 35000, '2024-12-31', '', NULL, 'https://ibb.co.com/VY1cjsn', 2212367),
(1044, 7, 0, 3, 1, 1, 1, 550242, '2024-12-31', '', NULL, 'https://ibb.co.com/bLtJcnb', 1662125),
(1045, 7, 0, 4, 1, 1, 1, 48035, '2024-12-31', '', NULL, 'https://ibb.co.com/pzjzCQg', 1614090),
(1046, 7, 0, 5, 1, 1, 1, 219356, '2024-12-31', '', NULL, 'https://ibb.co.com/rpD7HjG', 1394734),
(1047, 7, 0, 6, 1, 1, 1, 125000, '2024-12-31', '', NULL, 'https://ibb.co.com/xFhnJVD', 1269734),
(1048, 7, 0, 1, 1, 2, 1, 85000, '2024-12-31', '', NULL, 'https://i.ibb.co.com/CtysbDD/Whats-App-Image-2024-12-31-at-11-00-43-410f7b32.jpg', 1184734),
(1049, 7, 0, 2, 1, 2, 1, 35000, '2024-12-31', '', NULL, 'https://i.ibb.co.com/kgK6SmZ/Whats-App-Image-2024-12-31-at-11-01-17-018f60bb.jpg', 1149734),
(1050, 7, 0, 3, 1, 2, 1, 550242, '2024-12-31', '', NULL, 'https://i.ibb.co.com/wdJRxtS/Whats-App-Image-2024-12-31-at-11-15-34-49afbd62.jpg', 599492),
(1051, 7, 0, 4, 1, 2, 1, 47773, '2024-12-31', '', NULL, 'https://i.ibb.co.com/DW0fQXX/Whats-App-Image-2024-12-31-at-11-02-34-30e71572.jpg', 551719),
(1052, 7, 0, 1, 1, 1, 1, 85000, '2025-01-01', '', NULL, 'https://i.ibb.co.com/SNZBYk4/Whats-App-Image-2025-01-02-at-15-03-41-36ed6ea4.jpg', 2466719),
(1053, 7, 0, 2, 1, 1, 1, 35000, '2025-01-01', '', NULL, 'https://i.ibb.co.com/NKsQ3nM/Whats-App-Image-2025-01-02-at-15-04-22-541dd49c.jpg', 2431719),
(1054, 7, 0, 3, 1, 1, 1, 550242, '2025-01-01', '', NULL, 'https://i.ibb.co.com/hD9tVLz/Whats-App-Image-2024-12-31-at-18-16-21-554aa5e7.jpg', 1881477),
(1055, 7, 0, 4, 1, 1, 1, 47773, '2025-01-01', '', NULL, 'https://i.ibb.co.com/VBgPVGN/Whats-App-Image-2025-01-01-at-11-32-59-f56e2b16.jpg', 1833704),
(1056, 7, 0, 1, 1, 2, 1, 85000, '2025-01-01', '', NULL, 'https://i.ibb.co.com/D7fZzBr/Whats-App-Image-2025-01-02-at-15-13-07-bf13b07a.jpg', 1748704),
(1057, 7, 0, 2, 1, 2, 1, 35000, '2025-01-01', '', NULL, 'https://i.ibb.co.com/2ZwHdCQ/Whats-App-Image-2025-01-02-at-15-13-50-4b82bd57.jpg', 1713704),
(1058, 7, 0, 3, 1, 2, 1, 550242, '2025-01-01', '', NULL, 'https://i.ibb.co.com/GHcZD9d/Whats-App-Image-2025-01-01-at-11-57-47-b6cc0cca.jpg', 1163462),
(1059, 7, 0, 4, 1, 2, 1, 47773, '2025-01-01', '', NULL, 'https://i.ibb.co.com/1dZWYzJ/Whats-App-Image-2025-01-01-at-17-28-12-254d6931.jpg', 1115689),
(1060, 7, 0, 1, 1, 1, 1, 85000, '2025-01-02', '', NULL, 'https://i.ibb.co.com/ctj4d2Q/Whats-App-Image-2025-01-02-at-15-19-25-1fad4ffc.jpg', 1030689),
(1061, 7, 0, 2, 1, 1, 1, 35000, '2025-01-02', '', NULL, 'https://i.ibb.co.com/yktd2nR/Whats-App-Image-2025-01-02-at-15-31-33-add18905.jpg', 995689),
(1062, 7, 0, 3, 1, 1, 1, 550242, '2025-01-02', '', NULL, 'https://i.ibb.co.com/9HHFZbq/Whats-App-Image-2025-01-01-at-18-40-41-c7e3ac51.jpg', 445447),
(1063, 7, 0, 4, 1, 1, 1, 47773, '2025-01-02', '', NULL, 'https://i.ibb.co.com/sPSf4fM/Whats-App-Image-2025-01-02-at-10-46-09-1f067e1b.jpg', 397674),
(1064, 7, 0, 1, 1, 2, 1, 85000, '2025-01-02', '', NULL, 'https://i.ibb.co.com/f8ks9jr/Whats-App-Image-2025-01-02-at-15-32-32-d2f55968.jpg', 2312674),
(1065, 7, 0, 2, 1, 2, 1, 35000, '2025-01-02', '', NULL, 'https://i.ibb.co.com/279gqbV/Whats-App-Image-2025-01-02-at-15-33-08-74d8649a.jpg', 2277674),
(1066, 7, 0, 3, 1, 2, 1, 550242, '2025-01-02', '', NULL, 'https://i.ibb.co.com/zsZy637/Whats-App-Image-2025-01-02-at-10-58-58-623889bf.jpg', 1727432),
(1067, 7, 0, 4, 1, 2, 1, 47758, '2025-01-02', '', NULL, 'https://i.ibb.co.com/sPSf4fM/Whats-App-Image-2025-01-02-at-10-46-09-1f067e1b.jpg', 1679659),
(1068, 24, 0, 1, 1, 1, 1, 85000, '2025-01-03', '', NULL, 'https://i.ibb.co.com/841KkkQ/Whats-App-Image-2025-01-02-at-17-16-10-94f81ffb.jpg', 1594659),
(1069, 24, 0, 2, 1, 1, 1, 35000, '2025-01-03', '', NULL, 'https://i.ibb.co.com/2yCp72H/Whats-App-Image-2025-01-02-at-17-17-15-dcd526ce.jpg', 1559659),
(1070, 24, 0, 3, 1, 1, 1, 550242, '2025-01-03', '', NULL, 'https://i.ibb.co.com/RvqyBXK/Whats-App-Image-2025-01-02-at-19-56-34-b565fcb9.jpg', 1009417),
(1071, 24, 0, 4, 1, 1, 1, 47758, '2025-01-03', '', NULL, 'https://i.ibb.co.com/tXqF4gJ/Whats-App-Image-2025-01-02-at-17-53-00-ccb7e9d6.jpg', 961659),
(1072, 24, 0, 6, 1, 1, 1, 125000, '2025-01-03', '', NULL, 'https://i.ibb.co.com/wr5CZqz/Whats-App-Image-2025-01-02-at-16-01-19-58dbbdb2.jpg', 836659),
(1073, 24, 0, 5, 1, 1, 1, 218088, '2025-01-03', '', NULL, 'https://i.ibb.co.com/Hhcx8MR/Whats-App-Image-2025-01-02-at-19-48-11-2b4653fd.jpg', 618571),
(1074, 24, 0, 1, 1, 2, 1, 85000, '2025-01-03', '', NULL, 'https://i.ibb.co.com/TqBs92H/Whats-App-Image-2025-01-03-at-11-02-23-35e15d68.jpg', 2533586),
(1075, 24, 0, 2, 1, 2, 1, 35000, '2025-01-03', '', NULL, 'https://i.ibb.co.com/5cBbZwp/Whats-App-Image-2025-01-03-at-11-03-09-01fa5114.jpg', 2498586),
(1076, 24, 0, 3, 1, 2, 1, 550242, '2025-01-03', '', NULL, 'https://i.ibb.co.com/XZBZrww/Whats-App-Image-2025-01-03-at-12-02-31-59a77b7b.jpg', 1948344),
(1077, 24, 0, 4, 1, 2, 1, 47992, '2025-01-03', '', NULL, 'https://i.ibb.co.com/GkFt6KZ/Whats-App-Image-2025-01-03-at-11-22-51-965db3c9.jpg', 1900352),
(1078, 24, 0, 1, 1, 1, 1, 85000, '2025-01-04', '', NULL, 'https://i.ibb.co.com/cyF0X3G/Whats-App-Image-2025-01-03-at-17-12-25-4e012c6e.jpg', 1815352),
(1079, 24, 0, 2, 1, 1, 1, 35000, '2025-01-04', '', NULL, 'https://i.ibb.co.com/2gkg9VK/Whats-App-Image-2025-01-03-at-17-12-56-6bada5ae.jpg', 1780352),
(1080, 24, 0, 3, 1, 1, 1, 550242, '2025-01-04', '', NULL, 'https://i.ibb.co.com/sFXWMVQ/Whats-App-Image-2025-01-03-at-17-59-18-74dde7d6.jpg', 1230110),
(1081, 24, 0, 4, 1, 1, 1, 38393, '2025-01-04', '', NULL, 'https://i.ibb.co.com/7NLbPYh/Whats-App-Image-2025-01-03-at-17-11-03-e9df2350.jpg', 1191717),
(1082, 24, 0, 1, 1, 2, 1, 85000, '2025-01-04', '', NULL, 'https://i.ibb.co.com/z29ZSYW/Whats-App-Image-2025-01-04-at-10-53-23-5d97c877.jpg', 1106717),
(1083, 24, 0, 2, 1, 2, 1, 35000, '2025-01-04', '', NULL, 'https://i.ibb.co.com/Qp5kZNb/Whats-App-Image-2025-01-04-at-10-53-56-d667d98c.jpg', 1071717),
(1084, 24, 0, 3, 1, 2, 1, 550242, '2025-01-04', '', NULL, 'https://i.ibb.co.com/Tc3dGnN/Whats-App-Image-2025-01-04-at-11-51-40-d47c3e14.jpg', 521475),
(1085, 24, 0, 4, 1, 2, 1, 47992, '2025-01-04', '', NULL, 'https://i.ibb.co.com/Db9gcJp/Whats-App-Image-2025-01-04-at-10-52-48-4aa399fb.jpg', 473483),
(1086, 24, 0, 1, 1, 1, 1, 85000, '2025-01-05', '', NULL, 'https://i.ibb.co.com/16vHFcd/Whats-App-Image-2025-01-04-at-16-59-04-a768599a.jpg', 388483),
(1087, 24, 0, 2, 1, 1, 1, 35000, '2025-01-05', '', NULL, 'https://i.ibb.co.com/cwY3Bz5/Whats-App-Image-2025-01-04-at-16-59-37-6feceb4f.jpg', 2353483),
(1088, 24, 0, 3, 1, 1, 1, 550242, '2025-01-05', '', NULL, 'https://i.ibb.co.com/zmv9yp7/Whats-App-Image-2025-01-04-at-18-44-13-86cdb62e.jpg', 1803241),
(1089, 24, 0, 4, 1, 1, 1, 47992, '2025-01-05', '', NULL, 'https://i.ibb.co.com/w7PFG8y/Whats-App-Image-2025-01-04-at-17-39-26-9b1ffe92.jpg', 1755249),
(1090, 24, 0, 1, 1, 2, 1, 85000, '2025-01-05', '', NULL, 'https://i.ibb.co.com/CBN3BZL/Whats-App-Image-2025-01-05-at-10-38-42-945224c4.jpg', 1670249),
(1091, 24, 0, 2, 1, 2, 1, 35000, '2025-01-05', '', NULL, 'https://i.ibb.co.com/5MchF0c/Whats-App-Image-2025-01-05-at-10-39-15-01dbac91.jpg', 1635249),
(1092, 24, 0, 3, 1, 2, 1, 550242, '2025-01-05', '', NULL, 'https://i.ibb.co.com/svzptPQ/Whats-App-Image-2025-01-05-at-10-56-57-91cfd348.jpg', 1085007),
(1093, 24, 0, 4, 1, 2, 1, 47992, '2025-01-05', '', NULL, 'https://i.ibb.co.com/3TN4YTN/Whats-App-Image-2025-01-05-at-10-39-53-69798b82.jpg', 1037015),
(1094, 6, 0, 1, 1, 1, 1, 70000, '2025-01-06', '', NULL, 'https://i.ibb.co.com/sgHfZnz/Whats-App-Image-2025-01-05-at-17-17-55-1dab0fe4.jpg', 967015),
(1095, 6, 0, 2, 1, 1, 1, 30000, '2025-01-06', '', NULL, 'https://i.ibb.co.com/mSzpZJb/Whats-App-Image-2025-01-05-at-17-18-45-47f7458c.jpg', 937015),
(1096, 6, 0, 3, 1, 1, 1, 350658, '2025-01-06', '', NULL, 'https://i.ibb.co.com/86mb2RZ/Whats-App-Image-2025-01-05-at-19-47-53-1cd54eb8.jpg', 586357),
(1097, 6, 0, 4, 1, 1, 1, 47992, '2025-01-06', '', NULL, 'https://i.ibb.co.com/fDgzsyc/Whats-App-Image-2025-01-05-at-18-44-23-b44e4ee8.jpg', 538365),
(1098, 6, 0, 1, 1, 2, 1, 70000, '2025-01-06', '', NULL, 'https://i.ibb.co.com/mzXCgGd/Whats-App-Image-2025-01-06-at-10-43-26-a143baf7.jpg', 2468365),
(1099, 6, 0, 2, 1, 2, 1, 30000, '2025-01-06', '', NULL, 'https://i.ibb.co.com/RyC7pVp/Whats-App-Image-2025-01-06-at-10-44-26-c85aae77.jpg', 2438365),
(1100, 6, 0, 3, 1, 2, 1, 350658, '2025-01-06', '', NULL, 'https://i.ibb.co.com/64ZTkkF/Whats-App-Image-2025-01-06-at-10-57-33-bcaa1b7f.jpg', 2087707),
(1101, 6, 0, 4, 1, 2, 1, 47935, '2025-01-06', '', NULL, 'https://i.ibb.co.com/QnqLX6k/Whats-App-Image-2025-01-06-at-10-45-07-885e6849.jpg', 2039772),
(1102, 6, 0, 1, 1, 1, 1, 70000, '2025-01-07', '', NULL, 'https://i.ibb.co.com/CHrVb5Z/Whats-App-Image-2025-01-06-at-18-31-25-d4f06bff.jpg', 1969772),
(1103, 6, 0, 2, 1, 1, 1, 30000, '2025-01-07', '', NULL, 'https://i.ibb.co.com/mRXCcxQ/Whats-App-Image-2025-01-06-at-18-32-13-45258b8e.jpg', 1939772),
(1104, 6, 0, 3, 1, 1, 1, 350658, '2025-01-07', '', NULL, 'https://i.ibb.co.com/KWz7FHk/Whats-App-Image-2025-01-06-at-17-36-58-3a073c63.jpg', 1589114),
(1105, 6, 0, 4, 1, 1, 1, 47935, '2025-01-07', '', NULL, 'https://i.ibb.co.com/rfG2FQB/Whats-App-Image-2025-01-06-at-17-18-41-dcbd3efc.jpg', 1541179),
(1106, 6, 0, 1, 1, 2, 1, 70000, '2025-01-07', '', NULL, 'https://i.ibb.co.com/zxJYpXB/Whats-App-Image-2025-01-07-at-10-42-20-ce97f230.jpg', 1471179),
(1107, 6, 0, 2, 1, 2, 1, 30000, '2025-01-07', '', NULL, 'https://i.ibb.co.com/mFTGPRk/Whats-App-Image-2025-01-07-at-10-43-54-6eb16591.jpg', 1441179),
(1109, 6, 0, 4, 1, 2, 1, 47864, '2025-01-07', '', NULL, 'https://i.ibb.co.com/0Y9dYjx/Whats-App-Image-2025-01-07-at-10-39-31-567a82f7.jpg', 843073),
(1110, 6, 0, 3, 1, 2, 1, 350658, '2025-01-07', '', NULL, 'https://i.ibb.co.com/wYvXNvZ/Whats-App-Image-2025-01-07-at-11-01-15-5275021d.jpg', 1042657),
(1111, 6, 0, 1, 1, 1, 1, 70000, '2025-01-08', '', NULL, 'https://i.ibb.co.com/0XHNrnL/Whats-App-Image-2025-01-07-at-17-21-12-0eed3b70.jpg', 972657),
(1112, 6, 0, 2, 1, 1, 1, 30000, '2025-01-08', '', NULL, 'https://i.ibb.co.com/3kLCYZ6/Whats-App-Image-2025-01-07-at-17-21-51-33c99d26.jpg', 942657),
(1113, 6, 0, 3, 1, 1, 1, 350658, '2025-01-08', '', NULL, 'https://i.ibb.co.com/F6Gszvm/Whats-App-Image-2025-01-07-at-18-24-55-65bb505c.jpg', 591999),
(1114, 6, 0, 4, 1, 1, 1, 47864, '2025-01-08', '', NULL, 'https://i.ibb.co.com/StGd6S5/Whats-App-Image-2025-01-07-at-17-22-26-b38efdc9.jpg', 544135),
(1115, 6, 0, 1, 1, 2, 1, 70000, '2025-01-08', '', NULL, 'https://i.ibb.co.com/Xyv1625/Whats-App-Image-2025-01-08-at-10-42-21-7c412e3b.jpg', 474135),
(1116, 6, 0, 2, 1, 2, 1, 30000, '2025-01-08', '', NULL, 'https://i.ibb.co.com/yPPGj7b/Whats-App-Image-2025-01-08-at-10-43-02-68d965ff.jpg', 444135),
(1117, 6, 0, 3, 1, 2, 1, 350658, '2025-01-08', '', NULL, 'https://i.ibb.co.com/87wHYyt/Whats-App-Image-2025-01-08-at-11-48-07-eab83a67.jpg', 93477),
(1118, 6, 0, 4, 1, 2, 1, 47793, '2025-01-08', '', NULL, 'https://i.ibb.co.com/pf4d1yM/Whats-App-Image-2025-01-08-at-11-18-41-2cf3e12e.jpg', 45684),
(1119, 6, 0, 1, 1, 1, 1, 70000, '2025-01-09', '', NULL, 'https://i.ibb.co.com/k2kBHVH/Whats-App-Image-2025-01-08-at-17-05-14-58855c70.jpg', 1975684),
(1120, 6, 0, 2, 1, 1, 1, 30000, '2025-01-09', '', NULL, 'https://i.ibb.co.com/nqpKLn0/Whats-App-Image-2025-01-08-at-17-05-47-d6626630.jpg', 1945684),
(1121, 6, 0, 3, 1, 1, 1, 350658, '2025-01-09', '', NULL, 'https://i.ibb.co.com/sqpGbv5/Whats-App-Image-2025-01-08-at-18-40-31-81160f31.jpg', 1595026),
(1122, 6, 0, 4, 1, 1, 1, 47793, '2025-01-09', '', NULL, 'https://i.ibb.co.com/PQrM4d9/Whats-App-Image-2025-01-08-at-18-44-08-7678abea.jpg', 1547233),
(1123, 6, 0, 1, 1, 2, 1, 70000, '2025-01-09', '', NULL, 'https://i.ibb.co.com/SJ0mrPp/Whats-App-Image-2025-01-09-at-10-36-40-4fc153f3.jpg', 1477233),
(1124, 6, 0, 2, 1, 2, 1, 30000, '2025-01-09', '', NULL, 'https://i.ibb.co.com/C7mgTdq/Whats-App-Image-2025-01-09-at-10-37-07-8accf46b.jpg', 1447233),
(1125, 6, 0, 3, 1, 2, 1, 350658, '2025-01-09', '', NULL, 'https://i.ibb.co.com/1mRNykK/Whats-App-Image-2025-01-09-at-11-21-05-428bbc96.jpg', 1096575),
(1126, 6, 0, 4, 1, 2, 1, 47888, '2025-01-09', '', NULL, 'https://i.ibb.co.com/9wftFry/Whats-App-Image-2025-01-09-at-10-53-23-c0a49e75.jpg', 1048687),
(1127, 6, 0, 3, 1, 1, 1, 350658, '2025-01-10', '', NULL, 'https://i.ibb.co.com/27G2cWq/Whats-App-Image-2025-01-09-at-18-29-09-da0a3c5e.jpg', 698029),
(1128, 6, 0, 2, 1, 1, 1, 30000, '2025-01-10', '', NULL, 'https://i.ibb.co.com/1nmRtMm/Whats-App-Image-2025-01-09-at-17-08-30-615fbbfd.jpg', 668029),
(1129, 6, 0, 1, 1, 1, 1, 70000, '2025-01-10', '', NULL, 'https://i.ibb.co.com/Vvvy7xX/Whats-App-Image-2025-01-09-at-17-07-58-17fd354b.jpg', 598029),
(1130, 6, 0, 4, 1, 1, 1, 47888, '2025-01-10', '', NULL, 'https://i.ibb.co.com/4SYbP20/Whats-App-Image-2025-01-09-at-17-06-55-93ba7344.jpg', 550141),
(1131, 6, 0, 1, 1, 2, 1, 70000, '2025-01-10', '', NULL, 'https://i.ibb.co.com/vXNnnN2/Whats-App-Image-2025-01-10-at-10-44-04-958f6763.jpg', 480141),
(1132, 6, 0, 2, 1, 2, 1, 30000, '2025-01-10', '', NULL, 'https://i.ibb.co.com/XbWMgS4/Whats-App-Image-2025-01-10-at-10-44-41-a86264f9.jpg', 450141),
(1133, 6, 0, 3, 1, 2, 1, 350658, '2025-01-10', '', NULL, 'https://i.ibb.co.com/zQZ9rPP/Whats-App-Image-2025-01-10-at-10-45-38-4ac0d38f.jpg', 99483),
(1134, 6, 0, 4, 1, 2, 1, 47997, '2025-01-10', '', NULL, 'https://i.ibb.co.com/3y4SDXp/Whats-App-Image-2025-01-10-at-10-34-22-0c1e9137.jpg', 51486),
(1135, 24, 0, 1, 1, 1, 1, 85000, '2025-01-11', '', NULL, 'https://i.ibb.co.com/HKN1wWh/Whats-App-Image-2025-01-10-at-17-11-48-8cfe0de7.jpg', 1966486),
(1136, 24, 0, 2, 1, 1, 1, 35000, '2025-01-11', '', NULL, 'https://i.ibb.co.com/DpR412c/Whats-App-Image-2025-01-10-at-17-12-25-6beabccc.jpg', 1931486),
(1137, 24, 0, 3, 1, 1, 1, 550242, '2025-01-11', '', NULL, 'https://i.ibb.co.com/LndbvDj/Whats-App-Image-2025-01-10-at-19-14-57-0a9fd0ec.jpg', 1381244),
(1138, 24, 0, 4, 1, 1, 1, 47997, '2025-01-11', '', NULL, 'https://i.ibb.co.com/hfwL7yP/Whats-App-Image-2025-01-10-at-17-13-36-4b8dc228.jpg', 1333247),
(1139, 24, 0, 1, 1, 2, 1, 85000, '2025-01-11', '', NULL, '', 1248247),
(1140, 24, 0, 2, 1, 2, 1, 35000, '2025-01-11', '', NULL, '', 1213247),
(1141, 24, 0, 3, 1, 2, 1, 550242, '2025-01-11', '', NULL, 'https://i.ibb.co.com/dLKjBHZ/Whats-App-Image-2025-01-11-at-11-38-01-23263637.jpg', 663005),
(1142, 24, 0, 4, 1, 2, 1, 47997, '2025-01-11', '', NULL, 'https://i.ibb.co.com/8mqjTpy/Whats-App-Image-2025-01-11-at-10-54-11-4adb2d72.jpg', 2616005),
(1143, 24, 0, 1, 1, 1, 1, 85000, '2025-01-12', '', NULL, 'https://i.ibb.co.com/6Fs1fV1/Whats-App-Image-2025-01-11-at-17-13-02-868b078d.jpg', 2531005),
(1144, 24, 0, 2, 1, 1, 1, 35000, '2025-01-12', '', NULL, 'https://i.ibb.co.com/rmLmTb0/Whats-App-Image-2025-01-11-at-17-13-37-81b52afb.jpg', 2496005),
(1145, 24, 0, 3, 1, 1, 1, 550242, '2025-01-12', '', NULL, 'https://i.ibb.co.com/yNPGDH1/Whats-App-Image-2025-01-11-at-19-21-14-0d85521a.jpg', 1945763),
(1146, 24, 0, 4, 1, 1, 1, 47997, '2025-01-12', '', NULL, 'https://i.ibb.co.com/y4GgXjf/Whats-App-Image-2025-01-11-at-17-16-13-563a93bb.jpg', 1898763),
(1147, 24, 0, 1, 1, 2, 1, 85000, '2025-01-12', '', NULL, 'https://i.ibb.co.com/Y02wfxx/Whats-App-Image-2025-01-12-at-10-34-13-592b16b0.jpg', 1813763),
(1148, 24, 0, 2, 1, 2, 1, 35000, '2025-01-12', '', NULL, 'https://i.ibb.co.com/rmSGcjb/Whats-App-Image-2025-01-12-at-10-34-44-53fcb81a.jpg', 1778763),
(1149, 24, 0, 3, 1, 2, 1, 550242, '2025-01-12', '', NULL, 'https://i.ibb.co.com/z8g8F2V/Whats-App-Image-2025-01-12-at-11-25-46-439d6e77.jpg', 1228521),
(1150, 24, 0, 4, 1, 2, 1, 47997, '2025-01-12', '', NULL, 'https://i.ibb.co.com/LRLhFk5/Whats-App-Image-2025-01-12-at-10-45-01-b1aafc4d.jpg', 1181521),
(1151, 2, 0, 1, 1, 1, 1, 70000, '2025-01-13', '', NULL, 'https://i.ibb.co.com/1LzzTdm/Whats-App-Image-2025-01-12-at-17-18-50-6663a478.jpg', 1111521),
(1152, 2, 0, 2, 1, 1, 1, 30000, '2025-01-13', '', NULL, 'https://i.ibb.co.com/dQ8dmCs/Whats-App-Image-2025-01-12-at-17-19-35-84009db8.jpg', 1081521),
(1153, 2, 0, 3, 1, 1, 1, 350658, '2025-01-13', '', NULL, 'https://i.ibb.co.com/VjXWNQc/Whats-App-Image-2025-01-12-at-20-24-23-16daa5d9.jpg', 730863),
(1154, 2, 0, 4, 1, 1, 1, 47997, '2025-01-13', '', NULL, 'https://i.ibb.co.com/gRdcVgG/Whats-App-Image-2025-01-12-at-19-33-18-ef71dc10.jpg', 683863),
(1155, 2, 0, 5, 1, 1, 1, 139680, '2025-01-13', '', NULL, 'https://i.ibb.co.com/612qrrL/Whats-App-Image-2025-01-12-at-19-17-56-8261045e.jpg', 542189),
(1156, 2, 0, 1, 1, 2, 1, 70000, '2025-01-13', '', NULL, 'https://i.ibb.co.com/2PX3XsZ/Whats-App-Image-2025-01-13-at-10-56-17-88bfbb4b.jpg', 2470195),
(1157, 2, 0, 2, 1, 2, 1, 30000, '2025-01-13', '', NULL, 'https://i.ibb.co.com/ng4zq7Z/Whats-App-Image-2025-01-13-at-10-57-34-ceba41f1.jpg', 2440195),
(1158, 2, 0, 3, 1, 2, 1, 350658, '2025-01-13', '', NULL, 'https://i.ibb.co.com/4YHxMrN/Whats-App-Image-2025-01-13-at-11-42-38-4af41659.jpg', 2089537),
(1159, 2, 0, 4, 1, 2, 1, 52654, '2025-01-13', '', NULL, 'https://i.ibb.co.com/sCKRHS3/Whats-App-Image-2025-01-13-at-10-45-20-80150790.jpg', 2036883),
(1160, 2, 0, 1, 1, 1, 1, 70000, '2025-01-14', '', NULL, 'https://i.ibb.co.com/J3fZ8pw/Whats-App-Image-2025-01-13-at-17-08-48-288a5ef1.jpg', 1966883),
(1161, 2, 0, 2, 1, 1, 1, 30000, '2025-01-14', '', NULL, 'https://i.ibb.co.com/3r2fgCV/Whats-App-Image-2025-01-13-at-17-09-46-bf6f4c4b.jpg', 1936883),
(1162, 2, 0, 3, 1, 1, 1, 350658, '2025-01-14', '', NULL, 'https://i.ibb.co.com/n874S4k/Whats-App-Image-2025-01-13-at-18-23-45-3ea8582b.jpg', 1586225),
(1163, 2, 0, 4, 1, 1, 1, 47867, '2025-01-14', '', NULL, 'https://i.ibb.co.com/9ThQX9V/Whats-App-Image-2025-01-13-at-17-25-39-5ecf4fa1.jpg', 1538358);

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
(85, 22, 'AL.203/2000/04576/191829/24', '2024-12-16', '2024-12-31', '16-12-2024 - 31-12-2024'),
(86, 8, 'AL.203/2000/04446/191180/24', '2024-12-01', '2024-12-16', '01-12-2024 - 16-12-2024'),
(87, 8, 'AL.203/2000/04450/191147/24', '2024-12-16', '2024-12-31', '16-12-2024 - 31-12-2024'),
(91, 1, 'AL.203/2000/04452/191164/24', '2024-12-16', '2024-12-31', '16-12-2024 - 31-12-2024'),
(97, 24, 'AL.203/2000/04849/193613/24', '2025-01-01', '2025-01-16', '01-01-2025 - 16-01-2025'),
(98, 6, 'AL.203/2000/04868/193651/24', '2025-01-01', '2025-01-16', '01-01-2025 - 16-01-2025'),
(99, 6, 'AL.203/2000/04869/193666/24', '2025-01-16', '2025-01-31', '16-01-2025 - 31-01-2025'),
(100, 7, 'AL.203/2000/04853/193574/24', '2025-01-01', '2025-01-16', '01-01-2025 - 16-01-2025'),
(101, 2, 'AL.203/2000/04859/193625/24', '2025-01-01', '2025-01-16', '01-01-2025 - 16-01-2025'),
(102, 2, 'AL.203/2000/04860/193593/24', '2025-01-16', '2025-01-31', '16-01-2025 - 31-01-2025');

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
(1, 6, '2024-12-15', '2025-01-13', '2024-12-15', 'https://i.ibb.co.com/2kWxDd8/image.png'),
(2, 1, '2024-12-23', '2025-01-21', '2024-12-23', 'https://i.ibb.co.com/hd4RYG5/image.png'),
(4, 2, '2025-01-12', '2025-02-10', '2025-01-12', 'https://i.ibb.co.com/9YCn89V/image.png'),
(5, 3, '2024-10-11', '2024-10-12', '2024-02-26', NULL),
(6, 4, '2024-10-11', '2024-10-12', '2023-10-17', NULL),
(7, 5, '2024-10-11', '2024-10-12', '2024-01-02', NULL),
(8, 7, '2024-11-30', '2025-01-28', '2024-11-30', 'https://i.ibb.co.com/FzHKXy8/image.png'),
(9, 8, '2024-12-06', '2025-01-04', '2024-12-06', 'https://i.ibb.co.com/QFhhrdt/image.png'),
(13, 22, '2024-12-24', '2025-01-22', '2024-12-24', 'https://i.ibb.co.com/qjR8S7X/image.png'),
(14, 24, '2025-01-02', '2025-01-31', '2025-01-02', 'https://i.ibb.co.com/jDSFX4R/image.png');

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
(38, 1, 3400000, '', '2024-11-28', '', 3748982),
(39, 1, 5000000, '', '2024-12-02', '', 4993050),
(40, 1, 3500000, '', '2024-12-04', '', 3094876),
(41, 1, 4800000, '', '2024-12-09', '', 5186575),
(42, 1, 2800000, '', '2024-12-11', '', 3128013),
(43, 1, 850000, '', '2024-12-14', '', 991969),
(44, 1, 2000000, '', '2024-12-16', '14 Dec 24\r\n', 1996427),
(45, 1, 2000000, '', '2024-12-16', '16-12-24\r\n', 2365864),
(46, 1, 1000000, '', '2024-12-18', '', 1373846),
(47, 1, 1000000, '', '2024-12-19', '', 1875766),
(48, 1, 2000000, '', '2024-12-21', '', 1562146),
(49, 1, 2000000, '', '2024-12-23', '', 2891904),
(50, 1, 2000000, '', '2024-12-24', '', 1778035),
(51, 1, 2000000, '', '2024-12-26', '', 2124842),
(52, 1, 2000000, '', '2024-12-26', '', 2708236),
(53, 1, 2000000, '', '2024-12-28', '', 2583182),
(54, 1, 2000000, '', '2024-12-30', '', 1749390),
(55, 1, 2000000, '', '2024-12-30', '', 2332367),
(56, 1, 2000000, '', '2024-12-31', '', 2551719),
(57, 1, 2000000, '', '2025-01-03', '', 2397674),
(58, 1, 2000000, '', '2025-01-03', '', 2618586),
(59, 1, 2000000, '', '2025-01-06', '', 2388483),
(60, 1, 2000000, '', '2025-01-06', '', 2538365),
(61, 1, 2000000, '', '2025-01-08', '', 2045684),
(62, 1, 2000000, '', '2025-01-10', '', 2051486),
(63, 1, 2000000, '', '2025-01-11', '', 2663005),
(64, 1, 0, '', '2025-01-13', '', 540195),
(65, 1, 2000000, '', '2025-01-13', '', 2540195);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `data_kapal`
--
ALTER TABLE `data_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `detail_saldo`
--
ALTER TABLE `detail_saldo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1164;

--
-- AUTO_INCREMENT for table `pkka_kapal`
--
ALTER TABLE `pkka_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `rambu_kapal`
--
ALTER TABLE `rambu_kapal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `riwayat_topup`
--
ALTER TABLE `riwayat_topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

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
