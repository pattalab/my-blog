-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 08:43 AM
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
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Pakaian Pria'),
(2, 'Pakaian Wanita'),
(3, 'Aksesoris Pria'),
(4, 'Aksesoris Wanita'),
(5, 'Pakaian Unisex'),
(6, 'Aksesoris Unisex'),
(0, 'Sepatu Pria');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersediaan_stok` enum('Habis','Tersedia') DEFAULT 'Tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`) VALUES
(1, 1, 'Sweater Hoodie Pria Cottonology Feel Cream', 175000, 'SRi69fJYjaFT5ofUJmgd.jpg', 'DETAIL HOODIE\r\nLong sleeve jaket\r\nDidesain trendy\r\nDetail hoodie, drawstring, front pocket\r\nRibbed of cuff &amp; hem sehingga nyaman ketika digunakan\r\nMaterial : Fleece\r\n\r\nSize Chart\r\nPanjang badan x Lebar badan x Panjang tangan\r\nS ( 68 cm x 57 cm x 57 cm )\r\nM ( 70 cm x 57.5cm x 59.5 cm )\r\nL ( 72 cm x 58 cm x 61cm )\r\nXL ( 74 cm x 60 cm x 61.5cm )\r\nXXL ( 76 cm x 62 cm x 65.5 cm )', 'Tersedia'),
(3, 1, 'Kemeja Lengan Panjang Pria Cottonology Hella Putih - XL', 139000, 'iKN0gQ2rGaH0cocU3d2I.jpg', 'DETAIL KEMEJA\r\n\r\nLong sleeves shirt\r\nDdidesain casual\r\nPointed collar, front button opening, dan detail button of cuffs\r\nNyaman digunakan\r\nMaterial : Katun Oxford\r\n\r\nSIZE CHART KEMEJA PANJANG\r\nSize S\r\nPanjang Bahu : 43 cm, Panjang Lengan : 63 cm, Lingkar Dada : 98 cm, Lingkar Pinggang : 94 cm\r\nSize M\r\nPanjang Bahu : 44 cm, Panjang Lengan : 64 cm, Lingkar Dada : 102 cm, Lingkar Pinggang : 94 cm\r\nSize L\r\nPanjang Bahu : 47 cm, Panjang Lengan : 65 cm, Lingkar Dada : 106 cm, Lingkar Pinggang : 102 cm\r\nSize XL\r\nPanjang Bahu : 48 cm, Panjang Lengan : 66 cm, Lingkar Dada : 110 cm, Lingkar Pinggang : 106 cm\r\nSize XXL\r\nPanjang Bahu : 49 cm, Panjang Lengan : 67 cm, Lingkar Dada : 114 cm, Lingkar Pinggang : 110 cm\r\n: Panjang Baju kemeja\r\nS: 72 cm , M : 74 cm , L : 76 cm , XL : 78 cm , XXL : 80 cm', 'Tersedia'),
(4, 3, 'Gelang Kulit Pria Aksesoris Fashion Premium Man Leather Bracelet - FL04 Coklat', 45000, 'mcKJjhhxdDKiwJNf5zOF.jpg', 'D E T A I L S GELANG :\r\n\r\n* Varian : GP1 , GP2 , GP3 , FL07\r\n- Bahan : Kulit ( Leather Premium )\r\n- Uk Panjang : 21 cm\r\n- Ketebalan : 5 mm\r\n- Material : Full grain lambskin leather\r\n- Hardware : Hypoallergenic steel\r\n\r\n* Varian : FL04 , FL02\r\n- Bahan : Kulit ( Leather Premium )\r\n- Uk Panjang : 21 cm\r\n- Ketebalan : 5 mm\r\n- Material : Full grain lambskin leather\r\n- Hardware : Hypoallergenic steel\r\n- Gelang Dapat Di potong Sendiri Jika Kepanjangan/Kebesaran Ditangan.', 'Tersedia'),
(5, 4, 'Sirkam Gold Aksesoris Rambut - Jepit Sanggul Wanita- Sirkam lima sisir - Model 2-BC', 19900, 'xkHrl5j1d8RXF2yLembS.jpg', '100% Brand New,High Quality!\r\n\r\nProduct Description:\r\nItem: Hair Clip Model\r\nApplicable for: Women,Girls\r\nColor: as shown on variant picture\r\nOccasion: Daily ,Engagement,Anniversary,Gift,Party etc.\r\nDimension: around 7-8 cm (length)\r\nPackaging includes:1 Pcs', 'Tersedia'),
(6, 6, 'Naughty Accessories Topi Unisex - FCP191200462 (1) - C BLACK', 50000, 'jHljUuF2L633K5287u0t.jpg', 'Produk 100% Original Naughty Accessories\r\n\r\nTopi kekinian dengan motif simple nyaman dan cocok digunakan remaja dan dewaa\r\nsehari-hari dapat menunjang penampilan ootd anda .\r\n\r\nModel : Naughty Accessories Fashion Topi Unisex\r\nSku : FCP211200489\r\nDimensi : P 30cm x L 21cm x T 16cm Diameter kepala up to 56cm (toleransi uk. 2-3cm karena pengukuran manual)\r\nBerat : 85gr', 'Tersedia'),
(7, 5, 'TERLARIS KAOS BIG SIZE UNISEX KAOS IMUT REAL SIZE PAKAIAN KASUAL JUMBO - Hitam, 6xl', 99000, 'Bi7Pku3jvM17klGXRwSq.jpg', 'T-SHIRT OUTFITBIGSIZE SALAH SATU PAKAIAN TERBAIK DAN BERKUALITAS TINGGI YANG AKAN MENJADI LOCAL BRAND DI INDONESIA KHUSUS UNTUK YANG BERBADAN LEBAR, OVER BIG SIZE. OVER SIZE DAN GEMUK AGAR BISA TAMPIL DENGAN PERCAYA DIRI MENGIKUTI PERKEMBANGAN ERA MODERN,DI BUAT DENGAN BAHAN COTTON YANG NYAMAN UNTUK KESEHARIAN\r\nBAHAN : 100% COTTON COMBED 30 S\r\nSIZE CHARTS\r\n2XL : PANJANG 80 X LEBAR 62 X LINGKAR DADA 124\r\n3XL : PANJANG 82 X LEBAR 65 X LINGKAR DADA 130\r\n4XL : PANJANG 84 X LEBAR 70 X LINGKAR DADA 140\r\n5XL : PANJANG 86 X LEBAR 75 X LINGKAR DADA 150\r\n6XL : PANJANG 88 X LEBAR 80 X LINGKAR DADA 160', 'Tersedia'),
(8, 2, 'Kalong Zhacya-Full Kancing-Crop Top-Atasan-Pakaian Wanita-Baju Murah-B', 54000, 'deWms9jVcExY7CM8OdN3.jpg', 'Warna : Hitam, Putih, Abu Muda, Salur Salam, Abu Tua, Peach, Pink Fanta, Biru, Hijau Fuji, Kuning Polos, Salur-1, Ungu Muda, Hijau Army, Ungu Tua, Motif-1, Navy, Motif-2, Pink Polos, Salam, Cream, Abu Tuton, Merah Bata, Kuning Mustard, Hijau Muda, Motif Abu, Biru Muda, Hijau, Motif-5, Motif-6, Tosca Tua, Motif Cream, Motif Salam, Tosca Muda, Hijau Lemon, Motif-3, Salur-2, Salur-3, Motif-4, Salur-4, Salur-5\r\nUkuran : All Size', 'Tersedia'),
(9, 1, 'Pakaian wanita atasan katun supernova abu', 52000, 'cjHOKSIU5gjYjJmk4yQ0.jpg', 'Kondisi: Baru\r\nBerat Satuan: 200 g\r\nKategori: Blouse Wanita\r\nEtalase: Semua Etalase', 'Tersedia'),
(0, 0, 'SEPATU SLIP ON PRIA TERBARU ONKE AL03 SEPATU PRIA TERMURAH - ABU, 40', 41670, 'uMZjnspwKHlznWx5VOA3.jpg', 'PROMO!!!!!\r\nSLIP ON PRIA TERBARU ONKE\r\ndi produksi dengan bahan pilihan\r\nmotif sablon atau print, memakai bahan halus\r\nsol anti slip atau g licin&amp;lentur\r\nlangsung dari pengrajin atau produksi sndiri\r\ntersedia varian warna: hitam dan abu\r\ntersedia ukuran: 38 39 40 41 42 43\r\n\r\nPanduan Size\r\n\r\n- Size 37 = 23 cm\r\n-Size 38 = 24 cm\r\n- Size 39 = 25 cm\r\n- Size 40 = 26 cm\r\n- Size 41 = 27 cm\r\n- Size 42 = 28 cm\r\n- Size 43 = 29 cm', 'Tersedia'),
(0, 0, 'Brygan Sepatu Kerja Pantofel Casual Fantofel Formal Pria S Derby Hitam - Hitam,39', 250000, 'FTy7Pzjs8TjSADdlTTht.jpg', 'Sanada Derby Black\r\nSepatu yg di desain untuk kamu yg mempunyai mobilitas tinggi.\r\nMaterial pull-up leather yg powerfull, akan memberi kesan skin on point untuk setiap hari-harimu. Solusi outfit kantor yg tetap terlihat keren.\r\n\r\nSpesifikasi:\r\nReady Size 39 40 41 42 43 44\r\nSemi Pullup Leather 1.8 mm\r\nSynthetic Leather Insole And Linning\r\nMicro Fibber Outsole Brygacraftmanship Marking\r\nHigh Pressure Cemented', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$hI9vW.KZtN9O1grbPpGKcuQxYQIY2Nj4n/C6xsD1KgBfHcUrjxXam');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
