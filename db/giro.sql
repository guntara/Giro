-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 28, 2013 at 11:59 AM
-- Server version: 5.5.32-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `giro`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE IF NOT EXISTS `tbl_customers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `erp_id` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `erp_id` (`erp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=161 ;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `erp_id`, `company_name`, `address`) VALUES
(21, '191 Benua Melayu 2', '191 Benua Melayu 2', 'Jl. Sultan mahmud No. 191 Kel. Benua Melayu Kec. Pontianak Selatan'),
(22, 'Abun Batako Sungai Raya 2', 'Abun Batako Sungai Raya 2', 'Jl. Sungai Raya Dalam Kel. SungaiRaya Kec. Sungai Raya'),
(23, 'Achuan Peniti Sui Pinyuh 2', 'Achuan Peniti Sui Pinyuh 2', 'Jl. Peniti Kel. Sui Pinyuh Kec. -'),
(24, 'Afa Singkawang 2', 'Afa Singkawang 2', 'Jl. Tanjung Gundul Kel. Singkawang Kec. -'),
(25, 'Agus Saigon 2', 'Agus Saigon 2', 'Jl. Tanjung Raya Kel. Saigon Kec. Pontianak Timur'),
(26, 'Ajin Singkawang 2', 'Ajin Singkawang 2', 'Jl. Sejahtera Kel. SIngkawang Kec. -'),
(27, 'Akiong Benua Melayu Darat 2', 'Akiong Benua Melayu Darat 2', 'Jl. Gajah Mada'),
(28, 'Aku Sucipto Parit Tokaya 2', 'Aku Sucipto Parit Tokaya 2', 'Jl. Perdana Komp. Ruko Perdana Square No. 18 D Kel. Parit Tokaya Kec. Pontianak Selatan'),
(29, 'Alfianto Benua Melayu Darat 2', 'Alfianto Benua Melayu Darat 2', 'Jl. Tanjung Sari No. 8 Kel. Benua Melayu Darat Kec. Pontianak Selatan'),
(30, 'Amerta Sanggau 2', 'Amerta Sanggau 2', 'Jl. A. Yani No. 210 b-c Kel. Sanggau Kec. -'),
(31, 'Aneka Jaya Putussibau 2', 'Aneka Jaya Putussibau 2', 'Jl. Merdeka Kel. Putussibau Kec. -'),
(32, 'Aneka Maju Tebas 2', 'Aneka Maju Tebas 2', 'Jl. Raya Sempalai Kel. Tebas Kec. -'),
(33, 'Angim Saigon 2', 'Angim Saigon 2', 'Jl. Tanjung Hulu Kel. Saigon Kec. Pontianak Timur '),
(34, 'Anugrah Jaya Kubu Raya 2', 'Anugrah Jaya Kubu Raya 2', 'Jl. Trans Kalimantan Kel. Kubu Raya Kec. Ambawang'),
(35, 'Anugrah Mobil Ngabang 2', 'Anugrah Mobil Ngabang 2', 'Jl. Raya Ngabang Kel. Ngabang Kec. - '),
(36, 'Apeng Batako Sungai Raya 2', 'Apeng Batako Sungai Raya 2', 'Jl. Sungai Raya Dalam Kel. Sungai Raya Kec. -'),
(37, 'Ari Zona Siantan Tengah 2', 'Ari Zona Siantan Tengah 2', 'Jl. Khatulistiwa Kel. Siantan Tengah Kec. Pontianak Utara'),
(38, 'Asip Siantan Tengah 2', 'Asip Siantan Tengah 2', 'Jl. Gusti Situt Mahmut Kel. Siantan Tengah Kec. Pontianak Utara'),
(39, 'Aston Benua Melayu Darat 2', 'Aston Benua Melayu Darat 2', 'Jl. Gajah Mada Kel. Benua Melayu Darat Kec. Pontianak Selatan '),
(40, 'AUI Darat Skip 2', 'AUI Darat Skip 2', 'Jl. Nusa Indah 3'),
(41, 'Aw Jaya Sambas 2', 'Aw Jaya Sambas 2', 'Jl. sebawi Kel. Sambas Kec. Sambas '),
(42, 'Bangun Jaya Putussibau 2', 'Bangun Jaya Putussibau 2', 'Jl. Merdeka No. 31 kel. Putussibau Kec. - '),
(43, 'Bangunan Kelapa Empat Jaya Singkawang 2', 'Bangunan Kelapa Empat Jaya Singkawang 2', 'Jl. Raya Kelapa Empat Sungai Duri Kel. Singkawang Kec. - '),
(44, 'Bangunan Naisah Sungai Renggas 2', 'Bangunan Naisah Sungai Renggas 2', 'Jl. Komyos Sudarso Kel. Sungai Renggas Kec. Kakap '),
(45, 'Bintang Timur Sanggau 2', 'Bintang Timur Sanggau 2', 'Jl. Jendral Sudirman No. 67-68 Kel. Sanggau Kec. -'),
(46, 'Budi Jaya Siantan Hilir 2', 'Budi Jaya Siantan Hilir 2', 'Jl. Budi utomo samping sungai selamat Kel. Siantan Hilir Kec. Pontianak Utara'),
(47, 'Cendana Kencana Semesta Benua Melayu Darat 2', 'Cendana Kencana Semesta Benua Melayu Darat 2', 'Jl. Suprapto 4 No. 8 Kel. Benua Melayu Darat Kec. Pontianak Selatan'),
(48, 'Cipta Sarana Sanggau 2', 'Cipta Sarana Sanggau 2', 'Jl. N. R. E Martadinata No. 9a Kel. Sanggau Kec. -'),
(49, 'Citra Bangunan Putussibau 2', 'Citra Bangunan Putussibau 2', 'Jl. Diponegoro Kel. Putussibau Kec. -'),
(50, 'Citra Material Batu Layang 2', 'Citra Material Batu Layang 2', 'Jl. Khatulistiwa No. 597 KM 6 Kel. Batu Layang Kec. Pontianak Utara'),
(51, 'CUST00010', 'Usaha Mandiri Siantan Hilir 2', 'Jl. Khatulistiwa No. 153 Kel. Siantan Hilir Kec. Pontianak Utara '),
(52, 'CUST00014', 'Propit Sungai Jawi Luar 2', 'Jl. komyos sudarsono depan rumah susun Kel. Sungai Jawi Luar Kec. Pontianak Barat'),
(53, 'CUST00016', 'Eka Jaya Mandiri Tanjung Hulu 2', 'Jl. Yam sabran No. 96 Kel. Tanjung Hulu Kec. Pontianak Timur '),
(54, 'CUST00017', 'Mitra Bangunan Tanjung Hulu 2', 'Jl. Panglima aim No. 8, 9, 10 Kel. Tanjung Hulu Kec. Pontianak Timur '),
(55, 'CUST00019', 'Sinar Baru Tanjung Hulu 2', 'Jl. Panglima aim Kel. Tanjung Hulu 2 Kec. Pontianak Timur '),
(56, 'CUST00020', 'Batako Sungai Raya 2', 'Jl. Arteri Supadio Kel. Sungai Raya Kec. Sungai Raya'),
(57, 'CUST00021', 'Hasil Kembang Alam Tanjung Hulu 2', 'Jl. Y. M Sabran No. 88 Kel. Tanjung Hulu Kec. Pontianak Timur'),
(58, 'CUST00024', 'Artha Borneo Saigon 2', 'Jl. Tanjung raya II Kel. Saigon  Kec. Pontianak Timur '),
(59, 'CUST00028', 'Yosua Bengkayang 2', 'Jl. Bengkayang Kel. Bengkayang '),
(60, 'CUST00032', 'Makmur Lestari Siantan Hulu 2', 'Jl. 28 Oktober No. 34 Kel. Siantan Hulu Kec. Pontianak Utara'),
(61, 'CUST00034', 'Mujur Material II Siantan Hilir 2', 'Jl. Budi utomo No. 8 Kel. Siantan Hilir Kec. Pontianak Utara'),
(62, 'CUST00035', 'Sarana Utama SIantan Hilir 2', 'Jl. Budi utomo No. 21 Kel. Siantar Hilir Kec. Pontianak Utara'),
(63, 'CUST00036', 'Semangat Bersama Siantan Hilir 2', 'Jl. Budi utomo No. 1 Kel. Siantan Hilir Kec. Pontianak Utara'),
(64, 'CUST00042', 'Rudi Sungai Jawi Luar 2', 'Jl. Ampera Kel. Sungai Jawi Luar Kec. Pontianak Barat'),
(65, 'CUST00047', 'Bangunan Cahaya Pandan 2', 'Jl. Cahaya Pandang Kel. Nangah Pinoh Kec. -'),
(66, 'CUST00048', 'Zubaidah Kapur 2', 'Perumahan Agung Desa Kapur Kec. -'),
(67, 'CUST00051', 'Strada Multi Perkasa Parit Tokaya 2', 'Jl. Veteran Kel. Parit Tokaya Kec. Pontianak Selatan'),
(68, 'CUST00052', 'Sumber Alam Parit Tokaya 2', 'Jl. Perdamaian Kel. Parit Tokaya Kec. Pontianak Selatan'),
(69, 'CUST00053', 'Doni Semparuk Sambas 2', 'Jl. Sambas Kel. Sambas Kec. -'),
(70, 'CUST00055', 'Bintang Karya Persada Benua Melayu Darat 2', 'Jl. BLKI Kel. Benua Melayu Darat Kec. Pontianak Selatan '),
(71, 'CUST00056', 'Heri Sungai Raya Dalam 2', 'Jl. Adi Sucipto Kel. Sungai Raya Dalam Kec. Pontianak Selatan'),
(72, 'CUST00060', 'Sumber Rezeki Sintang 2', 'Jl. Jurusan komp. BTN Sintang Kel. Sintang Kec. -'),
(73, 'CUST00062', 'Hendy Benua Melayu Darat 2', 'Jl. Budi Karya Kel. Benua Melayu Darat Kec. Pontianak Selatan'),
(74, 'CUST00064', 'Bahan Siaga Sungai Raya 2', 'Jl. A. Yani Kel. Sungai Raya Kec. Kubu Raya'),
(75, 'CUST00068', 'Adil Bahagia Singkawang 2', 'Jl. Raya Lirang No. 37 Kel. Singkawang Kec. - '),
(76, 'CUST00071', 'Baru SIngkawang 2', 'Jl. Raya Baru No. 36 Sei Duri Kel. Singkawang Kec. -'),
(77, 'CUST00072', 'Ferry Parit Tokaya 2', 'Jl. Purnama Kel. Parit Tokaya Kec. Pontianak Selatan'),
(78, 'CUST00077', 'Agung Perkasa Sanggau 2', 'Jl. Penyrladi Sanggau Kel. Sanggau Kec. -'),
(79, 'CUST00081', 'Kubu Indah Sungai Raya 2', 'Jl. Adi Sucipto KM 13 GG. lintang Kel. Sungai Raya Kec. Pontianak Selatan'),
(80, 'Delta Prima Khatulistiwa Kubu Raya 2', 'Delta Prima Khatulistiwa Kubu Raya 2', 'Jl. Kampung Jawa Kel. Kubu Raya Kec. Ambawang'),
(81, 'Deni Sungai Jawi Dalam 2', 'Deni Sungai Jawi Dalam 2', 'Jl. H. A Rachman Gg. Keluarga Kel. Sungai Jawi Dalam Kec. Pontianak Barat'),
(82, 'Dimensi Bangunan Siantan Tengah 2', 'Dimensi Bangunan Siantan Tengah 2', 'Jl. Gusti Mahmud Kel. Siantan Tengah Kec. Pontianak Utara'),
(83, 'Eria Makmur Pontianak Tenggara 2', 'Eria Makmur Pontianak Tenggara 2', 'Jl. Adi Sucipto Kel. - Kec. Pontianak Tenggara '),
(84, 'Fahmi Sungai Jawi Dalam 2', 'Fahmi Sungai Jawi Dalam 2', 'Jl. Alianyang Kel. Sungai Jawi Dalam Kec. Pontianak Barat '),
(85, 'Fajar Jaya Putussibau 2', 'Fajar Jaya Putussibau 2', 'Jl. Komyos Sudarso No. 688 Kel. Putussibau Kec. -'),
(86, 'Fajar Kencana Sungai Jawi Luar 2', 'Fajar Kencana Sungai Jawi Luar 2', 'Jl. Tabrani Ahmad Kel.  Sungai Jawi Luar Kec. Pontianak Barat'),
(87, 'Fantasi Sintang 2', 'Fantasi Sintang 2', 'Jl. Lintas Melawi Kel. SIntang Kec. -'),
(88, 'Gunung Mas Putussibau 2', 'Gunung Mas Putussibau 2', 'Jl. Komyos Sudarso No. 78 Kel. Putussibau Kec. -'),
(89, 'Harapan Masa Saigon 2', 'Harapan Masa Saigon 2', 'Jl. Tanjung Raya II Kel. Saigon Kec. Pontianak Timur'),
(90, 'Hasan Tebas 2', 'Hasan Tebas 2', 'Jl. Tebas Kel. Tebas Kec. -'),
(91, 'Herman Melayu Darat  2', 'Herman Melayu Darat  2', 'Jl. Karangan Block C No. 9 Kel. Melayu Darat Kec. Pontianak Selatan '),
(92, 'Herry Darat Skip 2', 'Herry Darat Skip 2', 'Jl. Sisingamaharaja Kel. Darat Skip Kec. Pontianak Selatan'),
(93, 'Indra Jaya Singkawang 2', 'Indra Jaya Singkawang 2', 'Jl. Krisdasana No. 3 Kel. Singkawang Kec. -'),
(94, 'Inti Jaya Siantan Tengah 2', 'Inti Jaya Siantan Tengah 2', 'Jl. Khatulistiwa Kel. Siantan Tengah Kec. Pontianak Utara Kab. Pontianak'),
(95, 'Jakarta Singkawang 2', 'Jakarta Singkawang 2', 'Jl. Sejahtera No. 66 Kel. Singkawang Kec. -'),
(96, 'Joko Sungai Raya 2', 'Joko Sungai Raya 2', 'Jl. Sungai Raya Kel. Sungai Raya Kec. Pontianak Utara'),
(97, 'K Saman Sanggau 2', 'K Saman Sanggau 2', 'Jl. Cik Ditiro No. 159 Kapuas Kanan Hulu Kel. Sangau  Kec. -'),
(98, 'Kalimantan Expres Benua Melayu Darat 2', 'Kalimantan Expres Benua Melayu Darat 2', 'Jl. Abdul Rachman Saleh No. A1'),
(99, 'Kapuas Karya Jaya Putussibau 2', 'Kapuas Karya Jaya Putussibau 2', 'Jl. Merdeka No. 15 Kel. Putussibau Kec. -'),
(100, 'Karya Cahaya (Ati) Singkawang 2', 'Karya Cahaya (Ati) Singkawang 2', 'Jl. Sei Garang Gudang Kel. Singkawang Kec.-'),
(101, 'Karya Cahaya Amy Singkawang 2', 'Karya Cahaya Amy Singkawang 2', 'Jl. Sejahtera (Gedung Krisdasana) Kel. Singkawag Kec. - '),
(102, 'Karya Cahaya Eni Singkawang 2', 'Karya Cahaya Eni Singkawang 2', 'Jl. Alianyang Singkawang Kel. Singkawang Kec. -'),
(103, 'Karya Cahaya Singkawang 2', 'Karya Cahaya Singkawang 2', 'Jl. Ratu Sepaduk Kel. Singkawang Kec. -'),
(104, 'Karya Hasil Sungai Pinyuh 2', 'Karya Hasil Sungai Pinyuh 2', 'Sungai pinyuh Kel. Sungai Pinyuh Kec. Sungai pinyuh Kab. Pontianak'),
(105, 'Karya Jaya Tanjung Hulu 2', 'Karya Jaya Tanjung Hulu 2', 'Jl. Yam Sabran Kel. Tanjung Hulu Kec. Pontianak Timur'),
(106, 'Koto Inti Lestari Sungai Raya 2', 'Koto Inti Lestari Sungai Raya 2', 'Jl. Adi sucipto Gg. Nurul huda Kel. Sungai Raya Kec. Pontianak Selatan '),
(107, 'Mansur Mempawah 2', 'Mansur Mempawah 2', 'Jl. Sui Dungun Kel. Mempawah Kec, - '),
(108, 'Masuni Kubu Raya 2', 'Masuni Kubu Raya 2', 'Jl. Sui Ambawang Kel. Kubu Raya Kec.-'),
(109, 'Masuri Parit Tokaya 2', 'Masuri Parit Tokaya 2', 'Jl. Perdamaian Kel. Parit Tokaya Kec. Pontianak Selatan'),
(110, 'Matahari Indah II Ngabang 2', 'Matahari Indah II Ngabang 2', 'Jl. Pulau Bendu No. 81 Kel. Ngabang Kec. -'),
(111, 'Mega Bangunan Sambas 2', 'Mega Bangunan Sambas 2', 'Jl. Raya Sambas Kel. Sambas Kec. -'),
(112, 'Mega Sari Utama Ketapang 2', 'Mega Sari Utama Ketapang 2', 'Jl. RM. Sudiono No. 6 Kel. Ketapang Kec. -'),
(113, 'Megah jaya Sungai Pinyuh 2', 'Megah jaya Sungai Pinyuh 2', 'Jl. Raya Sungai Pinyuh Kel. Sungai Pinyuh Kec. -'),
(114, 'Mengtong Sui Ambawang 2', 'Mengtong Sui Ambawang 2', 'Jl. Penjara Gg. Padi No. 8 Kel. Ambawang Kec. Pontianak Barat'),
(115, 'Mitra Nusantara Sintang 2', 'Mitra Nusantara Sintang 2', 'Jl. W.r Supratman'),
(116, 'Mitra Pal 4 Pal Empat 2', 'Mitra Pal 4 Pal Empat 2', 'Jl. Husein Hamzah Kel. Pal Empat Kec. Pontianak Barat'),
(117, 'Mitra Steel Sungai Bagkong 2', 'Mitra Steel Sungai Bagkong 2', 'Jl. Alianyang Kel. Sungai Bangkong Kec. Pontianak Barat '),
(118, 'Multi Jaya Sanggau 2', 'Multi Jaya Sanggau 2', 'Jl. Raya Sanggau Kel. Sanggau Kec. -'),
(119, 'Mustajab Jaya Jongkat 2', 'Mustajab Jaya Jongkat 2', 'Jl. Raya Jongkat Kel. Jongkat Kec. Jongkat Jaya'),
(120, 'Naga Berlian Siantan Tengah 2', 'Naga Berlian Siantan Tengah 2', 'Jl. Khatulistiwa Parit makmur  No. 32 Kel. Siantan Tengah Kec. Pontianak Utara'),
(121, 'Nanang Sambas 2', 'Nanang Sambas 2', 'Jl. Jawai Lel. Sambas Kec. -'),
(122, 'Nata Karya Sungai Raya Dalam 2', 'Nata Karya Sungai Raya Dalam 2', 'Jl. Adi Sucipto KM 8 Kel. Sungai Raya Dalam Kec. Pontianak Selatan'),
(123, 'NP Jaya Mandor 2', 'NP Jaya Mandor 2', 'Jl. Jurusan Ngabang Kel. Mandor Kec. -'),
(124, 'Oriental Steel Sungai Raya 2', 'Oriental Steel Sungai Raya 2', 'Jl. A. Yani 2 KM 16.2 Kel Sungai Raya Kec. Kubu Raya'),
(125, 'Pantas Tebas 2', 'Pantas Tebas 2', 'Jl. Raya Tebas Kel. Tebas Kec. -'),
(126, 'Perintis Jaya Sungai Pinyuh 2', 'Perintis Jaya Sungai Pinyuh 2', 'Sungai Pinyuh Kel. Sungai Pinyuh Kec. -'),
(127, 'Prima Sarana Siantan Tengah 2', 'Prima Sarana Siantan Tengah 2', 'Jl. Selat Sumba II No. 1  Kel. Siantan Tengah Kec. Pontianak Utara'),
(128, 'Putra Mandiri Darat Skip 2', 'Putra Mandiri Darat Skip 2', 'Jl. Gajah Mada No. 8 Kel. Darat Skip Kec. Pontianak Selatan '),
(129, 'Rachma Perkasa Sungai Raya 2', 'Rachma Perkasa Sungai Raya 2', 'Jl. Parit H. Muksin 2 kompleks Istana Kita No. 10 Kel. Sungai Raya Kec. -'),
(130, 'Raisman Pemangkat 2', 'Raisman Pemangkat 2', 'Desa Sala Tiga Kel. Pemangkat Kec. -'),
(131, 'Risman Pemangkat 2', 'Risman Pemangkat 2', 'Desa Sala Tiga'),
(132, 'Roda Jaya Nangah Pinoh 2', 'Roda Jaya Nangah Pinoh 2', 'Jl. Juang (depan Polsek) Kel. Nangah Pinoh Kec. -'),
(133, 'Royal Material Parit Tokaya (Along) 2', 'Royal Material Parit Tokaya (Along) 2', 'Jl. Ahmad Yani Samping Bank Permata Kel. Parit Tokaya Kec. Pontianak Selantan'),
(134, 'Salamsyah Saigon 2', 'Salamsyah Saigon 2', 'Jl. Tanjung Raya Kel. Saigon Kec. Pontianak Timuar'),
(135, 'Salimin Benua Melayu Laut 2', 'Salimin Benua Melayu Laut 2', 'Jl. Tanjung Pura Kel. Benua Melayu Laut Kec. Pontianak Selatan'),
(136, 'Sarana Jaya Batu Layang 2', 'Sarana Jaya Batu Layang 2', 'Jl. Raya Wajok Kel. Batu Layang Kec. Pontianak Timur'),
(137, 'Satria Jaya Multi Benua Melayu Laut 2', 'Satria Jaya Multi Benua Melayu Laut 2', 'Jl. Sultan Muhammad No. 99 Kel. Benua Melayu Laut Kec. Pontianak Selatan'),
(138, 'Sentosa Singkawang 2', 'Sentosa Singkawang 2 ', 'Jl. Jendral Sudirman N. 08 Pasar Roban Kel. Singkawang Kec. -'),
(139, 'Setia Jaya Pahoman 2', 'Setia Jaya Pahoman 2', 'Jl. Pahoman '),
(140, 'Sikin Parit Tokaya 2', 'Sikin Parit Tokaya 2', 'Jl. A. Yani 1 Kel. Parit Tokaya Kec. Pontianak Selatan '),
(141, 'Siman Bahar Wajok Hilir 2', 'Siman Bahar Wajok Hilir 2', 'Jl. Raya Wajok Hilir Kel. Wajok Hilir Kec. Siantan'),
(142, 'Sinar Anugerah Putussibau 2', 'Sinar Anugerah Putussibau 2', 'Jl. Muhammad Amin No. 27 Kel. Putussibau Kec. -'),
(143, 'Sinar Bangunan Sungai Jawi Dalam 2', 'Sinar Bangunan Sungai Jawi Dalam 2', 'Jl. Husein hamzah Kel. Sungai Jawi Dalam Kec. Pontianak Barat'),
(144, 'Sinar Baru Sambas 2', 'Sinar Baru Sambas 2', 'Jl. Sambas Kel. Sambas Kec. -'),
(145, 'Sinar Jaya Abadi Siantan Hulu 2', 'Sinar Jaya Abadi Siantan Hulu 2', 'Jl. Sei Ambawang '),
(146, 'Sinar Maju Siantan Hulu 2', 'Sinar Maju Siantan Hulu 2', 'Jl. Selat panjang Kel. Siantan Hulu Kec. Pontianak Utara'),
(147, 'Sinar Timur Singkawang 2', 'Sinar Timur Singkawang 2', 'Jl. Tani Kel. Singkawang Kec. -'),
(148, 'Sumber Abadi Sanggau 2', 'Sumber Abadi Sanggau 2', 'Jl. Kartini No. 52 Kel. Sanggau Kec. - '),
(149, 'Sumber Bangunan Pemangkat 2', 'Sumber Bangunan Pemangkat 2', 'Jl. Selakau Kel. Selakau Pemangkat '),
(150, 'Suparman Sungai Raya 2', 'Suparman Sungai Raya 2', 'Jl. Adi Sucipto Kel. Sungai Raya Kec. Pontianak Tenggara'),
(151, 'Syahril Kubu Raya 2', 'Syahril Kubu Raya 2', 'Jl. Trans Kalimantan KEl. Kubu Raya Kec. -'),
(152, 'Timur Jaya Kubu Raya 2', 'Timur Jaya Kubu Raya 2', 'Jl. A. Yani 2 (Sebelah Nasi Akuang) Kel. Kubu Raya Kec. Pontianak Selatan'),
(153, 'Tree Jaya Sekadu 2', 'Tree Jaya Sekadu 2', 'Jl. Raya Sekadau Kel. Sekadau Kec. - '),
(154, 'Tri Mobil Bangka Belitung 2', 'Tri Mobil Bangka Belitung 2', 'Jl. Paris 2 Kel. Bangka Belitung Kec. Pontianak Utara '),
(155, 'Usaha Jaya Singkawang 2', 'Usaha Jaya Singkawang 2', 'Jl. Kulor Roban Samping Kiri SPBU Kel. Singkawang Kec. -'),
(156, 'Waily Kubu Raya 2', 'Waily Kubu Raya 2', 'Jl. A. Yani Kel. Kubu Raya Kec. -'),
(157, 'Walet Jaya Sui Pinyuh 2', 'Walet Jaya Sui Pinyuh 2', 'Jl. Jurusan Mempawah Kel. Sui Pinuh 2 Kec. -'),
(158, 'Yam Leng Parit Tokaya 2', 'Yam Leng Parit Tokaya 2', 'Jl. Karya Baru 5 Kel. Parit Tokaya Kec. Pontianak Selatan '),
(159, 'Yong An Benua Melayu Darat 2', 'Yong An Benua Melayu Darat 2', 'Jl. Sultan Muhammad No. 101 Kel. Benua Melayu Darat Kec. Pontianak Selatan'),
(160, 'Yuda Kanaya Kubu Raya 2', 'Yuda Kanaya Kubu Raya 2', 'Jl. Trans Kalimantan Kel. Kubu Raya Kec. Ambawang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE IF NOT EXISTS `tbl_department` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `name`, `detail`) VALUES
(1, 'Accounting', ''),
(2, 'Purchasing', ''),
(3, 'Human Resources', ''),
(4, 'Information Technology', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE IF NOT EXISTS `tbl_employee` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `citizen_id` varchar(16) NOT NULL,
  `driver_license` varchar(20) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middle` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `marital_status` tinyint(1) NOT NULL,
  `placeofbirth` varchar(255) NOT NULL,
  `dateofbirth` date NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `ethnic` varchar(255) NOT NULL,
  `photograph` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`,`citizen_id`,`driver_license`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `employee_id`, `citizen_id`, `driver_license`, `firstname`, `middle`, `lastname`, `gender`, `marital_status`, `placeofbirth`, `dateofbirth`, `nationality`, `ethnic`, `photograph`) VALUES
(1, '1107.1047', '1212022608850003', '', 'Samson', 'AE', 'Sinaga', 1, 1, 'Tigaraja', '1985-08-26', 'Indonesia', '', ''),
(2, '1002.1026', '1002.1026', '', 'IDWAN', '', 'NASUTION', 1, 1, 'Medan', '1984-06-01', 'Indonesia', '', ''),
(3, '1004.1024', '1004.1024', '', 'SRI ', '', 'YANI', 0, 0, 'Malaysia', '1981-06-20', 'Indonesia', '', ''),
(4, '1012.1031', '1012.1031', '', 'LIAUW', 'TJHUI', 'LIEM', 0, 1, 'Singkawang', '1971-11-12', 'Indonesia', '', ''),
(5, '1101.1032', '1101.1032', '', 'SUGIYATI', '', 'SUGIYATI', 0, 1, 'Jakarta', '1986-12-30', 'Indonesia', '', ''),
(6, '1103.1034', '1103.1034', '', 'CHAIRUL', '', 'ANWAR', 1, 1, 'Medan', '1980-03-14', 'Indonesia', '', ''),
(7, '1104.1043', '1104.1043', '', 'REWINTONI', '', 'SIANTURI', 1, 1, 'Medan', '1987-11-11', 'Indonesia', '', ''),
(8, '1105.1039', '1105.1039', '', 'PARISAL', '', 'DALIMUNTHE', 1, 1, 'Tanjung Balai', '1981-05-06', 'Indonesia', '', ''),
(9, '1107.1049', '1107.1049', '', 'RENOVARIA', '', 'DAMANIK', 0, 0, 'Parapat', '1984-04-02', 'Indonesia', '', ''),
(10, '1108.1052', '1108.1052', '', 'EDWARD', '', 'SIRAIT', 1, 0, 'Medan', '1986-02-10', 'Indonesia', '', ''),
(11, '1108.1053', '1108.1053', '', 'DESLI', '', 'FRANKI', 1, 1, 'Manado', '1971-06-28', 'Indonesia', '', ''),
(12, '1205.1055', '1205.1055', '', 'SURYANITA', '', 'Mentari', 0, 0, 'Medan', '1987-10-04', 'Indonesia', '', ''),
(13, '1205.1056', '1205.1056', '', 'BAGASTAR', '', 'NAINGGOLAN', 1, 1, 'Menda', '1971-06-15', 'Indonesia', '', ''),
(14, '1205.1057', '1205.1057', '', 'DANI', 'RIVAI', 'BATUBARA', 1, 1, 'Medan', '1981-03-09', 'Indonesia', '', ''),
(15, '1205.1058', '1205.1058', '', 'NENNY', 'FRIDA', 'R', 0, 1, 'Medan', '1979-06-26', 'Indonesia', '', ''),
(16, '1205.1059', '1205.1059', '', 'DEWI', '', 'RIBKA', 0, 0, 'Medan', '1988-01-16', 'Indonesia', '', ''),
(17, '1205.1061', '1205.1061', '', 'PASTA', '', 'DELIMA', 0, 0, 'Medan', '1988-12-20', 'Indonesia', '', ''),
(18, '1208.1063', '1208.1063', '', 'SAFRAN', '', 'S', 1, 1, 'Medan', '1978-01-02', 'Indonesia', '', ''),
(19, '1210.1066', '1210.1066', '', 'VICTOR', '', 'SIAHAAN', 1, 0, 'Medan', '1987-09-03', 'Indonesia', '', ''),
(20, '1211.1067', '1211.1067', '', 'HORAS', 'HENRY', 'SIAGIAN', 1, 0, 'Medan', '1985-11-06', 'Indonesia', '', ''),
(21, '1302.1069', '1302.1069', '', 'ANGGRIANI', '', 'A', 0, 0, 'Medan', '1986-12-17', 'Indonesia', '', ''),
(22, '1007.2020', '1007.2020', '', 'M RAJO', '', 'NASUTION', 1, 1, 'Medan', '1971-08-08', 'Indonesia', '', ''),
(23, '1105.1040', '1105.1040', '', 'ABDUL', '', 'KADIR', 1, 1, 'Batubara', '1976-02-10', 'Indonesia', '', ''),
(24, '1205.1060', '1205.1060', '', 'GOHI', 'PARULIAN', 'PANJAITAN', 1, 1, 'Batubara', '1976-07-26', 'Indonesia', '', ''),
(25, '1303.1070', '1303.1070', '', 'HENDRA', '', 'GUNAWAN', 1, 0, 'Medan', '1990-01-07', 'Indonesia', '', ''),
(26, '1107.2058', '1107.2058', '', 'ANTON', 'MICHAEL', 'MARPAUNG', 1, 0, 'Tebing Tinggi', '1984-09-12', 'Indonesia', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employmentContact`
--

CREATE TABLE IF NOT EXISTS `tbl_employmentContact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_id` int(10) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(5) NOT NULL,
  `country` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `othere_email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emp_id` (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_employmentContact`
--

INSERT INTO `tbl_employmentContact` (`id`, `emp_id`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `telephone`, `mobile`, `office_phone`, `email`, `othere_email`) VALUES
(1, 1, 'Bangun Sari Indah', 'Gg. Rasmi', 'Tj. Morawa', 'Sumatera Utara', 20122, 'Indonesia', '6282364810677', '6282364810677', '6282364810677', 'samson@smart.co.id', 'samson@smart.co.id');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employmentContract`
--

CREATE TABLE IF NOT EXISTS `tbl_employmentContract` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee` int(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `details` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee` (`employee`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employmentJob`
--

CREATE TABLE IF NOT EXISTS `tbl_employmentJob` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee` int(10) NOT NULL,
  `job_id` int(10) NOT NULL,
  `status_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `joined_date` date NOT NULL,
  `department` int(10) NOT NULL,
  `location` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee` (`employee`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_employmentJob`
--

INSERT INTO `tbl_employmentJob` (`id`, `employee`, `job_id`, `status_id`, `category_id`, `joined_date`, `department`, `location`) VALUES
(1, 3, 7, 3, 3, '2010-07-01', 1, 1),
(2, 22, 8, 3, 1, '2010-07-01', 3, 1),
(3, 4, 4, 3, 4, '2010-07-01', 2, 1),
(4, 26, 8, 3, 3, '2010-07-01', 3, 1),
(5, 19, 10, 3, 3, '2010-07-01', 4, 2),
(6, 1, 6, 3, 6, '2010-07-01', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giro`
--

CREATE TABLE IF NOT EXISTS `tbl_giro` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `employee` int(10) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `due_date` date NOT NULL,
  `filename` varchar(255) NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_giro`
--

INSERT INTO `tbl_giro` (`id`, `customer_id`, `employee`, `type`, `due_date`, `filename`, `update_at`) VALUES
(1, 32, 1, 0, '2013-09-30', '1378887769_945330_593439990688601_782364462_n.jpg', '2013-09-11 01:22:49'),
(2, 36, 1, 1, '2013-09-30', '1378921359_vps_-_godaddy.png', '2013-09-11 17:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job`
--

CREATE TABLE IF NOT EXISTS `tbl_job` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_job`
--

INSERT INTO `tbl_job` (`id`, `title`, `description`, `specification`, `note`) VALUES
(1, 'Cheif Executive Officer', 'Chief Operating Office. The lader and head of the organization', '', ''),
(2, 'Accountant Manager', 'Company budgets and expenditures', '', ''),
(3, 'HR Manager', 'Deals with the labour force in the organization', '', ''),
(4, 'Purchasing Manager', 'Deals with the need and supply chain in the organization', '', ''),
(5, 'Sales Manager', 'Sales Director', '', ''),
(6, 'IT Manager', 'Information Technology Manager', '', ''),
(7, 'Accountant Supervisor', '', '', ''),
(8, 'HR Admin', '', '', ''),
(9, 'Assistance Purchasing Manager', '', 'panduan-instalasi-nixsms-center.pdf', ''),
(10, 'IT Supervisor', '', 'panduan-instalasi-nixsms-center.pdf', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobCategory`
--

CREATE TABLE IF NOT EXISTS `tbl_jobCategory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_jobCategory`
--

INSERT INTO `tbl_jobCategory` (`id`, `name`, `detail`) VALUES
(1, 'Craft Workers', ''),
(2, 'Laborers and Helpers', ''),
(3, 'Office and Clerical Workers', ''),
(4, 'Officials and Managers', ''),
(5, 'Operatives', ''),
(6, 'Professionals', ''),
(7, 'Sales Workers', ''),
(8, 'Service Workers', ''),
(9, 'Technical Officer', ''),
(10, 'Technicians', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobStatus`
--

CREATE TABLE IF NOT EXISTS `tbl_jobStatus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_jobStatus`
--

INSERT INTO `tbl_jobStatus` (`id`, `name`, `detail`) VALUES
(1, 'Freelance', ''),
(2, 'Full time Contract', ''),
(3, 'Full-Time Permernent', ''),
(4, 'Full-Time Probation', ''),
(5, 'Part-Time Contract', ''),
(6, 'Part-Time Internship', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE IF NOT EXISTS `tbl_location` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `zip` int(5) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `name`, `country`, `state`, `city`, `address`, `zip`, `phone`, `fax`, `notes`) VALUES
(1, 'Headquarter (HQ)', 'Indonesia', 'Sumatera Utara', 'Medan', 'Jl. Williem Iskandar\r\nKompl. MMTC Blok A No. 17-18', 20222, '06170018320', '', ''),
(2, 'Factory (KI)', 'Indonesia', 'Sumatera Utara', 'Batubara', 'Desa Kuala Indah', 20000, '06170018320', '', ''),
(3, 'Gudang', 'Indonesia', 'Kalimantan Barat', 'Pontianak', 'Pontianak', 20000, '06170018320', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee` int(10) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` char(80) NOT NULL,
  `role` enum('admin','superuser','user') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `employee`, `email`, `password`, `role`) VALUES
(1, 1, 'samson@sinaga.or.id', 'dacabc58debbad03c5ecef730d44e9ae9dc39dd8', 'admin'),
(2, 0, 'stanoto@gunungpantara.com', '352136bb622f4f88eef7a34365f2d6851a07ae19', 'superuser'),
(3, 26, 'anton_hrd@gunungpantara.com', '14deb5e5e417133e888bf47bb6a3555c9bb7d81c', 'superuser');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
