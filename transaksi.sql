-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Sep 2023 pada 19.45
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
-- Database: `transaksi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `harga_barang` decimal(10,2) NOT NULL,
  `Jenis_barang` varchar(20) NOT NULL,
  `id_toko` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `tanggal_transaksi`, `nama_barang`, `harga_barang`, `Jenis_barang`, `id_toko`) VALUES
(1, '2023-08-13', 'Indomie', '3000.00', 'makanan', 1),
(2, '2023-08-13', 'Intermie', '2500.00', 'makanan', 2),
(3, '2023-08-13', 'Mie gaga', '3000.00', 'makanan', 3),
(4, '2023-08-13', 'Mie sedap', '3000.00', 'makanan', 4),
(5, '2023-08-13', 'Mie Burung dara', '15000.00', 'makanan', 5),
(6, '2023-08-13', 'Mie bihun', '5000.00', 'makanan', 6),
(7, '2023-08-13', 'Mie ramen', '7000.00', 'makanan', 7),
(8, '2023-08-13', 'Mie sukses', '4000.00', 'makanan', 8),
(9, '2023-08-13', 'Mie seribu', '2000.00', 'makanan', 9),
(10, '2023-08-13', 'Mie lemonilo', '5000.00', 'makanan', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id_jenis_barang` int(11) NOT NULL,
  `jenis_barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_jenis_barang`, `jenis_barang`) VALUES
(1, 'makanan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(255) NOT NULL,
  `alamat_pembeli` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `alamat_pembeli`) VALUES
(1, 'Jauza', 'Yogyakarta'),
(2, 'Hafis', 'Yogyakarta'),
(3, 'Vito', 'Yogyakarta'),
(4, 'El', 'Yogyakarta'),
(5, 'Rafael', 'Yogyakarta'),
(6, 'Dirga', 'Yogyakarta'),
(7, 'Syafiq', 'Yogyakarta'),
(8, 'Ronald', 'Yogyakarta'),
(9, 'Karl', 'Yogyakarta'),
(10, 'Nanda', 'Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_suppolier` int(11) NOT NULL,
  `nama_supplier` varchar(20) NOT NULL,
  `alamat_supplier` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_suppolier`, `nama_supplier`, `alamat_supplier`) VALUES
(1, 'PT.IndoAhZu', 'Jakarta'),
(2, 'PT.IndoAhZu', 'Jakarta'),
(3, 'PT.IndoAhZu', 'Jakarta'),
(4, 'PT.IndoAhZu', 'Jakarta'),
(5, 'PT.IndoAhZu', 'Jakarta'),
(6, 'PT.IndoAhZu', 'Jakarta'),
(7, 'PT.IndoAhZu', 'Jakarta'),
(8, 'PT.IndoAhZu', 'Jakarta'),
(9, 'PT.IndoAhZu', 'Jakarta'),
(10, 'PT.IndoAhZu', 'Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(20) NOT NULL,
  `pemilik_toko` varchar(20) NOT NULL,
  `id_suppolier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `pemilik_toko`, `id_suppolier`) VALUES
(1, 'Toko Subroto', 'Pak Subroto', 1),
(2, 'Toko Subroto', 'Pak Subroto', 2),
(3, 'Toko Subroto', 'Pak Subroto', 3),
(4, 'Toko Subroto', 'Pak Subroto', 4),
(5, 'Toko Subroto', 'Pak Subroto', 5),
(6, 'Toko Subroto', 'Pak Subroto', 6),
(7, 'Toko Subroto', 'Pak Subroto', 7),
(8, 'Toko Subroto', 'Pak Subroto', 8),
(9, 'Toko Subroto', 'Pak Subroto', 9),
(10, 'Toko Subroto', 'Pak Subroto', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_barang`
--

CREATE TABLE `transaksi_barang` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_beli_barang` int(11) NOT NULL,
  `total_bayar` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi_barang`
--

INSERT INTO `transaksi_barang` (`id_transaksi`, `tanggal_transaksi`, `id_pembeli`, `id_barang`, `jumlah_beli_barang`, `total_bayar`) VALUES
(1, '2023-08-13', 1, 1, 2, '6000.00'),
(2, '2023-08-13', 2, 2, 3, '7500.00'),
(3, '2023-08-13', 3, 3, 5, '15000.00'),
(4, '2023-08-13', 4, 4, 4, '12000.00'),
(5, '2023-08-13', 5, 5, 1, '15000.00'),
(6, '2023-08-13', 6, 6, 2, '10000.00'),
(7, '2023-08-13', 7, 7, 3, '21000.00'),
(8, '2023-08-13', 8, 8, 9, '36000.00'),
(9, '2023-08-13', 9, 9, 2, '4000.00'),
(10, '2023-08-13', 10, 10, 10, '50000.00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id_jenis_barang`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_suppolier`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indeks untuk tabel `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pembeli` (`id_pembeli`),
  ADD KEY `id_barang` (`id_barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  MODIFY `id_jenis_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_suppolier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  ADD CONSTRAINT `transaksi_barang_ibfk_1` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`),
  ADD CONSTRAINT `transaksi_barang_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
