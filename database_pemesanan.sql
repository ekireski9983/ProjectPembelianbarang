-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2023 pada 05.44
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_pemesanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_atk`
--

CREATE TABLE `tabel_atk` (
  `kode_Barang` varchar(20) NOT NULL,
  `Nama_barang` varchar(40) NOT NULL,
  `Harga_beli` varchar(40) NOT NULL,
  `Harga_jual` varchar(40) NOT NULL,
  `stok` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_atk`
--

INSERT INTO `tabel_atk` (`kode_Barang`, `Nama_barang`, `Harga_beli`, `Harga_jual`, `stok`) VALUES
('BRO1', 'Monitor LG', '1000000', '1200000', '25'),
('BR02 ', 'Mouse Logitec ', '240000', '270000', '30'),
('BR03 ', 'Keyboard', '250000', '275000', '30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `Kode_Supplier` varchar(30) NOT NULL,
  `Nama_Supplier` varchar(30) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Telepon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`Kode_Supplier`, `Nama_Supplier`, `Alamat`, `Telepon`) VALUES
('S100001 ', 'Toko Elect Comp ', 'Jakarta', '021-8976543'),
('S100002 ', 'PT Alexandra in ', 'Jakarta', '021-6789023'),
('S100003', 'PT Digital S ', 'Jakarta', '021-7654329');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transpelanggan`
--

CREATE TABLE `tbl_transpelanggan` (
  `No_transaksi` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_barang` varchar(30) NOT NULL,
  `kode_supplier` varchar(30) NOT NULL,
  `Qty` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_transpelanggan`
--

INSERT INTO `tbl_transpelanggan` (`No_transaksi`, `tanggal`, `kode_barang`, `kode_supplier`, `Qty`) VALUES
('TRS01 ', '2021-07-27', 'BR02 ', 'S100001 ', '4'),
('TRS02 ', '2021-07-27', 'BR03 ', 'S100002 ', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `nama`, `username`, `password`) VALUES
(1, 'Rezky jayadi saputrra', 'Rezky jayadi saputra', 'admin1234');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
