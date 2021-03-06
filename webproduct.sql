-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 01, 2020 lúc 03:49 PM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webproduct`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_group_id` int(64) NOT NULL,
  `permissions` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `admin_group_id`, `permissions`) VALUES
(1, 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 'Hoàng văn Tuyền', 1, '{\"news\":[\"index\",\"add\",\"edit\"],\"slide\":[\"index\",\"add\",\"edit\"]}'),
(7, 'admincp', 'e10adc3949ba59abbe56e057f20f883e', 'Mod', 2, ''),
(9, 'asdf', 'e10adc3949ba59abbe56e057f20f883e', '12345678', 0, ''),
(10, 'asdf', 'e10adc3949ba59abbe56e057f20f883e', '12345678', 0, '{\"setting\":[\"index\"]}'),
(11, 'ngocluat13', 'e10adc3949ba59abbe56e057f20f883e', 'nguyễn ngọc luật', 0, '{\"admin\":[\"index\",\"add\",\"edit\",\"delete\"],\"menu\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"setting\":[\"index\",\"add\",\"edit\",\"delete\"],\"user\":[\"index\",\"add\",\"edit\",\"delete\"],\"product\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"catalog\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"transaction\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"news\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"slide\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"phone\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"]}'),
(16, '11111111', 'e10adc3949ba59abbe56e057f20f883e', '11111111', 0, '{\"admin\":[\"index\",\"add\"],\"catalog\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"contact\":[\"index\",\"delete\"]}'),
(18, 'mod123', 'e10adc3949ba59abbe56e057f20f883e', 'mod123456', 0, '{\"admin\":[\"index\",\"add\",\"edit\",\"delete\"],\"catalog\":[\"index\",\"add\",\"edit\",\"delete\",\"del_all\"],\"contact\":[\"index\",\"delete\",\"del_all\"]}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_group`
--

CREATE TABLE `admin_group` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `admin_group`
--

INSERT INTO `admin_group` (`id`, `name`, `sort_order`, `permissions`) VALUES
(1, 'Admin', 1, 'a:14:{s:4:\"tran\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:13:\"product_order\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:3:\"cat\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"product\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:11:\"admin_group\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"admin\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"user\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"news\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"info\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"support\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"contact\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"comment\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"slide\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"video\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}}'),
(2, 'Mod', 2, 'a:9:{s:3:\"cat\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"product\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"news\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:4:\"info\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"support\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"contact\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:7:\"comment\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"slide\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}s:5:\"video\";a:2:{i:0;s:4:\"list\";i:1;s:6:\"change\";}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `parent_id_menu` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `site_title`, `meta_desc`, `meta_key`, `parent_id`, `sort_order`, `parent_id_menu`, `image`, `status`) VALUES
(1, 'Áo sơ mi tay dài', 'chất lượng.', '', '', 0, 0, 1, 'daitay.jpg', 1),
(2, 'Sơ mi tay ngắn', ' chất lượng.', '', '', 0, 1, 1, 'ngantay.jpg', 1),
(3, 'Quần sort', '', '', '', 0, 2, 1, 'quanshort.jpg', 1),
(4, 'Quần dài', '', '', '', 0, 0, 1, 'quandai.jpg', 1),
(5, 'Sơ mi tay dài màu trơn', '', '', '', 1, 1, 1, '', 1),
(6, 'Sơ mi tay dài Caro', '', '', '', 1, 2, 1, '', 1),
(7, 'Sơ mi tay dài họa tiết', '', '', '', 1, 3, 1, '', 1),
(8, 'Sơ mi tay dài Denim - \r\n Jeans - kaki', '', '', '', 1, 5, 1, '', 1),
(9, 'Sơ mi tay ngắn màu trơn', '', '', '', 2, 0, 1, '', 1),
(10, 'Sơ mi tay ngắn Caro', '', '', '', 2, 1, 1, '', 1),
(11, 'Sơ mi tay ngắn họa tiết', '', '', '', 2, 3, 1, '', 1),
(12, 'Sơ mi tay ngắn Denim - Jeans - kaki', 'Chất Lượng', '', '', 2, 4, 1, '', 1),
(13, 'Quần short Abercrombie', 'Chất Lượng', '', '', 3, 0, 1, '', 1),
(14, 'Quần short Pull & Bear', 'Chất Lượng', '', '', 3, 1, 1, '', 1),
(15, 'Quần dài Pull & Bear', 'Chất Lượng', '', '', 4, 2, 1, '', 1),
(16, 'Quần dài All Saints', 'Chất Lượng', '', '', 4, 3, 1, '', 1),
(17, 'Quần dài Zara Man', 'Chất Lượng', '', '', 4, 5, 1, '', 1),
(18, 'Quần dài Aber', 'Chất Lượng', '', '', 4, 6, 1, '', 1),
(27, 'Giá sỉ sơ mi', '', '', '', 0, 1, 2, '', 0),
(25, 'Giá sỉ quần short', '', '', '', 0, 3, 2, '', 0),
(28, 'Giá sỉ quần dài', '', '', '', 0, 2, 2, '', 0),
(29, 'Thời Trang Nữ', '', '', '', 0, 3, 0, '', 0),
(30, 'Mỹ Phẩm Chất Lượng', '', '', '', 0, 4, 0, '', 0),
(31, 'Salon Moto', '', '', '', 0, 8, 0, '', 0),
(33, 'phatphat', '', '', '', 0, 1, 2, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `parent_id` int(255) NOT NULL,
  `user_name` text COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  `count_like` int(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `product_id`, `parent_id`, `user_name`, `user_email`, `user_id`, `user_ip`, `content`, `created`, `count_like`, `status`) VALUES
(1, 7, 0, 'Hoang van tuyen', 'hoangvantuyencnt@gmail.com', 0, '', 'San pham noi con khong admin?                    ', 1408798677, 10, 1),
(2, 7, 1, 'Vu van Anh', 'anh@gmail.com', 0, '', 'San pham nay van con hang', 1408799662, 3, 1),
(3, 7, 0, 'abc', 'hoang@gmail.com', 0, '', 'Test comment             ', 1408800324, 8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(128) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content_static`
--

CREATE TABLE `content_static` (
  `id` int(11) NOT NULL,
  `key` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `content_static`
--

INSERT INTO `content_static` (`id`, `key`, `content`) VALUES
(3, 'footer', '<p class=\"bold\">\r\n &copy;2013 -2014 Bản quyền thuộc về&nbsp; <strong>C&ocirc;ng ty TNHH Tuấn Thoa media &ndash; Đại l&yacute; VTC Digital</strong></p>\r\n<p>\r\n Lĩnh vực hoạt động của c&ocirc;ng ty: Điện &amp; điện tử , b&aacute;n lẻ &amp; b&aacute;n bu&ocirc;n</p>\r\n<p>\r\n <strong>Cơ sở 1:</strong>: Cẩm La, X&atilde; Thanh Sơn, Huyện Kiến Thụy, Th&agrave;nh Phố Hải Ph&ograve;ng - DT: 0313881505</p>\r\n<p>\r\n <strong>Cơ sở 2:</strong>: Cẩm Xu&acirc;n, N&uacute;i Đối, Huyện Kiến Thụy, Th&agrave;nh Phố Hải Ph&ograve;ng - DT: 0313812682</p>\r\n'),
(18, 'shipping', '<p>\r\n Chi ph&iacute; vận chuyển của Tuấn Thoa Media</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `info`
--

INSERT INTO `info` (`id`, `title`, `content`, `meta_desc`, `meta_key`, `created`) VALUES
(1, 'Giới thiệu', '<div class=\"col-md-12\" id=\"idnoidungres\">\r\n\r\n                        <dl class=\"accord\">\r\n	<dd class=\"faq-content\" style=\"display: block;\">\r\n		<center style=\"box-sizing: border-box; font-family: Arial;\">\r\n			<h1 style=\"box-sizing: border-box; margin: 20px 0px 10px; font-family: inherit; line-height: 1.1; text-align: center;\">\r\n				<font color=\"#555555\"><span style=\"font-size: 27px; font-weight: 500;\">CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ TIN HỌC&nbsp;</span></font><br style=\"box-sizing: border-box;\">\r\n				<font color=\"#ff0000\"><span style=\"font-size: 40.5px;\">ĐỈNH VÀNG</span></font></h1>\r\n		</center>\r\n	</dd>\r\n	<dd class=\"faq-content\" style=\"display: block; text-align: center;\">\r\n		&nbsp;</dd>\r\n	<dd class=\"faq-content\" style=\"display: block;\">\r\n		<p style=\"margin: 0px; padding: 0px 0px 5px; border: 0px; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px;\">\r\n			<strong style=\"margin: 0px; padding: 0px; border: 0px;\">&nbsp; &nbsp; &nbsp;Công ty TNHH – TMDV Tin học Đỉnh Vàng, một trong những công ty đứng đầu thành phố Hồ Chí Minh về các lĩnh vực kinh doanh sau:</strong></p>\r\n		<ul style=\"margin: 0px 0px 0px 40px; padding-right: 0px; padding-left: 0px; border: 0px; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px;\">\r\n			<li style=\"margin: 0px; padding: 0px; border: 0px;\">\r\n				<strong style=\"margin: 0px; padding: 0px; border: 0px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 255);\"><em style=\"margin: 0px; padding: 0px; border: 0px;\">Cung cấp đầy đủ trang thiết bị vi tính văn phòng: vi tính, laptop, máy in, fax, photocopy, scan, ….</em></span></strong></li>\r\n			<li style=\"margin: 0px; padding: 0px; border: 0px;\">\r\n				<strong style=\"margin: 0px; padding: 0px; border: 0px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 255);\"><em style=\"margin: 0px; padding: 0px; border: 0px;\">Cung cấp các linh kiện cùng đồ chơi công nghệ: headphones, phím, chuột, ổ cứng, ram, USB, CPU,…</em></span></strong></li>\r\n			<li style=\"margin: 0px; padding: 0px; border: 0px;\">\r\n				<strong style=\"margin: 0px; padding: 0px; border: 0px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 255);\"><em style=\"margin: 0px; padding: 0px; border: 0px;\">Cung cấp mực in các loại: chính hãng, thương hiệu chất lượng cao.</em></span></strong></li>\r\n			<li style=\"margin: 0px; padding: 0px; border: 0px;\">\r\n				<strong style=\"margin: 0px; padding: 0px; border: 0px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 255);\"><em style=\"margin: 0px; padding: 0px; border: 0px;\">Dich vụ nạp mực in tận nơi</em></span></strong></li>\r\n			<li style=\"margin: 0px; padding: 0px; border: 0px;\">\r\n				<strong style=\"margin: 0px; padding: 0px; border: 0px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 255);\"><em style=\"margin: 0px; padding: 0px; border: 0px;\">Dịch vụ sửa chữa, bảo hành, bảo trì, cài đặt phần mềm văn phòng.</em></span></strong></li>\r\n			<li style=\"margin: 0px; padding: 0px; border: 0px;\">\r\n				<strong style=\"margin: 0px; padding: 0px; border: 0px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 255);\"><em style=\"margin: 0px; padding: 0px; border: 0px;\">Lắp đặt camera quan sát</em></span></strong></li>\r\n			<li style=\"margin: 0px; padding: 0px; border: 0px;\">\r\n				<strong style=\"margin: 0px; padding: 0px; border: 0px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(0, 0, 255);\"><em style=\"margin: 0px; padding: 0px; border: 0px;\">Cho thuê máy văn phòng.</em></span></strong></li>\r\n		</ul>\r\n		<p style=\"margin: 0px; padding: 0px 0px 5px; border: 0px; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px;\">\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong style=\"margin: 0px; padding: 0px; border: 0px;\">&nbsp;Với nhiều năm kinh nghiệm trong lĩnh vực vi tính, văn phòng, Chúng tôi nắm rõ nhu cầu của quý khách trong cũng như ngoài địa bàn Thành phố Hồ Chí Minh. Và Chúng tôi chính là giải pháp tốt nhất mà quý vị đang cần.</strong></p>\r\n		<p style=\"margin: 0px; padding: 0px 0px 5px; border: 0px; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px;\">\r\n			<strong style=\"margin: 0px; padding: 0px; border: 0px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Với đội ngũ kỹ thuật được đào tạo chuyên nghiệp, tay nghề cao cùng thái độ vui vẻ, nhiệt tình luôn sẵn sang xông pha cứu nguy cho khách hàng ngay lúc quý vị cần. Chính vì vậy chúng tôi đã tạo cho mình một thương hiệu độc đáo tại chính TP. Hồ Chí Minh và đang sở hữu một hệ thống khách hàng mà chính các đối thủ cạnh tranh phải ngưỡng mộ:<span style=\"margin: 0px; padding: 0px; border: 0px; font-family: arial, helvetica, sans-serif;\">&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(255, 0, 0);\"><em style=\"margin: 0px; padding: 0px; border: 0px;\">Ngân hàng Công Thương, Vietcom Bank, Dầu thực vật Tân Bình, Hệ thống các trường Việt Mỹ, Công ty xây dựng Toàn Thịnh Phát,hệ thống FPT, các công ty dược uy tín, công ty kiểm toán lớn, Ủy ban, cơ quan nhà nước trong và ngoài Thành Phố.....</em></span></span></strong></p>\r\n		<p style=\"margin: 0px; padding: 0px 0px 5px; border: 0px; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px;\">\r\n			<strong style=\"margin: 0px; padding: 0px; border: 0px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Với mong muốn là một điểm tựa vững chắc, luôn hậu thuẫn để cứu nguy khi xảy ra sự cố văn phòng và cam kết sẽ đem đến cho quý vị một giải pháp tốt nhất về giá cả, cũng như sự uy tín, chất lượng dịch vụ. Chúng tôi luôn tìm kiếm cơ hội đồng hành nơi khách hàng</strong>.</p>\r\n		<p style=\"margin: 0px; padding: 0px 0px 5px; border: 0px; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px;\">\r\n			<strong style=\"margin: 0px; padding: 0px; border: 0px;\">Với tiêu chí hoạt động của công ty:</strong></p>\r\n		<p style=\"margin: 0px; padding: 0px 0px 5px; border: 0px; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px;\">\r\n			<strong style=\"margin: 0px; padding: 0px; border: 0px;\">Uy tín:là tiêu chí quan trọng mà công ty muốn hướng tới.Công ty luôn cố gắng hoàn thiện từng ngày để có thể làm hài lòng từng khách hàng</strong></p>\r\n		<p style=\"margin: 0px; padding: 0px 0px 5px; border: 0px; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px;\">\r\n			<strong style=\"margin: 0px; padding: 0px; border: 0px;\">Chất lượng:Mực và linh kiện được nhập từ Hàn Quốc,Nhật có uy tín chất lượng được kiểm tra chặt chẽ trước khi đến tay khách hàng&nbsp;</strong></p>\r\n		<p style=\"margin: 0px; padding: 0px 0px 5px; border: 0px; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px;\">\r\n			<strong style=\"margin: 0px; padding: 0px; border: 0px;\">Phục vụ tận tâm:luôn mang đến khách hàng sự nhiệt huyết,tươi cười,tận tâm.Chúng tôi luôn coi trọng cách cư xử,thái độ hết lòng phục vụ coi khách hàng như người bạn thân thiết</strong></p>\r\n		<p style=\"margin: 0px; padding: 0px 0px 5px; border: 0px; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px;\">\r\n			<span style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(255, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Đỉnh Vàng – Đỉnh cao của chất lượng và công nghệ!</strong></span></p>\r\n	</dd>\r\n</dl>\r\n\r\n                    </div>', '', '', 1409044792),
(2, 'Liên Hệ', '<div class=\"col-md-12\">\r\n    					\r\n                    <div class=\"col-md-12\">\r\n                        <div style=\"clear: both; margin: 0px; padding: 0px 0px 12px; background-repeat: no-repeat;\">\r\n<p style=\"font-size: 12px; padding: 0px; margin: 0px; text-align: center;\"><img src=\"http://prosing.com.vn/upload/images/contact.jpg\" alt=\"Prosing_contact\" title=\"Địa chỉ liên hệ\" width=\"100%\"></p>\r\n<p style=\"font-size: 12px; padding: 0px; margin: 0px; text-align: center;\">&nbsp;</p>\r\n<p style=\"padding: 0px; margin: 0px; text-align: center; color: rgb(82, 82, 82); font-family: Arial, sans-serif; line-height: 24px;\">Mọi yêu cầu hoặc thắc mắc về dịch vụ và sản phẩm của chúng tôi,hãy liên lạc với chúng tôi để được tư vấn và hỗ trợ tốt nhất.Dịch vụ hỗ trợ làm việc 24/7,chăm sóc khách hàng tốt nhất</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n\r\n<h3 style=\"text-align:center;color: #e49924;\">Địa Chỉ</h3>\r\n<p style=\"text-align:center\">Lầu 1, 24 Đường số 1A, KDC Trung Sơn Bình Hưng, Bình Chánh, TP.HCM</p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n\r\n<h3 style=\"text-align:center;color: #e49924;\">Điện Thoại</h3>\r\n<p style=\"text-align:center\">(+84)933.85.85.88 Mr Xương</p>\r\n<p style=\"text-align:center\">(+84-8) 66 74 73 76 - (84) 909.37.22.28</p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n\r\n<h3 style=\"text-align:center;color: #e49924;\">Email</h3>\r\n<p style=\"text-align:center\">prosing.co@gmail.com</p>\r\n<p style=\"text-align:center\">support@prosing.com.vn</p>\r\n</div>\r\n</div>\r\n                    </div>  \r\n                   <div class=\"col-md-12\" style=\"text-align:center;margin-bottom:3%;\">\r\n                        <div id=\"share-buttons\">\r\n                            <!-- Facebook -->\r\n                            <a href=\"https://www.facebook.com/H%E1%BB%87-Th%E1%BB%91ng-Karaoke-Chuy%C3%AAn-Nghi%E1%BB%87p-Prosing-261332110891810/\">\r\n                                <img src=\"https://simplesharebuttons.com/images/somacro/facebook.png\" alt=\"Facebook\">\r\n                            </a>\r\n                            \r\n\r\n                              <!-- youtobe -->\r\n                             <a href=\"https://www.youtube.com/channel/UCTKCt5zAGlvWcNTK6Doo51w\" target=\"_blank\">\r\n                                <img src=\"http://prosing.com.vn/img/youtobe.png\" width=\"65px\" height=\"65px\" alt=\"Youtobe\">\r\n                            </a>\r\n\r\n                            <!-- Google+ -->\r\n                            <a href=\"https://plus.google.com/share?url=http://prosing.com.vn/lien-he\" target=\"_blank\">\r\n                                <img src=\"https://simplesharebuttons.com/images/somacro/google.png\" alt=\"Google\">\r\n                            </a>\r\n    \r\n                            <!-- LinkedIn\r\n                            <a href=\'http://www.linkedin.com/shareArticle?mini=true&amp;url=http://prosing.com.vn/lien-he\' target=\'_blank\'>\r\n                                <img src=\'https://simplesharebuttons.com/images/somacro/linkedin.png\' alt=\'LinkedIn\' />\r\n                            </a> -->\r\n    \r\n                            <!-- Pinterest \r\n                           <a href=\"javascript:void((function()%7Bvar%20e=document.createElement(\'script\');e.setAttribute(\'type\',\'text/javascript\');e.setAttribute(\'charset\',\'UTF-8\');e.setAttribute(\'src\',\'http://assets.pinterest.com/js/pinmarklet.js?r=\'+Math.random()*99999999);document.body.appendChild(e)%7D)());\">\r\n            <img src=\"https://simplesharebuttons.com/images/somacro/pinterest.png\" alt=\"Pinterest\" />\r\n        </a>-->\r\n    \r\n    \r\n                            <!-- Twitter \r\n                            <a href=\'https://twitter.com/share?url=http://prosing.com.vn/lien-he\' target=\'_blank\'>\r\n                                <img src=\'https://simplesharebuttons.com/images/somacro/twitter.png\' alt=\'Twitter\' />\r\n                            </a>-->\r\n                        </div>\r\n                    </div>\r\n                    					</div>\r\n', '', '', 1409044950),
(3, 'Hướng dẫn mua hàng', '<p>\r\n	Hướng dẫn mua h&agrave;ng</p>', '', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `infor_web`
--

CREATE TABLE `infor_web` (
  `id` int(11) NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` text COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slogan` text COLLATE utf8_unicode_ci NOT NULL,
  `hotline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fanpage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titleseo` text COLLATE utf8_unicode_ci NOT NULL,
  `keyseo` text COLLATE utf8_unicode_ci NOT NULL,
  `descriptseo` text COLLATE utf8_unicode_ci NOT NULL,
  `codehead` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codetop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codebottom` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `infor_web`
--

INSERT INTO `infor_web` (`id`, `favicon`, `logo`, `company`, `slogan`, `hotline`, `phone`, `email`, `address`, `website`, `map`, `fanpage`, `titleseo`, `keyseo`, `descriptseo`, `codehead`, `codetop`, `codebottom`) VALUES
(1, '14992493006090_700_htc-one-e9-2.jpg', 'logo.png', 'abcde', 'abcde', '12345678', '12345678', '12345678', '12345678', '12345678', '12345678', '12345678', '12345678', '12345678', '										12345678								', '					\r\n											\r\n						12345678	        		        		        		', '										12345678													', '\r\n					\r\n					12345678\r\n																	'),
(2, 'favicon-32x32.png', 'logo.png', '', '', '0', '0', '', '', '', '', '', '', '', '0', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maker`
--

CREATE TABLE `maker` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(255) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `title`, `url`, `sort_order`, `status`) VALUES
(1, 0, 'Sản phẩm', '', 1, 1),
(2, 0, 'Giá sỉ', '', 0, 1),
(3, 0, 'Blogs', 'tin-tuc', 0, 1),
(4, 0, 'Liên hệ', 'lien-he', 0, 1),
(5, 0, 'nguyennguyen', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `feature` enum('0','1') COLLATE utf8_bin NOT NULL DEFAULT '0',
  `count_view` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `intro`, `content`, `meta_desc`, `meta_key`, `image_link`, `created`, `feature`, `count_view`) VALUES
(1, 'Nhà lầu siêu xe hàng mã ế sưng, đồ chơi biển đảo hút khách', '(Dân trí) - Loạt đồ chơi trung thu biển đảo hướng về quê hương mới xuất hiện nhưng đã hút khách, các mặt hàng vàng mã “xa xỉ” không còn được nhiều người mua sắm.', '<p style=\"TEXT-ALIGN: left\">\r\n	Theo b&aacute;c Lan, một chủ cửa h&agrave;ng ở phố H&agrave;ng M&atilde; chia sẻ: &ldquo;Kinh tế kh&oacute; khăn n&ecirc;n người bỏ tiền triệu ra mua đồ c&uacute;ng đắt tiền như nh&agrave; lầu, xe hơi, điện thoại, ti vi c&ograve;n rất &iacute;t. Mọi người chỉ lựa chọn những loại đồ c&oacute; gi&aacute; b&igrave;nh d&acirc;n như quần &aacute;o, gi&agrave;y d&eacute;p v&agrave; mũ để c&uacute;ng. Những mặt h&agrave;ng b&aacute;n chạy nhất l&agrave; tiền &acirc;m phủ, v&agrave;ng, quần &aacute;o hay gi&agrave;y d&eacute;p v&igrave; c&oacute; gi&aacute; kh&aacute; b&igrave;nh d&acirc;n&rdquo;.</p>\r\n<p style=\"TEXT-ALIGN: center\">\r\n	<img alt=\"Mặt hàng đèn lồng biển đảo mới xuất hiện trong dịp Tết Trung Thu năm nay\" src=\"http://dantri4.vcmedia.vn/Urgz3f5tKFdDA0VUUO/Image/2014/08/n1-242e1.jpg\" /><br />\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\">Mặt h&agrave;ng đ&egrave;n lồng biển đảo mới xuất hiện trong dịp Tết Trung Thu năm nay</span></p>\r\n<p style=\"TEXT-ALIGN: center\">\r\n	<span style=\"FONT-FAMILY: Tahoma\"><img alt=\"Các thông điệp ý nghĩa yêu quê hương, biển đảo được in lên đèn lồng\" src=\"http://dantri4.vcmedia.vn/Urgz3f5tKFdDA0VUUO/Image/2014/08/n2-242e1.jpg\" /></span><br />\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\">C&aacute;c th&ocirc;ng điệp &yacute; nghĩa y&ecirc;u qu&ecirc; hương, biển đảo được in l&ecirc;n đ&egrave;n lồng</span></p>\r\n<p>\r\n	Một mặt h&agrave;ng đặc biệt của m&ugrave;a Vu Lan năm nay đ&oacute; l&agrave; loại đồ chơi &ldquo;biển đảo&rdquo;. Đ&oacute; l&agrave; những chiếc đ&egrave;n lồng được in những th&ocirc;ng điệp hướng về qu&ecirc; hương, biển đảo hết sức &yacute; nghĩa.</p>\r\n<div class=\"article-side-rail\" id=\"article-side-rail\">\r\n	<div class=\"article-video-relation\">\r\n		<div class=\"relative\">\r\n			<img alt=\"Mùa Vu Lan: \" class=\"thumb\" src=\"http://video-thumbs.vcmedia.vn///dantri/7iS0Ym1SbbOoTsWhJi6Q/2014/08/08/vangma-15e63.jpg\" /><img class=\"ico\" src=\"http://dantri3.vcmedia.vn/App_Themes/Default/Images/ico_video_play.png\" /></div>\r\n		<p class=\"caption\">\r\n			M&ugrave;a Vu Lan: &quot;Xe si&ecirc;u sang&quot; đỗ chật phố H&agrave;ng M&atilde;</p>\r\n	</div>\r\n</div>\r\n<p>\r\n	C&aacute;c chủ cửa h&agrave;ng tại đ&acirc;y cho biết, c&aacute;c loại mặt h&agrave;ng l&agrave;m thủ c&ocirc;ng truyền thống đ&egrave;n lồng, đầu l&acirc;n, đ&egrave;n &ocirc;ng sao vẫn được kh&aacute;ch h&agrave;ng ưa chuộng nhất. Ngo&agrave;i ra, mẫu đ&egrave;n lồng in sẵn mang th&ocirc;ng điệp hướng về biển đảo qu&ecirc; hương được nhiều bậc phụ huynh v&agrave; c&aacute;c em học sinh đặc biệt y&ecirc;u th&iacute;ch.</p>\r\n<p style=\"TEXT-ALIGN: center\">\r\n	<img alt=\"Mới xuất hiện nhưng những chiếc đèn lồng này được nhiều phụ huynh và các em nhỏ lựa chọn\" src=\"http://dantri4.vcmedia.vn/Urgz3f5tKFdDA0VUUO/Image/2014/08/n4-242e1.jpg\" /><br />\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\">Mới xuất hiện nhưng những chiếc đ&egrave;n lồng n&agrave;y được nhiều phụ huynh v&agrave; c&aacute;c em nhỏ lựa chọn</span><br />\r\n	&nbsp;</p>\r\n<p>\r\n	Chiếc đ&egrave;n lồng mang th&ocirc;ng điệp biển đảo được gh&eacute;p lại bằng 3 mảnh b&igrave;a kh&aacute;c nhau. Chiếc đ&egrave;n c&oacute; thể thắp s&aacute;ng v&agrave; ph&aacute;t nhạc khi được lắp pin ở tay cầm.Tuy nhi&ecirc;n, chi tiết đ&aacute;ng ch&uacute; &yacute; nhất đ&oacute; l&agrave; những th&ocirc;ng điệp hướng về biển đảo in tr&ecirc;n th&acirc;n của chiếc đ&egrave;n lồng như &ldquo;Em y&ecirc;u biển đảo qu&ecirc; hương&rdquo;, &ldquo;B&eacute; hướng về biển đảo&rdquo;, &ldquo;Em y&ecirc;u biển đảo Việt Nam&rdquo;, &ldquo;Em y&ecirc;u ch&uacute; bộ đội hải qu&acirc;n Việt Nam&rdquo;, với những h&igrave;nh ảnh chiến sĩ Hải qu&acirc;n Việt Nam s&uacute;ng kho&aacute;c tr&ecirc;n vai bảo vệ chủ quyền biển đảo Tổ quốc hay những chiếc t&agrave;u mang d&ograve;ng chữ Cảnh s&aacute;t biển Việt Nam&hellip;</p>\r\n', '', '', 'n1-242e1.jpg', '2018-03-26 00:01:19', '0', 1),
(2, 'Arsenal đồng ý bán Vermaelen cho Barcelona', '(Dân trí) - Theo những thông tin từ báo giới Anh, Arsenal đã quyết định từ chối MU, để bán trung vệ Vermarlen cho Barcelona. Mức giá của trung vệ này vào khoảng 15 triệu bảng.', '<p>\r\n	Như đ&atilde; biết, c&aacute;ch đ&acirc;y v&agrave;i ng&agrave;y, trung vệ Vermaelen đ&atilde; từ chối gia hạn hợp đồng với Arsenal. Điều đ&oacute; khiến cho CLB th&agrave;nh London t&igrave;m c&aacute;ch b&aacute;n cầu thủ n&agrave;y bằng mọi gi&aacute; để &ldquo;gỡ gạc&rdquo; ch&uacute;t &iacute;t ph&iacute; chuyển nhượng thay v&igrave; mất trắng cầu thủ n&agrave;y&nbsp;ở m&ugrave;a H&egrave; sang năm.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<div align=\"center\">\r\n	<span style=\"FONT-FAMILY: Tahoma; FONT-SIZE: 10pt\"><img _fl=\"\" align=\"middle\" alt=\"Vermaelen ở rất gần Barcelona\" src=\"http://dantri4.vcmedia.vn/uajiKupQ6reCuKKDlVlG/Image/2014/08/Vermaelen-d4361.jpg\" style=\"MARGIN: 5px\" width=\"450\" /><br />\r\n	Vermaelen ở rất gần Barcelona</span><br />\r\n	&nbsp;</div>\r\n<p>\r\n	Trong thời gian gần đ&acirc;y, MU v&agrave; Barcelona l&agrave; hai ứng cử vi&ecirc;n s&aacute;ng gi&aacute; trong cuộc đua gi&agrave;nh chữ k&yacute; của hậu vệ người Bỉ. Cuối c&ugrave;ng, HLV Wenger đ&atilde; quyết định từ chối MU để b&aacute;n Vermarlen cho Barcelona. Trước đ&oacute; c&oacute; th&ocirc;ng tin cho rằng Wenger muốn đổi Vermaelen lấy Smalling, tuy nhi&ecirc;n Van Gaal lại từ chối phương &aacute;n n&agrave;y.</p>\r\n<p>\r\n	Trước b&aacute;o giới, HLV Wenger cho biết: &ldquo;Ch&uacute;ng t&ocirc;i đ&atilde; nhận được những lời đề nghị từ nước ngo&agrave;i v&agrave; quyết định để Vermaelen rời khỏi Premier League. Bản th&acirc;n Arsenal cũng đang ở trong thế kh&oacute; trong vụ n&agrave;y&rdquo;.</p>\r\n<p>\r\n	Theo tờ BBC, Arsenal đ&atilde; đồng &yacute; lời đề nghị trị gi&aacute; 15 triệu bảng của Barcelona. Trong thời gian tới, trung vệ người Bỉ sẽ được quyền tự do đ&agrave;m ph&aacute;n với đội b&oacute;ng xứ Catalan.</p>\r\n<p>\r\n	Nhiều khả năng thương vụ n&agrave;y sẽ ho&agrave;n tất trong thời gian tới. Arsenal cũng bắt đầu t&igrave;m người thay thế Vermaelen. L&uacute;c n&agrave;y, ưu ti&ecirc;n số 1 của HLV Wenger l&agrave; trung vệ Nastasic của Man City, người nhiều khả năng sẽ mất vị tr&iacute; nếu như Mangala gia nhập Etihad.</p>\r\n<p align=\"right\">\r\n	<b>H.Long</b></p>\r\n', '', '', 'Vermaelen-d4361.jpg', '2018-03-26 00:01:19', '0', 2),
(3, 'Hà Nội: CSGT tìm người thân giúp cháu bé 8 tuổi đi lạc', '(Dân trí) - Theo người thân cháu Chi, trong lúc gia đình nghỉ trưa, cháu Chi mải chơi đã đi lạc từ phía phường Ngọc Lâm (quận Long Biên) sang nội thành. Trong lúc đang hoang mang tìm cháu, gia đình nhận được tin báo của lực lượng cảnh sát giao thông.', '<p>\r\n	Khoảng 15h30 ng&agrave;y 8/8, khi đang l&agrave;m nhiệm vụ tại chốt ph&iacute;a nam cầu Chương Dương (địa b&agrave;n quận Ho&agrave;n Kiếm, H&agrave; Nội), Thượng sĩ Phạm Gia Hợp v&agrave; Thượng t&aacute; L&ecirc; Đức Đo&agrave;n(Đội CSGT số 1) ph&aacute;t hiện một ch&aacute;u b&eacute; khoảng 7-8 tuổi đi bộ tr&ecirc;n khu vực cầu Chương Dương với vẻ mặt sợ sệt. Khi Thượng sĩ Hợp v&agrave; Thượng t&aacute; Đ&ograve;an tiến lại hỏi han, ch&aacute;u b&eacute; c&oacute; biểu hiện sợ sệt v&agrave; bật kh&oacute;c n&oacute;i rằng đi lạc đường.</p>\r\n<p>\r\n	Thấy ch&aacute;u b&eacute; lả đi v&igrave; mệt, Thượng sĩ Hợp đ&atilde; đưa ch&aacute;u về chốt trực, mua b&aacute;nh v&agrave; sữa để ch&aacute;u ăn đỡ đ&oacute;i v&agrave; trấn tĩnh lại. Đồng thời, Thượng sĩ Hợp th&ocirc;ng b&aacute;o tr&ecirc;n c&aacute;c phương tiện th&ocirc;ng tin đại ch&uacute;ng về đặc điểm nhận dạng của ch&aacute;u b&eacute;.</p>\r\n<p>\r\n	<img alt=\"Cháu Chi đoàn tụ với gia đình.\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/Image/2014/08/455-549e4.jpg\" /><br />\r\n	Ch&aacute;u Chi đo&agrave;n tụ với gia đ&igrave;nh.</p>\r\n<p>\r\n	Sau khi trấn tĩnh lại, ch&aacute;u b&eacute; cho biết t&ecirc;n l&agrave; Vương Kim Chi (SN 2007), năm nay l&ecirc;n lớp 2 trường tiểu học &Aacute;i Mộ, quận Long Bi&ecirc;n, H&agrave; Nội. Bằng c&aacute;c biện ph&aacute;p nghiệp vụ, Thượng sĩ Hợp v&agrave; Thượng t&aacute; Đo&agrave;n đ&atilde; li&ecirc;n hệ được với c&ocirc; gi&aacute;o chủ nhiệm ch&aacute;u Chi để th&ocirc;ng b&aacute;o với gia đ&igrave;nh ch&aacute;u b&eacute; biết.</p>\r\n<p>\r\n	Gần 2 tiếng đồng hồ sau, mẹ ch&aacute;u Chi l&agrave; chị Đo&agrave;n Thị Khuyến (SN 1983, ở Ngọc L&acirc;m, Long Bi&ecirc;n, H&agrave; Nội) đ&atilde; t&igrave;m đến trụ sở Đội CSGT số 1 nhận lại con. Chị Khuyến cho cho biết, khoảng 14h c&ugrave;ng ng&agrave;y, trong l&uacute;c gia đ&igrave;nh nghỉ trưa, ch&aacute;u Chi mải chơi đ&atilde; đi lạc từ b&ecirc;n n&agrave;y cầu sang b&ecirc;n kia nội th&agrave;nh.</p>\r\n<p>\r\n	Trong l&uacute;c hoang mang kh&ocirc;ng biết t&igrave;m ch&aacute;u ở đ&acirc;u, gia đ&igrave;nh được th&ocirc;ng b&aacute;o ch&aacute;u Chi đ&atilde; được c&aacute;c chiến sĩ CSGT tận t&igrave;nh gi&uacute;p đỡ. Thay mặt gia đ&igrave;nh, chị Khuyến đ&atilde; viết thư cảm ơn c&aacute;c chiến sĩ cảnh s&aacute;t giao th&ocirc;ng.</p>\r\n<p>\r\n	<strong>Tiến Nguy&ecirc;n</strong></p>\r\n', '', '', '455-549e4.jpg', '2018-03-26 00:01:19', '0', 9),
(4, 'Mỹ tăng cường không kích Iraq', '(Dân trí) - Sau khi Tổng thống Obama phê chuẩn cho không kích các mục tiêu của nhóm phiến quân Hồi giáo IS ở miền bắc Iraq, Lầu Năm Góc đã tiến hành 3 đợt không kích.', '<p>\r\n	C&aacute;c vụ kh&ocirc;ng k&iacute;ch nhằm v&agrave;o nh&oacute;m Nh&agrave; nước Hồi gi&aacute;o (IS) ở miền bắc Iraq l&agrave; những cuộc tấn c&ocirc;ng đầu ti&ecirc;n kể từ khi Mỹ trực tiếp tham gia v&agrave;o hoạt động qu&acirc;n sự ở Iraq v&agrave; sau đ&oacute; r&uacute;t qu&acirc;n v&agrave;o cuối năm 2011.</p>\r\n<p>\r\n	Trong cuộc kh&ocirc;ng k&iacute;ch đầu ti&ecirc;n v&agrave;o ng&agrave;y thứ s&aacute;u, m&aacute;y bay kh&ocirc;ng người l&aacute;i c&ugrave;ng chiến đấu cơ hải qu&acirc;n Mỹ đ&atilde; nhắm v&agrave;o c&aacute;c mục ti&ecirc;u gần th&agrave;nh phố Irbil của người Kurd. Sau đ&oacute; họ tiến h&agrave;nh th&ecirc;m 2 đợt tấn c&ocirc;ng nữa.</p>\r\n<p>\r\n	Nh&oacute;m Hồi gi&aacute;o người Sunni IS đ&atilde; chiếm quyền kiểm so&aacute;t nhiều khu vực của Iraq v&agrave; cả Syria.</p>\r\n<p>\r\n	H&agrave;ng chục ng&agrave;n người thuộc c&aacute;c nh&oacute;m d&acirc;n tộc thiểu số đ&atilde; phải rời bỏ nh&agrave; cửa khi phiến qu&acirc;n tiến v&agrave;o.</p>\r\n<p>\r\n	Nh&oacute;m IS hay c&ograve;n được gọi l&agrave; ISIS cũng đ&atilde; chiếm đập lớn nhất Iraq.</p>\r\n<p>\r\n	Lầu Năm G&oacute;c cho biết trong đợt kh&ocirc;ng k&iacute;ch thứ hai, m&aacute;y bay kh&ocirc;ng người l&aacute;i của Mỹ đ&atilde; ph&aacute; hủy một vị tr&iacute; đặt ph&aacute;o của phiến qu&acirc;n v&agrave; ti&ecirc;u diệt một nh&oacute;m phiến qu&acirc;n.</p>\r\n<p>\r\n	Chỉ hơn một tiếng sau, chiến đấu cơ F/A-18 đ&atilde; d&ugrave;ng bom c&oacute; laser dẫn đường bắn tr&uacute;ng một đo&agrave;n 7 xe của IS.</p>\r\n<p>\r\n	Trước đ&oacute;, v&agrave;o ng&agrave;y thứ s&aacute;u, 2 quả bom đ&atilde; được thả xuống một khẩu ph&aacute;o của IS d&ugrave;ng để chống lại lực lượng đang bảo vệ Irbil, thủ phủ của v&ugrave;ng tự trị của người Kurd.</p>\r\n<p>\r\n	Ph&aacute;t ng&ocirc;n vi&ecirc;n Bộ Ngoại giao Mỹ Marie Harf cho biết mục ti&ecirc;u trước mắt của c&aacute;c cuộc kh&ocirc;ng k&iacute;ch l&agrave; &ldquo;ngăn chặn bước tiến&rdquo; của IS về Irbil.</p>\r\n<p>\r\n	&ldquo;Sau đ&oacute; về l&acirc;u d&agrave;i chung t&ocirc;i muốn phối hợp hỗ trợ th&ecirc;m thời gian v&agrave; kh&ocirc;ng gian cho c&aacute;c lực lượng của người Kurd để xốc lại lực lượng, chiến đấu với đe dọa của ch&iacute;nh họ&rdquo;.</p>\r\n<p>\r\n	B&agrave; cũng khẳng định &ldquo;kh&ocirc;ng c&oacute; giải ph&aacute;p qu&acirc;n sự l&acirc;u d&agrave;i của Mỹ ở đ&oacute;&rdquo;.</p>\r\n<p>\r\n	Mặc d&ugrave; ch&iacute;nh phủ Iraq v&agrave; V&ugrave;ng người Kurd vẫn c&ograve;n đang c&oacute; bất đồng trong những th&aacute;ng qua, nhưng Thủ tướng Nouri Maliki đ&atilde; ph&aacute;i một m&aacute;y bay chở đạn tới Irbil v&agrave; thứ s&aacute;u. Trước đ&oacute; &ocirc;ng đ&atilde; lệnh cho lực lượng kh&ocirc;ng qu&acirc;n hỗ trợ cho c&aacute;c tay s&uacute;ng người Kurd để chiến đấu chống IS.</p>\r\n<p>\r\n	<b>Trung Anh</b></p>\r\n', '', '', '1-7d48c.jpg', '2018-03-26 00:01:19', '0', 0),
(8, 'Chung cư Carina náo loạn khi chủ đầu tư đối thoại với cư dân', 'Chủ đầu tư mong mọi người chia sẻ vì phải tập trung khắc phục sự cố, phục vụ điều tra, hỗ trợ cho gia đình 13 người chết và hơn 40 người bị thương.', '<article class=\"content_detail fck_detail width_common block_ads_connect\">\r\n<p class=\"Normal\">\r\nTối 25/3, <span class=\"_mh6 _wsc\" id=\"cch_f2e9b41d04b2b2c\"><span class=\"_3oh- _58nk\">hàng trăm cư dân Carina (quận 8, TP HCM) tập trung về tầng 2, block B, đợi chủ đầu tư đến đối thoại, nhận tiền hỗ trợ theo một tin nhắn được lan truyền trước đó. Hơn một tiếng trôi qua nhưng không thấy người có chức trách xuất hiện, nhiều người lớn tiếng phản ứng.</span></span></p><p class=\"Normal\">\r\n<span class=\"_mh6 _wsc\"><span class=\"_3oh- _58nk\">Một người đàn ông nhận là \"phía chủ đầu tư\" cho rằng, thông tin đối thoại như tin nhắn kia là không đúng, nên yêu cầu cư dân giải tán. Ông ta cũng có thái độ đe doạ, định hành hung những cư dân bức xúc nhưng bị đẩy ra ngoài. </span></span></p><p class=\"Normal\">\r\n<span class=\"_mh6 _wsc\"><span class=\"_3oh- _58nk\">Khoảng 20h, đại diện Công ty Hùng Thanh (quản lý chung cư Carina Plaza, thuộc chủ đầu tư - Công ty CP đầu tư <a href=\"https://kinhdoanh.vnexpress.net/tin-tuc/bat-dong-san/chu-dau-tu-chung-cu-carina-no-gan-20-ty-dong-quy-bao-tri-3727393.html\">Năm Bảy Bảy</a>) đưa ra thông báo chính thức.</span></span></p><p class=\"Normal\">\r\n<span class=\"_mh6 _wsc\"><span class=\"_3oh- _58nk\">Gương mặt lộ rõ vẻ mệt mỏi, căng thẳng, ông này nói: </span></span>\"Chúng tôi thành thật xin lỗi việc chậm trễ khi chưa có thông báo chính thức do phải tập trung khắc phục sự cố, phục vụ điều tra, hỗ trợ khẩn cấp các gia đình có người tử vong, bị thương. Chúng tôi cũng phải tập trung bảo vệ tài sản, hỗ trợ cư dân lấy lại giấy tờ, đồ đạc, xử lý các công việc để người dân có thể lấy xe ra ngoài\".</p><table class=\"tplCaption\" cellspacing=\"0\" cellpadding=\"3\" border=\"0\" align=\"center\" style=\"width: 500px;\"><tbody><tr><td>\r\n<img alt=\"Đại diện đơn vị vận hành chung cư (trái) đưa ra thông báo xin lỗi cư dân. Ảnh: Duy Trần.\" data-natural-width=\"500\" src=\"https://i-vnexpress.vnecdn.net/2018/03/25/carina-8404-1521994959.jpg\" data-width=\"500\" data-pwidth=\"570\"></td>\r\n</tr><tr><td>\r\n<p class=\"Image\">\r\nĐại diện đơn vị vận hành chung cư (trái) đưa ra thông báo xin lỗi cư dân. Ảnh: <em>Duy Trần.</em></p>\r\n</td>\r\n</tr></tbody></table><p class=\"Normal\">\r\nÔng này cho biết, công ty đã cử đại diện đến các bệnh viện túc trực, hỗ trợ vật chất và tinh thần cho các nạn nhân trong suốt quá trình cấp cứu. Đơn vị hỗ trợ gia đình mỗi nạn nhân tử vong 100 triệu đồng. Tính đến hôm nay, tổng số tiền hỗ trợ 13 người chết và 42 trường hợp bị thương là hơn 1,8 tỷ đồng.</p><p class=\"Normal\">\r\n\"Công ty cũng sẽ hỗ trợ mỗi hộ dân 300.000 đồng một ngày, để trang trải chỗ ở tạm cho đến khi căn hộ được khắc phục, người dân đủ điều kiện vào ở lại\", ông này thông báo.</p><p class=\"Normal\">\r\n<span>Với cả nghìn xe máy, ôtô tại tầng hầm không bị hư hại, cư dân liên hệ ban quản lý để lấy ra sử dụng từ tối nay. Còn những phương tiện hư hỏng do hoả hoạn, cư dân tự sửa chữa cũng như liên hệ bảo hiểm của mình để được chi trả. Trường hợp bảo hiểm không đền bù, chủ đầu tư sẽ hỗ trợ phần chênh lệch.&nbsp;</span></p><p class=\"Normal\">\r\nNhững xe bị hỏng hoàn toàn, chủ xe liên lạc ban quản lý để cung cấp hồ sơ phục vụ việc làm bảo hiểm. Chủ đầu tư và bảo hiểm sẽ mời các hộ dân để giải quyết đền bù thiệt hại trong 15 ngày, kể từ ngày mai.&nbsp;</p><p class=\"Normal\">\r\nĐối với việc sửa chữa toà nhà, chủ đầu tư cố gắng hoàn thành trong 30 ngày. Phải qua giám định của cơ quan chức năng về PCCC, vệ sinh môi trường, an toàn kết cấu... mới đưa cư dân vào ở. Riêng block C (thiệt hại ít nhất) sẽ hoàn thành sửa chữa trong 10 ngày.&nbsp;</p><p class=\"Normal\">\r\nLiên quan việc cư dân nhiều lần yêu cầu phải có Ban quản trị chung cư, đại diện <span class=\"_mh6 _wsc\"><span class=\"_3oh- _58nk\">Công ty Hùng Thanh cho biết </span></span>đã tổ chức hai lần nhưng đều không thành công. Lần đầu do cư dân yêu cầu thay đổi thành phần ban trù bị, sáu tháng sau công ty tổ chức hội nghị thì cư dân tham dự không đủ theo quy định. Do đó, chủ đầu tư sẽ làm việc với chính quyền để tổ chức hội nghị khi chung cư hoạt động lại.</p><table class=\"tplCaption\" cellspacing=\"0\" cellpadding=\"3\" border=\"0\" align=\"center\" style=\"width: 500px;\"><tbody><tr><td>\r\n<img alt=\"Bãi xe dưới tầng hầm cháy trụi. Ảnh: Duy Trần\" data-natural-width=\"500\" src=\"https://i-vnexpress.vnecdn.net/2018/03/25/chay-chung-cu-5-1521780319-120-2582-7653-1521988573.jpg\" data-width=\"500\" data-pwidth=\"570\"></td>\r\n</tr><tr><td>\r\n<p class=\"Image\">\r\nBãi xe dưới tầng hầm cháy trụi. Ảnh: <em>Duy Trần.</em></p>\r\n</td>\r\n</tr></tbody></table><p class=\"Normal\">\r\n<span>Trước thông báo của chủ đầu tư, một số cư dân tỏ ra chia sẻ nhưng đa số vẫn rất bức xúc. Họ cho rằng chủ đầu tư chậm đưa ra lời xin lỗi, không tổ chức đối thoại để giải quyết các vấn đề khúc mắc của cư dân. Nhiều người phải \"ăn nhờ ở đậu\" nhà người thân hoặc thuê khách sạn ở tạm.&nbsp;</span></p><p class=\"Normal\">\r\n<span>Đại diện chủ đầu tư giải thích: </span>\"Do đơn vị tập trung tất cả nguồn lực để hỗ trợ cơ quan điều tra. Khi cháy, chúng tôi cùng cảnh sát giải cứu người dân. Bản thân tôi cũng bị thương ở vùng đầu nhưng mấy hôm nay chạy đôn đáo lo hỗ trợ khắc phục. Rất mong bà con chia sẻ, chúng tôi sẽ sớm tổ chức đối thoại\".</p><p class=\"Normal\">\r\nCũng trong ngày hôm nay, gần 500 cư dân Carina đồng loạt ký tên, <a href=\"https://vnexpress.net/tin-tuc/thoi-su/500-cu-dan-carina-gui-don-cho-thu-tuong-to-cao-chu-dau-tu-3727566.html\">gửi đơn</a> đến Thủ tướng Nguyễn Xuân Phúc tố cáo chủ đầu tư. Họ cho rằng những thiệt hại đã xảy ra hoàn toàn do lỗi của chủ đầu tư, Ban quản lý chung cư cũng như những cơ quan Nhà nước có liên quan đến việc nghiệm thu, thẩm tra chất lượng trang thiết bị, kiểm tra định kỳ hệ thống phòng cháy tại chung cư.</p><p class=\"Normal\">\r\nCác cư dân yêu cầu chính quyền địa phương và các cơ quan chức năng sớm tìm ra nguyên nhân hoả hoạn, xử lý nghiêm vi phạm và giải quyết thiệt hại cho người dân.</p><div style=\"text-align: center;\">\r\n<!--start video embed-->\r\n<div onclick=\"Video.playVideo(195560)\" id=\"video_parent_195560\" class=\"box_embed_video_parent embed_video_new\" data-vid=\"195560\" data-articleoriginal=\"3727631\" data-ads=\"1\" data-license=\"1\" data-duration=\"122\" data-brandsafe=\"0\" data-type=\"0\" data-play=\"0\" data-frame=\"\" data-initdom=\"1\">\r\n<div data-vid=\"195560\" class=\"box_img_video embed-container\">\r\n<img src=\"https://iv.vnecdn.net/vnexpress/images/web/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972_500x300.jpg\" alt=\"Cư dân Carina bức xúc yêu cầu chủ đầu tư đối thoại\" style=\"height: 320.625px;\">\r\n<div class=\"icon_blockvideo\">\r\n<div class=\"img_icon\">&nbsp;</div>\r\n<div class=\"image_icon_center\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div id=\"embed_video_195560\" class=\"box_embed_video\" style=\"display:none;\">\r\n<div class=\"bg_overlay_small_unpin\"></div>\r\n<div class=\"bg_overlay_small\"></div>\r\n<div class=\"embed-container\">\r\n<div id=\"video-195560\" style=\"width: 100%; height: 320.625px;\">\r\n<div id=\"parser_player_195560\" class=\"media_content\" style=\"display: none; height: 320.625px; text-align: left;\">\r\n<div id=\"videoContainter_195560\" class=\"videoContainter\" style=\"width: 100%; height: 100%;\">\r\n<video id=\"media-video-195560\" preload=\"none\" playsinline=\"\" webkit-playsinline=\"\" src=\"https://v.vnecdn.net/vnexpress/video/web/mp4/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4\" type=\"video/mp4\" style=\"width: 100%; height: 100%;\" data-240=\"https://v.vnecdn.net/vnexpress/video/web/mp4/240p/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4\" data-360=\"https://v.vnecdn.net/vnexpress/video/web/mp4/360p/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4\" data-480=\"https://v.vnecdn.net/vnexpress/video/web/mp4/480p/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4\" data-720=\"https://v.vnecdn.net/vnexpress/video/web/mp4/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4\" active-mode=\"720\" ads=\"\" adsconfig=\"{&quot;adlist&quot;:[{&quot;type&quot;:&quot;preroll&quot;,&quot;tag&quot;:&quot;https:\\/\\/pubads.g.doubleclick.net\\/gampad\\/live\\/ads?sz=640x360|400x300|480x70|640x480|320x180&amp;iu=\\/27973503\\/video.vnexpress.net\\/Thoisu&amp;impl=s&amp;gdfp_req=1&amp;env=vp&amp;output=vast&amp;unviewed_position_start=1&amp;url=[referrer_url]&amp;description_url=[description_url]&amp;correlator=[timestamp]&quot;,&quot;skipOffset&quot;:&quot;00:00:06&quot;,&quot;duration&quot;:&quot;00:00:30&quot;},{&quot;type&quot;:&quot;overlay&quot;,&quot;tag&quot;:&quot;&quot;,&quot;script&quot;:&quot;%3Cscript%20async%3D%22async%22%20src%3D%22https%3A%2F%2Fwww.googletagservices.com%2Ftag%2Fjs%2Fgpt.js%22%3E%3C%2Fscript%3E%3Cscript%3Evar%20googletag%20%3D%20googletag%20%7C%7C%20%7B%7D%3Bgoogletag.cmd%20%3D%20googletag.cmd%20%7C%7C%20%5B%5D%3B%3C%2Fscript%3E%3Cscript%3Egoogletag.cmd.push(function()%7Bgoogletag.defineSlot(%22%2F27973503%2Fvideo.vnexpress.net%2FOverlay.thoisu%22%2C%5B480%2C70%5D%2C%22div-gpt-ad-1499311767737-0%22).addService(googletag.pubads())%3Bgoogletag.pubads().enableSingleRequest()%3Bgoogletag.pubads().collapseEmptyDivs()%3Bgoogletag.enableServices()%3B%7D)%3B%3C%2Fscript%3E%3Cdiv%20id%3D%22div-gpt-ad-1499311767737-0%22%20style%3D%22height%3A70px%3B%20width%3A480px%3B%22%3E%3Cscript%3Egoogletag.cmd.push(function()%7B%20googletag.display(%22div-gpt-ad-1499311767737-0%22)%3B%7D)%3B%3C%2Fscript%3E%3C%2Fdiv%3E&quot;,&quot;size&quot;:&quot;480x70&quot;,&quot;offset&quot;:&quot;30%&quot;,&quot;skipOffset&quot;:&quot;00:00:01&quot;,&quot;duration&quot;:&quot;00:00:15&quot;}]}\" data-ex=\"bs=0&amp;pt=1&amp;fblg=1\"></video>\r\n</div>\r\n</div>\r\n<!--[if IE]>\r\n                                    <div id=\"flash_player_195560\" class=\"flash_content\" style=\"display:none;\">\r\n                                        <object width=\"100%\" height=\"100%\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" id=\"videoplayer_195560\" codebase=\"https://fpdownload2.macromedia.com/get/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\">\r\n                                            <param name=\"movie\" value=\"https://s.vnecdn.net/video/flash/vneplayer.swf\">\r\n                                            <param name=\"allowScriptAccess\" value=\"always\" />\r\n                                            <param name=\"quality\" value=\"high\">\r\n                                            <param name=\"bgcolor\" value=\"#000000\">\r\n                                            <param name=\"wmode\" value=\"transparent\">\r\n                                            <param name=\"flashvars\" value=\"xmlPath=&mAuto=true&asseturl=https://s.vnecdn.net/video/flash/assetv3.swf&dynamicview=false&sharemode=false&autoHide=false&tracktype=video&typeview=1&playerid=videoplayer&trackurl=https://v.vnecdn.net/vnexpress/video/web/mp4/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4&thumburl=&tracklink=&adszoneid=&adsTag=&activemode=720&tracktitle=Cư dân Carina bức xúc yêu cầu chủ đầu tư đối thoại\">\r\n                                            <param name=\"allowfullscreen\" value=\"true\">\r\n                                            <embed bgcolor=\"#000000\" width=\"100%\" height=\"100%\" name=\"videoplayer_195560\" flashvars=\"xmlPath=&mAuto=true&asseturl=https://s.vnecdn.net/video/flash/assetv3.swf&dynamicview=false&sharemode=false&autoHide=false&tracktype=video&typeview=1&playerid=videoplayer&trackurl=https://v.vnecdn.net/vnexpress/video/web/mp4/2018/03/25/cu-dan-carina-buc-xuc-yeu-cau-chu-dau-tu-doi-thoai-1521989972.mp4&thumburl=&tracklink=&adszoneid=&adsTag=&activemode=720&tracktitle=Cư dân Carina bức xúc yêu cầu chủ đầu tư đối thoại\" type=\"application/x-shockwave-flash\" allowfullscreen=\"true\" allowscriptaccess=\"always\" wmode=\"transparent\" pluginspage=\"https://get.adobe.com/flashplayer/\" src=\"https://s.vnecdn.net/video/flash/vneplayer.swf\">\r\n                                        </object>\r\n                                    </div>\r\n                                    <![endif]-->\r\n</div>\r\n<div class=\"parser_title\" style=\"display:none;\">Cư dân Carina bức xúc yêu cầu chủ đầu tư đối thoại</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--end video embed-->\r\n</div><div class=\"box_tableinsert\"><table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"0\" class=\"tbl_insert\" style=\"width:100%;\"><tbody><tr><td style=\"background-color: rgb(204, 204, 204);\">\r\n<p class=\"Normal\">\r\n<span class=\"_mh6 _wsc\" id=\"cch_f606054c0621e4\"><span class=\"_3oh- _58nk\">Chung cư Carina Plaza nằm <span class=\"_mh6 _wsc\" id=\"cch_f606054c0621e4\"><span class=\"_3oh- _58nk\">trên khu đất rộng hơn 19.000 m2 ở </span></span>đường Võ Văn Kiệt, quận 8. Toà nhà gồm ba blocks cao từ 14 đến 20 tầng, có khu thương mại, giải trí... và hơn 700 căn hộ.</span></span></p>\r\n<p class=\"Normal\">\r\nHỏa hoạn xảy ra lúc hơn 1h ngày 23/3 tại tầng hầm chung cư khiến 13 người chết, hơn 50 người bị thương; 13 ôtô và 150 xe máy bị thiêu rụi. Hậu quả này được đánh giá là nghiêm trọng nhất trong 15 năm qua, chỉ sau thảm hoạ <a href=\"https://vnexpress.net/tin-tuc/thoi-su/cuoc-tuong-phung-sau-15-nam-tham-hoa-itc-o-sai-gon-3661595.html\">cháy ITC</a> làm 60 người chết.</p>\r\n<p class=\"Normal\">\r\nTheo điều tra ban đầu, khi đám cháy bùng lên, các cửa cầu thang thông lên tầng trên mở tung do bị chêm gạch, khiến khói lùa lên rất mạnh. Hệ thống chữa cháy tự động trước đó gần như không hoạt động, lực lượng chữa cháy tại chỗ không có, nên khi lính cứu hỏa đến nơi lửa khói đã rất lớn.</p>\r\n<p class=\"Normal\">\r\nThiếu tướng Phan Anh Minh (Phó giám đốc Công an TP HCM) cho rằng, nguyên nhân phát cháy tại tầng hầm không loại trừ khả năng do có tác động cài đặt gây nổ.</p>\r\n</td>\r\n</tr></tbody></table></div> </article>', '', '', 'carina-4471-1521994959_500x300.jpg', '2018-03-26 00:01:19', '', 0),
(9, 'Cứu hàng chục người, hai bảo vệ chung cư Carina được khen thưởng', 'An và Sang giọng ngậm ngùi, nói dành bằng khen cho bảo vệ Trần Văn An, vì ông đã quên mình cứu nhiều người trong đám cháy.', '<article class=\"content_detail fck_detail width_common block_ads_connect\">\r\n<p class=\"Normal\">\r\nChiều 25/3, Hội Liên hiệp thanh niên Việt Nam TP HCM trao bằng khen cho anh Lê Gia An (21 tuổi) và Nguyễn Thanh Sang (22 tuổi) - hai bảo vệ cứu hàng chục người thoát khỏi đám cháy chung cư Carina, quận 8.</p><p class=\"Normal\">\r\nÔng Ngô Minh Hải (Phó bí thư Thành đoàn, Phó chủ tịch thường trực Hội Liên hiệp thanh niên Việt nam TP HCM) đánh giá, hai bảo vệ đã dũng cảm, không quản hiểm nguy xả thân lao vào đám cháy cứu người, xứng đáng là tấm gương tiêu biểu cho những người trẻ.</p><p class=\"Normal\">\r\nNhận khen tặng, An và Sang rưng rưng, giọng ngậm ngùi: \"Bằng khen này chúng em xin gửi đến chú An (bảo vệ Trần Văn An, 43 tuổi, thiệt mạng trong vụ hoả hoạn). Chính chú là động lực để tụi em phải cố gắng hết sức cứu người\".</p><table class=\"tplCaption\" cellspacing=\"0\" cellpadding=\"3\" border=\"0\" align=\"center\" style=\"width: 500px;\"><tbody><tr><td>\r\n<img alt=\"Hai bảo vệ An và Sang (thứ ba và tư từ trái qua)&nbsp;đã quên mình cứu hàng chục người thoát khỏi&nbsp;đám cháy chung cư Carina.&nbsp;Ảnh:&nbsp;Đ T.\" data-natural-width=\"500\" src=\"https://i-vnexpress.vnecdn.net/2018/03/25/bao-ve-cuu-nguoi-chay-chung-cu-8657-1521984170.jpg\" data-width=\"500\" data-pwidth=\"570\"></td>\r\n</tr><tr><td>\r\n<p class=\"Image\">\r\nAn và Sang (thứ ba và tư từ trái qua)&nbsp;đã cứu hàng chục người thoát khỏi&nbsp;đám cháy chung cư Carina.&nbsp;Ảnh:&nbsp;<em>Đ.T.</em></p>\r\n</td>\r\n</tr></tbody></table><p class=\"Normal\">\r\nKhi xảy ra cháy, ông An đã chạy lên các tầng lầu báo động cho cư dân. Đến trưa mọi người mới phát hiện ông tử vong.</p><p class=\"Normal\">\r\n<span>\"</span><span>Chú An đưa được một tốp người ở tầng dưới r</span><span>a ngoài an t</span><span style=\"color:rgb(34,34,34);\">oàn</span><span>. Nhưng </span><span>thấy nhiều người rọi đèn pin kêu cứu phía trên, chú ấy quay lại chung cư. Nếu chú chạy ra ngoài luôn </span><span>thì đã không thiệt mạng\"</span><span>, An cho biết</span><span>.</span></p><p class=\"Normal\">\r\nCũng như ông Trần Văn An, An và Sang đã cố gắng làm hết trách nhiệm của người bảo vệ, giúp cư dân trong lúc nguy cấp. <span>Sau khi dùng bình chữa cháy dập lửa bất thành, cả hai chạy lên các tầng trên tri hô người dân.</span></p><p class=\"Normal\">\r\nThông thuộc&nbsp;đường&nbsp;đi nước bước trong chung cư, khi đến một căn hộ gần siêu thị&nbsp;ở tầng một, có ban công hướng ra chỗ không bắt khói, An và Sang phá cửa. Hai thanh niên hướng dẫn hàng chục người vào trong, sau đó ném tất cả nệm trong căn hộ xuống&nbsp;đất, lấy ga giường và rèm cửa làm dây, biến nơi&nbsp;đây thành lối thoát hiểm cho mọi người.</p><p class=\"Normal\">\r\nTiếp&nbsp;đó An chạy&nbsp;đi kêu thêm người&nbsp;đến lối thoát hiểm này, còn Sang chạy sang blocks khác lấy thêm thang cho cư dân leo xuống.</p><p class=\"Normal\">\r\nKhói&nbsp;đen càng lúc càng&nbsp;đặc quánh, An và Sang tiếp tục&nbsp;chạy lên các tầng cao báo&nbsp;động. Họ gặp bất cứ người già, trẻ em nào không&nbsp;đi&nbsp;được&nbsp;đều cõng chạy xuống&nbsp;đất, và kêu thêm thanh niên phụ giúp cõng người.</p><p class=\"Normal\">\r\nKhi Cảnh sát PCCC có mặt, hai bảo vệ tiếp tục chỉ đường, đập cửa từng phòng cho lực lượng chức năng hướng dẫn cư dân thoát nạn và giải cứu người mắc kẹt...</p><table class=\"tplCaption\" cellspacing=\"0\" cellpadding=\"3\" border=\"0\" align=\"center\" style=\"width: 500px;\"><tbody><tr><td>\r\n<img alt=\"An và Sang thắp nhang tưởng nhớ ông Trần Văn An. Ảnh:&nbsp;Đ.T.\" data-natural-width=\"500\" src=\"https://i-vnexpress.vnecdn.net/2018/03/25/bao-ve-carina-8794-1521988598.jpg\" data-width=\"500\" data-pwidth=\"570\"></td>\r\n</tr><tr><td>\r\n<p class=\"Image\">\r\nAn và Sang thắp nhang tưởng nhớ ông Trần Văn An. Ảnh:&nbsp;<em>Đ.T.</em></p>\r\n</td>\r\n</tr></tbody></table><p class=\"Normal\">\r\nNói về việc làm của mình, An bảo: \"Lúc đó em không suy nghĩ gì cả. Trước tình cảnh cả chung cư đang hoảng loạn, nhất là nhiều phụ nữ và trẻ em không biết chạy đường nào để thoát, nên tụi em chỉ làm hết sức theo bản năng\".</p><p class=\"Normal\">\r\n<span>C</span><span style=\"color:rgb(34,34,34);\">ả hai cho bi</span><span style=\"color:rgb(34,34,34);\">ết</span><span style=\"color:rgb(34,34,34);\">, m</span><span style=\"color:rgb(34,34,34);\">ấy ng</span><span style=\"color:rgb(34,34,34);\">ày&nbsp;</span><span style=\"color:rgb(34,34,34);\">nay không thể ngủ. C</span><span style=\"color:rgb(34,34,34);\">ứ nh</span><span style=\"color:rgb(34,34,34);\">ắm m</span><span style=\"color:rgb(34,34,34);\">ắt </span><span style=\"color:rgb(34,34,34);\">l</span><span style=\"color:rgb(34,34,34);\">ại là thấy </span><span style=\"color:rgb(34,34,34);\">nh</span><span style=\"color:rgb(34,34,34);\">ững h</span><span style=\"color:rgb(34,34,34);\">ình&nbsp;</span><span style=\"color:rgb(34,34,34);\">ảnh kh</span><span style=\"color:rgb(34,34,34);\">ủng khi</span><span style=\"color:rgb(34,34,34);\">ếp c</span><span style=\"color:rgb(34,34,34);\">ủa v</span><span style=\"color:rgb(34,34,34);\">ụ h</span><span style=\"color:rgb(34,34,34);\">ỏa h</span><span style=\"color:rgb(34,34,34);\">oạn, <span style=\"color:rgb(34,34,34);\">nghe </span><span style=\"color:rgb(34,34,34);\">nh</span><span style=\"color:rgb(34,34,34);\">ững ti</span><span style=\"color:rgb(34,34,34);\">ếng la h</span><span style=\"color:rgb(34,34,34);\">ét của nạn nhân</span></span><span style=\"color:rgb(34,34,34);\">. Tuy nhi</span><span style=\"color:rgb(34,34,34);\">ên khi&nbsp;</span><span style=\"color:rgb(34,34,34);\">đi l</span><span style=\"color:rgb(34,34,34);\">àm, hai b</span><span style=\"color:rgb(34,34,34);\">ảo v</span><span style=\"color:rgb(34,34,34);\">ệ thấy </span><span style=\"color:rgb(34,34,34);\">ấm l</span><span style=\"color:rgb(34,34,34);\">òng ph</span><span style=\"color:rgb(34,34,34);\">ần n</span><span style=\"color:rgb(34,34,34);\">ào vì </span><span style=\"color:rgb(34,34,34);\">đ</span><span style=\"color:rgb(34,34,34);\">ược bà con cư dân thăm </span><span style=\"color:rgb(34,34,34);\">h</span><span style=\"color:rgb(34,34,34);\">ỏi, động viên.</span></p><p class=\"Normal\">\r\nCarina Plaza <span class=\"_mh6 _wsc\" id=\"cch_f606054c0621e4\"><span class=\"_3oh- _58nk\">nằm <span class=\"_mh6 _wsc\" id=\"cch_f606054c0621e4\"><span class=\"_3oh- _58nk\">trên </span></span>đường Võ Văn Kiệt, gồm ba lốc cao từ 14 đến 20 tầng, có khu thương mại, giải trí... và hơn 700 căn hộ.</span></span></p><p class=\"Normal\">\r\nHỏa hoạn xảy ra lúc hơn 1h ngày 23/3 tại tầng hầm chung cư. Theo điều tra ban đầu, một xe máy bất ngờ phát nổ, sau đó lửa lan sang những xe khác. Khi đám cháy bùng lên, các cửa cầu thang thông lên tầng trên mở bung do bị chêm gạch, khói lùa lên rất mạnh.</p><p class=\"Normal\">\r\nHệ thống chữa cháy tự động gần như không hoạt động, lực lượng chữa cháy tại chỗ không có, nên khi lính cứu hỏa đến nơi lửa khói đã rất lớn.</p><p class=\"Normal\">\r\nĐám cháy khiến 13 người chết, hơn 50 người bị thương; 13 ôtô và 150 xe máy bị thiêu rụi. Hậu quả nghiêm trọng nhất trong hơn mười năm tại TP HCM, chỉ sau thảm hoạ <a href=\"https://vnexpress.net/tin-tuc/thoi-su/cuoc-tuong-phung-sau-15-nam-tham-hoa-itc-o-sai-gon-3661595.html\">cháy ITC</a> (60 người chết) hồi năm 2002.</p><p class=\"Normal\">\r\nCông an TP HCM đang làm rõ nguyên nhân.</p><p class=\"Normal\" style=\"text-align:right;\">\r\n<strong>Tuyết Nguyễn</strong></p> </article>', '', '', 'bao-ve-carina-6896-1521988598_140x84.jpg', '2018-03-26 00:04:43', '0', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `transaction_id` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `data` text COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`transaction_id`, `id`, `product_id`, `qty`, `amount`, `data`, `status`) VALUES
(7, 6, 2, 1, '4000000.0000', '', 1),
(8, 7, 2, 1, '4000000.0000', '', 0),
(9, 8, 8, 1, '10000000.0000', '', 0),
(10, 9, 8, 1, '10000000.0000', '', 0),
(11, 10, 8, 1, '10000000.0000', '', 2),
(12, 11, 8, 1, '10000000.0000', '', 0),
(13, 12, 8, 2, '20000000.0000', '', 0),
(14, 13, 8, 1, '10000000.0000', '', 1),
(15, 14, 3, 1, '5000000.0000', '', 0),
(16, 15, 3, 1, '5000000.0000', '', 0),
(17, 16, 3, 1, '5000000.0000', '', 0),
(18, 17, 3, 1, '5000000.0000', '', 0),
(19, 18, 3, 1, '5000000.0000', '', 0),
(20, 19, 3, 1, '5000000.0000', '', 0),
(21, 20, 8, 1, '10000000.0000', '', 0),
(22, 21, 9, 1, '5400000.0000', '', 0),
(22, 22, 8, 1, '9500000.0000', '', 0),
(23, 23, 9, 1, '5400000.0000', '', 0),
(24, 24, 2, 1, '3800000.0000', '', 0),
(24, 25, 4, 1, '6000000.0000', '', 0),
(24, 26, 5, 1, '5500000.0000', '', 0),
(25, 27, 38, 1, '122456.0000', '', 0),
(26, 28, 8, 1, '9500000.0000', '', 0),
(26, 29, 7, 1, '5800000.0000', '', 0),
(27, 30, 8, 1, '9500000.0000', '', 0),
(28, 31, 38, 1, '122456.0000', '', 0),
(31, 32, 8, 10, '95000000.0000', '', 0),
(34, 33, 8, 1, '9500000.0000', '', 0),
(35, 34, 2, 1, '3800000.0000', '', 0),
(36, 35, 5, 1, '5500000.0000', '', 0),
(38, 36, 6, 1, '5000000.0000', '', 0),
(39, 37, 8, 1, '9500000.0000', '', 0),
(40, 38, 8, 1, '9500000.0000', '', 0),
(40, 39, 7, 1, '5800000.0000', '', 0),
(40, 40, 5, 1, '5500000.0000', '', 0),
(41, 41, 8, 1, '9500000.0000', '', 0),
(42, 42, 38, 21, '2571576.0000', '', 0),
(42, 43, 5, 1, '5500000.0000', '', 0),
(43, 44, 8, 5, '47500000.0000', '', 0),
(43, 45, 2, 2, '7600000.0000', '', 0),
(43, 46, 38, 1, '122456.0000', '', 0),
(43, 47, 7, 1, '5800000.0000', '', 0),
(44, 48, 7, 10, '58000000.0000', '', 0),
(44, 49, 2, 10, '38000000.0000', '', 0),
(44, 50, 8, 10, '95000000.0000', '', 0),
(45, 51, 7, 1, '5800000.0000', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `phone_show` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phone`
--

INSERT INTO `phone` (`id`, `phone`, `status`, `phone_show`) VALUES
(1, 1227475793, 1, '012.27.47.57.93'),
(3, 1693779225, 0, '069.377.9225');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` int(255) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `image_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `warranty` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(255) NOT NULL,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL,
  `rate_count` int(255) NOT NULL,
  `gifts` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `feature` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `maker_id`, `price`, `content`, `discount`, `image_link`, `image_list`, `created`, `view`, `meta_key`, `site_title`, `warranty`, `total`, `buyed`, `rate_total`, `rate_count`, `gifts`, `video`, `meta_desc`, `feature`, `alias`, `status`) VALUES
(133, 5, 'Sơ mi tay dài màu trơn xanh đen vải oxford dáng muscle', 0, '165.0000', '', 0, '1-7d48c.jpg', '', 1597567266, 0, '', '', '', 0, 0, 0, 0, '    ', '', '', '0', 'so-mi-tay-dai-mau-tron-xanh-den-vai-oxford-dang-muscle/5', 1),
(134, 5, 'Sơ mi Hollis màu cam nhạt classic fit', 0, '165.0000', '', 0, 'sacombank_vnd.png', '', 1597567124, 1, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-hollis-mau-cam-nhat-classic-fit/3', 1),
(135, 5, 'Sơ mi cao cấp Linen xám nhạt dài tay Ab', 0, '180.0000', '', 0, '1-af558.jpg', '', 1597567513, 2, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-cao-cap-linen-xam-nhat-dai-tay-ab/32', 1),
(136, 5, 'Sơ mi Lvs tay dài xanh dương oxford', 0, '165.0000', '', 0, '455-549e4.jpg', '', 1597567534, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-lvs-tay-dai-xanh-duong-oxford/39', 1),
(137, 5, 'Sơ mi Lvs xanh biển tay dài oxford', 0, '165.0000', '', 0, 'carina-4471-1521994959_500x300.jpg', '', 1597567570, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-lvs-xanh-bien-tay-dai-oxford/40', 1),
(138, 5, 'Sơ mi Lvs tay dài xanh ngọc oxford', 0, '165.0000', '', 0, 'Chrysanthemum1.jpg', '', 1597567588, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-lvs-tay-dai-xanh-ngoc-oxford/39', 1),
(139, 5, 'Sơ mi Lvs trắng tay dài oxford', 0, '165.0000', '', 0, 'n1-242e1.jpg', '', 1597567609, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-lvs-trang-tay-dai-oxford/39', 1),
(140, 5, 'Sơ mi Gp tay dài xám đậm basic oxford', 0, '165.0000', '', 0, 'Vermaelen-d4361.jpg', '', 1597567629, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-gp-tay-dai-xam-dam-basic-oxford/40', 1),
(141, 5, 'Sơ mi Lvs tay dài xám rêu oxford', 0, '165.0000', '', 0, '138614718279_video.jpg', '', 1597567656, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-lvs-tay-dai-xam-reu-oxford/39', 1),
(142, 5, 'Sơ mi trắng Aber dài tay muscle', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1516082339_tay-dai-trang-aber.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-trang-aber-dai-tay-muscle/5', 1),
(143, 5, 'Sơ mi Lvs xám nhạt tay dài oxford ', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1525757079_levis-oxford-xam-nhat.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-lvs-xam-nhat-tay-dai-oxford/39', 1),
(144, 5, 'Sơ mi hộp tay dài màu xanh đen MNG slimfit', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1522575381_so-mi-hop-mango-xanh-den-quare.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-hop-tay-dai-mau-xanh-den-mng-slimfit/37', 1),
(145, 5, 'Sơ mi hộp tay dài màu cacao MNG slimfit', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1522574479_so-mi-hop-mango-nau-cacao-quare.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-hop-tay-dai-mau-cacao-mng-slimfit/38', 1),
(146, 5, 'Sơ mi hộp tay dài màu xanh da MNG slimfit', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1522574900_so-mi-hop-mango-xanh-da-quare.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-hop-tay-dai-mau-xanh-da-mng-slimfit/38', 1),
(147, 5, 'Sơ mi Gp tay dài xám rêu basic oxford', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1526483985_gap-xam-reu-tay-dai.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-gp-tay-dai-xam-reu-basic-oxford/40', 1),
(148, 5, 'Sơ mi Lvs tay dài rêu lính oxford', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1525757821_levis-oxford-xanh-reu-linh.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-lvs-tay-dai-reu-linh-oxford/39', 1),
(149, 5, 'Sơ mi Lvs tay dài xanh đen oxford', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1525757700_levis-oxford-xanh-den.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-lvs-tay-dai-xanh-den-oxford/6', 1),
(150, 5, 'Sơ mi cao cấp Linen xanh nhạt dài tay Ab', 0, '180.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1515046656_bo-si-so-mi-linen-tay-dai-xanh-da.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-cao-cap-linen-xanh-nhat-dai-tay-ab/32', 1),
(151, 5, 'Sơ mi Lvs tay dài xám đậm oxford', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1525757220_levis-oxford-xam-dam.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-lvs-tay-dai-xam-dam-oxford/39', 1),
(152, 5, 'Sơ mi Lvs tay dài xanh oliu oxford', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1525757447_levis-oxford-xanh-oliu.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-lvs-tay-dai-xanh-oliu-oxford/39', 1),
(153, 5, 'Sơ mi trơn vàng kem Ab muscle', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1514018249_aber-tay-dai-vang-kem.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tron-vang-kem-ab-muscle/4', 1),
(154, 5, 'Sơ mi tay dài Ab xanh oliu nhạt oxford', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1523004131_so-mi-oxford-xanh-oliu-nhat.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tay-dai-ab-xanh-oliu-nhat-oxford/38', 1),
(155, 5, 'Sơ mi 2 túi vàng bee oxford tay dài slimfit', 0, '170.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1512454896_oxford-2-tui-vang.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-2-tui-vang-bee-oxford-tay-dai-slimfit/30', 1),
(156, 5, 'Sơ mi cao cấp Linen xanh dương dài tay Ab', 0, '180.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1515046430_bo-si-so-mi-linen-tay-dai-xanh-duong.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-cao-cap-linen-xanh-duong-dai-tay-ab/32', 1),
(157, 5, 'Sơ mi không nhăn Poplin tay dài xanh nhạt levis', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498551177_9-polin-xanh-da.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-khong-nhan-poplin-tay-dai-xanh-nhat-levis/7', 1),
(158, 5, 'Sơ mi cao cấp Linen trắng kem tay dài Ab', 0, '180.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1518788195_bo-si-so-mi-linen-tay-dai-kem.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-cao-cap-linen-trang-kem-tay-dai-ab/36', 1),
(159, 5, 'Sơ mi Ab trơn dài tay xám nhạt muscle', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1523005560_so-mi-aber-xam-tay-dai.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-ab-tron-dai-tay-xam-nhat-muscle/5', 1),
(160, 5, 'Sơ mi tay dài Ab màu cam đậm vải oxford', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1523004193_so-mi-oxford-cam-dat-aber.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tay-dai-ab-mau-cam-dam-vai-oxford/38', 1),
(161, 5, 'Sơ mi hộp tay dài màu xám MNG slimfit', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1522574774_so-mi-hop-mango-xam-quare.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-hop-tay-dai-mau-xam-mng-slimfit/38', 1),
(162, 5, 'Sơ mi hộp tay dài màu trắng MNG slimfit', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1522575528_so-mi-hop-mango-mau-trang-quarejpg.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-hop-tay-dai-mau-trang-mng-slimfit/37', 1),
(163, 5, 'Sơ mi 2 túi oxford xanh da tay dài slimfit', 0, '170.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1512454583_oxford-2-tui-xanh-da.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-2-tui-oxford-xanh-da-tay-dai-slimfit/29', 1),
(164, 5, 'Sơ mi trơn poplin ít nhăn xanh da đậm dài tay', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1506584227_massimo-dutti-xanh-da-dam.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tron-poplin-it-nhan-xanh-da-dam-dai-tay/23', 1),
(165, 5, 'Sơ mi cao cấp Linen đỏ đô tay dài Ab', 0, '180.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1515046759_bo-si-so-mi-linen-tay-dai-do-do.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-cao-cap-linen-do-do-tay-dai-ab/33', 1),
(166, 5, 'Sơ mi cao cấp Linen xanh coban tay dài Ab', 0, '180.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1518788299_so-mi-linen-gia-siaber-vnxk.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-cao-cap-linen-xanh-coban-tay-dai-ab/36', 1),
(167, 5, 'Sơ mi cao cấp Linen xám đậm dài tay Ab', 0, '180.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1515046534_bo-si-so-mi-linen-tay-dai-xam-dam.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-cao-cap-linen-xam-dam-dai-tay-ab/32', 1),
(168, 5, 'Sơ mi xám tiêu trơn thêu logo không túi', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498493804_1.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-xam-tieu-tron-theu-logo-khong-tui/3', 1),
(169, 5, 'Sơ mi màu Polo trơn không túi thêu logo', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498493879_3.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mau-polo-tron-khong-tui-theu-logo/4', 1),
(170, 5, 'Sơ mi trơn Polo cam nhạt không túi', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498493951_5.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tron-polo-cam-nhat-khong-tui/4', 1),
(171, 5, 'Sơ mi trơn Hollis xám classic oxford', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498493288_hol_xam.png', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tron-hollis-xam-classic-oxford/3', 1),
(172, 5, 'Sơ mi trơn màu môn nhạt oxford slimfit', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1516081571_aber-tim-mon-2.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tron-mau-mon-nhat-oxford-slimfit/33', 1),
(173, 5, 'Sơ mi dài tay trơn xanh da oxford slimfit', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1516081883_aber-xanh-bien.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-dai-tay-tron-xanh-da-oxford-slimfit/34', 1),
(174, 5, 'Sơ mi trơn Aber tay dài cam nhạt muscle', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498547259_9-cam-nhat.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tron-aber-tay-dai-cam-nhat-muscle/5', 1),
(175, 5, 'Sơ mi trơn Ab xám đậm', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498548015_3-xam-dam.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tron-ab-xam-dam/6', 1),
(176, 5, 'Sơ mi trơn Ab tím môn đậm muscle', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498547117_11-tim-mon-dam.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tron-ab-tim-mon-dam-muscle/5', 1),
(177, 5, 'Sơ mi Oxford tím nhạt tay dài Muscle chất đẹp', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1507877675_tay-dai-aber-tim-nhat.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-oxford-tim-nhat-tay-dai-muscle-chat-dep/24', 1),
(178, 5, 'Sơ mi Poplin không nhăn xám khói tay dài Levis', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498550762_8-poplin-xam-khoi.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-poplin-khong-nhan-xam-khoi-tay-dai-levis/7', 1),
(179, 5, 'Sơ mi xám đậm không nhăn Poplin tay dài levis', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1501147330_so-mi-khong-nhan-xam.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-xam-dam-khong-nhan-poplin-tay-dai-levis/7', 1),
(180, 5, 'Sơ mi MNG xanh nhạt trơn vải poplin ít nhăn slimfit', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1511862543_so-mi-mago-xanh-nhat.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mng-xanh-nhat-tron-vai-poplin-it-nhan-slimfit/28', 1),
(181, 5, 'Sơ mi MNG không nhăn polin tay dài hồng cam nhạt', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1499698415_2-so-mi-mango-hong-nhat_copy.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mng-khong-nhan-polin-tay-dai-hong-cam-nhat/16', 1),
(182, 5, 'Sơ mi trơn MNG xanh xám nhạt poplin', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1511862655_so-mi-mangoi-xam.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tron-mng-xanh-xam-nhat-poplin/28', 1),
(183, 5, 'Sơ mi MNG poplin không nhăn tay dài xanh rêu đậm', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1499699957_6-so-mi-mango-xanh-linh-dam_copy.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mng-poplin-khong-nhan-tay-dai-xanh-reu-dam/17', 1),
(184, 5, 'Sơ mi MNG không nhắn polin tay dài màu xanh ngọc', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1499699851_4-so-mj-mango-xanh-ngoc_copy.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mng-khong-nhan-polin-tay-dai-mau-xanh-ngoc/17', 1),
(185, 5, 'Sơ mi MNG xanh đậm không túi vải poplin ít nhăn', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1511862334_so-mi-mango-xanh-dam.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mng-xanh-dam-khong-tui-vai-poplin-it-nhan/28', 1),
(186, 5, 'Sơ mi MNG không nhăn poplin tay dài màu đỏ đô', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1499698324_5-so-mi-mango-do-dam_copy.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mng-khong-nhan-poplin-tay-dai-mau-do-do/16', 1),
(187, 5, 'Sơ mi MNG poplin không nhăn dài tay xanh đen', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1499699708_9-so-mi-mango-xanh-den_copy.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mng-poplin-khong-nhan-dai-tay-xanh-den/16', 1),
(188, 5, 'Sơ mi MNG poplin không nhăn tay dài màu tím nhạt', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1499699782_1-so-mi-tim-nhạt-mango_copy.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mng-poplin-khong-nhan-tay-dai-mau-tim-nhat/16', 1),
(189, 5, 'Sơ mi Hollis xanh đen classic oxford', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498493375_hol_xanh-den.png', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-hollis-xanh-den-classic-oxford/3', 1),
(190, 5, 'Sơ mi MNG polin không nhăn tay dài màu đen', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1499699567_10-so-mi-mango-đen_copy.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mng-polin-khong-nhan-tay-dai-mau-den/16', 1),
(191, 5, 'Sơ mi tay dài màu trơn Levis tím môn', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498550415_4-tim-mon.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tay-dai-mau-tron-levis-tim-mon/6', 1),
(192, 5, 'Sơ mi Polin không nhăn dài tay Levis đen', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1501147197_so-mi-khong-nhan-den.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-polin-khong-nhan-dai-tay-levis-den/7', 1),
(193, 5, 'Sơ mi Mango trơn xanh biển nhạt', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498997944_37-mango-xanh-bien-nhat.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mango-tron-xanh-bien-nhat/13', 1),
(194, 5, 'Sơ mi trơn dài tay Mango tím môn nhạt', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1498998093_31-mango-tim-nhat.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-tron-dai-tay-mango-tim-mon-nhat/14', 1),
(195, 5, 'Sơ mi Mango xanh đen dài tay slimfit', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1499521213_17-mang-xanh-den.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mango-xanh-den-dai-tay-slimfit/16', 1),
(196, 5, 'Sơ mi MNG không nhăn poplin tay dày xanh biển', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1499698641_3-so-mi-mango-xanh-da-troi_copy.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-mng-khong-nhan-poplin-tay-day-xanh-bien/16', 1),
(197, 5, 'Sơ mi ít nhăn dài tay xanh nhạt poplin ít nhăn', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1506584595_massimo-dutti-xanh-da-nhat.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-it-nhan-dai-tay-xanh-nhat-poplin-it-nhan/24', 1),
(198, 5, 'Sơ mi dài tay màu xám nhạt vải poplin ít nhăn', 0, '165.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1506584961_massimo-dutti-xam.jpg', '', 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-dai-tay-mau-xam-nhat-vai-poplin-it-nhan/24', 1),
(199, 5, 'Sơ mi 2 túi oxford xanh đen dài tay slimfit', 0, '170.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1512454781_oxford-2-tui-xanh-den.jpg', '', 0, 3, '', '', '', 0, 0, 0, 0, '', '', '', '0', 'so-mi-2-tui-oxford-xanh-den-dai-tay-slimfit/30', 1),
(200, 6, 'Sơ mi dài tay Ab linen caro nhỏ xanh đen', 0, '170.0000', '', 0, 'https://bosiquanaonam.vn/uploads/attach/medium/p1524719598_aber-caro-xanh-den.jpg', '', 1597567081, 0, '', '', '', 0, 0, 0, 0, '  ', '', '', '0', 'so-mi-dai-tay-ab-linen-caro-nho-xanh-den/39', 1),
(201, 6, 'Sơ mi caro Ab TD xanh lá chất xịn', 0, '185.0000', '', 0, 'pay123.png', '', 1597567056, 0, '', '', '', 0, 0, 0, 0, '   ', '', '', '0', 'so-mi-caro-ab-td-xanh-la-chat-xin/41', 1),
(202, 6, 'Sơ mi dài tay Ab linen caro nhỏ xanh ngọc', 0, '170.0000', '', 0, 'onepay.gif', '', 1597566999, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-dai-tay-ab-linen-caro-nho-xanh-ngoc/38', 1),
(203, 6, 'Sơ mi dài tay Ab linen caro nhỏ vàng nhạt', 0, '170.0000', '', 0, 'offline.png', '', 1597566983, 0, '', '', '', 0, 0, 0, 0, '   ', '', '', '0', 'so-mi-dai-tay-ab-linen-caro-nho-vang-nhat/38', 1),
(204, 6, 'Sơ mi nỉ caro dài tay xanh dương kẻ vàng Ab', 0, '175.0000', '', 0, 'ui-icons_222222_256x240.png', '', 1597566837, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-ni-caro-dai-tay-xanh-duong-ke-vang-ab/30', 1),
(205, 6, 'Sơ mi caro dài tay kem kẻ xanh đen Ab Muscle', 0, '170.0000', '', 0, 'baokim.png', '', 1597566928, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-caro-dai-tay-kem-ke-xanh-den-ab-muscle/30', 1),
(206, 6, 'Caro Aber dài tay trắng, xanh dương đậm và nhạt', 0, '170.0000', '', 0, 'banktransfer.png', '', 1597566916, 0, '', '', '', 0, 0, 0, 0, '  ', '', '', '0', 'caro-aber-dai-tay-trang-xanh-duong-dam-va-nhat/2', 1),
(207, 6, 'Sơ mi caro nhí đỏ kẻ tím nhạt Ab slimfit', 0, '170.0000', '', 0, 'xem.png', '', 1597566878, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-caro-nhi-do-ke-tim-nhat-ab-slimfit/35', 1),
(208, 6, 'Sơ mi caro tay dài 2 túi sọc xanh đen kẻ đỏ', 0, '175.0000', '', 0, 'top.png', '', 1597566866, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-caro-tay-dai-2-tui-soc-xanh-den-ke-do/27', 1),
(209, 6, 'Caro dài tay xanh kẻ đỏ đô', 0, '170.0000', '', 0, 'sear.png', '', 1597566849, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'caro-dai-tay-xanh-ke-do-do/3', 1),
(210, 6, 'Caro dài tay Holl xanh, cam, da', 0, '170.0000', '', 0, 'overlay_rich.png', '', 1597566824, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'caro-dai-tay-holl-xanh-cam-da/2', 1),
(211, 6, 'Caro dài tay Hollis xanh ngọc kẻ đỏ', 0, '170.0000', '', 0, 'icon-shipping.png', '', 1597566811, 1, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'caro-dai-tay-hollis-xanh-ngoc-ke-do/3', 1),
(212, 6, 'Caro dài tay trắng, xanh lá và xanh dương', 0, '170.0000', '', 0, 'icon-delivery.png', '', 1597566800, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'caro-dai-tay-trang-xanh-la-va-xanh-duong/2', 1),
(213, 6, 'Sơ mi caro nhí đỏ kẻ tím tía Ab slimfit', 0, '170.0000', '', 0, 'facebook.png', '', 1597566788, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-caro-nhi-do-ke-tim-tia-ab-slimfit/35', 1),
(214, 6, 'Sơ mi caro tay dài 2 túi sọc xanh đen kẻ cam', 0, '175.0000', '', 0, 'logo.jpg', '', 1597566773, 0, '', '', '', 0, 0, 0, 0, ' ', '', '', '0', 'so-mi-caro-tay-dai-2-tui-soc-xanh-den-ke-cam/27', 1),
(215, 6, 'Caro dài tay xanh ngọc, xanh dương kẻ sọc cam nhạt ', 0, '170.0000', '', 0, 'logo.png', '', 1597566747, 12, '', '', '', 0, 0, 0, 0, '     ', '', '', '0', 'caro-dai-tay-xanh-ngoc-xanh-duong-ke-soc-cam-nhat/1', 1),
(216, 6, 'Caro tay dài AB xanh đậm kẻ sọc cam', 0, '170.0000', '', 0, 'pansy-3480-045_31.jpg', '[\"web1.png\"]', 1597566616, 0, '', '', '', 0, 0, 0, 0, '   ', '', '', '0', 'caro-tay-dai-ab-xanh-dam-ke-soc-cam/1', 1),
(217, 6, 'Sơ mi caro 2 túi tay dài xanh đen kẻ đỏ giá sỉ', 0, '175.0000', '<p>\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\"><strong>M&agrave;u sắc</strong>:&nbsp;</span><span style=\"color:#ff0000;\"><span style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">Trắng,Xanh đen</span></span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">T&iacute;nh năng nổi trội:&nbsp;M&agrave;n h&igrave;nh cảm ứng,Wi-Fi,MP3,3G</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">Dung lượng pin:&nbsp;3000mAh</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">Hệ điều h&agrave;nh:&nbsp;Android</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">K&iacute;ch thước m&agrave;n h&igrave;nh:&nbsp;Tr&ecirc;n 5.5&quot;</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">RAM:&nbsp;3Gb</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">Bộ nhớ trong:&nbsp;32GB</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">H&atilde;ng sản xuất:&nbsp;Samsung</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">Loại l&otilde;i chip:&nbsp;T&aacute;m nh&acirc;n - Octa Core</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">T&igrave;nh trạng m&aacute;y:&nbsp;Đ&atilde; qua sử dụng</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">Xuất xứ:&nbsp;H&agrave;ng x&aacute;ch tay</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">Bảo h&agrave;nh:&nbsp;6 Th&aacute;ng</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">Camera : Ch&iacute;nh: 16.0, Phụ: 5.0 MP</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">CPU : Octa-core (2.1 GHz + 1.5 GHz)</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">Kết nối mạng:&nbsp;3g, 4g</span><br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\" />\r\n	<span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif, Arial; font-size: 14px;\">Loại m&agrave;n h&igrave;nh : Super AMOLED M&agrave;u m&agrave;n h&igrave;nh : 16 Triệu m&agrave;u</span></p>\r\n', 0, 'banhdua1.jpg', '[\"banhdua.jpg\"]', 1603644491, 31, '', '', '', 0, 0, 0, 0, '    ', '', '', '0', 'so-mi-caro-2-tui-tay-dai-xanh-den-ke-do-gia-si/22', 1),
(218, 6, 'Sơ mi caro 2 túi dài tay xanh đen kẻ cam bỏ sỉ', 0, '175.0000', '', 0, '14992485319760_700_htc-one-me-1.jpg', '[\"panorama1.png\",\"pansy-3480-045_3.jpg\",\"r-0000-1070820-0013-pano-5.jpg\"]', 1602520187, 44, '', '', '', 0, 0, 0, 0, '  ', '', '', '0', 'so-mi-caro-2-tui-dai-tay-xanh-den-ke-cam-bo-si/22', 1),
(219, 6, 'Sơ mi caro TD Ab xanh dương vải xịn', 0, '185.0000', '', 85, '14992493006090_700_htc-one-e9-2.jpg', '[\"banktransfer.png\"]', 1602520044, 42, '', '', '', 0, 0, 0, 0, '     ', '', '', '0', 'so-mi-caro-td-ab-xanh-duong-vai-xin/41', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `name`, `image_name`, `image_link`, `link`, `info`, `sort_order`) VALUES
(1, 'Slide 1', '', 'banner11.jpg', 'http://dantri.com.vn/', '0', 1),
(2, 'Slide 2', '', 'banner2.jpg', 'http://dantri.com.vn/', '', 2),
(3, 'Slide 3', '', 'banner3.jpg', 'http://dantri.com.vn/', '', 3),
(6, 'slide 4', '', 'banner4.jpg', '', 'slider 4 ', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `support`
--

CREATE TABLE `support` (
  `id` int(255) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `support`
--

INSERT INTO `support` (`id`, `name`, `yahoo`, `gmail`, `skype`, `phone`, `sort_order`) VALUES
(1, 'Hoang van tuyen', 'tuyenht90', 'hoangvantuyencnt@gmail.com', 'tuyencnt90', '01686039488', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `payment` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_info` text COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin NOT NULL,
  `security` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `type`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `amount`, `payment`, `payment_info`, `message`, `security`, `created`) VALUES
(7, 0, 1, 15, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '4000000.0000', 'nganluong', '', '', '', '2018-03-25 22:17:17'),
(8, 0, 0, 15, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '4000000.0000', 'nganluong', '', '', '', '2018-03-25 22:17:17'),
(9, 0, 0, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '10000000.0000', 'nganluong', '', '111', '', '2018-03-25 22:17:17'),
(10, 0, 0, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '10000000.0000', 'nganluong', '', '111111', '', '2018-03-25 22:17:17'),
(11, 0, 2, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '111111', '10000000.0000', 'nganluong', '', '111', '', '2018-03-25 22:17:17'),
(12, 0, 1, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '7667676', '10000000.0000', 'nganluong', '', '', '', '2018-03-25 22:17:17'),
(13, 0, 1, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '11', '20000000.0000', 'nganluong', '', '11', '', '2018-03-25 22:17:17'),
(14, 0, 1, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '10000000.0000', 'nganluong', '', '', '', '2018-03-25 22:17:17'),
(15, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '5000000.0000', 'baokim', '', '', '', '2018-03-25 22:17:17'),
(16, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '5000000.0000', 'baokim', '', '', '', '2018-03-25 22:17:17'),
(17, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '5000000.0000', 'baokim', '', '', '', '2018-03-25 22:17:17'),
(18, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '5000000.0000', 'baokim', '', '', '', '2018-03-25 22:17:17'),
(19, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '5000000.0000', 'baokim', '', '', '', '2018-03-25 22:17:17'),
(20, 0, 0, 19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '5000000.0000', 'baokim', '', '', '', '2018-03-25 22:17:17'),
(21, 0, 0, 0, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '10000000.0000', 'dathang', '', '', '', '2018-03-25 22:17:17'),
(22, 0, 0, 20, 'NGUYỄN NGỌC LUẬT', 'luatnguyen13ck4@gmail.com', '01693779225', '14900000.0000', 'offline', '', 'lê đình cẩn', '', '2018-03-25 22:17:17'),
(23, 0, 0, 20, 'NGUYỄN NGỌC LUẬT', 'luatnguyen13ck4@gmail.com', '01693779225', '5400000.0000', 'offline', '', 'abcd', '', '2018-03-25 22:17:17'),
(24, 0, 0, 0, 'asfdgdfdvsdgsdg', 'aaaa@gmail.com', '123546798', '15300000.0000', 'offline', '', 'asfsdgfdhdweter23534hjgh', '', '0000-00-00 00:00:00'),
(25, 0, 0, 0, 'rrrrrrrrrrrrrrrrr', 'rrrrrrrr@gmail.com', '12346787', '122456.0000', 'baokim', '', 'rrrrrrrrrrrrrr', '', '0000-00-00 00:00:00'),
(26, 0, 0, 0, 'hhhhhhhhhhhh', 'hhhhhh@gmail.com', '124765432', '15300000.0000', 'nganluong', '', 'lkdfgskmdfkw54232lksf', '', '0000-00-00 00:00:00'),
(27, 0, 0, 0, '2345678sdfgh', 'aaaa@gmail.com', '345678', '9500000.0000', 'offline', '', '234567u8i', '', '0000-00-00 00:00:00'),
(28, 0, 0, 0, '111111111111111111', '1111111@gmail.com', '11111111111111111111', '122456.0000', 'offline', '', '11111111111111111', '', '0000-00-00 00:00:00'),
(29, 0, 0, 0, '1', '1', '1', '0.0000', '', '1', '', '', '2018-03-26 14:01:30'),
(30, 0, 0, 0, '', '', '', '0.0000', '', 'ưerwer', '', '', '2018-03-26 14:04:56'),
(31, 0, 0, 0, '22222222222', '44444444444444@gmail.com', '2222222222222', '95000000.0000', 'offline', '', '2222222222', '', '0000-00-00 00:00:00'),
(32, 0, 0, 0, '', '', '', '0.0000', '', 'g', '', '', '2018-03-26 14:25:03'),
(33, 0, 0, 0, '', '', '', '0.0000', '', '', '', '', '2018-03-26 14:32:24'),
(34, 0, 0, 0, 'Huynhthithuy1967', 'hhhhhh@gmail.com', 'hhdsfdsfdf', '9500000.0000', 'offline', '', 'dfdsf23242', '', '2018-03-26 14:36:17'),
(35, 0, 0, 0, 'fffffffff', '44444444444444@gmail.com', '12352534', '3800000.0000', 'offline', '', '3245324534', '', '0000-00-00 00:00:00'),
(36, 0, 0, 0, 'hhhhhhhhhhhh', 'hhhhhh@gmail.com', '55435432', '5500000.0000', 'offline', '', '5234534543435', '', '0000-00-00 00:00:00'),
(37, 0, 0, 0, '', '', '', '0.0000', '', '', '', '', '2018-03-26 15:14:58'),
(38, 0, 0, 0, 'hhhhhhhhhhhh', 'ggg@gmail.com', '11111111111111111111', '5000000.0000', 'offline', '', '111111111111111111111', '', '0000-00-00 00:00:00'),
(39, 0, 0, 0, 'hhhhhhhhhhhh', 'ggg@gmail.com', '12432563475', '9500000.0000', 'offline', '', 'sdfnsdfn98u98f', '', '2018-03-26 15:18:55'),
(40, 0, 0, 0, 'Nguyễn Văn Tiến', 'tien@gmail.com', '1123456789', '20800000.0000', 'offline', '', 'đức lân mộ đức', '', '2018-03-26 16:02:46'),
(41, 0, 0, 21, 'nguyễn ngọc luật', 'ngocluat13ck4@gmail.com', '123456789', '9500000.0000', 'offline', '', 'hhhhhhhhhh', '', '2018-03-26 16:06:53'),
(42, 0, 0, 0, 'Nguyễn Nguyễn Ngọc Luật', 'luatnguyen13ck4@gmail.com', '123456789', '8071576.0000', 'offline', '', '45/33a lê đình cẩn', '', '2018-04-04 16:24:13'),
(43, 0, 0, 0, 'ngọc luật nguyễn', 'ngocluat13ck4@gmail.com', '1234567890', '61022456.0000', 'atcomputer', '', '   45/33 a lê đình cẩn.', '', '2018-04-06 06:45:52'),
(44, 0, 0, 0, 'nguyễn nguyễn ngọc luật luật', 'ngocluat13ck4@gmail.com', '1234567890', '191000000.0000', 'atpostoffice', '', '45/33a lê đình cẩn , p. Tân Tạo , Q.Bình Tân', '', '2018-04-07 14:16:28'),
(45, 0, 0, 0, 'nguyen luat', 'ngocluat13ck4@gmail.com', '1693779225', '5800000.0000', 'atpostoffice', '', '45/33a', '', '2018-04-07 14:45:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  `code` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `password`, `created`, `code`) VALUES
(16, 'Hoàng văn Tuyền', 'tuyenht90@yahoo.com', '01686039488', '111111', '96e79218965eb72c92a549dd5a330112', 1405589118, 0),
(19, 'Hoàng văn Tuyền', 'hoangvantuyencnt@gmail.com', '01686039488', '111', '96e79218965eb72c92a549dd5a330112', 0, 0),
(20, 'NGUYỄN NGỌC LUẬT', 'luatnguyen13ck4@gmail.com', '01693779225', '45/33a Lê Đình Cẩn', 'e10adc3949ba59abbe56e057f20f883e', 1521032813, 0),
(21, 'nguyễn ngọc luật1', 'ngocluat13ck41@gmail.com', '1234567891', '45/33a mã lò', 'fcea920f7412b5da7be0cf42b8c93759', 1522049813, 0),
(23, 'Nguyễn ngọc luật', 'nguyennguyen13ck4@gmail.com', '123456789', 'Mã lò', 'e10adc3949ba59abbe56e057f20f883e', 1522135342, 0),
(24, 'nguyên ngọc', 'nguyennguyenluat13ck4@gmail.com', '123456789', '45/33a lê đình cẩn', 'e10adc3949ba59abbe56e057f20f883e', 1523068789, 0),
(25, 'nguyen luat', 'ngocluatnguyen13ck4@gmail.com', '1693779225', 'dinhtienhoang1', 'e10adc3949ba59abbe56e057f20f883e', 1530073445, 0),
(26, 'nguyenngoc', 'luatnguyen13ck3@gmail.com', '12345678', 'abcde', 'fcea920f7412b5da7be0cf42b8c93759', 1603611819, 0),
(27, 'nguyennguyen', 'ngocluat13ck42@gmail.com', '1693779225', 'tinhlo10', 'e10adc3949ba59abbe56e057f20f883e', 1603818871, 868171),
(28, 'ngocluat', 'ngocluat13ck44@gmail.com', '1693779225', 'tinhlo10', 'e10adc3949ba59abbe56e057f20f883e', 1603819054, 680979),
(29, 'ngocluat', 'ngocluat13cak4@gmail.com', '1693779225', 'tinhlo10', 'e10adc3949ba59abbe56e057f20f883e', 1603819431, 531147),
(30, 'ngocluat', 'ngocluat13dck4@gmail.come', '1693779225', 'tinhlo10', 'e10adc3949ba59abbe56e057f20f883e', 1603819592, 300971),
(31, 'ngocluat', 'ngocluat13csk4@gmail.com', '1693779225', 'tinhlo10', 'e10adc3949ba59abbe56e057f20f883e', 1603819820, 341560),
(32, 'ngocluat', 'ngocluat13ck4@gmail.com', '1693779225', 'tinhlo10', 'e10adc3949ba59abbe56e057f20f883e', 1603820281, 849301),
(33, 'nguyennguyen1', 'ngocluat113ck4@gmail.com', '1693779225', 'tinhlo10', 'e10adc3949ba59abbe56e057f20f883e', 1603902236, 657781),
(34, 'nguyennguyen1', 'ngocluat1143ck4@gmail.com', '1693779225', 'tinhlo10', 'e10adc3949ba59abbe56e057f20f883e', 1603902289, 500123);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(255) NOT NULL,
  `count_view` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `feature` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `view` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `count_view`, `name`, `images`, `intro`, `link`, `feature`, `created`, `view`) VALUES
(10, 0, 'Chuyện Tình Trên Facebook - Hồ Việt Trung [Official]', '1386147113843_video.jpg', '', 'http://www.youtube.com/watch?v=3ZlLyU2L4P0', 1386146497, 2013, 4),
(8, 0, 'Chỉ còn trong mơ & Phải không em', '1386147092891_video.jpg', '', 'http://www.youtube.com/watch?v=RfNJ43HBzOM', 1386146505, 2013, 6),
(7, 0, '[HD] Anh Xin Lỗi - Minh Vương M4U', '1386147058495_video.jpg', '', 'http://www.youtube.com/watch?v=OCZ4D9qT8lI', 1386146502, 2013, 17),
(16, 0, 'Nhốt Em Vào Tim - Hồ Việt Trung [Official]', '1386147135763_video.jpg', '', 'http://www.youtube.com/watch?v=fkDSnN_I_Ig', 0, 1386147135, 0),
(17, 0, 'Chỉ Yêu Mình Em - Châu Khải Phong [Official]', '1386147154302_video.jpg', '', 'http://www.youtube.com/watch?v=l2MydtlKra8', 0, 1386147154, 4),
(18, 0, 'Số Nghèo - Châu Khải Phong [Official]', '138614718279_video.jpg', '', 'http://www.youtube.com/watch?v=LJRvv8U6Dos', 1386147576, 1386147182, 1),
(19, 0, 'Trò Chơi Đắng Cay - Châu Khải Phong [Official]', '138614721063_video.jpg', '', 'http://www.youtube.com/watch?v=3J8d8-YgOlU', 1386147575, 1386147210, 0),
(20, 0, 'Sầu Tím Thiệp Hồng - Quang Lê & Lệ Quyên ( Liveshow Quang Lê )', '1386147271236_video.jpg', '', 'http://www.youtube.com/watch?v=Kd5OrV4Y_bs', 0, 1386147271, 0),
(21, 0, 'Gõ cửa trái tim Quang Lê - Mai Thiên Vân', '1386147292776_video.jpg', '', 'http://www.youtube.com/watch?v=9oVxDQsgXIQ', 1386147577, 1386147292, 0),
(22, 0, 'Cô Hàng Xóm - Quang Lê', '1386147310490_video.jpg', '', 'http://www.youtube.com/watch?v=nA9ub4zlel8', 0, 1386147310, 0),
(23, 0, 'Lam Truong - Mai Mai', '1386147353743_video.jpg', '', 'http://www.youtube.com/watch?v=o1igATj9lMw', 0, 1386147353, 0),
(24, 0, 'Lỡ Yêu Em Rồi - Bằng Kiều', '1386147364632_video.jpg', '', 'http://www.youtube.com/watch?v=HYi-5dM_c34', 0, 1386147364, 0),
(25, 0, 'Bản Tình Cuối - Bằng Kiều', '1386147389790_video.jpg', '', 'http://www.youtube.com/watch?v=pNr7jEQ8LT8', 0, 1386147389, 2),
(26, 1, 'Phút cuối - Bằng Kiều', '1386150063515_video.jpg', '', 'http://www.youtube.com/watch?v=sA_gM6_eqXU', 0, 1386150063, 0),
(27, 0, 'Giấc Mơ (Live) - Bùi Anh Tuấn ft Yanbi', '1386150103768_video.jpg', '', 'http://www.youtube.com/watch?v=XLr463dUNgQ', 0, 1386150103, 0),
(28, 4, 'Anh Nhớ Em - Tuấn Hưng', '1386150121482_video.jpg', '', 'http://www.youtube.com/watch?v=ewNQtt1RiSk', 0, 1386150121, 0),
(29, 0, 'LE QUYEN & TUAN HUNG - Nhu Giac Chiem Bao', '1386150141608_video.jpg', '', 'http://www.youtube.com/watch?v=DaMARvh0kms', 0, 1386150141, 0),
(30, 10, 'Dĩ Vãng Cuộc Tình - Duy Mạnh ft Tuấn Hưng', '140905101897_video.jpg', '', 'http://www.youtube.com/watch?v=g8I-LoBIFgQ', 0, 1409051018, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_group`
--
ALTER TABLE `admin_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `content_static`
--
ALTER TABLE `content_static`
  ADD PRIMARY KEY (`id`,`key`);

--
-- Chỉ mục cho bảng `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `info` ADD FULLTEXT KEY `title` (`title`);

--
-- Chỉ mục cho bảng `infor_web`
--
ALTER TABLE `infor_web`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `maker`
--
ALTER TABLE `maker`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `news` ADD FULLTEXT KEY `title` (`title`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `product` ADD FULLTEXT KEY `name` (`name`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `admin_group`
--
ALTER TABLE `admin_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `content_static`
--
ALTER TABLE `content_static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `infor_web`
--
ALTER TABLE `infor_web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `maker`
--
ALTER TABLE `maker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `support`
--
ALTER TABLE `support`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
