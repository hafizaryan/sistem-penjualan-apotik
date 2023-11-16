-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2023 at 09:23 PM
-- Server version: 8.0.31-0ubuntu0.20.04.2
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sim_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_obat` int NOT NULL,
  `foto_obat` varchar(255) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `kategori_obat` varchar(100) NOT NULL,
  `harga_obat` int NOT NULL,
  `stok_obat` int NOT NULL,
  `exp_obat` date NOT NULL,
  `berat` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_obat`, `foto_obat`, `nama_obat`, `kategori_obat`, `harga_obat`, `stok_obat`, `exp_obat`, `berat`) VALUES
(1, '63b5ac4b3dc3c.jpg', 'Sangobion', 'Obat Bebas', 7000, 80, '2023-01-31', NULL),
(2, '63b5ac7754a76.jpg', 'Astria', 'Obat Bebas', 30000, 40, '2023-02-18', NULL),
(3, '63b5ac9d4dbfd.jpg', 'Aspirin', 'Obat Bebas', 2594, 0, '2023-01-17', NULL),
(4, '63b5acc40f284.jpg', 'Zinc Sulfat', 'Obat Bebas', 8552, 15, '2023-02-13', NULL),
(5, '63b5ace89d5f1.jpg', 'Mylanta', 'Obat Bebas', 16861, 21, '2023-01-20', NULL),
(6, '63b5ad1149fc9.jpg', 'Tripsin', 'Obat Bebas', 35917, 39, '2023-01-13', NULL),
(7, '63b5ad3a5f52a.jpg', 'Kalpanax', 'Obat Bebas', 15440, 70, '2023-01-08', NULL),
(8, '63b5ad5f9df54.jpg', 'Albumin', 'Obat Bebas', 278954, 10, '2023-01-23', NULL),
(9, '63b5ad88c7008.jpg', 'Amoxilin', 'Obat Bebas', 518, 100, '2023-02-08', NULL),
(10, '63b5adbf13a9e.jpg', 'Salbutamol', 'Obat Bebas', 210, 4, '2023-01-22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penerima`
--

CREATE TABLE `penerima` (
  `id_pendaftar` varchar(100) NOT NULL,
  `id_obat` varchar(10) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `alamat_penerima` varchar(255) NOT NULL,
  `no_telp_penerima` varchar(12) NOT NULL,
  `nomer_pengiriman` int NOT NULL,
  `kode_unik` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penerima`
--

INSERT INTO `penerima` (`id_pendaftar`, `id_obat`, `nama_penerima`, `alamat_penerima`, `no_telp_penerima`, `nomer_pengiriman`, `kode_unik`) VALUES
('5', '1', 'M Wira Ade Kusuma', 'Dusun IV Sumber Makmur RT 02 RW 02 Desa Sumber Sari', '082391552478', 1, 1234),
('1', '2', 'Nazar', 'Jl Rimbo Panjang', '08123456789', 2, 5678),
('5', '10', 'M Wira Ade Kusuma', 'Dusun IV Sumber Makmur RT 02 RW 02 Desa Sumber Sari', '082391552478', 3, 1356),
('1', '3', 'Nazar', 'Jl. Cipta Karya', '08123456789', 4, 2468),
('1', '4', 'Nazar', 'Jln. Kasikan KM 69', '082391552478', 5, 1239),
('1', '5', 'nazar', 'Dusun IV Sumber Makmur RT 02 RW 02 Desa Sumber Sari', '082391552478', 6, 3958),
('1', '8', 'M Wira', 'Jln. Kasikan KM 69', '082391552478', 7, 1293),
('1', '2', 'M Wira', 'Jln. Kasikan KM 69', '082391552478', 8, 3485),
('1', '5', 'Nazar', 'Jl. Cipta Karya', '08123456789', 9, 1238),
('1', '7', 'M Wir.a Kusuma', 'Dusun IV Sumber Makmur RT 02 RW 02 Desa Sumber Sari', '082391552478', 10, 4986),
('1', '1', 'Nazar', 'Dusun IV Sumber Makmur RT 02 RW 02 Desa', '082391552478', 11, 9793);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int NOT NULL,
  `id_obat` int NOT NULL,
  `jumlah` int NOT NULL,
  `total_harga` int NOT NULL,
  `status` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pendaftar` varchar(10) NOT NULL,
  `kode_unik` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_obat`, `jumlah`, `total_harga`, `status`, `tanggal`, `id_pendaftar`, `kode_unik`) VALUES
(1, 1, 10, 70000, 'DIKIRIM', '2023-01-04', '5', 1234),
(2, 2, 20, 600000, 'DIBATALKAN', '2023-01-04', '1', 5678),
(3, 10, 40, 8400, 'DIPROSES', '2023-01-04', '5', 1356),
(4, 3, 40, 103760, 'DIPROSES', '2023-01-04', '1', 2468),
(5, 4, 15, 128280, 'DIPROSES', '2023-01-04', '1', 1239),
(6, 5, 25, 421525, 'DIPROSES', '2023-01-04', '1', 3958),
(7, 8, 10, 2789540, 'DIPROSES', '2023-01-04', '1', 1293),
(8, 2, 20, 600000, 'DIPROSES', '2023-01-04', '1', 3485),
(9, 5, 4, 67444, 'DIPROSES', '2023-01-04', '1', 1238),
(10, 7, 7, 108080, 'DIPROSES', '2023-01-04', '1', 4986),
(11, 1, 10, 70000, 'DIPROSES', '2023-01-06', '1', 9793);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_pendaftar` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_pendaftar`, `username`, `password`, `level`, `nama`) VALUES
(1, 'nazar', '$2y$10$kJVLTp.ooQcTESgXHczc1.Qzi3JC5NjN/Ob31l1tynX/aYa4jWKJG', 'pembeli', NULL),
(2, 'admin', '$2y$10$hz7FLN33xgAFsF1o4OygIuFTpXTiZBtrKeW9itu5Zh8j1/i.ve9Cq', 'admin', NULL),
(4, 'manager', '$2y$10$hz7FLN33xgAFsF1o4OygIuFTpXTiZBtrKeW9itu5Zh8j1/i.ve9Cq', 'manager', NULL),
(5, 'wira', '$2y$10$NA4wUV.ZJytMUVNfL0TAqOjHe4jqY3NBmgX4B6RUtGVu1P1y6.B2i', 'pembeli', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `penerima`
--
ALTER TABLE `penerima`
  ADD PRIMARY KEY (`nomer_pengiriman`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_pendaftar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_obat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penerima`
--
ALTER TABLE `penerima`
  MODIFY `nomer_pengiriman` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_pendaftar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
