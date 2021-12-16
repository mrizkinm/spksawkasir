-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2021 pada 06.33
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sawkasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_kriteria`
--

CREATE TABLE `bobot_kriteria` (
  `id` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bobot_kriteria`
--

INSERT INTO `bobot_kriteria` (`id`, `id_kriteria`, `bobot`) VALUES
(1, 1, 0.3),
(2, 2, 0.2),
(3, 3, 0.4),
(4, 4, 0.1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon`
--

CREATE TABLE `calon` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `calon`
--

INSERT INTO `calon` (`id`, `nama`, `alamat`, `email`, `phone`) VALUES
(1, 'Firas Syahdian Hutauruk', 'Sidoarjo', 'non.vestibulum@sedorci.ca', '0863-3284-3329'),
(2, 'Anton Primanelza', 'Sidoarjo', 'sem.magna@fuscealiquam.org', '0847-0351-4875'),
(3, 'Haris Anjani', 'Jombang', 'orci@molestieorci.ca', '0824-3938-2722'),
(4, 'Mario Kurniansyah', 'Mojokerto', 'id.enim@pedepraesent.com', '0867-7254-8671'),
(5, 'Andi Setiawan', 'Lamongan', 'purus.accumsan@quamvel.org', '0874-3832-7628'),
(6, 'Ridhwan Rustam', 'Gresik', 'non@magnisdis.org', '0871-1105-8471'),
(7, 'Fauzan Kartikasari', 'Bangkalan', 'dolor.sit.amet@pedeet.net', '0877-3033-9416'),
(8, 'Adityo Munikasari', 'Gresik', 'quam@ultricesiaculisodio.net', '0822-5385-1678'),
(9, 'Gilang Aryanti', 'Lamongan', 'tellus.nunc.lectus@pedesuspendissedui.co.uk', '0825-9342-8214'),
(10, 'Achmad Teddo Cardinata', 'Gresik', 'et.eros@diamduismi.com', '0802-7968-9037'),
(11, 'Taufik Rumanti', 'Surabaya', 'nam@nullamsuscipit.edu', '0811-4800-2411'),
(12, 'Pratama Abelardo', 'Mojokerto', 'dolor@etmagnis.ca', '0875-1964-7453'),
(13, 'Muhamad Rahmasari', 'Lamongan', 'sociis.natoque@vitaediamproin.co.uk', '0882-6660-4554'),
(14, 'Firdaus Varensia', 'Mojokerto', 'vel.arcu@euismodmauris.edu', '0857-7289-1789'),
(15, 'Fandy Elvin Selenia', 'Lamongan', 'adipiscing.lobortis.risus@eueros.net', '0862-5347-7855'),
(16, 'Revi Rizka Noordien', 'Sidoarjo', 'sit@semegestas.edu', '0834-8032-9769'),
(17, 'Aggil Manar', 'Gresik', 'tortor@posuere.ca', '0822-4735-0816'),
(18, 'Bony Marvina', 'Lamongan', 'et@nequesedeget.edu', '0805-4615-1173'),
(19, 'Arfan Wiratmansyah', 'Mojokerto', 'at.lacus.quisque@a.edu', '0890-6268-4046'),
(20, 'Ilyas Chaerunnisa', 'Sidoarjo', 'nulla.eget@morbiquis.com', '0857-8227-4221'),
(21, 'Rendy Rugaya', 'Gresik', 'sodales@felisnulla.com', '0880-5666-6826'),
(22, 'Ekka Bimo Sastrawan', 'Gresik', 'erat.neque@integeraliquamadipiscing.org', '0886-6679-3623'),
(23, 'Syahdian Rifqi', 'Sidoarjo', 'metus.vivamus@auctornonfeugiat.net', '0835-6771-3916'),
(24, 'Hafizh Ghifary', 'Gresik', 'cursus.et@acfacilisis.net', '0879-7187-6886'),
(25, 'Satrya Pratama', 'Mojokerto', 'sit.amet.consectetuer@ipsumdolorsit.com', '0834-2446-3155'),
(26, 'Ogie Loren', 'Gresik', 'sociis.natoque.penatibus@hendrerita.ca', '0871-8053-7061'),
(27, 'Derilandry Bisri', 'Bangkalan', 'justo.nec@nullamlobortis.ca', '0846-0758-5935'),
(28, 'Ismail Nugroho', 'Lamongan', 'ipsum.donec.sollicitudin@nequetellusimperdiet.co.u', '0886-8344-8640'),
(29, 'Rinaldy Tambunan', 'Gresik', 'elementum@ametornarelectus.net', '0843-8582-9517'),
(30, 'Sakti Karina', 'Gresik', 'nibh@mitemporlorem.edu', '0819-9650-0194'),
(31, 'Imam Sugraha Maharani', 'Lamongan', 'pede.blandit@dolortempus.ca', '0865-6003-1035'),
(32, 'Adi Sutanti', 'Mojokerto', 'integer.vulputate@iaculis.ca', '0832-7059-1785'),
(33, 'Indra Sugiyanto', 'Lamongan', 'nunc.ullamcorper@fermentum.co.uk', '0866-0857-6058'),
(34, 'Rheza Julian Krishti', 'Gresik', 'vestibulum.accumsan@malesuadamalesuada.co.uk', '0862-1325-2023'),
(35, 'Dhika Agusti', 'Sidoarjo', 'sed.auctor.odio@adipiscing.co.uk', '0846-3383-4839'),
(36, 'Azmi Saputri', 'Lamongan', 'donec@urnasuscipit.co.uk', '0842-4748-4496'),
(37, 'Yudha Sulistiyo', 'Gresik', 'auctor.nunc.nulla@enim.edu', '0866-6882-1688'),
(38, 'Yosua Ulfa', 'Lamongan', 'adipiscing.ligula@et.org', '0823-7444-5125'),
(39, 'Beckley Fatimah', 'Mojokerto', 'mauris.sit.amet@temporbibendum.com', '0811-7736-6576'),
(40, 'Miftachul Hasan', 'Sidoarjo', 'eu@vitaepurusgravida.com', '0874-1728-2387'),
(41, 'Rangga Yola Pinkanatalini', 'Bangkalan', 'pellentesque.ultricies@facilisis.com', '0894-4739-4152'),
(42, 'Syarief Imran', 'Surabaya', 'elit.sed@luctus.com', '0822-8338-1113'),
(43, 'Ferhat Isnandri', 'Sidoarjo', 'commodo.ipsum@hymenaeosmaurisut.org', '0863-7228-5993'),
(44, 'Hizrian Syafjulianti', 'Gresik', 'enim.non.nisi@turpisnulla.net', '0823-8084-2424'),
(45, 'Adrian Alghifari', 'Jombang', 'ultricies@diamat.co.uk', '0851-0234-3840'),
(46, 'Jeremiah Reksa Khasanah', 'Lamongan', 'vel.pede@nullam.ca', '0823-3177-1209'),
(47, 'Anugrah Ariani', 'Bangkalan', 'fermentum@naminterdumenim.co.uk', '0807-6661-1723'),
(48, 'Axel Vernanda', 'Lamongan', 'non.sollicitudin.a@nunc.co.uk', '0851-6285-3663'),
(49, 'Roy Oktafiyanti', 'Mojokerto', 'velit.sed@odiovel.co.uk', '0865-5847-7567'),
(50, 'Singgih Rachmansyah', 'Mojokerto', 'ullamcorper.velit@sedeu.com', '0874-1326-6576'),
(51, 'Neva Andriyanti', 'Bangkalan', 'nibh.aliquam@egestaslacinia.net', '0858-6568-2303'),
(52, 'Rayhana Rosmalia', 'Bangkalan', 'volutpat.nunc.sit@quamafelis.com', '0882-7699-7344'),
(53, 'Diniyah Hasudungan', 'Mojokerto', 'faucibus.ut@tellusimperdietnon.ca', '0812-6816-4931'),
(54, 'Devicka Ibidemu', 'Bangkalan', 'nibh@eleifendnon.org', '0841-4189-2182'),
(55, 'Risma Izhar', 'Gresik', 'sapien.cras.dolor@adipiscing.com', '0811-3672-4639'),
(56, 'Permata Setyawati', 'Lamongan', 'ad.litora@vitaepurusgravida.edu', '0817-1442-8654'),
(57, 'Tria Bayhacki', 'Sidoarjo', 'a@metuseuerat.net', '0834-1995-9395'),
(58, 'Tasya Tiara', 'Lamongan', 'arcu.vel@sollicitudincommodo.ca', '0808-4159-3042'),
(59, 'Gleny Tilasnuari', 'Bangkalan', 'a@sedlibero.co.uk', '0876-1716-0458'),
(60, 'Lady Arifah Yuniara', 'Jombang', 'mollis.lectus@amet.com', '0863-2019-8548'),
(61, 'Bytta Mayori', 'Gresik', 'metus.vitae@gravida.com', '0845-5793-1047'),
(62, 'Anindyanti Nuraini', 'Surabaya', 'in@magnanam.net', '0833-4470-2766'),
(63, 'Adzkiya Dimarzio', 'Lamongan', 'eros.non@mi.org', '0873-6610-9093'),
(64, 'Brenda Muhammad', 'Lamongan', 'consequat.lectus@sagittissempernam.ca', '0875-3232-3625'),
(65, 'Cynthia Kama', 'Bangkalan', 'proin.nisl@egestasa.edu', '0829-1656-1623'),
(66, 'Silvyna Dufay', 'Lamongan', 'pede.malesuada.vel@necligula.edu', '0885-8759-8735'),
(67, 'Caryne Octaviana', 'Gresik', 'vitae.dolor@montesnascetur.edu', '0851-1739-5889'),
(68, 'Dessy Wahyuningtias', 'Lamongan', 'ipsum.porta@suspendisseac.co.uk', '0858-6165-4647'),
(69, 'Hasiana Randhika', 'Gresik', 'facilisis.vitae.orci@quisurnanunc.edu', '0812-7828-9158'),
(70, 'Ajeng Azhari', 'Mojokerto', 'fermentum@risusquis.co.uk', '0858-4960-3444'),
(71, 'Nur Balqis', 'Jombang', 'sem.elit@morbi.com', '0802-1958-9116'),
(72, 'Arrum Larasati', 'Lamongan', 'cras.lorem.lorem@cursusa.net', '0871-8478-8564'),
(73, 'Maureen Akbar', 'Mojokerto', 'venenatis@magnanec.edu', '0809-7021-2120'),
(74, 'Raden Rahadian', 'Gresik', 'ullamcorper@erat.org', '0832-1563-8040'),
(75, 'Tania Nopilianti', 'Bangkalan', 'lorem@nonbibendum.net', '0851-1061-7456'),
(76, 'Ardha Pertiwi', 'Mojokerto', 'suspendisse.sagittis.nullam@donecluctusaliquet.com', '0818-0238-7875'),
(77, 'Kharisma Pulandathi', 'Gresik', 'mi.enim@sedfacilisis.ca', '0838-5285-3180'),
(78, 'Natasya Ernando', 'Jombang', 'orci@dolorquisque.org', '0832-1842-2838'),
(79, 'Karima Anindita', 'Mojokerto', 'imperdiet@egetdictum.edu', '0810-6391-7884'),
(80, 'Stefanny Agustina', 'Lamongan', 'aliquet.vel.vulputate@nequeinornare.co.uk', '0854-5155-8118'),
(81, 'Diajeng Ramadhanty', 'Lamongan', 'velit.justo@nasceturridiculusmus.ca', '0873-3351-6504'),
(82, 'Frisaha Christalline Hapsari', 'Mojokerto', 'neque.venenatis@aceleifendvitae.org', '0812-7749-1444'),
(83, 'Laras Siliwangi', 'Mojokerto', 'maecenas.libero@aliquam.com', '0814-4191-9772'),
(84, 'Kikhmah Geryance', 'Sidoarjo', 'per.inceptos@necleomorbi.co.uk', '0820-0031-1062'),
(85, 'Nia Aisyah Wicaksono', 'Bangkalan', 'ut.ipsum.ac@semsemper.edu', '0869-4622-3283'),
(86, 'Lutfia Aulia', 'Sidoarjo', 'nec@aliquamvulputateullamcorper.edu', '0890-8874-9511'),
(87, 'Ayuningtyas Zulfianna', 'Gresik', 'auctor.mauris.vel@arcused.co.uk', '0848-1881-7259'),
(88, 'Benazir Fariza', 'Jombang', 'tempor@aliquamultricesiaculis.edu', '0835-4548-8748'),
(89, 'Meutia Tanjung', 'Gresik', 'blandit.mattis@lorem.org', '0884-3254-3623'),
(90, 'Dwi Amalina', 'Mojokerto', 'lectus.a@nullaeu.net', '0880-2418-3470'),
(91, 'Khansa Satrio', 'Jombang', 'neque@nuncmauris.com', '0883-6121-2263'),
(92, 'Aelda Rohani', 'Gresik', 'montes@semper.net', '0864-3358-0637'),
(93, 'Sendy Naufal', 'Mojokerto', 'cursus@arcuvivamus.org', '0824-4081-7131'),
(94, 'Shifa Sapto', 'Surabaya', 'mollis.non@ametconsectetuer.com', '0818-7646-7360'),
(95, 'Shiami Defara Ramadhany', 'Lamongan', 'interdum.enim@utdolordapibus.ca', '0867-2142-6198'),
(96, 'Tresna Nazarullah', 'Bangkalan', 'curabitur.ut.odio@etcommodo.edu', '0835-6505-1285'),
(97, 'Abi Gerard', 'Gresik', 'euismod.mauris.eu@ante.org', '0889-9422-3737'),
(98, 'Umi Niroha', 'Sidoarjo', 'nulla.ante@commodotincidunt.edu', '0828-1474-4840'),
(99, 'Luthfia Widya Kassa', 'Mojokerto', 'neque.venenatis@acmattis.co.uk', '0866-2624-7633'),
(100, 'Anindita Servita Nizliandry', 'Bangkalan', 'cras.dolor.dolor@condimentum.com', '0865-5338-8477'),
(101, 'Darrel Booth', 'Ternate', 'vel@diamluctuslobortis.ca', '0881-2208-7351'),
(102, 'Pearl Garrett', 'Jayapura', 'arcu.curabitur@phasellus.edu', '0876-7185-7312'),
(103, 'Tyler Joseph', 'Banda Aceh', 'est@risusdonec.co.uk', '0881-9430-7544'),
(104, 'Larissa Price', 'Manokwari', 'elementum.at.egestas@nequeet.org', '0822-8438-6340'),
(105, 'Caleb Hull', 'Tarakan', 'nunc.interdum@luctus.com', '0836-3821-7678'),
(106, 'Emmanuel Shields', 'Banda Aceh', 'non.lacinia@parturientmontes.net', '0832-3626-0837'),
(107, 'Noelle Sutton', 'Palu', 'dapibus.gravida@vulputateposuere.org', '0873-4387-3575'),
(108, 'Ginger Manning', 'Banjarmasin', 'metus@vitaevelitegestas.net', '0802-4128-9780'),
(109, 'Nathaniel Hayden', 'Pontianak', 'sed.dui@atnisi.edu', '0825-1327-3677'),
(110, 'Samuel Mcmillan', 'Madiun', 'et.arcu@vitaealiquet.ca', '0843-4816-5582'),
(111, 'Wynter Chandler', 'Central Jakarta', 'justo.praesent@molestie.co.uk', '0850-7695-7360');

-- --------------------------------------------------------

--
-- Struktur dari tabel `calons`
--

CREATE TABLE `calons` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `umur` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `lulusan` varchar(10) NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `berat_badan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `calons`
--

INSERT INTO `calons` (`id`, `nama`, `alamat`, `email`, `phone`, `umur`, `nilai`, `lulusan`, `tinggi_badan`, `berat_badan`) VALUES
(2, 'Firas Syahdian Hutauruk', 'Sidoarjo', 'non.vestibulum@sedorci.ca', '0863-3284-', 22, 67, 'SMP', 174, 60),
(3, 'Anton Primanelza', 'Sidoarjo', 'sem.magna@fuscealiquam.org', '0847-0351-', 21, 58, 'SMA/SMK', 165, 64),
(4, 'Haris Anjani', 'Jombang', 'orci@molestieorci.ca', '0824-3938-', 24, 85, 'SMA/SMK', 169, 55),
(5, 'Mario Kurniansyah', 'Mojokerto', 'id.enim@pedepraesent.com', '0867-7254-', 24, 93, 'SMP', 162, 70),
(6, 'Andi Setiawan', 'Lamongan', 'purus.accumsan@quamvel.org', '0874-3832-', 21, 100, 'SMA/SMK', 162, 58),
(7, 'Ridhwan Rustam', 'Gresik', 'non@magnisdis.org', '0871-1105-', 21, 68, 'SMP', 169, 57),
(8, 'Fauzan Kartikasari', 'Bangkalan', 'dolor.sit.amet@pedeet.net', '0877-3033-', 21, 79, 'D3', 173, 70),
(9, 'Adityo Munikasari', 'Gresik', 'quam@ultricesiaculisodio.net', '0822-5385-', 22, 93, 'SMA/SMK', 162, 60),
(10, 'Gilang Aryanti', 'Lamongan', 'tellus.nunc.lectus@pedesuspendissedui.co.uk', '0825-9342-', 24, 62, 'SMP', 162, 57),
(11, 'Achmad Teddo Cardinata', 'Gresik', 'et.eros@diamduismi.com', '0802-7968-', 24, 95, 'D3', 162, 66),
(12, 'Taufik Rumanti', 'Surabaya', 'nam@nullamsuscipit.edu', '0811-4800-', 19, 94, 'SMA/SMK', 167, 58),
(13, 'Pratama Abelardo', 'Mojokerto', 'dolor@etmagnis.ca', '0875-1964-', 21, 78, 'SMA/SMK', 165, 66),
(14, 'Muhamad Rahmasari', 'Lamongan', 'sociis.natoque@vitaediamproin.co.uk', '0882-6660-', 19, 70, 'S1', 160, 61),
(15, 'Firdaus Varensia', 'Mojokerto', 'vel.arcu@euismodmauris.edu', '0857-7289-', 24, 62, 'SMA/SMK', 167, 68),
(16, 'Fandy Elvin Selenia', 'Lamongan', 'adipiscing.lobortis.risus@eueros.net', '0862-5347-', 20, 70, 'D3', 167, 58),
(17, 'Revi Rizka Noordien', 'Sidoarjo', 'sit@semegestas.edu', '0834-8032-', 19, 66, 'SMA/SMK', 163, 55),
(18, 'Aggil Manar', 'Gresik', 'tortor@posuere.ca', '0822-4735-', 22, 70, 'D3', 169, 62),
(19, 'Bony Marvina', 'Lamongan', 'et@nequesedeget.edu', '0805-4615-', 22, 77, 'SMA/SMK', 173, 66),
(20, 'Arfan Wiratmansyah', 'Mojokerto', 'at.lacus.quisque@a.edu', '0890-6268-', 20, 99, 'SMA/SMK', 161, 67),
(21, 'Ilyas Chaerunnisa', 'Sidoarjo', 'nulla.eget@morbiquis.com', '0857-8227-', 22, 70, 'SMP', 162, 71),
(22, 'Rendy Rugaya', 'Gresik', 'sodales@felisnulla.com', '0880-5666-', 21, 75, 'SMA/SMK', 163, 60),
(23, 'Ekka Bimo Sastrawan', 'Gresik', 'erat.neque@integeraliquamadipiscing.org', '0886-6679-', 22, 91, 'SMP', 171, 56),
(24, 'Syahdian Rifqi', 'Sidoarjo', 'metus.vivamus@auctornonfeugiat.net', '0835-6771-', 20, 93, 'D3', 168, 61),
(25, 'Hafizh Ghifary', 'Gresik', 'cursus.et@acfacilisis.net', '0879-7187-', 24, 78, 'SMA/SMK', 162, 65),
(26, 'Satrya Pratama', 'Mojokerto', 'sit.amet.consectetuer@ipsumdolorsit.com', '0834-2446-', 23, 73, 'D3', 167, 71),
(27, 'Ogie Loren', 'Gresik', 'sociis.natoque.penatibus@hendrerita.ca', '0871-8053-', 22, 93, 'D3', 168, 57),
(28, 'Derilandry Bisri', 'Bangkalan', 'justo.nec@nullamlobortis.ca', '0846-0758-', 23, 58, 'D3', 168, 68),
(29, 'Ismail Nugroho', 'Lamongan', 'ipsum.donec.sollicitudin@nequetellusimperdiet.co.u', '0886-8344-', 23, 89, 'D3', 165, 65),
(30, 'Rinaldy Tambunan', 'Gresik', 'elementum@ametornarelectus.net', '0843-8582-', 18, 72, 'SMA/SMK', 169, 68),
(31, 'Sakti Karina', 'Gresik', 'nibh@mitemporlorem.edu', '0819-9650-', 19, 71, 'SMP', 160, 55),
(32, 'Imam Sugraha Maharani', 'Lamongan', 'pede.blandit@dolortempus.ca', '0865-6003-', 20, 65, 'S1', 164, 62),
(33, 'Adi Sutanti', 'Mojokerto', 'integer.vulputate@iaculis.ca', '0832-7059-', 25, 58, 'SMA/SMK', 161, 64),
(34, 'Indra Sugiyanto', 'Lamongan', 'nunc.ullamcorper@fermentum.co.uk', '0866-0857-', 19, 95, 'D3', 168, 69),
(35, 'Rheza Julian Krishti', 'Gresik', 'vestibulum.accumsan@malesuadamalesuada.co.uk', '0862-1325-', 24, 81, 'SMP', 172, 58),
(36, 'Dhika Agusti', 'Sidoarjo', 'sed.auctor.odio@adipiscing.co.uk', '0846-3383-', 22, 89, 'SMA/SMK', 171, 61),
(37, 'Azmi Saputri', 'Lamongan', 'donec@urnasuscipit.co.uk', '0842-4748-', 20, 88, 'S1', 162, 65),
(38, 'Yudha Sulistiyo', 'Gresik', 'auctor.nunc.nulla@enim.edu', '0866-6882-', 20, 57, 'SMA/SMK', 172, 60),
(39, 'Yosua Ulfa', 'Lamongan', 'adipiscing.ligula@et.org', '0823-7444-', 24, 90, 'SMA/SMK', 165, 58),
(40, 'Beckley Fatimah', 'Mojokerto', 'mauris.sit.amet@temporbibendum.com', '0811-7736-', 20, 92, 'SMP', 175, 67),
(41, 'Miftachul Hasan', 'Sidoarjo', 'eu@vitaepurusgravida.com', '0874-1728-', 20, 53, 'SMA/SMK', 175, 70),
(42, 'Rangga Yola Pinkanatalini', 'Bangkalan', 'pellentesque.ultricies@facilisis.com', '0894-4739-', 19, 55, 'SMA/SMK', 162, 58),
(43, 'Syarief Imran', 'Surabaya', 'elit.sed@luctus.com', '0822-8338-', 21, 69, 'D3', 175, 62),
(44, 'Ferhat Isnandri', 'Sidoarjo', 'commodo.ipsum@hymenaeosmaurisut.org', '0863-7228-', 19, 99, 'D3', 170, 70),
(45, 'Hizrian Syafjulianti', 'Gresik', 'enim.non.nisi@turpisnulla.net', '0823-8084-', 20, 73, 'SMA/SMK', 162, 59),
(46, 'Adrian Alghifari', 'Jombang', 'ultricies@diamat.co.uk', '0851-0234-', 22, 50, 'SMP', 167, 62),
(47, 'Jeremiah Reksa Khasanah', 'Lamongan', 'vel.pede@nullam.ca', '0823-3177-', 22, 84, 'D3', 172, 65),
(48, 'Anugrah Ariani', 'Bangkalan', 'fermentum@naminterdumenim.co.uk', '0807-6661-', 22, 89, 'D3', 172, 59),
(49, 'Axel Vernanda', 'Lamongan', 'non.sollicitudin.a@nunc.co.uk', '0851-6285-', 18, 96, 'SMA/SMK', 162, 58),
(50, 'Roy Oktafiyanti', 'Mojokerto', 'velit.sed@odiovel.co.uk', '0865-5847-', 23, 70, 'SMP', 165, 60),
(51, 'Singgih Rachmansyah', 'Mojokerto', 'ullamcorper.velit@sedeu.com', '0874-1326-', 20, 84, 'S1', 164, 66),
(52, 'Neva Andriyanti', 'Bangkalan', 'nibh.aliquam@egestaslacinia.net', '0858-6568-', 20, 99, 'S1', 166, 57),
(53, 'Rayhana Rosmalia', 'Bangkalan', 'volutpat.nunc.sit@quamafelis.com', '0882-7699-', 20, 82, 'D3', 169, 65),
(54, 'Diniyah Hasudungan', 'Mojokerto', 'faucibus.ut@tellusimperdietnon.ca', '0812-6816-', 25, 68, 'SMP', 164, 68),
(55, 'Devicka Ibidemu', 'Bangkalan', 'nibh@eleifendnon.org', '0841-4189-', 24, 55, 'SMP', 174, 60),
(56, 'Risma Izhar', 'Gresik', 'sapien.cras.dolor@adipiscing.com', '0811-3672-', 21, 61, 'D3', 163, 62),
(57, 'Permata Setyawati', 'Lamongan', 'ad.litora@vitaepurusgravida.edu', '0817-1442-', 24, 76, 'S1', 162, 59),
(58, 'Tria Bayhacki', 'Sidoarjo', 'a@metuseuerat.net', '0834-1995-', 22, 56, 'SMA/SMK', 164, 58),
(59, 'Tasya Tiara', 'Lamongan', 'arcu.vel@sollicitudincommodo.ca', '0808-4159-', 19, 82, 'SMA/SMK', 168, 61),
(60, 'Gleny Tilasnuari', 'Bangkalan', 'a@sedlibero.co.uk', '0876-1716-', 23, 75, 'SMP', 167, 60),
(61, 'Lady Arifah Yuniara', 'Jombang', 'mollis.lectus@amet.com', '0863-2019-', 19, 58, 'SMA/SMK', 170, 70),
(62, 'Bytta Mayori', 'Gresik', 'metus.vitae@gravida.com', '0845-5793-', 18, 98, 'SMA/SMK', 173, 59),
(63, 'Anindyanti Nuraini', 'Surabaya', 'in@magnanam.net', '0833-4470-', 23, 70, 'SMA/SMK', 170, 65),
(64, 'Adzkiya Dimarzio', 'Lamongan', 'eros.non@mi.org', '0873-6610-', 22, 62, 'SMP', 167, 67),
(65, 'Brenda Muhammad', 'Lamongan', 'consequat.lectus@sagittissempernam.ca', '0875-3232-', 22, 69, 'SMP', 171, 68),
(66, 'Cynthia Kama', 'Bangkalan', 'proin.nisl@egestasa.edu', '0829-1656-', 22, 71, 'SMP', 160, 63),
(67, 'Silvyna Dufay', 'Lamongan', 'pede.malesuada.vel@necligula.edu', '0885-8759-', 18, 59, 'D3', 163, 70),
(68, 'Caryne Octaviana', 'Gresik', 'vitae.dolor@montesnascetur.edu', '0851-1739-', 20, 100, 'SMA/SMK', 174, 61),
(69, 'Dessy Wahyuningtias', 'Lamongan', 'ipsum.porta@suspendisseac.co.uk', '0858-6165-', 18, 92, 'SMA/SMK', 164, 65),
(70, 'Hasiana Randhika', 'Gresik', 'facilisis.vitae.orci@quisurnanunc.edu', '0812-7828-', 19, 81, 'S1', 169, 70),
(71, 'Ajeng Azhari', 'Mojokerto', 'fermentum@risusquis.co.uk', '0858-4960-', 18, 70, 'SMA/SMK', 170, 69),
(72, 'Nur Balqis', 'Jombang', 'sem.elit@morbi.com', '0802-1958-', 20, 98, 'D3', 167, 60),
(73, 'Arrum Larasati', 'Lamongan', 'cras.lorem.lorem@cursusa.net', '0871-8478-', 25, 95, 'SMP', 171, 55),
(74, 'Maureen Akbar', 'Mojokerto', 'venenatis@magnanec.edu', '0809-7021-', 19, 58, 'SMA/SMK', 168, 61),
(75, 'Raden Rahadian', 'Gresik', 'ullamcorper@erat.org', '0832-1563-', 24, 58, 'SMA/SMK', 162, 57),
(76, 'Tania Nopilianti', 'Bangkalan', 'lorem@nonbibendum.net', '0851-1061-', 21, 76, 'D3', 164, 61),
(77, 'Ardha Pertiwi', 'Mojokerto', 'suspendisse.sagittis.nullam@donecluctusaliquet.com', '0818-0238-', 21, 86, 'SMA/SMK', 167, 59),
(78, 'Kharisma Pulandathi', 'Gresik', 'mi.enim@sedfacilisis.ca', '0838-5285-', 20, 67, 'D3', 173, 65),
(79, 'Natasya Ernando', 'Jombang', 'orci@dolorquisque.org', '0832-1842-', 24, 70, 'D3', 162, 57),
(80, 'Karima Anindita', 'Mojokerto', 'imperdiet@egetdictum.edu', '0810-6391-', 20, 80, 'SMP', 167, 68),
(81, 'Stefanny Agustina', 'Lamongan', 'aliquet.vel.vulputate@nequeinornare.co.uk', '0854-5155-', 22, 69, 'SMP', 163, 66),
(82, 'Diajeng Ramadhanty', 'Lamongan', 'velit.justo@nasceturridiculusmus.ca', '0873-3351-', 22, 87, 'S1', 170, 64),
(83, 'Frisaha Christalline Hapsari', 'Mojokerto', 'neque.venenatis@aceleifendvitae.org', '0812-7749-', 20, 73, 'SMA/SMK', 163, 63),
(84, 'Laras Siliwangi', 'Mojokerto', 'maecenas.libero@aliquam.com', '0814-4191-', 19, 80, 'SMP', 167, 68),
(85, 'Kikhmah Geryance', 'Sidoarjo', 'per.inceptos@necleomorbi.co.uk', '0820-0031-', 21, 66, 'SMA/SMK', 173, 60),
(86, 'Nia Aisyah Wicaksono', 'Bangkalan', 'ut.ipsum.ac@semsemper.edu', '0869-4622-', 18, 60, 'D3', 163, 60),
(87, 'Lutfia Aulia', 'Sidoarjo', 'nec@aliquamvulputateullamcorper.edu', '0890-8874-', 20, 82, 'SMA/SMK', 164, 57),
(88, 'Ayuningtyas Zulfianna', 'Gresik', 'auctor.mauris.vel@arcused.co.uk', '0848-1881-', 20, 97, 'SMA/SMK', 161, 67),
(89, 'Benazir Fariza', 'Jombang', 'tempor@aliquamultricesiaculis.edu', '0835-4548-', 23, 73, 'SMP', 165, 63),
(90, 'Meutia Tanjung', 'Gresik', 'blandit.mattis@lorem.org', '0884-3254-', 19, 67, 'SMP', 161, 69),
(91, 'Dwi Amalina', 'Mojokerto', 'lectus.a@nullaeu.net', '0880-2418-', 21, 88, 'SMA/SMK', 168, 58),
(92, 'Khansa Satrio', 'Jombang', 'neque@nuncmauris.com', '0883-6121-', 23, 86, 'D3', 162, 62),
(93, 'Aelda Rohani', 'Gresik', 'montes@semper.net', '0864-3358-', 20, 86, 'SMP', 170, 63),
(94, 'Sendy Naufal', 'Mojokerto', 'cursus@arcuvivamus.org', '0824-4081-', 23, 61, 'S1', 161, 65),
(95, 'Shifa Sapto', 'Surabaya', 'mollis.non@ametconsectetuer.com', '0818-7646-', 22, 86, 'SMA/SMK', 168, 58),
(96, 'Shiami Defara Ramadhany', 'Lamongan', 'interdum.enim@utdolordapibus.ca', '0867-2142-', 23, 52, 'D3', 162, 71),
(97, 'Tresna Nazarullah', 'Bangkalan', 'curabitur.ut.odio@etcommodo.edu', '0835-6505-', 23, 68, 'SMA/SMK', 165, 66),
(98, 'Abi Gerard', 'Gresik', 'euismod.mauris.eu@ante.org', '0889-9422-', 19, 65, 'S1', 163, 57),
(99, 'Umi Niroha', 'Sidoarjo', 'nulla.ante@commodotincidunt.edu', '0828-1474-', 18, 57, 'SMA/SMK', 165, 55),
(100, 'Luthfia Widya Kassa', 'Mojokerto', 'neque.venenatis@acmattis.co.uk', '0866-2624-', 25, 94, 'SMP', 171, 69),
(101, 'Anindita Servita Nizliandry', 'Bangkalan', 'cras.dolor.dolor@condimentum.com', '0865-5338-', 23, 68, 'SMA/SMK', 167, 65),
(102, 'Darrel Booth', 'Ternate', 'vel@diamluctuslobortis.ca', '8812208735', 19, 57, 'SMA', 160, 55),
(103, 'Pearl Garrett', 'Jayapura', 'arcu.curabitur@phasellus.edu', '8767185731', 23, 90, 'SMA', 164, 62),
(104, 'Tyler Joseph', 'Banda Aceh', 'est@risusdonec.co.uk', '8819430754', 19, 92, 'SMA', 161, 64),
(105, 'Larissa Price', 'Manokwari', 'elementum.at.egestas@nequeet.org', '8228438634', 28, 53, 'SMP', 168, 69),
(106, 'Caleb Hull', 'Tarakan', 'nunc.interdum@luctus.com', '8363821767', 22, 55, 'SMA', 172, 58),
(107, 'Emmanuel Shields', 'Banda Aceh', 'non.lacinia@parturientmontes.net', '8323626083', 18, 98, 'SMA', 171, 61),
(108, 'Noelle Sutton', 'Palu', 'dapibus.gravida@vulputateposuere.org', '8734387357', 33, 95, 'SMP', 162, 65),
(109, 'Ginger Manning', 'Banjarmasin', 'metus@vitaevelitegestas.net', '8024128978', 29, 58, 'SMA', 172, 60),
(110, 'Nathaniel Hayden', 'Pontianak', 'sed.dui@atnisi.edu', '8251327367', 25, 58, 'SMP', 163, 63),
(111, 'Samuel Mcmillan', 'Madiun', 'et.arcu@vitaealiquet.ca', '8434816558', 32, 76, 'SMP', 167, 68),
(112, 'Wynter Chandler', 'Central Jakarta', 'justo.praesent@molestie.co.uk', '8507695736', 25, 54, 'SMP', 173, 60);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id` int(11) NOT NULL,
  `id_calon` int(11) NOT NULL,
  `hasil` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id`, `id_calon`, `hasil`) VALUES
