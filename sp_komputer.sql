-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2014 at 06:32 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sp_komputer`
--
CREATE DATABASE IF NOT EXISTS `sp_komputer` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sp_komputer`;

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa_mobo_pro_ram`
--

CREATE TABLE IF NOT EXISTS `diagnosa_mobo_pro_ram` (
  `ID` int(11) NOT NULL,
  `solusi_dan_pertanyaan` varchar(500) NOT NULL,
  `bila_benar` int(11) NOT NULL,
  `bila_salah` int(11) NOT NULL,
  `mulai` char(1) NOT NULL,
  `selesai` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosa_mobo_pro_ram`
--

INSERT INTO `diagnosa_mobo_pro_ram` (`ID`, `solusi_dan_pertanyaan`, `bila_benar`, `bila_salah`, `mulai`, `selesai`) VALUES
(1, 'Apakah muncul "Boot screen" BIOS ataupun OS ?', 2, 3, 'Y', 'N'),
(2, 'Stuck (Berhenti) pada boot screen ?', 4, 5, 'Y', 'N'),
(0, 'Maaf Sementara Sistem Belum Dapat Mendiagnosa Masalah Anda.', 0, 0, 'N', 'Y'),
(5, 'Proses ke diagnosa performa Motherboard,processor dan Ram.', 0, 0, 'N', 'Y'),
(3, 'Diagnosis power supply sudah dilakukan?', 6, 25, 'Y', 'N'),
(25, 'Proses ke diagnosis kerusakan power supply', 0, 0, 'N', 'Y'),
(4, 'Coba hanya sambungkan PSU,minimum Ram,processor,dan heatsink, apakah sistem masih membeku?', 7, 8, 'Y', 'N'),
(8, 'Terjadi konflik hardware.', 0, 0, 'N', 'Y'),
(6, 'Diagnosis video card sudah dilakukan ?', 9, 26, 'Y', 'N'),
(26, 'Proses ke diagnosis kerusakan video card.', 0, 0, 'N', 'Y'),
(7, 'Coba tukar posisi RAM, apa sistem belum dapat menyala?', 10, 11, 'Y', 'N'),
(11, 'Ganti RAM dengan compatible dgn motherboard.', 0, 0, 'N', 'Y'),
(9, 'Ram telah terpasang dengan baik dan cocok?', 12, 13, 'Y', 'N'),
(13, 'Lepas dan pasang kembali RAM', 0, 0, 'N', 'Y'),
(10, 'Pengaturan CMOS/BIOS Default?', 14, 15, 'Y', 'N'),
(15, 'Kembalikan pengaturan BIOS ke Default', 0, 0, 'N', 'Y'),
(12, 'Apakah processor sudah terpasang dengan benar?', 14, 17, 'Y', 'N'),
(17, 'Lepas dan pasang kembali processor dengan benar', 0, 0, 'N', 'Y'),
(14, 'Kipas processor aktif?', 18, 19, 'Y', 'N'),
(19, 'Periksa apakah konektor power kipas (fan) heatsink sudah tersambung.', 0, 0, 'N', 'Y'),
(18, 'Terdengar bunyi "Beep" ?', 11, 20, 'Y', 'N'),
(20, 'Pengaturan motherboard (jumper,slot dll) dalam kondisi default?', 21, 22, 'Y', 'N'),
(22, 'Kembalikan pengaturan jumper, pin atau konektor pd motherboard ke posisi semula', 0, 0, 'N', 'Y'),
(24, 'Kemungkinan terjadi konsleting pada casing ketika motherboard terpasang', 0, 0, 'N', 'Y'),
(28, 'Coba gunakkan processor lain (pinjam) yg compatible,apakah PC dpt berjalan ?', 29, 30, 'Y', 'N'),
(29, 'Processor bermasalah,pastikan voltage dan heatsink berjalan dengan baik.', 0, 0, 'N', 'Y'),
(30, 'Motherboard yang buruk/rusak.', 0, 0, 'N', 'Y'),
(21, 'Coba lepas semua komponen,rangkai diluar case. Apakah komputer bs menyala?', 24, 28, 'Y', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa_psu`
--

CREATE TABLE IF NOT EXISTS `diagnosa_psu` (
  `ID` int(11) NOT NULL,
  `solusi_dan_pertanyaan` varchar(500) NOT NULL,
  `bila_benar` int(11) NOT NULL,
  `bila_salah` int(11) NOT NULL,
  `mulai` char(1) NOT NULL,
  `selesai` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosa_psu`
--

INSERT INTO `diagnosa_psu` (`ID`, `solusi_dan_pertanyaan`, `bila_benar`, `bila_salah`, `mulai`, `selesai`) VALUES
(1, 'Apakah ada listrik masuk ?', 2, 3, 'Y', 'N'),
(2, 'Apakah muncul boot screen BIOS/OS ?', 4, 26, 'Y', 'N'),
(3, 'Sumber listrik AC dalam kondisi baik ?', 5, 6, 'Y', 'N'),
(0, 'Maaf Sementara Sistem Belum Dapat Mendiagnosa Masalah Anda.', 0, 0, 'N', 'Y'),
(6, 'Permasalahan pada terminal listrik.', 0, 0, 'N', 'Y'),
(26, 'Proses Pada Diagnosis Kerusakan VGA.', 0, 0, 'N', 'Y'),
(4, 'Komputer Baru dirakit ?', 7, 8, 'Y', 'N'),
(7, 'Periksa Kebutuhan Daya, apakah cukup.', 0, 0, 'N', 'Y'),
(5, 'Apakah Pengaturan Voltage sudah benar ? Default 110/220 V.', 9, 10, 'Y', 'N'),
(10, 'Pilih Pengaturan Voltage yang benar.', 0, 0, 'N', 'Y'),
(8, 'Menyala setelah booting kedua?', 11, 12, 'Y', 'N'),
(11, 'Masalah Terjadi Pada Power Supply.', 0, 0, 'N', 'Y'),
(9, 'Apakah tombol power switch sudah terhubung dengan benar pd motherboard ?', 13, 14, 'Y', 'N'),
(14, 'Periksa buku manual motherboard, sambungkan tombol panel depan dengan benar.', 0, 0, 'N', 'Y'),
(12, 'Terdengar suara "BEEP" ?', 27, 15, 'Y', 'N'),
(27, 'Proses pada diagnosis kerusakan motherboard, prosesor dan Ram.', 0, 0, 'N', 'Y'),
(13, 'Tombol Power Rusak ?', 16, 17, 'Y', 'N'),
(16, 'Ganti tombol power atau gunakan tombol reset.', 0, 0, 'N', 'Y'),
(15, 'Apakah ada komponen baru yang terpasang?', 18, 19, 'Y', 'N'),
(18, 'Lepas komponen yang baru dipasang, coba lagi.', 0, 0, 'N', 'Y'),
(17, ' Konektor daya dari PSU sudah tersambung dengan benar pd motherboard? ', 19, 20, 'Y', 'N'),
(19, 'Apakah hardisk dapat berputar? ', 21, 22, 'Y', 'N'),
(21, 'Apakah ada kemungkinan VGA, Soundcard adapter dll yang bermasalah?', 23, 24, 'Y', 'N'),
(22, 'Coba dengan konektor SATA yg lain, apa dapat berputar?', 25, 26, 'Y', 'N'),
(23, 'Lepaskan semua adapter kecuali video card', 0, 0, 'N', 'Y'),
(25, 'Kabel konektor SATA atau konektor dari power supply rusak.', 0, 0, 'N', 'Y'),
(26, 'Coba hardisk di komputer lain.', 0, 0, 'N', 'Y'),
(24, 'Coba lepas semua komponen dan rangkai diluar case, apa bisa menyala ?', 27, 28, 'Y', 'N'),
(27, 'Kemungkinan terjadi konsleting pd casing ketika motherboard terpasang .', 0, 0, 'N', 'Y'),
(28, 'Ganti Power Supply.', 0, 0, 'N', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa_vga`
--

CREATE TABLE IF NOT EXISTS `diagnosa_vga` (
  `ID` int(11) NOT NULL,
  `solusi_dan_pertanyaan` varchar(500) NOT NULL,
  `bila_benar` int(11) NOT NULL,
  `bila_salah` int(11) NOT NULL,
  `mulai` char(1) NOT NULL,
  `selesai` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosa_vga`
--

INSERT INTO `diagnosa_vga` (`ID`, `solusi_dan_pertanyaan`, `bila_benar`, `bila_salah`, `mulai`, `selesai`) VALUES
(1, 'Apakah ada daya listrik masuk ?', 2, 30, 'Y', 'N'),
(30, 'Proses ke diagnosis kerusakan power supply.', 0, 0, 'N', 'Y'),
(0, 'Maaf Sementara Sistem Belum Dapat Mendiagnosa Masalah Anda.', 0, 0, 'N', 'Y'),
(2, 'Apakah muncul tampilan pada layar monitor ?', 3, 4, 'Y', 'N'),
(3, 'Muncul Pesan "NO POWER" pada monitor ?', 5, 6, 'Y', 'N'),
(5, 'Sambungkan power tambahan pada video card.', 0, 0, 'N', 'Y'),
(4, 'Monitor Menyala ?', 7, 8, 'Y', 'N'),
(8, 'Periksa Sumber Listrik. Pastikan konektor power tertancap pada monitor.', 0, 0, 'N', 'Y'),
(6, 'Muncul Pesan "NO SIGNAL" Pada Monitor ?', 9, 10, 'Y', 'N'),
(7, 'Pengaturan Brightness dan Contrast sudah tepat?', 11, 12, 'Y', 'N'),
(12, 'Atur Brightness dan Contrast dengan tepat.', 0, 0, 'N', 'Y'),
(9, 'Kabel VGA dalam kondisi baik ?', 13, 14, 'Y', 'N'),
(14, 'Periksa ujung konektor VGA.', 0, 0, 'N', 'Y'),
(10, 'Stuck (Berhenti) pada layar BIOS ?', 20, 21, 'Y', 'N'),
(21, 'Proses ke Diagnosa performa VGA.', 0, 0, 'N', 'Y'),
(11, 'Terdengar bunyi "BEEP" ?', 15, 16, 'Y', 'N'),
(13, 'Apakah monitor sudah ditest ?', 16, 17, 'Y', 'N'),
(17, 'Coba monitor di PC lain atau laptop yg normal.', 0, 0, 'N', 'Y'),
(15, 'Video Card terpasang dengan baik ?', 18, 19, 'Y', 'N'),
(19, 'Lepas dan pasang lagi Video Card.', 0, 0, 'N', 'Y'),
(16, 'Kabel VGA Rusak atau bengkok ?', 21, 20, 'Y', 'N'),
(21, 'Perbaiki atau ganti kabel VGA.', 0, 0, 'N', 'Y'),
(18, 'Ram terpasang dengan baik ?', 16, 31, 'Y', 'N'),
(31, 'Lepas dan Pasang lagi RAM.', 0, 0, 'N', 'Y'),
(20, 'Apakah ada komponen baru yang dipasang ?', 24, 25, 'Y', 'N'),
(24, 'Dapat menyala dengan 1 (satu) Video Card ?', 26, 25, 'Y', 'N'),
(26, 'Terjadi Konflik Pada Hardware.', 0, 0, 'N', 'Y'),
(25, 'Dapat menyala dengan Video Card baru ?', 32, 33, 'Y', 'N'),
(32, 'Ganti dengan Video Card yang baru.', 0, 0, 'N', 'Y'),
(33, 'Proses ke Diagnosa kerusakan motherboard', 0, 0, 'N', 'Y');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
