-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2023 at 05:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sig_map4`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_restoran` int(8) NOT NULL,
  `nama_restoran` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `deskripsi` text NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_restoran`, `nama_restoran`, `alamat`, `deskripsi`, `latitude`, `longitude`) VALUES
(1, 'McDonald`s Kartini Depok', 'Jl. Raya Citayam, RT.3/RW.2, Depok, Kec. Pancoran Mas, Kota Depok, Jawa Barat 16431', 'McDonald`s Kartini Depok', '-6.408613047681637', ' 106.81763000524256'),
(2, 'Steak Moen-Moen', 'Jl. Kartini No.3, Depok, Kec. Pancoran Mas, Kota Depok, Jawa Barat 16431', 'Steak Moen-Moen', '-6.404881345268048', '106.81870606755149'),
(38, 'JPW Cafe & Garden', 'Ruko Verbena D Jl. Boulevard Grand Depok City No.16, Tirtajaya, Kec. Sukmajaya, Kota Depok, Jawa Barat 16412', 'JPW Cafe & Garden', '-6.41329668724731', '106.82135381201581'),
(39, 'KFC Grand Depok City', '', 'KFC Grand Depok City', '-6.414975249954562', '106.82097807135497'),
(40, 'Meet Up Cafe Sawangan', 'Jl. Raya Sawangan No.19, Pancoran MAS, Kec. Pancoran Mas, Kota Depok, Jawa Barat 16436', 'Meet Up Cafe Sawangan', '-6.398521677332364', '106.81044660493245'),
(41, 'Mie Gacoan Depok', 'Jl. Margonda Raya No.23, Depok, Kec. Pancoran Mas, Kota Depok, Jawa Barat 16431', 'Mie Gacoan Depok', '-6.3969511768086775 ', '106.8214461266841'),
(54, 'Shabu Hachi Depok', 'Jl. Margonda No.2, Depok, Kec. Pancoran Mas, Kota Depok, Jawa Barat 16431', 'Shabu Hachi', '-6.3930910269671655', '106.82421054561708');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_restoran`),
  ADD UNIQUE KEY `nama_restoran` (`nama_restoran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_restoran` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
