-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 21, 2022 at 09:14 AM
-- Server version: 10.3.36-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelastk4_mblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `about_id` int(11) NOT NULL,
  `about_image` varchar(100) DEFAULT NULL,
  `about_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`about_id`, `about_image`, `about_description`) VALUES
(1, 'about.jpg', 'MBLOG untuk personal blog.<br><br>Full responsive dan terlihat memukau pada desktop, tablet, atau perangkat selular apapun.<br><br>Dibangun dengan framework PHP Codeigniter dengan mengikuti standard desain patern MVC, sehingga mudah dikembangkan lebeih lanjut oleh web developer manapun. <br><br>Anda dapat memiliki blog pribadi .<br><br>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  `category_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`) VALUES
(1, 'Pengembangan diri', 'pengembangan-diri'),
(2, 'Success', 'success'),
(3, 'Tips dan Tricks', 'tips-dan-tricks'),
(4, 'Teknologi', 'teknologi'),
(5, 'bisnis', 'bisnis'),
(6, 'agama', 'agama'),
(7, 'psikologis', 'psikologis');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_date` timestamp NULL DEFAULT current_timestamp(),
  `comment_name` varchar(60) DEFAULT NULL,
  `comment_email` varchar(90) DEFAULT NULL,
  `comment_message` text DEFAULT NULL,
  `comment_status` int(11) DEFAULT 0,
  `comment_parent` int(11) DEFAULT 0,
  `comment_post_id` int(11) DEFAULT NULL,
  `comment_image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `comment_date`, `comment_name`, `comment_email`, `comment_message`, `comment_status`, `comment_parent`, `comment_post_id`, `comment_image`) VALUES
(1, '2019-04-07 03:15:05', 'Joko', 'joko@gmail.com', 'Nice Post, thanks', 1, 0, 6, 'user_blank.png'),
(2, '2019-04-12 04:22:34', 'M Fikri', 'fikrifiver97@gmail.com', 'Thank you.<br>', 1, 1, 6, 'fcee14ca639c3ca3c5b93b7c7fc70ba2.png'),
(3, '2019-12-28 07:52:42', 'Name', 'mfikri@gmail.com', 'Nice Post', 1, 0, 2, 'user_blank.png'),
(4, '2019-12-28 08:00:22', 'M Fikri', 'qadalm@gmail.com', 'Nice Article', 1, 0, 2, 'user_blank.png'),
(5, '2022-10-17 04:57:15', 'bintang timur', 'hito33@gmail.com', 'sss', 0, 0, 15, 'user_blank.png'),
(6, '2022-10-18 03:21:29', 'radit pro', 'azriealakbarr18@gmail.com', 'tiofyu', 0, 0, 16, 'user_blank.png'),
(7, '2022-10-18 03:21:29', 'radit pro', 'azriealakbarr18@gmail.com', 'tiofyu', 1, 0, 16, 'user_blank.png'),
(8, '2022-10-19 12:39:10', 'KONTOL', 'kontol@gmail.com', 'MEMEQ', 0, 0, 24, 'user_blank.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home`
--

CREATE TABLE `tbl_home` (
  `home_id` int(11) NOT NULL,
  `home_caption_1` varchar(200) DEFAULT NULL,
  `home_caption_2` varchar(200) DEFAULT NULL,
  `home_bg_heading` varchar(50) DEFAULT NULL,
  `home_bg_testimonial` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_home`
--

INSERT INTO `tbl_home` (`home_id`, `home_caption_1`, `home_caption_2`, `home_bg_heading`, `home_bg_testimonial`) VALUES
(1, 'Driven . Inspired . Smart', 'Personal Blog', 'image_4.png', 'image_8.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_name` varchar(50) DEFAULT NULL,
  `inbox_email` varchar(80) DEFAULT NULL,
  `inbox_subject` varchar(200) DEFAULT NULL,
  `inbox_message` text DEFAULT NULL,
  `inbox_created_at` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` varchar(2) DEFAULT '0' COMMENT '0=Unread, 1=Read'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_name`, `inbox_email`, `inbox_subject`, `inbox_message`, `inbox_created_at`, `inbox_status`) VALUES
