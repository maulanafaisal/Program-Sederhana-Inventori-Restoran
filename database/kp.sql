-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 11:21 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nm_admin` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `box`
--

CREATE TABLE `box` (
  `nama_item` varchar(20) NOT NULL,
  `hargaperkg` int(11) DEFAULT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `box2`
--

CREATE TABLE `box2` (
  `nama_item` varchar(20) NOT NULL,
  `hargaperkg` int(11) DEFAULT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buah`
--

CREATE TABLE `buah` (
  `id` int(11) NOT NULL,
  `nama_item` varchar(20) DEFAULT NULL,
  `hargaperkg` int(11) DEFAULT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buah`
--

INSERT INTO `buah` (`id`, `nama_item`, `hargaperkg`, `jumlah`, `total`) VALUES
(2, 'Apel', 50000, '2kg', 100000),
(3, 'Rambutan', 20000, '4kg', 80000),
(4, 'Jeruk', 10000, '2kg', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `bumbu`
--

CREATE TABLE `bumbu` (
  `nama_item` varchar(20) NOT NULL,
  `hargaperkg` int(11) DEFAULT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bumbu`
--

INSERT INTO `bumbu` (`nama_item`, `hargaperkg`, `jumlah`, `total`) VALUES
('Jahej', 10000, '2', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `dapur`
--

CREATE TABLE `dapur` (
  `nama_item` varchar(20) NOT NULL,
  `hargeperkg` int(11) DEFAULT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dapur`
--

INSERT INTO `dapur` (`nama_item`, `hargeperkg`, `jumlah`, `total`) VALUES
('Gelas', 0, '10', 10000),
('Piring', 0, '15', 225000),
('Wajan', 0, '2', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `dapur2`
--

CREATE TABLE `dapur2` (
  `nama_item` varchar(20) NOT NULL,
  `hargaperkg` int(11) DEFAULT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dapur2`
--

INSERT INTO `dapur2` (`nama_item`, `hargaperkg`, `jumlah`, `total`) VALUES
('Wajan', 10000, '3', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `es_batu`
--

CREATE TABLE `es_batu` (
  `id` int(11) NOT NULL,
  `jenis_Es` char(20) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `es_batu`
--

INSERT INTO `es_batu` (`id`, `jenis_Es`, `Qty`, `Harga`) VALUES
(1, 'Kristal', 2, 10000),
(2, 'Air_Galon', 2, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `keperluan`
--

CREATE TABLE `keperluan` (
  `id` int(11) NOT NULL,
  `jenis_keperluan` char(25) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keperluan`
--

INSERT INTO `keperluan` (`id`, `jenis_keperluan`, `Qty`, `harga`) VALUES
(1, 'karet', 2, 12000),
(2, 'kertas nasi', 1, 15000),
(3, 'Tusuk Gigi', 3, 8000),
(4, 'sendok plastik', 5, 30000),
(5, 'mika', 2, 16000),
(6, 'kertas AKG box', 1, 6000),
(7, 'kertas Nied', 1, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `id` int(11) NOT NULL,
  `nama_makanan` char(20) DEFAULT NULL,
  `harga_makanan` varchar(10) DEFAULT NULL,
  `Total_makanan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`id`, `nama_makanan`, `harga_makanan`, `Total_makanan`) VALUES
(1, 'Lele kepala kakap', '40000', '40000'),
(2, 'kembung bawal', '35000', '35000'),
(3, 'Ikan teri', '10000', '10000'),
(4, 'Bawang', '6000', '6000');

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id` int(11) NOT NULL,
  `jenis_meja` char(20) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id`, `jenis_meja`, `Qty`) VALUES
(1, 'meja panjang', 2),
(2, 'meja pendek', 3);

-- --------------------------------------------------------

--
-- Table structure for table `minuman`
--

CREATE TABLE `minuman` (
  `nama_item` varchar(20) NOT NULL,
  `hargaperkg` int(11) DEFAULT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `minuman`
--

INSERT INTO `minuman` (`nama_item`, `hargaperkg`, `jumlah`, `total`) VALUES
('Pucuk', 5000, '2', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `plastik`
--

CREATE TABLE `plastik` (
  `id` int(11) NOT NULL,
  `nama_plastik` char(25) DEFAULT NULL,
  `ukuran_plastik` int(11) DEFAULT NULL,
  `jumlah` varchar(10) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sayuran`
--

CREATE TABLE `sayuran` (
  `nama_item` varchar(20) NOT NULL,
  `hargaperkg` int(11) DEFAULT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sayuran`
--

INSERT INTO `sayuran` (`nama_item`, `hargaperkg`, `jumlah`, `total`) VALUES
('Buncis', 10000, '1kg', 10000),
('Cabe Hijau', 20000, '2kg', 40000),
('Kangkung', 50000, '2kg', 100000),
('Nangka', 15000, '3kg', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `tisu`
--

CREATE TABLE `tisu` (
  `nama_item` varchar(20) NOT NULL,
  `hargaperkg` int(11) DEFAULT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tisu`
--

INSERT INTO `tisu` (`nama_item`, `hargaperkg`, `jumlah`, `total`) VALUES
('tisue basah', 10000, '1', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `tisue`
--

CREATE TABLE `tisue` (
  `id` int(11) NOT NULL,
  `nama_barang` char(25) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tisue`
--

INSERT INTO `tisue` (`id`, `nama_barang`, `Qty`, `harga`) VALUES
(1, 'Echo Facial', 2, 12000),
(2, 'Wastafel', 1, 1000000),
(3, 'Sendok', 5, 100000),
(4, 'Live Evd Lontion', 2, 40000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `box`
--
ALTER TABLE `box`
  ADD PRIMARY KEY (`nama_item`);

--
-- Indexes for table `box2`
--
ALTER TABLE `box2`
  ADD PRIMARY KEY (`nama_item`);

--
-- Indexes for table `buah`
--
ALTER TABLE `buah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bumbu`
--
ALTER TABLE `bumbu`
  ADD PRIMARY KEY (`nama_item`);

--
-- Indexes for table `dapur`
--
ALTER TABLE `dapur`
  ADD PRIMARY KEY (`nama_item`);

--
-- Indexes for table `dapur2`
--
ALTER TABLE `dapur2`
  ADD PRIMARY KEY (`nama_item`);

--
-- Indexes for table `es_batu`
--
ALTER TABLE `es_batu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keperluan`
--
ALTER TABLE `keperluan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`nama_item`);

--
-- Indexes for table `plastik`
--
ALTER TABLE `plastik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sayuran`
--
ALTER TABLE `sayuran`
  ADD PRIMARY KEY (`nama_item`);

--
-- Indexes for table `tisu`
--
ALTER TABLE `tisu`
  ADD PRIMARY KEY (`nama_item`);

--
-- Indexes for table `tisue`
--
ALTER TABLE `tisue`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
