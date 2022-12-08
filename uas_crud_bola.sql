-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Des 2022 pada 05.46
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_crud_bola`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun_admin`
--

CREATE TABLE `akun_admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun_admin`
--

INSERT INTO `akun_admin` (`id`, `nama`, `password`) VALUES
(1, 'admin', '123'),
(3, 'josia', '123'),
(7, 'tes', '123'),
(8, 'windah', '123'),
(9, 'tes1', '123'),
(10, 'oi', '123'),
(12, 'josia1', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deletedcrud`
--

CREATE TABLE `deletedcrud` (
  `nama` varchar(50) DEFAULT NULL,
  `nomor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `deletedcrud`
--

INSERT INTO `deletedcrud` (`nama`, `nomor`) VALUES
('TES', 1),
('TES', 2),
('TES', 3),
('NEYMAR', 4),
('LOS', 5),
('LOSA', 6),
('LOS', 7),
('mbappe', 8),
('TES', 9),
('TES', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_pemain`
--

CREATE TABLE `list_pemain` (
  `Nama` varchar(15) NOT NULL,
  `overall` int(3) DEFAULT NULL,
  `Skill` varchar(15) DEFAULT NULL,
  `No_punggung` int(3) DEFAULT NULL,
  `Posisi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `list_pemain`
--

INSERT INTO `list_pemain` (`Nama`, `overall`, `Skill`, `No_punggung`, `Posisi`) VALUES
('BENZEMA', 100, 'BALONDOR', 9, 'STRIKER'),
('LEWANDOWSKI', 90, 'NYUNDUL', 9, 'STRIKER'),
('MAGUIRE', 30, 'LARI', 5, 'BEK'),
('MBAPPE', 98, 'FINISHING', 7, 'STRIKER'),
('MESSI', 98, 'DRIBBLE', 30, 'STRIKER'),
('NEYMAR', 95, 'DIVING', 10, 'STRIKER'),
('PIQUE', 89, 'SLEDING', 4, 'BEK'),
('RONALDO', 99, 'SALTO', 7, 'STRIKER'),
('SUAREZ', 90, 'MENGIGIT', 9, 'STRIKER'),
('YANTO', 40, 'SLEDING', 3, 'GELANDANG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_pemain_permanen`
--

CREATE TABLE `list_pemain_permanen` (
  `Nama` varchar(15) NOT NULL,
  `overall` int(3) DEFAULT NULL,
  `Skill` varchar(15) DEFAULT NULL,
  `No_punggung` int(3) DEFAULT NULL,
  `Posisi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `list_pemain_permanen`
--

INSERT INTO `list_pemain_permanen` (`Nama`, `overall`, `Skill`, `No_punggung`, `Posisi`) VALUES
('BENZEMA', 100, 'BALONDOR', 9, 'STRIKER'),
('DEDO', 98, 'JUNGKIR BALIK', 1, 'Bek'),
('LEWANDOWSKI', 90, 'NYUNDUL', 9, 'STRIKER'),
('MAGUIRE', 30, 'LARI', 5, 'BEK'),
('MBAPPE', 98, 'FINISHING', 7, 'STRIKER'),
('MESSI', 98, 'DRIBBLE', 30, 'STRIKER'),
('NEYMAR', 95, 'DIVING', 10, 'STRIKER'),
('PIQUE', 89, 'SLEDING', 4, 'BEK'),
('RONALDO', 99, 'SALTO', 7, 'STRIKER'),
('SUAREZ', 90, 'MENGIGIT', 9, 'STRIKER'),
('YANTO', 40, 'SLEDING', 3, 'GELANDANG'),
('LOS', 1, '1', 1, '1'),
('LOS', 1, '1', 1, '1'),
('LOSA', 1, '1', 1, '1'),
('TES', 1, '1', 1, '1'),
('TES', 1, '1', 1, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `yang_login`
--

CREATE TABLE `yang_login` (
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `yang_login`
--

INSERT INTO `yang_login` (`nama`) VALUES
('josia1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun_admin`
--
ALTER TABLE `akun_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_unik` (`nama`);

--
-- Indeks untuk tabel `deletedcrud`
--
ALTER TABLE `deletedcrud`
  ADD PRIMARY KEY (`nomor`);

--
-- Indeks untuk tabel `list_pemain`
--
ALTER TABLE `list_pemain`
  ADD UNIQUE KEY `nama_unik` (`Nama`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun_admin`
--
ALTER TABLE `akun_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `deletedcrud`
--
ALTER TABLE `deletedcrud`
  MODIFY `nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
