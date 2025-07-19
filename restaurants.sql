-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2025 at 02:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurants`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ID` int(11) NOT NULL,
  `MENU` varchar(100) NOT NULL,
  `DISHES` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`DISHES`)),
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ID`, `MENU`, `DISHES`, `createdAt`, `updatedAt`) VALUES
(1, 'm038t0013_c_food_menu_06jul23.jpg', '[{\"dish\":\"RESTAURANT\",\"image\":\"https://images.unsplash.com/photo-1663530761401-15eefb544889?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxSRVNUQVVSQU5UJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTAyMjM5fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"PIZZA\",\"image\":\"https://images.unsplash.com/photo-1727198826083-6693684e4fc1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxQSVpaQSUyMGZvb2R8ZW58MHwyfHx8MTc1MjkwMjIzN3ww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"BURGER\",\"image\":\"https://images.unsplash.com/photo-1699874372100-2c4906c4c27e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxCVVJHRVIlMjBmb29kfGVufDB8Mnx8fDE3NTI5MDIyMzh8MA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"MARGHERITA\",\"image\":\"https://images.unsplash.com/photo-1708782340377-882559d544fb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxNQVJHSEVSSVRBJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTAyMjM4fDA&ixlib=rb-4.1.0&q=80&w=400\"}]', '2025-07-19 13:51:33', '2025-07-19 13:51:33'),
(2, 'm038t0013_c_food_menu_06jul23.jpg', '[{\"dish\":\"RESTAURANT\",\"image\":\"https://images.unsplash.com/photo-1663530761401-15eefb544889?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxSRVNUQVVSQU5UJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTAyMjM5fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"PIZZA\",\"image\":\"https://images.unsplash.com/photo-1727198826083-6693684e4fc1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxQSVpaQSUyMGZvb2R8ZW58MHwyfHx8MTc1MjkwMjIzN3ww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"BURGER\",\"image\":\"https://images.unsplash.com/photo-1699874372100-2c4906c4c27e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxCVVJHRVIlMjBmb29kfGVufDB8Mnx8fDE3NTI5MDIyMzh8MA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"MARGHERITA\",\"image\":\"https://images.unsplash.com/photo-1708782340377-882559d544fb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxNQVJHSEVSSVRBJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTAyMjM4fDA&ixlib=rb-4.1.0&q=80&w=400\"}]', '2025-07-19 14:05:39', '2025-07-19 14:05:39'),
(3, '5666173.jpg', '[{\"dish\":\"INDIA\",\"image\":\"https://images.unsplash.com/photo-1619161208416-b7d5f04c5b99?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxJTkRJQSUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NHww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"CANAI\",\"image\":\"https://images.unsplash.com/photo-1736451179746-daec547771e5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxDQU5BSSUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NHww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"RESTAURANT\",\"image\":\"https://images.unsplash.com/photo-1663530761401-15eefb544889?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxSRVNUQVVSQU5UJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTAyMjM5fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"BIRYANI\",\"image\":\"https://images.unsplash.com/photo-1708782340377-882559d544fb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxCSVJZQU5JJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTE0NTc0fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"RICE\",\"image\":\"https://images.unsplash.com/photo-1707897634981-39bcfe435268?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxSSUNFJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTE0NTc0fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"Yourrestaurant\",\"image\":\"https://images.unsplash.com/photo-1659881981676-33ab127152c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxZb3VycmVzdGF1cmFudCUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NXww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"Yourrestaurant\",\"image\":\"https://images.unsplash.com/photo-1659881981676-33ab127152c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxZb3VycmVzdGF1cmFudCUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NXww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"Yourrestaurant\",\"image\":\"https://images.unsplash.com/photo-1659881981676-33ab127152c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxZb3VycmVzdGF1cmFudCUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NXww&ixlib=rb-4.1.0&q=80&w=400\"}]', '2025-07-19 14:12:56', '2025-07-19 14:12:56'),
(4, '5666173.jpg', '[{\"dish\":\"INDIA\",\"image\":\"https://images.unsplash.com/photo-1619161208416-b7d5f04c5b99?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxJTkRJQSUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NHww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"CANAI\",\"image\":\"https://images.unsplash.com/photo-1736451179746-daec547771e5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxDQU5BSSUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NHww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"RESTAURANT\",\"image\":\"https://images.unsplash.com/photo-1663530761401-15eefb544889?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxSRVNUQVVSQU5UJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTAyMjM5fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"BIRYANI\",\"image\":\"https://images.unsplash.com/photo-1708782340377-882559d544fb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxCSVJZQU5JJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTE0NTc0fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"RICE\",\"image\":\"https://images.unsplash.com/photo-1707897634981-39bcfe435268?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxSSUNFJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTE0NTc0fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"Yourrestaurant\",\"image\":\"https://images.unsplash.com/photo-1659881981676-33ab127152c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxZb3VycmVzdGF1cmFudCUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NXww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"Yourrestaurant\",\"image\":\"https://images.unsplash.com/photo-1659881981676-33ab127152c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxZb3VycmVzdGF1cmFudCUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NXww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"Yourrestaurant\",\"image\":\"https://images.unsplash.com/photo-1659881981676-33ab127152c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxZb3VycmVzdGF1cmFudCUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NXww&ixlib=rb-4.1.0&q=80&w=400\"}]', '2025-07-19 14:27:33', '2025-07-19 14:27:33'),
(5, '5666173.jpg', '[{\"dish\":\"INDIA\",\"image\":\"https://images.unsplash.com/photo-1619161208416-b7d5f04c5b99?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxJTkRJQSUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NHww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"CANAI\",\"image\":\"https://images.unsplash.com/photo-1736451179746-daec547771e5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxDQU5BSSUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NHww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"RESTAURANT\",\"image\":\"https://images.unsplash.com/photo-1663530761401-15eefb544889?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxSRVNUQVVSQU5UJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTAyMjM5fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"BIRYANI\",\"image\":\"https://images.unsplash.com/photo-1708782340377-882559d544fb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxCSVJZQU5JJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTE0NTc0fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"RICE\",\"image\":\"https://images.unsplash.com/photo-1707897634981-39bcfe435268?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxSSUNFJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTE0NTc0fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"Yourrestaurant\",\"image\":\"https://images.unsplash.com/photo-1659881981676-33ab127152c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxZb3VycmVzdGF1cmFudCUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NXww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"Yourrestaurant\",\"image\":\"https://images.unsplash.com/photo-1659881981676-33ab127152c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxZb3VycmVzdGF1cmFudCUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NXww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"Yourrestaurant\",\"image\":\"https://images.unsplash.com/photo-1659881981676-33ab127152c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxZb3VycmVzdGF1cmFudCUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NXww&ixlib=rb-4.1.0&q=80&w=400\"}]', '2025-07-19 14:32:19', '2025-07-19 14:32:19'),
(6, '5666173.jpg', '[{\"dish\":\"INDIA\",\"image\":\"https://images.unsplash.com/photo-1619161208416-b7d5f04c5b99?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxJTkRJQSUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NHww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"CANAI\",\"image\":\"https://images.unsplash.com/photo-1736451179746-daec547771e5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxDQU5BSSUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NHww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"RESTAURANT\",\"image\":\"https://images.unsplash.com/photo-1663530761401-15eefb544889?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxSRVNUQVVSQU5UJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTAyMjM5fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"BIRYANI\",\"image\":\"https://images.unsplash.com/photo-1708782340377-882559d544fb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxCSVJZQU5JJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTE0NTc0fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"RICE\",\"image\":\"https://images.unsplash.com/photo-1707897634981-39bcfe435268?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxSSUNFJTIwZm9vZHxlbnwwfDJ8fHwxNzUyOTE0NTc0fDA&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"Yourrestaurant\",\"image\":\"https://images.unsplash.com/photo-1659881981676-33ab127152c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxZb3VycmVzdGF1cmFudCUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NXww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"Yourrestaurant\",\"image\":\"https://images.unsplash.com/photo-1659881981676-33ab127152c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxZb3VycmVzdGF1cmFudCUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NXww&ixlib=rb-4.1.0&q=80&w=400\"},{\"dish\":\"Yourrestaurant\",\"image\":\"https://images.unsplash.com/photo-1659881981676-33ab127152c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w3ODAyNDF8MHwxfHNlYXJjaHwxfHxZb3VycmVzdGF1cmFudCUyMGZvb2R8ZW58MHwyfHx8MTc1MjkxNDU3NXww&ixlib=rb-4.1.0&q=80&w=400\"}]', '2025-07-19 14:35:38', '2025-07-19 14:35:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
