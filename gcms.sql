-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 24, 2018 lúc 11:17 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gcms`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attr`
--

CREATE TABLE `attr` (
  `attr_id` int(11) NOT NULL,
  `attr_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attr_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attr_parent` int(11) UNSIGNED NOT NULL,
  `attr_orderby` int(11) NOT NULL DEFAULT '0',
  `attr_active` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `attr_form` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attr`
--

INSERT INTO `attr` (`attr_id`, `attr_name`, `attr_slug`, `attr_parent`, `attr_orderby`, `attr_active`, `attr_form`) VALUES
(1, 'Khả năng chống nước', 'chong-nuoc', 0, 0, 1, 1),
(2, 'Chất liệu dây đeo', 'day-deo', 0, 0, 1, 2),
(3, 'Dòng máy', 'dong-may', 0, 0, 1, 3),
(4, 'Dòng sản phẩm', 'dong-san-pham', 0, 0, 1, 1),
(5, 'Giới tính', 'gioi-tinh', 0, 0, 1, 2),
(6, 'Chất liệu mặt kính', 'mat-kinh', 0, 0, 1, 2),
(7, 'Chất liệu thân vỏ', 'than-vo', 0, 0, 1, 1),
(8, 'Size mặt', 'size', 0, 0, 1, 3),
(9, '100M', '100m', 1, 0, 1, 0),
(10, 'Dây da', 'day-da', 2, 0, 1, 0),
(11, 'Automatic', 'automatic', 3, 0, 1, 0),
(12, 'Nam', 'nam', 5, 0, 1, 0),
(13, 'Sapphire', 'sapphire', 6, 0, 1, 0),
(14, 'Thép không gỉ 316L', 'thep-khong-gi-316l', 7, 0, 1, 0),
(15, '40MM', '40mm', 8, 0, 1, 0),
(16, '50M', '50m', 1, 0, 1, 0),
(17, '30M', '30m', 1, 0, 1, 0),
(18, 'Dây sắt', 'day-sat', 2, 0, 1, 0),
(19, 'Xuất xứ', 'xuat-xu', 0, 0, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attr_product`
--

CREATE TABLE `attr_product` (
  `attr_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size_mat` int(11) NOT NULL,
  `day_da` int(11) NOT NULL,
  `thuong_hieu` int(11) NOT NULL,
  `nang_luong` int(11) NOT NULL,
  `chong_nuoc` int(11) NOT NULL,
  `chat_lieu` int(11) NOT NULL,
  `gioi_tinh` int(11) NOT NULL,
  `mat_kinh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attr_value`
--

CREATE TABLE `attr_value` (
  `id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `slug` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(255) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_description` text COLLATE utf8_unicode_ci NOT NULL,
  `cate_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cate_parent` int(255) UNSIGNED NOT NULL,
  `cate_orderby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cate_type` int(11) NOT NULL,
  `cate_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_active` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `catetype_id` int(11) NOT NULL,
  `cate_check` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cate_id`, `cate_name`, `cate_slug`, `cate_title`, `cate_description`, `cate_content`, `cate_parent`, `cate_orderby`, `cate_type`, `cate_image`, `cate_banner`, `cate_active`, `catetype_id`, `cate_check`) VALUES
(1, 'Đồng hồ Thụy Sỹ', 'dong-ho-thuy-sy', '', '                                                                                                                                ', '', 0, 1, 1, '', '', 1, 2, 1),
(2, 'Đồng hồ nam', 'dong-ho-nam', '', '                                                                                                ', '', 0, 2, 1, '', '', 1, 2, 0),
(3, 'Đồng hồ nữ', 'dong-ho-nu', '', '                                                                                                ', '', 0, 3, 1, '', '', 1, 2, 0),
(4, 'Đồng hồ Reef Tiger', 'dong-ho-reef-tiger', '', '                                                                                                                                                                                                                                                                ', '<p>2</p>\r\n', 0, 3, 1, '', '', 1, 2, 1),
(5, 'Đồng hồ Wenger', 'dong-ho-wenger', '', '                                                                                                                                                                ', '<p>1</p>\r\n', 1, 1, 1, '', '', 1, 2, 1),
(6, 'Đồng hồ Emile Chouriet', 'dong-ho-emile-chouriet', '', '                                                                                                                                                                ', '', 1, 4, 1, '', '', 1, 2, 0),
(7, 'Đồng hồ đôi', 'dong-ho-doi', '', '                                ', '', 0, 5, 1, '', '', 1, 2, 0),
(8, 'Phụ kiện đồng hồ', 'phu-kien-dong-ho', '', '', '', 0, 6, 1, '', '', 1, 2, 0),
(9, 'Đồng hồ Elixa', 'dong-ho-elixa', '', '                                                                                                                                ', '', 1, 3, 1, '', '', 1, 2, 0),
(10, 'Đồng hồ Orient', 'dong-ho-orient', '', '                                ', '', 0, 3, 1, '', '', 1, 2, 0),
(11, 'Đồng hồ Seiko', 'dong-ho-seiko', '', '                                ', '', 0, 3, 1, '', '', 1, 2, 0),
(12, 'Kiến thức đồng hồ', 'kien-thuc-dong-ho', '', '', '', 0, 0, 2, '', '', 1, 1, 0),
(13, 'Giới thiệu', 'gioi-thieu', '', '', '', 0, 0, 3, '', '', 1, 1, 0),
(14, 'Liên hệ', 'lien-he', '', '                                ', '', 0, 0, 3, '', '', 1, 1, 0),
(15, 'Trung tâm bảo hành', 'trung-tam-bao-hanh', '', '', '', 0, 0, 3, '', '', 1, 1, 0),
(16, 'Đồng hồ Victorinox', 'dong-ho-victorinox', '', '                                                                                                                                ', '', 1, 2, 1, '', '', 1, 2, 0),
(17, 'Đồng hồ Tissot', 'dong-ho-tissot', '', '                                                                ', '', 1, 0, 1, '', '', 1, 2, 0),
(18, 'Đồng hồ Frederique Constant', 'dong-ho-frederique-constant', '', '                                ', '', 1, 0, 1, '', '', 1, 2, 0),
(19, 'Classic Series', 'reef-tiger-classic', '', '                                                                                                                                ', '', 4, 0, 1, '', '', 1, 2, 1),
(20, 'Đồng hồ thể thao', 'dong-ho-the-thao-wenger', '', '                                ', '', 5, 0, 1, '', '', 1, 2, 0),
(21, 'Artisan', 'artisan', '', '', '', 19, 0, 1, '', '', 1, 2, 0),
(22, 'Glory', 'glory', '', '', '', 19, 0, 1, '', '', 1, 2, 0),
(23, 'Heritor', 'heritor', '', '', '', 19, 0, 1, '', '', 1, 2, 0),
(24, 'Artist Series', 'artist-series', '', '', '', 4, 0, 1, '', '', 1, 2, 0),
(25, 'Magician', 'magician', '', '', '', 24, 0, 1, '', '', 1, 2, 0),
(26, 'Aurora Series', 'aurora-series', '', '', '', 4, 0, 1, '', '', 1, 2, 0),
(27, 'Seattle Series', 'seattle-series', '', '                                ', '', 4, 0, 1, '', '', 1, 2, 0),
(28, 'Sport Series', 'sport-series', '', '', '', 4, 0, 1, '', '', 1, 2, 0),
(29, 'Lady Series', 'lady-series', '', '', '', 4, 0, 1, '', '', 1, 2, 0),
(30, 'Love Promise', 'love-promise', '', '', '', 29, 0, 1, '', '', 1, 2, 0),
(31, 'Đồng hồ Casio', 'dong-ho-casio', '', '', '', 0, 10, 1, '', '', 1, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories_type`
--

CREATE TABLE `categories_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories_type`
--

INSERT INTO `categories_type` (`id`, `name`, `cate_id`) VALUES
(1, 'Primary Menu', 0),
(2, 'Left Menu', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `desginer`
--

CREATE TABLE `desginer` (
  `id` int(11) NOT NULL,
  `desginer` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `desginer`
--

INSERT INTO `desginer` (`id`, `desginer`) VALUES
(1, '{\"global_title\":\"\\u0110\\u1ed3ng h\\u1ed3 Th\\u1ee5y S\\u1ef9, \\u0111\\u1ed3ng h\\u1ed3 nam ch\\u00ednh h\\u00e3ng cao c\\u1ea5p\",\"global_description\":\"\\u0110\\u1ed3ng h\\u1ed3 Th\\u1ee5y S\\u1ef9 nam n\\u1eef ch\\u00ednh h\\u00e3ng cao c\\u1ea5p m\\u1eabu m\\u00e3 \\u0111\\u1eb9p, GV Watch nh\\u1eadp kh\\u1ea9u c\\u00e1c th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111\\u1ed3ng h\\u1ed3 Th\\u1ee5y S\\u0129 n\\u1ed5i ti\\u1ebfng v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t nh\\u1ea5t.\",\"global_logo\":\"\\/uploads\\/.thumbs\\/files\\/cau-hinh\\/logo-gv.png\",\"global_favicon\":\"\\/uploads\\/files\\/dong-ho.jpg\",\"contact_name\":\"GV-Watch\",\"contact_description\":\"\\u0110\\u1ed3ng h\\u1ed3 Th\\u1ee5y S\\u1ef9 d\\u00e0nh cho ng\\u01b0\\u1eddi Vi\\u1ec7t\",\"contact_phone\":\"01673746524\",\"contact_hotline\":\"0978432882\",\"contact_hotline2\":\"0978432882\",\"contact_address\":\"2\\/179 V\\u0129nh H\\u01b0ng, Ho\\u00e0ng Mai, H\\u00e0 N\\u1ed9i\",\"contact_address2\":\"2\\/179 V\\u0129nh H\\u01b0ng, Ho\\u00e0ng Mai, H\\u00e0 N\\u1ed9i\",\"contact_email\":\"vungocgiao1510@gmail.com\",\"facebook_script\":\"\",\"google_script\":\"\",\"chat_script\":\"\",\"ok\":\"\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `img_id` int(11) NOT NULL,
  `img_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_description` text COLLATE utf8_unicode_ci NOT NULL,
  `img_avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_orderby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_type` int(11) NOT NULL,
  `img_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`img_id`, `img_title`, `img_link`, `img_description`, `img_avatar`, `img_orderby`, `img_type`, `img_active`) VALUES
(1, 'banner', 'banner', '', '/uploads/files/banner/mud_banner.jpg', '1', 1, 1),
(2, 'banner 2', 'http://vungocgiao.com/gcms/images/add', '', '/uploads/files/banner/20170213-165751-0.jpg', '2', 1, 2),
(3, 'quảng cáo 1', '', '', '/uploads/files/quangcao/a751a7cd8a98ebe5bcb44d0aa68c7388.jpg', '1', 4, 1),
(4, 'quảng cáo 2', '', '', '/uploads/files/quangcao/a322c24c24853b3f7d35863a25e0423b.jpg', '2', 4, 1),
(5, 'quảng cáo 3', '', '', '/uploads/files/quangcao/92f4c36a06ed96e57f2ac6fd669e394e.jpg', '3', 4, 1),
(6, 'quảng cáo 4', 'http://vungocgiao.com/', '', '/uploads/files/quangcao/63580bcbcf052863b50257bf2e9daf12.jpg', '4', 4, 1),
(7, 'thương hiệu', '', '', '/uploads/files/thuonghieu/Bulova.png', '', 3, 1),
(8, 'thương hiệu 1', '', '', '/uploads/files/thuonghieu/Casio.png', '', 3, 1),
(9, 'thương hiệu 2', '', '', '/uploads/files/thuonghieu/Citizen.png', '', 3, 1),
(10, 'thương hiệu 3', '', '', '/uploads/files/thuonghieu/Daniel-Willington.png', '', 3, 1),
(11, 'thương hiệu 4', '', '', '/uploads/files/thuonghieu/Fossil.png', '', 3, 1),
(12, 'thương hiệu 5', '', '', '/uploads/files/thuonghieu/Gshock.png', '', 3, 1),
(13, 'thương hiệu 6', '', '', '/uploads/files/thuonghieu/logo-frederique-constant-big.png', '', 3, 1),
(14, 'thương hiệu 7', '', '', '/uploads/files/thuonghieu/Longines1.png', '', 3, 1),
(15, 'thương hiệu 8', '', '', '/uploads/files/thuonghieu/Orient.png', '', 3, 1),
(16, 'thương hiệu 9', '', '', '/uploads/files/thuonghieu/logo-ogival-big.png', '', 3, 1),
(17, 'thương hiệu 10', '', '', '/uploads/files/thuonghieu/Seiko.png', '', 3, 1),
(18, 'thương hiệu 11', '', '', '/uploads/files/thuonghieu/Tissot1.png', '', 3, 1),
(19, 'Đổi mới trong 7 ngày', '', 'Icon 1', '/uploads/files/Icon/san-pham-da-dang-nhieu-mau-ma-e4qgA6.png', '', 5, 1),
(20, 'Miễn phí vận chuyển', '', '', '/uploads/files/Icon/giao-hang-nhanh-sau-khi-chon-mua-oPe6J2.png', '', 5, 1),
(21, 'Bảo hành 5 năm', '', '', '/uploads/files/Icon/chinh-sach-bao-hanh-dai-han-ak68MH.png', '', 5, 1),
(22, 'Cam kết chính hãng', '', '', '/uploads/files/Icon/chat-luong-cao-gia-thanh-hop-ly-Zh0aqh.png', '', 5, 1),
(23, 'Chất lượng dịch vụ tốt', '', '', '/uploads/files/Icon/giao-hang-nhanh-sau-khi-chon-mua-oPe6J2.png', '', 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `links`
--

CREATE TABLE `links` (
  `link_id` int(11) NOT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_description` text COLLATE utf8_unicode_ci NOT NULL,
  `link_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_orderby` int(11) NOT NULL,
  `link_type` int(11) NOT NULL,
  `link_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `links`
--

INSERT INTO `links` (`link_id`, `link_title`, `link_url`, `link_description`, `link_icon`, `link_image`, `link_orderby`, `link_type`, `link_active`) VALUES
(1, 'Chính sách bảo mật', '', 'Chính sách bảo mật', '1', '', 1, 1, 1),
(2, 'Chính sách mua hàng', '', '', '', '', 0, 1, 1),
(3, 'Chính sách đổi trả', '', '', '', '', 0, 1, 1),
(4, 'Thanh toán qua ngân hàng', '', '', '', '', 0, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `new_id` int(255) NOT NULL,
  `new_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_description` text COLLATE utf8_unicode_ci NOT NULL,
  `new_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `new_titleseo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_descriptionseo` text COLLATE utf8_unicode_ci NOT NULL,
  `new_datetime` datetime NOT NULL,
  `new_updatetime` datetime NOT NULL,
  `new_type` int(11) UNSIGNED NOT NULL,
  `new_active` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `new_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_relationship`
--

CREATE TABLE `news_relationship` (
  `new_id` int(255) UNSIGNED NOT NULL,
  `cate_id` int(255) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(255) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8_unicode_ci NOT NULL,
  `product_info` text COLLATE utf8_unicode_ci NOT NULL,
  `product_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` float NOT NULL,
  `product_promotion` float NOT NULL,
  `datetime` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `product_active` int(11) NOT NULL,
  `product_type` int(11) NOT NULL DEFAULT '0',
  `product_type2` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `attr_id` text COLLATE utf8_unicode_ci,
  `primary_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_slug`, `product_title`, `product_description`, `product_info`, `product_content`, `product_image`, `product_images`, `product_price`, `product_promotion`, `datetime`, `update_time`, `product_active`, `product_type`, `product_type2`, `product_code`, `product_author`, `user_id`, `attr_id`, `primary_id`) VALUES
(1, 'Đồng hồ Reef Tiger RGA8219-PLB', 'dong-ho-reef-tiger-rga8219-plb', '', '', '<p>Mặt đen nổi bật, mạnh mẽ, c&oacute; khung nhỏ theo d&otilde;i lịch ng&agrave;y</p>\r\n\r\n<p>D&acirc;y da sang trọng với đường v&acirc;n khắc họa tinh tế</p>\r\n\r\n<p>Mặt k&iacute;nh sapphire chống trầy xước, độ cứng cao</p>\r\n\r\n<p>Vạch chia giờ c&aacute;ch điệu chi tiết v&agrave; r&otilde; n&eacute;t, dễ quan s&aacute;t</p>\r\n\r\n<p>Khung viền bằng th&eacute;p kh&ocirc;ng gỉ si&ecirc;u bền</p>\r\n\r\n<p>Chống thấm nước hiểu quả, thoải m&aacute;i sinh hoạt hằng ng&agrave;y</p>\r\n', '<p>Đồng hồ Reef Tiger RGA8219-PLB</p>\r\n', '/uploads/.thumbs/files/san-pham/RGA8219-PLL_1.jpg', '/uploads/files/san-pham/RGA8219-PLL_12_3.jpg|/uploads/files/san-pham/RGA8219-PLL_1.jpg|/uploads/files/san-pham/RGA8219-PLL_11_2.jpg|', 6900000, 0, '2018-08-07 09:34:01', '2018-08-11 13:52:04', 1, 1, 1, 'RGA8219-PLB', 'admin', 1, '[\"chong-nuoc\",\"100m\",\"day-deo\",\"day-da\",\"dong-may\",\"automatic\",\"gioi-tinh\",\"nam\",\"mat-kinh\",\"sapphire\",\"than-vo\",\"thep-khong-gi-316l\",\"size\",\"40mm\"]', 21),
(2, 'Đồng hồ Reef Tiger RGA8219-YBB', 'dong-ho-reef-tiger-rga8219-ybb', '', '', '<p>Mặt đen nổi bật, mạnh mẽ, c&oacute; khung nhỏ theo d&otilde;i lịch ng&agrave;y</p>\r\n\r\n<p>D&acirc;y da sang trọng với đường v&acirc;n khắc họa tinh tế</p>\r\n\r\n<p>Mặt k&iacute;nh sapphire chống trầy xước, độ cứng cao</p>\r\n\r\n<p>Vạch chia giờ c&aacute;ch điệu chi tiết v&agrave; r&otilde; n&eacute;t, dễ quan s&aacute;t</p>\r\n\r\n<p>Khung viền bằng th&eacute;p kh&ocirc;ng gỉ si&ecirc;u bền</p>\r\n\r\n<p>Chống thấm nước hiểu quả, thoải m&aacute;i sinh hoạt hằng ng&agrave;y</p>\r\n', '<h1>Đồng hồ Reef Tiger RGA8219-YBB</h1>\r\n', '/uploads/.thumbs/files/san-pham/RGA8219-YBB_11_2048x2048.jpg', '/uploads/files/san-pham/RGA8219-YBB_13_2048x2048.jpg|/uploads/files/san-pham/RGA8219-YBB_12_2048x2048.jpg|/uploads/files/san-pham/RGA8219-YBB_11_2048x2048.jpg|', 6650000, 0, '2018-08-07 11:28:40', '2018-08-11 13:51:51', 1, 1, 1, 'RGA8219-YBB', 'admin', 1, '[\"chong-nuoc\",\"100m\",\"day-deo\",\"day-da\",\"dong-may\",\"automatic\",\"gioi-tinh\",\"nam\",\"mat-kinh\",\"sapphire\",\"than-vo\",\"thep-khong-gi-316l\",\"size\",\"40mm\"]', 21),
(3, 'Đồng hồ Reef Tiger RGA8219-YLB', 'dong-ho-reef-tiger-rga8219-ylb', '', '', '<p>Mặt đen nổi bật, mạnh mẽ, c&oacute; khung nhỏ theo d&otilde;i lịch ng&agrave;y</p>\r\n\r\n<p>D&acirc;y da sang trọng với đường v&acirc;n khắc họa tinh tế</p>\r\n\r\n<p>Mặt k&iacute;nh sapphire chống trầy xước, độ cứng cao</p>\r\n\r\n<p>Vạch chia giờ c&aacute;ch điệu chi tiết v&agrave; r&otilde; n&eacute;t, dễ quan s&aacute;t</p>\r\n\r\n<p>Khung viền bằng th&eacute;p kh&ocirc;ng gỉ si&ecirc;u bền</p>\r\n\r\n<p>Chống thấm nước hiểu quả, thoải m&aacute;i sinh hoạt hằng ng&agrave;y</p>\r\n', '', '/uploads/.thumbs/files/san-pham/RGA8219-YLL_11_2048x2048.jpg', '/uploads/files/san-pham/RGA8219-YLL_11_2048x2048.jpg|/uploads/files/san-pham/RGA8219-YLL_12_2048x2048.jpg|/uploads/files/san-pham/RGA8219-YLL_13_2048x2048.jpg|', 6650000, 0, '2018-08-07 11:38:44', '2018-08-16 15:46:45', 1, 1, 1, 'RGA8219-YLB', 'admin', 1, '[\"chong-nuoc\",\"100m\",\"day-deo\",\"day-da\",\"dong-may\",\"automatic\",\"gioi-tinh\",\"nam\",\"mat-kinh\",\"sapphire\",\"than-vo\",\"thep-khong-gi-316l\",\"size\",\"40mm\"]', 21),
(4, 'Đồng hồ Reef Tiger RGA1563-PWWD', 'dong-ho-reef-tiger-rga1563-pwwd', '', '', '<p>Mặt đen nổi bật, mạnh mẽ, c&oacute; khung nhỏ theo d&otilde;i lịch ng&agrave;y</p>\r\n\r\n<p>D&acirc;y da sang trọng với đường v&acirc;n khắc họa tinh tế</p>\r\n\r\n<p>Mặt k&iacute;nh sapphire chống trầy xước, độ cứng cao</p>\r\n\r\n<p>Vạch chia giờ c&aacute;ch điệu chi tiết v&agrave; r&otilde; n&eacute;t, dễ quan s&aacute;t</p>\r\n\r\n<p>Khung viền bằng th&eacute;p kh&ocirc;ng gỉ si&ecirc;u bền</p>\r\n\r\n<p>Chống thấm nước hiểu quả, thoải m&aacute;i sinh hoạt hằng ng&agrave;y</p>\r\n', '<p>Đồng hồ Reef Tiger RGA1563-PWWD</p>\r\n', '/uploads/.thumbs/files/san-pham/RGA1563-PWWD-4_2048x2048.jpg', '/uploads/files/san-pham/RGA1563-PWWD-4_2048x2048.jpg|/uploads/files/san-pham/RGA1563-PWWD-6_2048x2048.jpg|/uploads/files/san-pham/RGA1563-PWWD-5_2048x2048.jpg|', 3900000, 0, '2018-08-08 14:45:06', '2018-08-11 13:51:31', 1, 1, 1, '', 'admin', 1, '[\"chong-nuoc\",\"30m\",\"day-deo\",\"day-da\",\"mat-kinh\",\"sapphire\",\"than-vo\",\"thep-khong-gi-316l\"]', 30),
(5, 'Đồng hồ Reef Tiger RGA8219-YWB', 'dong-ho-reef-tiger-rga8219-ywb', '', '', '<p>Mặt đen nổi bật, mạnh mẽ, c&oacute; khung nhỏ theo d&otilde;i lịch ng&agrave;y</p>\r\n\r\n<p>D&acirc;y da sang trọng với đường v&acirc;n khắc họa tinh tế</p>\r\n\r\n<p>Mặt k&iacute;nh sapphire chống trầy xước, độ cứng cao</p>\r\n\r\n<p>Vạch chia giờ c&aacute;ch điệu chi tiết v&agrave; r&otilde; n&eacute;t, dễ quan s&aacute;t</p>\r\n\r\n<p>Khung viền bằng th&eacute;p kh&ocirc;ng gỉ si&ecirc;u bền</p>\r\n\r\n<p>Chống thấm nước hiểu quả, thoải m&aacute;i sinh hoạt hằng ng&agrave;y</p>\r\n', '', '/uploads/.thumbs/files/RGA8219-YWB_11_2048x2048.jpg', '/uploads/files/RGA8219-YWB_11_2048x2048.jpg|/uploads/files/RGA8219-YWB_12_2048x2048.jpg|/uploads/files/RGA8219-YWL_11_2048x2048.jpg|/uploads/files/RGA8219-YWS_11_2048x2048.jpg|', 6650000, 0, '2018-08-08 16:34:31', '2018-08-11 13:51:19', 1, 1, 1, 'RGA8219-YWB', 'admin', 1, '[\"chong-nuoc\",\"100m\",\"day-deo\",\"day-da\",\"dong-may\",\"automatic\",\"gioi-tinh\",\"nam\",\"mat-kinh\",\"sapphire\",\"than-vo\",\"thep-khong-gi-316l\",\"size\",\"40mm\"]', 24),
(6, 'Đồng hồ Reef Tiger RGA8219-PBB', 'dong-ho-reef-tiger-rga8219-pbb', '', '', '<p>Mặt đen nổi bật, mạnh mẽ, c&oacute; khung nhỏ theo d&otilde;i lịch ng&agrave;y</p>\r\n\r\n<p>D&acirc;y da sang trọng với đường v&acirc;n khắc họa tinh tế</p>\r\n\r\n<p>Mặt k&iacute;nh sapphire chống trầy xước, độ cứng cao</p>\r\n\r\n<p>Vạch chia giờ c&aacute;ch điệu chi tiết v&agrave; r&otilde; n&eacute;t, dễ quan s&aacute;t</p>\r\n\r\n<p>Khung viền bằng th&eacute;p kh&ocirc;ng gỉ si&ecirc;u bền</p>\r\n\r\n<p>Chống thấm nước hiểu quả, thoải m&aacute;i sinh hoạt hằng ng&agrave;y</p>\r\n', '<p>Được ủy quyền bởi h&atilde;ng sản xuất đồng hồ Reef Tiger, C&ocirc;ng ty TNHH Xuất Nhập khẩu Hải Hiệp &ndash; Nh&agrave; ph&acirc;n phối độc quyền đồng hồ Reef Tiger đ&atilde; ch&iacute;nh hợp t&aacute;c với Boutique Luxury để th&ecirc;m địa chỉ trưng b&agrave;y sản phẩm v&agrave; sửa chữa, bảo h&agrave;nh đồng hồ uy t&iacute;n tại 292 Cầu Giấy, Quan Hoa, Cầu Giấy, H&agrave; Nội nhằm đ&aacute;p ứng nhu cầu của người ti&ecirc;u d&ugrave;ng với ti&ecirc;u ch&iacute; chất lượng, uy t&iacute;n, tận t&acirc;m m&agrave; gi&aacute; cả phải chăng.</p>\r\n\r\n<p>Hệ thống cửa h&agrave;ng trưng b&agrave;y c&aacute;c sản phẩm đồng hồ Reef Tiger v&agrave; l&agrave; hệ thống bảo h&agrave;nh sửa chữa đồng hồ Reef Tiger tại Việt Nam<br />\r\nKh&ocirc;ng chỉ l&agrave; nơi trưng b&agrave;y c&aacute;c mẫu sản phẩm đồng hồ Reef Tiger tại thị trường Việt Nam, Boutique Luxury 292 Cầu Giấy c&ograve;n l&agrave; địa chỉ tin cậy v&agrave; l&agrave; trung t&acirc;m bảo h&agrave;nh sửa chữa đồng hồ Reef Tiger ch&iacute;nh h&atilde;ng, uy t&iacute;n với đội ngũ kỹ thuật d&agrave;y năm kinh nghiệm, chuy&ecirc;n vi&ecirc;n tr&igrave;nh độ cao, được đ&agrave;o tạo b&agrave;i bản h&agrave;ng đầu theo ti&ecirc;u chuẩn Thụy Sỹ, tu nghiệp tại nước ngo&agrave;i. Ngo&agrave;i ra, trung t&acirc;m sửa chữa đồng hồ 292 Cầu Giấy c&ograve;n đ&aacute;p ứng đầy đủ c&aacute;c nhu cầu theo chuẩn quốc tế về độ ho&agrave;n thiện, khắt khe về độ an to&agrave;n của linh kiện, m&aacute;y m&oacute;c v&agrave; trang thiết bị cũng đều được nhập từ Thụy Sỹ tạo l&ecirc;n một thế mạnh v&agrave; uy t&iacute;n trong l&ograve;ng của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Tr&ecirc;n c&ograve;n đường khẳng định bản th&acirc;n thương hiệu mang tầm quốc tế, mạnh mẽ vượt trội về mẫu m&atilde; sản phẩm, gi&aacute; cả sản phẩm, đặc biệt l&agrave; thương hiệu đồng hồ Reef Tiger tại thị trường Việt Nam. C&ocirc;ng ty TNHH Xuất Nhập khẩu Hải Hiệp lu&ocirc;n đặt quyền lợi của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu, tạo dựng n&ecirc;n một yếu tố vững chắc với thương hiệu Boutique Luxury 292 Cầu Giấy uy t&iacute;n tận t&acirc;m, t&acirc;m huyết với nghề, c&oacute; tr&igrave;nh độ tay nghề cao, nhiều năm kinh nghiệm trong ng&agrave;nh sửa chữa đồng hồ, mang lại sự h&agrave;i l&ograve;ng y&ecirc;n t&acirc;m tuyệt đối với kh&aacute;ch h&agrave;ng bảo h&agrave;nh sửa chữa nhiều thương hiệu đồng hồ cao cấp tại đ&acirc;y.</p>\r\n\r\n<p>Trung t&acirc;m đồng hồ ch&iacute;nh h&atilde;ng cao cấp &ndash; Boutique Luxury 292 Cầu Giấy H&agrave; Nội<br />\r\nViệc hợp t&aacute;c ra mắt cửa h&agrave;ng trưng b&agrave;y đồng hồ Reef Tiger v&agrave; hệ thống sửa chữa tại đ&acirc;y, C&ocirc;ng Ty Hải Hiệp khẳng định phong c&aacute;ch, đẳng cấp v&agrave; chất ri&ecirc;ng của m&igrave;nh ở ph&acirc;n kh&uacute;c đồng hồ Reef Tiger ch&iacute;nh h&atilde;ng tại thị trường Việt. Đặc biệt sau sự th&agrave;nh c&ocirc;ng lớn khi thường hiệu Reef Tiger được nhiều người biết đến, tại đ&acirc;y Boutique Luxury 292 Cầu Giấy &ndash; H&agrave; Nội sẽ l&agrave; địa chỉ tin cậy cho những kh&aacute;ch h&agrave;ng y&ecirc;u mến, tin tưởng v&agrave; đồng h&agrave;nh c&ugrave;ng ch&uacute;ng t&ocirc;i với thương hiệu Reef Tiger trong những năm qua giờ đ&acirc;y sẽ c&oacute; th&ecirc;m kh&ocirc;ng gian mua sắm mới tại 292 Cầu Giấy, Quan Hoa, Cầu Giấy, H&agrave; Nội.</p>\r\n\r\n<p>Tự h&agrave;o l&agrave; nh&agrave; ph&acirc;n phối đầu ti&ecirc;n, v&agrave; độc quyền thương hiệu đồng hồ Reef Tiger tại thị trường Việt Nam, ch&uacute;ng t&ocirc;i c&oacute; chương tr&igrave;nh khuyến m&atilde;i cực lớn với 20 kh&aacute;ch h&agrave;ng đầu ti&ecirc;n đến mua sản phẩm đồng hồ Reef Tiger tại 292 Cầu Giấy sẽ được giảm gi&aacute; l&ecirc;n tới 10% gi&aacute; trị sản phẩm, c&aacute;c kh&aacute;ch h&agrave;ng cũ đ&atilde; từng gắn b&oacute; với Hải Hiệp cũng sẽ được thay d&acirc;y đồng hồ miễn ph&iacute;, đ&aacute;nh b&oacute;ng miễn ph&iacute;, thay pin miễn ph&iacute;. Đến với ch&uacute;ng t&ocirc;i, đến với Boutique Luxury 292 Cầu Giấy sẽ nhận được sự ch&acirc;n th&agrave;nh của ch&uacute;ng t&ocirc;i, nhận được sự l&agrave;m việc chuy&ecirc;n nghiệp, giới thiệu, chia sẻ những kiến thức mới nhất về đồng hồ, về sản phẩm đồng hồ Reef Tiger đang l&agrave;m mưa l&agrave;m gi&oacute; tại thị trường Việt Nam.</p>\r\n\r\n<p>Boutique Luxury tại 292 Cầu Giấy &ndash; Trải nghiệm th&acirc;n thiện, hiện đại khi mua sắm<br />\r\nKh&ocirc;ng gian sang trọng đậm chất phong c&aacute;ch Ch&acirc;u &Acirc;u với h&agrave;ng trăm c&aacute;c mẫu đồng hồ trưng b&agrave;y, trong c&oacute; thương hiệu Reef Tiger của ch&uacute;ng t&ocirc;i được đặt trong một kh&ocirc;ng gian chuy&ecirc;n nghiệp v&agrave; đậm phong c&aacute;ch. Kh&ocirc;ng chỉ l&agrave; b&agrave;i tr&iacute; về kiến tr&uacute;c sang trọng m&agrave; c&ograve;n l&agrave; địa chỉ tin cậy, Boutique Luxury 292 Cầu Giấy kh&ocirc;ng chỉ khiến kh&aacute;ch h&agrave;ng h&agrave;i l&ograve;ng về đội ngũ nh&acirc;n vi&ecirc;n, nhiệt t&igrave;nh gi&agrave;u kinh nghiệm, đặc biệt l&agrave; chất lượng sản phẩm ch&iacute;nh h&atilde;ng cao cấp, l&agrave; hệ thống trung t&acirc;m bảo h&agrave;nh đồng hồ Reef Tiger với đội ngũ tay nghề cao, linh kiện, m&aacute;y m&oacute;c chất lượng, &uacute;y t&iacute;n tạo n&ecirc;n thế mạnh, mang lại sự h&agrave;i l&ograve;ng y&ecirc;n t&acirc;m tuyệt đối với kh&aacute;ch h&agrave;ng bảo h&agrave;nh sửa chữa nhiều thương hiệu đồng hồ cao cấp tại đ&acirc;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '/uploads/.thumbs/files/san-pham/RGA8219-PBS_2048x2048.jpg', '/uploads/files/san-pham/RGA8219-PBS_11_2048x2048.jpg|/uploads/files/san-pham/RGA8219-PBS_12_2048x2048.jpg|/uploads/files/san-pham/RGA8219-PBS_2048x2048.jpg|', 6900000, 0, '2018-08-09 10:02:42', '2018-08-11 13:49:26', 1, 1, 1, 'RGA8219-PBB', 'admin', 1, '[\"chong-nuoc\",\"100m\",\"day-deo\",\"day-da\",\"dong-may\",\"automatic\",\"gioi-tinh\",\"nam\",\"mat-kinh\",\"sapphire\",\"than-vo\",\"thep-khong-gi-316l\",\"size\",\"40mm\"]', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `relationship`
--

CREATE TABLE `relationship` (
  `product_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `relationship`
--

INSERT INTO `relationship` (`product_id`, `cate_id`, `attr_id`) VALUES
(6, 2, 0),
(6, 19, 0),
(6, 21, 0),
(5, 2, 0),
(5, 19, 0),
(5, 21, 0),
(4, 3, 0),
(4, 4, 0),
(4, 29, 0),
(4, 30, 0),
(2, 2, 0),
(2, 19, 0),
(2, 21, 0),
(1, 2, 0),
(1, 19, 0),
(1, 21, 0),
(3, 2, 0),
(3, 19, 0),
(3, 21, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo`
--

CREATE TABLE `seo` (
  `seo_id` int(11) NOT NULL,
  `home_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `archive_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `archive_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seo`
--

INSERT INTO `seo` (`seo_id`, `home_title`, `home_description`, `home_image`, `archive_title`, `archive_description`, `post_title`, `post_description`, `product_title`, `product_description`) VALUES
(1, 'Đồng hồ chính hãng Thụy Sỹ cao cấp', 'Đồng hồ chính hãng Thụy Sỹ cao cấp', '/uploads/files/news/6d0cf5058244acecfbfa49e1bf1df529.jpg', '{title} - Đồng hồ Thụy Sỹ chính hãng', 'Thương hiệu đồng hồ thụy sỹ chính hãng', '{title}', '{title}', 'Thương hiệu {title} Thụy Sỹ cao cấp', 'Chuyên phân phối các thương hiệu {title} thụy Sỹ cao cấp giá tốt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `setting_baseurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_baseurl`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) UNSIGNED NOT NULL,
  `datetime` date NOT NULL,
  `active` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `group_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `address`, `level`, `datetime`, `active`, `group_id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', '', 0, '2018-07-08', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_group`
--

CREATE TABLE `users_group` (
  `group_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `permissions` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users_group`
--

INSERT INTO `users_group` (`group_id`, `name`, `level`, `permissions`) VALUES
(1, 'Administrator', 1, '[\"contact\\/index\",\"contact\\/add\",\"contact\\/edit\",\"contact\\/delete\"]'),
(2, 'Quản lý', 1, '[\"permissions\\/index\",\"permissions\\/add\",\"permissions\\/edit\",\"permissions\\/delete\"]'),
(3, 'Hỗ trợ', 1, '[\"users\\/index\",\"users\\/add\",\"users\\/edit\",\"users\\/delete\",\"permissions\\/index\",\"permissions\\/add\",\"permissions\\/edit\",\"permissions\\/delete\",\"categories\\/index\",\"categories\\/add\",\"categories\\/edit\",\"categories\\/delete\",\"news\\/add\",\"news\\/edit\",\"news\\/delete\",\"products\\/add\",\"products\\/edit\",\"products\\/delete\"]');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attr`
--
ALTER TABLE `attr`
  ADD PRIMARY KEY (`attr_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `categories_type`
--
ALTER TABLE `categories_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `desginer`
--
ALTER TABLE `desginer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`img_id`);

--
-- Chỉ mục cho bảng `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`link_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`new_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`seo_id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`group_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attr`
--
ALTER TABLE `attr`
  MODIFY `attr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `categories_type`
--
ALTER TABLE `categories_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `links`
--
ALTER TABLE `links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `new_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `seo`
--
ALTER TABLE `seo`
  MODIFY `seo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users_group`
--
ALTER TABLE `users_group`
  MODIFY `group_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
