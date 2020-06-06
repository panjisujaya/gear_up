-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2020 at 12:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gear_up`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_list_barang`
--

CREATE TABLE `tb_list_barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `catatanPenjual` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_list_barang`
--

INSERT INTO `tb_list_barang` (`id`, `nama`, `harga`, `qty`, `catatanPenjual`) VALUES
(6, 'Digital Alliance Luna Honey Mouse Gaming Black', 179000, 10, 'RGB LED Light\r\nMacro And Software Programmable\r\nUltraLight 75g\r\n6400 DPI\r\n1000hz Pooling Rate\r\nHuano 10m click'),
(7, 'Digital Alliance Luna Gaming Mouse', 139000, 15, 'Sensor 199 Solution\r\nSwitch Huano\r\nSwitch Life 10 Million Click Lifecycle\r\nDimensions approx:126*68*39mm\r\nNumber of keys 6 buttons\r\nCable length Braided wire USB Gold Plated approx:1.80m\r\nResolution Up to 6400DPI\r\nMaximum frame rate 6666 fps\r\nMaximum acceleration 12 g\r\nMaximal tracking speed 32 ips\r\nMaximum polling rate 125Hz\r\nCurrent conmsumption max.100mA'),
(8, 'KEYBOARD GAMING DA MECA FIGHTER LED white Brown Switch', 269000, 5, 'Weight 720g\r\nDimension (L x W x H) 356 x 168 x 33mm\r\nInterface USB Gold Plated\r\nKeycaps Double Injection\r\nCable Length 180cm\r\nBacklight Yes\r\nBacklight Effect White\r\nSWITCH\r\nSwitch Type Mechanical\r\nSwitch Name Outemu\r\nSwitch Color Blue, Brown, Red\r\nLifespan 50 Million Clicks Lifetime'),
(9, 'Mouse Votre	', 20000, 100, 'Mouse Votre Murah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian_barang`
--

CREATE TABLE `tb_pembelian_barang` (
  `id` int(11) NOT NULL,
  `pembeli` varchar(100) NOT NULL,
  `idBarang` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pembelian_barang`
--

INSERT INTO `tb_pembelian_barang` (`id`, `pembeli`, `idBarang`, `qty`, `created_at`) VALUES
(1, 'panjicv4ever@gmail.com', 1, 2, '2020-06-06 03:40:27'),
(2, 'panjicv4ever@gmail.com', 1, 2, '2020-06-06 03:40:43'),
(3, 'panjicv4ever@gmail.com', 1, 1, '2020-06-06 04:20:22'),
(4, 'panjicv4ever@gmail.com', 1, 1, '2020-06-06 04:20:35'),
(5, 'panjicv4ever@gmail.com', 6, 1, '2020-06-06 09:55:18'),
(6, 'panjicv4ever@gmail.com', 6, 1, '2020-06-06 10:04:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_list_barang`
--
ALTER TABLE `tb_list_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pembelian_barang`
--
ALTER TABLE `tb_pembelian_barang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_list_barang`
--
ALTER TABLE `tb_list_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_pembelian_barang`
--
ALTER TABLE `tb_pembelian_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
