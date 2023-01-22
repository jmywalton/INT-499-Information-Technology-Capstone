-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 01:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eztechmovie`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustID` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `C_Email` varchar(50) NOT NULL,
  `C_Phone` varchar(50) NOT NULL,
  `Billing Address` varchar(100) NOT NULL,
  `Payment type` varchar(50) NOT NULL,
  `Sub_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustID`, `FirstName`, `LastName`, `C_Email`, `C_Phone`, `Billing Address`, `Payment type`, `Sub_name`) VALUES
('000001', 'John', 'Doe', 'testing@testing.com', '772-205-2255', '1234 missing dr, nowhere Fl, 33455', 'ETF', 'Individual Plan'),
('000002', 'Joe', 'Flacco', 'JoeFlacco@Jets.com', '7771234456', '1 Jets Dr, Florham Park, NJ', 'Credit', 'Family Plan'),
('000003', 'Tom', 'Brady', 'TB12@Bucs.com', '7722252233', '1 Buccaneer Pl, Tampa, FL', 'Credit', 'Friendly Plan'),
('000004', 'Joe', 'Montana', 'JoeMontana@HOF.com', '7727894561', '2121 George Halas Dr NW, Canton, OH 44708', 'ETF', 'Friendly Plan'),
('000005', 'Justin', 'trudeau', 'J_Trudue@canada.com', '5617418529', '24 Sussex Dr, Ottawa CAN, K1M', 'ETF', 'Individual Plan'),
('000006', 'Trevor', 'Lawrence ', 't_lawrence@jags.com', '9585585588', 'One Everbank Field Dr Jacksonville, FL 32202', 'Credit', 'Family Plan'),
('000007', 'Derrick ', 'Carr', 'd_carr@noteam.com', '6311234566', '1475 Raiders Way Henderson, NV 89052 USA', 'Credit', 'Individual Plan'),
('000008', 'Aaron', 'Rodgers', 'a_rodgers@packers.com', '4561231233', 'P.O. Box 10628, Green Bay, WI, 54307-0628', 'ETF', 'Friendly Plan'),
('000009', 'Desmond', 'Ridder', 'd_ridder@falcons.com', '4044561233', '4400 Falcon Pkwy, Flowery Branch, GA', 'EFT', 'Individual Plan'),
('000010', 'Joe', 'Biden', 'j_biden@whitehouse.gov', '2024561233', '1600 Pennsylvania Avenue NW, Washington, DC 20500', 'ETF', 'Family Plan'),
('000011', 'Andrés', 'Manuel López Obrador', 'a_obrador@mexico.gov', '52 7724561233', 'No. 526, Piso 1. Colonia Polanco, (Edificio SEP) 11560 Ciudad de México ', 'Credit', 'Individual Plan'),
('000012', 'Jeremy ', 'Willis', 'jwill@gmail.com', '12629334341', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `movierent`
--

CREATE TABLE `movierent` (
  `RentalID` int(50) NOT NULL,
  `Movie_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movierent`
--

INSERT INTO `movierent` (`RentalID`, `Movie_ID`) VALUES
(1, '00000001'),
(2, '00000002'),
(3, '00000009'),
(4, '00000016'),
(5, '00000012'),
(6, '00000008'),
(7, '00000014'),
(8, '00000012'),
(9, '00000004'),
(10, '00000001'),
(11, '00000010'),
(12, '00000012'),
(13, '00000004'),
(14, '00000014'),
(15, '00000019'),
(16, '00000020');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `Movie_ID` varchar(50) NOT NULL,
  `Movie_Name` varchar(50) NOT NULL,
  `Movie_Lead` varchar(50) NOT NULL,
  `Movie_Rating` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`Movie_ID`, `Movie_Name`, `Movie_Lead`, `Movie_Rating`) VALUES
('00000001', 'Top Gun', 'Tom Cruise', 'PG'),
('00000002', 'Boondock Saints', 'Norman Reedus', 'R'),
('00000003', 'Shrek', 'Mike Myers', 'PG'),
('00000004', 'Space Jam', 'Michael Jordan', 'PG'),
('00000005', 'Top Gun 2', 'Tom Cruise', 'PG'),
('00000006', 'Iron Man', 'Robert Downey JR', 'PG'),
('00000007', 'Thor', 'Chris Hemsworth ', 'PG'),
('00000008', 'Lion King', 'Johnathan Taylor Thomas', 'G'),
('00000009', 'Beauty and The Beast', 'Paige O\'Hara', 'G'),
('00000010', 'Deadpool', 'Ryan Reynolds', 'R'),
('00000011', 'Logan', 'Hugh Jackman', 'R'),
('00000012', 'Die Hard', 'Bruce Willis', 'R'),
('00000013', 'Die Hard 2', 'Bruce Willis', 'R'),
('00000014', 'Signs', 'Mel Gibson', 'PG-13'),
('00000015', 'The Sixth Sense', 'Bruce Willis', 'PG-13'),
('00000016', 'SUPERBAD', 'Jonah Hill', 'R'),
('00000017', 'Grandmas Boy', 'Allen Covert', 'R'),
('00000018', 'Dr strange', 'Benedict', 'PG'),
('00000019', 'blade', 'Wesley snipes', 'R'),
('00000020', 'vampire in brooklyn', 'eddie murphy', 'R');

-- --------------------------------------------------------

--
-- Table structure for table `rental1`
--

CREATE TABLE `rental1` (
  `RentalID` int(50) NOT NULL,
  `CustID` varchar(50) NOT NULL,
  `RentDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rental1`
--

INSERT INTO `rental1` (`RentalID`, `CustID`, `RentDate`) VALUES
(1, '000001', '2023-01-03'),
(2, '000002', '2023-01-01'),
(3, '000003', '2022-11-10'),
(4, '000004', '2023-01-18'),
(5, '000005', '2023-01-13'),
(6, '000006', '2023-01-11'),
(7, '000007', '2023-01-08'),
(8, '000008', '2022-11-11'),
(9, '000009', '2022-12-01'),
(10, '000010', '2022-07-04'),
(11, '000011', '2023-01-04'),
(12, '000002', '2023-01-18'),
(13, '000004', '2023-01-18'),
(14, '000012', '2023-01-18'),
(15, '000005', '2023-01-18'),
(16, '000010', '2023-01-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustID`);

--
-- Indexes for table `movierent`
--
ALTER TABLE `movierent`
  ADD KEY `RentalID` (`RentalID`),
  ADD KEY `Movie_ID` (`Movie_ID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`Movie_ID`);

--
-- Indexes for table `rental1`
--
ALTER TABLE `rental1`
  ADD PRIMARY KEY (`RentalID`),
  ADD KEY `CustID` (`CustID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rental1`
--
ALTER TABLE `rental1`
  MODIFY `RentalID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movierent`
--
ALTER TABLE `movierent`
  ADD CONSTRAINT `movierent_ibfk_1` FOREIGN KEY (`RentalID`) REFERENCES `rental1` (`RentalID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `movierent_ibfk_2` FOREIGN KEY (`Movie_ID`) REFERENCES `movies` (`Movie_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rental1`
--
ALTER TABLE `rental1`
  ADD CONSTRAINT `rental1_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `customer` (`CustID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