(1, 'Fikri', 'fikrifiver97@gmail.com', 'Request Artikel', 'Saya mau request artikel tentang mindset.', '2019-04-11 03:46:56', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_navbar`
--

CREATE TABLE `tbl_navbar` (
  `navbar_id` int(11) NOT NULL,
  `navbar_name` varchar(50) DEFAULT NULL,
  `navbar_slug` varchar(200) DEFAULT NULL,
  `navbar_parent_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_navbar`
--

INSERT INTO `tbl_navbar` (`navbar_id`, `navbar_name`, `navbar_slug`, `navbar_parent_id`) VALUES
(1, 'Home', NULL, 0),
(2, 'About', 'about', 0),
(3, 'Blog', 'blog', 0),
(4, 'Contact', 'contact', 0),
(5, 'Teknologi', 'tag/Teknologi', 3),
(10, 'Success', 'category/success', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(250) DEFAULT NULL,
  `post_description` text DEFAULT NULL,
  `post_contents` longtext DEFAULT NULL,
  `post_image` varchar(40) DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT current_timestamp(),
  `post_last_update` datetime DEFAULT NULL,
  `post_category_id` int(11) DEFAULT NULL,
  `post_tags` varchar(225) DEFAULT NULL,
  `post_slug` varchar(250) DEFAULT NULL,
  `post_status` int(11) DEFAULT NULL COMMENT '1=Publish, 0=Unpublish',
  `post_views` int(11) DEFAULT 0,
  `post_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_contents`, `post_image`, `post_date`, `post_last_update`, `post_category_id`, `post_tags`, `post_slug`, `post_status`, `post_views`, `post_user_id`) VALUES
(10, 'apa itu motherboard', 'apa itu motherboard', '<p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-family: Sora; font-size: 19.2px;\"><span style=\"box-sizing: inherit;\">Motherboard adalah perangkat keras yang menjadi&nbsp; jantung dari sebuah komputer.&nbsp;</span></p><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-family: Sora; font-size: 19.2px;\"><span style=\"box-sizing: inherit;\">Ia menyatukan setiap keping komponen komputer agar menjadi mesin yang utuh dan dapat bekerja secara maksimal.&nbsp;</span></p><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-family: Sora; font-size: 19.2px;\"><span style=\"box-sizing: inherit;\">Motherboard sendiri secara resmi dirilis pada tahun 1981 dan saat itu disebut sebagai planar.&nbsp;</span></p><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-family: Sora; font-size: 19.2px;\"><span style=\"box-sizing: inherit;\">Planar merupakan motherboard pertama yang digunakan dalam IBM Personal Computer.&nbsp;</span></p><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-family: Sora; font-size: 19.2px;\"><span style=\"box-sizing: inherit;\">Saat itu, planar menampung CPU dan RAM komputer, fitur audio, port untuk keyboard dan pita kaset, slot untuk add-on cards, serta sebuah sistem bernama bus.&nbsp;</span></p><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-family: Sora; font-size: 19.2px;\"><span style=\"box-sizing: inherit;\">Sebelum terciptanya motherboard, komputer dapat bekerja dengan adanya papan sirkuit sederhana yang disebut sebagai backplane.&nbsp;</span></p><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-family: Sora; font-size: 19.2px;\"><span style=\"box-sizing: inherit;\">Anda dapat membayangakan sebuah backplane sebagai motherboard yang kosong.&nbsp;</span></p><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-family: Sora; font-size: 19.2px;\"><span style=\"box-sizing: inherit;\">Sehingga saat itu, para pekerja di industri komputer perlu memasang setiap komponen pada papan sirkuit masing-masing dan mencolokkannya pada backplane.</span></p><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-family: Sora; font-size: 19.2px;\"><span style=\"box-sizing: inherit;\">Hal tersebut membuat komputer pada masa tersebut berukuran besar, cukup sulit dipindahkan, dan harganya mahal.&nbsp;</span></p><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-family: Sora; font-size: 19.2px;\"><span style=\"box-sizing: inherit;\">Oleh karena itu, ditemukannya motherboard menjadi sebuah terobosan yang sangat mempengaruhi dunia pengembangan komputer.&nbsp;</span></p>', '20035c6a73f5071de697eed9258fe494.jpg', '2022-10-17 03:53:36', '2022-10-17 10:54:58', 3, 'Teknologi', 'apa-itu-motherboard', 1, 2, 3),
(11, 'apa itu cpu', '', '<h2 style=\"font-family: &quot;PT Sans&quot;, sans-serif; color: rgb(100, 104, 110); font-size: 30px;\"><span style=\"font-weight: 700;\">Pengertian CPU</span></h2><p style=\"margin-top: 10px; margin-bottom: 1em; padding: 0px; font-family: Lato, sans-serif; font-size: 16px; line-height: 1.6; color: rgb(100, 104, 110);\">CPU yang merupakan singkatan dari Central Processing Unit adalah komponen keras atau perangkat hardware pemroses data utama dalam sebuah komputer. CPU dapat disebut sebagai otak komputer karena CPU mengatur semua aktifitas dan jalannya semua program termasuk aplikasi atau software di dalamnya.</p><p style=\"margin-top: 10px; margin-bottom: 1em; padding: 0px; font-family: Lato, sans-serif; font-size: 16px; line-height: 1.6; color: rgb(100, 104, 110);\">Apapun itu semua hal yang berkaitan dengan proses dalam komputer baik suatu proses yang sepele sekalipun akan selalu diatur oleh CPU. Misalnya saat Anda menekan tombol huruf “H” pada keyboard saat mengetik, huruf “H” tersebut akan muncul di layar, CPU lah yang memungkinkan hal itu terjadi. Dengan demikian, tanpa adanya CPU dalam komputer maka komputer tidak akan bisa melakukan apapun atau komputer tidak dapat menjalankan programnya.</p><p style=\"margin-top: 10px; margin-bottom: 1em; padding: 0px; font-family: Lato, sans-serif; font-size: 16px; line-height: 1.6; color: rgb(100, 104, 110);\">CPU secara teknis juga lebih sering disebut sebagai prosesor, oleh karena itu saat membaca dan mengenali spesifikasi suatu prosesor maka sebenarnya Anda sedang membaca spesifikasi CPU suatu perangkat.</p>', '15147a10002873f180da3aba7b9492e7.jpg', '2022-10-17 04:01:11', NULL, 4, 'Teknologi', 'apa-itu-cpu', 1, 0, 3),
(13, 'apa hilal itu china', '', 'apa hilal itu bangsa china? yess karna hilal memiliki ciri-ciri sperti bangsa china yaitu: mata sipit,punya toko (punya mbahnya),punya mantan orang china,bisa bahasa china', '1f11d23542705bf75340ac71d24387c1.jpg', '2022-10-17 04:38:38', '2022-10-17 11:39:58', 1, 'Psikologi,Motivasi', 'apa-hilal-itu-china', 1, 4, 3),
(14, 'reza', '', 'reza kecap naik icikiwir ke farhan kebab, cr7 lagi nongki muka nyegir hati pengen nyatir terkadang yang lagi mesen farhan kebab kasir bilek: gua udah muak yahahahah kena satir apabila lagi ngebut LMAO PISAN KANG', '56ce8a400dc2542bb9d28510b6ef9c1a.jpg', '2022-10-17 04:45:24', NULL, 1, 'Motivasi', 'reza', 1, 2, 3),
(15, 'pria tampan', '', 'mr ironi seorang pria tampan dengan bibir tebal sexy yang dapat meluluh kan wanita yang ia temui berkat ketampanan nya yang tiada tara mr ironi mampu mendapatkan hati wanita sesukanya', 'df9ecc5e6d00312c7b85446000613582.jpg', '2022-10-17 04:53:55', NULL, 1, 'Motivasi', 'pria-tampan', 1, 3, 3),
(16, 'satir', '', 'satir artinya sangat irit&nbsp; didlam satir terdapat bnyak sekali typo sepeti yang anda baca dan tanpa sadir anda tleach tersatir', 'b7ee80df84d8838c0c7f18b263549a0c.jpg', '2022-10-17 04:59:33', NULL, 1, 'Psikologi', 'satir', 1, 2, 3),
(17, 'adobe photoshop', '', '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Adobe Photoshop</b>, atau biasa disebut&nbsp;<b>Photoshop</b>, adalah perangkat lunak editor citra buatan Adobe Systems yang dikhususkan untuk pengeditan foto/gambar dan pembuatan efek. Perangkat lunak ini banyak digunakan oleh&nbsp;<a href=\"https://id.wikipedia.org/wiki/Fotografer\" title=\"Fotografer\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">fotografer</a>&nbsp;<a href=\"https://id.wikipedia.org/wiki/Digital\" title=\"Digital\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">digital</a>&nbsp;dan perusahaan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Iklan\" title=\"Iklan\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">iklan</a>&nbsp;sehingga dianggap sebagai pemimpin pasar (<i>market leader</i>) untuk perangkat lunak pengolah gambar/foto, dan, bersama&nbsp;<a href=\"https://id.wikipedia.org/wiki/Adobe_Acrobat\" title=\"Adobe Acrobat\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Adobe Acrobat</a>, dianggap sebagai produk terbaik yang pernah diproduksi oleh Adobe Systems. Versi kedelapan aplikasi ini disebut dengan nama Photoshop CS (Creative Suite), versi sembilan disebut Adobe Photoshop CS2, versi sepuluh disebut Adobe Photoshop CS3, versi kesebelas adalah Adobe Photoshop CS4, versi keduabelas adalah Adobe Photoshop CS5, versi ketigabelas adalah CS6, dan versi terbaru adalah Adobe Photoshop CC (Creative Cloud).</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Photoshop tersedia untuk&nbsp;<a href=\"https://id.wikipedia.org/wiki/Microsoft_Windows\" title=\"Microsoft Windows\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Microsoft Windows</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Mac_OS_X\" class=\"mw-redirect\" title=\"Mac OS X\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Mac OS X</a>, dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Mac_OS\" class=\"mw-redirect\" title=\"Mac OS\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Mac OS</a>; versi 9 ke atas juga dapat digunakan oleh sistem operasi lain seperti&nbsp;<a href=\"https://id.wikipedia.org/wiki/Linux\" title=\"Linux\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Linux</a>&nbsp;dengan bantuan perangkat lunak tertentu seperti&nbsp;<a href=\"https://id.wikipedia.org/w/index.php?title=CrossOver&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"CrossOver (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">CrossOver</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><br></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Meskipun pada awalnya Photoshop dirancang untuk menyunting gambar untuk cetakan berbasis-kertas, Photoshop yang ada saat ini juga dapat digunakan untuk memproduksi gambar untuk&nbsp;<a href=\"https://id.wikipedia.org/wiki/World_Wide_Web\" class=\"mw-redirect\" title=\"World Wide Web\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">World Wide Web</a>. Beberapa versi terakhir juga menyertakan aplikasi tambahan,&nbsp;<a href=\"https://id.wikipedia.org/w/index.php?title=Adobe_ImageReady&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Adobe ImageReady (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Adobe ImageReady</a>, untuk keperluan tersebut.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Photoshop juga memiliki hubungan erat dengan beberapa perangkat lunak penyunting media, animasi, dan&nbsp;<i>authoring</i>&nbsp;buatan-Adobe lainnya. File format asli Photoshop, .PSD, dapat diekspor ke dan dari&nbsp;<a href=\"https://id.wikipedia.org/w/index.php?title=Adobe_ImageReady&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Adobe ImageReady (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Adobe ImageReady</a>.&nbsp;<a href=\"https://id.wikipedia.org/wiki/Adobe_Illustrator\" title=\"Adobe Illustrator\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Adobe Illustrator</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Adobe_Premiere_Pro\" title=\"Adobe Premiere Pro\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Adobe Premiere Pro</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Adobe_After_Effects\" title=\"Adobe After Effects\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">After Effects</a>&nbsp;dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Adobe_Encore_DVD\" class=\"mw-redirect\" title=\"Adobe Encore DVD\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Adobe Encore DVD</a>&nbsp;untuk membuat DVD profesional, menyediakan penyuntingan gambar non-<i>linear</i>&nbsp;dan layanan&nbsp;<i>special effect</i>&nbsp;seperti&nbsp;<i>background</i>,&nbsp;<i>tekstur</i>, dan lain-lain untuk keperluan televisi, film, dan situs web. Sebagai contoh, Photoshop CS dapat digunakan untuk membuat menu dan tombol (<i>button</i>)&nbsp;<a href=\"https://id.wikipedia.org/wiki/DVD\" title=\"DVD\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">DVD</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Photoshop dapat menerima penggunaan beberapa model warna:</p><ul style=\"list-style-image: url(&quot;/w/skins/Vector/resources/common/images/bullet-icon.svg?d4515&quot;); margin: 0.3em 0px 0px 1.6em; padding: 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><li style=\"margin-bottom: 0.1em;\"><a href=\"https://id.wikipedia.org/w/index.php?title=Pemodelan_warna_RGB&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Pemodelan warna RGB (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">RGB color model</a></li><li style=\"margin-bottom: 0.1em;\"><a href=\"https://id.wikipedia.org/w/index.php?title=Lab_color_model&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Lab color model (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Lab color model</a></li><li style=\"margin-bottom: 0.1em;\"><a href=\"https://id.wikipedia.org/w/index.php?title=Pemodelan_warna_CMYK&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Pemodelan warna CMYK (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">CMYK color model</a></li><li style=\"margin-bottom: 0.1em;\"><a href=\"https://id.wikipedia.org/w/index.php?title=Grayscale&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Grayscale (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Grayscale</a></li><li style=\"margin-bottom: 0.1em;\"><a href=\"https://id.wikipedia.org/w/index.php?title=Bitmap_(Format_file)&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Bitmap (Format file) (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Bitmap</a></li><li style=\"margin-bottom: 0.1em;\"><a href=\"https://id.wikipedia.org/w/index.php?title=Duotone&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Duotone (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Duotone</a></li></ul><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Versi yang dirilis pada tahun 2005, adalah versi 9. Program ini dipasarkan dengan nama \"Photoshop CS2.\" \"CS\" merefleksikan integrasi produk Photoshop dengan aplikasi \"<a href=\"https://id.wikipedia.org/wiki/Adobe_Creative_Suite\" title=\"Adobe Creative Suite\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Creative Suite</a>&nbsp;buatan Adobe dan disebut \"2\" karena program ini adalah versi rilis ke-2 sejak Adobe mengintegrasikan kedua produknya. Ada beberapa pada tambahan pada Photoshop CS2 seperti&nbsp;<i>multiple layer selecting</i>&nbsp;dan \"<i>warp</i>,\" versi kurva dari&nbsp;<i>transform tool</i>&nbsp;dan&nbsp;<i>color replacement tool</i>, yang sebelumnya hadir sebagai&nbsp;<i>plug-in</i>&nbsp;<a href=\"https://id.wikipedia.org/w/index.php?title=8BF&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"8BF (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">8BF</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Untuk para penggemar&nbsp;<a href=\"https://id.wikipedia.org/wiki/Fotografi\" title=\"Fotografi\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">fotografi</a>, Adobe menyediakan filter \"<i>reduce grain</i>\" (mengurangi grain) yang dapat membantu mengoptimalkan foto yang diambil pada kondisi kekurangan cahaya. Untuk \"memperjelas\" perbedaan produk CS dengan produk-produk Photoshop sebelumnya, Adobe menghilangkan lambang mata Photoshop, yang dipresentasikan dalam bentuk yang berbeda-beda sejak versi 3 sampai versi 7. Photshop CS dan CS2 kini menggunakan bulu sebagai ikon dan bentuk identifikasinya.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Versi beta Photoshop CS3 telah dirilis untuk pengguna CS2 pada tanggal 15 Desember 2006. Berbeda dengan Photoshop CS dan CS2 yang menggunakan bulu sebagai logonya, Logo untuk edisi ketiga ini berbentuk&nbsp;<a href=\"https://id.wikipedia.org/wiki/Tipografi\" title=\"Tipografi\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">tipografi</a>, dengan huruf \'Ps\' berwarna putih dan berlatar belakang biru-gradien.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><br></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Versi terakhirnya dilengkapi dengan&nbsp;<i>Adobe Camera RAW</i>, sebuah&nbsp;<a href=\"https://id.wikipedia.org/wiki/Plugin\" class=\"mw-redirect\" title=\"Plugin\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">plugin</a>&nbsp;yang dikembangkan oleh&nbsp;<a href=\"https://id.wikipedia.org/wiki/Thomas_Knoll\" title=\"Thomas Knoll\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">Thomas Knoll</a>&nbsp;yang dapat membaca beberapa format file RAW dari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kamera_digital\" title=\"Kamera digital\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">kamera digital</a>&nbsp;dan mengimpornya langsung ke Photoshop. Versi awal RAW plugin ini juga tersedia untuk Photoshop 7.0.1 dengan tambahan biaya $99 USD.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><br></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Secara Photoshop adalah sebuah program penyunting gambar standar industri yang ditujukan untuk para profesional&nbsp;<a href=\"https://id.wikipedia.org/w/index.php?title=Raster_grafik&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Raster grafik (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background: none rgb(255, 255, 255);\">raster grafik</a>, harga yang ditawarkan pun cukup tinggi; kira-kira US$600. Keadaan ini memancing beberapa programer untuk merancang peralatan grafik (<i>graphics tools</i>) dengan harga yang lebih terjangkau. Untuk menghadapi persaingan ini, dan untuk menghadapi pembajakan produknya, Adobe memperkenalkan&nbsp;<a href=\"https://id.wikipedia.org/w/index.php?title=Photoshop_Elements&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Photoshop Elements (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background: none rgb(255, 255, 255);\">Photoshop Elements</a>, sebuah versi lain dari Photoshop yang lebih minimalis, dengan harga terjangkau; di bawah US$100. Produk ini ditujukan untuk pengguna rumahan dan menghilangkan beberapa fitur profesional.<br></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><br></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><br></p>', 'e6db9f4c895478413b53125b85662c45.png', '2022-10-17 05:02:02', NULL, 4, 'Teknologi', 'adobe-photoshop', 1, 2, 3),
(18, 'apa itu blender 3D', '', '<p><b style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Blender</b><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;adalah&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Perangkat_lunak_sumber_terbuka\" title=\"Perangkat lunak sumber terbuka\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">perangkat lunak sumber terbuka</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Grafika_komputer_3D\" title=\"Grafika komputer 3D\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">grafika komputer 3D</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Perangkat lunak ini digunakan untuk membuat&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Film_animasi\" class=\"mw-redirect\" title=\"Film animasi\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">film animasi</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Efek_visual\" title=\"Efek visual\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">efek visual</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Percetakan_3D\" title=\"Percetakan 3D\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">model cetak 3D</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, aplikasi 3D interaktif, dan&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Permainan_video\" title=\"Permainan video\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">permainan video</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Blender memiliki beberapa fitur termasuk&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Model_3D\" title=\"Model 3D\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">pemodelan 3D</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Pemetaan_tekstur\" title=\"Pemetaan tekstur\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">penteksturan</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, penyunting gambar bitmap, penulangan,&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Animasi_fluida\" title=\"Animasi fluida\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">simulasi fluida</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;dan asap, simulasi partikel,&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Animasi\" title=\"Animasi\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">animasi</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, penyunting video, pemahat digital, dan&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Rendering\" title=\"Rendering\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">perenderan</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">.</span></p><p><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><br></span></p><p><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">sc:wikipedia</span></p>', '7e704aed0d7831fb0e566c73ce39c234.png', '2022-10-17 05:05:10', NULL, 4, 'Teknologi', 'apa-itu-blender-3d', 1, 1, 3),
(19, 'apa itu unreal', '', '<p><b style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Unreal Engine</b><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;adalah sebuah&nbsp;</span><a href=\"https://id.wikipedia.org/w/index.php?title=Aplikasi_pengembangan_permainan&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Aplikasi pengembangan permainan (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">aplikasi pengembangan permainan</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;(</span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">game engine</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">) yang dibuat oleh&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Epic_Games\" title=\"Epic Games\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">Epic Games</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, memulai debutnya pada 1998, dengan permainan bertema&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Tembak-menembak_orang-pertama\" title=\"Tembak-menembak orang-pertama\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">tembak-menembak orang-pertama</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;(FPS). walau pada awalnya dibuat untuk permainan bertema itu saja, aplikasi ini mampu digunakan oleh pengembang dalam berbagai jenis genre permainan seperti;&nbsp;</span><a href=\"https://id.wikipedia.org/w/index.php?title=Permainan_bersembunyi&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Permainan bersembunyi (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">permainan bersembunyi</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;(</span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">stealth</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">),&nbsp;</span><a href=\"https://id.wikipedia.org/w/index.php?title=Permainan_pertempuran&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Permainan pertempuran (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">permainan pertempuran</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;(</span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">fighting games</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">),&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Permainan_peran_daring_multipemain_masif\" class=\"mw-redirect\" title=\"Permainan peran daring multipemain masif\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">permainan peran daring multipemain masif</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;(MMORPG), hingga beberapa&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Permainan_peran\" class=\"mw-redirect\" title=\"Permainan peran\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">permainan peran</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;(RPG). Dengan kode pemrograman yang ditulis dalam&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/C%2B%2B\" title=\"C++\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">C++</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, aplikasi ini mampu membawakan kemudahan portabilitas yang tinggi serta merupakan aplikasi yang kerap digunakan berbagai&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Pengembang_permainan_video\" title=\"Pengembang permainan video\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">pengembang permainan video</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;kini. Contoh permainan yang dibuat menggunakan Unreal Engine meliputi&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/PUBG\" class=\"mw-redirect\" title=\"PUBG\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">PUBG</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://id.wikipedia.org/w/index.php?title=BioShock&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"BioShock (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">BioShock</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Gears_of_War_3\" title=\"Gears of War 3\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">Gears of War 3</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://id.wikipedia.org/wiki/Borderlands_2\" title=\"Borderlands 2\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">Borderlands 2</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, dan&nbsp;</span><a href=\"https://id.wikipedia.org/w/index.php?title=Batman:_Arkham_City&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Batman: Arkham City (halaman belum tersedia)\" style=\"color: rgb(221, 51, 51); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">Batman: Arkham City</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">.</span></p><p><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><br></span></p><p><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">sc:wikipedia</span></p>', 'f72accf7c30b4e33de2d117325058a8a.png', '2022-10-17 05:06:53', NULL, 4, 'Teknologi', 'apa-itu-unreal', 1, 1, 3);
INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_contents`, `post_image`, `post_date`, `post_last_update`, `post_category_id`, `post_tags`, `post_slug`, `post_status`, `post_views`, `post_user_id`) VALUES
(20, 'what is BITCOIN', '', '<h2 id=\"apa-itu-bitcoin\" class=\"joli-heading\" style=\"border-width: 0px; border-style: solid; --tw-border-opacity:1; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-transform:translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-blur:var(--tw-empty, ); --tw-brightness:var(--tw-empty, ); --tw-contrast:var(--tw-empty, ); --tw-grayscale:var(--tw-empty, ); --tw-hue-rotate:var(--tw-empty, ); --tw-invert:var(--tw-empty, ); --tw-saturate:var(--tw-empty, ); --tw-sepia:var(--tw-empty, ); --tw-drop-shadow:var(--tw-empty, ); --tw-filter:var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur:var(--tw-empty, ); --tw-backdrop-brightness:var(--tw-empty, ); --tw-backdrop-contrast:var(--tw-empty, ); --tw-backdrop-grayscale:var(--tw-empty, ); --tw-backdrop-hue-rotate:var(--tw-empty, ); --tw-backdrop-invert:var(--tw-empty, ); --tw-backdrop-opacity:var(--tw-empty, ); --tw-backdrop-saturate:var(--tw-empty, ); --tw-backdrop-sepia:var(--tw-empty, ); --tw-backdrop-filter:var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); margin: 2rem 0px 0px; font-size: 20px; font-weight: 600; line-height: 28px; color: rgb(23, 23, 23); font-family: Inter, system-ui, sans-serif;\">Apa Itu Bitcoin?</h2><p style=\"border-width: 0px; border-style: solid; --tw-border-opacity:1; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-transform:translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-blur:var(--tw-empty, ); --tw-brightness:var(--tw-empty, ); --tw-contrast:var(--tw-empty, ); --tw-grayscale:var(--tw-empty, ); --tw-hue-rotate:var(--tw-empty, ); --tw-invert:var(--tw-empty, ); --tw-saturate:var(--tw-empty, ); --tw-sepia:var(--tw-empty, ); --tw-drop-shadow:var(--tw-empty, ); --tw-filter:var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur:var(--tw-empty, ); --tw-backdrop-brightness:var(--tw-empty, ); --tw-backdrop-contrast:var(--tw-empty, ); --tw-backdrop-grayscale:var(--tw-empty, ); --tw-backdrop-hue-rotate:var(--tw-empty, ); --tw-backdrop-invert:var(--tw-empty, ); --tw-backdrop-opacity:var(--tw-empty, ); --tw-backdrop-saturate:var(--tw-empty, ); --tw-backdrop-sepia:var(--tw-empty, ); --tw-backdrop-filter:var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); margin-top: 1.5rem; margin-bottom: 0px; font-size: 16px; line-height: 1.5; color: rgb(23, 23, 23); font-family: Inter, system-ui, sans-serif;\">Bitcoin adalah mata uang digital yang didistribusikan secara elektronik dan tidak dikeluarkan atau dikendalikan oleh pemerintah mana pun. Dijalankan oleh serangkaian komputer di seluruh dunia yang membentuk jaringan keuangan terdesentralisasi, bitcoin dapat digunakan untuk menyimpan nilai dan dapat dikirim kapan pun ke siapa saja di mana saja. Perangkat lunak Bitcoin berbentuk&nbsp;<em style=\"border-width: 0px; border-style: solid; --tw-border-opacity:1; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-transform:translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-blur:var(--tw-empty, ); --tw-brightness:var(--tw-empty, ); --tw-contrast:var(--tw-empty, ); --tw-grayscale:var(--tw-empty, ); --tw-hue-rotate:var(--tw-empty, ); --tw-invert:var(--tw-empty, ); --tw-saturate:var(--tw-empty, ); --tw-sepia:var(--tw-empty, ); --tw-drop-shadow:var(--tw-empty, ); --tw-filter:var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur:var(--tw-empty, ); --tw-backdrop-brightness:var(--tw-empty, ); --tw-backdrop-contrast:var(--tw-empty, ); --tw-backdrop-grayscale:var(--tw-empty, ); --tw-backdrop-hue-rotate:var(--tw-empty, ); --tw-backdrop-invert:var(--tw-empty, ); --tw-backdrop-opacity:var(--tw-empty, ); --tw-backdrop-saturate:var(--tw-empty, ); --tw-backdrop-sepia:var(--tw-empty, ); --tw-backdrop-filter:var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); line-height: 22px;\">open source</em>, artinya siapa pun di seluruh dunia dapat menjalankan server Bitcoin dan berpartisipasi menjadi bagian dari jaringan.</p><h2 id=\"sejarah-bitcoin\" class=\"joli-heading\" style=\"border-width: 0px; border-style: solid; --tw-border-opacity:1; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-transform:translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-blur:var(--tw-empty, ); --tw-brightness:var(--tw-empty, ); --tw-contrast:var(--tw-empty, ); --tw-grayscale:var(--tw-empty, ); --tw-hue-rotate:var(--tw-empty, ); --tw-invert:var(--tw-empty, ); --tw-saturate:var(--tw-empty, ); --tw-sepia:var(--tw-empty, ); --tw-drop-shadow:var(--tw-empty, ); --tw-filter:var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur:var(--tw-empty, ); --tw-backdrop-brightness:var(--tw-empty, ); --tw-backdrop-contrast:var(--tw-empty, ); --tw-backdrop-grayscale:var(--tw-empty, ); --tw-backdrop-hue-rotate:var(--tw-empty, ); --tw-backdrop-invert:var(--tw-empty, ); --tw-backdrop-opacity:var(--tw-empty, ); --tw-backdrop-saturate:var(--tw-empty, ); --tw-backdrop-sepia:var(--tw-empty, ); --tw-backdrop-filter:var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); margin: 2rem 0px 0px; font-size: 20px; font-weight: 600; line-height: 28px; color: rgb(23, 23, 23); font-family: Inter, system-ui, sans-serif;\">Sejarah Bitcoin</h2><p style=\"border-width: 0px; border-style: solid; --tw-border-opacity:1; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-transform:translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-blur:var(--tw-empty, ); --tw-brightness:var(--tw-empty, ); --tw-contrast:var(--tw-empty, ); --tw-grayscale:var(--tw-empty, ); --tw-hue-rotate:var(--tw-empty, ); --tw-invert:var(--tw-empty, ); --tw-saturate:var(--tw-empty, ); --tw-sepia:var(--tw-empty, ); --tw-drop-shadow:var(--tw-empty, ); --tw-filter:var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur:var(--tw-empty, ); --tw-backdrop-brightness:var(--tw-empty, ); --tw-backdrop-contrast:var(--tw-empty, ); --tw-backdrop-grayscale:var(--tw-empty, ); --tw-backdrop-hue-rotate:var(--tw-empty, ); --tw-backdrop-invert:var(--tw-empty, ); --tw-backdrop-opacity:var(--tw-empty, ); --tw-backdrop-saturate:var(--tw-empty, ); --tw-backdrop-sepia:var(--tw-empty, ); --tw-backdrop-filter:var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); margin-top: 1.5rem; margin-bottom: 0px; font-size: 16px; line-height: 1.5; color: rgb(23, 23, 23); font-family: Inter, system-ui, sans-serif;\">Pada Oktober 2008, seseorang bernama Satoshi Nakamoto menerbitkan sebuah&nbsp;<a href=\"https://bitcoin.org/bitcoin.pdf\" style=\"border-width: 0px; border-style: solid; --tw-border-opacity:1; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-transform:translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-blur:var(--tw-empty, ); --tw-brightness:var(--tw-empty, ); --tw-contrast:var(--tw-empty, ); --tw-grayscale:var(--tw-empty, ); --tw-hue-rotate:var(--tw-empty, ); --tw-invert:var(--tw-empty, ); --tw-saturate:var(--tw-empty, ); --tw-sepia:var(--tw-empty, ); --tw-drop-shadow:var(--tw-empty, ); --tw-filter:var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur:var(--tw-empty, ); --tw-backdrop-brightness:var(--tw-empty, ); --tw-backdrop-contrast:var(--tw-empty, ); --tw-backdrop-grayscale:var(--tw-empty, ); --tw-backdrop-hue-rotate:var(--tw-empty, ); --tw-backdrop-invert:var(--tw-empty, ); --tw-backdrop-opacity:var(--tw-empty, ); --tw-backdrop-saturate:var(--tw-empty, ); --tw-backdrop-sepia:var(--tw-empty, ); --tw-backdrop-filter:var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); color: rgba(10,87,255,var(--tw-text-opacity)); text-decoration: inherit; line-height: 22px; --tw-text-opacity:1;\">tulisan 8 halaman</a>&nbsp;yang berjudul “<span style=\"border-width: 0px; border-style: solid; --tw-border-opacity:1; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-transform:translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-blur:var(--tw-empty, ); --tw-brightness:var(--tw-empty, ); --tw-contrast:var(--tw-empty, ); --tw-grayscale:var(--tw-empty, ); --tw-hue-rotate:var(--tw-empty, ); --tw-invert:var(--tw-empty, ); --tw-saturate:var(--tw-empty, ); --tw-sepia:var(--tw-empty, ); --tw-drop-shadow:var(--tw-empty, ); --tw-filter:var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur:var(--tw-empty, ); --tw-backdrop-brightness:var(--tw-empty, ); --tw-backdrop-contrast:var(--tw-empty, ); --tw-backdrop-grayscale:var(--tw-empty, ); --tw-backdrop-hue-rotate:var(--tw-empty, ); --tw-backdrop-invert:var(--tw-empty, ); --tw-backdrop-opacity:var(--tw-empty, ); --tw-backdrop-saturate:var(--tw-empty, ); --tw-backdrop-sepia:var(--tw-empty, ); --tw-backdrop-filter:var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); font-weight: bolder; line-height: 22px;\">Bitcoin: A Peer-to-Peer Electronic Cash System.”</span>&nbsp;Tulisan ini dirilis ke dalam milis yang beranggotakan ahli kriptografi dan ilmu komputer. Pada awalnya, tulisan ini hanya dibahas dan didiskusikan dalam sebuah forum kecil.</p><p style=\"border-width: 0px; border-style: solid; --tw-border-opacity:1; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-transform:translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-blur:var(--tw-empty, ); --tw-brightness:var(--tw-empty, ); --tw-contrast:var(--tw-empty, ); --tw-grayscale:var(--tw-empty, ); --tw-hue-rotate:var(--tw-empty, ); --tw-invert:var(--tw-empty, ); --tw-saturate:var(--tw-empty, ); --tw-sepia:var(--tw-empty, ); --tw-drop-shadow:var(--tw-empty, ); --tw-filter:var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur:var(--tw-empty, ); --tw-backdrop-brightness:var(--tw-empty, ); --tw-backdrop-contrast:var(--tw-empty, ); --tw-backdrop-grayscale:var(--tw-empty, ); --tw-backdrop-hue-rotate:var(--tw-empty, ); --tw-backdrop-invert:var(--tw-empty, ); --tw-backdrop-opacity:var(--tw-empty, ); --tw-backdrop-saturate:var(--tw-empty, ); --tw-backdrop-sepia:var(--tw-empty, ); --tw-backdrop-filter:var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); margin-top: 1.5rem; margin-bottom: 0px; font-size: 16px; line-height: 1.5; color: rgb(23, 23, 23); font-family: Inter, system-ui, sans-serif;\">Jaringan bitcoin kemudian diluncurkan pada 2009, berdasarkan penduan implementasi yang dipublikasikan oleh Nakamoto dan sudah melewati proses revisi oleh sejumlah&nbsp;<em style=\"border-width: 0px; border-style: solid; --tw-border-opacity:1; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-transform:translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-blur:var(--tw-empty, ); --tw-brightness:var(--tw-empty, ); --tw-contrast:var(--tw-empty, ); --tw-grayscale:var(--tw-empty, ); --tw-hue-rotate:var(--tw-empty, ); --tw-invert:var(--tw-empty, ); --tw-saturate:var(--tw-empty, ); --tw-sepia:var(--tw-empty, ); --tw-drop-shadow:var(--tw-empty, ); --tw-filter:var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur:var(--tw-empty, ); --tw-backdrop-brightness:var(--tw-empty, ); --tw-backdrop-contrast:var(--tw-empty, ); --tw-backdrop-grayscale:var(--tw-empty, ); --tw-backdrop-hue-rotate:var(--tw-empty, ); --tw-backdrop-invert:var(--tw-empty, ); --tw-backdrop-opacity:var(--tw-empty, ); --tw-backdrop-saturate:var(--tw-empty, ); --tw-backdrop-sepia:var(--tw-empty, ); --tw-backdrop-filter:var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); line-height: 22px;\">programmer.</em>&nbsp;Pada tanggal 26 April 2011, Satoshi mengirimkan email kepada rekan-rekan sesama&nbsp;<em style=\"border-width: 0px; border-style: solid; --tw-border-opacity:1; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-transform:translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-blur:var(--tw-empty, ); --tw-brightness:var(--tw-empty, ); --tw-contrast:var(--tw-empty, ); --tw-grayscale:var(--tw-empty, ); --tw-hue-rotate:var(--tw-empty, ); --tw-invert:var(--tw-empty, ); --tw-saturate:var(--tw-empty, ); --tw-sepia:var(--tw-empty, ); --tw-drop-shadow:var(--tw-empty, ); --tw-filter:var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur:var(--tw-empty, ); --tw-backdrop-brightness:var(--tw-empty, ); --tw-backdrop-contrast:var(--tw-empty, ); --tw-backdrop-grayscale:var(--tw-empty, ); --tw-backdrop-hue-rotate:var(--tw-empty, ); --tw-backdrop-invert:var(--tw-empty, ); --tw-backdrop-opacity:var(--tw-empty, ); --tw-backdrop-saturate:var(--tw-empty, ); --tw-backdrop-sepia:var(--tw-empty, ); --tw-backdrop-filter:var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); line-height: 22px;\">developer</em>&nbsp;di komunitasnya, bahwa ia memutuskan untuk meninggalkan proyek Bitcoin dan menyerahkan kendali pengembangan kode dan jaringannya kepada sekelompok sukarelawan. Hingga saat ini, belum ada yang mengetahui siapa orang atau kelompok di balik nama Satoshi Nakamoto.</p><p style=\"border-width: 0px; border-style: solid; --tw-border-opacity:1; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-transform:translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-blur:var(--tw-empty, ); --tw-brightness:var(--tw-empty, ); --tw-contrast:var(--tw-empty, ); --tw-grayscale:var(--tw-empty, ); --tw-hue-rotate:var(--tw-empty, ); --tw-invert:var(--tw-empty, ); --tw-saturate:var(--tw-empty, ); --tw-sepia:var(--tw-empty, ); --tw-drop-shadow:var(--tw-empty, ); --tw-filter:var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur:var(--tw-empty, ); --tw-backdrop-brightness:var(--tw-empty, ); --tw-backdrop-contrast:var(--tw-empty, ); --tw-backdrop-grayscale:var(--tw-empty, ); --tw-backdrop-hue-rotate:var(--tw-empty, ); --tw-backdrop-invert:var(--tw-empty, ); --tw-backdrop-opacity:var(--tw-empty, ); --tw-backdrop-saturate:var(--tw-empty, ); --tw-backdrop-sepia:var(--tw-empty, ); --tw-backdrop-filter:var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); margin-top: 1.5rem; margin-bottom: 0px; font-size: 16px; line-height: 1.5; color: rgb(23, 23, 23); font-family: Inter, system-ui, sans-serif;\"><br></p><p style=\"border-width: 0px; border-style: solid; --tw-border-opacity:1; border-color: rgba(229,231,235,var(--tw-border-opacity)); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-transform:translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-blur:var(--tw-empty, ); --tw-brightness:var(--tw-empty, ); --tw-contrast:var(--tw-empty, ); --tw-grayscale:var(--tw-empty, ); --tw-hue-rotate:var(--tw-empty, ); --tw-invert:var(--tw-empty, ); --tw-saturate:var(--tw-empty, ); --tw-sepia:var(--tw-empty, ); --tw-drop-shadow:var(--tw-empty, ); --tw-filter:var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); --tw-backdrop-blur:var(--tw-empty, ); --tw-backdrop-brightness:var(--tw-empty, ); --tw-backdrop-contrast:var(--tw-empty, ); --tw-backdrop-grayscale:var(--tw-empty, ); --tw-backdrop-hue-rotate:var(--tw-empty, ); --tw-backdrop-invert:var(--tw-empty, ); --tw-backdrop-opacity:var(--tw-empty, ); --tw-backdrop-saturate:var(--tw-empty, ); --tw-backdrop-sepia:var(--tw-empty, ); --tw-backdrop-filter:var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia); margin-top: 1.5rem; margin-bottom: 0px; font-size: 16px; line-height: 1.5; color: rgb(23, 23, 23); font-family: Inter, system-ui, sans-serif;\">sc: pintu</p>', '8fa501a359ba010fd3ad5c97f58d01bb.png', '2022-10-17 05:39:48', NULL, 4, 'Teknologi', 'what-is-bitcoin', 1, 1, 4),
(21, 'linux what its is', '', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-bottom: 15pt; font-size: 15px; font-family: lato; letter-spacing: 0.3px; line-height: 19.5pt; color: rgb(33, 37, 41); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;, &quot;sans-serif&quot;; font-size: 12pt; color: rgb(34, 34, 34);\">Linux adalah salah satu sistem operasi yang cukup umum ditemui. Sama seperti Windows, iOS, dan Mac OS, Linux adalah sistem operasi. Linux adalah sistem operasi yang digunakan pada smartphone, komputer, perangkat pintar, hingga server perusahaan.<o:p style=\"box-sizing: inherit;\"></o:p></span></p><p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-bottom: 15pt; font-size: 15px; font-family: lato; letter-spacing: 0.3px; line-height: 19.5pt; color: rgb(33, 37, 41); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;, &quot;sans-serif&quot;; font-size: 12pt; color: rgb(34, 34, 34);\">Linux adalah salah satu sistem operasi paling andal, aman, dan dapat dipercaya. Linux telah berkembang menjadi salah satu ekosistem komputer terbesar. Linux adalah sistem yang dikelola oleh banyak pengembang di seluruh dunia.<o:p style=\"box-sizing: inherit;\"></o:p></span></p><p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-bottom: 15pt; font-size: 15px; font-family: lato; letter-spacing: 0.3px; line-height: 19.5pt; color: rgb(33, 37, 41); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: justify;\"><span style=\"box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;, &quot;sans-serif&quot;; font-size: 12pt; color: rgb(34, 34, 34);\">Linux adalah sistem operasi yang memiliki banyak versi. Macam-macam Linux bahkan bisa dikembangkan secara bebas. Linux dapat dimodifikasi, digunakan dan didistribusikan kembali secara bebas oleh siapa saja.</span></p>', '330ce87dd3276bdb5e2f9427c400ddb4.jpg', '2022-10-17 05:43:47', NULL, 4, 'Teknologi', 'linux-what-its-is', 1, 0, 4),
(22, 'sofware xampp', '', '<h2 style=\"font-size: 2rem; font-weight: 800; font-family: Mulish, Arial, Helvetica, sans-serif;\"><span id=\"Apa_itu_XAMPP\">Apa itu XAMPP?</span></h2><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\">XAMPP adalah<em>&nbsp;software open source</em>&nbsp;berbasis&nbsp;<em>web server</em>&nbsp;yang berisi berbagai program. Aplikasi ini mendukung berbagai sistem operasi seperti Linux, Windows, MacOS, dan Solaris. Fungsi XAMPP adalah sebagai server lokal/<em>localhost</em>, di dalamnya sudah mencakup program Apache, MySQL dan PHP.</p><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\">Kemunculan XAMPP diawali dengan adanya kesulitan dalam menginstall Apache dan jika akan menambahkan dukungan PHP dan MySQL. Hal ini kemudian menjadikan munculnya XAMPP, sebagai aplikasi untuk mempermudah developer yang membutuhkan web server di localhost hanya dengan satu aplikasi.</p><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\">XAMPP sudah berdiri selama lebih dari 10 tahun, sehingga komunitas pengembangnya sudah banyak. Jika mengalami kendala terkait XAMPP, kamu bisa gabung di komunitas XAMPP untuk mencari solusinya. Komunitas tersebut bernama&nbsp;<a href=\"https://community.apachefriends.org/f\" target=\"_blank\" rel=\"nofollow noopener noreferrer\" title=\"Apache Friends Forums\" style=\"color: var(--link-color); text-decoration-line: underline; transition: background 0.2s ease 0s; outline: none;\">Apache Friends Forums</a>.</p><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\">Xampp tersusun dari singkatan dari program-program yang ada di dalamnya, antara lain:</p><h3 style=\"font-size: 1.5rem; line-height: 1.2; clear: both; font-family: Mulish, Arial, Helvetica, sans-serif; margin: 30px 0px; letter-spacing: -0.5px;\"><span id=\"X_Cross_platform\">X (Cross platform)</span></h3><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\">X merupakan kode penanda dari&nbsp;<em>software cross platform</em>. Artinya, XAMPP dapat dijalankan diberbagai sistem operasi yang umum digunakan. Seperti Windows, Linux, serta Mac OS.</p><h3 style=\"font-size: 1.5rem; line-height: 1.2; clear: both; font-family: Mulish, Arial, Helvetica, sans-serif; margin: 30px 0px; letter-spacing: -0.5px;\"><span id=\"A_Apache\">A (Apache)</span></h3><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\">Apache merupakan aplikasi&nbsp;<em>web server</em>&nbsp;yang dapat digunakan secara gratis (bersifat&nbsp;<em>open source)</em>. Dengan menggunakan&nbsp;<em>web server</em>, seseorang dapat menjalankan file yang berisi kode (<a href=\"https://www.dewaweb.com/blog/apa-itu-php/\" title=\"bahasa pemrograman PHP\" style=\"color: var(--link-color); text-decoration-line: underline; transition: background 0.2s ease 0s; outline: none;\">bahasa pemrograman PHP</a>) di localhost.</p><h3 style=\"font-size: 1.5rem; line-height: 1.2; clear: both; font-family: Mulish, Arial, Helvetica, sans-serif; margin: 30px 0px; letter-spacing: -0.5px;\"><span id=\"M_MySQL_MariaDB\">M (MySQL / MariaDB)</span></h3><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\"><a href=\"https://www.dewaweb.com/blog/apa-itu-mysql/\" title=\"MySQL\" style=\"color: var(--link-color); text-decoration-line: underline; transition: background 0.2s ease 0s; outline: none;\">MySQL</a>&nbsp;merupakan salah satu aplikasi database server yang menggunakan bahasa pemrograman SQL&nbsp;<em>(Structured Query Language).</em>&nbsp;Fungsinya adalah untuk mengelola data secara terstruktur dan sistematis. MySQL bisa digunakan di localhost tanpa memerlukan koneksi internet, sehingga&nbsp;<a href=\"https://www.dewaweb.com/blog/web-developer/\" title=\"developer\" style=\"color: var(--link-color); text-decoration-line: underline; transition: background 0.2s ease 0s; outline: none;\"><em>developer</em></a>&nbsp;dan&nbsp;<a href=\"https://www.dewaweb.com/blog/programmer-adalah/\" title=\"programmer\" style=\"color: var(--link-color); text-decoration-line: underline; transition: background 0.2s ease 0s; outline: none;\"><em>programmer</em></a>&nbsp;dapat membuat aplikasi berbasis&nbsp;<em>website</em>&nbsp;di komputernya.</p><h3 style=\"font-size: 1.5rem; line-height: 1.2; clear: both; font-family: Mulish, Arial, Helvetica, sans-serif; margin: 30px 0px; letter-spacing: -0.5px;\"><span id=\"P_PHP\">P (PHP)</span></h3><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\">PHP merupakan salah satu bahasa pemrograman yang dijalankan pada sisi&nbsp;<em>server</em>&nbsp;yang dapat digunakan untuk mengelola konten dinamis dan&nbsp;<em>database</em>. Dengan menggunakan PHP,&nbsp;<em>website</em>&nbsp;menjadi lebih dinamis.</p><h3 style=\"font-size: 1.5rem; line-height: 1.2; clear: both; font-family: Mulish, Arial, Helvetica, sans-serif; margin: 30px 0px; letter-spacing: -0.5px;\"><span id=\"P_Perl\">P (Perl)</span></h3><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\">Perl merupakan salah satu bahasa pemrograman tingkat tinggi yang bisa difungsikan untuk segala kebutuhan (<em>cross platform</em>). Saat ini perl banyak digunakan untuk keperluan pengembangan aplikasi hingga&nbsp;<em>web server.</em></p><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\"><span style=\"font-weight: bolder;\">Baca juga :<a href=\"https://www.dewaweb.com/blog/wamp-server-cara-download-dan-install/\" title=\" WAMP Server: Cara Download dan Install\" style=\"color: var(--link-color); text-decoration-line: underline; transition: background 0.2s ease 0s; outline: none;\">&nbsp;WAMP Server: Cara Download dan Install</a></span></p><h2 style=\"font-size: 2rem; font-weight: 800; font-family: Mulish, Arial, Helvetica, sans-serif;\"><span id=\"Fungsi_XAMPP\">Fungsi XAMPP</span></h2><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\">Banyak fungsi dari penggunaan XAMPP yang bisa didapatkan. Berikut beberapa fungsi XAMPP:</p><h3 style=\"font-size: 1.5rem; line-height: 1.2; clear: both; font-family: Mulish, Arial, Helvetica, sans-serif; margin: 30px 0px; letter-spacing: -0.5px;\"><span id=\"Melakukan_pengaturan_database_phpMyAdmin\">Melakukan pengaturan database phpMyAdmin</span></h3><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\">XAMPP dapat berfungsi sebagai aplikasi untuk mengatur database pada PHPMyAdmin tanpa memerlukan koneksi internet. Dengan begitu, kamu menjadi lebih bebas dalam melakukan beberapa perubahan terkait database. Seperti mengolah database misalnya.</p><h3 style=\"font-size: 1.5rem; line-height: 1.2; clear: both; font-family: Mulish, Arial, Helvetica, sans-serif; margin: 30px 0px; letter-spacing: -0.5px;\"><span id=\"Menjalankan_Laravel_melalui_perangkat\">Menjalankan Laravel melalui perangkat</span></h3><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\">Bagi pengguna framework Laravel, kamu bisa menginstall Laravel dan menjalankannya di localhost. Keunggulan mengembangkan website menggunakan Laravel di localhost adalah proses pengeditan kode menjadi lebih cepat. Maka, masa pembuatan website pun menjadi lebih cepat.</p><h3 style=\"font-size: 1.5rem; line-height: 1.2; clear: both; font-family: Mulish, Arial, Helvetica, sans-serif; margin: 30px 0px; letter-spacing: -0.5px;\"><span id=\"Menginstall_WordPress_secara_offline\">Menginstall WordPress secara offline</span></h3><p style=\"margin-bottom: 25px; color: rgb(69, 70, 75); font-family: Mulish, Arial, Helvetica, sans-serif; font-size: 19px;\">Selain Laravel, kamu juga bisa menginstall dan&nbsp;<a href=\"https://www.dewaweb.com/blog/tutorial-xampp-install-wordpress/\" title=\"menjalankan WordPress di localhost\" style=\"color: var(--link-color); text-decoration-line: underline; transition: background 0.2s ease 0s; outline: none;\">menjalankan WordPress di&nbsp;<em>localhost</em></a>. WordPress saat ini merupakan salah satu&nbsp;<a href=\"https://www.dewaweb.com/blog/apa-itu-cms/\" title=\"CMS\" style=\"color: var(--link-color); text-decoration-line: underline; transition: background 0.2s ease 0s; outline: none;\">CMS</a>&nbsp;dengan pengguna terbanyak di dunia. Kamu bisa men-<em>download</em>&nbsp;plugin dan tema yang disediakan secara gratis.</p>', '6b3fe010912308c85da4591e055cf411.png', '2022-10-17 05:47:58', NULL, 4, 'Teknologi', 'sofware-xampp', 1, 1, 4),
(23, 'canva', '', '<h2 id=\"h-apa-itu-canva\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 2rem; font-family: &quot;PT Sans&quot;; font-weight: 700; color: rgb(34, 34, 34); font-size: 2rem;\">Apa Itu Canva?<span class=\"ez-toc-section-end\" style=\"box-sizing: inherit; font-family: Poppins !important;\"></span></h2><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-size: 18px; font-family: Poppins !important;\">Canva adalah sebuah platform pembuatan desain grafis dan konten publikasi yang lebih mudah dan cepat daripada software grafis lainnya. Tools ajaib ini bisa Anda gunakan secara online melalui browser desktop atau download aplikasi mobile-nya melalui App atau Play Store. Selain itu, ia menawarkan dua versi yaitu versi gratis dan versi berbayar (Pro).</p><h3 id=\"h-profil-singkat-canva\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 2rem; font-family: &quot;PT Sans&quot;; color: rgb(34, 34, 34); font-size: 1.75rem;\"><span class=\"ez-toc-section\" id=\"Profil_Singkat_Canva\" style=\"box-sizing: inherit; font-family: Poppins !important;\"></span>Profil Singkat Canva<span class=\"ez-toc-section-end\" style=\"box-sizing: inherit; font-family: Poppins !important;\"></span></h3><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-size: 18px; font-family: Poppins !important;\">Sejak 2013, platform ini berhasil merebut hati lebih dari 60 juta pengguna aktif bulanan dari 190 negara di dunia. Dan dari jutaan orang mengetahui apa itu Canva, sudah lebih dari 7 miliar desain berhasil tercipta. Berkat permasalahan yang Melanie Perkins, Cameron Adams, dan Cliff Obrecht temukan di lapangan bahwa banyak sekali orang yang ingin membuat desainnya sendiri dengan mudah. Hingga pada akhirnya terciptalah Canva yang mereka kemas dengan prinsip “make complex things simple”.</p><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-size: 18px; font-family: Poppins !important;\">Hingga saat ini, Canva adalah produk utama perusahaan dengan nama serupa dari Perth, Australia yang sudah berekspansi ke Manila, Filipina dan Beijing, China. Adapun berkat popularitasnya dan performanya sebagai tools easy-to-use, platform ini berhasil mendapatkan tiga penghargaan bergengsi, berikut ini detailnya.</p><ul style=\"margin-bottom: 2rem; color: rgb(34, 34, 34); font-family: Merriweather; font-size: 18px;\"><li style=\"box-sizing: inherit;\">Enterprise Tech 30 ?2019 dalam kategori mid-stage (Winner)</li><li style=\"box-sizing: inherit;\">Google Play Award 2019 (Winner)</li><li style=\"box-sizing: inherit;\">Great Place to Work Award 2019 (Winner)</li></ul><h3 id=\"h-kegunaan-canva\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 2rem; font-family: &quot;PT Sans&quot;; color: rgb(34, 34, 34); font-size: 1.75rem;\"><span class=\"ez-toc-section\" id=\"Kegunaan_Canva\" style=\"box-sizing: inherit; font-family: Poppins !important;\"></span>Kegunaan Canva<span class=\"ez-toc-section-end\" style=\"box-sizing: inherit; font-family: Poppins !important;\"></span></h3><p style=\"box-sizing: inherit; margin-bottom: 2rem; color: rgb(34, 34, 34); font-size: 18px; font-family: Poppins !important;\">Semenjak banyak orang mulai mengenal apa itu Canva, para pengembangnya terus berusaha menghadirkan inovasi layanannya.&nbsp; Alhasil, kini Anda bisa menggunakan platform ini untuk membuat berbagai macam desain untuk kebutuhan personal dan profesional. Adapun kegunaan Canva adalah:</p><ul style=\"margin-bottom: 2rem; color: rgb(34, 34, 34); font-family: Merriweather; font-size: 18px;\"><li style=\"box-sizing: inherit;\">Membuat presentasi mirip PowerPoint</li><li style=\"box-sizing: inherit;\">Membuat konten Instagram untuk feed, Story, dan Ads dengan pilihan animasi atau static</li><li style=\"box-sizing: inherit;\">Mendesain postingan, cover, Ads, event cover, Facebook video, dan story Facebook</li><li style=\"box-sizing: inherit;\">Mengedit video untuk berbagai platform media sosial, seperti Instagram, Facebook, TikTok, Pinterest, LinkedIn, dan YouTube</li><li style=\"box-sizing: inherit;\">Mendesain poster, flyer, brosur, iklan, postcard, business card, newsletter, dan invoice untuk kebutuhan bisnis dan sebagai&nbsp;<a href=\"http://makinrajin.com/blog/digital-marketing-tools\" data-wpel-link=\"internal\" style=\"box-sizing: inherit; color: rgb(51, 170, 255); touch-action: manipulation; transition: all 0.3s ease-in 0s;\">digital marketing tools</a></li><li style=\"box-sizing: inherit;\">Membantu menyusun format resume, CV, letterhead, proposal, sertifikat, serta berbagai kartu dan undangan</li><li style=\"box-sizing: inherit;\">Menyusun infografis, mind map, kolase foto, virtual background, format kalender, worksheet, planner, peta konsep, dan wallpaper/background layar gadget.</li></ul>', '5f117ab583c1b22d67bd4633d027e0a2.jpg', '2022-10-18 05:02:48', NULL, 4, 'Teknologi', 'canva', 1, 0, 6),
(24, 'test mobile ', '', 'hallo ygy', 'e25a4fe3802e5438cf05b4d9176ca0d4.jpg', '2022-10-18 05:05:00', NULL, 1, 'Psikologi', 'test-mobile-', 1, 2, 3),
(25, 'Chrome', '', '<p>Google Chrome adalah peramban web lintas platform yang dikembangkan oleh Google. Peramban ini pertama kali dirilis pada tahun 2008 untuk Microsoft Windows, kemudian diporting ke Android, iOS, Linux, dan macOS yang menjadikannya sebagai peramban bawaan dalam sistem operasi.</p><p>Sc : wikipedia</p>', '4e0cb820349c765851ebeb72add66dcf.png', '2022-10-18 05:07:29', NULL, 4, 'Teknologi', 'chrome', 1, 0, 4),
(26, 'why love is hurt', '', '<p><a href=\"https://www.youtube.com/watch?v=Qznt-qaesOg\">Lil Tjay - Love Hurts (Lyrics) ft. Toosii - YouTube</a></p><p><span style=\"color: rgb(189, 193, 198); font-family: arial, sans-serif; font-size: 16px; background-color: rgb(32, 33, 36);\">Love is painful because&nbsp;</span><b style=\"color: rgb(189, 193, 198); font-family: arial, sans-serif; font-size: 16px; background-color: rgb(32, 33, 36);\">love brings growth</b><span style=\"color: rgb(189, 193, 198); font-family: arial, sans-serif; font-size: 16px; background-color: rgb(32, 33, 36);\">. Love demands, transforms and is painful because love gives you a new birth. Love brings your heart into relationship -- and when the heart is in relationship there is always pain. If you avoid the pain, you will miss all pleasures of life</span><br></p>', '1634fe731e425673f763374c280b98d2.jpg', '2022-10-18 06:15:03', NULL, 7, 'Psikologi,Motivasi,Kesehatan', 'why-love-is-hurt', 1, 3, 7),
(27, 'jember itu madura atau jawa', '', 'soalnya bahasa di jember campuran', '9a44473831fbc78263702a460b0529bb.jpeg', '2022-10-19 10:44:29', NULL, 5, NULL, 'jember-itu-madura-atau-jawa', 1, 2, 6),
(28, 'mengatasi ketidak percayaan diri', '', '1. Dimulai dari Sikap Berdiri atau Duduk&nbsp;<div>Ada efek positif dari postur berdiri maupun duduk yang kamu lakukan. Jika kamu berdiri dan duduk dengan tegap, secara tidak langsung tubuh mengirimkan sinyal positif ke seluruh sel-sel tubuh.&nbsp;</div><div><br></div><div>Postur tubuh mengirimkan pesan ke otak yang benar-benar dapat mengubah perasaan. Jadi, jika kamu ingin merasa lebih kuat, duduklah dengan tegak, tersenyum, atau berdiri dalam “pose kekuatan”, dan pesan itu akan dikirim ke otak.</div><div><br></div><div>2. Mindfulness</div><div>Mindfulness terbukti memiliki manfaat yang signifikan untuk kesehatan fisik dan psikologis. Kamu dapat melatih perhatian penuh kapan dan di mana saja. kamu dapat mencobanya sekarang dengan mengikuti langkah-langkah berikut:</div><div><br></div><div>- Sadar akan kesadaran diri dengan cara mengamati diri sendiri dan lingkungan.</div><div><br></div><div>- Mulailah dengan sensasi tubuh, rasakan kaki dan kaki, perut dan dada, lengan, leher, serta kepala.</div><div><br></div><div>- Perhatikan napas mengalir masuk dan keluar serta sensasi natural yang kerap tidak kamu sadari.</div><div><br></div><div>3. Olahraga secara Teratur</div><div>Latihan memiliki efek kuat pada kepercayaan diri. Olahraga teratur melepaskan endorfin yang pada gilirannya berinteraksi dengan reseptor opiat di otak, yang menghasilkan keadaan pikiran menyenangkan dan pada akhirnya kamu akan akan melihat diri dalam sudut pandang yang lebih positif. Ketika berolahraga secara teratur, kamu tidak hanya akan menjadi lebih baik secara fisik, tetapi juga akan merasa lebih termotivasi untuk bertindak dengan cara yang membangun kepercayaan diri.</div><div><br></div><div>Baca juga: Ini Dampak Psikologi Anak yang Selalu Dijanjikan Hadiah</div><div><br></div><div>4. Ikuti proses, Risiko, dan Membuat Kesalahan</div><div>Biarkan diri untuk belajar, mengambil risiko, dan membuat kesalahan. Saat keluar dari zona nyaman dan memulai sesuatu yang baru, kamu akan memperluas batasan pada diri sendiri. Ketika kamu berhasil menyelesaikan sesuatu yang berada di luar zona nyaman maka secara tidak langsung kamu telah membangun kepercayaan diri.</div><div><br></div><div>5. Katakan yang Baik pada Diri Sendiri</div><div>Jadilah penyemangat untuk dirimu sendiri. Bicaralah hal-hal yang baik kepada diri karena pada akhirnya kamulah penyemangat terbaik untuk dirimu sendiri. Kemudian hal lain yang perlu dilakukan adalah jangan sungkan untuk meminta bantuan orang lain. Begitu juga sebaliknya, bantulah orang lain saat ada yang membutuhkan.</div><div><br></div><div>6. Percaya dengan Diri Sendiri</div><div>Mendengarkan masukan dari orang-orang yang ada di sekeliling memang diperlukan. Namun, jangan sampai masukan yang disampaikan membuat keinginan atau tujuan kamu berubah. Jika kamu membutuhkan masukan yang tepat, tidak ada salahnya pastikan kamu menerima saran dari orang yang tepat. Jangan lupa untuk selalu percaya terhadap diri sendiri agar kamu bisa mencapai tujuan yang diinginkan.</div><div><br></div><div>7. Perbanyak Kegiatan yang Menyenangkan</div><div>Melakukan hal-hal yang menyenangkan diri sendiri nampaknya sah-sah saja dalam membantu kamu meningkatkan rasa percaya diri. Hal ini akan membuat kamu melepaskan segala penat, stres, hingga cemas yang dirasakan. Dengan begitu, kamu akan lebih siap dan percaya diri melangkah dalam menggapai tujuan yang kamu inginkan.</div>', '046fe312d79d1eb9a57176c9f77c7f5f.jpg', '2022-10-20 02:03:18', NULL, 1, 'Psikologi,Motivasi,Kesehatan', 'mengatasi-ketidak-percayaan-diri', 1, 2, 3),
(29, 'jangan sakiti binatang ', '', '<p>jika kalian tidak suka maka dengan mereka setidaknya jangan membunuhnya, apa lagi dengan cara di racun,di tembak, atau di jerat,&nbsp;</p><p>mereka juga ciptaan Tuhan yang harus kita jaga:)</p><p><br></p><img src=\"https://mblog.kelastkj1.xyz/assets/images/FB_IMG_16662314875291859.jpg\" style=\"width: 312px;\"><p><br></p>', '36e26e94f91aa0e4a52f0a1862d93334.jpeg', '2022-10-20 02:07:20', '2022-10-20 11:15:07', 3, 'Motivasi', 'jangan-sakiti-binatang-', 1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `view_id` int(11) NOT NULL,
  `view_date` timestamp NULL DEFAULT current_timestamp(),
  `view_ip` varchar(50) DEFAULT NULL,
  `view_post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_post_views`
--

INSERT INTO `tbl_post_views` (`view_id`, `view_date`, `view_ip`, `view_post_id`) VALUES
(1, '2019-04-06 13:33:39', '::1', 6),
(2, '2019-04-06 23:04:18', '::1', 6),
(3, '2019-04-07 03:32:54', '::1', 5),
(4, '2019-04-07 03:33:14', '::1', 4),
(5, '2019-04-07 04:03:50', '::1', 3),
(6, '2019-04-09 12:19:36', '::1', 6),
(7, '2019-04-09 13:28:30', '::1', 4),
(8, '2019-04-10 01:33:10', '::1', 5),
(9, '2019-04-10 10:00:27', '::1', 2),
(10, '2019-04-10 10:58:17', '::1', 1),
(11, '2019-04-10 13:20:32', '::1', 3),
(12, '2019-04-10 13:20:46', '::1', 6),
(13, '2019-04-11 03:32:18', '::1', 6),
(14, '2019-04-11 04:24:22', '::1', 4),
(15, '2019-04-11 07:58:35', '::1', 2),
(16, '2019-04-12 04:23:04', '::1', 6),
(17, '2019-04-12 10:09:30', '::1', 5),
(18, '2019-04-13 01:42:27', '::1', 6),
(19, '2019-04-13 02:01:01', '::1', 5),
(20, '2019-04-13 02:01:18', '::1', 3),
(21, '2019-04-13 03:23:34', '::1', 4),
(22, '2019-04-14 01:39:17', '::1', 1),
(23, '2019-04-14 03:24:24', '::1', 3),
(24, '2019-04-14 04:08:24', '::1', 2),
(25, '2019-04-15 03:44:42', '::1', 6),
(26, '2019-12-19 02:28:13', '::1', 6),
(27, '2019-12-19 02:29:33', '::1', 7),
(28, '2019-12-28 03:44:29', '::1', 7),
(29, '2019-12-28 07:44:18', '::1', 3),
(30, '2019-12-28 07:44:24', '::1', 2),
(31, '2019-12-28 08:06:56', '::1', 6),
(32, '2019-12-30 03:36:11', '::1', 4),
(33, '2019-12-30 04:21:54', '::1', 7),
(34, '2019-12-31 02:54:27', '::1', 4),
(35, '2019-12-31 02:58:04', '::1', 7),
(36, '2019-12-31 02:59:37', '::1', 1),
(37, '2019-12-31 03:58:35', '::1', 6),
(38, '2020-01-01 02:54:01', '::1', 7),
(39, '2020-01-01 03:19:14', '::1', 6),
(40, '2020-01-02 02:05:56', '::1', 4),
(41, '2020-01-02 03:16:32', '::1', 7),
(42, '2020-01-02 03:24:37', '::1', 1),
(43, '2020-01-03 03:20:23', '::1', 3),
(44, '2020-01-03 03:21:18', '::1', 6),
(45, '2020-01-03 04:03:10', '::1', 7),
(46, '2020-01-04 03:59:33', '::1', 5),
(47, '2020-01-04 04:04:33', '::1', 11),
(48, '2020-01-04 04:06:22', '::1', 10),
(49, '2020-01-04 04:23:16', '::1', 16),
(50, '2020-01-04 05:51:45', '::1', 15),
(51, '2020-01-07 03:12:53', '::1', 15),
(52, '2020-01-12 04:42:18', '::1', 9),
(53, '2022-10-17 03:22:31', '::1', 9),
(54, '2022-10-17 03:31:01', '::1', 4),
(55, '2022-10-17 03:53:45', '::1', 10),
(56, '2022-10-17 03:55:22', '::1', 5),
(57, '2022-10-17 04:45:31', '::1', 14),
(58, '2022-10-17 04:54:04', '::1', 15),
(59, '2022-10-17 04:59:45', '::1', 16),
(60, '2022-10-17 05:02:21', '::1', 17),
(61, '2022-10-17 05:39:56', '::1', 20),
(62, '2022-10-17 05:40:35', '::1', 13),
(63, '2022-10-18 02:28:09', '182.253.101.154', 18),
(64, '2022-10-18 03:18:31', '182.253.101.154', 13),
(65, '2022-10-18 03:19:08', '182.253.101.154', 15),
(66, '2022-10-18 03:19:18', '182.253.101.154', 14),
(67, '2022-10-18 03:19:31', '182.253.101.154', 16),
(68, '2022-10-18 04:57:31', '182.253.101.154', 17),
(69, '2022-10-18 05:05:44', '182.253.101.154', 24),
(70, '2022-10-18 06:15:45', '182.253.101.154', 26),
(71, '2022-10-18 23:57:21', '114.125.120.84', 13),
(72, '2022-10-19 10:45:23', '125.166.118.87', 27),
(73, '2022-10-19 10:49:25', '125.166.118.87', 26),
(74, '2022-10-19 12:35:33', '125.166.116.109', 27),
(75, '2022-10-19 12:36:18', '125.166.116.109', 26),
(76, '2022-10-19 12:38:24', '125.166.116.109', 24),
(77, '2022-10-19 12:40:09', '125.166.116.109', 10),
(78, '2022-10-19 12:40:42', '125.166.116.109', 13),
(79, '2022-10-19 12:40:59', '125.166.116.109', 15),
(80, '2022-10-19 12:41:16', '125.166.116.109', 19),
(81, '2022-10-19 12:47:33', '125.166.116.109', 22),
(82, '2022-10-20 02:08:18', '114.79.20.11', 29),
(83, '2022-10-20 04:09:10', '114.79.22.245', 29),
(84, '2022-10-20 04:15:55', '114.79.22.245', 28),
(85, '2022-10-20 07:44:42', '125.166.116.109', 28),
(86, '2022-10-21 00:15:11', '182.253.101.154', 29);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site`
--

CREATE TABLE `tbl_site` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(100) DEFAULT NULL,
  `site_title` varchar(200) DEFAULT NULL,
  `site_description` text DEFAULT NULL,
  `site_favicon` varchar(50) DEFAULT NULL,
  `site_logo_header` varchar(50) DEFAULT NULL,
  `site_logo_footer` varchar(50) DEFAULT NULL,
  `site_logo_big` varchar(50) DEFAULT NULL,
  `site_facebook` varchar(150) DEFAULT NULL,
  `site_twitter` varchar(150) DEFAULT NULL,
  `site_instagram` varchar(150) DEFAULT NULL,
  `site_pinterest` varchar(150) DEFAULT NULL,
  `site_linkedin` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_site`
--

INSERT INTO `tbl_site` (`site_id`, `site_name`, `site_title`, `site_description`, `site_favicon`, `site_logo_header`, `site_logo_footer`, `site_logo_big`, `site_facebook`, `site_twitter`, `site_instagram`, `site_pinterest`, `site_linkedin`) VALUES
(1, 'MBLOG', 'MBLOG - Source Code untuk Blogger', 'Open Source source code untuk personal blog, simple, elegan, full responsif, dan mudah di customize.  ', 'favicon.png', 'logo-black.png', 'favicon.png', 'LOGO-BIG.png', 'https://www.facebook.com/mfikridotcom/', 'https://twitter.com/MFikri75770694/', 'https://www.instagram.com/mfikricom/', 'https://id.pinterest.com/mfikricom/', 'https://www.linkedin.com/in/m-fikri-setiadi-b03370148/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribe`
--

CREATE TABLE `tbl_subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `subscribe_email` varchar(100) DEFAULT NULL,
  `subscribe_created_at` timestamp NULL DEFAULT current_timestamp(),
  `subscribe_status` int(11) DEFAULT 0,
  `subscribe_rating` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_subscribe`
--

INSERT INTO `tbl_subscribe` (`subscribe_id`, `subscribe_email`, `subscribe_created_at`, `subscribe_status`, `subscribe_rating`) VALUES
(6, 'memekkontol@gmail.com', '2022-10-19 12:39:47', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tags`
--

CREATE TABLE `tbl_tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_tags`
--

INSERT INTO `tbl_tags` (`tag_id`, `tag_name`) VALUES
(1, 'Teknologi'),
(2, 'Psikologi'),
(3, 'Motivasi'),
(4, 'Kesehatan'),
(5, 'bisnis');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `testimonial_id` int(11) NOT NULL,
  `testimonial_name` varchar(50) DEFAULT NULL,
  `testimonial_content` text DEFAULT NULL,
  `testimonial_image` varchar(50) DEFAULT NULL,
  `testimonial_created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`testimonial_id`, `testimonial_name`, `testimonial_content`, `testimonial_image`, `testimonial_created_at`) VALUES
(1, 'MR.neverdie of neverdie.com', 'i hate you', 'logostm.jpg', '2020-01-03 03:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_password` varchar(40) DEFAULT NULL,
  `user_level` varchar(10) DEFAULT NULL,
  `user_status` varchar(10) DEFAULT '1',
  `user_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_level`, `user_status`, `user_photo`) VALUES
(3, 'neverdie', 'neverdie@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '23370f09a7f524f32dcf6d7e6ee1ab24.jpg'),
(4, 'friqi', 'firqi@gmail.com', '4297f44b13955235245b2497399d7a93', '1', '0', 'feee78c7898e1b4dec71247530a49b81.jpg'),
(5, 'ikrar`', 'ikrar@gmail.com', '3d186804534370c3c817db0563f0e461', '2', '1', 'd417c1682bc2e8e206226f8dce0eb7e0.png'),
(6, 'hanif', 'hanif@gmail.com', '3d186804534370c3c817db0563f0e461', '2', '1', 'd29503b2b0786ffe2a3d0e188d878ec4.png'),
(7, 'test', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '52a12cd8d6060d9be0ef5b3cea56d346.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitors`
--

CREATE TABLE `tbl_visitors` (
  `visit_id` int(11) NOT NULL,
  `visit_date` timestamp NULL DEFAULT current_timestamp(),
  `visit_ip` varchar(50) DEFAULT NULL,
  `visit_platform` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_visitors`
--

INSERT INTO `tbl_visitors` (`visit_id`, `visit_date`, `visit_ip`, `visit_platform`) VALUES
(541327, '2019-03-18 14:07:36', '::1', 'Firefox'),
(541328, '2019-03-19 03:33:51', '::1', 'Chrome'),
(541329, '2019-03-20 01:00:19', '::1', 'Chrome'),
(541330, '2019-04-05 01:53:28', '::1', 'Firefox'),
(541331, '2019-04-06 01:37:35', '::1', 'Chrome'),
(541332, '2019-04-06 23:04:12', '::1', 'Chrome'),
(541333, '2019-04-09 12:19:32', '::1', 'Chrome'),
(541334, '2019-04-10 01:33:03', '::1', 'Chrome'),
(541335, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541336, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541337, '2019-04-12 03:51:42', '::1', 'Chrome'),
(541338, '2019-04-12 21:55:51', '::1', 'Chrome'),
(541339, '2019-04-14 01:30:40', '::1', 'Chrome'),
(541340, '2019-04-15 01:42:53', '::1', 'Chrome'),
(541341, '2019-05-08 02:07:09', '::1', 'Chrome'),
(541342, '2019-05-21 05:55:14', '::1', 'Firefox'),
(541343, '2019-08-28 07:08:22', '::1', 'Firefox'),
(541344, '2019-12-17 06:04:57', '::1', 'Firefox'),
(541345, '2019-12-18 01:34:25', '::1', 'Firefox'),
(541346, '2019-12-19 02:21:23', '::1', 'Firefox'),
(541347, '2019-12-20 07:47:00', '::1', 'Firefox'),
(541348, '2019-12-28 02:58:34', '::1', 'Firefox'),
(541349, '2019-12-29 08:48:39', '::1', 'Firefox'),
(541350, '2019-12-30 03:24:04', '::1', 'Firefox'),
(541351, '2019-12-31 02:47:15', '::1', 'Firefox'),
(541352, '2020-01-01 02:24:55', '::1', 'Firefox'),
(541353, '2020-01-02 01:58:25', '::1', 'Firefox'),
(541354, '2020-01-03 03:15:30', '::1', 'Firefox'),
(541355, '2020-01-04 03:31:49', '::1', 'Firefox'),
(541356, '2020-01-05 06:58:35', '127.0.0.1', 'Firefox'),
(541357, '2020-01-06 06:03:25', '::1', 'Firefox'),
(541358, '2020-01-07 00:57:59', '::1', 'Firefox'),
(541359, '2020-01-08 05:53:44', '::1', 'Firefox'),
(541360, '2020-01-12 04:18:15', '::1', 'Firefox'),
(541361, '2022-10-17 03:16:19', '::1', 'Chrome'),
(541362, '2022-10-18 02:23:47', '182.253.101.154', 'Chrome'),
(541363, '2022-10-18 04:52:31', '115.178.226.85', 'Chrome'),
(541364, '2022-10-18 09:08:37', '20.65.115.18', 'Firefox'),
(541365, '2022-10-18 09:10:11', '20.65.115.56', 'Firefox'),
(541366, '2022-10-18 09:42:59', '191.96.168.78', 'Safari'),
(541367, '2022-10-18 09:42:59', '185.108.106.202', 'Safari'),
(541368, '2022-10-18 09:42:59', '197.242.159.110', 'Safari'),
(541369, '2022-10-18 09:43:00', '103.236.201.78', 'Internet Explorer'),
(541370, '2022-10-18 09:49:40', '173.252.79.20', 'Other'),
(541371, '2022-10-18 09:49:43', '66.220.149.22', 'Googlebot'),
(541372, '2022-10-18 09:50:23', '173.252.107.14', 'Other'),
(541373, '2022-10-18 23:54:25', '114.125.120.84', 'Safari'),
(541374, '2022-10-19 00:15:20', '114.79.22.71', 'Chrome'),
(541375, '2022-10-19 04:56:50', '176.53.223.16', 'Chrome'),
(541376, '2022-10-19 06:46:07', '176.53.221.225', 'Chrome'),
(541377, '2022-10-19 09:04:50', '125.166.116.109', 'Chrome'),
(541378, '2022-10-19 10:41:02', '125.166.118.87', 'Chrome'),
(541379, '2022-10-19 13:00:58', '54.152.98.205', 'Other'),
(541380, '2022-10-19 13:00:59', '184.73.146.58', 'Chrome'),
(541381, '2022-10-19 13:01:01', '54.161.231.215', 'Chrome'),
(541382, '2022-10-20 02:03:30', '114.79.20.11', 'Chrome'),
(541383, '2022-10-20 03:19:36', '114.79.16.157', 'Chrome'),
(541384, '2022-10-20 03:56:49', '176.53.216.233', 'Chrome'),
(541385, '2022-10-20 04:09:03', '114.79.22.245', 'Chrome'),
(541386, '2022-10-20 04:45:49', '176.53.216.217', 'Chrome'),
(541387, '2022-10-20 07:44:26', '125.166.116.109', 'Chrome'),
(541388, '2022-10-21 00:14:27', '182.253.101.154', 'Chrome');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`about_id`) USING BTREE;

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`) USING BTREE;

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`) USING BTREE;

--
-- Indexes for table `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`home_id`) USING BTREE;

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`) USING BTREE;

--
-- Indexes for table `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  ADD PRIMARY KEY (`navbar_id`) USING BTREE;

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`) USING BTREE;

--
-- Indexes for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`view_id`) USING BTREE;

--
-- Indexes for table `tbl_site`
--
ALTER TABLE `tbl_site`
  ADD PRIMARY KEY (`site_id`) USING BTREE;

--
-- Indexes for table `tbl_subscribe`
--
ALTER TABLE `tbl_subscribe`
  ADD PRIMARY KEY (`subscribe_id`) USING BTREE;

--
-- Indexes for table `tbl_tags`
--
ALTER TABLE `tbl_tags`
  ADD PRIMARY KEY (`tag_id`) USING BTREE;

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`testimonial_id`) USING BTREE;

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indexes for table `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  ADD PRIMARY KEY (`visit_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_home`
--
ALTER TABLE `tbl_home`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  MODIFY `navbar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_site`
--
ALTER TABLE `tbl_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_subscribe`
--
ALTER TABLE `tbl_subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_tags`
--
ALTER TABLE `tbl_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541389;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
