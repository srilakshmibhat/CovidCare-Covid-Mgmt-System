-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2021 at 04:01 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contactnum` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`fname`, `lname`, `email`, `password`, `contactnum`, `gender`) VALUES
('srinidhi', 'bhat', 'srinidhi@gmail.com', 'srinidhi', '7406974801', 'FEMALE'),
('bharthi', 'raghu', 'bharthi@gmail.com', 'bharthi', '778899786', 'FEMALE'),
('shubha', 'ramnath', 'shubha@gmail.com', 'shubha', '78966', 'FEMALE'),
('aa', 'bb', 'aa@gmail.com', 'aa', '7899', 'MALE'),
('sowmya', 'raghu', 'sowmya@gmail.com', 'sowmya', '8971170178', 'FEMALE'),
('srihari', 'bhat', 'srihari@gmail.com', 'srihari', '9113653764', 'MALE'),
('sri', 'bhat', 'sri@gmail.com', 'sri', '9916310298', 'FEMALE');

-- --------------------------------------------------------

--
-- Table structure for table `plasma_donation`
--

CREATE TABLE `plasma_donation` (
  `pname` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `mobileno` int(10) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plasma_donation`
--

INSERT INTO `plasma_donation` (`pname`, `gender`, `blood_group`, `mobileno`, `address`) VALUES
('sri', 'Female', 'O+', 0, '9916310298');

-- --------------------------------------------------------

--
-- Table structure for table `quarantine_center`
--

