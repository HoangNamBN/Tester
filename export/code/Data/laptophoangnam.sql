-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2020 at 09:23 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptophoangnam`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsanpham`
--

CREATE TABLE `danhmucsanpham` (
  `MaDMSP` int(10) UNSIGNED NOT NULL,
  `TenDMSP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmucsanpham`
--

INSERT INTO `danhmucsanpham` (`MaDMSP`, `TenDMSP`) VALUES
(1, 'DELL Latitude'),
(2, 'LapTop Asus'),
(3, 'LapTop MSI'),
(4, 'LapTop HP'),
(5, 'LapTop Leveno'),
(6, 'DELL');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuctintuc`
--

CREATE TABLE `danhmuctintuc` (
  `MaDMTT` int(10) UNSIGNED NOT NULL,
  `TenDMTT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuctintuc`
--

INSERT INTO `danhmuctintuc` (`MaDMTT`, `TenDMTT`) VALUES
(1, 'Sự Kiện');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `name`, `password`) VALUES
(1, 'NguyenVanNam', 'a1d0e5095704079f92f43e1a6f22ee3f'),
(2, 'HoangNam123', 'a1d0e5095704079f92f43e1a6f22ee3f'),
(3, 'HaQuyDuc', '526911041d2c31c70365b4dd2f7ff003'),
(4, 'HoangNam1234', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'HoangNam12345', '827ccb0eea8a706c4c34a16891f84e7b'),
(6, 'NguyenDucQuan', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'HueNabi', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(10) UNSIGNED NOT NULL,
  `TenKH` varchar(255) NOT NULL,
  `SinhNgay` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `SDT` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `SinhNgay`, `DiaChi`, `SDT`, `Email`) VALUES
(1, 'Ngô Thi Huệ', '13/12/2000', 'Hà Nam', '01235864578', 'HueNaBi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(10) UNSIGNED NOT NULL,
  `AnhNV` varchar(255) NOT NULL,
  `TenNV` varchar(255) NOT NULL,
  `NgaySinh` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `SDT` varchar(255) NOT NULL,
  `TaiKhoan` varchar(255) NOT NULL,
  `Check` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `AnhNV`, `TenNV`, `NgaySinh`, `DiaChi`, `SDT`, `TaiKhoan`, `Check`) VALUES
(1, 'image17.jpg', 'Nguyễn Văn Nam', '10/12/2000', 'Bắc Ninh', '0398727881', 'NguyenVanNam', '1'),
(2, 'image5.jpg', 'Hà Quý Đức', '21/12/2000', 'Bắc Ninh', '0375869464', 'DucHaQuy', '0'),
(3, 'image14.jpg', 'Nguyễn Hà Hội', '01/09/2000', 'Ninh Bình', '01694678463', 'KhiemChanh', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(10) UNSIGNED NOT NULL,
  `MaDMSP` int(10) NOT NULL,
  `AnhSP` varchar(255) NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  `Gia` float NOT NULL,
  `Sale` int(10) NOT NULL,
  `Hot` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaDMSP`, `AnhSP`, `TenSP`, `MoTa`, `Gia`, `Sale`, `Hot`) VALUES
(1, 1, 'Dell_Latutide_e7480.jpg', 'Laptop Cũ Dell Latitude e7480', 'Laptop Cũ Dell Latitude e7480/ i5*6300U/ Ram 8G/ Ổ SSD 256GB/ Màn14.0 Full HD/ Card On', 10, 0, 1),
(2, 6, 'LapTop10.PNG', 'LapTop Dell G3 3579', 'Core i5-8300H, RAM 8GB, SSD 128GB + HDD 1TB, VGA 4GB GTX 1050, 15.6\' FHD', 8.3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTinTuc` int(10) UNSIGNED NOT NULL,
  `MaDMTT` int(10) NOT NULL,
  `AnhTinTuc` varchar(255) NOT NULL,
  `TenTinTuc` varchar(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  `ChiTiet` text NOT NULL,
  `TinTucNong` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`MaTinTuc`, `MaDMTT`, `AnhTinTuc`, `TenTinTuc`, `MoTa`, `ChiTiet`, `TinTucNong`) VALUES
(1, 1, 'image1.jpg', 'Chương trình khuyến mại tháng 6 - An Phát Computer', 'Chương trình khuyến mại đặc biết cứ là \"Sinh Viên\" nhận quà vô biên', 'Để bắt đầu cho các chương trìnhh khuến mại từng bừng mùa hè. An Phát Computer xin gửi tặng quý vị những phần quà hết sức thú vị', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD PRIMARY KEY (`MaDMSP`);

--
-- Indexes for table `danhmuctintuc`
--
ALTER TABLE `danhmuctintuc`
  ADD PRIMARY KEY (`MaDMTT`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTinTuc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  MODIFY `MaDMSP` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `danhmuctintuc`
--
ALTER TABLE `danhmuctintuc`
  MODIFY `MaDMTT` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTinTuc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