(1, 1, 0.3999),
(2, 2, 0.6),
(3, 3, 0.525),
(4, 4, 0.375),
(6, 5, 0.8),
(7, 8, 0.5999),
(8, 6, 0.6),
(9, 7, 0.75),
(10, 9, 0.375),
(11, 10, 0.575),
(12, 11, 0.65),
(13, 12, 0.65),
(14, 13, 0.65),
(15, 14, 0.375),
(16, 15, 0.8),
(17, 16, 0.55),
(18, 17, 0.5999),
(19, 18, 0.5499),
(20, 19, 0.7),
(21, 20, 0.2999),
(22, 21, 0.75),
(23, 22, 0.4999),
(24, 23, 0.9),
(25, 24, 0.425),
(26, 25, 0.5499),
(27, 26, 0.6999),
(28, 27, 0.4999),
(29, 28, 0.5499),
(30, 29, 0.5),
(31, 30, 0.5),
(32, 31, 0.8),
(33, 32, 0.375),
(34, 33, 0.65),
(35, 34, 0.425),
(36, 35, 0.5499),
(37, 36, 0.85),
(38, 37, 0.7),
(39, 38, 0.525),
(40, 39, 0.7),
(41, 40, 0.7),
(42, 41, 0.55),
(43, 42, 0.8),
(44, 43, 0.65),
(45, 44, 0.75),
(46, 45, 0.3499),
(47, 46, 0.6499),
(48, 47, 0.6499),
(49, 48, 0.65),
(50, 49, 0.3999),
(51, 50, 0.85),
(52, 51, 1),
(53, 52, 0.85),
(54, 53, 0.275),
(55, 54, 0.375),
(56, 55, 0.7),
(57, 56, 0.725),
(58, 57, 0.4999),
(59, 58, 0.6),
(60, 59, 0.4499),
(61, 60, 0.45),
(62, 61, 0.65),
(63, 62, 0.4999),
(64, 63, 0.2999),
(65, 64, 0.2999),
(66, 65, 0.3499),
(67, 66, 0.55),
(68, 67, 0.8),
(69, 68, 0.55),
(70, 69, 0.7),
(71, 70, 0.45),
(72, 71, 0.9),
(73, 72, 0.475),
(74, 73, 0.55),
(75, 74, 0.475),
(76, 75, 0.85),
(77, 76, 0.75),
(78, 77, 0.8),
(79, 78, 0.575),
(80, 79, 0.55),
(81, 80, 0.2999),
(82, 81, 0.7499),
(83, 82, 0.65),
(84, 83, 0.4),
(85, 84, 0.7),
(86, 85, 0.65),
(87, 86, 0.75),
(88, 87, 0.7),
(89, 88, 0.3499),
(90, 89, 0.35),
(91, 90, 0.75),
(92, 91, 0.5499),
(93, 92, 0.65),
(94, 93, 0.5999),
(95, 94, 0.5499),
(96, 95, 0.4999),
(97, 96, 0.3999),
(98, 97, 0.75),
(99, 98, 0.55),
(100, 99, 0.375),
(101, 100, 0.3999),
(102, 101, 0.55),
(103, 102, 0.5499),
(104, 103, 0.75);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `sifat` enum('BENEFIT','COST') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama`, `sifat`) VALUES
(1, 'umur', 'COST'),
(2, 'nilai', 'BENEFIT'),
(3, 'lulusan', 'BENEFIT'),
(4, 'badan_ideal', 'BENEFIT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_calon`
--

