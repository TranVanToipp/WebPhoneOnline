-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th4 30, 2022 lúc 08:45 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopdienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldiscount`
--

DROP TABLE IF EXISTS `tbldiscount`;
CREATE TABLE IF NOT EXISTS `tbldiscount` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `phantram` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldiscount`
--

INSERT INTO `tbldiscount` (`ID`, `phantram`) VALUES
(1, 10),
(2, 20),
(3, 30),
(4, 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblgiohang`
--

DROP TABLE IF EXISTS `tblgiohang`;
CREATE TABLE IF NOT EXISTS `tblgiohang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MaKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuonghang` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `MaSP` (`MaSP`),
  KEY `MaKH` (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblgiohang`
--

INSERT INTO `tblgiohang` (`ID`, `MaKH`, `MaSP`, `SoLuonghang`) VALUES
(1, 'KH_9owxS4g', 'SP_fKshjiu', 4),
(2, 'KH_9owxS4g', 'SP_eFoAPbo', 2),
(3, 'KH_9owxS4g', 'SP_e1Lr4CR', 2),
(4, 'KH_9owxS4g', 'SP_hBHkIHg', 2),
(5, 'KH_9owxS4g', 'SP_kF9f560', 1),
(6, 'KH_9owxS4g', 'SP_L5n6Scy', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhoadon`
--

DROP TABLE IF EXISTS `tblhoadon`;
CREATE TABLE IF NOT EXISTS `tblhoadon` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MaHD` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_GioHang` int(11) NOT NULL,
  `MaSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuongXuat` int(100) DEFAULT NULL,
  `TrangThaiXuat` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayHD` date NOT NULL,
  `ThanhTien` double NOT NULL,
  PRIMARY KEY (`MaHD`),
  UNIQUE KEY `ID` (`ID`) USING BTREE,
  KEY `id_GioHang` (`id_GioHang`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblhoadon`
--

INSERT INTO `tblhoadon` (`ID`, `MaHD`, `id_GioHang`, `MaSP`, `MaKH`, `SoLuongXuat`, `TrangThaiXuat`, `NgayHD`, `ThanhTien`) VALUES
(9, 'HD_2uN9sEs', 4, 'SP_hBHkIHg', 'KH_9owxS4g', 2, 'Thành Công', '2022-04-30', 1260000),
(8, 'HD_3LoiS3D', 3, 'SP_e1Lr4CR', 'KH_9owxS4g', 1, 'Thành Công', '2022-04-30', 225000),
(4, 'HD_aJuimwj', 4, 'SP_hBHkIHg', 'KH_9owxS4g', 1, 'Thành Công', '2022-04-30', 630000),
(1, 'HD_AnE2yCm', 1, 'SP_fKshjiu', 'KH_9owxS4g', 2, 'Thành Công', '2022-04-30', 25200000),
(6, 'HD_AqH5AXk', 1, 'SP_fKshjiu', 'KH_9owxS4g', 2, 'Đang Kiểm Duyệt', '2022-04-30', 25200000),
(10, 'HD_cSda11J', 5, 'SP_kF9f560', 'KH_9owxS4g', 1, 'Đang Kiểm Duyệt', '2022-04-30', 13500000),
(3, 'HD_eSDkeMd', 3, 'SP_e1Lr4CR', 'KH_9owxS4g', 1, 'Đơn Đã Hủy', '2022-04-30', 225000),
(2, 'HD_JjDPfei', 2, 'SP_eFoAPbo', 'KH_9owxS4g', 1, 'Đang Kiểm Duyệt', '2022-04-30', 2070000),
(7, 'HD_vgQV95l', 2, 'SP_eFoAPbo', 'KH_9owxS4g', 1, 'Đang Kiểm Duyệt', '2022-04-30', 2070000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblkhachhang`
--

DROP TABLE IF EXISTS `tblkhachhang`;
CREATE TABLE IF NOT EXISTS `tblkhachhang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MaKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenDN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenKH` text COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` text COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` text COLLATE utf8_unicode_ci NOT NULL,
  `DiaChiKH` text COLLATE utf8_unicode_ci NOT NULL,
  `SDT` text COLLATE utf8_unicode_ci NOT NULL,
  `EmailKH` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaKH`),
  UNIQUE KEY `ID` (`ID`),
  KEY `TenDN` (`TenDN`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblkhachhang`
--

INSERT INTO `tblkhachhang` (`ID`, `MaKH`, `TenDN`, `TenKH`, `NgaySinh`, `GioiTinh`, `DiaChiKH`, `SDT`, `EmailKH`) VALUES
(6, 'KH_9owxS4g', 'nguyenvand', 'nguyenvand', '2022-04-15', 'Nam', 'Binh Dinh', '3465767685', 'nguyenvand@gmail.com'),
(5, 'KH_EKXTF0o', 'nguyenvanc', 'nguyenvanc', '', '', '', '', 'nguyenvanc@gmail.com'),
(3, 'KH_Ob9cql0', 'tranvantoi', 'tranvantoi', '', '', '', '', ''),
(4, 'KH_YUad1Dx', 'luongnguyen', 'luongnguyen', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloaisp`
--

DROP TABLE IF EXISTS `tblloaisp`;
CREATE TABLE IF NOT EXISTS `tblloaisp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `loaisp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TenLoaiSP` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`loaisp`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblloaisp`
--

INSERT INTO `tblloaisp` (`ID`, `loaisp`, `TenLoaiSP`) VALUES
(1, 'DT01', 'apple'),
(2, 'DT02', 'ViVo'),
(3, 'DT03', 'SamSung'),
(4, 'DT04', 'Xiaomi'),
(7, 'DT05', 'oppo'),
(8, 'DT06', 'huawei'),
(11, 'DT07', 'realme'),
(5, 'PK01', 'Tai Nghe'),
(6, 'PK02', 'Wifi'),
(12, 'PK03', 'chuột'),
(13, 'PK04', 'ban phim\r\n'),
(14, 'PK05', 'sac du phong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblmaxacnhan`
--

DROP TABLE IF EXISTS `tblmaxacnhan`;
CREATE TABLE IF NOT EXISTS `tblmaxacnhan` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TenDN` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maxacnhan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Đang đổ dữ liệu cho bảng `tblmaxacnhan`
--

INSERT INTO `tblmaxacnhan` (`ID`, `TenDN`, `email`, `maxacnhan`) VALUES
(1, '123456@gmail.com', 'vantoicntt06@gmail.com', '7dW6qjx');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnhacungcap`
--

DROP TABLE IF EXISTS `tblnhacungcap`;
CREATE TABLE IF NOT EXISTS `tblnhacungcap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MaNCC` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TenNCC` text COLLATE utf8_unicode_ci NOT NULL,
  `DiaChiNCC` text COLLATE utf8_unicode_ci NOT NULL,
  `SDTNCC` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `EmailNCC` text COLLATE utf8_unicode_ci NOT NULL,
  `ThongTinThemNCC` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayHopDongNCC` date DEFAULT NULL,
  PRIMARY KEY (`MaNCC`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblnhacungcap`
--

INSERT INTO `tblnhacungcap` (`ID`, `MaNCC`, `TenNCC`, `DiaChiNCC`, `SDTNCC`, `EmailNCC`, `ThongTinThemNCC`, `NgayHopDongNCC`) VALUES
(1, '001IP', 'P/Vũ Tiến', 'Quy Nhơn', '0123456789', 'phamvutien@gmail.com', 'Sản Xuất Điện Thoại', '2022-02-03'),
(2, 'NCC_bvavXr', 'Vũ Bảo', 'Ha Noi', '0236726482', 'vantoicntt06@gmail.com', '', '2022-04-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsanpham`
--

DROP TABLE IF EXISTS `tblsanpham`;
CREATE TABLE IF NOT EXISTS `tblsanpham` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MaSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenSP` text COLLATE utf8_unicode_ci NOT NULL,
  `SoLuongSP` int(11) NOT NULL,
  `DonViTinh` text COLLATE utf8_unicode_ci NOT NULL,
  `MaNCC` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaDauVao` double NOT NULL,
  `GiaDauRa` double NOT NULL,
  `ThongTinSP` text COLLATE utf8_unicode_ci NOT NULL,
  `HinhSP` text COLLATE utf8_unicode_ci NOT NULL,
  `loaiSP` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `spNB` int(11) NOT NULL,
  `id_discount` int(11) NOT NULL,
  PRIMARY KEY (`MaSP`),
  UNIQUE KEY `ID` (`ID`),
  KEY `MaNCC` (`MaNCC`),
  KEY `loaiSP` (`loaiSP`),
  KEY `id_discount` (`id_discount`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblsanpham`
--

INSERT INTO `tblsanpham` (`ID`, `MaSP`, `TenSP`, `SoLuongSP`, `DonViTinh`, `MaNCC`, `GiaDauVao`, `GiaDauRa`, `ThongTinSP`, `HinhSP`, `loaiSP`, `spNB`, `id_discount`) VALUES
(9, 'SP_e1Lr4CR', 'route wife', 10, 'cái', '001IP', 200000, 250000, '', 'image/mang1.jpg', 'PK02', 0, 0),
(13, 'SP_eFoAPbo', 'sạc dự phòng 5000w', 120, 'cục', '001IP', 120000, 2300000, '<p>Sản phẩm tồn kho giảm gi&aacute; mạnh</p>\r\n', 'image/sac4.jpg', 'PK05', 1, 4),
(4, 'SP_fKshjiu', 'huawei', 10, 'cái', '001IP', 12000000, 14000000, '<p>game mượt</p>\r\n', 'image/maycu52.jpg', 'DT06', 1, 0),
(3, 'SP_hBHkIHg', 'oppo', 30, 'cái', '001IP', 6000000, 700000, '', 'image/oppo12.jpg', 'DT05', 0, 0),
(5, 'SP_JHmnzlM', 'vivo', 10, 'cái', '001IP', 1000000, 1100000, '', 'image/vivo12.jpg', 'DT02', 0, 2),
(7, 'SP_kF9f560', 'realme', 10, 'cái', '001IP', 13000000, 15000000, '', 'image/maycu24.jpg', 'DT07', 0, 0),
(10, 'SP_L5n6Scy', 'chuột logitech', 30, 'cái', '001IP', 120000, 130000, '', 'image/chuot1.jpg', 'PK03', 0, 0),
(8, 'SP_nCH6TUe', 'bluetooth xịn', 20, 'cái', '001IP', 1200000, 1300000, '', 'image/tai-nghe33.jpg', 'PK01', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltaikhoan`
--

DROP TABLE IF EXISTS `tbltaikhoan`;
CREATE TABLE IF NOT EXISTS `tbltaikhoan` (
  `TenDN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` text COLLATE utf8_unicode_ci NOT NULL,
  `Email` text COLLATE utf8_unicode_ci NOT NULL,
  `LoaiTaiKhoan` text CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  PRIMARY KEY (`TenDN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbltaikhoan`
--

INSERT INTO `tbltaikhoan` (`TenDN`, `MatKhau`, `Email`, `LoaiTaiKhoan`) VALUES
('Admin', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'shopmobile.0403@gmail.com', 'Admin'),
('luongnguyen', 'f2bd45db1cc7cf4a46b49548c7da226b', '', 'Khách Hàng'),
('nguyenvanc', 'e38935fe84686a8afe5756147b23c46a', 'nguyenvanc@gmail.com', 'Khách Hàng'),
('nguyenvand', '76408318fe45073e54cb3acbf4307ac2', 'nguyenvand@gmail.com', 'Khách Hàng'),
('tranvantoi', '7ace18bda3039f54f981833fd279db4f', '', 'Khách Hàng');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tblgiohang`
--
ALTER TABLE `tblgiohang`
  ADD CONSTRAINT `tblgiohang_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `tblsanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblgiohang_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `tblkhachhang` (`MaKH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tblhoadon`
--
ALTER TABLE `tblhoadon`
  ADD CONSTRAINT `tblhoadon_ibfk_1` FOREIGN KEY (`id_GioHang`) REFERENCES `tblgiohang` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tblkhachhang`
--
ALTER TABLE `tblkhachhang`
  ADD CONSTRAINT `tblkhachhang_ibfk_1` FOREIGN KEY (`TenDN`) REFERENCES `tbltaikhoan` (`TenDN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tblsanpham`
--
ALTER TABLE `tblsanpham`
  ADD CONSTRAINT `tblsanpham_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `tblnhacungcap` (`MaNCC`),
  ADD CONSTRAINT `tblsanpham_ibfk_2` FOREIGN KEY (`loaiSP`) REFERENCES `tblloaisp` (`loaisp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