CREATE TABLE `quarantine_center` (
  `centerid` int(10) NOT NULL,
  `centername` varchar(100) NOT NULL,
  `genbeds` int(11) NOT NULL,
  `vipbeds` int(11) NOT NULL,
  `address` varchar(150) NOT NULL,
  `district` varchar(100) NOT NULL,
  `contactnum` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quarantine_center`
--

INSERT INTO `quarantine_center` (`centerid`, `centername`, `genbeds`, `vipbeds`, `address`, `district`, `contactnum`) VALUES
(101, 'Treebo Trend Hotel', 24, 8, '84 Hosur Rd, Madiwala 1st Stage BTM Layout', 'Bengaluru Urban 560068', 26592096),
(102, 'Haj Bhavan', 24, 13, 'Kannuru Bellahalli BBMP Yelahanka Zone', 'Bangalore Urban 560064', 23679876),
(103, 'OYO Rajmahal comforts', 16, 3, 'New BEL Rd, Chikamanahalli Sadashiv Nagar', 'Bangalore Urban 560094', 27634233),
(104, 'Keys Hotel', 6, 12, 'Plot No 6 1st Phase ITPL Main Rd', 'Bangalore Urban 560048', 20887546),
(105, 'MVJ MC and RH', 50, 13, 'Kolar Road Dandupalya Hosakote Town', 'Bangalore Rural 	\r\n562114', 29983422),
(106, 'Akash Hospital', 71, 43, 'Prasannahalli Devanahalli Taluk', 'Bangalore Rural 562110', 25445676);

-- --------------------------------------------------------

--
-- Table structure for table `reg_quarantine`
--

CREATE TABLE `reg_quarantine` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactnum` varchar(10) NOT NULL,
  `centerid` int(11) NOT NULL,
  `centername` varchar(100) NOT NULL,
  `datein` date NOT NULL,
  `bedtype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_quarantine`
--

INSERT INTO `reg_quarantine` (`pid`, `fname`, `lname`, `address`, `contactnum`, `centerid`, `centername`, `datein`, `bedtype`) VALUES
(7, 'srilakshmi', 'bhat', 'bangalore', '9916310298', 101, 'treebo trend', '2021-01-15', 'vip'),
(8, 'srinidhi', 'bhat', 'bangalore', '7406974801', 102, 'haj bhavan', '2020-12-25', 'vip'),
(9, 'narayana', 'rao', 'delhi', '8987467399', 103, 'OYO Rajmahal comforts', '2021-01-06', 'general'),
(10, 'nidhi', 'p', 'mumbai', '7677645367', 106, 'Akash hospital', '2021-01-06', 'general'),
(11, 'sumedha', 'g', 'surat', '8775342152', 104, 'Keys Hotel', '2021-01-06', 'general'),
(12, 'vaishnavi', 'k', 'dsatm', '7777777777', 101, 'treebo trend ', '2021-01-05', 'vip'),
(13, 'rashid', 'm', 'bangalore', '6767676767', 104, 'Keys hotel', '2021-01-20', 'vip'),
(17, 'shreyas', 'murthy', 'bangalore', '9158484895', 104, 'Keys hotel', '2021-01-14', 'vip'),
(19, 'sowmya', 'raghu', 'puttenahalli', '8971170178', 106, 'akash hospital', '2021-01-21', 'general'),
(20, 'soujanya', 'murthy', 'bangalore', '9879879879', 104, 'Keys hotel', '2021-01-06', 'vip'),
(21, 'srihari', 'bhat', 'bangalore', '9113653064', 104, 'Keys Hotel', '2021-01-13', 'general'),
(22, 'aaa', 'sss', 'fff', '9996663636', 106, 'Akash Hospital', '2021-01-04', 'general'),
(23, 'kkk', 'kkk', 'zzz', '8888888888', 101, 'treebo trend', '2021-01-13', 'vip'),
(24, 'amena', 'husain', 'bellary', '9639519879', 101, 'treebo', '2021-01-19', 'general'),
(25, 'rasya', 'bhat', 'btm layout', '7417417417', 101, 'treebo trend', '2021-01-22', 'general');

--
-- Triggers `reg_quarantine`
--
DELIMITER $$
CREATE TRIGGER `decr_beds_vip` AFTER UPDATE ON `reg_quarantine` FOR EACH ROW BEGIN
IF(NEW.bedtype='vip') THEN
UPDATE quarantine_center SET vipbeds=vipbeds-1 WHERE centerid=NEW.centerid;
ELSE
UPDATE quarantine_center SET genbeds=genbeds-1 WHERE centerid=NEW.centerid;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `reg_testing`
--

CREATE TABLE `reg_testing` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contactnum` varchar(10) NOT NULL,
  `centerid` int(11) NOT NULL,
  `centername` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_testing`
--

INSERT INTO `reg_testing` (`pid`, `fname`, `lname`, `gender`, `age`, `address`, `contactnum`, `centerid`, `centername`) VALUES
(7, 'srilakshmi', 'bhat', 'FEMALE', 21, 'bangalore', '9916310298', 704, 'Sagar Hospital'),
(8, 'srinidhi', 'bhat', 'FEMALE', 20, 'bangalore', '7406974801', 704, 'Sagar Hospital'),
(9, 'narayana', 'rao', 'MALE', 45, 'delhi', '8987467399', 702, 'Apollo Hospitals'),
(10, 'nidhi', 'p', 'FEMALE', 15, 'mumbai', '7677645367', 703, 'SRL limited Fortis'),
(11, 'sumedha', 'g', 'FEMALE', 32, 'surat', '8775342152', 702, 'apollo'),
(12, 'vaishnavi', 'k', 'FEMALE', 50, 'dsatm', '7777777777', 705, 'urban primary health care'),
(13, 'rashid', 'm', 'MALE', 22, 'bangalore', '6767676767', 704, 'sagar'),
(17, 'shreyas', 'murthy', 'MALE', 22, 'bangalore', '9158484895', 705, 'Urban Primary Health Centre'),
(19, 'sowmya', 'raghu', 'FEMALE', 20, 'puttenahalli', '8971170178', 702, 'Lab Services Apollo Hospitals'),
(20, 'soujanya', 'murthy', 'FEMALE', 16, 'bangalore', '9879879879', 702, 'Lab Services Apollo Hospitals'),
(21, 'srihari', 'bhat', 'MALE', 16, 'bangalore', '9113653064', 702, 'Lab Services Apollo Hospitals'),
(22, 'aaa', 'sss', 'MALE', 44, 'fff', '9996663636', 702, 'Lab Services Apollo Hospitals'),
(23, 'kkk', 'kkk', 'MALE', 33, 'zzz', '8888888888', 701, 'jayadeva'),
(24, 'amena', 'husain', 'FEMALE', 20, 'bellary', '9639519879', 701, 'aa'),
(25, 'rasya', 'bhat', 'MALE', 40, 'btm layout', '7417417417', 701, 'jayadeva');

-- --------------------------------------------------------

--
-- Table structure for table `testing_center`
--

CREATE TABLE `testing_center` (
  `centerid` int(11) NOT NULL,
  `centername` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `district` varchar(100) NOT NULL,
  `contactnum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testing_center`
--

INSERT INTO `testing_center` (`centerid`, `centername`, `address`, `district`, `contactnum`) VALUES
(701, 'Sri Jayadeva Institute of Cardiovascular Sciences and Research', 'Heart hospital, Bannerghatta Main Rd', 'Bangalore 560065', 27666755),
(702, 'Lab Services Apollo Hospitals', 'Medical laboratory,154, 11, Bannerghatta Main', 'Bangalore 560065', 20989889),
(703, 'SRL Limited at Fortis hospitals', '154, 9, Bannerghatta Main Rd, opposite IIM, Sahyadri Layout, Panduranga Nagar', 'Bengaluru 560076', 27676554),
(704, 'Sagar Hospitals', '#44, 54, 30th Cross Rd, Jayanagara', 'Bangalore 560072', 42888888),
(705, 'Urban Primary Health Centre', '78, 4th Main Rd, Arekere MICO Layout 2nd stage, Lakshmi Layout', 'Bangalore 560076', 45090090);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`contactnum`);

--
-- Indexes for table `quarantine_center`
--
ALTER TABLE `quarantine_center`
  ADD PRIMARY KEY (`centerid`);

--
-- Indexes for table `reg_quarantine`
--
ALTER TABLE `reg_quarantine`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reg_testing`
--
ALTER TABLE `reg_testing`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `testing_center`
--
ALTER TABLE `testing_center`
  ADD PRIMARY KEY (`centerid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reg_testing`
--
ALTER TABLE `reg_testing`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