CREATE TABLE `nilai_calon` (
  `id` int(11) NOT NULL,
  `id_calon` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_nilaikriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai_calon`
--

INSERT INTO `nilai_calon` (`id`, `id_calon`, `id_kriteria`, `id_nilaikriteria`) VALUES
(1, 1, 1, 3),
(2, 1, 2, 6),
(3, 1, 3, 9),
(4, 1, 4, 13),
(5, 2, 1, 1),
(6, 2, 2, 6),
(7, 2, 3, 10),
(8, 2, 4, 14),
(9, 3, 1, 4),
(10, 3, 2, 7),
(11, 3, 3, 10),
(12, 3, 4, 13),
(13, 4, 1, 4),
(14, 4, 2, 8),
(15, 4, 3, 9),
(16, 4, 4, 14),
(17, 5, 1, 1),
(18, 5, 2, 8),
(19, 5, 3, 10),
(20, 5, 4, 13),
(21, 6, 1, 1),
(22, 6, 2, 6),
(23, 6, 3, 9),
(24, 6, 4, 13),
(25, 7, 1, 1),
(26, 7, 2, 7),
(27, 7, 3, 11),
(28, 7, 4, 14),
(29, 8, 1, 3),
(30, 8, 2, 8),
(31, 8, 3, 10),
(32, 8, 4, 13),
(33, 9, 1, 4),
(34, 9, 2, 6),
(35, 9, 3, 9),
(36, 9, 4, 13),
(37, 10, 1, 4),
(38, 10, 2, 8),
(39, 10, 3, 11),
(40, 10, 4, 14),
(41, 11, 1, 2),
(42, 11, 2, 8),
(43, 11, 3, 10),
(44, 11, 4, 13),
(45, 12, 1, 1),
(46, 12, 2, 7),
(47, 12, 3, 10),
(48, 12, 4, 14),
(49, 13, 1, 2),
(50, 13, 2, 6),
(51, 13, 3, 12),
(52, 13, 4, 14),
(53, 14, 1, 4),
(54, 14, 2, 6),
(55, 14, 3, 10),
(56, 14, 4, 14),
(57, 15, 1, 1),
(58, 15, 2, 6),
(59, 15, 3, 11),
(60, 15, 4, 13),
(61, 16, 1, 2),
(62, 16, 2, 6),
(63, 16, 3, 10),
(64, 16, 4, 13),
(65, 17, 1, 3),
(66, 17, 2, 6),
(67, 17, 3, 11),
(68, 17, 4, 13),
(69, 18, 1, 3),
(70, 18, 2, 7),
(71, 18, 3, 10),
(72, 18, 4, 13),
(73, 19, 1, 1),
(74, 19, 2, 8),
(75, 19, 3, 10),
(76, 19, 4, 14),
(77, 20, 1, 3),
(78, 20, 2, 6),
(79, 20, 3, 9),
(80, 20, 4, 14),
(81, 21, 1, 1),
(82, 21, 2, 7),
(83, 21, 3, 10),
(84, 21, 4, 13),
(85, 22, 1, 3),
(86, 22, 2, 8),
(87, 22, 3, 9),
(88, 22, 4, 13),
(89, 23, 1, 1),
(90, 23, 2, 8),
(91, 23, 3, 11),
(92, 23, 4, 13),
(93, 24, 1, 4),
(94, 24, 2, 7),
(95, 24, 3, 10),
(96, 24, 4, 14),
(97, 25, 1, 3),
(98, 25, 2, 7),
(99, 25, 3, 11),
(100, 25, 4, 14),
(101, 26, 1, 3),
(102, 26, 2, 8),
(103, 26, 3, 11),
(104, 26, 4, 13),
(105, 27, 1, 3),
(106, 27, 2, 6),
(107, 27, 3, 11),
(108, 27, 4, 14),
(109, 28, 1, 3),
(110, 28, 2, 7),
(111, 28, 3, 11),
(112, 28, 4, 14),
(113, 29, 1, 2),
(114, 29, 2, 7),
(115, 29, 3, 10),
(116, 29, 4, 14),
(117, 30, 1, 2),
(118, 30, 2, 7),
(119, 30, 3, 9),
(120, 30, 4, 13),
(121, 31, 1, 1),
(122, 31, 2, 6),
(123, 31, 3, 12),
(124, 31, 4, 14),
(125, 32, 1, 4),
(126, 32, 2, 6),
(127, 32, 3, 10),
(128, 32, 4, 14),
(129, 33, 1, 2),
(130, 33, 2, 8),
(131, 33, 3, 11),
(132, 33, 4, 14),
(133, 34, 1, 4),
(134, 34, 2, 7),
(135, 34, 3, 9),
(136, 34, 4, 13),
(137, 35, 1, 3),
(138, 35, 2, 7),
(139, 35, 3, 10),
(140, 35, 4, 13),
(141, 36, 1, 1),
(142, 36, 2, 7),
(143, 36, 3, 12),
(144, 36, 4, 14),
(145, 37, 1, 1),
(146, 37, 2, 6),
(147, 37, 3, 10),
(148, 37, 4, 13),
(149, 38, 1, 4),
(150, 38, 2, 7),
(151, 38, 3, 10),
(152, 38, 4, 13),
(153, 39, 1, 1),
(154, 39, 2, 8),
(155, 39, 3, 9),
(156, 39, 4, 13),
(157, 40, 1, 1),
(158, 40, 2, 6),
(159, 40, 3, 10),
(160, 40, 4, 13),
(161, 41, 1, 2),
(162, 41, 2, 6),
(163, 41, 3, 10),
(164, 41, 4, 13),
(165, 42, 1, 1),
(166, 42, 2, 6),
(167, 42, 3, 11),
(168, 42, 4, 13),
(169, 43, 1, 2),
(170, 43, 2, 8),
(171, 43, 3, 11),
(172, 43, 4, 14),
(173, 44, 1, 1),
(174, 44, 2, 7),
(175, 44, 3, 10),
(176, 44, 4, 13),
(177, 45, 1, 3),
(178, 45, 2, 5),
(179, 45, 3, 9),
(180, 45, 4, 13),
(181, 46, 1, 3),
(182, 46, 2, 7),
(183, 46, 3, 11),
(184, 46, 4, 13),
(185, 47, 1, 3),
(186, 47, 2, 7),
(187, 47, 3, 11),
(188, 47, 4, 13),
(189, 48, 1, 2),
(190, 48, 2, 8),
(191, 48, 3, 10),
(192, 48, 4, 13),
(193, 49, 1, 3),
(194, 49, 2, 6),
(195, 49, 3, 9),
(196, 49, 4, 13),
(197, 50, 1, 1),
(198, 50, 2, 7),
(199, 50, 3, 12),
(200, 50, 4, 14),
(201, 51, 1, 1),
(202, 51, 2, 8),
(203, 51, 3, 12),
(204, 51, 4, 13),
(205, 52, 1, 1),
(206, 52, 2, 7),
(207, 52, 3, 11),
(208, 52, 4, 13),
(209, 53, 1, 4),
(210, 53, 2, 6),
(211, 53, 3, 9),
(212, 53, 4, 14),
(213, 54, 1, 4),
(214, 54, 2, 6),
(215, 54, 3, 9),
(216, 54, 4, 13),
(217, 55, 1, 1),
(218, 55, 2, 6),
(219, 55, 3, 11),
(220, 55, 4, 14),
(221, 56, 1, 4),
(222, 56, 2, 7),
(223, 56, 3, 12),
(224, 56, 4, 13),
(225, 57, 1, 3),
(226, 57, 2, 6),
(227, 57, 3, 10),
(228, 57, 4, 13),
(229, 58, 1, 2),
(230, 58, 2, 7),
(231, 58, 3, 10),
(232, 58, 4, 13),
(233, 59, 1, 3),
(234, 59, 2, 7),
(235, 59, 3, 9),
(236, 59, 4, 13),
(237, 60, 1, 2),
(238, 60, 2, 6),
(239, 60, 3, 10),
(240, 60, 4, 14),
(241, 61, 1, 2),
(242, 61, 2, 8),
(243, 61, 3, 10),
(244, 61, 4, 13),
(245, 62, 1, 3),
(246, 62, 2, 6),
(247, 62, 3, 10),
(248, 62, 4, 13),
(249, 63, 1, 3),
(250, 63, 2, 6),
(251, 63, 3, 9),
(252, 63, 4, 14),
(253, 64, 1, 3),
(254, 64, 2, 6),
(255, 64, 3, 9),
(256, 64, 4, 14),
(257, 65, 1, 3),
(258, 65, 2, 7),
(259, 65, 3, 9),
(260, 65, 4, 14),
(261, 66, 1, 2),
(262, 66, 2, 6),
(263, 66, 3, 11),
(264, 66, 4, 14),
(265, 67, 1, 1),
(266, 67, 2, 8),
(267, 67, 3, 10),
(268, 67, 4, 13),
(269, 68, 1, 2),
(270, 68, 2, 8),
(271, 68, 3, 10),
(272, 68, 4, 14),
(273, 69, 1, 2),
(274, 69, 2, 7),
(275, 69, 3, 12),
(276, 69, 4, 14),
(277, 70, 1, 2),
(278, 70, 2, 6),
(279, 70, 3, 10),
(280, 70, 4, 14),
(281, 71, 1, 1),
(282, 71, 2, 8),
(283, 71, 3, 11),
(284, 71, 4, 13),
(285, 72, 1, 4),
(286, 72, 2, 8),
(287, 72, 3, 9),
(288, 72, 4, 13),
(289, 73, 1, 2),
(290, 73, 2, 6),
(291, 73, 3, 10),
(292, 73, 4, 13),
(293, 74, 1, 4),
(294, 74, 2, 6),
(295, 74, 3, 10),
(296, 74, 4, 13),
(297, 75, 1, 1),
(298, 75, 2, 7),
(299, 75, 3, 11),
(300, 75, 4, 13),
(301, 76, 1, 1),
(302, 76, 2, 7),
(303, 76, 3, 10),
(304, 76, 4, 13),
(305, 77, 1, 1),
(306, 77, 2, 6),
(307, 77, 3, 11),
(308, 77, 4, 13),
(309, 78, 1, 4),
(310, 78, 2, 6),
(311, 78, 3, 11),
(312, 78, 4, 13),
(313, 79, 1, 1),
(314, 79, 2, 7),
(315, 79, 3, 9),
(316, 79, 4, 14),
(317, 80, 1, 3),
(318, 80, 2, 6),
(319, 80, 3, 9),
(320, 80, 4, 14),
(321, 81, 1, 3),
(322, 81, 2, 7),
(323, 81, 3, 12),
(324, 81, 4, 13),
(325, 82, 1, 1),
(326, 82, 2, 7),
(327, 82, 3, 10),
(328, 82, 4, 14),
(329, 83, 1, 2),
(330, 83, 2, 7),
(331, 83, 3, 9),
(332, 83, 4, 14),
(333, 84, 1, 1),
(334, 84, 2, 6),
(335, 84, 3, 10),
(336, 84, 4, 13),
(337, 85, 1, 2),
(338, 85, 2, 6),
(339, 85, 3, 11),
(340, 85, 4, 13),
(341, 86, 1, 1),
(342, 86, 2, 7),
(343, 86, 3, 10),
(344, 86, 4, 13),
(345, 87, 1, 1),
(346, 87, 2, 8),
(347, 87, 3, 10),
(348, 87, 4, 14),
(349, 88, 1, 3),
(350, 88, 2, 7),
(351, 88, 3, 9),
(352, 88, 4, 14),
(353, 89, 1, 2),
(354, 89, 2, 6),
(355, 89, 3, 9),
(356, 89, 4, 14),
(357, 90, 1, 1),
(358, 90, 2, 7),
(359, 90, 3, 10),
(360, 90, 4, 13),
(361, 91, 1, 3),
(362, 91, 2, 7),
(363, 91, 3, 11),
(364, 91, 4, 14),
(365, 92, 1, 1),
(366, 92, 2, 7),
(367, 92, 3, 9),
(368, 92, 4, 13),
(369, 93, 1, 3),
(370, 93, 2, 6),
(371, 93, 3, 12),
(372, 93, 4, 14),
(373, 94, 1, 3),
(374, 94, 2, 7),
(375, 94, 3, 10),
(376, 94, 4, 13),
(377, 95, 1, 3),
(378, 95, 2, 6),
(379, 95, 3, 11),
(380, 95, 4, 14),
(381, 96, 1, 3),
(382, 96, 2, 6),
(383, 96, 3, 10),
(384, 96, 4, 14),
(385, 97, 1, 2),
(386, 97, 2, 6),
(387, 97, 3, 12),
(388, 97, 4, 13),
(389, 98, 1, 2),
(390, 98, 2, 6),
(391, 98, 3, 10),
(392, 98, 4, 13),
(393, 99, 1, 4),
(394, 99, 2, 8),
(395, 99, 3, 9),
(396, 99, 4, 14),
(397, 100, 1, 3),
(398, 100, 2, 6),
(399, 100, 3, 10),
(400, 100, 4, 14),
(401, 101, 1, 2),
(402, 101, 2, 6),
(403, 101, 3, 6),
(404, 101, 4, 13),
(405, 102, 1, 3),
(406, 102, 2, 7),
(407, 102, 3, 7),
(408, 102, 4, 14),
(409, 103, 1, 2),
(410, 103, 2, 8),
(411, 103, 3, 8),
(412, 103, 4, 14),
(413, 104, 1, 4),
(414, 104, 2, 6),
(415, 104, 3, 9),
(416, 104, 4, 14),
(417, 105, 1, 3),
(418, 105, 2, 6),
(419, 105, 3, 6),
(420, 105, 4, 13),
(421, 106, 1, 2),
(422, 106, 2, 8),
(423, 106, 3, 8),
(424, 106, 4, 13),
(425, 107, 1, 4),
(426, 107, 2, 8),
(427, 107, 3, 9),
(428, 107, 4, 14),
(429, 108, 1, 4),
(430, 108, 2, 6),
(431, 108, 3, 6),
(432, 108, 4, 13),
(433, 109, 1, 4),
(434, 109, 2, 6),
(435, 109, 3, 9),
(436, 109, 4, 14),
(437, 110, 1, 4),
(438, 110, 2, 7),
(439, 110, 3, 9),
(440, 110, 4, 14),
(441, 111, 1, 4),
(442, 111, 2, 6),
(443, 111, 3, 9),
(444, 111, 4, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_kriteria`
--

CREATE TABLE `nilai_kriteria` (
  `id` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai_kriteria`
--

INSERT INTO `nilai_kriteria` (`id`, `id_kriteria`, `nilai`, `keterangan`) VALUES
(1, 1, 1, '20-21'),
(2, 1, 2, '18-19'),
(3, 1, 3, '22-23'),
(4, 1, 4, '24-25'),
(5, 2, 1, 'sangat buruk (0-50)'),
(6, 2, 2, 'buruk (51-70)'),
(7, 2, 3, 'baik (71-90)'),
(8, 2, 4, 'sangat baik (91-100)'),
(9, 3, 1, 'SMP'),
(10, 3, 2, 'SMA/SMK'),
(11, 3, 3, 'D3'),
(12, 3, 4, 'S1'),
(13, 4, 4, 'Ideal '),
(14, 4, 0, 'Tidak Ideal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `role` enum('admin','hrd') NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `role`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Hariadi', 'hrd@gmail.com', 'hrd', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bobot_kriteria`
--
ALTER TABLE `bobot_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `calon`
--
ALTER TABLE `calon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `calons`
--
ALTER TABLE `calons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_calon`
--
ALTER TABLE `nilai_calon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_kriteria`
--
ALTER TABLE `nilai_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bobot_kriteria`
--
ALTER TABLE `bobot_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `calon`
--
ALTER TABLE `calon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT untuk tabel `calons`
--
ALTER TABLE `calons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `nilai_calon`
--
ALTER TABLE `nilai_calon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT untuk tabel `nilai_kriteria`
--
ALTER TABLE `nilai_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
