-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 04, 2020 at 04:03 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(4) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(30) NOT NULL,
  `adminUsrName` varchar(30) NOT NULL,
  `adminDob` varchar(10) NOT NULL,
  `adminPass` varchar(30) NOT NULL,
  `adminPhone` bigint(10) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `adminName`, `adminUsrName`, `adminDob`, `adminPass`, `adminPhone`) VALUES
(1, 'Admin1', 'Admin1', '06/08/1996', 'admin1', 7412365896),
(2, 'Admin2', 'Admin2', '07/08/2000', 'admin2', 7415963208);

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

DROP TABLE IF EXISTS `appoinment`;
CREATE TABLE IF NOT EXISTS `appoinment` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `appoinment_id` varchar(10) NOT NULL,
  `patient_id` int(4) NOT NULL,
  `doctor_id` int(4) NOT NULL,
  `doctor_name` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `patient_name` varchar(30) NOT NULL,
  `appointment_date` varchar(10) NOT NULL,
  `appoinment_time` varchar(10) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `department` (`department`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appoinment`
--

INSERT INTO `appoinment` (`id`, `appoinment_id`, `patient_id`, `doctor_id`, `doctor_name`, `department`, `patient_name`, `appointment_date`, `appoinment_time`, `phone`, `email`, `status`) VALUES
(71, 'APT-05261', 35, 43, 'Febin Johnson', 'Generic Medicine', 'Evin Johnson', '27/05/2020', '1:48 AM', 9446278031, 'evinnj@gmail.com', 'Active'),
(70, 'APT-11141', 36, 41, 'Alex John', 'Generic Medicine', 'Test1', '15/11/2019', '12:40 AM', 8523012365, 'test1@gmail.com', 'Inactive'),
(66, 'APT-11141', 34, 42, 'Herdin Jackson', 'Generic Medicine', 'Febin Johnson ', '15/11/2019', '12:12 AM', 9526312034, 'febinnj@gmail.com', 'Inactive'),
(67, 'APT-11142', 34, 42, 'Herdin Jackson', 'Generic Medicine', 'Febin Johnson ', '15/11/2019', '12:22 AM', 9526312034, 'febinnj@gmail.com', 'Active'),
(68, 'APT-11141', 35, 41, 'Alex John', 'ENT', 'Evin Johnson', '15/11/2019', '12:25 AM', 9446278031, 'evinnj@gmail.com', 'Inactive'),
(69, 'APT-11141', 36, 41, 'Alex John', 'Cardiology', 'Test1', '15/11/2019', '12:38 AM', 8523012365, 'test1@gmail.com', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(3) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(30) NOT NULL,
  `department_status` varchar(25) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `department_status`) VALUES
(29, 'Generic Medicine', 'Active'),
(30, 'Anesthesia', 'Active'),
(28, 'ENT', 'Active'),
(27, 'Cardiology', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `doctor_id` int(4) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(30) NOT NULL,
  `department` varchar(30) DEFAULT NULL,
  `userName` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `dateOfBirth` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `addrss` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `Province` varchar(30) NOT NULL,
  `postalCode` int(6) NOT NULL,
  `phone` bigint(10) DEFAULT NULL,
  `profilePic` longblob NOT NULL,
  `shortBio` varchar(100) NOT NULL,
  `docStatus` varchar(10) NOT NULL,
  PRIMARY KEY (`doctor_id`),
  KEY `department` (`department`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `department`, `userName`, `email`, `pass`, `dateOfBirth`, `gender`, `addrss`, `city`, `Province`, `postalCode`, `phone`, `profilePic`, `shortBio`, `docStatus`) VALUES
(43, 'Febin Johnson', 'Anesthesia', 'febinnj', 'febinnj@gmail.com', 'febinnj', '15/11/2019', 'Male', 'Thrissur', 'Thrissur', 'Kerala', 680541, 7896541230, 0x666562696e204a6f686e736f6e2e6a666966, 'Anestheisa Specialist', ' Active'),
(42, 'Herdin Jackson', 'Cardiology', 'herdin90', 'herdin90@gmail.com', 'herdin90', '14/11/2019', 'Male', 'Kozhikode', 'Kozhikode', 'Kerala', 657591, 8521479630, 0x3136343630393732352e77656270, 'Caridilogy Head', ' Active'),
(41, 'Alex John', 'Generic Medicine', 'alex92', 'alex92@gmail.com', 'alex92', '14/11/2019', 'Male', 'Thrissur', 'Thrissur', 'Kerala', 680547, 7896541230, 0x646f63746f722e6a7067, 'Generic Medicine Practitioner', ' Active');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_schedule`
--

DROP TABLE IF EXISTS `doctor_schedule`;
CREATE TABLE IF NOT EXISTS `doctor_schedule` (
  `schedule_id` int(5) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(30) NOT NULL,
  `doctorName` varchar(30) NOT NULL,
  `availDays` varchar(30) NOT NULL,
  `startTime` varchar(10) NOT NULL,
  `endTime` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_schedule`
--

INSERT INTO `doctor_schedule` (`schedule_id`, `department_name`, `doctorName`, `availDays`, `startTime`, `endTime`, `status`) VALUES
(11, 'Anesthesia', 'Febin Johnson', 'Sunday,Tuesday,Thursday', '12:45 AM', '12:45 AM', 'Inactive'),
(10, 'Cardiology', 'Herdin Jackson', 'Wednesday,Thursday,Friday', '10:00 AM', '1:30 PM', 'Active'),
(9, 'Generic Medicine', 'Alex John', 'Sunday,Monday,Tuesday', '11:00 AM', '4:00 PM', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int(5) NOT NULL AUTO_INCREMENT,
  `empName` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `joinDate` varchar(30) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `role` varchar(30) NOT NULL,
  `empStatus` varchar(10) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `empName`, `age`, `userName`, `email`, `password`, `joinDate`, `phone`, `role`, `empStatus`) VALUES
(17, 'Lola Jacob C T', 33, 'lola33', 'lola33@gmail.com', 'lola33', '15/11/2019', 7412589627, 'Accountant', 'Active'),
(16, 'Serin Davis', 25, 'serin25', 'serin25@gmail.com', 'serin25', '14/11/2019', 9630258738, 'Laboratorist', 'Active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employeelist`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `employeelist`;
CREATE TABLE IF NOT EXISTS `employeelist` (
`emp_id` int(5)
,`empName` varchar(20)
,`email` varchar(100)
,`phone` bigint(10)
,`joinDate` varchar(30)
,`role` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
CREATE TABLE IF NOT EXISTS `medicine` (
  `medicine_id` int(4) NOT NULL,
  `medicine_name` varchar(30) NOT NULL,
  `medicine_exp` date NOT NULL,
  `medicine_stock` int(10) NOT NULL,
  PRIMARY KEY (`medicine_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` int(4) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(30) NOT NULL,
  `consultingDoctor` varchar(100) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `pssword` varchar(30) DEFAULT NULL,
  `dateOfBirth` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `addrss` varchar(200) NOT NULL,
  `city` varchar(30) NOT NULL,
  `province` varchar(30) NOT NULL,
  `postalCode` int(7) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `UserPic` longblob NOT NULL,
  `patientStatus` varchar(10) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `consultingDoctor`, `username`, `email`, `pssword`, `dateOfBirth`, `gender`, `addrss`, `city`, `province`, `postalCode`, `phone`, `UserPic`, `patientStatus`) VALUES
(34, 'Febin Johnson ', 'koli', 'febinnj', 'febinnj@gmail.com', 'febinnj', '06/08/1996', 'Male', 'Neelankavil House Kolangattukara', 'Thrissur', 'Kerala', 680541, 9526312034, 0x666562696e204a6f686e736f6e2e6a666966, 'Active'),
(35, 'Evin Johnson', 'aszdxc', 'evinnj', 'evinnj@gmail.com', 'evinnj', '15/11/2019', 'Male', 'Kolangattukara', 'Thrissur', 'Kerala', 680541, 9446278031, 0x617373617373696e735f63726565645f657a696f2d74322e6a7067, 'Active'),
(36, 'Test1', 'test', 'Test1', 'test1@gmail.com', 'test1', '15/11/2019', 'Male', 'Thrissur', 'Thrissur', 'Kerala', 789456, 8523012365, 0x666562696e204a6f686e736f6e2e6a666966, 'Active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `patientlist`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `patientlist`;
CREATE TABLE IF NOT EXISTS `patientlist` (
`patient_name` varchar(30)
,`dateOfBirth` varchar(20)
,`addrss` varchar(200)
,`phone` bigint(10)
,`email` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
CREATE TABLE IF NOT EXISTS `pharmacy` (
  `order_id` int(4) NOT NULL,
  `doctor_id` int(4) NOT NULL,
  `patient_id` int(4) NOT NULL,
  `medicine_id` int(4) NOT NULL,
  `medicine_name` varchar(30) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_id` (`patient_id`),
  KEY `medicine_id` (`medicine_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE IF NOT EXISTS `prescription` (
  `prescription_id` int(4) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(4) NOT NULL,
  `patient_id` int(4) NOT NULL,
  `medicine_name` varchar(250) NOT NULL,
  `currentDate` varchar(10) NOT NULL,
  PRIMARY KEY (`prescription_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_id` (`patient_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescription_id`, `doctor_id`, `patient_id`, `medicine_name`, `currentDate`) VALUES
(24, 41, 36, 'three,Two,one', '2019-11-14'),
(23, 41, 36, 'one,two,Three', '2019-11-14'),
(22, 41, 35, 'MEdicine Two , Medicine Ten', '2019-11-14'),
(21, 41, 35, 'MEdineon,medintwo', '2019-11-14'),
(18, 41, 34, 'Medicine one 1-0-1,Medicine two 1-0-0,Medicine three 0-1-0', '2019-11-14'),
(19, 42, 34, 'The MEdicine,The Medicine', '2019-11-14'),
(20, 42, 34, 'The MEdicine,The Medicine', '2019-11-14'),
(15, 41, 34, 'Medicine one 1-0-1,Medicine two 1-0-0,Medicine three 0-1-0', '2019-11-14');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `test_id` int(10) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(10) NOT NULL,
  `patient_id` int(10) NOT NULL,
  `test` varchar(250) NOT NULL,
  `currentDate` varchar(10) NOT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `doctor_id`, `patient_id`, `test`, `currentDate`) VALUES
(10, 41, 35, 'Test20,Test25', '2019-11-14'),
(8, 41, 34, 'Test one,Testtwo', '2019-11-14');

-- --------------------------------------------------------

--
-- Structure for view `employeelist`
--
DROP TABLE IF EXISTS `employeelist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employeelist`  AS  select `employee`.`emp_id` AS `emp_id`,`employee`.`empName` AS `empName`,`employee`.`email` AS `email`,`employee`.`phone` AS `phone`,`employee`.`joinDate` AS `joinDate`,`employee`.`role` AS `role` from `employee` ;

-- --------------------------------------------------------

--
-- Structure for view `patientlist`
--
DROP TABLE IF EXISTS `patientlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `patientlist`  AS  select `patient`.`patient_name` AS `patient_name`,`patient`.`dateOfBirth` AS `dateOfBirth`,`patient`.`addrss` AS `addrss`,`patient`.`phone` AS `phone`,`patient`.`email` AS `email` from `patient` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
