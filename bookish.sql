-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 05:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookish`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `Author_ID` int(11) NOT NULL,
  `Author_Name` varchar(100) NOT NULL,
  `Birth_Year` int(4) NOT NULL,
  `No_of_Books` int(11) DEFAULT NULL,
  `No_of_Awards` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Author_ID`, `Author_Name`, `Birth_Year`, `No_of_Books`, `No_of_Awards`) VALUES
(1, 'Rabindranath\r\nThakur', 1861, 171, 50),
(2, 'Zahir Raihan', 1935, 8, 5),
(3, 'Saytajit Ray', 1921, 145, 30),
(4, 'Sir Arthur Conan\r\nDoyle', 1859, 15, 12),
(5, 'Anthony\r\nMascarenhas', 1928, 3, NULL),
(6, 'Jahanara Imam', 1929, 25, 10),
(7, 'Sufia Kamal', 1911, 10, 3),
(8, 'Robert Frost', 1874, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `author_book_relationship`
--

CREATE TABLE `author_book_relationship` (
  `Book_No` int(11) NOT NULL,
  `Author_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author_book_relationship`
--

INSERT INTO `author_book_relationship` (`Book_No`, `Author_ID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 4),
(14, 4),
(15, 5),
(16, 6),
(17, 7),
(18, 7),
(19, 8);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_No` int(11) NOT NULL,
  `Book_Name` varchar(100) NOT NULL,
  `Genre` varchar(100) NOT NULL,
  `Language` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_No`, `Book_Name`, `Genre`, `Language`) VALUES
(1, 'Shesher Kobita', 'Drama', 'Bangla'),
(2, 'Noukadubi', 'Drama', 'Bangla'),
(3, 'GolpoGuccho', 'Short Stories', 'Bangla'),
(4, 'Chokher Bali', 'Drama', 'Bangla'),
(5, 'Gitanjali', 'Poetry', 'Bangla'),
(6, 'Hajar Bochor Dhore', 'Drama', 'Bangla'),
(7, 'Borof Gola Nodi', 'Drama', 'Bangla'),
(8, 'Shesh Bikeler Meye', 'Drama', 'Bangla'),
(9, 'Shonku Samagra', 'Science Fiction', 'Bangla'),
(10, 'Golpo 101', 'Short Stories', 'Bangla'),
(11, 'Hottyapuri', 'Detective', 'Bangla'),
(12, 'Chinnomostar Ovishap', 'Detective', 'Bangla'),
(13, 'A Study in Scarlet', 'Detective', 'English'),
(14, 'The Case-book of\r\nSherlock Holmes', 'Detective', 'English'),
(15, 'Bangladesh : A Legacy\r\nof Blood', 'History', 'English'),
(16, 'Ekattorer Dinguli', 'History', 'Bangla'),
(17, 'Ekattorer Diary', 'History', 'Bangla'),
(18, 'Kobita Somogro', 'Poetry', 'Bangla'),
(19, 'Mountain Interval', 'Poetry', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `book_character_relationship`
--

CREATE TABLE `book_character_relationship` (
  `Character_ID` int(11) NOT NULL,
  `Book_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_character_relationship`
--

INSERT INTO `book_character_relationship` (`Character_ID`, `Book_No`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 4),
(14, 4),
(15, 4),
(16, 6),
(17, 6),
(18, 6),
(19, 7),
(20, 7),
(21, 8),
(22, 8),
(23, 9),
(24, 9),
(25, 9),
(26, 10),
(27, 10),
(28, 10),
(29, 10),
(30, 11),
(30, 12),
(31, 11),
(31, 12),
(32, 11),
(32, 12),
(33, 11),
(34, 12),
(35, 13),
(35, 14),
(36, 13),
(36, 14),
(37, 13),
(38, 14),
(39, 14),
(40, 16),
(41, 16);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `Character_ID` int(11) NOT NULL,
  `Character_Name` varchar(100) NOT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`Character_ID`, `Character_Name`, `Age`) VALUES
(1, 'Amit Ray', 26),
(2, 'KetakI', 22),
(3, 'Labanya', 20),
(4, 'Ramesh', 27),
(5, 'Hemnalini', 24),
(6, 'Nalinaksha', 30),
(7, 'Kamala', 20),
(8, 'Nirupoma', 15),
(9, 'Postmaster', 24),
(10, 'Ratan', 10),
(11, 'Fotik', 10),
(12, 'Kadombini', 18),
(13, 'Mahendra', 25),
(14, 'Binodini', 18),
(15, 'Bihari', 23),
(16, 'Tuni', 18),
(17, 'Montu', 21),
(18, 'Mokbul', 45),
(19, 'Moriyom', 23),
(20, 'Mahmud', 28),
(21, 'Kashed', 27),
(22, 'Jahanara', 24),
(23, 'Professor Shonku', 59),
(24, 'Nokur Chandra Biswas', 49),
(25, 'Abinash Chandra Majumdar', 53),
(26, 'Tarini Charan Banerjee', 65),
(27, 'Nyapla', 11),
(28, 'Bonku Babu', 48),
(29, 'Professor Hijibijbij', NULL),
(30, 'Feluda', 26),
(31, 'Jotayu', 48),
(32, 'Topshe', 16),
(33, 'Lakshman Bhattacharya', 35),
(34, 'Mahesh Choudhury', 70),
(35, 'Sherlock Holmes', 30),
(36, 'Dr. Watson', 32),
(37, 'Brigham Young', 33),
(38, 'Adelbert Gruner', 35),
(39, 'Grace Dunbar', 27),
(40, 'Rumi', 21),
(41, 'Sharif', 40);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `Publisher_ID` int(11) NOT NULL,
  `Publisher_Name` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`Publisher_ID`, `Publisher_Name`, `Country`) VALUES
(1, 'Baatighar', 'Bangladesh'),
(2, 'Suchoyoni Publishers', 'Bangladesh'),
(3, 'Bishwasahitto Vobon', 'Bangladesh'),
(4, 'The Sky Publishers', 'Bangladesh'),
(5, 'Muktodhara', 'Bangladesh'),
(6, 'Dip Prokason', 'India'),
(7, 'Kalantor Prokashani', 'Bangladesh'),
(8, 'Anupom Prokashani', 'Bangladesh'),
(9, 'Ananda Publishers', 'India'),
(10, 'Nowroze Kitabistan', 'Bangladesh'),
(11, 'Little Scholarz Books', 'India'),
(12, 'Rupa Publications', 'India'),
(13, 'Hodder And Stoughton', 'India'),
(14, 'Charulipi Prokashon', 'Bangladesh'),
(15, 'Sondhani Prokashoni', 'Bangladesh'),
(16, 'Hawlder Prokashoni', 'Bangladesh'),
(17, 'Henry Holt', 'America');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Author_ID`);

--
-- Indexes for table `author_book_relationship`
--
ALTER TABLE `author_book_relationship`
  ADD PRIMARY KEY (`Book_No`,`Author_ID`),
  ADD KEY `Author_ID` (`Author_ID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_No`);

--
-- Indexes for table `book_character_relationship`
--
ALTER TABLE `book_character_relationship`
  ADD PRIMARY KEY (`Character_ID`,`Book_No`),
  ADD KEY `Book_No` (`Book_No`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`Character_ID`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`Publisher_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `Author_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `Book_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `Character_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `Publisher_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author_book_relationship`
--
ALTER TABLE `author_book_relationship`
  ADD CONSTRAINT `author_book_relationship_ibfk_1` FOREIGN KEY (`Book_No`) REFERENCES `book` (`Book_No`),
  ADD CONSTRAINT `author_book_relationship_ibfk_2` FOREIGN KEY (`Author_ID`) REFERENCES `author` (`Author_ID`);

--
-- Constraints for table `book_character_relationship`
--
ALTER TABLE `book_character_relationship`
  ADD CONSTRAINT `book_character_relationship_ibfk_1` FOREIGN KEY (`Character_ID`) REFERENCES `characters` (`Character_ID`),
  ADD CONSTRAINT `book_character_relationship_ibfk_2` FOREIGN KEY (`Book_No`) REFERENCES `book` (`Book_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
