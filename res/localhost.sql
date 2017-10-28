-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 29, 2017 at 12:59 AM
-- Server version: 5.5.57-0+deb8u1
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `3cahaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE IF NOT EXISTS `absensi` (
  `id` varchar(20) NOT NULL,
  `tgl_absen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` varchar(7) NOT NULL DEFAULT 'XXX0000',
  `jenis` varchar(16) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `ragam` varchar(30) NOT NULL,
  `seri` varchar(300) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_beli` double NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `tgl_masuk` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `garansi` enum('distributor','toko','tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `jenis`, `merk`, `ragam`, `seri`, `qty`, `harga_beli`, `supplier`, `tgl_masuk`, `garansi`) VALUES
('XXX0001', 'lampu', 'kawachi', 'led', 'metaled 5w', 20, 20000, 'idocahaya', '2017-10-20 19:22:00', 'distributor'),
('XXX0002', 'lampu', 'kawachi', 'led', 'metaled 11w', 20, 35000, 'indocahaya', '2017-10-20 19:27:04', 'distributor');

-- --------------------------------------------------------

--
-- Table structure for table `barang_retur`
--

CREATE TABLE IF NOT EXISTS `barang_retur` (
`id_retur` bigint(20) NOT NULL,
  `id_barang` varchar(7) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `id` varchar(20) NOT NULL DEFAULT '0',
  `password` varchar(20) NOT NULL DEFAULT '1234',
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `npwp` varchar(20) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE IF NOT EXISTS `toko` (
  `id_toko` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `no_invoice` varchar(15) NOT NULL DEFAULT 'TC0000000000',
  `tanggal` date NOT NULL,
  `jam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_barang` varchar(15) NOT NULL DEFAULT 'PR0000000',
  `qty` int(11) NOT NULL,
  `harga` double NOT NULL,
  `diskon` double NOT NULL,
  `uang_bayar` double NOT NULL,
  `garansi` enum('distributor','toko','tidak') NOT NULL,
  `id` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_retur`
--

CREATE TABLE IF NOT EXISTS `transaksi_retur` (
`no_retur` bigint(20) NOT NULL,
  `no_invoice` varchar(15) NOT NULL,
  `id_brg` varchar(15) NOT NULL,
  `tgl_retur` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
 ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `barang_retur`
--
ALTER TABLE `barang_retur`
 ADD PRIMARY KEY (`id_retur`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
 ADD PRIMARY KEY (`id_toko`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`no_invoice`);

--
-- Indexes for table `transaksi_retur`
--
ALTER TABLE `transaksi_retur`
 ADD PRIMARY KEY (`no_retur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang_retur`
--
ALTER TABLE `barang_retur`
MODIFY `id_retur` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaksi_retur`
--
ALTER TABLE `transaksi_retur`
MODIFY `no_retur` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
