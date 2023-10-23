-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2023 lúc 02:25 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `food_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(7, 'admin1', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(53, 1, 3, 'Đồ uống 01', 2, 1, 'drink-1.png'),
(54, 1, 5, 'Tráng miệng 01', 1, 1, 'dessert-1.png'),
(55, 1, 6, 'Pizza 02', 2, 1, 'pizza-2.png'),
(56, 17, 3, 'Đồ uống 01', 2, 1, 'drink-1.png'),
(57, 17, 5, 'Tráng miệng 01', 1, 1, 'dessert-1.png'),
(728, 279, 17, 'Tráng miệng 05', 5, 1, 'dessert-6.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 0, 'nam', 'giadinhchicken18@gmail.com', '09678678', '12344'),
(2, 0, 'QEE', 'mcelwainepros@hotmail.com', '46443', 'ADASDAS'),
(3, 11, 'an', 'an@gmail.com', '675675675', 'hêlloe'),
(4, 5, 'thu', 'thu@gmail.com', '4534534542', 'Tôi muốn hỏi mình có đặt trước sinh nhạt không ạ??'),
(5, 3, 'QA', 'QA@gmail.com', '7697685685', 'Bạn ơi cho mình hỏi vài vấn đề đơn hàng?'),
(6, 18, 'lua', 'lua123@gmail.com', '0938473676', 'Có khuyến mãi gì mới không ạ ?'),
(7, 21, 'trung', 'hotboytt@gmail.com', '037674732', 'Chào bạn..'),
(8, 22, 'loc', 'loc222@gmail.com', '0827348647', 'hi'),
(9, 174, 'trang', 'chang@gmail.com', '0384836483', 'Có deal mới khong shop??'),
(10, 175, 'hoàng', 'hoang@gmail.com', '0928376473', 'Chào shop...'),
(11, 176, 'thế', 'thethe@yahoo.com', '0347346364', 'shop ở tại địa chỉ nào v ạ?'),
(12, 177, 'mai anh', 'maianh@icloud.com', '0374364364', 'chào bạn cho tôi hỏi vài vấn đề?'),
(13, 178, 'thắng', 'thang@gmail.com', '0384387432', 'Không biết shop bạn có gần địa chỉ tôi không?'),
(14, 179, 'hưng', 'hung@yahoo.com', '0983647234', 'Tôi cần shop giúp tôi vài vấn đề!!'),
(15, 180, 'cơ', 'coco@gmail.com', '0384374999', 'Có chương trình mua 1 tặng 1 không ạ?'),
(16, 181, 'dương', 'duongthuy@gmail.com', '0384734873', 'Cho mình xin số hotline.'),
(17, 182, 'hoàng lan', 'lanhoang@gmail.com', '0384834738', 'hi'),
(18, 183, 'joomi', 'joomi@gmail.com', '0937466281', 'HELLO SHOP!'),
(19, 184, 'trân', 'trantran@gmail.com', '0834876336', 'Shop ơi cho mình hỏi xíu.'),
(20, 185, 'vy', 'vyyy@gmail.com', '0843877718', 'Shop ơi.'),
(21, 186, 'đăng', 'hfjbcdh@gmail.com', '0283847384', 'shop à'),
(22, 186, 'đăng', 'hfjbcdh@gmail.com', '0283847384', 'Mình muốn hỏi về vị bánh??'),
(23, 187, 'hoá', 'mmm@gmail.com', '0384736672', 'Shop ơi check tin nhắn em với.'),
(24, 188, 'linh', 'linh@yahoo.com', '0937668826', '=>>>>>'),
(25, 189, 'hiền', 'hien@gmail.com', '0839487348', 'SHopppp'),
(26, 190, 'loan', 'loan@yahoo.com', '0948748737', 'Em muốn hỏi vài món ạ. '),
(27, 191, 'Quý', 'quy@gmail.com', '0938477729', 'Chị ơi '),
(28, 192, 'huyền', 'huyen@yahoo.com', '0947372882', 'Anh ơi'),
(29, 193, 'sương', 'suong@icloud.com', '0958487392', 'hello shop'),
(30, 194, 'hảo', 'hhhh@gmail.com', '0945878738', 'shoppp'),
(31, 195, 'hương', 'huong@ahfkdm.com', '0394756547', 'chị ơi cho em hỏi ??'),
(32, 196, 'mỹ', 'meumeu@yahoo.com', '0394756547', 'Mình muốn đặt theo yêu cầu dc k ạ??'),
(33, 197, 'khoa', 'khoa@yahoo.com', '0938238923', 'hello.'),
(34, 198, 'vân', 'vanhai@civil.com', '0972368731', 'shop'),
(35, 199, 'tùng', 'tungph@yahoo.com', '0482748748', 'anh oi'),
(36, 200, 'lệ', 'lelepham@gmail.com', '0392918919', '????'),
(37, 201, 'xuân', 'xuan@gmail.com', '0394872888', 'shop oi'),
(38, 202, 'sửu', 'suu@yahoo.com', '0239489999', 'shop à'),
(39, 203, 'xoài', 'xoainon@gmail.com', '0384723848', 'Em muốn hỏi ạ'),
(40, 204, 'hồng', 'pink@yahoo.com', '0978787438', 'em hỏi xíu ạ'),
(41, 205, 'phúc', 'phuctr@gmail.com', '0394782348', 'shop ạ'),
(42, 206, 'phượng', 'ph@gmail.com', '0726482643', 'chào shop '),
(43, 215, 'My', 'miee@gmail.com', '0891794777', 'chị ơi'),
(44, 216, 'Oanh', 'oanhoanh@gmail.com', '0924378748', 'Shop ơi cho em hỏi vài thông tin về shop ạ?'),
(45, 217, 'Tuyền', 'tuyen@gmail.com', '0498743883', '??'),
(46, 218, 'Nhung', 'nhungtt@yahoo.com', '0289374838', 'Shop cho em xin tên sdt shipper giao hàng với?'),
(47, 219, 'Kiều', 'kieuu@gmail.com', '0382783477', 'Cho em hỏi đơn hàng của em xem đâu ạ?'),
(48, 220, 'Ý', 'nhuyyy@gmail.com', '0387138893', 'shop oi'),
(49, 221, 'nhã', 'nha@yahoo.com', '0213892882', 'shop ơi'),
(50, 222, 'đạt', 'dat200102@gmail.com', '0934737373', 'Em xin sđt shop với ạ.'),
(51, 223, 'hằng', 'hangg@gmail.com', '0283782799', 'shop oi'),
(52, 224, 'phi', 'phi@yahoo.com', '0846336318', 'shop ơi cho em hỏi xíu'),
(53, 225, 'đào', 'daodao@gmail.com', '0374616664', 'chị oi'),
(54, 226, 'chi', 'chi@yahoo.com', '0239878577', 'em hỏi xíu ạ'),
(55, 228, 'phát', 'phatphat@yahoo.com', '0285777899', 'shop oi'),
(56, 229, 'bùi', 'bui@yahoo.com', '0948289274', 'shop oi'),
(57, 230, 'lương ', 'luong@icloud.com', '0842548757', 'em muốn hỏi shop ạ?\r\n'),
(58, 231, 'súng', 'ssung@gmail.com', '0348375789', 'shop'),
(59, 232, 'lục', 'luc1456@yahoo.com', '0373320999', 'chao shop'),
(60, 233, 'giám', 'giam@yahoo.com', '0483783828', 'chào ạ\r\n'),
(61, 234, 'toàn', 'toanfruit@gmail.com', '0987816486', 'hello'),
(62, 235, 'châu', 'chau@yahoo.com', '0148738473', 'hi'),
(63, 236, 'Đỏ', 'dodo@gmail.com', '0248737377', 'chào shop\r\n'),
(64, 237, 'Nương', 'nuong@yahoo.com', '0839389183', 'hi'),
(65, 238, 'đẳng', 'fhwjfb@gmail.com', '0384934823', 'em hỏi một vài món ạ.'),
(66, 239, 'cầu', 'cauu@gmail.com', '0294299183', 'hi'),
(67, 240, 'sinh', 'sinh1234@yahoo.com', '0923921991', 'địa chỉ mình ở đâu v ạ?'),
(68, 241, 'khải', 'khai@icloud.com', '0294921838', 'shop ơi'),
(69, 242, 'Vương', 'vvv@gmail.com', '0139831849', 'em muốn hỏi ạ?'),
(70, 243, 'thển', 'thenthen@gmail.com', '0129384777', 'hi'),
(71, 244, 'hên', 'henne@yahoo.com', '0387367929', 'chào ạ'),
(72, 245, 'An', 'anan@gmail.com', '0341897999', 'shop ơi em hỏi chút'),
(73, 246, 'còi', 'coi@yahoo.com', '0834791937', 'hi hi hi'),
(74, 247, 'lúa', 'luamoi@yahoo.com', '0288742191', 'shop ơi '),
(75, 255, 'hoa', 'tigon@yahoo.com', '0923719294', 'chào bạn'),
(76, 256, 'được', 'duoc@icloud.com', '0834874919', 'em quên nhận hàng có sao không ạ?'),
(77, 257, 'đạt', 'datk@gmail.com', '0834924934', 'hi'),
(78, 258, 'sương', 'suongng@gmail.com', '0293746578', 'shop ơi em hỏi chút ạ'),
(79, 259, 'Sở', 'so@yahoo.com', '0129348898', 'chào'),
(80, 260, 'Khoai', 'khoai@yahoo.com', '0293748822', 'shop ơi'),
(81, 261, 'thạch', 'thach@yahoo.com', '0238888237', 'em cảm ơn shop ạ.'),
(82, 262, 'hội', 'hooijhihi@gmail.com', '0239482219', 'Món ăn ngon lắm ạ.'),
(83, 263, 'hiến', 'hienn@yahoo.com', '0217467746', 'Pizza thật tuyệt vời.'),
(84, 264, 'vĩnh', 'vinh@icloud.com', '0274173622', 'Matcha đá xay ngon quó.'),
(85, 265, 'chiếu', 'chieuuu@gmail.com', '0395736785', 'Đồ ăn ngon nè.'),
(86, 266, 'tri', 'tri@yahoo.com', '0329498275', 'Bánh thơm xĩu.'),
(87, 267, 'huyền trân', 'htran@gmail.com', '0947362766', 'Đánh giá 10 sao cho sốp.'),
(88, 268, 'lâm', 'lamnguyen@yahoo.com', '0476574678', 'Cho sốp 5 sao.'),
(89, 269, 'hài', 'haihai@gmail.com', '0658476476', '10 điểm shop ơi đồ ăn ngon quá.'),
(90, 270, 'danh', 'danh@icloud.com', '0864654563', 'ngon quạ shop oi'),
(91, 271, 'minh khai', 'minhkhai@gmail.com', '0783662311', '10 điểm'),
(92, 272, 'thông', 'thong@yahoo.com', '0957274673', '10 điểm'),
(93, 274, 'dưa', 'duadua@gmail.com', '0743626611', '10đ shop ơi đồ ăn ngon quá'),
(94, 275, 'khê', 'khe@icloud.com', '0947643773', 'cảm ơn vì món ngon.'),
(95, 276, 'lương huy', 'luonghuy@gmail.com', '0947643773', '10điểm.'),
(96, 288, 'quỳnh quỳnh', 'quynhquynh@yahoo.com', '0965456454', 'cảm ơn vì đơn hàng tuyệt vời.'),
(97, 289, 'trúc mai', 'trucmai@yahoo.com', '0394893587', '10 điểm cho món ăn của shop.'),
(98, 101, 'lam', 'lam@gmail.com', '0387423673', 'cho em hỏi 1 xíu ạ??'),
(99, 286, 'Tuệ', 'tue@gmail.com', '0485968958', 'món ăn ngon quá chị ơi sẽ ủng hộ típ'),
(100, 244, 'hên', 'henne@yahoo.com', '0387367929', 'seo mà món ăn ngon xĩu z bà.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 5, 'thu', '4534534542', 'thu@gmail.com', 'credit card', '12, Lũy bán bich, quận tân phú, TPHCM, phường tân thới hòa, 345345', 'Pizza 01 (2 x 1) - Đồ uống 01 (2 x 4) - Tráng miệng 01 (2 x 1) - ', 12, '2023-10-11', 'completed'),
(3, 16, 'khanh', '03852352', 'khanh@gmail.com', 'cash on delivery', '10, Nguyễn Kiệm, Quận Gò Vấp, TPHCM, Phường 3, 65544', 'Pizza 01 (2 x 1) - Món chính 02 (3 x 1) - Pizza 02 (2 x 1) - ', 7, '2023-10-12', 'completed'),
(4, 16, 'khanh', '03852352', 'khanh@gmail.com', 'credit card', '10, Nguyễn Kiệm, Quận Gò Vấp, TPHCM, Phường 3, 65544', 'Burger 01 (2 x 1) - Tráng miệng 02 (2 x 1) - Đồ uống 02 (1 x 1) - ', 5, '2023-10-12', 'completed'),
(5, 1, 'nam', '7686786786', 'hoainam@gmail.com', 'cash on delivery', '203/19/3, Huỳnh Văn Nghệ, Quận Gò Vấp, TPHCM, Phường 12, 643534', 'Pizza 01 (2 x 1) - Món chính 02 (3 x 2) - Đồ uống 02 (1 x 1) - ', 9, '2023-10-12', 'completed'),
(6, 3, 'QA', '7697685685', 'QA@gmail.com', 'paypal', '39, Lương Thê sVinh, quận tân phú, TPHCM, phường tân thới hòa, 53353', 'Pizza 01 (2 x 2) - Món chính 03 (5 x 1) - đồ uống 03 (2 x 1) - ', 11, '2023-10-12', 'completed'),
(7, 11, 'an', '0324803498', 'an@gmail.com', 'cash on delivery', '324, Nguyễn Kiệm, Quận Gò Vấp, TPHCM, Phường 3, 532523', 'Pizza 01 (2 x 1) - Món chính 02 (3 x 1) - Tráng miệng 01 (2 x 1) - ', 7, '2023-10-12', 'completed'),
(8, 11, 'an', '0324803498', 'an@gmail.com', 'cash on delivery', '324, Nguyễn Kiệm, Quận Gò Vấp, TPHCM, Phường 3, 532523', 'Tráng miệng 01 (2 x 1) - Đồ uống 01 (2 x 1) - Pizza 01 (2 x 1) - ', 6, '2023-10-12', 'completed'),
(9, 10, 'son', '0938492438', 'son@gmail.com', 'credit card', '89, Trường Trinh, quận tân phú, TPHCM, Phường 3, 678568', 'Pizza 01 (2 x 1) - đồ uống 03 (2 x 1) - Đồ uống 02 (1 x 1) - Đồ uống 01 (2 x 1) - ', 7, '2023-10-12', 'completed'),
(10, 10, 'son', '0938492438', 'son@gmail.com', 'paytm', '89, Trường Trinh, quận tân phú, TPHCM, Phường 3, 678568', 'Tráng miệng 02 (2 x 1) - Burger 01 (2 x 1) - món chính 04 (5 x 1) - ', 9, '2023-10-12', 'completed'),
(11, 7, 'men', '9458943', 'men@gmail.com', 'cash on delivery', '43, Nguyễn Thái Sơn, Quận Gò Vấp, TPHCM, Phường 5, 546456', 'Tráng miệng 01 (2 x 1) - ', 2, '2023-10-12', 'completed'),
(13, 8, 'trang', '483503498', 'trang@gmail.com', 'cash on delivery', '55, Huỳnh Văn Nghệ, Quận Gò Vấp, TPHCM, Phường 12, 34234', 'Pizza 02 (2 x 1) - Burger 01 (2 x 1) - Món chính 03 (5 x 1) - Món chính 02 (3 x 1) - Đồ uống 02 (1 x 1) - ', 13, '2023-10-12', 'completed'),
(14, 8, 'trang', '483503498', 'trang@gmail.com', 'paypal', '55, Huỳnh Văn Nghệ, Quận Gò Vấp, TPHCM, Phường 12, 34234', 'Burger 01 (2 x 1) - Đồ uống 02 (1 x 1) - Pizza 02 (2 x 1) - ', 5, '2023-10-12', 'completed'),
(15, 9, 'sang', '6474563563', 'sang@gmail.com', 'credit card', '33, CMT8, Phường 1', 'Pizza 02 (2 x 1) - Tráng miệng 01 (2 x 1) - Đồ uống 02 (1 x 1) - ', 5, '2023-10-12', 'completed'),
(16, 4, 'nhu', '2323421124', 'gopipes229@dixiser.com', 'credit card', '6A, Lương Thê Vinh, quận tân phú, TPHCM, Phường 1, 234124', 'Món chính 02 (3 x 1) - Đồ uống 02 (1 x 1) - Món chính 03 (5 x 1) - ', 9, '2023-10-12', 'completed'),
(17, 1, 'nam', '7686786786', 'hoainam@gmail.com', 'cash on delivery', '203/19/3, Huỳnh Văn Nghệ, Quận Gò Vấp, TPHCM, Phường 12, 643534', 'đồ uống 03 (2 x 2) - Burger 01 (2 x 1) - Pizza 02 (2 x 1) - Đồ uống 02 (1 x 1) - ', 9, '2023-10-12', 'completed'),
(18, 11, 'an', '0324803498', 'an@gmail.com', 'cash on delivery', '324, Nguyễn Kiệm, Quận Gò Vấp, TPHCM, Phường 3, 532523', 'Đồ uống 02 (1 x 1) - Tráng miệng 05 (5 x 1) - Pizza 02 (2 x 1) - ', 8, '2023-10-19', 'completed'),
(19, 18, 'lua', '0938473676', 'lua123@gmail.com', 'paytm', 'nguyễn hữu thọ , quận 7, TPHCM, phường 9, Việt Nam, 29067', 'Đồ uống 01 (2 x 1) - món chính 04 (5 x 1) - ', 7, '2023-10-19', 'completed'),
(20, 19, 'tài', '0845748573', 'tai00@gmail.com', 'credit card', 'N2, tân phú, TPHCM, tây thạnh, Việt Nam', 'Đồ uống 02 (1 x 2) - Burger 02 (3 x 1) - ', 5, '2023-10-19', 'completed'),
(21, 20, 'tân', '0237617647', 'tandeptrai@icloud.com', 'paytm', 'tân thành, tân, hòa thạnh ', 'Tráng miệng 02 (2 x 1) - Món chính 03 (5 x 1) - Pizza 02 (2 x 1) - Đồ uống 02 (1 x 1) - ', 10, '2023-10-19', 'completed'),
(22, 21, 'tung', '037674732', 'hotboytt@gmail.com', 'cash on delivery', 'kênh tân hóa, tân phú, TPHCM, phú thọ hòa, Việt Nam', 'Pizza 02 (2 x 5) - Pizza 03 (2 x 1) - ', 12, '2023-10-19', 'completed'),
(23, 22, 'loc', '0827348647', 'loc222@gmail.com', 'cash on delivery', 'hồng hà, tân bình, TPHCM, Phường 5, Việt Nam', 'Tráng miệng 03 (2 x 1) - ', 2, '2023-10-19', 'completed'),
(24, 23, 'hải', '0873672567', 'nguyenhai@gmail.com', 'cash on delivery', ' 69 Lũy bán bich, quận tân phú, TPHCM, phường tân thới hòa, Việt Nam', 'Burger 01 (4 x 2) - Burger 02 (3 x 1) - đồ uống 03 (2 x 1) - ', 13, '2023-10-19', 'completed'),
(25, 24, 'hong van', '0898543654', 'hongvan@gmail.com', 'paypal', 'lương minh nguyệt, quận tân phú, TPHCM, tân thới hòa, Việt Nam', 'Đồ uống 01 (2 x 2) - ', 4, '2023-10-19', 'completed'),
(26, 25, 'hoàng', '0473856472', 'hailua@gmail.com', 'cash on delivery', '3/2, 10, TPHCM, Phường 1, Việt Nam', 'Món chính 03 (5 x 1) - Đồ uống 04 (1 x 1) - ', 6, '2023-10-19', 'completed'),
(27, 21, 'tung', '037674732', 'hotboytt@gmail.com', 'cash on delivery', 'kênh tân hóa, tân phú, TPHCM, phú thọ hòa, Việt Nam', 'Tráng miệng 02 (2 x 1) - Đồ uống 02 (1 x 1) - ', 3, '2023-10-19', 'completed'),
(28, 25, 'hoàng', '0473856472', 'hailua@gmail.com', 'cash on delivery', '3/2, 10, TPHCM, Phường 1, Việt Nam', 'Pizza 04 (3 x 1) - Pizza 02 (2 x 1) - ', 5, '2023-10-19', 'completed'),
(29, 26, 'tâm', '0387464167', 'tam123@gmail.com', 'credit card', 'lò gốm, tân phú, TPHCM, hiệp tân, Việt Nam', 'Đồ uống 02 (1 x 2) - Món chính 03 (5 x 1) - ', 7, '2023-10-19', 'completed'),
(30, 27, 'lan', '0937614613', 'lanxinkgai123@gmail.com', 'credit card', 'tên lửa, bình tân, TPHCM, p6, Việt Nam', 'đồ uống 03 (2 x 1) - Tráng miệng 03 (2 x 1) - Tráng miệng 05 (5 x 1) - Đồ uống 05 (3 x 1) - ', 12, '2023-10-19', 'completed'),
(31, 28, 'liêm', '0837423254', 'cogai257@gmail.com', 'credit card', 'Trường Chinh, Quận Gò Vấp, TPHCM, Phường 3, Việt Nam', 'Đồ uống 05 (3 x 1) - Tráng miệng 04 (3 x 1) - Burger 02 (3 x 1) - ', 9, '2023-10-19', 'completed'),
(32, 29, 'mai', '0374617341', 'mai@gmail.com', 'cash on delivery', 'Huỳnh Văn Nghệ, Quận Gò Vấp, TPHCM, Phường 1, Việt Nam', 'Tráng miệng 02 (2 x 1) - Tráng miệng 04 (3 x 1) - ', 5, '2023-10-19', 'completed'),
(33, 30, 'nhi', '083743857', 'nhi@yahoo.com', 'paytm', 'Nguyễn Kiệm, Quận Gò Vấp, TPHCM, Phường 12', 'món chính 04 (5 x 1) - Pizza 03 (2 x 1) - Pizza 02 (2 x 1) - ', 9, '2023-10-19', 'completed'),
(34, 31, 'lam', '0384783653', 'lam23605@yahoo.com', 'cash on delivery', 'Lương Thê Vinh, tân phú, TPHCM, hiệp tân', 'Pizza 02 (2 x 1) - Đồ uống 01 (2 x 5) - ', 12, '2023-10-19', 'completed'),
(35, 32, 'mi', '0387725632', 'milun@gmail.com', 'cash on delivery', '235 Lũy bán bich, quận tân phú, TPHCM, phường hiệp tân', 'Đồ uống 02 (1 x 5) - ', 5, '2023-10-19', 'completed'),
(36, 23, 'hải', '0873672567', 'nguyenhai@gmail.com', 'cash on delivery', ' 69 Lũy bán bich, quận tân phú, TPHCM, phường tân thới hòa, Việt Nam', 'Tráng miệng 01 (1 x 2) - Đồ uống 02 (1 x 2) - Đồ uống 01 (2 x 1) - ', 6, '2023-10-19', 'completed'),
(37, 27, 'lan', '0937614613', 'lanxinkgai123@gmail.com', 'credit card', 'tên lửa, bình tân, TPHCM, p6, Việt Nam', 'Món chính 03 (5 x 1) - Món chính 02 (3 x 2) - Đồ uống 05 (3 x 1) - ', 14, '2023-10-19', 'completed'),
(38, 32, 'mi', '0387725632', 'milun@gmail.com', 'cash on delivery', '235 Lũy bán bich, quận tân phú, TPHCM, phường hiệp tân', 'Món chính 03 (6 x 1) - món chính 04 (5 x 1) - Đồ uống 04 (1 x 1) - ', 12, '2023-10-19', 'completed'),
(39, 33, 'cường', '0387438574', 'cuong090822@yahoo.com', 'cash on delivery', 'hoàng văn thụ, tân bình, TPHCM, Phường 12, Việt Nam', 'Tráng miệng 02 (2 x 1) - Đồ uống 02 (1 x 1) - Món chính 03 (6 x 1) - ', 9, '2023-10-19', 'completed'),
(40, 34, 'hòa', '0387567627', 'boycodon123@yahoo.com', 'cash on delivery', 'sư vạn hạnh, 10, TPHCM, p9', 'Tráng miệng 05 (5 x 1) - Tráng miệng 04 (3 x 1) - Đồ uống 05 (3 x 1) - ', 11, '2023-10-19', 'completed'),
(41, 35, 'tiến', '0837366362', 'tiney12@gmail.com', 'cash on delivery', 'bắc bình, bình thạnh, TPHCM, p5', 'Tráng miệng 01 (1 x 2) - Đồ uống 02 (1 x 1) - món chính 04 (5 x 1) - ', 8, '2023-10-19', 'completed'),
(42, 36, 'luật', '0837483264', 'L1232@gmail.com', 'credit card', 'bạch đằng, bình thạnh, TPHCM, p12', 'Pizza 02 (2 x 1) - Burger 01 (4 x 1) - Pizza 01 (3 x 1) - ', 9, '2023-10-19', 'completed'),
(43, 37, 'sang tú', '0946354634', 'sangtu12@yahoo.com', 'credit card', 'bình lợi, bình thạnh, TPHCM, p7', 'đồ uống 03 (2 x 1) - Đồ uống 02 (1 x 1) - Đồ uống 04 (1 x 1) - ', 4, '2023-10-19', 'completed'),
(44, 38, 'hoa', '0836451635', 'maihoa@gmail.com', 'paytm', 'bình quới, bình thạnh, TPHCM, p4', 'Tráng miệng 02 (2 x 1) - Đồ uống 01 (2 x 1) - Pizza 03 (2 x 1) - ', 6, '2023-10-19', 'completed'),
(45, 39, 'thư', '0826352653', 'thutran@gmail.com', 'paytm', 'trần phú, q5, TPHCM, p7', 'Món chính 03 (6 x 5) - ', 30, '2023-10-19', 'completed'),
(46, 40, 'nhâm', '0376131323', 'nhamvo@yahoo.com', 'credit card', 'trần hưng đạo, q5, TPHCM, p5', 'Món chính 02 (4 x 1) - Món chính 03 (6 x 1) - ', 10, '2023-10-19', 'completed'),
(47, 41, 'mỹ', '0847834736', 'mymy@gmail.com', 'paytm', 'tản đà, q5, TPHCM, p9', 'Tráng miệng 01 (1 x 1) - đồ uống 03 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(48, 42, 'phú', '0387487364', 'phuvu123@yahoo.com', 'paytm', 'hong bàng, q5, TPHCM, Phường 1', 'Món chính 02 (4 x 1) - Đồ uống 01 (2 x 1) - Pizza 02 (2 x 1) - ', 8, '2023-10-19', 'completed'),
(49, 42, 'phú', '0387487364', 'phuvu123@yahoo.com', 'cash on delivery', 'hong bàng, q5, TPHCM, Phường 1', 'Tráng miệng 07 (4 x 1) - Tráng miệng 06 (5 x 1) - ', 9, '2023-10-19', 'completed'),
(50, 43, 'phong', '0837486545', 'phong@yahoo.com', 'paytm', 'trần hòa, q5, TPHCM, p8', 'Tráng miệng 06 (5 x 1) - Tráng miệng 04 (3 x 1) - Món chính 03 (6 x 1) - ', 14, '2023-10-19', 'completed'),
(51, 44, 'sùng', '0834734734', 'sung@gmail.com', 'cash on delivery', 'phùng hưng, q5, TPHCM, p6', 'Món chính 05 (4 x 1) - Tráng miệng 08 (3 x 1) - Đồ uống 04 (1 x 1) - ', 8, '2023-10-19', 'completed'),
(52, 45, 'khang', '0937246634', 'khang@gmail.com', 'paytm', 'phú giáo, q5, TPHCM, p3', 'Món chính 03 (6 x 1) - Món chính 05 (4 x 1) - Món chính 02 (4 x 1) - ', 14, '2023-10-19', 'completed'),
(53, 46, 'dũng', '0285747567', 'dung12@yahoo.com', 'paytm', 'nguyễn trãi , q5, TPHCM, p6', 'Đồ uống 02 (1 x 1) - Tráng miệng 07 (4 x 1) - ', 5, '2023-10-19', 'completed'),
(54, 47, 'man', '0387246736', 'man@gmail.com', 'cash on delivery', 'đường số 30, Quận Gò Vấp, TPHCM, p14', 'Tráng miệng 01 (1 x 1) - món chính 04 (5 x 1) - ', 6, '2023-10-19', 'completed'),
(55, 48, 'mừng', '0978767565', 'mung@yahoo.com', 'cash on delivery', 'lê đức thọ, Quận Gò Vấp, TPHCM, p10', 'Tráng miệng 06 (5 x 1) - Tráng miệng 05 (5 x 1) - Tráng miệng 04 (3 x 1) - ', 13, '2023-10-19', 'completed'),
(56, 49, 'minh', '0876576256', 'minh@gmail.com', 'credit card', 'lê lai, Quận Gò Vấp, TPHCM, p6', 'Món chính 03 (6 x 1) - Món chính 02 (4 x 1) - Đồ uống 01 (2 x 1) - Tráng miệng 01 (1 x 1) - ', 13, '2023-10-19', 'completed'),
(57, 50, 'hà', '0278436723', 'ha@gmail.com', 'paytm', 'phạm văn bạch, Quận Gò Vấp, TPHCM, p6', 'Tráng miệng 01 (1 x 1) - Pizza 02 (2 x 1) - món chính 04 (5 x 1) - ', 8, '2023-10-19', 'completed'),
(58, 51, 'niên', '0273843643', 'nien@yahoo.com', 'cash on delivery', 'phạm văn chiêu, Quận Gò Vấp, TPHCM, p4', 'Tráng miệng 02 (2 x 1) - Burger 01 (4 x 1) - Burger 02 (3 x 1) - ', 9, '2023-10-19', 'completed'),
(59, 52, 'min min', '0586859586', 'minmin@gmail.com', 'cash on delivery', 'phan huy ích, Quận Gò Vấp, TPHCM, Phường 12', 'Tráng miệng 01 (1 x 1) - Pizza 02 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(60, 53, 'luong', '0585756466', 'luong@gmail.com', 'cash on delivery', 'phan văn trị, Quận Gò Vấp, TPHCM, Phường 1', 'Tráng miệng 01 (1 x 1) - Tráng miệng 02 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(61, 54, 'vy', '0847465656', 'vyvy@gmail.com', 'cash on delivery', 'Huỳnh Văn Nghệ, Quận Gò Vấp, TPHCM, Phường 1', 'Pizza 02 (2 x 1) - món chính 04 (5 x 1) - ', 7, '2023-10-19', 'completed'),
(62, 55, 'linh', '0846758676', 'linhng@gmail.com', 'paytm', 'tân sơn, Quận Gò Vấp, TPHCM, Phường 1', 'Đồ uống 01 (2 x 1) - ', 2, '2023-10-19', 'completed'),
(63, 56, 'khoi', '0575485576', 'khoip@gmail.com', 'paytm', 'tân thọ, Quận Gò Vấp, TPHCM, p6', 'Tráng miệng 02 (2 x 1) - Tráng miệng 01 (1 x 1) - ', 3, '2023-10-19', 'completed'),
(64, 57, 'hau', '0254656755', 'haun@gmai.com', 'credit card', 'quang trung, Quận Gò Vấp, TPHCM, p6', 'Tráng miệng 01 (1 x 1) - Tráng miệng 04 (3 x 1) - ', 4, '2023-10-19', 'completed'),
(65, 58, 'kien', '0365758565', 'kienng@gmail.com', 'cash on delivery', 'thống nhất, Quận Gò Vấp, TPHCM, Phường 3', 'món chính 04 (5 x 1) - Pizza 03 (2 x 1) - ', 7, '2023-10-19', 'completed'),
(66, 59, 'chung', '0646757757', 'chung@gmail.com', 'credit card', 'lê hồng phong, Quận Gò Vấp, TPHCM, p8', 'Tráng miệng 01 (1 x 1) - Đồ uống 04 (1 x 1) - Pizza 02 (2 x 1) - ', 4, '2023-10-19', 'completed'),
(67, 60, 'huy', '0283782467', 'heo@gmail.com', 'credit card', 'bùi thị xuân, q1, TPHCM, đa kao', 'Món chính 03 (6 x 1) - Tráng miệng 05 (5 x 1) - Tráng miệng 06 (5 x 1) - Tráng miệng 08 (3 x 1) - ', 19, '2023-10-19', 'completed'),
(68, 61, 'nhân', '0384782364', 'nhan@yahoo.com', 'paytm', 'nguyễn huệ, q1, TPHCM, bến nghé', 'Đồ uống 02 (1 x 1) - Pizza 02 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(69, 62, 'trí', '0845726572', 'tringuyen@gmail.com', 'credit card', 'phan liêm, q1, TPHCM, bến nghé', 'Tráng miệng 07 (4 x 1) - Tráng miệng 03 (2 x 1) - ', 6, '2023-10-19', 'completed'),
(70, 63, 'dương', '0827347264', 'duong@gmail.com', 'paypal', 'phan ngữ, q1, TPHCM, p8', 'món chính 04 (5 x 1) - ', 5, '2023-10-19', 'completed'),
(71, 64, 'cúc', '0347163546', 'cuc2@gmail.com', 'paypal', 'phan tôn, q1, TPHCM, p7', 'Tráng miệng 01 (1 x 1) - Pizza 02 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(72, 65, 'hỏa', '0173463746', 'hoa999@gmail.com', 'cash on delivery', 'cô bắc, q1, TPHCM, p7', 'món chính 04 (5 x 1) - Đồ uống 01 (2 x 1) - ', 7, '2023-10-19', 'completed'),
(73, 66, 'su su', '0238473265', 'suusuu@yahoo.com', 'credit card', 'cô giang, q1, TPHCM, p9', 'Tráng miệng 08 (3 x 1) - Món chính 05 (4 x 1) - Tráng miệng 02 (2 x 1) - ', 9, '2023-10-19', 'completed'),
(74, 67, 'tín', '0378461736', 'nguyentin@gmail.com', 'cash on delivery', 'thi sách, q1, TPHCM, Phường 3', 'Đồ uống 02 (1 x 1) - Tráng miệng 01 (1 x 1) - ', 2, '2023-10-19', 'completed'),
(75, 68, 'thi', '0384784617', 'thi@gmail.com', 'credit card', 'trần cao vân, q1, TPHCM, p12', 'Tráng miệng 03 (2 x 1) - ', 2, '2023-10-19', 'completed'),
(76, 69, 'cảnh', '0184783641', 'canhpham@yahoo.com', 'paypal', 'đường số 6, q2, TPHCM, p3', 'Burger 01 (4 x 1) - Tráng miệng 04 (3 x 1) - ', 7, '2023-10-19', 'completed'),
(77, 70, 'đăng', '0127361631', 'dangngng@gmail.com', 'credit card', 'đường số 24, q2, TPHCM, p15', 'Pizza 02 (2 x 1) - Pizza 03 (2 x 1) - Pizza 04 (3 x 1) - Pizza 01 (3 x 1) - ', 10, '2023-10-19', 'completed'),
(78, 71, 'thanh', '0923654345', 'ttt@gmail.com', 'credit card', 'đường số 61, q2, TPHCM, p4', 'món chính 04 (5 x 1) - Đồ uống 02 (1 x 1) - ', 6, '2023-10-19', 'completed'),
(79, 72, 'kim', '0138771674', 'kim@yahoo.com', 'cash on delivery', 'đướng số 19, q2, TPHCM, Phường 12', 'Đồ uống 01 (2 x 4) - ', 8, '2023-10-19', 'completed'),
(80, 73, 'quang', '0384782736', 'quang@gmail.com', 'cash on delivery', 'đường số 22, q2, TPHCM, Phường 1', 'Pizza 02 (2 x 1) - Tráng miệng 02 (2 x 1) - ', 4, '2023-10-19', 'completed'),
(81, 74, 'nga', '0148374823', 'nga@gmail.com', 'cash on delivery', 'nguyễn tuyền, q2, TPHCM, p3', 'đồ uống 03 (2 x 1) - Đồ uống 04 (1 x 1) - Món chính 03 (6 x 1) - ', 9, '2023-10-19', 'completed'),
(82, 75, 'công', '0973463754', 'cong@gmail.com', 'cash on delivery', 'đường số 7, q2, TPHCM, p8', 'Tráng miệng 03 (2 x 1) - Tráng miệng 08 (3 x 4) - ', 14, '2023-10-19', 'completed'),
(83, 76, 'hương', '0973651263', 'huong@gmail.com', 'credit card', 'quốc hương, q2, TPHCM, p9', 'Pizza 02 (2 x 2) - ', 4, '2023-10-19', 'completed'),
(84, 77, 'việt', '0878767667', 'viet@gmail.com', 'cash on delivery', 'đào trí, q7, TPHCM, p9', 'Pizza 02 (2 x 1) - Đồ uống 01 (2 x 1) - ', 4, '2023-10-19', 'completed'),
(85, 78, 'nghị', '0948575557', 'nghi@gmail.com', 'credit card', 'tân mỹ, q7, TPHCM, p7', 'đồ uống 03 (2 x 1) - Tráng miệng 05 (5 x 1) - ', 7, '2023-10-19', 'completed'),
(86, 79, 'phương', '0947626352', 'phuongtruc@yahoo.com', 'credit card', 'tân phú, 7, 4', 'Đồ uống 01 (2 x 1) - món chính 04 (5 x 1) - ', 7, '2023-10-19', 'completed'),
(87, 80, 'thuận', '0485762463', 'thuan@gmail.com', 'cash on delivery', 'hậu giang, q6, TPHCM, p6', 'Đồ uống 04 (1 x 1) - Burger 01 (4 x 1) - Burger 02 (3 x 1) - Món chính 03 (6 x 1) - ', 14, '2023-10-19', 'completed'),
(88, 81, 'trang', '0947564426', 'ttt@yahoo.com', 'cash on delivery', 'bà hom, q6, TPHCM, p9', 'Pizza 01 (3 x 1) - đồ uống 03 (2 x 1) - Đồ uống 05 (3 x 1) - ', 8, '2023-10-19', 'completed'),
(89, 82, 'kì', '0937463654', 'ki@yahoo.com', 'cash on delivery', 'nguyễn văn luông, q6, TPHCM, p8', 'Pizza 02 (2 x 1) - đồ uống 03 (2 x 1) - ', 4, '2023-10-19', 'completed'),
(90, 83, 'nhỏ', '0374657578', 'nho@gmail.com', 'credit card', 'bà lài, q6, TPHCM, Phường 1', 'Tráng miệng 01 (1 x 1) - Pizza 02 (2 x 1) - ', 3, '2023-10-19', ''),
(91, 84, 'lài', '0264674875', 'lai@gmail.com', 'paytm', ' số 32, q6, TPHCM, Phường 1', 'Tráng miệng 01 (1 x 1) - Pizza 02 (2 x 1) - Đồ uống 01 (2 x 1) - ', 5, '2023-10-19', 'completed'),
(92, 85, 'TUẤN', '0385686867', 'tuan@gmail.com', 'cash on delivery', 'đường số 23, Q6, TPHCM, p1', 'Tráng miệng 01 (1 x 1) - Pizza 02 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(93, 86, 'hương', '037465886', 'huongwph@gmail.com', 'credit card', 'Bình Phú, Q6, TPHCM, p12', 'Đồ uống 01 (2 x 1) - Tráng miệng 02 (2 x 1) - Đồ uống 02 (1 x 1) - ', 5, '2023-10-19', 'completed'),
(94, 87, 'ngân', '0365856563', 'nganth@gmail.com', 'paytm', 'Bình Tây, Q6, TPHCM, p5', 'Tráng miệng 01 (1 x 1) - Đồ uống 04 (1 x 1) - Pizza 02 (2 x 1) - ', 4, '2023-10-19', 'completed'),
(95, 88, 'trân', '0385658596', 'tranph@gmail.com', 'cash on delivery', 'Trang Tử, Q5, TPHCM, p11', 'Tráng miệng 01 (1 x 1) - Tráng miệng 02 (2 x 1) - Pizza 03 (2 x 1) - ', 5, '2023-10-19', 'completed'),
(96, 89, 'Tân', '0374657585', 'tanphn@gmail.com', 'paytm', 'Kỳ Hoà, Q5, TPHCM, p3', 'Tráng miệng 01 (1 x 1) - Tráng miệng 02 (2 x 1) - Đồ uống 01 (2 x 1) - ', 5, '2023-10-19', 'completed'),
(97, 90, 'trí', '0475876564', 'tridang@gmail.com', 'credit card', 'Tân Thành, Q5, TPHCM, p5', 'Đồ uống 01 (2 x 1) - Tráng miệng 08 (3 x 1) - Món chính 05 (4 x 1) - ', 9, '2023-10-19', 'completed'),
(98, 91, 'thanh', '0378464756', 'thanhng@gmail.com', 'paytm', 'Hưng Long, Q5, TPHCM, p11', 'Tráng miệng 01 (1 x 1) - Đồ uống 04 (1 x 1) - đồ uống 03 (2 x 1) - ', 4, '2023-10-19', 'completed'),
(99, 92, 'nhi', '0475967685', 'nhihnhu@gmail.com', 'paytm', 'Huỳnh Mẫn Đạt, Q5, p1', 'Tráng miệng 01 (1 x 1) - món chính 04 (5 x 1) - ', 6, '2023-10-19', 'completed'),
(100, 93, 'thư', '0485894867', 'thungng@gmail.com', 'paytm', 'cao thắng, q3, TPHCM, p11', 'Tráng miệng 01 (1 x 1) - Đồ uống 01 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(101, 94, 'anh', '0384756586', 'tranh@gmail.com', 'credit card', 'Kỳ Đồng, q3, TPHCM, p1', 'Tráng miệng 01 (1 x 1) - Tráng miệng 02 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(102, 95, 'dũng', '0397587645', 'dungnhg@gmail.com', 'credit card', 'Nguyễn Thông, q3, TPHCM, p13', 'Pizza 02 (2 x 1) - Tráng miệng 01 (1 x 1) - ', 3, '2023-10-19', 'completed'),
(103, 87, 'ngân', '0365856563', 'nganth@gmail.com', 'credit card', 'Bình Tây, Q6, TPHCM, p5', 'Tráng miệng 01 (1 x 1) - Pizza 02 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(104, 85, 'TUẤN', '0385686867', 'tuan@gmail.com', 'credit card', 'đường số 23, Q6, TPHCM, p1', 'Tráng miệng 01 (1 x 1) - Pizza 02 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(105, 88, 'trân', '0385658596', 'tranph@gmail.com', 'credit card', 'Trang Tử, Q5, TPHCM, p11', 'Tráng miệng 01 (1 x 1) - Tráng miệng 02 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(106, 90, 'trí', '0475876564', 'tridang@gmail.com', 'credit card', 'Tân Thành, Q5, TPHCM, p5', 'Tráng miệng 02 (2 x 1) - Pizza 02 (2 x 1) - ', 4, '2023-10-19', 'completed'),
(107, 89, 'Tân', '0374657585', 'tanphn@gmail.com', 'paytm', 'Kỳ Hoà, Q5, TPHCM, p3', 'Tráng miệng 01 (1 x 1) - Tráng miệng 02 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(108, 87, 'ngân', '0365856563', 'nganth@gmail.com', 'credit card', 'Bình Tây, Q6, TPHCM, p5', 'Tráng miệng 01 (1 x 1) - Tráng miệng 02 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(109, 89, 'Tân', '0374657585', 'tanphn@gmail.com', 'paytm', 'Kỳ Hoà, Q5, TPHCM, p3', 'Đồ uống 04 (1 x 1) - Đồ uống 02 (1 x 1) - ', 2, '2023-10-19', 'completed'),
(110, 96, 'quỳnh', '0389574566', 'quynhg@gmail.com', 'paytm', 'Huỳnh Mẫn Đạt, Q5, TPHCM, p3', 'Tráng miệng 01 (1 x 1) - món chính 04 (5 x 1) - ', 6, '2023-10-19', 'completed'),
(111, 97, 'nhân', '0975657333', 'nhan@gmail.com', 'paytm', 'Thành Thái, q10, TPHCM, p1', 'Đồ uống 02 (1 x 1) - Tráng miệng 01 (1 x 1) - ', 2, '2023-10-19', 'completed'),
(112, 98, 'đạt', '0936485986', 'datng123@gmail.com', 'credit card', '3/2, q10, TPHCM, p5', 'Tráng miệng 01 (1 x 1) - Đồ uống 04 (1 x 1) - ', 2, '2023-10-19', 'completed'),
(113, 99, 'hùng', '0847584796', 'hung1@gmail.com', 'paytm', 'Sư Vạn Hạnh, q10, TPHCM, p10', 'Tráng miệng 01 (1 x 1) - Tráng miệng 02 (2 x 1) - Pizza 02 (2 x 1) - ', 5, '2023-10-19', 'completed'),
(114, 100, 'trúc', '0937585955', 'trucph123@gmail.com', 'credit card', 'Thành Thái, q10, TPHCM, p13', 'Tráng miệng 01 (1 x 1) - Pizza 02 (2 x 1) - ', 3, '2023-10-19', 'completed'),
(115, 101, 'lam', '0387423673', 'lam@gmail.com', 'paytm', 'tôn đản, q5, TPHCM, p8', 'Pizza 03 (2 x 1) - Đồ uống 04 (1 x 1) - Tráng miệng 03 (2 x 1) - ', 5, '2023-10-20', 'completed'),
(116, 102, 'Tường', '0827466237', 'tuongtuong@gmail.com', 'cash on delivery', 'tân hoà đông, q6, TPHCM, p5', 'Tráng miệng 08 (3 x 2) - Tráng miệng 01 (1 x 1) - ', 7, '2023-10-20', 'completed'),
(117, 103, 'nghĩa', '0374627564', 'nghia123@gmail.com', 'paytm', '6 bà hom, q6, TPHCM, p7', 'Tráng miệng 04 (3 x 1) - Đồ uống 05 (3 x 2) - ', 9, '2023-10-20', 'completed'),
(118, 104, 'phước', '0348347237', 'phuoc@yahoo.com', 'cash on delivery', '23 hồng bàng, q5, TPHCM, p12', 'Đồ uống 04 (1 x 1) - món chính 04 (5 x 1) - ', 6, '2023-10-20', 'completed'),
(119, 105, 'minh', '0384737466', 'minhne@gmail.com', 'paypal', 'hàn hải nguyên, q5, TPHCM, p4', 'Món chính 03 (6 x 1) - ', 6, '2023-10-20', 'completed'),
(120, 106, 'phan', '0374346434', 'phan@gmail.com', 'credit card', 'hồ tùng mậu, q5, TPHCM, p3', 'Tráng miệng 04 (3 x 1) - ', 3, '2023-10-20', 'completed'),
(121, 107, 'trường', '0974363463', 'ttruong@gmail.com', 'paytm', '91 cô giang, q1, TPHCM, p7', 'Pizza 02 (2 x 1) - ', 2, '2023-10-20', 'completed'),
(122, 108, 'tín', '0384737467', 'tin@yahoo.com', 'cash on delivery', 'tôn thất hiệp, q10, p6', 'Burger 01 (4 x 1) - Burger 02 (3 x 1) - ', 7, '2023-10-20', 'completed'),
(123, 109, 'sơn', '0975764766', 'son@icloud.com', 'cash on delivery', 'hoà bình, q tân phú, TPHCM, p hiệp tân', 'Tráng miệng 06 (5 x 5) - ', 25, '2023-10-20', 'completed'),
(124, 110, 'thảo mai', '0347675744', 'maithao@icloud.com', 'cash on delivery', ' 11 hàn hải nguyên, q5, TPHCM, p8', 'Tráng miệng 07 (4 x 1) - Đồ uống 02 (1 x 1) - Tráng miệng 02 (2 x 1) - ', 7, '2023-10-20', ''),
(125, 111, 'ngọc đặng', '0975635355', 'nd@gmail.com', 'paytm', '23 tân hoà đông, q6, TPHCM, p9', 'Pizza 01 (3 x 1) - Món chính 05 (4 x 1) - ', 7, '2023-10-20', 'completed'),
(126, 112, 'thành chung', '0486466663', 'chungtt@icloud.com', 'paytm', 'tên lửa, q bình tân, TPHCM, p12', 'Đồ uống 05 (3 x 1) - Pizza 04 (3 x 1) - Tráng miệng 08 (3 x 1) - Tráng miệng 01 (1 x 1) - Pizza 02 (2 x 1) - ', 12, '2023-10-20', 'completed'),
(127, 113, 'ngọc', '0962244444', 'ngocngoc@icloud.com', 'paytm', 'bạch đằng, q1, TPHCM, p10', 'Đồ uống 02 (1 x 1) - Tráng miệng 08 (3 x 1) - Pizza 02 (2 x 1) - ', 6, '2023-10-20', 'completed'),
(128, 114, 'tú ', '0495748847', 'tunene@gmail.com', 'cash on delivery', 'trần hưng đạo, q5, TPHCM, p7', 'đồ uống 03 (2 x 1) - Burger 02 (3 x 1) - ', 5, '2023-10-20', 'completed'),
(129, 115, 'đức', '0994646646', 'duc123@gmail.com', 'cash on delivery', 'trương phước phan, q3, TPHCM, p3', 'món chính 04 (5 x 1) - Tráng miệng 06 (5 x 1) - ', 10, '2023-10-20', 'completed'),
(130, 116, 'tài', '0967254344', 'taitrinh@yahoo.com', 'cash on delivery', 'bình trị đông, q bình tân, TPHCM, bình trị đông a', 'Tráng miệng 02 (2 x 1) - Đồ uống 01 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(131, 117, 'hữu', '0947646666', 'huu@gmail.com', 'paytm', 'bùi văn ba, q7, TPHCM, p12', 'Tráng miệng 05 (5 x 1) - Burger 02 (3 x 1) - ', 8, '2023-10-20', 'completed'),
(132, 119, 'bửu', '0976732877', 'buu@yahoo.com', 'cash on delivery', 'gò ô môi, q7, TPHCM, phú mỹ', 'Đồ uống 04 (1 x 1) - đồ uống 03 (2 x 1) - Đồ uống 02 (1 x 1) - ', 4, '2023-10-20', 'completed'),
(133, 120, 'tứ', '0946555555', 'tuss@gmail.com', 'cash on delivery', 'phạm thiều, q7, TPHCM, p tân phú', 'Tráng miệng 01 (1 x 1) - món chính 04 (5 x 1) - ', 6, '2023-10-20', 'completed'),
(134, 121, 'cáp', '0847364734', 'capcap@gmail.com', 'credit card', 'tân mỹ, q7, TPHCM, p tân mỹ', 'Pizza 01 (3 x 1) - Đồ uống 04 (1 x 1) - ', 4, '2023-10-20', 'completed'),
(135, 122, 'út', '0948625262', 'ut@yahoo.com', 'cash on delivery', 'phú thuận, q7, TPHCM, p9', 'Tráng miệng 04 (3 x 1) - Tráng miệng 05 (5 x 1) - Tráng miệng 03 (2 x 1) - ', 10, '2023-10-20', 'completed'),
(136, 123, 'phùng', '0398483463', 'phung@gmail.com', 'cash on delivery', 'tân trào, q7, TPHCM, p tân mỹ', 'Đồ uống 01 (2 x 1) - Tráng miệng 01 (1 x 1) - ', 3, '2023-10-20', 'completed'),
(137, 124, 'thanh', '0945846376', 'thanhthanh@icloud.com', 'paypal', 'tân thuận, q7, TPHCM, p tân mỹ', 'Tráng miệng 01 (1 x 1) - Pizza 02 (2 x 1) - ', 3, '2023-10-20', 'completed'),
(138, 104, 'phước', '0348347237', 'phuoc@yahoo.com', 'cash on delivery', '23 hồng bàng, q5, TPHCM, p12', 'đồ uống 03 (2 x 1) - món chính 04 (5 x 1) - ', 7, '2023-10-20', 'completed'),
(139, 101, 'lam', '0387423673', 'lam@gmail.com', 'cash on delivery', 'tôn đản, q5, TPHCM, p8', 'Tráng miệng 01 (1 x 1) - Tráng miệng 02 (2 x 1) - ', 3, '2023-10-20', 'completed'),
(140, 102, 'Tường', '0827466237', 'tuongtuong@gmail.com', 'cash on delivery', 'tân hoà đông, q6, TPHCM, p5', 'Tráng miệng 02 (2 x 1) - Đồ uống 04 (1 x 1) - ', 3, '2023-10-20', ''),
(141, 103, 'nghĩa', '0374627564', 'nghia123@gmail.com', 'paypal', '6 bà hom, q6, TPHCM, p7', 'Tráng miệng 06 (5 x 1) - Món chính 03 (6 x 1) - ', 11, '2023-10-20', 'completed'),
(142, 121, 'cáp', '0847364734', 'capcap@gmail.com', 'cash on delivery', 'tân mỹ, q7, TPHCM, p tân mỹ', 'Pizza 05 (4 x 1) - Pizza 03 (2 x 1) - Pizza 02 (2 x 1) - ', 8, '2023-10-20', 'completed'),
(143, 115, 'đức', '0994646646', 'duc123@gmail.com', 'credit card', 'trương phước phan, q3, TPHCM, p3', 'Đồ uống 05 (3 x 1) - Đồ uống 01 (2 x 1) - ', 5, '2023-10-20', 'completed'),
(144, 112, 'thành chung', '0486466663', 'chungtt@icloud.com', 'paytm', 'tên lửa, q bình tân, TPHCM, p12', 'Burger 02 (3 x 1) - Món chính 02 (4 x 1) - ', 7, '2023-10-20', 'completed'),
(145, 126, 'lộc', '0873476636', 'loclll@gmail.com', 'cash on delivery', 'nguyễn thị thập, q7, TPHCM, p phú mỹ', 'Tráng miệng 03 (2 x 1) - Tráng miệng 01 (1 x 1) - ', 3, '2023-10-20', 'completed'),
(146, 127, 'nga', '0384636466', 'nga@yahoo.com', 'cash on delivery', 'phạm văn nghị, q7, TPHCM, tân phong', 'Đồ uống 04 (1 x 1) - Tráng miệng 04 (3 x 1) - ', 4, '2023-10-20', 'completed'),
(147, 128, 'mỹ', '0348777777', 'toilamy@yahoo.com', 'paytm', 'huỳnh tấn phát, q7, TPHCM, tân kiểng', 'Tráng miệng 08 (3 x 1) - Món chính 05 (4 x 1) - Tráng miệng 01 (1 x 1) - ', 8, '2023-10-20', 'completed'),
(148, 129, 'sách', '0238766633', 'sach@yahoo.com', 'credit card', 'bà lài, 6, TPHCM, p11', 'Burger 02 (3 x 1) - Pizza 02 (2 x 1) - ', 5, '2023-10-20', 'completed'),
(149, 130, 'kỳ', '0384746782', 'kyky@icloud.com', 'credit card', 'bãi sậy, q6, TPHCM, p6', 'đồ uống 03 (2 x 1) - Pizza 01 (3 x 1) - ', 5, '2023-10-20', 'completed'),
(150, 131, 'luông', '0837678822', 'vanluong@yahoo.com', 'cash on delivery', 'bến phú lâm, q6, TPHCM, p tân hoà đông', 'Đồ uống 04 (1 x 10) - ', 10, '2023-10-20', 'completed'),
(151, 132, 'su su', '0863292997', 'susu@icloud.com', 'paytm', 'đường số 2, q6, TPHCM, p3', 'Burger 01 (4 x 1) - Món chính 03 (6 x 1) - ', 10, '2023-10-20', 'completed'),
(152, 133, 'lài', '0283699999', 'lailai@gmail.com', 'cash on delivery', '26 bà hom, q6, TPHCM, p tân hoà đông', 'Tráng miệng 02 (2 x 1) - đồ uống 03 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(153, 134, 'hoa', '0287675444', 'meme@icloud.com', 'paytm', 'đường số 22, q6, TPHCM, p9', 'Tráng miệng 03 (2 x 5) - Pizza 02 (2 x 1) - ', 12, '2023-10-20', 'completed'),
(154, 135, 'tình', '0286278888', 'boycodon@gmail.com', 'credit card', 'nguyễn thị nhỏ, q6, TPHCM, p6', 'Đồ uống 05 (3 x 1) - Tráng miệng 07 (4 x 1) - ', 7, '2023-10-20', 'completed'),
(155, 136, 'sung', '0384678833', 'samsung@gmail.com', 'cash on delivery', 'phạm phú thứ, q6, TPHCM, p7', 'Tráng miệng 01 (1 x 1) - Đồ uống 01 (2 x 1) - Đồ uống 02 (1 x 1) - Đồ uống 04 (1 x 1) - đồ uống 03 (2 x 1) - ', 7, '2023-10-20', 'completed'),
(156, 137, 'sam', '0286782888', 'samdangiu@yahoo.com', 'credit card', 'đường số 23, q6, TPHCM, p8', 'Tráng miệng 02 (2 x 1) - Tráng miệng 04 (3 x 1) - Tráng miệng 08 (3 x 1) - ', 8, '2023-10-20', 'completed'),
(157, 138, 'Trai', '0873588992', 'traitrai@gmail.com', 'paytm', 'đường số 24, q6, TPHCM, p1', 'Pizza 01 (3 x 1) - Pizza 02 (2 x 1) - Tráng miệng 08 (3 x 1) - Món chính 05 (4 x 1) - ', 12, '2023-10-20', 'completed'),
(158, 139, 'Mật', '0733535672', 'matmat@yahoo.com', 'paytm', 'bình tây, q6, TPHCM, p2', 'đồ uống 03 (2 x 1) - Tráng miệng 01 (1 x 1) - ', 3, '2023-10-20', 'completed'),
(159, 140, 'tòn', '0278292663', 'tonton@yahoo.com', 'credit card', 'bình tiên, q6, p8', 'Đồ uống 05 (3 x 1) - Đồ uống 01 (2 x 1) - đồ uống 03 (2 x 1) - ', 7, '2023-10-20', 'completed'),
(160, 141, 'hà', '0397829999', 'ahah@gmail.com', 'paytm', 'ba đình, q8, TPHCM, p4', 'Pizza 03 (2 x 1) - Tráng miệng 05 (5 x 1) - ', 7, '2023-10-20', 'completed'),
(161, 142, 'tới', '0925357722', 'toi@gmail.com', 'credit card', 'ba tơ, q8, TPHCM, p8', 'Tráng miệng 02 (2 x 1) - Đồ uống 02 (1 x 1) - ', 3, '2023-10-20', 'completed'),
(162, 143, 'ngự', '0835272655', 'ngu@yahoo.com', 'cash on delivery', 'đường số 5, q8, TPHCM, p8', 'Pizza 02 (2 x 1) - Tráng miệng 02 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(163, 144, 'đăng', '0836389992', 'danf@yahoo.com', 'cash on delivery', 'nguyễn tri phương, q8, TPHCM, p2', 'món chính 04 (5 x 1) - Đồ uống 04 (1 x 1) - ', 6, '2023-10-20', 'completed'),
(164, 145, 'hảo', '0963627882', 'haohao@yahoo.com', 'cash on delivery', '2 hồ tùng mậu, q1, TPHCM, p3', 'món chính 04 (5 x 1) - Món chính 03 (6 x 1) - Món chính 02 (4 x 1) - Món chính 05 (4 x 1) - ', 19, '2023-10-20', 'completed'),
(165, 146, 'mậu', '0374622222', 'mau@icloud.com', 'cash on delivery', 'an tài, q8, TPHCM, p9', 'Đồ uống 04 (1 x 1) - Đồ uống 02 (1 x 1) - ', 2, '2023-10-20', 'completed'),
(166, 147, 'phố', '0283628288', 'pho@gmail.com', 'cash on delivery', 'đường số 8, q8, TPHCM, p7', 'món chính 04 (5 x 1) - ', 5, '2023-10-20', 'completed'),
(167, 148, 'điền', '0283628282', 'diendien@yahoo.com', 'paytm', 'đường số 5, q8, TPHCM, p12', 'Đồ uống 02 (1 x 1) - Đồ uống 04 (1 x 1) - ', 2, '2023-10-20', 'completed'),
(168, 149, 'cừ', '0934737672', 'xiaa@gmail.com', 'credit card', 'nguyễn văn linh, q8, TPHCM, p1', 'Đồ uống 05 (3 x 1) - Burger 01 (4 x 2) - ', 11, '2023-10-20', 'completed'),
(169, 150, 'sinh', '0973736688', 'sinhhhh@yahoo.com', 'credit card', 'tạ quang bửu, q8, TPHCM, p6', 'Tráng miệng 07 (4 x 5) - ', 20, '2023-10-20', 'completed'),
(170, 151, 'Việt', '0834627222', 'viet@icloud.com', 'paytm', 'dương bá trạc , q8, TPHCM, p4', 'Tráng miệng 08 (3 x 5) - ', 15, '2023-10-20', 'completed'),
(171, 152, 'dũng bùi', '0923764783', 'buidung@gmail.com', 'paytm', 'phú định, q8, TPHCM, p3', 'Pizza 01 (3 x 1) - Pizza 04 (3 x 1) - ', 6, '2023-10-20', 'completed'),
(172, 153, 'sỹ', '0937473882', 'sy@yahoo.com', 'cash on delivery', 'bình thới, q11, TPHCM, p9', 'Tráng miệng 02 (2 x 1) - Đồ uống 01 (2 x 1) - Tráng miệng 01 (1 x 1) - ', 5, '2023-10-20', 'completed'),
(173, 154, 'Phương Ny', '0936272889', 'nyny@yahoo.com', 'cash on delivery', 'lạc long quân, q11, TPHCM, p5', 'Đồ uống 06 (5 x 1) - Tráng miệng 01 (1 x 1) - ', 6, '2023-10-20', 'completed'),
(174, 155, 'nghi', '0924628991', 'nghi@icloud.com', 'cash on delivery', 'minh phụng, q11, TPHCM, p2', 'Burger 02 (3 x 1) - Đồ uống 06 (5 x 1) - ', 8, '2023-10-20', 'completed'),
(175, 156, 'võ huy', '0924629292', 'huyvo@icloud.com', 'paytm', 'hồng bàng, q11, TPHCM, p1', 'Tráng miệng 02 (2 x 1) - Tráng miệng 07 (4 x 1) - Đồ uống 01 (2 x 1) - ', 8, '2023-10-20', 'completed'),
(176, 157, 'bói', '0283823827', 'boiboi@icloud.com', 'credit card', 'lãnh binh thăng, q11, TPHCM, p13', 'món chính 04 (5 x 1) - Đồ uống 02 (1 x 1) - ', 6, '2023-10-20', 'completed'),
(177, 158, 'yến', '0927732991', 'yen@yahoo.com', 'cash on delivery', 'lý thường kiệt , q11, TPHCM, p15', 'Pizza 01 (3 x 1) - Pizza 04 (3 x 1) - ', 6, '2023-10-20', 'completed'),
(178, 159, 'son', '0837872187', 'sss@yahoo.com', 'credit card', 'ông ích khiêm , q11, TPHCM, p5', 'đồ uống 03 (2 x 1) - Đồ uống 05 (3 x 1) - ', 5, '2023-10-20', 'completed'),
(179, 160, 'lục', '0824728261', 'luc@gmail.com', 'cash on delivery', 'đường 3/2, q11, TPHCM, p16', 'Pizza 02 (2 x 1) - Pizza 03 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(180, 161, 'tòng', '0383522882', 'tong@icloud.com', 'cash on delivery', 'tạ uyên, q11, TPHCM, p4', 'Tráng miệng 06 (5 x 1) - Tráng miệng 08 (3 x 1) - Tráng miệng 03 (2 x 1) - ', 10, '2023-10-20', 'completed'),
(181, 162, 'chi', '0926718823', 'chi124@yahoo.com', 'credit card', 'lê đại hành, q11, TPHCM, p6', 'món chính 04 (5 x 1) - ', 5, '2023-10-20', 'completed'),
(182, 163, 'lãm', '0824761746', 'lam159@gmail.com', 'cash on delivery', 'gò xoài, q bình tân, TPHCM, p2', 'Burger 02 (3 x 1) - Đồ uống 06 (5 x 1) - ', 8, '2023-10-20', 'completed'),
(183, 164, 'quỳnh', '0927328288', 'quynh@icloud.com', 'cash on delivery', 'hồ ngọc lãm, q bình tân, TPHCM, p9', 'Đồ uống 04 (1 x 1) - Đồ uống 06 (5 x 2) - Tráng miệng 02 (2 x 1) - đồ uống 03 (2 x 1) - ', 15, '2023-10-20', 'completed'),
(184, 165, 'mãi', '0863562763', 'maimai@icloud.com', 'cash on delivery', 'hồ văn long, q bình tân, TPHCM, p7', 'Món chính 03 (6 x 1) - Món chính 05 (4 x 1) - ', 10, '2023-10-20', 'completed'),
(185, 166, 'long', '0932737218', 'long@gmail.com', 'credit card', 'hoàng hưng, q bình tân, TPHCM, p1', 'Món chính 03 (6 x 1) - Món chính 05 (4 x 1) - ', 10, '2023-10-20', 'completed'),
(186, 167, 'Duật', '0273862328', 'duat@yahoo.com', 'paypal', 'đường số 4, q bình tân, TPHCM, p6', 'Tráng miệng 02 (2 x 1) - Tráng miệng 01 (1 x 1) - ', 3, '2023-10-20', 'completed'),
(187, 168, 'bình', '0283626728', 'binh@gmail.com', 'cash on delivery', 'hát giang, q tân bình, TPHCM, p4', 'Tráng miệng 07 (4 x 1) - Đồ uống 06 (5 x 1) - ', 9, '2023-10-20', 'completed'),
(188, 169, 'Hàn', '0927674627', 'han@yahoo.com', 'paypal', '5 tân hoà đông, q bình tân, TPHCM, p3', 'đồ uống 03 (2 x 1) - Pizza 02 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(189, 170, 'rocky', '0973637378', 'rocky@gmail.com', 'cash on delivery', 'hồ đắc di, q tân bình, TPHCM, p3', 'Đồ uống 06 (5 x 1) - Đồ uống 02 (1 x 1) - ', 6, '2023-10-20', 'completed'),
(190, 171, 'giang', '0946232837', 'giang@yahoo.com', 'paytm', 'hiệp nhất, q tân bình, TPHCM, p9', 'Tráng miệng 01 (1 x 1) - Pizza 02 (2 x 1) - ', 3, '2023-10-20', 'completed'),
(191, 172, 'như', '0948787882', 'ayday@gmail.com', 'paytm', 'nguyễn sỹ sách, q tân bình, TPHCM, p6', 'món chính 04 (5 x 1) - Tráng miệng 01 (1 x 1) - ', 6, '2023-10-20', 'completed'),
(192, 98, 'đạt', '0936485986', 'datng123@gmail.com', 'cash on delivery', '3/2, q10, TPHCM, p5', 'Đồ uống 06 (5 x 1) - ', 5, '2023-10-20', 'completed'),
(193, 99, 'hùng', '0847584796', 'hung1@gmail.com', 'credit card', 'Sư Vạn Hạnh, q10, TPHCM, p10', 'đồ uống 03 (2 x 1) - Tráng miệng 04 (3 x 1) - ', 5, '2023-10-20', 'completed'),
(194, 103, 'nghĩa', '0374627564', 'nghia123@gmail.com', 'paytm', '6 bà hom, q6, TPHCM, p7', 'Tráng miệng 03 (2 x 1) - Tráng miệng 02 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(195, 102, 'Tường', '0827466237', 'tuongtuong@gmail.com', 'credit card', 'tân hoà đông, q6, TPHCM, p5', 'Món chính 03 (6 x 1) - Đồ uống 06 (5 x 1) - ', 11, '2023-10-20', 'completed'),
(196, 92, 'nhi', '0475967685', 'nhihnhu@gmail.com', 'paytm', 'Huỳnh Mẫn Đạt, Q5, p1', 'món chính 04 (5 x 1) - Đồ uống 04 (1 x 1) - ', 6, '2023-10-20', 'completed'),
(197, 88, 'trân', '0385658596', 'tranph@gmail.com', 'credit card', 'Trang Tử, Q5, TPHCM, p11', 'Món chính 05 (4 x 1) - Pizza 02 (2 x 1) - ', 6, '2023-10-20', 'completed'),
(198, 10, 'son', '0938492438', 'son@gmail.com', 'cash on delivery', '89, Trường Trinh, quận tân phú, TPHCM, Phường 3, 678568', 'Tráng miệng 01 (4 x 1) - Đồ uống 02 (2 x 1) - ', 6, '2023-10-20', 'completed'),
(199, 11, 'an', '0324803498', 'an@gmail.com', 'paytm', '324, Nguyễn Kiệm, Quận Gò Vấp, TPHCM, Phường 3, 532523', 'món chính 04 (5 x 1) - ', 5, '2023-10-20', 'completed'),
(200, 8, 'trang', '483503498', 'trang@gmail.com', 'paytm', '55, Huỳnh Văn Nghệ, Quận Gò Vấp, TPHCM, Phường 12, 34234', 'Tráng miệng 01 (4 x 1) - ', 4, '2023-10-20', 'completed'),
(201, 4, 'nhu', '2323421124', 'gopipes229@dixiser.com', 'cash on delivery', '6A, Lương Thê Vinh, quận tân phú, TPHCM, Phường 1, 234124', 'Đồ uống 06 (5 x 1) - ', 5, '2023-10-20', 'completed'),
(202, 19, 'tài', '0845748573', 'tai00@gmail.com', 'cash on delivery', 'N2, tân phú, TPHCM, tây thạnh, Việt Nam', 'Pizza 02 (2 x 1) - Tráng miệng 02 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(203, 3, 'QA', '7697685685', 'QA@gmail.com', 'paytm', '39, Lương Thê sVinh, quận tân phú, TPHCM, phường tân thới hòa, 53353', 'Đồ uống 02 (2 x 1) - Đồ uống 01 (3 x 1) - ', 5, '2023-10-20', 'completed'),
(204, 18, 'lua', '0938473676', 'lua123@gmail.com', 'paytm', 'nguyễn hữu thọ , quận 7, TPHCM, phường 9, Việt Nam, 29067', 'Đồ uống 02 (2 x 1) - Burger 01 (4 x 1) - ', 6, '2023-10-20', 'completed'),
(205, 21, 'tung', '037674732', 'hotboytt@gmail.com', 'cash on delivery', 'kênh tân hóa, tân phú, TPHCM, phú thọ hòa, Việt Nam', 'Đồ uống 04 (1 x 1) - Pizza 04 (3 x 1) - ', 4, '2023-10-20', 'completed'),
(206, 22, 'loc', '0827348647', 'loc222@gmail.com', 'credit card', 'hồng hà, tân bình, TPHCM, Phường 5, Việt Nam', 'đồ uống 03 (2 x 1) - Đồ uống 05 (3 x 1) - ', 5, '2023-10-20', 'completed'),
(207, 173, 'Tường', '0384736638', 'tuong@icloud.com', 'credit card', 'nguyễn thái bình, q tân bình, TPHCM, p9', 'Pizza 02 (2 x 1) - món chính 04 (5 x 1) - Pizza 03 (2 x 1) - ', 9, '2023-10-20', ''),
(208, 174, 'trang', '0384836483', 'chang@gmail.com', 'credit card', 'bình giã, q tân bình, TPHCM, p2', 'Đồ uống 01 (3 x 1) - món chính 04 (5 x 1) - ', 8, '2023-10-20', 'completed'),
(209, 175, 'hoàng', '0928376473', 'hoang@gmail.com', 'cash on delivery', 'bến cát, q tân bình, TPHCM, p1', 'Pizza 01 (3 x 1) - Đồ uống 05 (3 x 1) - ', 6, '2023-10-20', 'completed'),
(210, 176, 'thế', '0347346364', 'thethe@yahoo.com', 'paypal', 'âu cơ, q tân phú, TPHCM, p phú thọ hoà', 'Tráng miệng 02 (2 x 1) - Đồ uống 06 (5 x 1) - Pizza 02 (2 x 1) - ', 9, '2023-10-20', 'completed'),
(211, 177, 'mai anh', '0374364364', 'maianh@icloud.com', 'credit card', 'bình long, q tân phú, TPHCM, p bình hưng hoà', 'đồ uống 03 (2 x 1) - Tráng miệng 03 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(212, 178, 'thắng', '0384387432', 'thang@gmail.com', 'paypal', 'bờ bao tân thắng, q tân phú, TPHCM, p phú thọ hoà', 'Pizza 02 (2 x 1) - Tráng miệng 05 (5 x 1) - ', 7, '2023-10-20', 'completed'),
(213, 179, 'hưng', '0983647234', 'hung@yahoo.com', 'credit card', 'đường d12, q tân phú, TPHCM, p phú thọ hoà', 'Đồ uống 04 (1 x 1) - Tráng miệng 04 (3 x 1) - ', 4, '2023-10-20', 'completed'),
(214, 180, 'cơ', '0384374999', 'coco@gmail.com', 'cash on delivery', '213 tân hoà đông, q6, TPHCM, p1', 'Đồ uống 05 (3 x 1) - Tráng miệng 08 (3 x 1) - ', 6, '2023-10-20', 'completed'),
(215, 181, 'dương', '0384734873', 'duongthuy@gmail.com', 'paypal', '9 tôn đản, q5, TPHCM, p2', 'Pizza 04 (3 x 1) - Tráng miệng 05 (5 x 1) - ', 8, '2023-10-20', 'completed'),
(216, 182, 'hoàng lan', '0384834738', 'lanhoang@gmail.com', 'cash on delivery', '20/1/4 đường số 5, q bình tân, TPHCM, p6', 'Đồ uống 01 (3 x 1) - Pizza 02 (2 x 1) - ', 5, '2023-10-20', 'completed'),
(217, 183, 'joomi', '0937466281', 'joomi@gmail.com', 'credit card', '80 hàn hải nguyên, q11, TPHCM, p8', 'đồ uống 03 (2 x 1) - Đồ uống 01 (3 x 1) - ', 5, '2023-10-20', 'completed'),
(218, 184, 'trân', '0834876336', 'trantran@gmail.com', 'cash on delivery', 'thạch lam, q tân phú, TPHCM, p8', 'Đồ uống 01 (3 x 1) - món chính 04 (5 x 1) - Tráng miệng 01 (4 x 1) - ', 12, '2023-10-20', 'completed'),
(219, 185, 'vy', '0843877718', 'vyyy@gmail.com', 'paytm', '43 hàn hải nguyên, q5, TPHCM, p7', 'Tráng miệng 03 (2 x 1) - Burger 02 (3 x 1) - Burger 01 (4 x 1) - ', 9, '2023-10-20', 'completed'),
(220, 186, 'đăng', '0283847384', 'hfjbcdh@gmail.com', 'cash on delivery', 'nguyễn thị thập, q1, TPHCM, p11', 'Pizza 01 (3 x 1) - Burger 02 (3 x 1) - ', 6, '2023-10-20', 'completed'),
(221, 187, 'hoá', '0384736672', 'mmm@gmail.com', 'credit card', '2 trương phước phan, q8, TPHCM, p3', 'Món chính 03 (6 x 1) - Tráng miệng 06 (5 x 1) - ', 11, '2023-10-20', 'completed'),
(222, 188, 'linh', '0937668826', 'linh@yahoo.com', 'cash on delivery', '43/1 nguyễn thị nhỏ, q11, TPHCM, p9', 'Tráng miệng 04 (3 x 1) - Đồ uống 06 (5 x 1) - ', 8, '2023-10-20', 'completed'),
(223, 189, 'hiền', '0839487348', 'hien@gmail.com', 'cash on delivery', '23 nguyễn sỹ sách, q7, TPHCM, p5', 'Món chính 02 (4 x 1) - Tráng miệng 08 (3 x 1) - Tráng miệng 07 (4 x 1) - ', 11, '2023-10-20', 'completed'),
(224, 190, 'loan', '0948748737', 'loan@yahoo.com', 'paytm', '25/6 tân thuận, q7, TPHCM, p14', 'Tráng miệng 08 (3 x 1) - Món chính 05 (4 x 1) - Đồ uống 06 (5 x 1) - ', 12, '2023-10-20', 'completed'),
(225, 191, 'Quý', '0938477729', 'quy@gmail.com', 'cash on delivery', '89 bà hom, q6, TPHCM, p tân hoà đông', 'Tráng miệng 02 (2 x 1) - Tráng miệng 03 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(226, 192, 'huyền', '0947372882', 'huyen@yahoo.com', 'paytm', 'an dương vương, q5, TPHCM, p4', 'Tráng miệng 05 (5 x 1) - ', 5, '2023-10-20', 'completed'),
(227, 194, 'hảo', '0945878738', 'hhhh@gmail.com', 'cash on delivery', 'đường số 10, q bình tân, TPHCM, p5', 'Món chính 03 (6 x 2) - Đồ uống 02 (2 x 1) - Đồ uống 01 (3 x 1) - ', 17, '2023-10-20', 'completed'),
(228, 195, 'hương', '0394756547', 'huong@ahfkdm.com', 'credit card', '4/16/3 tôn thất hiệp, q11, TPHCM, p11', 'Pizza 02 (2 x 1) - Pizza 03 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(229, 196, 'mỹ', '0934736222', 'meumeu@yahoo.com', 'cash on delivery', 'đường số 12, q bình tân, TPHCM, p3', 'Đồ uống 04 (1 x 1) - đồ uống 03 (2 x 1) - ', 3, '2023-10-20', ''),
(230, 197, 'khoa', '0938238923', 'khoa@yahoo.com', 'cash on delivery', '98 phạm thiều, q7, TPHCM, p4', 'Đồ uống 01 (3 x 1) - ', 3, '2023-10-20', 'completed'),
(231, 198, 'vân', '0972368731', 'vanhai@civil.com', 'paytm', '89 tân hoà đông, q6, TPHCM, p11', 'Tráng miệng 01 (4 x 1) - Pizza 02 (2 x 1) - ', 6, '2023-10-20', 'completed'),
(232, 199, 'tùng', '0482748748', 'tungph@yahoo.com', 'paytm', '20 hoà bình, q tân phú, TPHCM, p hiệp tân', 'Pizza 01 (3 x 1) - Tráng miệng 04 (3 x 1) - ', 6, '2023-10-20', 'completed'),
(233, 200, 'lệ', '0392918919', 'lelepham@gmail.com', 'credit card', '90 nguyễn văn linh, q7, TPHCM, p8', 'món chính 04 (5 x 1) - Đồ uống 06 (5 x 1) - Tráng miệng 07 (4 x 1) - ', 14, '2023-10-20', 'completed'),
(234, 201, 'xuân', '0394872888', 'xuan@gmail.com', 'credit card', '89 đường số 5, q5, TPHCM, p15', 'Tráng miệng 05 (5 x 1) - Tráng miệng 06 (5 x 1) - ', 10, '2023-10-20', 'completed'),
(235, 202, 'sửu', '0239489999', 'suu@yahoo.com', 'paytm', '3 nguyễn tri phương, q5, TPHCM, p4', 'món chính 04 (5 x 1) - ', 5, '2023-10-20', 'completed'),
(236, 203, 'xoài', '0384723848', 'xoainon@gmail.com', 'credit card', '2 gò xoài, q bình tân, TPHCM, p9', 'Tráng miệng 04 (3 x 1) - Đồ uống 05 (3 x 1) - ', 6, '2023-10-20', 'completed'),
(237, 204, 'hồng', '0978787438', 'pink@yahoo.com', 'cash on delivery', 'bà hạc, q6, TPHCM, p3', 'Tráng miệng 02 (2 x 1) - món chính 04 (5 x 1) - ', 7, '2023-10-20', 'completed'),
(238, 205, 'phúc', '0394782348', 'phuctr@gmail.com', 'credit card', 'tân kì tân quý, q tân phú, TPHCM, p hiệp tân', 'Đồ uống 01 (3 x 2) - ', 6, '2023-10-20', 'completed'),
(239, 206, 'phượng', '0726482643', 'ph@gmail.com', 'cash on delivery', '89/34 tôn đản, q8, TPHCM, p6', 'Đồ uống 02 (2 x 1) - Đồ uống 04 (1 x 1) - ', 3, '2023-10-20', 'completed'),
(240, 207, 'xuan', '0846587567', 'xuanng@gmail.com', 'cash on delivery', 'Thạnh Lộc, q12, TPHCM, p4', 'Đồ uống 01 (3 x 1) - Đồ uống 02 (2 x 1) - ', 5, '2023-10-20', 'completed'),
(241, 208, 'Nhân', '0876464748', 'nhanp@gmail.com', 'credit card', 'Đỗ Hành, q12, TPHCM, p7', 'Tráng miệng 02 (2 x 1) - Pizza 02 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(242, 209, 'Thanh', '0638339397', 'thanhtr@gmail.com', 'paytm', 'Long Thuận, q9, TPHCM, p6', 'Tráng miệng 02 (2 x 1) - Tráng miệng 01 (4 x 1) - ', 6, '2023-10-20', 'completed'),
(243, 210, 'Thiện', '0586769686', 'thien@gmail.com', 'credit card', 'Nam Cao, q9, TPHCM, p8', 'Tráng miệng 01 (4 x 1) - món chính 04 (5 x 1) - ', 9, '2023-10-20', 'completed'),
(244, 211, 'Hùng', '0374547389', 'hung112@gmail.com', 'cash on delivery', 'Nam Hoa, q9, TPHCM, p4', 'Tráng miệng 01 (4 x 1) - Tráng miệng 02 (2 x 1) - ', 6, '2023-10-20', 'completed'),
(245, 212, 'Trảng', '0957686969', 'trang1@gmail.com', 'cash on delivery', 'Nam Hoàng, q9, TPHCM, p9', 'Tráng miệng 01 (4 x 1) - Pizza 02 (2 x 1) - ', 6, '2023-10-20', 'completed'),
(246, 213, 'phượng', '0876444333', 'phuong@gmaul.com', 'credit card', 'Sư Vạn Hạnh, q10, TPHCM, p13', 'Tráng miệng 01 (4 x 1) - Đồ uống 01 (3 x 1) - ', 7, '2023-10-20', 'completed'),
(247, 214, 'phong', '0577885335', 'phong11@gmail.com', 'credit card', 'đường 3/2, q10, TPHCM, p11', 'Tráng miệng 01 (4 x 1) - Tráng miệng 02 (2 x 1) - ', 6, '2023-10-20', 'completed'),
(248, 215, 'My', '0891794777', 'miee@gmail.com', 'credit card', '245 đường 3/2, q10, TPHCM, p10', 'Tráng miệng 04 (3 x 1) - ', 3, '2023-10-20', 'completed'),
(249, 216, 'Oanh', '0924378748', 'oanhoanh@gmail.com', 'paytm', 'nguyễn thị nghĩa, q gò vấp, TPHCM, p12', 'Món chính 05 (4 x 5) - Tráng miệng 08 (3 x 2) - Đồ uống 06 (5 x 1) - Tráng miệng 01 (4 x 1) - Đồ uống 04 (1 x 1) - ', 36, '2023-10-20', 'completed'),
(250, 217, 'Tuyền', '0498743883', 'tuyen@gmail.com', 'paypal', '45/3 tên lửa, q bình tân, TPHCM, p2', 'Đồ uống 01 (3 x 1) - Đồ uống 02 (2 x 1) - món chính 04 (5 x 1) - ', 10, '2023-10-20', 'completed'),
(251, 218, 'Nhung', '0289374838', 'nhungtt@yahoo.com', 'cash on delivery', '90 đường 3/2, q10, TPHCM, p7', 'Đồ uống 05 (3 x 1) - Tráng miệng 03 (2 x 1) - ', 5, '2023-10-20', 'completed'),
(252, 219, 'Kiều', '0382783477', 'kieuu@gmail.com', 'paypal', '54 tôn đản, q11, TPHCM, p6', 'Tráng miệng 01 (4 x 1) - ', 4, '2023-10-20', 'completed'),
(253, 220, 'Ý', '0387138893', 'nhuyyy@gmail.com', 'cash on delivery', '8 hoà bình, q tân phú, TPHCM, p12', 'đồ uống 03 (2 x 1) - Burger 01 (4 x 1) - Món chính 02 (4 x 1) - ', 10, '2023-10-20', 'completed'),
(254, 221, 'nhã', '0213892882', 'nha@yahoo.com', 'cash on delivery', '56b bình thới, q6, TPHCM, p4', 'Pizza 02 (2 x 1) - ', 2, '2023-10-20', 'completed'),
(255, 222, 'đạt', '0934737373', 'dat200102@gmail.com', 'credit card', '87 bà hom, q11, TPHCM, p3', 'món chính 04 (5 x 1) - ', 5, '2023-10-20', 'completed'),
(256, 223, 'hằng', '0283782799', 'hangg@gmail.com', 'paypal', '2/4/4 tân hoà đông, q bình tân, TPHCM, p8', 'Đồ uống 06 (5 x 1) - ', 5, '2023-10-20', 'completed'),
(257, 224, 'phi', '0846336318', 'phi@yahoo.com', 'paytm', 'nguyễn hữu cầu, q7, TPHCM, p7', 'Đồ uống 01 (3 x 1) - Tráng miệng 04 (3 x 1) - ', 6, '2023-10-20', 'completed'),
(258, 225, 'đào', '0374616664', 'daodao@gmail.com', 'paypal', '23 lạc long quân, q10, p6', 'Burger 02 (3 x 1) - Tráng miệng 07 (4 x 1) - Tráng miệng 01 (4 x 1) - ', 11, '2023-10-20', 'completed'),
(259, 226, 'chi', '0239878577', 'chi@yahoo.com', 'credit card', '5 lê đại hành, q11, TPHCM, p9', 'đồ uống 03 (2 x 1) - Pizza 02 (2 x 1) - Đồ uống 01 (3 x 1) - ', 7, '2023-10-20', 'completed'),
(260, 227, 'kim', '0397592245', 'kim@icloud.com', 'paytm', '52/7 lãnh binh thăng, q11, p9', 'Tráng miệng 01 (4 x 1) - món chính 04 (5 x 1) - ', 9, '2023-10-20', 'completed'),
(261, 228, 'phát', '0285777899', 'phatphat@yahoo.com', 'paytm', '8 đường số 24, q bình tân, TPHCM, p7', 'món chính 04 (5 x 1) - Đồ uống 04 (1 x 1) - ', 6, '2023-10-20', 'completed'),
(262, 229, 'bùi', '0948289274', 'bui@yahoo.com', 'paytm', 'nguyễn oanh, q gò vấp, TPHCM, p8', 'Tráng miệng 05 (5 x 1) - Burger 02 (3 x 1) - Pizza 05 (4 x 1) - Tráng miệng 06 (5 x 1) - ', 17, '2023-10-20', 'completed'),
(263, 230, 'lương ', '0842548757', 'luong@icloud.com', 'paypal', 'nguyễn thái sơn, q gò vấp, TPHCM, p14', 'Đồ uống 01 (3 x 3) - ', 9, '2023-10-20', 'completed'),
(264, 231, 'súng', '0348375789', 'ssung@gmail.com', 'paytm', 'hạnh thông, q gò vấp, p6', 'đồ uống 03 (2 x 1) - món chính 04 (5 x 1) - ', 7, '2023-10-20', 'completed'),
(265, 232, 'lục ', '0373320999', 'luc1456@yahoo.com', 'paytm', 'nguyễn tuân, q gò vấp, p6', 'Pizza 02 (2 x 2) - ', 4, '2023-10-20', 'completed'),
(266, 79, 'phương', '0947626352', 'phuongtruc@yahoo.com', 'credit card', 'tân phú, 7, 4', 'Tráng miệng 03 (2 x 1) - Burger 01 (4 x 1) - ', 6, '2023-10-20', 'completed'),
(267, 81, 'trang', '0947564426', 'ttt@yahoo.com', 'credit card', 'bà hom, q6, TPHCM, p9', 'Pizza 02 (2 x 1) - Tráng miệng 02 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(268, 82, 'kì', '0937463654', 'ki@yahoo.com', 'credit card', 'nguyễn văn luông, q6, TPHCM, p8', 'món chính 04 (5 x 1) - Đồ uống 02 (2 x 1) - ', 7, '2023-10-20', 'completed'),
(269, 233, 'giám', '0483783828', 'giam@yahoo.com', 'credit card', 'huỳnh khương an, q gò vấp, TPHCM, p9', 'món chính 04 (5 x 1) - Tráng miệng 01 (4 x 1) - đồ uống 03 (2 x 1) - ', 11, '2023-10-20', 'completed');
INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(270, 234, 'toàn', '0987816486', 'toanfruit@gmail.com', 'credit card', 'Tú mỡ, q gò vấp, p4', 'Tráng miệng 04 (3 x 1) - ', 3, '2023-10-20', 'completed'),
(271, 235, 'châu', '0148738473', 'chau@yahoo.com', 'cash on delivery', 'trương minh ký, q gò vấp, p3', 'Tráng miệng 03 (2 x 1) - Tráng miệng 01 (4 x 1) - ', 6, '2023-10-20', 'completed'),
(272, 236, 'Đỏ', '0248737377', 'dodo@gmail.com', 'cash on delivery', 'hạnh thông tây, q gò vấp, p1', 'món chính 04 (5 x 1) - Món chính 03 (6 x 1) - ', 11, '2023-10-20', 'completed'),
(273, 237, 'Nương', '0839389183', 'nuong@yahoo.com', 'paytm', 'nguyễn văn bảo, q gò vấp, p7', 'Đồ uống 04 (1 x 4) - ', 4, '2023-10-20', 'completed'),
(274, 238, 'đẳng', '0384934823', 'fhwjfb@gmail.com', 'paytm', 'nguyễn duy cung, q gò vấp, p2', 'Đồ uống 04 (1 x 1) - đồ uống 03 (2 x 1) - ', 3, '2023-10-20', 'completed'),
(275, 239, 'cầu', '0294299183', 'cauu@gmail.com', 'credit card', 'thống nhất, q gò vấp, p12', 'Đồ uống 02 (2 x 1) - ', 2, '2023-10-20', 'completed'),
(276, 240, 'sinh', '0923921991', 'sinh1234@yahoo.com', 'cash on delivery', 'Tân sơn, q gò vấp, p14', 'Đồ uống 01 (3 x 1) - ', 3, '2023-10-20', 'completed'),
(277, 241, 'khải', '0294921838', 'khai@icloud.com', 'paypal', 'thống nhất, q tân phú, p phú thọ hoà', 'Pizza 01 (3 x 1) - ', 3, '2023-10-20', 'completed'),
(278, 242, 'Vương', '0139831849', 'vvv@gmail.com', 'credit card', 'lê thị hồng, q gò vấp, p13', 'Tráng miệng 01 (4 x 1) - ', 4, '2023-10-20', 'completed'),
(279, 243, 'thển', '0129384777', 'thenthen@gmail.com', 'cash on delivery', 'đường D3, q12, p6', 'Tráng miệng 02 (2 x 1) - ', 2, '2023-10-20', 'completed'),
(280, 244, 'hên', '0387367929', 'henne@yahoo.com', 'credit card', 'dường d4, q12, p3', 'Burger 02 (3 x 1) - Tráng miệng 08 (3 x 1) - ', 6, '2023-10-20', 'completed'),
(281, 245, 'An', '0341897999', 'anan@gmail.com', 'credit card', 'an phú đông, q12, p2', 'Tráng miệng 02 (2 x 1) - đồ uống 03 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(282, 246, 'còi', '0834791937', 'coi@yahoo.com', 'credit card', 'dương thị giang, q12, p2', 'Đồ uống 06 (5 x 1) - ', 5, '2023-10-20', 'completed'),
(283, 247, 'lúa', '0288742191', 'luamoi@yahoo.com', 'paytm', 'An Lộc, q12, TPHCM, p7', 'Tráng miệng 03 (2 x 1) - Món chính 03 (6 x 1) - ', 8, '2023-10-20', 'completed'),
(284, 248, 'Thương', '0825374574', 'thuong1@gmail.com', 'credit card', 'Bùi Văn Ngữ, q12, TPHCM, p4', 'Tráng miệng 01 (4 x 1) - Đồ uống 01 (3 x 1) - ', 7, '2023-10-20', 'completed'),
(285, 249, 'Thịnh', '0754374577', 'thinhsuy@gmail.com', 'credit card', 'Hà Huy Giaps, q12, TPHCM, p7', 'Tráng miệng 02 (2 x 1) - Pizza 02 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(286, 250, 'Trúc', '0724378335', 'trucng1@gmail.com', 'cash on delivery', 'Hà Thị Khéo, q12, TPHCM, p4', 'Đồ uống 01 (3 x 1) - Tráng miệng 01 (4 x 1) - ', 7, '2023-10-20', 'completed'),
(287, 251, 'Ngân', '0852782425', 'ngan1@gmail.com', 'paypal', 'Lê Thị Nho, q12, TPHCM, p3', 'Tráng miệng 01 (4 x 1) - Pizza 02 (2 x 1) - ', 6, '2023-10-20', 'completed'),
(288, 252, 'Trinh', '0936484547', 'trinh@gmail.com', 'credit card', 'Phan Văn Hớn, q12, TPHCM, p8', 'Tráng miệng 02 (2 x 1) - Pizza 02 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(289, 253, 'Dung', '0873446272', 'dungph@gmail.com', 'credit card', 'Quán Tre, q12, TPHCM, p9', 'Tráng miệng 02 (2 x 1) - Pizza 03 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(290, 254, 'Thắng', '0974245532', 'thang12@gmail.com', 'credit card', 'Lâm Thị Hồ, q12, TPHCM, p4', 'Đồ uống 01 (3 x 1) - Tráng miệng 01 (4 x 1) - ', 7, '2023-10-20', 'completed'),
(291, 255, 'hoa', '0923719294', 'tigon@yahoo.com', 'credit card', 'đường d5, q12, p3', 'đồ uống 03 (2 x 1) - Tráng miệng 01 (4 x 1) - ', 6, '2023-10-20', 'completed'),
(292, 256, 'được', '0834874919', 'duoc@icloud.com', 'credit card', 'đỗ nguyên, q12, p5', 'Đồ uống 04 (1 x 1) - Pizza 01 (3 x 1) - ', 4, '2023-10-20', 'completed'),
(293, 257, 'đạt', '0834924934', 'datk@gmail.com', 'paytm', 'hà huy giáp, q12, p2', 'Tráng miệng 08 (3 x 1) - ', 3, '2023-10-20', 'completed'),
(294, 258, 'sương', '0293746578', 'suongng@gmail.com', 'paytm', 'Bùi Văn Ngữ, q12, p11', 'Đồ uống 05 (3 x 1) - ', 3, '2023-10-20', 'completed'),
(295, 259, 'Sở', '0129348898', 'so@yahoo.com', 'credit card', 'đường số 20, q4, p1', 'món chính 04 (5 x 1) - ', 5, '2023-10-20', 'completed'),
(296, 260, 'Khoai', '0293748822', 'khoai@yahoo.com', 'paypal', 'đường số 40, q4, p4', 'Tráng miệng 03 (2 x 1) - Món chính 02 (4 x 1) - ', 6, '2023-10-20', 'completed'),
(297, 261, 'thạch ', '0238888237', 'thach@yahoo.com', 'paytm', 'đường số 41, q4, p5', 'Đồ uống 04 (1 x 1) - Tráng miệng 08 (3 x 1) - ', 4, '2023-10-20', 'completed'),
(298, 262, 'hội', '0239482219', 'hooijhihi@gmail.com', 'credit card', 'đường số 42, q4, p10', 'Món chính 03 (6 x 1) - Tráng miệng 06 (5 x 1) - ', 11, '2023-10-20', 'completed'),
(299, 263, 'hiến', '0217467746', 'hienn@yahoo.com', 'cash on delivery', 'đường số 43, q4, p6', 'Burger 02 (3 x 1) - Tráng miệng 07 (4 x 1) - ', 7, '2023-10-20', 'completed'),
(300, 264, 'vĩnh', '0274173622', 'vinh@icloud.com', 'paytm', 'đường số 44, q4, p7', 'Tráng miệng 06 (5 x 1) - ', 5, '2023-10-20', 'completed'),
(301, 265, 'chiếu', '0395736785', 'chieuuu@gmail.com', 'paytm', 'đường số 45, q4, p12', 'Tráng miệng 02 (2 x 1) - đồ uống 03 (2 x 1) - ', 4, '2023-10-20', 'completed'),
(302, 266, 'tri', '0329498275', 'tri@yahoo.com', 'cash on delivery', 'đường số 45, q4, p3', 'món chính 04 (5 x 1) - đồ uống 03 (2 x 1) - ', 7, '2023-10-20', 'completed'),
(303, 267, 'huyền trân', '0947362766', 'htran@gmail.com', 'cash on delivery', 'xóm chiếu, q4, p4', 'Tráng miệng 03 (2 x 1) - Món chính 03 (6 x 1) - ', 8, '2023-10-20', 'completed'),
(304, 268, 'lâm', '0476574678', 'lamnguyen@yahoo.com', 'paypal', 'tôn thất thuyết, q4, p8', 'Tráng miệng 07 (4 x 1) - ', 4, '2023-10-20', 'completed'),
(305, 269, 'hài', '0658476476', 'haihai@gmail.com', 'credit card', 'hoàng diệu, q4, p9', 'Pizza 03 (2 x 1) - ', 2, '2023-10-20', 'completed'),
(306, 270, 'danh', '0864654563', 'danh@icloud.com', 'credit card', 'đường số 11, q4, p5', 'Burger 02 (3 x 1) - ', 3, '2023-10-20', 'completed'),
(307, 271, 'minh khai', '0783662311', 'minhkhai@gmail.com', 'credit card', 'nguyễn hiền, q3, p5', 'món chính 04 (5 x 1) - Đồ uống 01 (3 x 1) - ', 8, '2023-10-20', 'completed'),
(308, 272, 'thông', '0957274673', 'thong@yahoo.com', 'paypal', 'nguyễn thị diệu, q3, p7', 'Tráng miệng 01 (4 x 1) - đồ uống 03 (2 x 1) - ', 6, '2023-10-20', 'completed'),
(309, 273, 'thuật', '0946246745', 'thuat@gmail.com', 'paypal', 'trần huy liệu, q3, p4', 'Pizza 01 (3 x 1) - Burger 01 (4 x 1) - ', 7, '2023-10-20', 'completed'),
(310, 274, 'dưa', '0743626611', 'duadua@gmail.com', 'cash on delivery', 'nguyễn thượng hiền, q3, p7', 'Đồ uống 02 (2 x 1) - Pizza 02 (2 x 1) - ', 4, '2023-10-20', 'pending'),
(311, 275, 'khê', '0947643773', 'khe@icloud.com', 'paytm', 'trần cao vân, q3, p13', 'Món chính 02 (4 x 1) - Tráng miệng 06 (5 x 1) - ', 9, '2023-10-20', 'pending'),
(312, 276, 'lương huy', '0847536461', 'luonghuy@gmail.com', 'credit card', 'trần huy liệu, q3, p3', 'Tráng miệng 01 (4 x 1) - ', 4, '2023-10-20', 'pending'),
(313, 277, 'yên', '0439473943', 'thuyen@gmail.com', 'paytm', '10, Trần Phú, Thị trấn Củng Sơn, Phú Yên, Xã Suối Bạc, Việt Nam, 394893', 'Đồ uống 06 (5 x 1) - Tráng miệng 02 (2 x 1) - món chính 04 (5 x 1) - ', 12, '2023-10-20', 'pending'),
(314, 277, 'yên', '0439473943', 'thuyen@gmail.com', 'credit card', '10, Trần Phú, Thị trấn Củng Sơn, Phú Yên, Xã Suối Bạc, Việt Nam, 394893', 'Đồ uống 04 (1 x 1) - Pizza 03 (2 x 6) - đồ uống 03 (2 x 1) - Đồ uống 01 (3 x 1) - Tráng miệng 01 (4 x 1) - Tráng miệng 04 (3 x 1) - Đồ uống 05 (3 x 10) - ', 55, '2023-10-20', 'pending'),
(315, 277, 'yên', '0439473943', 'thuyen@gmail.com', 'cash on delivery', '10, Trần Phú, Thị trấn Củng Sơn, Phú Yên, Xã Suối Bạc, Việt Nam, 394893', 'Đồ uống 02 (2 x 1) - món chính 04 (5 x 1) - đồ uống 03 (2 x 1) - Đồ uống 04 (1 x 1) - ', 10, '2023-10-20', 'pending'),
(316, 277, 'yên', '0439473943', 'thuyen@gmail.com', 'paytm', '10, Trần Phú, Thị trấn Củng Sơn, Phú Yên, Xã Suối Bạc, Việt Nam, 394893', 'Pizza 01 (3 x 1) - đồ uống 03 (2 x 1) - ', 5, '2023-10-20', 'pending'),
(317, 277, 'yên', '0439473943', 'thuyen@gmail.com', 'cash on delivery', '10, Trần Phú, Thị trấn Củng Sơn, Phú Yên, Xã Suối Bạc, Việt Nam, 394893', 'Tráng miệng 02 (2 x 1) - món chính 04 (5 x 1) - Tráng miệng 08 (3 x 1) - ', 10, '2023-10-20', 'pending'),
(318, 278, 'quan', '0979387232', 'quan@gmail.com', 'cash on delivery', '20, Nguyễn Thị Minh Khai, Quận 1, TPHCM, p3, Việt Nam, 382325', 'Tráng miệng 02 (2 x 1) - món chính 04 (5 x 10) - Đồ uống 02 (2 x 1) - ', 54, '2023-10-20', 'pending'),
(319, 278, 'quan', '0979387232', 'quan@gmail.com', 'paypal', '20, Nguyễn Thị Minh Khai, Quận 1, TPHCM, p3, Việt Nam, 382325', 'Đồ uống 02 (2 x 1) - Tráng miệng 01 (4 x 1) - Burger 01 (4 x 1) - ', 10, '2023-10-20', 'pending'),
(320, 278, 'quan', '0979387232', 'quan@gmail.com', 'paytm', '20, Nguyễn Thị Minh Khai, Quận 1, TPHCM, p3, Việt Nam, 382325', 'Tráng miệng 03 (2 x 1) - Tráng miệng 06 (5 x 1) - Món chính 05 (4 x 1) - ', 11, '2023-10-20', 'pending'),
(321, 279, 'thông', '0993423424', 'hthong@gmail.com', 'cash on delivery', '40, Phan Bội Châu, Quận 12, TPHCM, p3, Việt Nam, 092320', 'Đồ uống 04 (1 x 1) - Tráng miệng 04 (3 x 1) - Tráng miệng 03 (2 x 1) - Đồ uống 05 (3 x 6) - ', 24, '2023-10-20', 'pending'),
(322, 279, 'thông', '0993423424', 'hthong@gmail.com', 'paytm', '40, Phan Bội Châu, Quận 12, TPHCM, p3, Việt Nam, 092320', 'Burger 02 (3 x 1) - Pizza 03 (2 x 1) - Đồ uống 02 (2 x 1) - ', 7, '2023-10-20', 'pending'),
(323, 279, 'thông', '0993423424', 'hthong@gmail.com', 'paytm', '40, Phan Bội Châu, Quận 12, TPHCM, p3, Việt Nam, 092320', 'Đồ uống 05 (3 x 1) - Tráng miệng 01 (4 x 1) - món chính 04 (5 x 5) - đồ uống 03 (2 x 1) - ', 34, '2023-10-20', 'pending'),
(324, 279, 'thông', '0993423424', 'hthong@gmail.com', 'credit card', '40, Phan Bội Châu, Quận 12, TPHCM, p3, Việt Nam, 092320', 'đồ uống 03 (2 x 1) - Pizza 03 (2 x 1) - Pizza 01 (3 x 7) - ', 25, '2023-10-20', ''),
(325, 280, 'Niên', '0956483727', 'nien1@gmail.com', 'credit card', 'đường 3/2, q10, TPHCM, p9', 'Tráng miệng 01 (4 x 1) - Tráng miệng 02 (2 x 1) - ', 6, '2023-10-20', 'pending'),
(326, 281, 'vinh', '0695667687', 'vinh@gmail.com', 'credit card', 'nguyễn thị nhỏ, q11, TPHCM, p4', 'Đồ uống 01 (3 x 1) - Đồ uống 02 (2 x 1) - ', 5, '2023-10-20', 'pending'),
(327, 283, 'vyvy', '0374683693', 'vy@gmail.com', 'credit card', 'Thành Thái, q10, TPHCM, p9', 'Tráng miệng 01 (4 x 1) - Tráng miệng 02 (2 x 1) - ', 6, '2023-10-20', 'pending'),
(328, 284, 'Liên', '0834635767', 'lien@gmail.com', 'credit card', 'Lý Thường Kiệt, Q10, TPHCM, p4', 'Tráng miệng 01 (4 x 1) - món chính 04 (5 x 1) - ', 9, '2023-10-20', 'pending'),
(329, 285, 'Ngũ', '0878836487', 'nguhanh@gmail.com', 'paytm', 'Điện Biên Phủ, q10, TPHCM, p9', 'Tráng miệng 01 (4 x 1) - Pizza 02 (2 x 1) - ', 6, '2023-10-20', 'pending'),
(330, 285, 'Ngũ', '0878836487', 'nguhanh@gmail.com', 'cash on delivery', 'Điện Biên Phủ, q10, TPHCM, p9', 'Tráng miệng 01 (4 x 1) - Pizza 02 (2 x 1) - ', 6, '2023-10-20', 'pending'),
(331, 286, 'Tuệ', '0485968958', 'tue@gmail.com', 'credit card', 'Bùi Văn Ngữ, q gò vấp, TPHCM, p3', 'Tráng miệng 01 (4 x 1) - Tráng miệng 02 (2 x 1) - ', 6, '2023-10-20', 'pending'),
(332, 286, 'Tuệ', '0485968958', 'tue@gmail.com', 'paytm', 'Bùi Văn Ngữ, q gò vấp, TPHCM, p3', 'Đồ uống 04 (1 x 1) - Tráng miệng 04 (3 x 1) - ', 4, '2023-10-20', 'pending'),
(333, 287, 'Hải', '0738479856', 'hai@gmail.com', 'cash on delivery', 'Nguyễn Văn Bảo, q gò vấp, TPHCM, p9', 'Tráng miệng 02 (2 x 1) - món chính 04 (5 x 1) - ', 7, '2023-10-20', 'pending'),
(334, 287, 'Hải', '0738479856', 'hai@gmail.com', 'paytm', 'Nguyễn Văn Bảo, q gò vấp, TPHCM, p9', 'Đồ uống 04 (1 x 1) - Pizza 02 (2 x 1) - ', 3, '2023-10-20', 'pending'),
(335, 288, 'quỳnh quỳnh', '0965456454', 'quynhquynh@yahoo.com', 'cash on delivery', '124 nguyễn thị nhỏ, q11, p6', 'Đồ uống 02 (2 x 1) - Tráng miệng 04 (3 x 1) - ', 5, '2023-10-20', 'pending'),
(336, 288, 'quỳnh quỳnh', '0965456454', 'quynhquynh@yahoo.com', 'credit card', '124 nguyễn thị nhỏ, q11, p6', 'Đồ uống 06 (5 x 1) - ', 5, '2023-10-20', 'pending'),
(337, 289, 'trúc mai', '0394893587', 'trucmai@yahoo.com', 'cash on delivery', 'Nam Cao, q7, p12', 'Tráng miệng 01 (4 x 1) - Pizza 02 (2 x 1) - món chính 04 (5 x 1) - ', 11, '2023-10-20', 'pending'),
(338, 290, 'khôi', '0328525848', 'khoitran@gmail.com', 'paypal', '93 lê đại hành, q11, p10', 'Đồ uống 01 (3 x 1) - Pizza 04 (3 x 1) - ', 6, '2023-10-20', 'pending'),
(339, 290, 'khôi', '0328525848', 'khoitran@gmail.com', 'cash on delivery', '93 lê đại hành, q11, p10', 'Tráng miệng 07 (4 x 3) - ', 12, '2023-10-20', 'pending'),
(340, 291, 'ngọc bi', '0487381919', 'ngocbii@icloud.com', 'credit card', '32 lãnh binh thăng, q11, p6', 'đồ uống 03 (2 x 1) - Đồ uống 04 (1 x 1) - Pizza 03 (2 x 1) - ', 5, '2023-10-20', 'pending'),
(341, 292, 'phù', '0989776755', 'phutr@yahoo.com', 'credit card', '348 luỹ bán bích, q tân phú, p hiệp tân', 'Đồ uống 06 (5 x 1) - ', 5, '2023-10-20', 'pending'),
(342, 293, 'ngocnaomi', '0384919121', 'ngocnaomi@gmail.com', 'cash on delivery', '9 lương minh nguyệt, q tân phú, p2', 'Tráng miệng 06 (5 x 1) - Tráng miệng 03 (2 x 1) - ', 7, '2023-10-20', 'pending'),
(343, 294, 'hieu', '0148717774', 'hieuthuhai@gmail.com', 'credit card', '56 hoà bình, q tân phú, p9', 'Tráng miệng 01 (4 x 1) - đồ uống 03 (2 x 1) - ', 6, '2023-10-20', 'pending'),
(344, 295, 'tú', '0389985872', 'tupeo@gmail.com', 'credit card', '2 đường số 46, q7, p9', 'Đồ uống 02 (2 x 1) - Pizza 03 (2 x 1) - ', 4, '2023-10-20', 'pending'),
(345, 296, 'sáu', '0385827328', 'sau@yahoo.com', 'paypal', '78/2/1 tân hoà đông, q bình tân, p12', 'Tráng miệng 01 (4 x 1) - ', 4, '2023-10-20', 'pending'),
(346, 296, 'sáu', '0385827328', 'sau@yahoo.com', 'paypal', '78/2/1 tân hoà đông, q bình tân, p12', 'Món chính 03 (6 x 1) - Tráng miệng 08 (3 x 1) - Burger 01 (4 x 1) - ', 13, '2023-10-20', 'pending'),
(347, 297, 'jenny', '0274824273', 'jenny@gmail.com', 'paytm', '456 Lê Thị Nho, q9, p2', 'Đồ uống 02 (2 x 1) - Tráng miệng 05 (5 x 1) - ', 7, '2023-10-20', 'pending'),
(348, 297, 'jenny', '0274824273', 'jenny@gmail.com', 'paytm', '456 Lê Thị Nho, q9, p2', 'Đồ uống 01 (3 x 2) - ', 6, '2023-10-20', 'pending'),
(349, 298, 'khắc', '0149178288', 'khac@gmail.com', 'paypal', '9 bình long, q tân phú, p bình hưng hoà', 'Pizza 02 (2 x 1) - Đồ uống 05 (3 x 1) - ', 5, '2023-10-20', 'pending'),
(350, 103, 'nghĩa', '0374627564', 'nghia123@gmail.com', 'credit card', '6 bà hom, q6, TPHCM, p7', 'Đồ uống 04 (1 x 1) - món chính 04 (5 x 1) - ', 6, '2023-10-20', 'pending'),
(351, 194, 'hảo', '0945878738', 'hhhh@gmail.com', 'credit card', 'đường số 10, q bình tân, TPHCM, p5', 'Tráng miệng 06 (5 x 1) - ', 5, '2023-10-20', 'pending'),
(352, 275, 'khê', '0947643773', 'khe@icloud.com', 'paytm', 'trần cao vân, q3, p13', 'Tráng miệng 03 (2 x 1) - ', 2, '2023-10-20', 'pending'),
(353, 158, 'yến', '0927732991', 'yen@yahoo.com', 'paypal', 'lý thường kiệt , q11, TPHCM, p15', 'Món chính 05 (4 x 1) - Đồ uống 02 (2 x 1) - ', 6, '2023-10-20', 'pending'),
(354, 172, 'như', '0948787882', 'ayday@gmail.com', 'credit card', 'nguyễn sỹ sách, q tân bình, TPHCM, p6', 'Tráng miệng 01 (4 x 1) - ', 4, '2023-10-20', 'pending'),
(355, 299, 'misoa', '0239857756', 'misoa@icloud.com', 'cash on delivery', '8 Nam Cao, q12, p1', 'Pizza 04 (3 x 1) - Pizza 05 (4 x 1) - ', 7, '2023-10-20', 'pending'),
(356, 300, 'justin', '0134857842', 'justin@yahoo.com', 'credit card', '91/2 đường D3, q1, p8', 'Đồ uống 01 (3 x 1) - ', 3, '2023-10-20', 'pending'),
(357, 301, 'winni', '0138478794', 'winni@yahoo.com', 'paytm', '1 Long Thuận, q2, p14', 'món chính 04 (5 x 1) - ', 5, '2023-10-20', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(3, 'Đồ uống 01', 'drinks', 3, 'drink-1.png'),
(5, 'Tráng miệng 01', 'desserts', 4, 'dessert-1.png'),
(6, 'Pizza 02', 'fast food', 2, 'pizza-2.png'),
(7, 'Đồ uống 02', 'drinks', 2, 'drink-2.png'),
(8, 'Tráng miệng 02', 'desserts', 2, 'dessert-2.png'),
(10, 'món chính 04', 'fast food', 5, 'dish-3.png'),
(11, 'đồ uống 03', 'drinks', 2, 'drink-3.png'),
(12, 'Đồ uống 04', 'drinks', 1, 'drink-4.png'),
(13, 'Pizza 03', 'fast food', 2, 'pizza-3.png'),
(14, 'Tráng miệng 03', 'desserts', 2, 'dessert-3.png'),
(16, 'Tráng miệng 04', 'desserts', 3, 'dessert-4.png'),
(17, 'Tráng miệng 05', 'desserts', 5, 'dessert-6.png'),
(18, 'Đồ uống 05', 'drinks', 3, 'drink-5.png'),
(19, 'Pizza 01', 'fast food', 3, 'pizza-1.png'),
(20, 'Pizza 04', 'fast food', 3, 'pizza-4.png'),
(21, 'Burger 01', 'fast food', 4, 'burger-1.png'),
(22, 'Burger 02', 'fast food', 3, 'burger-2.png'),
(23, 'Pizza 05', 'fast food', 4, 'e59b3e1cf7a2f55289bfb002acc0eb22.jpeg'),
(24, 'Món chính 02', 'main dish', 4, 'dish-2.png'),
(25, 'Món chính 03', 'main dish', 6, 'dish-4.png'),
(26, 'Tráng miệng 06', 'desserts', 5, 'dessert-5.png'),
(27, 'Tráng miệng 07', 'desserts', 4, 'cookies-chocolate-chip-cookies-stack-of-cookies-white-background.jpg'),
(28, 'Tráng miệng 08', 'desserts', 3, 'khoai-t_y-c_t-th_ng.webp'),
(29, 'Món chính 05', 'main dish', 4, 'Depositphotos_36307661_l-2015.jpg'),
(30, 'Đồ uống 06', 'drinks', 5, 'drink-6.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'nam', 'hoainam@gmail.com', '7686786786', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '203/19/3, Huỳnh Văn Nghệ, Quận Gò Vấp, TPHCM, Phường 12, 643534'),
(2, 'nam', 'nam@gmail.com', '6756756756', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', ''),
(3, 'QA', 'QA@gmail.com', '7697685685', '356a192b7913b04c54574d18c28d46e6395428ab', '39, Lương Thê sVinh, quận tân phú, TPHCM, phường tân thới hòa, 53353'),
(4, 'nhu', 'gopipes229@dixiser.com', '2323421124', '356a192b7913b04c54574d18c28d46e6395428ab', '6A, Lương Thê Vinh, quận tân phú, TPHCM, Phường 1, 234124'),
(5, 'thu', 'thu@gmail.com', '4534534542', '356a192b7913b04c54574d18c28d46e6395428ab', '12, Lũy bán bich, quận tân phú, TPHCM, phường tân thới hòa, 345345'),
(6, 'mi', 'mi@gmail.com', '6746564564', '356a192b7913b04c54574d18c28d46e6395428ab', ''),
(7, 'men', 'men@gmail.com', '9458943', '356a192b7913b04c54574d18c28d46e6395428ab', '43, Nguyễn Thái Sơn, Quận Gò Vấp, TPHCM, Phường 5, 546456'),
(8, 'trang', 'trang@gmail.com', '483503498', '356a192b7913b04c54574d18c28d46e6395428ab', '55, Huỳnh Văn Nghệ, Quận Gò Vấp, TPHCM, Phường 12, 34234'),
(9, 'sang', 'sang@gmail.com', '6474563563', '356a192b7913b04c54574d18c28d46e6395428ab', '33, CMT8, Phường 1'),
(10, 'son', 'son@gmail.com', '0938492438', '356a192b7913b04c54574d18c28d46e6395428ab', '89, Trường Trinh, quận tân phú, TPHCM, Phường 3, 678568'),
(11, 'an', 'an@gmail.com', '0324803498', '356a192b7913b04c54574d18c28d46e6395428ab', '324, Nguyễn Kiệm, Quận Gò Vấp, TPHCM, Phường 3, 532523'),
(12, 'tu', 'tu@gmail.com', '0234023802', '356a192b7913b04c54574d18c28d46e6395428ab', ''),
(16, 'khanh', 'khanh@gmail.com', '03852352', '356a192b7913b04c54574d18c28d46e6395428ab', '10, Nguyễn Kiệm, Quận Gò Vấp, TPHCM, Phường 3, 65544'),
(17, 'phi', 'phi@gmail.com', '097308923', '356a192b7913b04c54574d18c28d46e6395428ab', '10, Phan Văn Trị, Quận Gò Vấp, TPHCM, Phường 12, 565465'),
(18, 'lua', 'lua123@gmail.com', '0938473676', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn hữu thọ , quận 7, TPHCM, phường 9, Việt Nam, 29067'),
(19, 'tài', 'tai00@gmail.com', '0845748573', '356a192b7913b04c54574d18c28d46e6395428ab', 'N2, tân phú, TPHCM, tây thạnh, Việt Nam'),
(20, 'tân', 'tandeptrai@icloud.com', '0237617647', '356a192b7913b04c54574d18c28d46e6395428ab', 'tân thành, tân, hòa thạnh '),
(21, 'tung', 'hotboytt@gmail.com', '037674732', '356a192b7913b04c54574d18c28d46e6395428ab', 'kênh tân hóa, tân phú, TPHCM, phú thọ hòa, Việt Nam'),
(22, 'loc', 'loc222@gmail.com', '0827348647', '356a192b7913b04c54574d18c28d46e6395428ab', 'hồng hà, tân bình, TPHCM, Phường 5, Việt Nam'),
(23, 'hải', 'nguyenhai@gmail.com', '0873672567', '356a192b7913b04c54574d18c28d46e6395428ab', ' 69 Lũy bán bich, quận tân phú, TPHCM, phường tân thới hòa, Việt Nam'),
(24, 'hong van', 'hongvan@gmail.com', '0898543654', '356a192b7913b04c54574d18c28d46e6395428ab', 'lương minh nguyệt, quận tân phú, TPHCM, tân thới hòa, Việt Nam'),
(25, 'hoàng', 'hailua@gmail.com', '0473856472', '356a192b7913b04c54574d18c28d46e6395428ab', '3/2, 10, TPHCM, Phường 1, Việt Nam'),
(26, 'tâm', 'tam123@gmail.com', '0387464167', '356a192b7913b04c54574d18c28d46e6395428ab', 'lò gốm, tân phú, TPHCM, hiệp tân, Việt Nam'),
(27, 'lan', 'lanxinkgai123@gmail.com', '0937614613', '356a192b7913b04c54574d18c28d46e6395428ab', 'tên lửa, bình tân, TPHCM, p6, Việt Nam'),
(28, 'liêm', 'cogai257@gmail.com', '0837423254', '356a192b7913b04c54574d18c28d46e6395428ab', 'Trường Chinh, Quận Gò Vấp, TPHCM, Phường 3, Việt Nam'),
(29, 'mai', 'mai@gmail.com', '0374617341', '356a192b7913b04c54574d18c28d46e6395428ab', 'Huỳnh Văn Nghệ, Quận Gò Vấp, TPHCM, Phường 1, Việt Nam'),
(30, 'nhi', 'nhi@yahoo.com', '083743857', '356a192b7913b04c54574d18c28d46e6395428ab', 'Nguyễn Kiệm, Quận Gò Vấp, TPHCM, Phường 12'),
(31, 'lam', 'lam23605@yahoo.com', '0384783653', '356a192b7913b04c54574d18c28d46e6395428ab', 'Lương Thê Vinh, tân phú, TPHCM, hiệp tân'),
(32, 'mi', 'milun@gmail.com', '0387725632', '356a192b7913b04c54574d18c28d46e6395428ab', '235 Lũy bán bich, quận tân phú, TPHCM, phường hiệp tân'),
(33, 'cường', 'cuong090822@yahoo.com', '0387438574', '356a192b7913b04c54574d18c28d46e6395428ab', 'hoàng văn thụ, tân bình, TPHCM, Phường 12, Việt Nam'),
(34, 'hòa', 'boycodon123@yahoo.com', '0387567627', '356a192b7913b04c54574d18c28d46e6395428ab', 'sư vạn hạnh, 10, TPHCM, p9'),
(35, 'tiến', 'tiney12@gmail.com', '0837366362', '356a192b7913b04c54574d18c28d46e6395428ab', 'bắc bình, bình thạnh, TPHCM, p5'),
(36, 'luật', 'L1232@gmail.com', '0837483264', '356a192b7913b04c54574d18c28d46e6395428ab', 'bạch đằng, bình thạnh, TPHCM, p12'),
(37, 'sang tú', 'sangtu12@yahoo.com', '0946354634', '356a192b7913b04c54574d18c28d46e6395428ab', 'bình lợi, bình thạnh, TPHCM, p7'),
(38, 'hoa', 'maihoa@gmail.com', '0836451635', '356a192b7913b04c54574d18c28d46e6395428ab', 'bình quới, bình thạnh, TPHCM, p4'),
(39, 'thư', 'thutran@gmail.com', '0826352653', '356a192b7913b04c54574d18c28d46e6395428ab', 'trần phú, q5, TPHCM, p7'),
(40, 'nhâm', 'nhamvo@yahoo.com', '0376131323', '356a192b7913b04c54574d18c28d46e6395428ab', 'trần hưng đạo, q5, TPHCM, p5'),
(41, 'mỹ', 'mymy@gmail.com', '0847834736', '356a192b7913b04c54574d18c28d46e6395428ab', 'tản đà, q5, TPHCM, p9'),
(42, 'phú', 'phuvu123@yahoo.com', '0387487364', '356a192b7913b04c54574d18c28d46e6395428ab', 'hong bàng, q5, TPHCM, Phường 1'),
(43, 'phong', 'phong@yahoo.com', '0837486545', '356a192b7913b04c54574d18c28d46e6395428ab', 'trần hòa, q5, TPHCM, p8'),
(44, 'sùng', 'sung@gmail.com', '0834734734', '356a192b7913b04c54574d18c28d46e6395428ab', 'phùng hưng, q5, TPHCM, p6'),
(45, 'khang', 'khang@gmail.com', '0937246634', '356a192b7913b04c54574d18c28d46e6395428ab', 'phú giáo, q5, TPHCM, p3'),
(46, 'dũng', 'dung12@yahoo.com', '0285747567', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn trãi , q5, TPHCM, p6'),
(47, 'man', 'man@gmail.com', '0387246736', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 30, Quận Gò Vấp, TPHCM, p14'),
(48, 'mừng', 'mung@yahoo.com', '0978767565', '356a192b7913b04c54574d18c28d46e6395428ab', 'lê đức thọ, Quận Gò Vấp, TPHCM, p10'),
(49, 'minh', 'minh@gmail.com', '0876576256', '356a192b7913b04c54574d18c28d46e6395428ab', 'lê lai, Quận Gò Vấp, TPHCM, p6'),
(50, 'hà', 'ha@gmail.com', '0278436723', '356a192b7913b04c54574d18c28d46e6395428ab', 'phạm văn bạch, Quận Gò Vấp, TPHCM, p6'),
(51, 'niên', 'nien@yahoo.com', '0273843643', '356a192b7913b04c54574d18c28d46e6395428ab', 'phạm văn chiêu, Quận Gò Vấp, TPHCM, p4'),
(52, 'min min', 'minmin@gmail.com', '0586859586', '356a192b7913b04c54574d18c28d46e6395428ab', 'phan huy ích, Quận Gò Vấp, TPHCM, Phường 12'),
(53, 'luong', 'luong@gmail.com', '0585756466', '356a192b7913b04c54574d18c28d46e6395428ab', 'phan văn trị, Quận Gò Vấp, TPHCM, Phường 1'),
(54, 'vy', 'vyvy@gmail.com', '0847465656', '356a192b7913b04c54574d18c28d46e6395428ab', 'Huỳnh Văn Nghệ, Quận Gò Vấp, TPHCM, Phường 1'),
(55, 'linh', 'linhng@gmail.com', '0846758676', '356a192b7913b04c54574d18c28d46e6395428ab', 'tân sơn, Quận Gò Vấp, TPHCM, Phường 1'),
(56, 'khoi', 'khoip@gmail.com', '0575485576', '356a192b7913b04c54574d18c28d46e6395428ab', 'tân thọ, Quận Gò Vấp, TPHCM, p6'),
(57, 'hau', 'haun@gmai.com', '0254656755', '356a192b7913b04c54574d18c28d46e6395428ab', 'quang trung, Quận Gò Vấp, TPHCM, p6'),
(58, 'kien', 'kienng@gmail.com', '0365758565', '356a192b7913b04c54574d18c28d46e6395428ab', 'thống nhất, Quận Gò Vấp, TPHCM, Phường 3'),
(59, 'chung', 'chung@gmail.com', '0646757757', '356a192b7913b04c54574d18c28d46e6395428ab', 'lê hồng phong, Quận Gò Vấp, TPHCM, p8'),
(60, 'huy', 'heo@gmail.com', '0283782467', '356a192b7913b04c54574d18c28d46e6395428ab', 'bùi thị xuân, q1, TPHCM, đa kao'),
(61, 'nhân', 'nhan@yahoo.com', '0384782364', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn huệ, q1, TPHCM, bến nghé'),
(62, 'trí', 'tringuyen@gmail.com', '0845726572', '356a192b7913b04c54574d18c28d46e6395428ab', 'phan liêm, q1, TPHCM, bến nghé'),
(63, 'dương', 'duong@gmail.com', '0827347264', '356a192b7913b04c54574d18c28d46e6395428ab', 'phan ngữ, q1, TPHCM, p8'),
(64, 'cúc', 'cuc2@gmail.com', '0347163546', '356a192b7913b04c54574d18c28d46e6395428ab', 'phan tôn, q1, TPHCM, p7'),
(65, 'hỏa', 'hoa999@gmail.com', '0173463746', '356a192b7913b04c54574d18c28d46e6395428ab', 'cô bắc, q1, TPHCM, p7'),
(66, 'su su', 'suusuu@yahoo.com', '0238473265', '356a192b7913b04c54574d18c28d46e6395428ab', 'cô giang, q1, TPHCM, p9'),
(67, 'tín', 'nguyentin@gmail.com', '0378461736', '356a192b7913b04c54574d18c28d46e6395428ab', 'thi sách, q1, TPHCM, Phường 3'),
(68, 'thi', 'thi@gmail.com', '0384784617', '356a192b7913b04c54574d18c28d46e6395428ab', 'trần cao vân, q1, TPHCM, p12'),
(69, 'cảnh', 'canhpham@yahoo.com', '0184783641', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 6, q2, TPHCM, p3'),
(70, 'đăng', 'dangngng@gmail.com', '0127361631', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 24, q2, TPHCM, p15'),
(71, 'thanh', 'ttt@gmail.com', '0923654345', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 61, q2, TPHCM, p4'),
(72, 'kim', 'kim@yahoo.com', '0138771674', '356a192b7913b04c54574d18c28d46e6395428ab', 'đướng số 19, q2, TPHCM, Phường 12'),
(73, 'quang', 'quang@gmail.com', '0384782736', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 22, q2, TPHCM, Phường 1'),
(74, 'nga', 'nga@gmail.com', '0148374823', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn tuyền, q2, TPHCM, p3'),
(75, 'công', 'cong@gmail.com', '0973463754', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 7, q2, TPHCM, p8'),
(76, 'hương', 'huong@gmail.com', '0973651263', '356a192b7913b04c54574d18c28d46e6395428ab', 'quốc hương, q2, TPHCM, p9'),
(77, 'việt', 'viet@gmail.com', '0878767667', '356a192b7913b04c54574d18c28d46e6395428ab', 'đào trí, q7, TPHCM, p9'),
(78, 'nghị', 'nghi@gmail.com', '0948575557', '356a192b7913b04c54574d18c28d46e6395428ab', 'tân mỹ, q7, TPHCM, p7'),
(79, 'phương', 'phuongtruc@yahoo.com', '0947626352', '356a192b7913b04c54574d18c28d46e6395428ab', 'tân phú, 7, 4'),
(80, 'thuận', 'thuan@gmail.com', '0485762463', '356a192b7913b04c54574d18c28d46e6395428ab', 'hậu giang, q6, TPHCM, p6'),
(81, 'trang', 'ttt@yahoo.com', '0947564426', '356a192b7913b04c54574d18c28d46e6395428ab', 'bà hom, q6, TPHCM, p9'),
(82, 'kì', 'ki@yahoo.com', '0937463654', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn văn luông, q6, TPHCM, p8'),
(83, 'nhỏ', 'nho@gmail.com', '0374657578', '356a192b7913b04c54574d18c28d46e6395428ab', 'bà lài, q6, TPHCM, Phường 1'),
(84, 'lài', 'lai@gmail.com', '0264674875', '356a192b7913b04c54574d18c28d46e6395428ab', ' số 32, q6, TPHCM, Phường 1'),
(85, 'TUẤN', 'tuan@gmail.com', '0385686867', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 23, Q6, TPHCM, p1'),
(86, 'hương', 'huongwph@gmail.com', '037465886', '356a192b7913b04c54574d18c28d46e6395428ab', 'Bình Phú, Q6, TPHCM, p12'),
(87, 'ngân', 'nganth@gmail.com', '0365856563', '356a192b7913b04c54574d18c28d46e6395428ab', 'Bình Tây, Q6, TPHCM, p5'),
(88, 'trân', 'tranph@gmail.com', '0385658596', '356a192b7913b04c54574d18c28d46e6395428ab', 'Trang Tử, Q5, TPHCM, p11'),
(89, 'Tân', 'tanphn@gmail.com', '0374657585', '356a192b7913b04c54574d18c28d46e6395428ab', 'Kỳ Hoà, Q5, TPHCM, p3'),
(90, 'trí', 'tridang@gmail.com', '0475876564', '356a192b7913b04c54574d18c28d46e6395428ab', 'Tân Thành, Q5, TPHCM, p5'),
(91, 'thanh', 'thanhng@gmail.com', '0378464756', '356a192b7913b04c54574d18c28d46e6395428ab', 'Hưng Long, Q5, TPHCM, p11'),
(92, 'nhi', 'nhihnhu@gmail.com', '0475967685', '356a192b7913b04c54574d18c28d46e6395428ab', 'Huỳnh Mẫn Đạt, Q5, p1'),
(93, 'thư', 'thungng@gmail.com', '0485894867', '356a192b7913b04c54574d18c28d46e6395428ab', 'cao thắng, q3, TPHCM, p11'),
(94, 'anh', 'tranh@gmail.com', '0384756586', '356a192b7913b04c54574d18c28d46e6395428ab', 'Kỳ Đồng, q3, TPHCM, p1'),
(95, 'dũng', 'dungnhg@gmail.com', '0397587645', '356a192b7913b04c54574d18c28d46e6395428ab', 'Nguyễn Thông, q3, TPHCM, p13'),
(96, 'quỳnh', 'quynhg@gmail.com', '0389574566', '356a192b7913b04c54574d18c28d46e6395428ab', 'Huỳnh Mẫn Đạt, Q5, TPHCM, p3'),
(97, 'nhân', 'nhan@gmail.com', '0975657333', '356a192b7913b04c54574d18c28d46e6395428ab', 'Thành Thái, q10, TPHCM, p1'),
(98, 'đạt', 'datng123@gmail.com', '0936485986', '356a192b7913b04c54574d18c28d46e6395428ab', '3/2, q10, TPHCM, p5'),
(99, 'hùng', 'hung1@gmail.com', '0847584796', '356a192b7913b04c54574d18c28d46e6395428ab', 'Sư Vạn Hạnh, q10, TPHCM, p10'),
(100, 'trúc', 'trucph123@gmail.com', '0937585955', '356a192b7913b04c54574d18c28d46e6395428ab', 'Thành Thái, q10, TPHCM, p13'),
(101, 'lam', 'lam@gmail.com', '0387423673', '356a192b7913b04c54574d18c28d46e6395428ab', 'tôn đản, q5, TPHCM, p8'),
(102, 'Tường', 'tuongtuong@gmail.com', '0827466237', '356a192b7913b04c54574d18c28d46e6395428ab', 'tân hoà đông, q6, TPHCM, p5'),
(103, 'nghĩa', 'nghia123@gmail.com', '0374627564', '356a192b7913b04c54574d18c28d46e6395428ab', '6 bà hom, q6, TPHCM, p7'),
(104, 'phước', 'phuoc@yahoo.com', '0348347237', '356a192b7913b04c54574d18c28d46e6395428ab', '23 hồng bàng, q5, TPHCM, p12'),
(105, 'minh', 'minhne@gmail.com', '0384737466', '356a192b7913b04c54574d18c28d46e6395428ab', 'hàn hải nguyên, q5, TPHCM, p4'),
(106, 'phan', 'phan@gmail.com', '0374346434', '356a192b7913b04c54574d18c28d46e6395428ab', 'hồ tùng mậu, q5, TPHCM, p3'),
(107, 'trường', 'ttruong@gmail.com', '0974363463', '356a192b7913b04c54574d18c28d46e6395428ab', '91 cô giang, q1, TPHCM, p7'),
(108, 'tín', 'tin@yahoo.com', '0384737467', '356a192b7913b04c54574d18c28d46e6395428ab', 'tôn thất hiệp, q10, p6'),
(109, 'sơn', 'son@icloud.com', '0975764766', '356a192b7913b04c54574d18c28d46e6395428ab', 'hoà bình, q tân phú, TPHCM, p hiệp tân'),
(110, 'thảo mai', 'maithao@icloud.com', '0347675744', '356a192b7913b04c54574d18c28d46e6395428ab', ' 11 hàn hải nguyên, q5, TPHCM, p8'),
(111, 'ngọc đặng', 'nd@gmail.com', '0975635355', '356a192b7913b04c54574d18c28d46e6395428ab', '23 tân hoà đông, q6, TPHCM, p9'),
(112, 'thành chung', 'chungtt@icloud.com', '0486466663', '356a192b7913b04c54574d18c28d46e6395428ab', 'tên lửa, q bình tân, TPHCM, p12'),
(113, 'ngọc', 'ngocngoc@icloud.com', '0962244444', '356a192b7913b04c54574d18c28d46e6395428ab', 'bạch đằng, q1, TPHCM, p10'),
(114, 'tú ', 'tunene@gmail.com', '0495748847', '356a192b7913b04c54574d18c28d46e6395428ab', 'trần hưng đạo, q5, TPHCM, p7'),
(115, 'đức', 'duc123@gmail.com', '0994646646', '356a192b7913b04c54574d18c28d46e6395428ab', 'trương phước phan, q3, TPHCM, p3'),
(116, 'tài', 'taitrinh@yahoo.com', '0967254344', '356a192b7913b04c54574d18c28d46e6395428ab', 'bình trị đông, q bình tân, TPHCM, bình trị đông a'),
(117, 'hữu', 'huu@gmail.com', '0947646666', '356a192b7913b04c54574d18c28d46e6395428ab', 'bùi văn ba, q7, TPHCM, p12'),
(118, 'thoại', 'thoaiiiii@gmail.com', '0384764666', '356a192b7913b04c54574d18c28d46e6395428ab', ''),
(119, 'bửu', 'buu@yahoo.com', '0976732877', '356a192b7913b04c54574d18c28d46e6395428ab', 'gò ô môi, q7, TPHCM, phú mỹ'),
(120, 'tứ', 'tuss@gmail.com', '0946555555', '356a192b7913b04c54574d18c28d46e6395428ab', 'phạm thiều, q7, TPHCM, p tân phú'),
(121, 'cáp', 'capcap@gmail.com', '0847364734', '356a192b7913b04c54574d18c28d46e6395428ab', 'tân mỹ, q7, TPHCM, p tân mỹ'),
(122, 'út', 'ut@yahoo.com', '0948625262', '356a192b7913b04c54574d18c28d46e6395428ab', 'phú thuận, q7, TPHCM, p9'),
(123, 'phùng', 'phung@gmail.com', '0398483463', '356a192b7913b04c54574d18c28d46e6395428ab', 'tân trào, q7, TPHCM, p tân mỹ'),
(124, 'thanh', 'thanhthanh@icloud.com', '0945846376', '356a192b7913b04c54574d18c28d46e6395428ab', 'tân thuận, q7, TPHCM, p tân mỹ'),
(125, 'đà', 'dada@yahoo.com', '0384836436', '356a192b7913b04c54574d18c28d46e6395428ab', ''),
(126, 'lộc', 'loclll@gmail.com', '0873476636', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn thị thập, q7, TPHCM, p phú mỹ'),
(127, 'nga', 'nga@yahoo.com', '0384636466', '356a192b7913b04c54574d18c28d46e6395428ab', 'phạm văn nghị, q7, TPHCM, tân phong'),
(128, 'mỹ', 'toilamy@yahoo.com', '0348777777', '356a192b7913b04c54574d18c28d46e6395428ab', 'huỳnh tấn phát, q7, TPHCM, tân kiểng'),
(129, 'sách', 'sach@yahoo.com', '0238766633', '356a192b7913b04c54574d18c28d46e6395428ab', 'bà lài, 6, TPHCM, p11'),
(130, 'kỳ', 'kyky@icloud.com', '0384746782', '356a192b7913b04c54574d18c28d46e6395428ab', 'bãi sậy, q6, TPHCM, p6'),
(131, 'luông', 'vanluong@yahoo.com', '0837678822', '356a192b7913b04c54574d18c28d46e6395428ab', 'bến phú lâm, q6, TPHCM, p tân hoà đông'),
(132, 'su su', 'susu@icloud.com', '0863292997', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 2, q6, TPHCM, p3'),
(133, 'lài', 'lailai@gmail.com', '0283699999', '356a192b7913b04c54574d18c28d46e6395428ab', '26 bà hom, q6, TPHCM, p tân hoà đông'),
(134, 'hoa', 'meme@icloud.com', '0287675444', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 22, q6, TPHCM, p9'),
(135, 'tình', 'boycodon@gmail.com', '0286278888', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn thị nhỏ, q6, TPHCM, p6'),
(136, 'sung', 'samsung@gmail.com', '0384678833', '356a192b7913b04c54574d18c28d46e6395428ab', 'phạm phú thứ, q6, TPHCM, p7'),
(137, 'sam', 'samdangiu@yahoo.com', '0286782888', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 23, q6, TPHCM, p8'),
(138, 'Trai', 'traitrai@gmail.com', '0873588992', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 24, q6, TPHCM, p1'),
(139, 'Mật', 'matmat@yahoo.com', '0733535672', '356a192b7913b04c54574d18c28d46e6395428ab', 'bình tây, q6, TPHCM, p2'),
(140, 'tòn', 'tonton@yahoo.com', '0278292663', '356a192b7913b04c54574d18c28d46e6395428ab', 'bình tiên, q6, p8'),
(141, 'hà', 'ahah@gmail.com', '0397829999', '356a192b7913b04c54574d18c28d46e6395428ab', 'ba đình, q8, TPHCM, p4'),
(142, 'tới', 'toi@gmail.com', '0925357722', '356a192b7913b04c54574d18c28d46e6395428ab', 'ba tơ, q8, TPHCM, p8'),
(143, 'ngự', 'ngu@yahoo.com', '0835272655', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 5, q8, TPHCM, p8'),
(144, 'đăng', 'danf@yahoo.com', '0836389992', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn tri phương, q8, TPHCM, p2'),
(145, 'hảo', 'haohao@yahoo.com', '0963627882', '356a192b7913b04c54574d18c28d46e6395428ab', '2 hồ tùng mậu, q1, TPHCM, p3'),
(146, 'mậu', 'mau@icloud.com', '0374622222', '356a192b7913b04c54574d18c28d46e6395428ab', 'an tài, q8, TPHCM, p9'),
(147, 'phố', 'pho@gmail.com', '0283628288', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 8, q8, TPHCM, p7'),
(148, 'điền', 'diendien@yahoo.com', '0283628282', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 5, q8, TPHCM, p12'),
(149, 'cừ', 'xiaa@gmail.com', '0934737672', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn văn linh, q8, TPHCM, p1'),
(150, 'sinh', 'sinhhhh@yahoo.com', '0973736688', '356a192b7913b04c54574d18c28d46e6395428ab', 'tạ quang bửu, q8, TPHCM, p6'),
(151, 'Việt', 'viet@icloud.com', '0834627222', '356a192b7913b04c54574d18c28d46e6395428ab', 'dương bá trạc , q8, TPHCM, p4'),
(152, 'dũng bùi', 'buidung@gmail.com', '0923764783', '356a192b7913b04c54574d18c28d46e6395428ab', 'phú định, q8, TPHCM, p3'),
(153, 'sỹ', 'sy@yahoo.com', '0937473882', '356a192b7913b04c54574d18c28d46e6395428ab', 'bình thới, q11, TPHCM, p9'),
(154, 'Phương Ny', 'nyny@yahoo.com', '0936272889', '356a192b7913b04c54574d18c28d46e6395428ab', 'lạc long quân, q11, TPHCM, p5'),
(155, 'nghi', 'nghi@icloud.com', '0924628991', '356a192b7913b04c54574d18c28d46e6395428ab', 'minh phụng, q11, TPHCM, p2'),
(156, 'võ huy', 'huyvo@icloud.com', '0924629292', '356a192b7913b04c54574d18c28d46e6395428ab', 'hồng bàng, q11, TPHCM, p1'),
(157, 'bói', 'boiboi@icloud.com', '0283823827', '356a192b7913b04c54574d18c28d46e6395428ab', 'lãnh binh thăng, q11, TPHCM, p13'),
(158, 'yến', 'yen@yahoo.com', '0927732991', '356a192b7913b04c54574d18c28d46e6395428ab', 'lý thường kiệt , q11, TPHCM, p15'),
(159, 'son', 'sss@yahoo.com', '0837872187', '356a192b7913b04c54574d18c28d46e6395428ab', 'ông ích khiêm , q11, TPHCM, p5'),
(160, 'lục', 'luc@gmail.com', '0824728261', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường 3/2, q11, TPHCM, p16'),
(161, 'tòng', 'tong@icloud.com', '0383522882', '356a192b7913b04c54574d18c28d46e6395428ab', 'tạ uyên, q11, TPHCM, p4'),
(162, 'chi', 'chi124@yahoo.com', '0926718823', '356a192b7913b04c54574d18c28d46e6395428ab', 'lê đại hành, q11, TPHCM, p6'),
(163, 'lãm', 'lam159@gmail.com', '0824761746', '356a192b7913b04c54574d18c28d46e6395428ab', 'gò xoài, q bình tân, TPHCM, p2'),
(164, 'quỳnh', 'quynh@icloud.com', '0927328288', '356a192b7913b04c54574d18c28d46e6395428ab', 'hồ ngọc lãm, q bình tân, TPHCM, p9'),
(165, 'mãi', 'maimai@icloud.com', '0863562763', '356a192b7913b04c54574d18c28d46e6395428ab', 'hồ văn long, q bình tân, TPHCM, p7'),
(166, 'long', 'long@gmail.com', '0932737218', '356a192b7913b04c54574d18c28d46e6395428ab', 'hoàng hưng, q bình tân, TPHCM, p1'),
(167, 'Duật', 'duat@yahoo.com', '0273862328', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 4, q bình tân, TPHCM, p6'),
(168, 'bình', 'binh@gmail.com', '0283626728', '356a192b7913b04c54574d18c28d46e6395428ab', 'hát giang, q tân bình, TPHCM, p4'),
(169, 'Hàn', 'han@yahoo.com', '0927674627', '356a192b7913b04c54574d18c28d46e6395428ab', '5 tân hoà đông, q bình tân, TPHCM, p3'),
(170, 'rocky', 'rocky@gmail.com', '0973637378', '356a192b7913b04c54574d18c28d46e6395428ab', 'hồ đắc di, q tân bình, TPHCM, p3'),
(171, 'giang', 'giang@yahoo.com', '0946232837', '356a192b7913b04c54574d18c28d46e6395428ab', 'hiệp nhất, q tân bình, TPHCM, p9'),
(172, 'như', 'ayday@gmail.com', '0948787882', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn sỹ sách, q tân bình, TPHCM, p6'),
(173, 'Tường', 'tuong@icloud.com', '0384736638', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn thái bình, q tân bình, TPHCM, p9'),
(174, 'trang', 'chang@gmail.com', '0384836483', '356a192b7913b04c54574d18c28d46e6395428ab', 'bình giã, q tân bình, TPHCM, p2'),
(175, 'hoàng', 'hoang@gmail.com', '0928376473', '356a192b7913b04c54574d18c28d46e6395428ab', 'bến cát, q tân bình, TPHCM, p1'),
(176, 'thế', 'thethe@yahoo.com', '0347346364', '356a192b7913b04c54574d18c28d46e6395428ab', 'âu cơ, q tân phú, TPHCM, p phú thọ hoà'),
(177, 'mai anh', 'maianh@icloud.com', '0374364364', '356a192b7913b04c54574d18c28d46e6395428ab', 'bình long, q tân phú, TPHCM, p bình hưng hoà'),
(178, 'thắng', 'thang@gmail.com', '0384387432', '356a192b7913b04c54574d18c28d46e6395428ab', 'bờ bao tân thắng, q tân phú, TPHCM, p phú thọ hoà'),
(179, 'hưng', 'hung@yahoo.com', '0983647234', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường d12, q tân phú, TPHCM, p phú thọ hoà'),
(180, 'cơ', 'coco@gmail.com', '0384374999', '356a192b7913b04c54574d18c28d46e6395428ab', '213 tân hoà đông, q6, TPHCM, p1'),
(181, 'dương', 'duongthuy@gmail.com', '0384734873', '356a192b7913b04c54574d18c28d46e6395428ab', '9 tôn đản, q5, TPHCM, p2'),
(182, 'hoàng lan', 'lanhoang@gmail.com', '0384834738', '356a192b7913b04c54574d18c28d46e6395428ab', '20/1/4 đường số 5, q bình tân, TPHCM, p6'),
(183, 'joomi', 'joomi@gmail.com', '0937466281', '356a192b7913b04c54574d18c28d46e6395428ab', '80 hàn hải nguyên, q11, TPHCM, p8'),
(184, 'trân', 'trantran@gmail.com', '0834876336', '356a192b7913b04c54574d18c28d46e6395428ab', 'thạch lam, q tân phú, TPHCM, p8'),
(185, 'vy', 'vyyy@gmail.com', '0843877718', '356a192b7913b04c54574d18c28d46e6395428ab', '43 hàn hải nguyên, q5, TPHCM, p7'),
(186, 'đăng', 'hfjbcdh@gmail.com', '0283847384', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn thị thập, q1, TPHCM, p11'),
(187, 'hoá', 'mmm@gmail.com', '0384736672', '356a192b7913b04c54574d18c28d46e6395428ab', '2 trương phước phan, q8, TPHCM, p3'),
(188, 'linh', 'linh@yahoo.com', '0937668826', '356a192b7913b04c54574d18c28d46e6395428ab', '43/1 nguyễn thị nhỏ, q11, TPHCM, p9'),
(189, 'hiền', 'hien@gmail.com', '0839487348', '356a192b7913b04c54574d18c28d46e6395428ab', '23 nguyễn sỹ sách, q7, TPHCM, p5'),
(190, 'loan', 'loan@yahoo.com', '0948748737', '356a192b7913b04c54574d18c28d46e6395428ab', '25/6 tân thuận, q7, TPHCM, p14'),
(191, 'Quý', 'quy@gmail.com', '0938477729', '356a192b7913b04c54574d18c28d46e6395428ab', '89 bà hom, q6, TPHCM, p tân hoà đông'),
(192, 'huyền', 'huyen@yahoo.com', '0947372882', '356a192b7913b04c54574d18c28d46e6395428ab', 'an dương vương, q5, TPHCM, p4'),
(193, 'sương', 'suong@icloud.com', '0958487392', '356a192b7913b04c54574d18c28d46e6395428ab', ''),
(194, 'hảo', 'hhhh@gmail.com', '0945878738', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 10, q bình tân, TPHCM, p5'),
(195, 'hương', 'huong@ahfkdm.com', '0394756547', '356a192b7913b04c54574d18c28d46e6395428ab', '4/16/3 tôn thất hiệp, q11, TPHCM, p11'),
(196, 'mỹ', 'meumeu@yahoo.com', '0934736222', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 12, q bình tân, TPHCM, p3'),
(197, 'khoa', 'khoa@yahoo.com', '0938238923', '356a192b7913b04c54574d18c28d46e6395428ab', '98 phạm thiều, q7, TPHCM, p4'),
(198, 'vân', 'vanhai@civil.com', '0972368731', '356a192b7913b04c54574d18c28d46e6395428ab', '89 tân hoà đông, q6, TPHCM, p11'),
(199, 'tùng', 'tungph@yahoo.com', '0482748748', '356a192b7913b04c54574d18c28d46e6395428ab', '20 hoà bình, q tân phú, TPHCM, p hiệp tân'),
(200, 'lệ', 'lelepham@gmail.com', '0392918919', '356a192b7913b04c54574d18c28d46e6395428ab', '90 nguyễn văn linh, q7, TPHCM, p8'),
(201, 'xuân', 'xuan@gmail.com', '0394872888', '356a192b7913b04c54574d18c28d46e6395428ab', '89 đường số 5, q5, TPHCM, p15'),
(202, 'sửu', 'suu@yahoo.com', '0239489999', '356a192b7913b04c54574d18c28d46e6395428ab', '3 nguyễn tri phương, q5, TPHCM, p4'),
(203, 'xoài', 'xoainon@gmail.com', '0384723848', '356a192b7913b04c54574d18c28d46e6395428ab', '2 gò xoài, q bình tân, TPHCM, p9'),
(204, 'hồng', 'pink@yahoo.com', '0978787438', '356a192b7913b04c54574d18c28d46e6395428ab', 'bà hạc, q6, TPHCM, p3'),
(205, 'phúc', 'phuctr@gmail.com', '0394782348', '356a192b7913b04c54574d18c28d46e6395428ab', 'tân kì tân quý, q tân phú, TPHCM, p hiệp tân'),
(206, 'phượng', 'ph@gmail.com', '0726482643', '356a192b7913b04c54574d18c28d46e6395428ab', '89/34 tôn đản, q8, TPHCM, p6'),
(207, 'xuan', 'xuanng@gmail.com', '0846587567', '356a192b7913b04c54574d18c28d46e6395428ab', 'Thạnh Lộc, q12, TPHCM, p4'),
(208, 'Nhân', 'nhanp@gmail.com', '0876464748', '356a192b7913b04c54574d18c28d46e6395428ab', 'Đỗ Hành, q12, TPHCM, p7'),
(209, 'Thanh', 'thanhtr@gmail.com', '0638339397', '356a192b7913b04c54574d18c28d46e6395428ab', 'Long Thuận, q9, TPHCM, p6'),
(210, 'Thiện', 'thien@gmail.com', '0586769686', '356a192b7913b04c54574d18c28d46e6395428ab', 'Nam Cao, q9, TPHCM, p8'),
(211, 'Hùng', 'hung112@gmail.com', '0374547389', '356a192b7913b04c54574d18c28d46e6395428ab', 'Nam Hoa, q9, TPHCM, p4'),
(212, 'Trảng', 'trang1@gmail.com', '0957686969', '356a192b7913b04c54574d18c28d46e6395428ab', 'Nam Hoàng, q9, TPHCM, p9'),
(213, 'phượng', 'phuong@gmaul.com', '0876444333', '356a192b7913b04c54574d18c28d46e6395428ab', 'Sư Vạn Hạnh, q10, TPHCM, p13'),
(214, 'phong', 'phong11@gmail.com', '0577885335', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường 3/2, q10, TPHCM, p11'),
(215, 'My', 'miee@gmail.com', '0891794777', '356a192b7913b04c54574d18c28d46e6395428ab', '245 đường 3/2, q10, TPHCM, p10'),
(216, 'Oanh', 'oanhoanh@gmail.com', '0924378748', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn thị nghĩa, q gò vấp, TPHCM, p12'),
(217, 'Tuyền', 'tuyen@gmail.com', '0498743883', '356a192b7913b04c54574d18c28d46e6395428ab', '45/3 tên lửa, q bình tân, TPHCM, p2'),
(218, 'Nhung', 'nhungtt@yahoo.com', '0289374838', '356a192b7913b04c54574d18c28d46e6395428ab', '90 đường 3/2, q10, TPHCM, p7'),
(219, 'Kiều', 'kieuu@gmail.com', '0382783477', '356a192b7913b04c54574d18c28d46e6395428ab', '54 tôn đản, q11, TPHCM, p6'),
(220, 'Ý', 'nhuyyy@gmail.com', '0387138893', '356a192b7913b04c54574d18c28d46e6395428ab', '8 hoà bình, q tân phú, TPHCM, p12'),
(221, 'nhã', 'nha@yahoo.com', '0213892882', '356a192b7913b04c54574d18c28d46e6395428ab', '56b bình thới, q6, TPHCM, p4'),
(222, 'đạt', 'dat200102@gmail.com', '0934737373', '356a192b7913b04c54574d18c28d46e6395428ab', '87 bà hom, q11, TPHCM, p3'),
(223, 'hằng', 'hangg@gmail.com', '0283782799', '356a192b7913b04c54574d18c28d46e6395428ab', '2/4/4 tân hoà đông, q bình tân, TPHCM, p8'),
(224, 'phi', 'phi@yahoo.com', '0846336318', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn hữu cầu, q7, TPHCM, p7'),
(225, 'đào', 'daodao@gmail.com', '0374616664', '356a192b7913b04c54574d18c28d46e6395428ab', '23 lạc long quân, q10, p6'),
(226, 'chi', 'chi@yahoo.com', '0239878577', '356a192b7913b04c54574d18c28d46e6395428ab', '5 lê đại hành, q11, TPHCM, p9'),
(227, 'kim', 'kim@icloud.com', '0397592245', '356a192b7913b04c54574d18c28d46e6395428ab', '52/7 lãnh binh thăng, q11, p9'),
(228, 'phát', 'phatphat@yahoo.com', '0285777899', '356a192b7913b04c54574d18c28d46e6395428ab', '8 đường số 24, q bình tân, TPHCM, p7'),
(229, 'bùi', 'bui@yahoo.com', '0948289274', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn oanh, q gò vấp, TPHCM, p8'),
(230, 'lương ', 'luong@icloud.com', '0842548757', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn thái sơn, q gò vấp, TPHCM, p14'),
(231, 'súng', 'ssung@gmail.com', '0348375789', '356a192b7913b04c54574d18c28d46e6395428ab', 'hạnh thông, q gò vấp, p6'),
(232, 'lục ', 'luc1456@yahoo.com', '0373320999', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn tuân, q gò vấp, p6'),
(233, 'giám', 'giam@yahoo.com', '0483783828', '356a192b7913b04c54574d18c28d46e6395428ab', 'huỳnh khương an, q gò vấp, TPHCM, p9'),
(234, 'toàn', 'toanfruit@gmail.com', '0987816486', '356a192b7913b04c54574d18c28d46e6395428ab', 'Tú mỡ, q gò vấp, p4'),
(235, 'châu', 'chau@yahoo.com', '0148738473', '356a192b7913b04c54574d18c28d46e6395428ab', 'trương minh ký, q gò vấp, p3'),
(236, 'Đỏ', 'dodo@gmail.com', '0248737377', '356a192b7913b04c54574d18c28d46e6395428ab', 'hạnh thông tây, q gò vấp, p1'),
(237, 'Nương', 'nuong@yahoo.com', '0839389183', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn văn bảo, q gò vấp, p7'),
(238, 'đẳng', 'fhwjfb@gmail.com', '0384934823', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn duy cung, q gò vấp, p2'),
(239, 'cầu', 'cauu@gmail.com', '0294299183', '356a192b7913b04c54574d18c28d46e6395428ab', 'thống nhất, q gò vấp, p12'),
(240, 'sinh', 'sinh1234@yahoo.com', '0923921991', '356a192b7913b04c54574d18c28d46e6395428ab', 'Tân sơn, q gò vấp, p14'),
(241, 'khải', 'khai@icloud.com', '0294921838', '356a192b7913b04c54574d18c28d46e6395428ab', 'thống nhất, q tân phú, p phú thọ hoà'),
(242, 'Vương', 'vvv@gmail.com', '0139831849', '356a192b7913b04c54574d18c28d46e6395428ab', 'lê thị hồng, q gò vấp, p13'),
(243, 'thển', 'thenthen@gmail.com', '0129384777', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường D3, q12, p6'),
(244, 'hên', 'henne@yahoo.com', '0387367929', '356a192b7913b04c54574d18c28d46e6395428ab', 'dường d4, q12, p3'),
(245, 'An', 'anan@gmail.com', '0341897999', '356a192b7913b04c54574d18c28d46e6395428ab', 'an phú đông, q12, p2'),
(246, 'còi', 'coi@yahoo.com', '0834791937', '356a192b7913b04c54574d18c28d46e6395428ab', 'dương thị giang, q12, p2'),
(247, 'lúa', 'luamoi@yahoo.com', '0288742191', '356a192b7913b04c54574d18c28d46e6395428ab', 'An Lộc, q12, TPHCM, p7'),
(248, 'Thương', 'thuong1@gmail.com', '0825374574', '356a192b7913b04c54574d18c28d46e6395428ab', 'Bùi Văn Ngữ, q12, TPHCM, p4'),
(249, 'Thịnh', 'thinhsuy@gmail.com', '0754374577', '356a192b7913b04c54574d18c28d46e6395428ab', 'Hà Huy Giaps, q12, TPHCM, p7'),
(250, 'Trúc', 'trucng1@gmail.com', '0724378335', '356a192b7913b04c54574d18c28d46e6395428ab', 'Hà Thị Khéo, q12, TPHCM, p4'),
(251, 'Ngân', 'ngan1@gmail.com', '0852782425', '356a192b7913b04c54574d18c28d46e6395428ab', 'Lê Thị Nho, q12, TPHCM, p3'),
(252, 'Trinh', 'trinh@gmail.com', '0936484547', '356a192b7913b04c54574d18c28d46e6395428ab', 'Phan Văn Hớn, q12, TPHCM, p8'),
(253, 'Dung', 'dungph@gmail.com', '0873446272', '356a192b7913b04c54574d18c28d46e6395428ab', 'Quán Tre, q12, TPHCM, p9'),
(254, 'Thắng', 'thang12@gmail.com', '0974245532', '356a192b7913b04c54574d18c28d46e6395428ab', 'Lâm Thị Hồ, q12, TPHCM, p4'),
(255, 'hoa', 'tigon@yahoo.com', '0923719294', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường d5, q12, p3'),
(256, 'được', 'duoc@icloud.com', '0834874919', '356a192b7913b04c54574d18c28d46e6395428ab', 'đỗ nguyên, q12, p5'),
(257, 'đạt', 'datk@gmail.com', '0834924934', '356a192b7913b04c54574d18c28d46e6395428ab', 'hà huy giáp, q12, p2'),
(258, 'sương', 'suongng@gmail.com', '0293746578', '356a192b7913b04c54574d18c28d46e6395428ab', 'Bùi Văn Ngữ, q12, p11'),
(259, 'Sở', 'so@yahoo.com', '0129348898', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 20, q4, p1'),
(260, 'Khoai', 'khoai@yahoo.com', '0293748822', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 40, q4, p4'),
(261, 'thạch ', 'thach@yahoo.com', '0238888237', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 41, q4, p5'),
(262, 'hội', 'hooijhihi@gmail.com', '0239482219', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 42, q4, p10'),
(263, 'hiến', 'hienn@yahoo.com', '0217467746', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 43, q4, p6'),
(264, 'vĩnh', 'vinh@icloud.com', '0274173622', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 44, q4, p7'),
(265, 'chiếu', 'chieuuu@gmail.com', '0395736785', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 45, q4, p12'),
(266, 'tri', 'tri@yahoo.com', '0329498275', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 45, q4, p3'),
(267, 'huyền trân', 'htran@gmail.com', '0947362766', '356a192b7913b04c54574d18c28d46e6395428ab', 'xóm chiếu, q4, p4'),
(268, 'lâm', 'lamnguyen@yahoo.com', '0476574678', '356a192b7913b04c54574d18c28d46e6395428ab', 'tôn thất thuyết, q4, p8'),
(269, 'hài', 'haihai@gmail.com', '0658476476', '356a192b7913b04c54574d18c28d46e6395428ab', 'hoàng diệu, q4, p9'),
(270, 'danh', 'danh@icloud.com', '0864654563', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường số 11, q4, p5'),
(271, 'minh khai', 'minhkhai@gmail.com', '0783662311', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn hiền, q3, p5'),
(272, 'thông', 'thong@yahoo.com', '0957274673', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn thị diệu, q3, p7'),
(273, 'thuật', 'thuat@gmail.com', '0946246745', '356a192b7913b04c54574d18c28d46e6395428ab', 'trần huy liệu, q3, p4'),
(274, 'dưa', 'duadua@gmail.com', '0743626611', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn thượng hiền, q3, p7'),
(275, 'khê', 'khe@icloud.com', '0947643773', '356a192b7913b04c54574d18c28d46e6395428ab', 'trần cao vân, q3, p13'),
(276, 'lương huy', 'luonghuy@gmail.com', '0847536461', '356a192b7913b04c54574d18c28d46e6395428ab', 'trần huy liệu, q3, p3'),
(277, 'yên', 'thuyen@gmail.com', '0439473943', '356a192b7913b04c54574d18c28d46e6395428ab', '10, Trần Phú, Thị trấn Củng Sơn, Phú Yên, Xã Suối Bạc, Việt Nam, 394893'),
(278, 'quan', 'quan@gmail.com', '0979387232', '356a192b7913b04c54574d18c28d46e6395428ab', '20, Nguyễn Thị Minh Khai, Quận 1, TPHCM, p3, Việt Nam, 382325'),
(279, 'thông', 'hthong@gmail.com', '0993423424', '356a192b7913b04c54574d18c28d46e6395428ab', '40, Phan Bội Châu, Quận 12, TPHCM, p3, Việt Nam, 092320'),
(280, 'Niên', 'nien1@gmail.com', '0956483727', '356a192b7913b04c54574d18c28d46e6395428ab', 'đường 3/2, q10, TPHCM, p9'),
(281, 'vinh', 'vinh@gmail.com', '0695667687', '356a192b7913b04c54574d18c28d46e6395428ab', 'nguyễn thị nhỏ, q11, TPHCM, p4'),
(282, 'khôi', 'khooing@gmail.com', '0946586794', '356a192b7913b04c54574d18c28d46e6395428ab', ''),
(283, 'vyvy', 'vy@gmail.com', '0374683693', '356a192b7913b04c54574d18c28d46e6395428ab', 'Thành Thái, q10, TPHCM, p9'),
(284, 'Liên', 'lien@gmail.com', '0834635767', '356a192b7913b04c54574d18c28d46e6395428ab', 'Lý Thường Kiệt, Q10, TPHCM, p4'),
(285, 'Ngũ', 'nguhanh@gmail.com', '0878836487', '356a192b7913b04c54574d18c28d46e6395428ab', 'Điện Biên Phủ, q10, TPHCM, p9'),
(286, 'Tuệ', 'tue@gmail.com', '0485968958', '356a192b7913b04c54574d18c28d46e6395428ab', 'Bùi Văn Ngữ, q gò vấp, TPHCM, p3'),
(287, 'Hải', 'hai@gmail.com', '0738479856', '356a192b7913b04c54574d18c28d46e6395428ab', 'Nguyễn Văn Bảo, q gò vấp, TPHCM, p9'),
(288, 'quỳnh quỳnh', 'quynhquynh@yahoo.com', '0965456454', '356a192b7913b04c54574d18c28d46e6395428ab', '124 nguyễn thị nhỏ, q11, p6'),
(289, 'trúc mai', 'trucmai@yahoo.com', '0394893587', '356a192b7913b04c54574d18c28d46e6395428ab', 'Nam Cao, q7, p12'),
(290, 'khôi', 'khoitran@gmail.com', '0328525848', '356a192b7913b04c54574d18c28d46e6395428ab', '93 lê đại hành, q11, p10'),
(291, 'ngọc bi', 'ngocbii@icloud.com', '0487381919', '356a192b7913b04c54574d18c28d46e6395428ab', '32 lãnh binh thăng, q11, p6'),
(292, 'phù', 'phutr@yahoo.com', '0989776755', '356a192b7913b04c54574d18c28d46e6395428ab', '348 luỹ bán bích, q tân phú, p hiệp tân'),
(293, 'ngocnaomi', 'ngocnaomi@gmail.com', '0384919121', '356a192b7913b04c54574d18c28d46e6395428ab', '9 lương minh nguyệt, q tân phú, p2'),
(294, 'hieu', 'hieuthuhai@gmail.com', '0148717774', '356a192b7913b04c54574d18c28d46e6395428ab', '56 hoà bình, q tân phú, p9'),
(295, 'tú', 'tupeo@gmail.com', '0389985872', '356a192b7913b04c54574d18c28d46e6395428ab', '2 đường số 46, q7, p9'),
(296, 'sáu', 'sau@yahoo.com', '0385827328', '356a192b7913b04c54574d18c28d46e6395428ab', '78/2/1 tân hoà đông, q bình tân, p12'),
(297, 'jenny', 'jenny@gmail.com', '0274824273', '356a192b7913b04c54574d18c28d46e6395428ab', '456 Lê Thị Nho, q9, p2'),
(298, 'khắc', 'khac@gmail.com', '0149178288', '356a192b7913b04c54574d18c28d46e6395428ab', '9 bình long, q tân phú, p bình hưng hoà'),
(299, 'misoa', 'misoa@icloud.com', '0239857756', '356a192b7913b04c54574d18c28d46e6395428ab', '8 Nam Cao, q12, p1'),
(300, 'justin', 'justin@yahoo.com', '0134857842', '356a192b7913b04c54574d18c28d46e6395428ab', '91/2 đường D3, q1, p8'),
(301, 'winni', 'winni@yahoo.com', '0138478794', '356a192b7913b04c54574d18c28d46e6395428ab', '1 Long Thuận, q2, p14');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=788;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
