-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2023 at 04:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sicmature-sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `User_id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `telephone` varchar(12) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `gender` varchar(255) NOT NULL,
  `Dateofbirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`User_id`, `Username`, `telephone`, `Email`, `Address`, `gender`, `Dateofbirth`) VALUES
(231000001, 'Mr. Anutin', '777-777-7777', 'Anutin@gmail.com', 'ม.พะเยา', 'male', '2023-10-13');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `Chat_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Store_ID` int(11) NOT NULL,
  `Video` longblob NOT NULL,
  `Text` text NOT NULL,
  `Datetime` datetime NOT NULL,
  `Photo` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL,
  `Product_name` varchar(255) NOT NULL,
  `Category` varchar(225) NOT NULL,
  `Img` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Price` int(11) NOT NULL,
  `Size` varchar(225) NOT NULL,
  `Brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Product_name`, `Category`, `Img`, `Description`, `Price`, `Size`, `Brand`) VALUES
(1, 'Kaniva', 'Food', 'Img\\Kaniva.jpg', 'Food Cat Kaniva แซลมอน ทูน่าและข้าว', 520, '3 kg', 'KANIVA'),
(2, 'Kaniva', 'Food', 'Img\\Kaniva.jpg', 'Food Cat Kaniva แซลมอน ทูน่าและข้าว', 1490, '9 kg', 'KANIVA'),
(3, 'Purina One', 'Food', 'Img\\Purina One.jpg', 'เพียวริน่า วัน อาหารแมวแบบเม็ด', 490, '1.2 kg', 'PURINA'),
(4, 'ME-O', 'Food', 'Img\\ME-O.jpg', 'มีโอ อาหารเม็ด สำหรับแมวโต รสปลาทู', 64, '450 g', 'ME-O'),
(5, 'ME-O', 'Food', 'Img\\ME-O.jpg', 'มีโอ อาหารเม็ด สำหรับแมวโต รสปลาทู', 609, '7 kg', 'ME-O'),
(6, 'Royal Canin', 'Food', 'Img\\Royal Canin.jpg', 'โรยัล คานิน อาหารเม็ด สำหรับลูกแมว', 179, '400 g', 'ROYAL CANIN'),
(7, 'Royal Canin', 'Food', 'Img\\Royal Canin.jpg', 'โรยัล คานิน อาหารเม็ด สำหรับลูกแมว', 679, '2 kg', 'ROYAL CANIN'),
(8, 'Hill is Science Die', 'Food', 'Img\\Hill is Science Die.jpg', 'มีสารอาหารที่ช่วยลดการก่อตัวของก้อนขนในแมว', 2300, '7.03 kg', 'Hill is'),
(9, 'Whiskas', 'Food', 'Img\\Whiskas.jpg', 'อาหารแมววิสกัส แมวโต รสปลาทู แบ่งขายแพ็คถุงใส', 45, '500 g', 'Whiskas'),
(10, 'Canagan Scottish Salmon', 'Food', 'Img\\Canagan Scottish Salmon.jpg', 'คานาแกน สคอททิช แซลมอน อาหารลูกแมว และแมวโต', 4390, '8 Kg', 'Canagan'),
(11, 'Pinkpawpal', 'Food_supplement', 'Img\\Pinkpawpal.jpg', 'สูตรเพิ่มน้ำหนัก บำรุงขนและกล้ามเนื้อ', 450, '150 g', 'Pinkpawpal'),
(12, 'O3Vit', 'Food_supplement', 'Img\\O3Vit.jpg', 'น้ำมันตับปลา สำหรับแมว บำรุงสุขภาพแมว', 32, '50 ml', 'O3Vit'),
(13, 'Shed-x Dermaplex', 'Food_supplement', 'Img\\Shed-x Dermaplex.jpg', 'อาหารเสริมลดขนร่วงและบำรุงขน สำหรับแมว', 390, '0.245 kg', 'Shed-X'),
(14, 'Maxicoat Cat', 'Food_supplement', 'Img\\Maxicoat Cat.jpg', 'อาหารเสริมวิตามินบำรุงขนและผิวหนัง สำหรับแมวทุกสายพันธุ์', 320, '100 tablets', 'Green Pet'),
(15, 'Smart Nail Clippers', 'Tool', 'Img\\Smart Nail Clippers.jpg', 'กรรไกรตัดเล็บสัตว์เลี้ยง', 850, '', 'PETHROOM'),
(16, 'Pura Max', 'Tool', 'Img\\Pura Max.jpg', 'ห้องน้ำแมวอัตโนมัติ - Global Version', 14990, 'LITE', 'PETKIT');

-- --------------------------------------------------------

--
-- Table structure for table `statment`
--

CREATE TABLE `statment` (
  `Order_ID` int(11) NOT NULL,
  `Order_Date` date NOT NULL,
  `User_id` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Amount` int(100) NOT NULL,
  `Payment` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `Store_ID` int(11) NOT NULL,
  `Store_name` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `Telephone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`Store_ID`, `Store_name`, `Address`, `Telephone`) VALUES
(232000001, 'ร้าน888', 'หน้า ม.พะเยา', '888-888-8888');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`Chat_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `statment`
--
ALTER TABLE `statment`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`Store_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
