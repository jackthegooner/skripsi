-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2020 at 08:20 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mom_catering`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `no` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `senin` varchar(10) DEFAULT NULL,
  `selasa` varchar(10) DEFAULT NULL,
  `rabu` varchar(10) DEFAULT NULL,
  `kamis` varchar(10) DEFAULT NULL,
  `jumat` varchar(10) DEFAULT NULL,
  `total` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`no`, `nama`, `senin`, `selasa`, `rabu`, `kamis`, `jumat`, `total`) VALUES
(1, 'JACKIE.Z(P-2)CBD BATARI', 'XXXX', 'XXX', 'XXXX', 'XXXXXXX', 'XX', 20),
(2, 'DAREN.D(P-5)CBD BATARI', 'XXX', 'XXX', 'XXXX', 'XXX', 'XX', 15),
(3, 'CELINE (P-6)CBD BATARI', 'XXX', 'XXX', 'XXXX', 'XXX', 'XX', 15),
(4, 'JASMINE.N.T (P-6)CBD BATARI', 'XXXX', 'XXX', 'XX', 'XXX', 'XXX', 15),
(5, 'DOMINIC (P-1)CBD BATARI', 'XXXX', 'XXX', 'XXX', 'XXX', 'XX', 15),
(6, 'MARCHA A.K (K-2D)CBD BATARI', 'XXXX', 'XXXXX', 'XXXXXX', 'XXX', 'XXX', 21),
(7, 'CAREN SU (P-2)CBD BATARI', 'XXX', 'XXXX', 'XXXX', 'XXXX', 'XXX', 18),
(8, 'CHERYL (P-6)CBD BATARI', 'XXX', 'XX', 'XXX', 'XXXX', 'XXXXX', 17),
(9, 'SHALOMITA(K-1)CBD BATARI', 'XXXX', 'XXX', 'XX', 'XXX', 'XXXX', 16),
(10, 'ALEXANDRIA(P-1D)SERAYU', 'XXX', 'XXXXX', 'XX', 'XXXXX', 'XX', 17),
(11, 'ELLEANA (P-1)SERAYU', 'XX', 'XXXX', '-', 'XXXXX', 'XXX', 14),
(12, 'KEVIN .B(P-1D)SERAYU', 'XXX', 'XXXXX', 'XX', 'XXXXXX', 'XXXX', 20),
(13, 'JOSHUA.S(P-1B)SERAYU', 'XX', 'XXXXX', '-', 'XXXXXX', 'XXXX', 17),
(14, 'M.DAFFI AR(P-1B)SERAYU', 'XX', 'XXXX', 'XX', 'XXXX', 'XXX', 15),
(15, 'CAROL.S(P-1B)SERAYU', 'XX', 'XXXXX', 'XX', 'XXXXX', 'XXXXX', 19),
(16, 'AMORA MICHELLE(P-1B)SERAYU', 'XX', 'XXXX', 'XX', 'XXX', 'XXX', 14),
(17, 'VANESSA.T (P-5) RAINBOW', 'XX', 'XXX', 'XXX', 'XXXXXX', 'XXXX', 18),
(18, 'JACQUELINE.T(P-4)RAINBOW', 'XX', 'XXX', 'XXX', 'XXXXXX', 'XXXX', 18),
(19, 'JANICYA(P-4) RAINBOW', 'XX', 'XXX', 'XXX', 'XXXXXX', 'XXXX', 18),
(20, 'MATTHEW RUBEN(P-6) RAINBOW', 'XX', 'XXX', 'XXX', 'XXXXXX', 'XXXXX', 19),
(21, 'MARCELO RUBEN (P-3)RAINBOW', 'XX', 'XXX', 'XXX', 'XXXXXX', 'XXXX', 18),
(22, 'CHLOE ALAMSYA(P-1)RAINBOW', 'XX', 'XXX', 'XXX', 'XXX', 'XXXX', 15),
(23, 'WINCENT.C.W (P-1) ST.NICHOLAS', 'XXX', 'XXXXXXX', 'XXXX', 'XXXXXXX', 'XXXXXX', 27),
(24, 'STANLEY.BRYAN (SEKIP)', 'XXX', 'XXXXXX', 'XXXXXX', 'XXXXXX', 'XXXXXXX', 28),
(25, 'FREYA.L.SITUMORANG (VII-C)ST.THO', 'XX', 'XX', 'XXXXX', 'XXXX', 'XXXXX', 18),
(26, 'TAPOL 4 NO.102', 'XXXXX', 'XXXXXXX', 'XXXXXX', 'XXXXXXXX', 'XXXXXX', 32),
(27, 'TAPOL 4 NO.102', 'XXXXX', 'XXXXXXX', 'XXXXXX', 'XXXXXXXX', 'XXXXXX', 32),
(28, 'BARNETT (P6-B)SHUNSHINE', 'XX', 'X', '-', 'XX', 'XX', 7),
(29, 'BEVERLYN(P3-C)SHUNSHINE', 'XXX', 'XXXXX', 'XX', 'XXX', 'XXXXX', 13),
(30, 'HOWARD.F.T (P1-C) SHUN', 'XXX', 'XXXXXX', 'XXXX', 'XXXXX', 'XXXXXXX', 20),
(31, 'JOVIN TRISTAN (P4-A) SHUN', 'XXX', 'XXXXXX', 'XXXX', 'XXXXXXX', 'XXXXXX', 26),
(32, 'VINCENT.L(P-2B) SHUNSHINE', 'XXX', 'XXXXX', 'XXXX', 'XXXXX', 'XXXXX', 22),
(33, 'HELEN.L(P-4) SHUNSHINE', 'XXX', 'XXXXXX', 'XXXX', 'XXXXX', 'XXXXX', 23),
(34, 'TK.SEMEDAN PUKAT2 NO.42', 'XXX', 'XXXXXXX', 'XXXXXX', 'XXXXXX', 'XXXXXXX', 29),
(35, 'TK.SEMEDAN PUKAT2 NO.42', 'XXX', 'XXXXXXX', 'XXXXXX', 'XXXXXX', 'XXXXXXX', 29),
(36, 'CBD BLOK EE 94-95', 'XXX', 'XXXXXX', 'XXXXXX', 'XXXXXXX', 'XXXXXXX', 29),
(37, 'CBD BLOK EE 94-95', 'XXX', 'XXXXXX', 'XXXXXX', 'XXXXXXX', 'XXXXXX', 28),
(38, 'RALPH (K-2)SAMPOERNA', 'XXXX', 'XXXXXXX', 'XXX', 'XXXX', 'XXXXX', 23),
(39, 'AXELE (IV-E) METHODIST', 'XXX', 'XXX', 'XXX', 'XXXXX', 'XXXX', 18),
(40, 'HARMONY CBD', 'XXXXXXX', 'XXXXXXX', 'XXXXXXX', 'XXXXXXX', 'XXXXXXX', 35);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
