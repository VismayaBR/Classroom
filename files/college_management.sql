-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 09:38 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attend_id` int(11) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `department_id` int(11) NOT NULL,
  `a_date` varchar(100) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `attend` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attend_id`, `reg_no`, `department_id`, `a_date`, `sem_id`, `subject`, `attend`) VALUES
(1, '1101', 1, '2020-11-10', 3, 'Statistics', 'present'),
(2, '1102', 1, '2020-11-10', 3, 'Statistics', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `book_details_tb`
--

CREATE TABLE `book_details_tb` (
  `book_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `book_name` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `shelf_no` varchar(20) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `book_edition` int(11) DEFAULT NULL,
  `book_added_on` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_details_tb`
--

INSERT INTO `book_details_tb` (`book_id`, `category_id`, `book_name`, `author`, `shelf_no`, `price`, `book_edition`, `book_added_on`) VALUES
(1, 19, 'Statistics for management', 'Richard. I. Levin & David. S. Rubin', '14', '295', 7, '2020-01-02'),
(2, 19, 'Statistics for management', 'Richard. I. Levin & David. S. Rubin', '14', '295', 7, '2020-01-02'),
(3, 19, 'Statistics for management', 'Richard. I. Levin & David. S. Rubin', '14', '295', 7, '2020-01-02'),
(4, 18, 'Computer system architecture', 'M. Morris Mano', '18', '150', 3, '2020-01-02'),
(5, 18, 'Computer system architecture', 'M. Morris Mano', '18', '150', 3, '2020-01-02'),
(6, 18, 'Computer system architecture', 'M. Morris Mano', '18', '150', 3, '2020-01-02'),
(7, 18, 'Computer system architecture', 'M. Morris Mano', '18', '150', 3, '2020-01-02'),
(8, 18, 'Computer system architecture', 'M. Morris Mano', '18', '150', 3, '2020-01-02'),
(9, 19, 'Linear algebra', 'Kenneth Hoffman & Rey Kunze', '6', '150', 2, '2020-01-02'),
(10, 19, 'Linear algebra', 'Kenneth Hoffman & Rey Kunze', '6', '150', 2, '2020-01-02'),
(11, 19, 'Linear algebra', 'Kenneth Hoffman & Rey Kunze', '6', '150', 2, '2020-01-02'),
(12, 19, 'Linear algebra', 'Kenneth Hoffman & Rey Kunze', '6', '150', 2, '2020-01-02'),
(13, 19, 'Linear algebra', 'Kenneth Hoffman & Rey Kunze', '6', '150', 2, '2020-01-02'),
(14, 18, 'Structured computer organization', 'Andrew. S. Tanenbaum', '19', '225', 4, '2020-01-02'),
(15, 18, 'Structured computer organization', 'Andrew. S. Tanenbaum', '19', '225', 4, '2020-01-02'),
(16, 18, 'Structured computer organization', 'Andrew. S. Tanenbaum', '19', '225', 4, '2020-01-02'),
(17, 19, 'Probability and statistics for engineers', 'Richard. A. Johnson', '7', '195', 5, '2020-01-02'),
(18, 19, 'Probability and statistics for engineers', 'Richard. A. Johnson', '7', '195', 5, '2020-01-02'),
(19, 19, 'Probability and statistics for engineers', 'Richard. A. Johnson', '7', '195', 5, '2020-01-02'),
(20, 19, 'Probability and statistics for engineers', 'Richard. A. Johnson', '7', '195', 5, '2020-01-02'),
(22, 19, 'Mathematical statistics', 'John. E. Freund', '7', '225', 5, '2020-01-02'),
(23, 19, 'Mathematical statistics', 'John. E. Freund', '7', '225', 5, '2020-01-02'),
(24, 19, 'Mathematical statistics', 'John. E. Freund', '7', '225', 5, '2020-01-02'),
(25, 19, 'Mathematical statistics', 'John. E. Freund', '7', '225', 5, '2020-01-02'),
(26, 19, 'Mathematical statistics', 'John. E. Freund', '7', '225', 5, '2020-01-02'),
(27, 23, 'Economics', 'Samuelson Nordhans', '13', '250', 6, '2020-01-02'),
(28, 23, 'Economics', 'Samuelson Nordhans', '13', '250', 6, '2020-01-02'),
(29, 18, 'Computer programing in pascal', 'V. RajaRaman', '3', '125', 2, '2020-01-02'),
(30, 18, 'Computer programing in pascal', 'V. RajaRaman', '3', '125', 2, '2020-01-02'),
(31, 18, 'Computer programing in pascal', 'V. RajaRaman', '3', '125', 2, '2020-01-02'),
(32, 18, 'Computer programing in pascal', 'V. RajaRaman', '3', '125', 2, '2020-01-02'),
(33, 18, 'How to solve it by computer', 'R. G. Dromey', '6', '95', 0, '2020-01-02'),
(34, 18, 'How to solve it by computer', 'R. G. Dromey', '6', '95', 0, '2020-01-02'),
(35, 18, 'How to solve it by computer', 'R. G. Dromey', '6', '95', 0, '2020-01-02'),
(36, 18, 'How to solve it by computer', 'R. G. Dromey', '6', '95', 0, '2020-01-02'),
(37, 18, 'How to solve it by computer', 'R. G. Dromey', '6', '95', 0, '2020-01-02'),
(38, 19, 'Linear algebra', 'G. Hadley', '6', '155', 0, '2020-01-02'),
(39, 19, 'Linear algebra', 'G. Hadley', '6', '155', 0, '2020-01-02'),
(41, 19, 'Linear algebra', 'G. Hadley', '6', '155', 0, '2020-01-02'),
(42, 19, 'Linear algebra', 'G. Hadley', '6', '155', 0, '2020-01-02'),
(43, 18, 'Pascal-user manual and report', 'Andrew. B. Mickel & James . F.Miner', '3', '110', 4, '2020-01-02'),
(44, 18, 'Pascal-user manual and report', 'Andrew. B. Mickel & James . F.Miner', '3', '110', 4, '2020-01-02'),
(45, 18, 'Pascal-user manual and report', 'Andrew. B. Mickel & James . F.Miner', '3', '110', 4, '2020-01-02'),
(46, 18, 'Pascal-user manual and report', 'Andrew. B. Mickel & James . F.Miner', '3', '110', 4, '2020-01-02'),
(47, 18, 'Pascal-user manual and report', 'Andrew. B. Mickel & James . F.Miner', '3', '110', 4, '2020-01-02'),
(48, 19, 'An introduction to the theory of statistics', 'G. Udny Yule & M.G Kendall', '14', '295', 14, '2020-01-02'),
(49, 19, 'An introduction to the theory of statistics', 'G. Udny Yule & M.G Kendall', '14', '295', 14, '2020-01-02'),
(50, 19, 'An introduction to the theory of statistics', 'G. Udny Yule & M.G Kendall', '14', '295', 14, '2020-01-02'),
(51, 19, 'An introduction to the theory of statistics', 'G. Udny Yule & M.G Kendall', '14', '295', 14, '2020-01-02'),
(52, 19, 'An introduction to the theory of statistics', 'G. Udny Yule & M.G Kendall', '14', '295', 14, '2020-01-02'),
(53, 21, 'Financial management', 'I. M. Pandey', '13', '295', 8, '2020-01-02'),
(54, 21, 'Financial management', 'I. M. Pandey', '13', '295', 8, '2020-01-02'),
(55, 21, 'Financial management', 'I. M. Pandey', '13', '295', 8, '2020-01-02'),
(56, 21, 'Financial management', 'I. M. Pandey', '13', '295', 8, '2020-01-02'),
(57, 21, 'Financial management', 'I. M. Pandey', '13', '295', 8, '2020-01-02'),
(58, 18, 'Computer architecture and organization', 'John. P. Hayes', '19', '324', 3, '2020-01-02'),
(59, 18, 'Computer architecture and organization', 'John. P. Hayes', '19', '324', 3, '2020-01-02'),
(60, 18, 'Computer architecture and organization', 'John. P. Hayes', '19', '324', 3, '2020-01-02'),
(62, 18, 'Computer architecture and parallel processing', 'Hai Hwang & Faye. A. Frriggs', '18', '346', 0, '2020-01-02'),
(63, 18, 'Computer architecture and parallel processing', 'Hai Hwang & Faye. A. Frriggs', '18', '346', 0, '2020-01-02'),
(64, 18, 'Computer architecture and parallel processing', 'Hai Hwang & Faye. A. Frriggs', '18', '346', 0, '2020-01-02'),
(66, 18, 'Computer architecture and parallel processing', 'Hai Hwang & Faye. A. Frriggs', '18', '346', 0, '2020-01-02'),
(67, 19, 'Discrete mathematical structure with application to computer science', 'J.P.Tremblay & R Manohar', '6', '245', 0, '2020-01-02'),
(68, 19, 'Discrete mathematical structure with application to computer science', 'J.P.Tremblay & R Manohar', '6', '245', 0, '2020-01-02'),
(69, 19, 'Discrete mathematical structure with application to computer science', 'J.P.Tremblay & R Manohar', '6', '245', 0, '2020-01-02'),
(70, 19, 'Discrete mathematical structure with application to computer science', 'J.P.Tremblay & R Manohar', '6', '245', 0, '2020-01-02'),
(71, 19, 'Discrete mathematical structure with application to computer science', 'J.P.Tremblay & R Manohar', '6', '245', 0, '2020-01-02'),
(72, 18, 'Datastructure and algorithms', 'Alfred. V. Aho , John.E.Hopcroft  & Jeffrey D Ullman', '10', '225', 0, '2020-01-02'),
(73, 18, 'Datastructure and algorithms', 'Alfred. V. Aho , John.E.Hopcroft  & Jeffrey D Ullman', '10', '225', 0, '2020-01-02'),
(74, 18, 'Datastructure and algorithms', 'Alfred. V. Aho , John.E.Hopcroft  & Jeffrey D Ullman', '10', '225', 0, '2020-01-02'),
(75, 18, 'Datastructure and algorithms', 'Alfred. V. Aho , John.E.Hopcroft  & Jeffrey D Ullman', '10', '225', 0, '2020-01-02'),
(76, 18, 'Datastructure and algorithms', 'Alfred. V. Aho , John.E.Hopcroft  & Jeffrey D Ullman', '10', '225', 0, '2020-01-02'),
(77, 19, 'Numerical method for scientific and engineering computation', 'M. K. Jain ,S R K Iyengr & R K Jain', '7', '175', 3, '2020-01-02'),
(78, 19, 'Numerical method for scientific and engineering computation', 'M. K. Jain ,S R K Iyengr & R K Jain', '7', '175', 3, '2020-01-02'),
(79, 19, 'Numerical method for scientific and engineering computation', 'M. K. Jain ,S R K Iyengr & R K Jain', '7', '175', 3, '2020-01-02'),
(80, 19, 'Numerical method for scientific and engineering computation', 'M. K. Jain ,S R K Iyengr & R K Jain', '7', '175', 3, '2020-01-02'),
(81, 19, 'Numerical method for scientific and engineering computation', 'M. K. Jain ,S R K Iyengr & R K Jain', '7', '175', 3, '2020-01-02'),
(82, 18, 'Datastructure using pascal', 'Aaron M Tenenbaum Moshe J Augenstein', '10', '225', 2, '2020-01-02'),
(83, 18, 'Datastructure using pascal', 'Aaron M Tenenbaum Moshe J Augenstein', '10', '225', 2, '2020-01-02'),
(84, 18, 'Datastructure using pascal', 'Aaron M Tenenbaum Moshe J Augenstein', '10', '225', 2, '2020-01-02'),
(85, 18, 'Datastructure using pascal', 'Aaron M Tenenbaum Moshe J Augenstein', '10', '225', 2, '2020-01-02'),
(86, 18, 'Datastructure using pascal', 'Aaron M Tenenbaum Moshe J Augenstein', '10', '225', 2, '2020-01-02'),
(87, 19, 'Probability and statistics for engineers', 'Miller & Freunds', '7', '195', 5, '2020-01-02'),
(88, 19, 'Probability and statistics for engineers', 'Miller & Freunds', '7', '195', 5, '2020-01-02'),
(89, 19, 'Probability and statistics for engineers', 'Miller & Freunds', '7', '195', 5, '2020-01-02'),
(90, 19, 'Probability and statistics for engineers', 'Miller & Freunds', '7', '195', 5, '2020-01-02'),
(91, 19, 'Probability and statistics for engineers', 'Miller & Freunds', '7', '195', 5, '2020-01-02'),
(92, 19, 'Combinatorics:theory and applications', 'Krishnamurthy', '7', '250', 0, '2020-01-02'),
(93, 19, 'Combinatorics:theory and applications', 'Krishnamurthy', '7', '250', 0, '2020-01-02'),
(94, 19, 'Combinatorics:theory and applications', 'Krishnamurthy', '7', '250', 0, '2020-01-02'),
(95, 19, 'Combinatorics:theory and applications', 'Krishnamurthy', '7', '250', 0, '2020-01-02'),
(96, 20, 'Microprocessors and interfacing', 'Douglas.V. Hall', '12', '275', 2, '2020-01-02'),
(97, 20, 'Microprocessors and interfacing', 'Douglas.V. Hall', '12', '275', 2, '2020-01-02'),
(98, 20, 'Microprocessors and interfacing', 'Douglas.V. Hall', '12', '275', 2, '2020-01-02'),
(100, 20, 'Microprocessors and interfacing', 'Douglas.V. Hall', '12', '275', 2, '2020-01-02'),
(101, 19, 'Statistics for management', 'Richard Levin , Rubin', '14', '395', 7, '2020-01-02'),
(102, 19, 'Statistics for management', 'Richard Levin , Rubin', '14', '395', 7, '2020-01-02'),
(103, 19, 'Statistics for management', 'Richard Levin , Rubin', '14', '395', 7, '2020-01-02'),
(104, 19, 'Statistics for management', 'Richard Levin , Rubin', '14', '395', 7, '2020-01-02'),
(105, 19, 'Statistics for management', 'Richard Levin , Rubin', '14', '395', 7, '2020-01-02'),
(106, 20, 'Microprocessor architecture, Programming and Applications with the 8085', 'Gaonkar', '12', '245', 4, '2020-01-02'),
(107, 20, 'Microprocessor architecture, Programming and Applications with the 8085', 'Gaonkar', '12', '245', 4, '2020-01-02'),
(108, 20, 'Microprocessor architecture, Programming and Applications with the 8085', 'Gaonkar', '12', '245', 4, '2020-01-02'),
(109, 20, 'Microprocessor architecture, Programming and Applications with the 8085', 'Gaonkar', '12', '245', 4, '2020-01-02'),
(110, 20, 'Microprocessor architecture, Programming and Applications with the 8085', 'Gaonkar', '12', '245', 4, '2020-01-02'),
(111, 18, 'Data structures and Program design', 'Robert L Kruse', '10', '175', 3, '2020-01-02'),
(112, 18, 'Data structures and Program design', 'Robert L Kruse', '10', '175', 3, '2020-01-02'),
(113, 18, 'Data structures and Program design', 'Robert L Kruse', '10', '175', 3, '2020-01-02'),
(114, 18, 'Data structures and Program design', 'Robert L Kruse', '10', '175', 3, '2020-01-02'),
(115, 18, 'Data structures and Program design', 'Robert L Kruse', '10', '175', 3, '2020-01-02'),
(116, 19, 'Graph Theory', 'Narsingh Deo', '7', '150', 0, '2020-01-02'),
(117, 19, 'Graph Theory', 'Narsingh Deo', '7', '150', 0, '2020-01-02'),
(118, 19, 'Graph Theory', 'Narsingh Deo', '7', '150', 0, '2020-01-02'),
(119, 19, 'Graph Theory', 'Narsingh Deo', '7', '150', 0, '2020-01-02'),
(120, 19, 'Graph Theory', 'Narsingh Deo', '7', '150', 0, '2020-01-02'),
(121, 19, 'Graph Theory', 'Harary', '7', '135', 0, '2020-01-02'),
(122, 19, 'Graph Theory', 'Harary', '7', '135', 0, '2020-01-02'),
(123, 19, 'Graph Theory', 'Harary', '7', '135', 0, '2020-01-02'),
(124, 19, 'Graph Theory', 'Harary', '7', '135', 0, '2020-01-02'),
(125, 19, 'Graph Theory', 'Harary', '7', '135', 0, '2020-01-02'),
(126, 20, 'Micro computer system: The 8086/8088 family', 'Liu & Gibson', '12', '175', 2, '2020-01-02'),
(127, 20, 'Micro computer system: The 8086/8088 family', 'Liu & Gibson', '12', '175', 2, '2020-01-02'),
(128, 18, 'Fundamentals of data structures', 'Horowitz , Ellis & Sahny', '10', '175', 0, '2020-01-02'),
(129, 18, 'Design and analysis of experiment', 'M N Das', '8', '175', 0, '2020-01-02'),
(130, 18, 'The art of computer programming vol 1', 'Donald E Knuth', '2', '$7.75 ', 3, '2020-01-02'),
(131, 18, 'The art of computer programming vol 1', 'Donald E Knuth', '2', '$7.75 ', 3, '2020-01-02'),
(132, 18, 'The art of computer programming vol 1', 'Donald E Knuth', '2', '$7.75 ', 3, '2020-01-02'),
(133, 18, 'The art of computer programming vol 1', 'Donald E Knuth', '2', '$7.75 ', 3, '2020-01-02'),
(134, 18, 'The art of computer programming vol 1', 'Donald E Knuth', '2', '$7.75 ', 3, '2020-01-02'),
(135, 18, 'The art of computer programming vol 3', 'donald E Knuth', '2', '$9.95 ', 2, '2020-01-02'),
(136, 18, 'The art of computer programming vol 3', 'donald E Knuth', '2', '$9.95 ', 2, '2020-01-02'),
(137, 18, 'The art of computer programming vol 3', 'donald E Knuth', '2', '$9.95 ', 2, '2020-01-02'),
(138, 18, 'The art of computer programming vol 3', 'donald E Knuth', '2', '$9.95 ', 2, '2020-01-02'),
(139, 18, 'The art of computer programming vol 3', 'donald E Knuth', '2', '$9.95 ', 2, '2020-01-02'),
(140, 18, 'Numerical algorithms', 'Krishnamurthy & Sen', '7', '295', 2, '2020-01-02'),
(141, 18, 'Numerical algorithms', 'Krishnamurthy & Sen', '7', '295', 2, '2020-01-02'),
(142, 18, 'Numerical algorithms', 'Krishnamurthy & Sen', '7', '295', 2, '2020-01-02'),
(143, 18, 'Numerical algorithms', 'Krishnamurthy & Sen', '7', '295', 2, '2020-01-02'),
(144, 18, 'Numerical algorithms', 'Krishnamurthy & Sen', '7', '295', 2, '2020-01-02'),
(145, 19, 'Discrete mathematical structures with application to computer science', 'J P Tremblay & R Manohar', '6', '250', 0, '2020-01-02'),
(146, 19, 'Discrete mathematical structures with application to computer science', 'J P Tremblay & R Manohar', '6', '250', 0, '2020-01-02'),
(147, 19, 'Discrete mathematical structures with application to computer science', 'J P Tremblay & R Manohar', '6', '250', 0, '2020-01-02'),
(148, 19, 'Discrete mathematical structures with application to computer science', 'J P Tremblay & R Manohar', '6', '250', 0, '2020-01-02'),
(149, 19, 'Discrete mathematical structures with application to computer science', 'J P Tremblay & R Manohar', '6', '250', 0, '2020-01-02'),
(150, 18, 'Programming in ANSI C', 'E Balaguruswamy', '20', '150', 2, '2020-01-02'),
(151, 18, 'Multimedia on the web', 'M C Gloughlin & Stephen', '2', '250', 2, '2020-01-02'),
(152, 18, 'Programming in ANSI C', 'E Balaguruswamy', '20', '150', 2, '2020-01-02'),
(153, 18, 'Programming in ANSI C', 'E Balaguruswamy', '20', '150', 2, '2020-01-02'),
(154, 18, 'Programming in ANSI C', 'E Balaguruswamy', '20', '150', 2, '2020-01-02'),
(155, 18, 'Programming in C', 'Stephen G Kochan', '20', '150', 1, '2020-01-02'),
(156, 18, 'Programming in C', 'Stephen G Kochan', '20', '150', 1, '2020-01-02'),
(157, 18, 'Programming in C', 'Stephen G Kochan', '20', '150', 1, '2020-01-02'),
(158, 18, 'Programming in C', 'Stephen G Kochan', '20', '150', 1, '2020-01-02'),
(159, 18, 'Programming in C', 'Stephen G Kochan', '20', '150', 1, '2020-01-02'),
(161, 18, 'The C programming langauge', 'Brian W Kernighan & Dennis M Ritchie', '20', '95', 2, '2020-01-02'),
(162, 18, 'The C programming langauge', 'Brian W Kernighan & Dennis M Ritchie', '20', '95', 2, '2020-01-02'),
(163, 18, 'The C programming langauge', 'Brian W Kernighan & Dennis M Ritchie', '20', '95', 2, '2020-01-02'),
(164, 18, 'The C programming langauge', 'Brian W Kernighan & Dennis M Ritchie', '20', '95', 2, '2020-01-02'),
(165, 18, 'Structured computer organisation', 'Andrew S Tanenbaum', '19', '225', 4, '2020-01-02'),
(166, 18, 'Structured computer organisation', 'Andrew S Tanenbaum', '19', '225', 4, '2020-01-02'),
(167, 18, 'Structured computer organisation', 'Andrew S Tanenbaum', '19', '225', 4, '2020-01-02'),
(168, 18, 'Structured computer organisation', 'Andrew S Tanenbaum', '19', '225', 4, '2020-01-02'),
(169, 18, 'Structured computer organisation', 'Andrew S Tanenbaum', '19', '225', 4, '2020-01-02'),
(170, 20, 'Basics electronics', 'B L Theraja', '11', '165', 0, '2020-01-02'),
(171, 20, 'Basics electronics', 'B L Theraja', '11', '165', 0, '2020-01-02'),
(172, 20, 'Basics electronics', 'B L Theraja', '11', '165', 0, '2020-01-02'),
(173, 20, 'Basics electronics', 'B L Theraja', '11', '165', 0, '2020-01-02'),
(174, 20, 'Basics electronics', 'B L Theraja', '11', '165', 0, '2020-01-02'),
(175, 20, 'Principles of electronics', 'V K Mehta', '11', '115', 0, '2020-01-02'),
(176, 20, 'Principles of electronics', 'V K Mehta', '11', '115', 0, '2020-01-02'),
(177, 20, 'Principles of electronics', 'V K Mehta', '11', '115', 0, '2020-01-02'),
(179, 18, 'Fundamentals of object oriented design in UML', 'Meilir Page-Jones', '3', '325', 0, '2020-01-02'),
(181, 19, 'Linear algebra', 'Kenneth Hoffman & Ray Kunze', '6', '150', 2, '2020-01-02'),
(182, 19, 'Linear algebra', 'Kenneth Hoffman & Ray Kunze', '6', '150', 2, '2020-01-02'),
(183, 19, 'Linear algebra', 'Kenneth Hoffman & Ray Kunze', '6', '150', 2, '2020-01-02'),
(184, 19, 'Linear algebra', 'Kenneth Hoffman & Ray Kunze', '6', '150', 2, '2020-01-02'),
(185, 18, 'Computer organisation', 'V Carl Hamacher', '18', '$7.50 ', 4, '2020-01-02'),
(186, 18, 'Computer organisation', 'V Carl Hamacher', '18', '$7.50 ', 4, '2020-01-02'),
(187, 18, 'Computer organisation', 'V Carl Hamacher', '18', '$7.50 ', 4, '2020-01-02'),
(188, 18, 'Computer organisation', 'V Carl Hamacher', '18', '$7.50 ', 4, '2020-01-02'),
(191, 19, 'Linear algebra', 'G Hadley', '6', '115', 5, '2020-01-02'),
(192, 18, 'Theory and problems of data structures', 'Seymour Lipschutz', '10', '$6.95 ', 5, '2020-01-02'),
(193, 18, 'Theory and problems of data structures', 'Seymour Lipschutz', '10', '$6.95 ', 5, '2020-01-02'),
(194, 18, 'Theory and problems of data structures', 'Seymour Lipschutz', '10', '$6.95 ', 5, '2020-01-02'),
(195, 18, 'Theory and problems of data structures', 'Seymour Lipschutz', '10', '$6.95 ', 5, '2020-01-02'),
(197, 18, 'Fudamentals of data structures', 'Ellis Horowitz', '10', '175', 0, '2020-01-02'),
(198, 18, 'Fudamentals of data structures', 'Ellis Horowitz', '10', '175', 0, '2020-01-02'),
(199, 18, 'Fudamentals of data structures', 'Ellis Horowitz', '10', '175', 0, '2020-01-02'),
(200, 18, 'Fudamentals of data structures', 'Ellis Horowitz', '10', '175', 0, '2020-01-02'),
(201, 18, 'Fudamentals of data structures', 'Ellis Horowitz', '10', '175', 0, '2020-01-02'),
(202, 18, 'An introduction to datastructure with application', 'John Paul Trembaly', '10', '235', 2, '2020-01-02'),
(203, 18, 'An introduction to datastructure with application', 'John Paul Trembaly', '10', '235', 2, '2020-01-02'),
(204, 18, 'An introduction to datastructure with application', 'John Paul Trembaly', '10', '235', 2, '2020-01-02'),
(205, 18, 'An introduction to datastructure with application', 'John Paul Trembaly', '10', '235', 2, '2020-01-02'),
(206, 18, 'An introduction to datastructure with application', 'John Paul Trembaly', '10', '235', 2, '2020-01-02'),
(207, 25, 'Lookback in anger', 'John Osborne', '14', '60', 0, '2020-01-02'),
(208, 25, 'Lookback in anger', 'John Osborne', '14', '60', 0, '2020-01-02'),
(209, 25, 'Lookback in anger', 'John Osborne', '14', '60', 0, '2020-01-02'),
(210, 25, 'Lookback in anger', 'John Osborne', '14', '60', 0, '2020-01-02'),
(211, 25, 'Lookback in anger', 'John Osborne', '14', '60', 0, '2020-01-02'),
(212, 18, 'Operating system concept', 'Silbertschatz & Galvin', '4', '325', 0, '2020-01-02'),
(213, 18, 'An introduction to database systems', 'C J Dali', '21', '', 0, '2020-01-02'),
(215, 18, 'Operation research an introduction', 'Hamadya. A. Toha', '6', '295', 6, '2020-01-02'),
(216, 18, 'Operation research an introduction', 'Hamadya. A. Toha', '6', '295', 6, '2020-01-02'),
(217, 18, 'Operation research an introduction', 'Hamadya. A. Toha', '6', '295', 6, '2020-01-02'),
(218, 18, 'Operation research an introduction', 'Hamadya. A. Toha', '6', '295', 6, '2020-01-02'),
(219, 18, 'Operation research an introduction', 'Hamadya. A. Toha', '6', '295', 6, '2020-01-02'),
(220, 19, 'Operation research ', 'Kanti Swarup,P. K. Guptha,Manmohan', '6', '150', 9, '2020-01-02'),
(221, 19, 'Operation research ', 'Kanti Swarup,P. K. Guptha,Manmohan', '6', '150', 9, '2020-01-02'),
(222, 19, 'Operation research ', 'Kanti Swarup,P. K. Guptha,Manmohan', '6', '150', 9, '2020-01-02'),
(223, 19, 'Operation research ', 'Kanti Swarup,P. K. Guptha,Manmohan', '6', '150', 9, '2020-01-02'),
(224, 19, 'Operation research ', 'Kanti Swarup,P. K. Guptha,Manmohan', '6', '150', 9, '2020-01-02'),
(225, 18, 'Operating system ', 'Staurt Modrict John & Danovon', '4', '375', 0, '2020-01-02'),
(226, 18, 'Operating system ', 'Staurt Modrict John & Danovon', '4', '375', 0, '2020-01-02'),
(227, 18, 'Operating system ', 'Staurt Modrict John & Danovon', '4', '375', 0, '2020-01-02'),
(228, 18, 'Operating system ', 'Staurt Modrict John & Danovon', '4', '375', 0, '2020-01-02'),
(229, 18, 'Operating system ', 'Staurt Modrict John & Danovon', '4', '375', 0, '2020-01-02'),
(230, 18, 'An introduction to operating systems', 'Harvey. M. Deitel', '4', '260', 2, '2020-01-02'),
(232, 18, 'An introduction to operating systems', 'Harvey. M. Deitel', '4', '260', 2, '2020-01-02'),
(233, 18, 'The designing the unix os', 'Maurice. J. Bach', '4', '195', 0, '2020-01-02'),
(234, 18, 'The designing the unix os', 'Maurice. J. Bach', '4', '195', 0, '2020-01-02'),
(235, 18, 'The designing the unix os', 'Maurice. J. Bach', '4', '195', 0, '2020-01-02'),
(236, 18, 'System programing and operating system', 'D. M. Dhomdheu', '3', '225', 2, '2020-01-02'),
(237, 18, 'System programing and operating system', 'D. M. Dhomdheu', '3', '225', 2, '2020-01-02'),
(238, 18, 'System programing and operating system', 'D. M. Dhomdheu', '3', '225', 2, '2020-01-02'),
(239, 18, 'System programing and operating system', 'D. M. Dhomdheu', '3', '225', 2, '2020-01-02'),
(240, 18, 'System programing and operating system', 'D. M. Dhomdheu', '3', '225', 2, '2020-01-02'),
(241, 18, 'System programing ', 'John. J. donovan', '8', '190', 0, '2020-01-02'),
(242, 18, 'System programing ', 'John. J. donovan', '8', '190', 0, '2020-01-02'),
(243, 18, 'System programing ', 'John. J. donovan', '8', '190', 0, '2020-01-02'),
(244, 18, 'System programing ', 'John. J. donovan', '8', '190', 0, '2020-01-02'),
(245, 18, 'System programing ', 'John. J. donovan', '8', '190', 0, '2020-01-02'),
(246, 18, 'Database system concepts', 'Abraham Silhartz,Henry. F. Korm & S. Sudharsan', '21', '650', 3, '2020-01-02'),
(247, 18, 'Database system concepts', 'Abraham Silhartz,Henry. F. Korm & S. Sudharsan', '21', '650', 3, '2020-01-02'),
(248, 18, 'Database system concepts', 'Abraham Silhartz,Henry. F. Korm & S. Sudharsan', '21', '650', 3, '2020-01-02'),
(249, 18, 'Principles of database system', 'Jeffrey. D. Ullman', '21', '176', 2, '2020-01-02'),
(250, 18, 'Principles of database system', 'Jeffrey. D. Ullman', '21', '176', 2, '2020-01-02'),
(251, 18, 'Principles of database system', 'Jeffrey. D. Ullman', '21', '176', 2, '2020-01-02'),
(252, 18, 'Principles of database system', 'Jeffrey. D. Ullman', '21', '176', 2, '2020-01-02'),
(253, 18, 'Principles of database system', 'Jeffrey. D. Ullman', '21', '176', 2, '2020-01-02'),
(254, 18, 'Compilers: principles techniques and tools', 'Aho, Alfred . V, Ravi Sethi & Ullman', '2', '395', 5, '2020-01-02'),
(255, 18, 'Artificial intelligence', 'Rich Elaine & Knight Kevin', '8', '220', 2, '2020-01-02'),
(256, 18, 'Software engineering', 'Pressman Rogar. S', '5', '445', 5, '2020-01-02'),
(257, 18, 'Analysis and design of information system', 'Senn James . A', '8', '87', 2, '2020-01-02'),
(258, 18, 'Analysis and design of information system', 'Senn James . A', '8', '87', 2, '2020-01-02'),
(259, 18, 'Analysis and design of information system', 'Senn James . A', '8', '87', 2, '2020-01-02'),
(260, 18, 'Analysis and design of information system', 'Senn James . A', '8', '87', 2, '2020-01-02'),
(262, 18, 'Analysis and design of information system', 'Senn James . A', '8', '87', 2, '2020-01-02'),
(263, 18, 'Analysis and design of information system', 'Senn James . A', '8', '87', 2, '2020-01-02'),
(264, 20, 'Microprocessors and microcomputer based system design', 'Mohammed Rafiquzzaman', '12', '350', 0, '2020-01-02'),
(265, 20, 'Microprocessors and microcomputer based system design', 'Mohammed Rafiquzzaman', '12', '350', 0, '2020-01-02'),
(266, 20, 'Microprocessors and microcomputer based system design', 'Mohammed Rafiquzzaman', '12', '350', 0, '2020-01-02'),
(267, 20, 'Microprocessors and microcomputer based system design', 'Mohammed Rafiquzzaman', '12', '350', 0, '2020-01-02'),
(268, 20, 'Microprocessors and microcomputer based system design', 'Mohammed Rafiquzzaman', '12', '350', 0, '2020-01-02'),
(269, 20, 'The intel microprocessor : architecture , programing and interfacing', 'Brey, Barry . B', '12', '350', 4, '2020-01-02'),
(270, 20, 'The intel microprocessor : architecture , programing and interfacing', 'Brey, Barry . B', '12', '350', 4, '2020-01-02'),
(271, 20, 'The intel microprocessor : architecture , programing and interfacing', 'Brey, Barry . B', '12', '350', 4, '2020-01-02'),
(272, 20, 'The intel microprocessor : architecture , programing and interfacing', 'Brey, Barry . B', '12', '350', 4, '2020-01-02'),
(273, 20, 'The intel microprocessor : architecture , programing and interfacing', 'Brey, Barry . B', '12', '350', 4, '2020-01-02'),
(274, 20, 'The intel microprocessor : architecture , programing and interfacing', 'Brey, Barry . B', '12', '350', 4, '2020-01-02'),
(275, 20, 'The intel microprocessor : architecture , programing and interfacing', 'Brey, Barry . B', '12', '350', 4, '2020-01-02'),
(276, 20, 'Microcomputer systems: the 8086-8088 family', 'Liu-yuching & Gibson, Gknet', '12', '195', 2, '2020-01-02'),
(277, 20, 'Microcomputer systems: the 8086-8088 family', 'Liu-yuching & Gibson, Gknet', '12', '195', 2, '2020-01-02'),
(278, 20, 'Microcomputer systems: the 8086-8088 family', 'Liu-yuching & Gibson, Gknet', '12', '195', 2, '2020-01-02'),
(279, 20, 'Microcomputer systems: the 8086-8088 family', 'Liu-yuching & Gibson, Gknet', '12', '195', 2, '2020-01-02'),
(280, 20, 'Microcomputer systems: the 8086-8088 family', 'Liu-yuching & Gibson, Gknet', '12', '195', 2, '2020-01-02'),
(281, 20, 'Microcomputer systems: the 8086-8088 family', 'Liu-yuching & Gibson, Gknet', '12', '195', 2, '2020-01-02'),
(282, 18, 'System analysis and design', 'Awad, Elias . M', '8', '200', 2, '2020-01-02'),
(283, 18, 'System analysis and design', 'Awad, Elias . M', '8', '200', 2, '2020-01-02'),
(284, 18, 'System analysis and design', 'Awad, Elias . M', '8', '200', 2, '2020-01-02'),
(285, 18, 'System analysis and design', 'Awad, Elias . M', '8', '200', 2, '2020-01-02'),
(287, 18, 'Elements of system analysis', 'Gore, Marvin & Stubbe John', '8', '190', 3, '2020-01-02'),
(288, 18, 'Elements of system analysis', 'Gore, Marvin & Stubbe John', '8', '190', 3, '2020-01-02'),
(289, 18, 'Elements of system analysis', 'Gore, Marvin & Stubbe John', '8', '190', 3, '2020-01-02'),
(290, 18, 'Elements of system analysis', 'Gore, Marvin & Stubbe John', '8', '190', 3, '2020-01-02'),
(291, 18, 'Elements of system analysis', 'Gore, Marvin & Stubbe John', '8', '190', 3, '2020-01-02'),
(292, 18, 'Elements of system analysis', 'Gore, Marvin & Stubbe John', '8', '190', 3, '2020-01-02'),
(293, 18, 'Elements of system analysis', 'Gore, Marvin & Stubbe John', '8', '190', 3, '2020-01-02'),
(294, 18, 'An introduction to datastructures with applications', 'Tremblay, Gean-pole & Sorinson Paul . G', '10', '235', 2, '2020-01-02'),
(295, 18, 'An introduction to datastructures with applications', 'Tremblay, Gean-pole & Sorinson Paul . G', '10', '235', 2, '2020-01-02'),
(296, 18, 'An introduction to datastructures with applications', 'Tremblay, Gean-pole & Sorinson Paul . G', '10', '235', 2, '2020-01-02'),
(297, 18, 'An introduction to datastructures with applications', 'Tremblay, Gean-pole & Sorinson Paul . G', '10', '235', 2, '2020-01-02'),
(298, 18, 'An introduction to datastructures with applications', 'Tremblay, Gean-pole & Sorinson Paul . G', '10', '235', 2, '2020-01-02'),
(300, 18, 'Fundamental of datastructures', 'Horowitz, Ellis & Sahni,Sartaj', '10', '230', 0, '2020-01-02'),
(301, 18, 'Fundamental of datastructures', 'Horowitz, Ellis & Sahni,Sartaj', '10', '230', 0, '2020-01-02'),
(302, 18, 'Fundamental of datastructures', 'Horowitz, Ellis & Sahni,Sartaj', '10', '230', 0, '2020-01-02'),
(303, 18, 'Fundamental of datastructures', 'Horowitz, Ellis & Sahni,Sartaj', '10', '230', 0, '2020-01-02'),
(304, 18, 'Fundamental of datastructures', 'Horowitz, Ellis & Sahni,Sartaj', '10', '230', 0, '2020-01-02'),
(306, 19, 'Numerical method for scientific and engineering computation', 'Jain M K, Iyengar S R K, and Jain R K', '7', '185', 3, '2020-01-02'),
(307, 19, 'Numerical method for scientific and engineering computation', 'Jain M K, Iyengar S R K, and Jain R K', '7', '185', 3, '2020-01-02'),
(308, 19, 'Numerical method for scientific and engineering copmutation', 'Jain M K, Iyengar S R K, and Jain R K', '7', '185', 3, '2020-01-02'),
(309, 19, 'Numerical method for scientific and engineering computation', 'Jain M K, Iyengar S R K, and Jain R K', '7', '185', 3, '2020-01-02'),
(310, 19, 'Numerical method for scientific and engineering computation', 'Jain M K, Iyengar S R K, and Jain R K', '7', '185', 3, '2020-01-02'),
(311, 19, 'Numerical algorithms  and computations in service and engineering', 'Krishnamurthy E V and Sen S K', '7', '295', 2, '2020-01-02'),
(312, 19, 'Numerical algorithms  and computations in service and engineering', 'Krishnamurthy E V and Sen S K', '7', '295', 2, '2020-01-02'),
(313, 19, 'Numerical algorithms  and computations in service and engineering', 'Krishnamurthy E V and Sen S K', '7', '295', 2, '2020-01-02'),
(314, 19, 'Numerical algorithms  and computations in service and engineering', 'Krishnamurthy E V and Sen S K', '7', '295', 2, '2020-01-02'),
(315, 19, 'Numerical algorithms  and computations in service and engineering', 'Krishnamurthy E V and Sen S K', '7', '295', 2, '2020-01-02'),
(316, 19, 'Numerical algorithms  and computations in service and engineering', 'Krishnamurthy E V and Sen S K', '7', '295', 2, '2020-01-02'),
(317, 18, 'Marketing management', 'Philip Katter', '13', '395', 0, '2020-01-02'),
(318, 21, 'Financial management: theory and practice', 'Prasanna  Chandra', '13', '350', 5, '2020-01-02'),
(319, 21, 'Financial management: theory and practice', 'Prasanna  Chandra', '13', '350', 5, '2020-01-02'),
(320, 19, 'Operations research', 'Kanti Swarup, Gupta P K and Manmohan', '6', '150', 9, '2020-01-02'),
(321, 19, 'Operations research', 'Kanti Swarup, Gupta P K and Manmohan', '6', '150', 9, '2020-01-02'),
(322, 18, 'Pinciples of database systems', 'Ullman, Jeffrey', '21', '176', 2, '2020-01-02'),
(323, 18, 'Pinciples of database systems', 'Ullman, Jeffrey', '21', '176', 2, '2020-01-02'),
(324, 18, 'Management: tasks, responsibilities, practices', 'Druckse, Peter F ', '13', '300', 0, '2020-01-02'),
(325, 18, 'Management: tasks, responsibilities, practices', 'Druckse, Peter F ', '13', '300', 0, '2020-01-02'),
(326, 18, 'Quantitative techniques in management', 'Vohrs N D', '13', '275', 2, '2020-01-02'),
(328, 18, 'Pinciples of database systems', 'Ullman, Jeffrey', '21', '176', 2, '2020-01-02'),
(329, 18, 'Pinciples of database systems', 'Ullman, Jeffrey', '21', '176', 2, '2020-01-02'),
(330, 18, 'The design and analysis of computer algorithms', 'Aho Alfred V, Hopcroft John E and Ullman Jeffrey D', '7', '270', 2, '2020-01-02'),
(331, 18, 'The design and analysis of computer algorithms', 'Aho Alfred V, Hopcroft John E and Ullman Jeffrey D', '7', '270', 2, '2020-01-02'),
(332, 18, 'The design and analysis of computer algorithms', 'Aho Alfred V, Hopcroft John E and Ullman Jeffrey D', '7', '270', 2, '2020-01-02'),
(333, 18, 'The design and analysis of computer algorithms', 'Aho Alfred V, Hopcroft John E and Ullman Jeffrey D', '7', '270', 2, '2020-01-02'),
(334, 18, 'Design and analysis of experiments ', 'Das M N and Giri N C', '8', '180', 2, '2020-01-02'),
(336, 18, 'Data structures and program design', 'Kruse  Robert L', '10', '225', 3, '2020-01-02'),
(338, 20, 'Micro processor architecture, programming and alications with the 8085', 'Gaonkar, Ramesh S', '12', '245', 4, '2020-01-02'),
(339, 20, 'Micro processor architecture, programming and alications with the 8085', 'Gaonkar, Ramesh S', '12', '245', 4, '2020-01-02'),
(341, 20, 'Micro processor architecture, programming and alications with the 8085', 'Gaonkar, Ramesh S', '12', '245', 4, '2020-01-02'),
(342, 18, 'Artificial intelligence: a new synthesis', 'Nilsson, Nils J', '8', '375', 0, '2020-01-02'),
(344, 18, 'Artificial intelligence: a new synthesis', 'Nilsson, Nils J', '8', '375', 0, '2020-01-02'),
(345, 18, 'Artificial intelligence: a new synthesis', 'Nilsson, Nils J', '8', '375', 0, '2020-01-02'),
(346, 18, 'Artificial intelligence', 'Rich, Elaine and Knight Kevin', '8', '220', 2, '2020-01-02'),
(347, 18, 'Artificial intelligence', 'Rich, Elaine and Knight Kevin', '8', '220', 2, '2020-01-02'),
(348, 18, 'Artificial intelligence', 'Rich, Elaine and Knight Kevin', '8', '220', 2, '2020-01-02'),
(349, 18, 'Artificial intelligence', 'Rich, Elaine and Knight Kevin', '8', '220', 2, '2020-01-02'),
(350, 18, 'Artificial intelligence', 'Rich, Elaine and Knight Kevin', '8', '220', 2, '2020-01-02'),
(351, 18, 'Data structures using c and c++', 'Langsam, Yedidyah, Augenstein,  Moshe J andTenenbaum, Aaron M', '10', '250', 2, '2020-01-02'),
(353, 18, 'Data structures using c and c++', 'Langsam, Yedidyah, Augenstein,  Moshe J andTenenbaum, Aaron M', '10', '250', 2, '2020-01-02'),
(354, 18, 'Data structures using c and c++', 'Langsam, Yedidyah, Augenstein,  Moshe J andTenenbaum, Aaron M', '10', '250', 2, '2020-01-02'),
(355, 18, 'Data structures using c and c++', 'Langsam, Yedidyah, Augenstein,  Moshe J andTenenbaum, Aaron M', '10', '250', 2, '2020-01-02'),
(356, 18, 'Programming in prolog', 'Clocksin W F and Mellish C S', '3', '155', 3, '2020-01-02'),
(357, 18, 'Programming in prolog', 'Clocksin W F and Mellish C S', '3', '155', 3, '2020-01-02'),
(358, 18, 'Programming in prolog', 'Clocksin W F and Mellish C S', '3', '155', 3, '2020-01-02'),
(359, 18, 'Programming in prolog', 'Clocksin W F and Mellish C S', '3', '155', 3, '2020-01-02'),
(362, 18, 'Principles of compiler design', 'Aho Alfred V, and Ullman Jeffrey D', '2', '250', 25, '2020-01-02'),
(363, 18, 'Principles of compiler design', 'Aho Alfred V, and Ullman Jeffrey D', '2', '250', 25, '2020-01-02'),
(364, 18, 'Principles of compiler design', 'Aho Alfred V, and Ullman Jeffrey D', '2', '250', 25, '2020-01-02'),
(365, 18, 'Principles of compiler design', 'Aho Alfred V, and Ullman Jeffrey D', '2', '250', 25, '2020-01-02'),
(366, 18, 'Operations research', 'Taha, Hamdy A', '6', '295', 12, '2020-01-02'),
(367, 18, 'Operations research', 'Taha, Hamdy A', '6', '295', 12, '2020-01-02'),
(368, 18, 'Operations research', 'Taha, Hamdy A', '6', '295', 12, '2020-01-02'),
(370, 18, 'An introduction to database systems', 'Jase C J', '21', '325', 7, '2020-01-02'),
(371, 18, 'An introduction to database systems', 'Jase C J', '21', '325', 7, '2020-01-02'),
(372, 18, 'An introduction to database systems', 'Jase C J', '21', '325', 7, '2020-01-02'),
(373, 18, 'An introduction to database systems', 'Jase C J', '21', '325', 7, '2020-01-02'),
(374, 18, 'An introduction to database systems', 'Jase C J', '21', '325', 7, '2020-01-02'),
(375, 18, 'An introduction to database systems', 'Jase C J', '21', '325', 7, '2020-01-02'),
(376, 18, 'An introduction to database systems', 'Jase C J', '21', '325', 7, '2020-01-02'),
(377, 18, 'An introduction to database systems', 'Jase C J', '21', '325', 7, '2020-01-02'),
(378, 18, 'Principles of compiler design', 'Aho Alfred V, and Ullman Jeffrey D', '2', '250', 25, '2020-01-02'),
(379, 18, 'Principles of compiler design', 'Aho Alfred V, and Ullman Jeffrey D', '2', '250', 25, '2020-01-02'),
(380, 18, 'Principles of compiler design', 'Aho Alfred V, and Ullman Jeffrey D', '2', '250', 25, '2020-01-02'),
(381, 18, 'Principles of compiler design', 'Aho Alfred V, and Ullman Jeffrey D', '2', '250', 25, '2020-01-02'),
(382, 18, 'Principles of compiler design', 'Aho Alfred V, and Ullman Jeffrey D', '2', '250', 25, '2020-01-02'),
(383, 18, 'Artificial intelligence', 'Rich, Elaine and Knight Kevin', '8', '220', 2, '2020-01-02'),
(384, 18, 'Artificial intelligence', 'Rich, Elaine and Knight Kevin', '8', '220', 2, '2020-01-02'),
(385, 18, 'Artificial intelligence', 'Rich, Elaine and Knight Kevin', '8', '220', 2, '2020-01-02'),
(386, 18, 'Compiler constructions: principles and practice ', 'Dhamdhere D M', '2', '167', 2, '2020-01-02'),
(387, 18, 'Database system concepts', 'Silberschatz Abraham and Korth Henry F', '21', '550', 3, '2020-01-02'),
(388, 18, 'Database system concepts', 'Silberschatz Abraham and Korth Henry F', '21', '550', 3, '2020-01-02'),
(389, 18, 'Database system concepts', 'Silberschatz Abraham and Korth Henry F', '21', '550', 3, '2020-01-02'),
(390, 18, 'Database system concepts', 'Silberschatz Abraham and Korth Henry F', '21', '550', 3, '2020-01-02'),
(391, 18, 'Database system concepts', 'Silberschatz Abraham and Korth Henry F', '21', '550', 3, '2020-01-02'),
(392, 18, 'Database system concepts', 'Silberschatz Abraham and Korth Henry F', '21', '550', 3, '2020-01-02'),
(393, 18, 'Database system concepts', 'Silberschatz Abraham and Korth Henry F', '21', '550', 3, '2020-01-02'),
(394, 18, 'Database system concepts', 'Silberschatz Abraham and Korth Henry F', '21', '550', 3, '2020-01-02'),
(395, 18, 'Database system concepts', 'Silberschatz Abraham and Korth Henry F', '21', '550', 3, '2020-01-02'),
(396, 18, 'An introduction to database systems', 'Jase C J', '21', '325', 7, '2020-01-02'),
(397, 18, 'Compiler constructions: principles and practice ', 'Dhamdhere D M', '2', '167', 2, '2020-01-02'),
(398, 18, 'Principles of database systems ', 'Jeffrey O Ullman', '21', '176', 2, '2020-01-02'),
(399, 18, 'Systems analysis and design', 'Aured, Elias M', '8', '200', 2, '2020-01-02'),
(400, 18, 'Systems analysis and design', 'Aured, Elias M', '8', '200', 2, '2020-01-02'),
(401, 18, 'Systems analysis and design', 'Aured, Elias M', '8', '200', 2, '2020-01-02'),
(402, 18, 'Elements of system analysis', 'Gore.marvin', '8', '165', 3, '2020-01-02'),
(403, 18, 'Elements of system analysis', 'Gore.marvin', '8', '165', 3, '2020-01-02'),
(411, 18, 'A Book on C Programming in C', 'Al Kelly/', '20', '275', 4, '2020-01-02'),
(412, 18, 'A Book on C Programming in C', 'Al Kelly/', '20', '275', 4, '2020-01-02'),
(413, 18, 'A Book on C Programming in C', 'Al Kelly/', '20', '275', 4, '2020-01-02'),
(414, 18, 'A Book on C Programming in C', 'Al Kelly/', '20', '275', 4, '2020-01-02'),
(416, 20, 'The Intel Microprocessors', 'Barry .B.Brey', '12', '350', 4, '2020-01-02'),
(417, 20, 'The Intel Microprocessors', 'Barry .B.Brey', '12', '350', 4, '2020-01-02'),
(420, 19, 'Elementary theory of numbers', 'Hssing.C.Y', '7', '150', 2, '2020-01-02'),
(423, 19, 'An introduction to the theory of numbers', 'Niven, Ivan and Others', '7', '352', 5, '2020-01-02'),
(424, 19, 'Discrete mathematical  structures', 'Kolman, Bernard Busby Robert.C and Sharon Roll', '6', '225', 3, '2020-01-02'),
(425, 19, 'Discrete mathematical  structures', 'Kolman, Bernard Busby Robert.C and Sharon Roll', '6', '225', 3, '2020-01-02'),
(426, 19, 'Discrete mathematical  structures', 'Kolman, Bernard Busby Robert.C and Sharon Roll', '6', '225', 3, '2020-01-02'),
(427, 19, 'Discrete mathematical  structures', 'Kolman, Bernard Busby Robert.C and Sharon Roll', '6', '225', 3, '2020-01-02'),
(428, 19, 'Discrete mathematical  structures', 'Kolman, Bernard Busby Robert.C and Sharon Roll', '6', '225', 3, '2020-01-02'),
(430, 19, 'Discrete mathematics for computer scientists and mathematicians', 'Truss .J.K', '6', '295', 2, '2020-01-02'),
(431, 19, 'Discrete mathematics for computer scientists and mathematicians', 'Truss .J.K', '6', '295', 2, '2020-01-02'),
(432, 19, 'Discrete mathematics for computer scientists and mathematicians', 'Truss .J.K', '6', '295', 2, '2020-01-02'),
(433, 19, 'Discrete mathematics for computer scientists and mathematicians', 'Truss .J.K', '6', '295', 2, '2020-01-02'),
(434, 20, 'Digital Fundamentals', 'Floyd Thomas', '11', '295', 3, '2020-01-02'),
(435, 20, 'Digital Fundamentals', 'Floyd Thomas', '11', '295', 3, '2020-01-02'),
(436, 20, 'Digital Fundamentals', 'Floyd Thomas', '11', '295', 3, '2020-01-02'),
(437, 20, 'Digital Fundamentals', 'Floyd Thomas', '11', '295', 3, '2020-01-02'),
(438, 20, 'Digital Fundamentals', 'Floyd Thomas', '11', '295', 3, '2020-01-02'),
(440, 18, 'Essentials of management', 'Hareld Koortz', '13', '195', 5, '2020-01-02'),
(441, 18, 'Essentials of management', 'Hareld Koortz', '13', '195', 5, '2020-01-02'),
(442, 18, 'Essentials of management', 'Hareld Koortz', '13', '195', 5, '2020-01-02'),
(443, 18, 'Essentials of management', 'Hareld Koortz', '13', '195', 5, '2020-01-02'),
(444, 18, 'Cryptography and Network Security,principles and practice', 'Stallings,William', '7', '295', 2, '2020-01-02'),
(445, 18, 'Cryptography and Network Security,principles and practice', 'Stallings,William', '7', '295', 2, '2020-01-02'),
(446, 18, 'Cryptography and Network Security,principles and practice', 'Stallings,William', '7', '295', 2, '2020-01-02'),
(447, 18, 'Cryptography and Network Security,principles and practice', 'Stallings,William', '7', '295', 2, '2020-01-02'),
(449, 18, 'Management: Tasks,responsibilities,practices', 'Peter .E.Drucker', '13', '300', 2, '2020-01-02'),
(450, 18, 'Object oriented programming with C++', 'Blaguruswammy', '5', '165', 2, '2020-01-02'),
(451, 18, 'An introduction to operating system', 'Dietel,Harrey.M', '4', '295', 2, '2020-01-02'),
(452, 18, 'An introduction to operating system', 'Dietel,Harrey.M', '4', '295', 2, '2020-01-02'),
(453, 18, 'An introduction to operating system', 'Dietel,Harrey.M', '4', '295', 2, '2020-01-02'),
(454, 18, 'An introduction to operating system', 'Dietel,Harrey.M', '4', '295', 2, '2020-01-02'),
(455, 18, 'An introduction to operating system', 'Dietel,Harrey.M', '4', '295', 2, '2020-01-02'),
(456, 18, 'Computer Networks', 'Tanenbaum,Andrews', '19', '250', 3, '2020-01-02'),
(458, 18, 'Computer Networks', 'Tanenbaum,Andrews', '19', '250', 3, '2020-01-02'),
(459, 18, 'Computer Networks', 'Tanenbaum,Andrews', '19', '250', 3, '2020-01-02'),
(460, 18, 'Computer Networks', 'Tanenbaum,Andrews', '19', '250', 3, '2020-01-02'),
(461, 18, 'Fundamentals of the Internet and the world wide web', 'Greenlaw,Raymond', '18', '250', 3, '2020-01-02'),
(462, 18, 'Fundamentals of the Internet and the world wide web', 'Greenlaw,Raymond', '18', '250', 3, '2020-01-02'),
(463, 18, 'Fundamentals of the Internet and the world wide web', 'Greenlaw,Raymond', '18', '250', 3, '2020-01-02'),
(464, 18, 'Cmmunication Networks', 'Leon-Gracia,Alberto', '3', '290', 3, '2020-01-02'),
(465, 18, 'Cmmunication Networks', 'Leon-Gracia,Alberto', '3', '290', 3, '2020-01-02'),
(466, 18, 'Cmmunication Networks', 'Leon-Gracia,Alberto', '3', '290', 3, '2020-01-02'),
(467, 18, 'Cmmunication Networks', 'Leon-Gracia,Alberto', '3', '290', 3, '2020-01-02'),
(468, 18, 'Cmmunication Networks', 'Leon-Gracia,Alberto', '3', '290', 3, '2020-01-02'),
(469, 18, 'Cmmunication Networks', 'Leon-Gracia,Alberto', '3', '290', 3, '2020-01-02'),
(472, 18, 'Computer graphics: Principles and practice', 'Foley,James.D.', '9', '450', 2, '2020-01-02'),
(473, 18, 'Computer graphics: Principles and practice', 'Foley,James.D.', '9', '450', 2, '2020-01-02'),
(474, 18, 'An introduction to data structures with applications', 'Tremblay,Jean Paul', '10', '245', 2, '2020-01-02'),
(475, 18, 'An introduction to data structures with applications', 'Tremblay,Jean Paul', '10', '245', 2, '2020-01-02'),
(476, 18, 'An introduction to data structures with applications', 'Tremblay,Jean Paul', '10', '245', 2, '2020-01-02'),
(478, 18, 'An introduction to data structures with applications', 'Tremblay,Jean Paul', '10', '245', 2, '2020-01-02'),
(479, 18, 'Operating systems:Design and implementation', 'Tanenbum,Andrews', '4', '395', 2, '2020-01-02'),
(480, 18, 'Operating systems:Design and implementation', 'Tanenbum,Andrews', '4', '395', 2, '2020-01-02'),
(481, 18, 'Operating systems:Design and implementation', 'Tanenbum,Andrews', '4', '395', 2, '2020-01-02'),
(482, 18, 'Operating systems:Design and implementation', 'Tanenbum,Andrews', '4', '395', 2, '2020-01-02'),
(483, 18, 'Operating systems:Design and implementation', 'Tanenbum,Andrews', '4', '395', 2, '2020-01-02'),
(484, 18, 'Data management and file structures', 'Loomis,May.E.S', '10', '195', 2, '2020-01-02'),
(485, 18, 'Data management and file structures', 'Loomis,May.E.S', '10', '195', 2, '2020-01-02'),
(486, 18, 'Data management and file structures', 'Loomis,May.E.S', '10', '195', 2, '2020-01-02'),
(487, 18, 'Data management and file structures', 'Loomis,May.E.S', '10', '195', 2, '2020-01-02'),
(488, 18, 'Data management and file structures', 'Loomis,May.E.S', '10', '195', 2, '2020-01-02'),
(489, 18, 'Data management and file structures', 'Loomis,May.E.S', '10', '195', 2, '2020-01-02'),
(490, 18, 'Computer graphics: Principles and practice', 'Hearn,Denald', '9', '425', 2, '2020-01-02'),
(491, 18, 'Computer graphics: Principles and practice', 'Hearn,Denald', '9', '425', 2, '2020-01-02'),
(492, 18, 'Computer graphics: Principles and practice', 'Hearn,Denald', '9', '425', 2, '2020-01-02'),
(494, 18, 'Analysis and design of information systems', 'Rajaraman.V.', '8', '150', 2, '2020-01-02'),
(495, 18, 'Organizational behaviour: Hurnon behaviour at work', 'Neuistrom,John', '13', '240', 10, '2020-01-02'),
(496, 18, 'Organizational behaviour: Hurnon behaviour at work', 'Neuistrom,John', '13', '240', 10, '2020-01-02'),
(497, 18, 'Organizational behaviour: Hurnon behaviour at work', 'Neuistrom,John', '13', '240', 10, '2020-01-02'),
(498, 18, 'Organizational behaviour: Hurnon behaviour at work', 'Neuistrom,John', '13', '240', 10, '2020-01-02'),
(499, 18, 'Organizational behaviour: Hurnon behaviour at work', 'Neuistrom,John', '13', '240', 10, '2020-01-02'),
(500, 18, 'Analysis and design of information systems', 'Senn,James.A.', '8', '', 2, '2020-01-02'),
(501, 18, 'Analysis and design of information systems', 'Senn , James A ', '8', '$7.95 ', 2, '2020-01-02'),
(502, 18, 'Analysis and design of information systems', 'Senn , James A ', '8', '$7.95 ', 2, '2020-01-02'),
(503, 18, 'Analysis and design of information systems', 'Senn , James A ', '8', '$7.95 ', 2, '2020-01-02'),
(504, 18, 'Analysis and design of information systems', 'Senn , James A ', '8', '$7.95 ', 2, '2020-01-02'),
(505, 18, 'Operating system concepts', 'Silberschatz, Abraham,Galvin and GagniGreg', '4', '', 6, '2020-01-02'),
(506, 18, 'Operating system concepts', 'Silberschatz, Abraham,Galvin and GagniGreg', '4', '', 6, '2020-01-02'),
(507, 18, 'Operating system concepts', 'Silberschatz, Abraham,Galvin and GagniGreg', '4', '', 6, '2020-01-02'),
(508, 18, 'Operating system concepts', 'Silberschatz, Abraham,Galvin and GagniGreg', '4', '', 6, '2020-01-02'),
(509, 18, 'Operating system concepts', 'Silberschatz, Abraham,Galvin and GagniGreg', '4', '', 6, '2020-01-02'),
(511, 18, 'On to C++', 'Winston, Patrick Henry', '5', '195', 0, '2020-01-02'),
(512, 18, 'Programming in ANSI C', 'Balaguruswamy E', '20', '150', 2, '2020-01-02'),
(513, 18, 'Programming in ANSI C', 'Balaguruswamy E', '20', '150', 2, '2020-01-02'),
(514, 18, 'Programming in ANSI C', 'Balaguruswamy E', '20', '150', 2, '2020-01-02'),
(515, 18, 'Programming in ANSI C', 'Balaguruswamy E', '20', '150', 2, '2020-01-02'),
(516, 18, 'Programming in ANSI C', 'Balaguruswamy E', '20', '150', 2, '2020-01-02'),
(517, 18, 'Object oriented programming with C++', 'Balaguruswamy E', '5', '165', 2, '2020-01-02'),
(518, 18, 'Object oriented programming with C++', 'Balaguruswamy E', '5', '165', 2, '2020-01-02'),
(519, 18, 'Object oriented programming with C++', 'Balaguruswamy E', '5', '165', 2, '2020-01-02'),
(520, 18, 'Object oriented programming with C++', 'Balaguruswamy E', '5', '165', 2, '2020-01-02'),
(523, 18, 'Principles of database systems', 'Ullman, Jeffrey D', '21', '176', 2, '2020-01-02'),
(524, 18, 'Principles of database systems', 'Ullman, Jeffrey D', '21', '176', 2, '2020-01-02'),
(525, 18, 'Principles of database systems', 'Ullman, Jeffrey D', '21', '176', 2, '2020-01-02'),
(526, 18, 'Principles of database systems', 'Ullman, Jeffrey D', '21', '176', 2, '2020-01-02'),
(527, 18, 'Compilers: Principles, techniques and tools', 'Aho, Alfred V, Ravi sethi &Jeffrey ullman', '2', '395', 0, '2020-01-02'),
(528, 18, 'Compilers: Principles, techniques and tools', 'Aho, Alfred V, Ravi sethi &Jeffrey ullman', '2', '395', 0, '2020-01-02'),
(529, 18, 'Compilers: Principles, techniques and tools', 'Aho, Alfred V, Ravi sethi &Jeffrey ullman', '2', '395', 0, '2020-01-02'),
(530, 18, 'Compilers: Principles, techniques and tools', 'Aho, Alfred V, Ravi sethi &Jeffrey ullman', '2', '395', 0, '2020-01-02'),
(532, 18, 'LISP', 'Winston, Patrick Henry & Horn Brthold claws paul', '3', '375', 0, '2020-01-02'),
(533, 18, 'LISP', 'Winston, Patrick Henry & Horn Brthold claws paul', '3', '375', 0, '2020-01-02'),
(536, 18, 'Beginning C++: The complete langauge', 'Horton, Iver', '5', '525', 2, '2020-01-02'),
(538, 23, 'Managarial Ecnomics', 'Varshney. R L & Maheshwari K L', '13', '145', 16, '2020-01-02'),
(539, 23, 'Managarial Ecnomics', 'Varshney. R L & Maheshwari K L', '13', '145', 16, '2020-01-02'),
(541, 18, 'Artificial Intelligence', 'Rich,Elaine & Knight Kevin', '8', '220', 0, '2020-01-02'),
(542, 18, 'Artificial Intelligence', 'Rich,Elaine & Knight Kevin', '8', '220', 0, '2020-01-02'),
(543, 18, 'Artificial Intelligence', 'Rich,Elaine & Knight Kevin', '8', '220', 0, '2020-01-02'),
(544, 18, 'Artificial Intelligence', 'Rich,Elaine & Knight Kevin', '8', '220', 0, '2020-01-02'),
(545, 19, 'Topics in algebra', 'Herstein.I.N', '6', '562', 2, '2020-01-02'),
(546, 19, 'Topics in algebra', 'Herstein.I.N', '6', '562', 2, '2020-01-02'),
(548, 18, 'LISP', 'Winston, Patrick Henry and Paul Horn, Berthold Klaus', '3', '375', 3, '2020-01-02'),
(549, 18, 'LISP', 'Winston, Patrick Henry and Paul Horn, Berthold Klaus', '3', '375', 3, '2020-01-02');
INSERT INTO `book_details_tb` (`book_id`, `category_id`, `book_name`, `author`, `shelf_no`, `price`, `book_edition`, `book_added_on`) VALUES
(551, 18, 'System simulation', 'Gordon Geoffrey', '2', '125', 2, '2020-01-02'),
(552, 18, 'System simulation', 'Gordon Geoffrey', '2', '125', 2, '2020-01-02'),
(553, 18, 'System simulation', 'Gordon Geoffrey', '2', '125', 2, '2020-01-02'),
(554, 18, 'Computer Graphics', 'Hearn Donald & Baker Pauline', '9', '725', 2, '2020-01-02'),
(555, 18, 'Computer Graphics', 'Hearn Donald & Baker Pauline', '9', '725', 2, '2020-01-02'),
(556, 18, 'Computer Graphics', 'Hearn Donald & Baker Pauline', '9', '725', 2, '2020-01-02'),
(558, 18, 'Computer networks', 'Tanenbaum,Andrew S', '19', '250', 3, '2020-01-02'),
(559, 18, 'Principles of interactive computer graphics', 'Newman, William M and Sproull, Robert S', '9', '225', 2, '2020-01-02'),
(561, 18, 'Artificial Intelligence', 'Rich Elaine', '8', '225', 2, '2020-01-02'),
(562, 18, 'Computer graphics: Princiles and Practice', 'Foley,James D, Dam Andries Van and Feiner, Steven K', '9', '450', 0, '2020-01-02'),
(563, 18, 'Computer graphics: Princiles and Practice', 'Foley,James D, Dam Andries Van and Feiner, Steven K', '9', '450', 0, '2020-01-02'),
(564, 18, 'Computer graphics: Princiles and Practice', 'Foley,James D, Dam Andries Van and Feiner, Steven K', '9', '450', 0, '2020-01-02'),
(565, 18, 'Theory and problem of computer graphics', 'Xiang, Zhigang and Plastock, Roy A', '9', '295', 0, '2020-01-02'),
(567, 18, 'Computer graphics: A programming approach', 'Harringten, Steven', '9', '1079', 2, '2020-01-02'),
(568, 18, 'Computer graphics: A programming approach', 'Harringten, Steven', '9', '1079', 2, '2020-01-02'),
(569, 18, 'Computer graphics: A programming approach', 'Harringten, Steven', '9', '1079', 2, '2020-01-02'),
(570, 18, 'Computer architecture and parallel processing', 'Hwang, Kai and Briggs, Fays A', '18', '1195', 0, '2020-01-02'),
(571, 18, 'Computer architecture and parallel processing', 'Hwang, Kai and Briggs, Fays A', '18', '1195', 0, '2020-01-02'),
(572, 18, 'Computer architecture and parallel processing', 'Hwang, Kai and Briggs, Fays A', '18', '1195', 0, '2020-01-02'),
(573, 18, 'Computer architecture and logic design', 'Bartee, Thomas C', '18', '771', 0, '2020-01-02'),
(574, 18, 'Computer architecture and logic design', 'Bartee, Thomas C', '18', '771', 0, '2020-01-02'),
(575, 18, 'Computer system design and architecture', 'Heuring , Vincent P and Jordan', '18', '295', 0, '2020-01-02'),
(576, 18, 'Computer system design and architecture', 'Heuring , Vincent P and Jordan', '18', '295', 0, '2020-01-02'),
(577, 18, 'Cryptography and network security: Principles and practice', 'Stallings, William', '20', '295', 2, '2020-01-02'),
(578, 18, 'Cryptography and network security: Principles and practice', 'Stallings, William', '20', '295', 2, '2020-01-02'),
(579, 18, 'Cryptography and network security: Principles and practice', 'Stallings, William', '20', '295', 2, '2020-01-02'),
(581, 18, 'Systems programming and operating systems', 'Dhamdhere D M', '4', '250', 2, '2020-01-02'),
(582, 18, 'Systems programming and operating systems', 'Dhamdhere D M', '4', '250', 2, '2020-01-02'),
(583, 18, 'Systems programming and operating systems', 'Dhamdhere D M', '4', '250', 2, '2020-01-02'),
(584, 19, 'A first look at graph theory', 'Clark John and Holton Allan', '7', '180', 0, '2020-01-02'),
(585, 19, 'A first look at graph theory', 'Clark John and Holton Allan', '7', '180', 0, '2020-01-02'),
(586, 19, 'A first look at graph theory', 'Clark John and Holton Allan', '7', '180', 0, '2020-01-02'),
(587, 19, 'A first look at graph theory', 'Clark John and Holton Allan', '7', '180', 0, '2020-01-02'),
(588, 19, 'Discrete mathematics for computer scientists and mathematicians', 'Molt, Joe L, Kandel Abraham and Baker', '6', '250', 2, '2020-01-02'),
(589, 18, 'operating system concepts', 'silberschatz, Abraham', '4', '1306', 6, '2020-01-02'),
(590, 18, 'operating system concepts', 'silberschatz, Abraham', '4', '1306', 6, '2020-01-02'),
(591, 18, 'operating system concepts', 'silberschatz, Abraham', '4', '1306', 6, '2020-01-02'),
(592, 18, 'Management information systems', 'Laudon, Kenneth C and Laudon , Jane P', '13', '350', 7, '2020-01-02'),
(593, 18, 'Management information systems', 'Laudon, Kenneth C and Laudon , Jane P', '13', '350', 7, '2020-01-02'),
(594, 18, 'Management information systems', 'Laudon, Kenneth C and Laudon , Jane P', '13', '350', 7, '2020-01-02'),
(596, 18, 'System software: An introduction to system programming', 'Beck, Leland L', '8', '285', 3, '2020-01-02'),
(597, 18, 'System software: An introduction to system programming', 'Beck, Leland L', '8', '285', 3, '2020-01-02'),
(598, 18, 'System software: An introduction to system programming', 'Beck, Leland L', '8', '285', 3, '2020-01-02'),
(599, 18, 'Data structures and algorithms', 'Aho, Alfred V, Hoporoft, John E and Jeffrey ullman', '10', '260', 7, '2020-01-02'),
(600, 18, 'Data structures and algorithms', 'Aho, Alfred V, Hoporoft, John E and Jeffrey ullman', '10', '260', 7, '2020-01-02'),
(601, 18, 'Data structures and algorithms', 'Aho, Alfred V, Hoporoft, John E and Jeffrey ullman', '10', '260', 7, '2020-01-02'),
(602, 18, 'Data structures and algorithms', 'Aho, Alfred V, Hoporoft, John E and Jeffrey ullman', '10', '260', 7, '2020-01-02'),
(604, 18, 'The design of the unix operating system', 'Bach,Maurice.j', '4', '195', 23, '2020-01-02'),
(605, 18, 'Computer organization and design', 'Hennessy,john and petterson david', '18', '375', 0, '2020-01-02'),
(606, 18, 'Computer organization and design', 'Hennessy,john and petterson david', '18', '375', 0, '2020-01-02'),
(607, 18, 'Operating systems', 'Godbole,a.s', '5', '225', 13, '2020-01-02'),
(611, 18, 'C++ primer', 'Lippman,Stanley B', '2', '450', 3, '2020-01-02'),
(612, 18, 'Multimedia Systems', 'Koegel Biyord,john f', '2', '280', 7, '2020-01-02'),
(614, 18, 'Multimedia Systems', 'Koegel Biyord,john f', '2', '280', 7, '2020-01-02'),
(615, 18, 'Multimedia Systems', 'Koegel Biyord,john f', '2', '280', 7, '2020-01-02'),
(616, 18, 'Multimedia Systems', 'Koegel Biyord,john f', '2', '280', 7, '2020-01-02'),
(618, 18, 'Multimedia graphics', 'Fernandez leony-Elias Villiam john', '2', '250', 0, '2020-01-02'),
(619, 18, 'Multimedia graphics', 'Fernandez leony-Elias Villiam john', '2', '250', 0, '2020-01-02'),
(620, 18, 'Multimedia graphics', 'Fernandez leony-Elias Villiam john', '2', '250', 0, '2020-01-02'),
(622, 18, 'Management information system', 'Sadagopan.s', '13', '125', 0, '2020-01-02'),
(623, 18, 'Management information system', 'Sadagopan.s', '13', '125', 0, '2020-01-02'),
(624, 18, 'Management information system', 'Sadagopan.s', '13', '125', 0, '2020-01-02'),
(625, 18, 'Management information system', 'Sadagopan.s', '13', '125', 0, '2020-01-02'),
(626, 18, 'Software engineering', 'Sommer ville,lan', '5', '375', 0, '2020-01-02'),
(627, 18, 'Software engineering', 'Sommer ville,lan', '5', '375', 0, '2020-01-02'),
(628, 18, 'Software engineering', 'Sommer ville,lan', '5', '375', 0, '2020-01-02'),
(629, 18, 'Software engineering', 'Sommer ville,lan', '5', '375', 0, '2020-01-02'),
(631, 18, 'C++ program design', 'Cohoon,james.p', '5', '350', 0, '2020-01-02'),
(632, 18, 'C++ program design', 'Cohoon,james.p', '5', '350', 0, '2020-01-02'),
(633, 18, 'C++ program design', 'Cohoon,james.p', '5', '350', 0, '2020-01-02'),
(634, 18, 'Algorithms +Datastructure=programs', 'Wirth,Niklaus', '10', '125', 0, '2020-01-02'),
(635, 18, 'Algorithms +Datastructure=programs', 'Wirth,Niklaus', '10', '125', 0, '2020-01-02'),
(636, 18, 'System software:an introduction to systems programming', 'Beck,leland.L', '8', '285', 3, '2020-01-02'),
(637, 18, 'A book on c programming in c', 'Kelly.AL &Pohl.Jra', '20', '275', 4, '2020-01-02'),
(638, 18, 'A book on c programming in c', 'Kelly.AL &Pohl.Jra', '20', '275', 4, '2020-01-02'),
(639, 18, 'A book on c programming in c', 'Kelly.AL &Pohl.Jra', '20', '275', 4, '2020-01-02'),
(640, 18, 'A book on c programming in c', 'Kelly.AL &Pohl.Jra', '20', '275', 4, '2020-01-02'),
(641, 18, 'A book on c programming in c', 'Kelly.AL &Pohl.Jra', '20', '275', 4, '2020-01-02'),
(642, 18, 'Object oriented programming with c++', 'Balagurusamy.e', '5', '175', 2, '2020-01-02'),
(643, 18, 'Object oriented programming with c++', 'Balagurusamy.e', '5', '175', 2, '2020-01-02'),
(644, 18, 'Object oriented programming with c++', 'Balagurusamy.e', '5', '175', 2, '2020-01-02'),
(645, 18, 'Object oriented programming with c++', 'Balagurusamy.e', '5', '175', 2, '2020-01-02'),
(646, 18, 'Object oriented programming with c++', 'Balagurusamy.e', '5', '175', 2, '2020-01-02'),
(647, 18, 'Programming with c', 'Venugopal.K R,Prasad,Sudeep R', '20', '180', 13, '2020-01-02'),
(648, 18, 'Programming with c', 'Venugopal.K R,Prasad,Sudeep R', '20', '180', 13, '2020-01-02'),
(649, 18, 'Programming with c', 'Venugopal.K R,Prasad,Sudeep R', '20', '180', 13, '2020-01-02'),
(650, 18, 'Programming with c', 'Venugopal.K R,Prasad,Sudeep R', '20', '180', 13, '2020-01-02'),
(651, 18, 'Programming with c', 'Venugopal.K R,Prasad,Sudeep R', '20', '180', 13, '2020-01-02'),
(652, 20, 'The intel Microprocessor:architecture,programming and interfacing', 'Brey ,Barry B', '12', '350', 6, '2020-01-02'),
(653, 20, 'The intel Microprocessor:architecture,programming and interfacing', 'Brey ,Barry B', '12', '350', 6, '2020-01-02'),
(654, 20, 'The intel Microprocessor:architecture,programming and interfacing', 'Brey ,Barry B', '12', '350', 6, '2020-01-02'),
(655, 20, 'The intel Microprocessor:architecture,programming and interfacing', 'Brey ,Barry B', '12', '350', 6, '2020-01-02'),
(656, 20, 'The intel Microprocessor:architecture,programming and interfacing', 'Brey ,Barry B', '12', '350', 6, '2020-01-02'),
(657, 20, 'Digital fundamentals', 'Floyd,Thomas L', '11', '295', 3, '2020-01-02'),
(658, 20, 'Digital fundamentals', 'Floyd,Thomas L', '11', '295', 3, '2020-01-02'),
(659, 20, 'Digital fundamentals', 'Floyd,Thomas L', '11', '295', 3, '2020-01-02'),
(660, 20, 'Digital fundamentals', 'Floyd,Thomas L', '11', '295', 3, '2020-01-02'),
(661, 20, 'Digital fundamentals', 'Floyd,Thomas L', '11', '295', 3, '2020-01-02'),
(662, 20, 'Advanced microprocessors and peripherals:architecture,programming and interfacing', 'Ray,Ajay kumar and Bhurchandi,Kishor M', '12', '225', 0, '2020-01-02'),
(663, 20, 'Advanced microprocessors and peripherals:architecture,programming and interfacing', 'Ray,Ajay kumar and Bhurchandi,Kishor M', '12', '225', 0, '2020-01-02'),
(664, 20, 'Advanced microprocessors and peripherals:architecture,programming and interfacing', 'Ray,Ajay kumar and Bhurchandi,Kishor M', '12', '225', 0, '2020-01-02'),
(665, 20, 'Advanced microprocessors and peripherals:architecture,programming and interfacing', 'Ray,Ajay kumar and Bhurchandi,Kishor M', '12', '225', 0, '2020-01-02'),
(666, 20, 'Advanced microprocessors and peripherals:architecture,programming and interfacing', 'Ray,Ajay kumar and Bhurchandi,Kishor M', '12', '225', 0, '2020-01-02'),
(667, 20, 'Microprocessors and interfacing:programming and hardware', 'Hall,Douglas v', '12', '285', 2, '2020-01-02'),
(668, 20, 'Microprocessors and interfacing:programming and hardware', 'Hall,Douglas v', '12', '285', 2, '2020-01-02'),
(669, 20, 'Microprocessors and interfacing:programming and hardware', 'Hall,Douglas v', '12', '285', 2, '2020-01-02'),
(670, 20, 'Microprocessors and interfacing:programming and hardware', 'Hall,Douglas v', '12', '285', 2, '2020-01-02'),
(671, 20, 'Microprocessors and interfacing:programming and hardware', 'Hall,Douglas v', '12', '285', 2, '2020-01-02'),
(672, 18, 'Troubleshooting,maintaining and repairing pcs', 'Bigelau,Stephen', '11', '695', 5, '2020-01-02'),
(673, 18, 'Troubleshooting,maintaining and repairing pcs', 'Bigelau,Stephen', '11', '695', 5, '2020-01-02'),
(674, 18, 'Troubleshooting,maintaining and repairing pcs', 'Bigelau,Stephen', '11', '695', 5, '2020-01-02'),
(675, 18, 'Troubleshooting,maintaining and repairing pcs', 'Bigelau,Stephen', '11', '695', 5, '2020-01-02'),
(676, 18, 'Troubleshooting,maintaining and repairing pcs', 'Bigelau,Stephen', '11', '695', 5, '2020-01-02'),
(677, 18, 'Essentials of management', 'Koontz,Harold and Weihrich,Heinx', '13', '195', 5, '2020-01-02'),
(678, 18, 'Essentials of management', 'Koontz,Harold and Weihrich,Heinx', '13', '195', 5, '2020-01-02'),
(679, 18, 'Essentials of management', 'Koontz,Harold and Weihrich,Heinx', '13', '195', 5, '2020-01-02'),
(680, 18, 'Essentials of management', 'Koontz,Harold and Weihrich,Heinx', '13', '195', 5, '2020-01-02'),
(681, 18, 'Essentials of management', 'Koontz,Harold and Weihrich,Heinx', '13', '195', 5, '2020-01-02'),
(682, 18, 'Management:tasks,responsibilities,practices', 'Drucker,Peter f', '13', '325', 0, '2020-01-02'),
(683, 18, 'Management:tasks,responsibilities,practices', 'Drucker,Peter f', '13', '325', 0, '2020-01-02'),
(684, 18, 'Management:tasks,responsibilities,practices', 'Drucker,Peter f', '13', '325', 0, '2020-01-02'),
(685, 18, 'Management:tasks,responsibilities,practices', 'Drucker,Peter f', '13', '325', 0, '2020-01-02'),
(686, 18, 'Management:tasks,responsibilities,practices', 'Drucker,Peter f', '13', '325', 0, '2020-01-02'),
(687, 21, 'Marketing management', 'Kotler,Philip', '13', '325', 11, '2020-01-02'),
(688, 21, 'Marketing management', 'Kotler,Philip', '13', '325', 11, '2020-01-02'),
(689, 21, 'Marketing management', 'Kotler,Philip', '13', '325', 11, '2020-01-02'),
(690, 21, 'Marketing management', 'Kotler,Philip', '13', '325', 11, '2020-01-02'),
(691, 21, 'Marketing management', 'Kotler,Philip', '13', '325', 11, '2020-01-02'),
(692, 19, 'Stastical quality control', 'Grant,Engene L and Leavenworth,Richard S', '14', '295', 7, '2020-01-02'),
(693, 19, 'Stastical quality control', 'Grant,Engene L and Leavenworth,Richard S', '14', '295', 7, '2020-01-02'),
(694, 19, 'Stastical quality control', 'Grant,Engene L and Leavenworth,Richard S', '14', '295', 7, '2020-01-02'),
(695, 19, 'Stastical quality control', 'Grant,Engene L and Leavenworth,Richard S', '14', '295', 7, '2020-01-02'),
(696, 19, 'Stastical quality control', 'Grant,Engene L and Leavenworth,Richard S', '14', '295', 7, '2020-01-02'),
(697, 19, 'Miller and freunds probability and statistics for engineers', 'Johnson,Richard A', '7', '195', 5, '2020-01-02'),
(698, 19, 'Miller and freunds probability and statistics for engineers', 'Johnson,Richard A', '7', '195', 5, '2020-01-02'),
(699, 19, 'Miller and freunds probability and statistics for engineers', 'Johnson,Richard A', '7', '195', 5, '2020-01-02'),
(700, 19, 'Miller and freunds probability and statistics for engineers', 'Johnson,Richard A', '7', '195', 5, '2020-01-02'),
(701, 19, 'Miller and freunds probability and statistics for engineers', 'Johnson,Richard A', '7', '195', 5, '2020-01-02'),
(702, 19, 'Statistics for mangement', 'Levin , Richard I ,  Rubin & David S', '14', '395', 7, '2020-01-02'),
(703, 19, 'Statistics for mangement', 'Levin , Richard I ,  Rubin & David S', '14', '395', 7, '2020-01-02'),
(704, 19, 'Statistics for mangement', 'Levin , Richard I ,  Rubin & David S', '14', '395', 7, '2020-01-02'),
(705, 19, 'Statistics for mangement', 'Levin , Richard I ,  Rubin & David S', '14', '395', 7, '2020-01-02'),
(706, 19, 'Statistics for mangement', 'Levin , Richard  I ,  Rubin & David S', '14', '395', 7, '2020-01-02'),
(707, 19, 'Discrete mathematics for computer  scientists', 'Tihes T K', '6', '295', 2, '2020-01-02'),
(708, 19, 'Discrete mathematics for computer  scientists', 'Tihes T K', '6', '295', 2, '2020-01-02'),
(709, 19, 'Discrete mathematics for computer  scientists', 'Tihes T K', '6', '295', 2, '2020-01-02'),
(710, 19, 'Discrete mathematics for computer  scientists', 'Tihes T K', '6', '295', 2, '2020-01-02'),
(711, 19, 'Discrete mathematics for computer  scientists', 'Tihes T K', '6', '295', 2, '2020-01-02'),
(712, 19, 'Discrete mathematical structures', '', '6', '195', 4, '2020-01-02'),
(713, 19, 'Discrete mathematical structures', '', '6', '195', 4, '2020-01-02'),
(714, 19, 'Discrete mathematical structures', '', '6', '195', 4, '2020-01-02'),
(715, 19, 'Discrete mathematical structures', '', '6', '195', 4, '2020-01-02'),
(716, 19, 'Discrete mathematical structures', '', '6', '195', 4, '2020-01-02'),
(717, 19, 'Elements of discrete mathemtics', 'Liu C L', '6', '175', 2, '2020-01-02'),
(718, 19, 'Elements of discrete mathemtics', 'Liu C L', '6', '175', 2, '2020-01-02'),
(719, 19, 'Elements of discrete mathemtics', 'Liu C L', '6', '175', 2, '2020-01-02'),
(720, 19, 'Elements of discrete mathemtics', 'Liu C L', '6', '175', 2, '2020-01-02'),
(721, 19, 'Elements of discrete mathemtics', 'Liu C L', '6', '175', 2, '2020-01-02'),
(722, 19, 'Discrete mathematics for computer  scientists and mathematicians', 'Mott , Joe L , Kandel Abraham Baker Theodore  P', '6', '250', 2, '2020-01-02'),
(723, 19, 'Discrete mathematics for computer  scientists and mathematicians', 'Mott , Joe L , Kandel Abraham Baker Theodore  P', '6', '250', 2, '2020-01-02'),
(724, 19, 'Discrete mathematics for computer  scientists and mathematicians', 'Mott , Joe L , Kandel Abraham Baker Theodore  P', '6', '250', 2, '2020-01-02'),
(725, 19, 'Discrete mathematics for computer  scientists and mathematicians', 'Mott , Joe L , Kandel Abraham Baker Theodore  P', '6', '250', 2, '2020-01-02'),
(726, 19, 'Discrete mathematics for computer  scientists and mathematicians', 'Mott , Joe L , Kandel Abraham Baker Theodore  P', '6', '250', 2, '2020-01-02'),
(727, 19, 'Discrete and combinatorial mathematics : An applied  introductions', 'Grimaldi ,  Ralph  P', '6', '395', 4, '2020-01-02'),
(728, 19, 'Discrete and combinatorial mathematics : An applied  introductions', 'Grimaldi ,  Ralph  P', '6', '395', 4, '2020-01-02'),
(729, 19, 'Discrete and combinatorial mathematics : An applied  introductions', 'Grimaldi ,  Ralph  P', '6', '395', 4, '2020-01-02'),
(730, 19, 'Discrete and combinatorial mathematics : An applied  introductions', 'Grimaldi ,  Ralph  P', '6', '395', 4, '2020-01-02'),
(731, 19, 'Discrete and combinatorial mathematics : An applied  introductions', 'Grimaldi ,  Ralph  P', '6', '395', 4, '2020-01-02'),
(733, 18, 'Operating systems: A modern perspective', 'Nutt , Gary J', '4', '295', 2, '2020-01-02'),
(736, 18, 'Data communications and networking', 'Forouzan , Behrouz A', '19', '295', 2, '2020-01-02'),
(739, 19, 'Elements of discrete mathemtics', 'Liu C L', '6', '175', 2, '2020-01-02'),
(740, 19, 'Elements of discrete mathemtics', 'Liu C L', '6', '175', 2, '2020-01-02'),
(741, 19, 'Elements of discrete mathemtics', 'Liu C L', '6', '175', 2, '2020-01-02'),
(742, 19, 'Elements of discrete mathemtics', 'Liu C L', '6', '175', 2, '2020-01-02'),
(743, 18, 'Fundamentals of data structures in c++', 'Horowitz , Ellis , Sahni , Sartaj , Mehta & Dinesh', '10', '325', 0, '2020-01-02'),
(744, 18, 'Fundamentals of data structures in c++', 'Horowitz , Ellis , Sahni , Sartaj , Mehta & Dinesh', '10', '325', 0, '2020-01-02'),
(745, 18, 'Fundamentals of data structures in c++', 'Horowitz , Ellis , Sahni , Sartaj , Mehta & Dinesh', '10', '325', 0, '2020-01-02'),
(746, 18, 'Data structures and algorithm analysis in c++', 'Weiss , Mark Allen', '10', '295', 2, '2020-01-02'),
(747, 18, 'Data structures and algorithm analysis in c++', 'Weiss , Mark Allen', '10', '295', 2, '2020-01-02'),
(749, 19, 'Elements of the theory of computation', 'Lewis , Harry R & Papadimitriou , Christos', '1', '150', 2, '2020-01-02'),
(750, 19, 'Elements of the theory of computation', 'Lewis , Harry R & Papadimitriou , Christos', '1', '150', 2, '2020-01-02'),
(751, 19, 'Elements of the theory of computation', 'Lewis , Harry R & Papadimitriou , Christos', '1', '150', 2, '2020-01-02'),
(752, 19, 'Elements of the theory of computation', 'Lewis , Harry R & Papadimitriou , Christos', '1', '150', 2, '2020-01-02'),
(754, 18, 'Introductions to automata theory , language & computation ', 'Hopcroft John E & Ullman Jeffery D', '1', '210', 0, '2020-01-02'),
(755, 18, 'Introductions to automata theory , language & computation ', 'Hopcroft John E & Ullman Jeffery D', '1', '210', 0, '2020-01-02'),
(757, 18, 'An introduction to formal langages and automata', 'Linz , Peter', '1', '135', 3, '2020-01-02'),
(748, 18, 'An introduction to formal langages and automata', 'Linz , Peter', '1', '135', 3, '2020-01-02'),
(760, 18, 'Introduction to languages and the theory of computation', 'Martin , John C', '1', '235', 3, '2020-01-02'),
(761, 18, 'Introduction to languages and the theory of computation', 'Martin , John C', '1', '235', 3, '2020-01-02'),
(762, 18, 'Introduction to languages and the theory of computation', 'Martin , John C', '1', '235', 3, '2020-01-02'),
(765, 18, 'Object oriented systems deveopment using the unified modeling language', 'Bahrami , Ali', '3', '260', 0, '2020-01-02'),
(766, 18, 'Object oriented systems deveopment using the unified modeling language', 'Bahrami , Ali', '3', '260', 0, '2020-01-02'),
(768, 18, 'The unified modeling language reference manual', 'Rumbaugh James , Jacobson Ivar & Booch Grady', '3', '525', 2, '2020-01-02'),
(769, 18, 'The unified modeling language reference manual', 'Rumbaugh James , Jacobson Ivar & Booch Grady', '3', '525', 2, '2020-01-02'),
(770, 18, 'Object oriented programming in c++', 'Lafore , Robert', '5', '320', 3, '2020-01-02'),
(771, 18, 'Object oriented programming in c++', 'Lafore , Robert', '5', '320', 3, '2020-01-02'),
(772, 18, 'Object oriented programming in c++', 'Lafore , Robert', '5', '320', 3, '2020-01-02'),
(774, 18, 'Object oriented programming with c++', 'Balaguruswamy E', '5', '199', 2, '2020-01-02'),
(775, 18, 'Object oriented programming with c++', 'Balaguruswamy E', '5', '199', 2, '2020-01-02'),
(776, 18, 'Object oriented programming with c++', 'Balaguruswamy E', '5', '199', 2, '2020-01-02'),
(777, 18, 'Object oriented programming with c++', 'Balaguruswamy E', '5', '199', 2, '2020-01-02'),
(778, 18, 'The c++ programming language', 'Stroustrup , Bjarne', '5', '625', 3, '2020-01-02'),
(779, 18, 'The c++ programming language', 'Stroustrup , Bjarne', '5', '625', 3, '2020-01-02'),
(780, 18, 'The c++ programming language', 'Stroustrup , Bjarne', '5', '625', 3, '2020-01-02'),
(781, 18, 'The c++ programming language', 'Stroustrup , Bjarne', '5', '625', 3, '2020-01-02'),
(782, 18, 'IBM PC Assembly language and programming ', 'Abel , Peter', '3', '195', 5, '2020-01-02'),
(783, 18, 'IBM PC Assembly language and programming ', 'Abel , Peter', '3', '195', 5, '2020-01-02'),
(784, 18, 'IBM PC Assembly language and programming ', 'Abel , Peter', '3', '195', 5, '2020-01-02'),
(785, 18, 'IBM PC Assembly language and programming ', 'Abel , Peter', '3', '195', 5, '2020-01-02'),
(787, 20, 'Microprocessors theory and applictions (Intel and Motorola)', 'Rafiquzzaman M', '12', '325', 0, '2020-01-02'),
(788, 20, 'Microprocessors theory and applictions (Intel and Motorola)', 'Rafiquzzaman M', '12', '325', 0, '2020-01-02'),
(789, 20, 'Microprocessors theory and applictions (Intel and Motorola)', 'Rafiquzzaman M', '12', '325', 0, '2020-01-02'),
(790, 20, 'Microprocessors theory and applictions (Intel and Motorola)', 'Rafiquzzaman M', '12', '325', 0, '2020-01-02'),
(791, 20, 'Microprocessors theory and applictions (Intel and Motorola)', 'Rafiquzzaman M', '12', '325', 0, '2020-01-02'),
(792, 20, 'The pentium microprocessor', 'Antonakos , James L', '12', '310', 0, '2020-01-02'),
(793, 20, 'The pentium microprocessor', 'Antonakos , James L', '12', '310', 0, '2020-01-02'),
(794, 20, 'The pentium microprocessor', 'Antonakos , James L', '12', '310', 0, '2020-01-02'),
(795, 20, 'The pentium microprocessor', 'Antonakos , James L', '12', '310', 0, '2020-01-02'),
(797, 20, 'Microcomputer systems: The 8086/8088 family architecture , programming & design', 'Liu , Yu-cheng , Gibson , Glenn A ', '12', '250', 2, '2020-01-02'),
(798, 20, 'Microcomputer systems: The 8086/8088 family architecture , programming & design', 'Liu , Yu-cheng , Gibson , Glenn A ', '12', '250', 2, '2020-01-02'),
(800, 20, 'Microcomputer systems: The 8086/8088 family architecture , programming & design', 'Liu , Yu-cheng , Gibson , Glenn A ', '12', '250', 2, '2020-01-02'),
(801, 20, 'Microcomputer systems: The 8086/8088 family architecture , programming & design', 'Liu , Yu-cheng , Gibson , Glenn A ', '12', '250', 2, '2020-01-02'),
(802, 18, 'Computer graphics: C version', 'Hearn,Donald Baker,M.Pauline', '9', '425', 2, '2020-01-02'),
(803, 18, 'Computer graphics: C version', 'Hearn,Donald Baker,M.Pauline', '9', '425', 2, '2020-01-02'),
(804, 18, 'Computer graphics: C version', 'Hearn,Donald Baker,M.Pauline', '9', '425', 2, '2020-01-02'),
(805, 18, 'Computer graphics: C version', 'Hearn,Donald Baker,M.Pauline', '9', '425', 2, '2020-01-02'),
(806, 18, 'Computer graphics: C version', 'Hearn,Donald Baker,M.Pauline', '9', '425', 2, '2020-01-02'),
(807, 18, 'computer graphics: principles and practice', 'Foley, James.D,Dom,Andries Vam,Feines,Steven.k Hughes,John F', '9', '475', 2, '2020-01-02'),
(808, 18, 'computer graphics: principles and practice', 'Foley,James Dietal', '9', '475', 2, '2020-01-02'),
(809, 18, 'computer graphics: principles and practice', 'Foley,James Dietal', '9', '475', 2, '2020-01-02'),
(810, 18, 'computer graphics: principles and practice', 'Foley,James Dietal', '9', '475', 2, '2020-01-02'),
(811, 18, 'computer graphics: principles and practice', 'Foley,James Dietal', '9', '475', 2, '2020-01-02'),
(812, 18, 'Database management system', 'Ramakrishnan, Raghu D Hehrke,Johannes', '21', '316', 3, '2020-01-02'),
(813, 18, 'Database management system', 'Ramakrishnan, Raghu D Hehrke,Johannes', '21', '316', 3, '2020-01-02'),
(814, 18, 'Database management system', 'Ramakrishnan, Raghu D Hehrke,Johannes', '21', '316', 3, '2020-01-02'),
(815, 18, 'Database management system', 'Ramakrishnan, Raghu D Hehrke,Johannes', '21', '316', 3, '2020-01-02'),
(816, 18, 'Database management system', 'Ramakrishnan, Raghu D Hehrke,Johannes', '21', '316', 3, '2020-01-02'),
(817, 18, 'Fundamentals of database system', 'Elmasri,Ramez Narathe,Shamkar.B', '21', '360', 4, '2020-01-02'),
(818, 18, 'Fundamentals of database system', 'Elmasri,Ramez Narathe,Shamkar.B', '21', '360', 4, '2020-01-02'),
(819, 18, 'Fundamentals of database system', 'Elmasri,Ramez Narathe,Shamkar.B', '21', '360', 4, '2020-01-02'),
(820, 18, 'Fundamentals of database system', 'Elmasri,Ramez Narathe,Shamkar.B', '21', '360', 4, '2020-01-02'),
(821, 18, 'Fundamentals of database system', 'Elmasri,Ramez Narathe,Shamkar.B', '21', '360', 4, '2020-01-02'),
(822, 18, 'An introduction to database system', 'Date .C.J', '21', '350', 7, '2020-01-02'),
(823, 18, 'An introduction to database system', 'Date .C.J', '21', '350', 7, '2020-01-02'),
(824, 18, 'An introduction to database system', 'Date .C.J', '21', '350', 7, '2020-01-02'),
(825, 18, 'Dtabase system concepts', 'Silberschatz,Abraham,Korth,Henry F,Sudharsan.S', '21', '254', 4, '2020-01-02'),
(826, 18, 'Dtabase system concepts', 'Silberschatz,Abraham,Korth,Henry F,Sudharsan.S', '21', '254', 4, '2020-01-02'),
(827, 18, 'Dtabase system concepts', 'Silberschatz,Abraham,Korth,Henry F,Sudharsan.S', '21', '254', 4, '2020-01-02'),
(828, 18, 'Software engineering: A practitioneer\'s approach', 'Pressman,Roger.S', '5', '415', 6, '2020-01-02'),
(829, 18, 'Software engineering: A practitioneer\'s approach', 'Pressman,Roger.S', '5', '415', 6, '2020-01-02'),
(830, 18, 'Software engineering: A practitioneer\'s approach', 'Pressman,Roger.S', '5', '415', 6, '2020-01-02'),
(831, 18, 'Software engineering: A practitioneer\'s approach', 'Pressman,Roger.S', '5', '415', 6, '2020-01-02'),
(832, 18, 'Software engineering: A practitioneer\'s approach', 'Pressman,Roger.S', '5', '415', 6, '2020-01-02'),
(833, 18, 'Compilers:principles,techniques and tools', 'Aho,Alfred.V,Sethi Ravi &Ullman,Jeffrey.D', '2', '399', 0, '2020-01-02'),
(834, 18, 'Compilers:principles,techniques and tools', 'Aho,Alfred.V,Sethi Ravi &Ullman,Jeffrey.D', '2', '399', 0, '2020-01-02'),
(835, 18, 'Compilers:principles,techniques and tools', 'Aho,Alfred.V,Sethi Ravi &Ullman,Jeffrey.D', '2', '399', 0, '2020-01-02'),
(836, 18, 'Compilers:principles,techniques and tools', 'Aho,Alfred.V,Sethi Ravi &Ullman,Jeffrey.D', '2', '399', 0, '2020-01-02'),
(837, 18, 'Compilers:principles,techniques and tools', 'Aho,Alfred.V,Sethi Ravi &Ullman,Jeffrey.D', '2', '399', 0, '2020-01-02'),
(838, 18, 'Discrete event system simulation', 'Bonks,Jerry,Crson,John S Nelson,Barry L Nicol,David.M', '2', '175', 3, '2020-01-02'),
(839, 18, 'Discrete event system simulation', 'Bonks,Jerry,Crson,John S Nelson,Barry L Nicol,David.M', '2', '175', 3, '2020-01-02'),
(841, 18, 'System simulation', 'Gordon,Geoffrey', '2', '175', 2, '2020-01-02'),
(842, 18, 'System simulation', 'Gordon,Geoffrey', '2', '175', 2, '2020-01-02'),
(843, 18, 'System simulation', 'Gordon,Geoffrey', '2', '175', 2, '2020-01-02'),
(844, 18, 'A VHDL Primer', 'Bhasker.J', '1', '199', 3, '2020-01-02'),
(845, 18, 'A VHDL Primer', 'Bhasker.J', '1', '199', 3, '2020-01-02'),
(847, 18, 'System simulation with digital computer', 'Deo,Narasingh', '2', '95', 0, '2020-01-02'),
(848, 18, 'System simulation with digital computer', 'Deo,Narasingh', '2', '95', 0, '2020-01-02'),
(849, 18, 'System simulation with digital computer', 'Deo,Narasingh', '2', '95', 0, '2020-01-02'),
(850, 18, 'System simulation with digital computer', 'Deo,Narasingh', '2', '95', 0, '2020-01-02'),
(851, 18, 'System simulation with digital computer', 'Deo,Narasingh', '2', '95', 0, '2020-01-02'),
(853, 19, 'Numerical methods', 'Balaguruswami.E', '7', '195', 0, '2020-01-02'),
(854, 19, 'Numerical methods', 'Balaguruswami.E', '7', '195', 0, '2020-01-02'),
(855, 19, 'Numerical methods', 'Balaguruswami.E', '7', '195', 0, '2020-01-02'),
(856, 18, 'Computer oriented numerical methods', 'Rajaraman.V', '7', '89', 3, '2020-01-02'),
(859, 18, 'Enterprise resource planning:concets and practice', 'Garg,Vinod kumar&Venkitakrishnan', '13', '150', 2, '2020-01-02'),
(860, 18, 'Enterprise resource planning:concets and practice', 'Garg,Vinod kumar&Venkitakrishnan', '13', '150', 2, '2020-01-02'),
(861, 18, 'Enterprise resource planning:concets and practice', 'Garg,Vinod kumar&Venkitakrishnan', '13', '150', 2, '2020-01-02'),
(862, 18, 'Computer organization ', 'V.Card Hamacher', '18', '', 4, '2020-01-02'),
(863, 18, 'Developing e-commerce sites:An integrated approach', 'Shasma,Vivek&Shasma,Rajiv', '9', '399', 0, '2020-01-02'),
(864, 18, 'Developing e-commerce sites:An integrated approach', 'Shasma,Vivek&Shasma,Rajiv', '9', '399', 0, '2020-01-02'),
(866, 18, 'Java 2: The complete reference', 'Schildt,Herbert', '19', '395', 5, '2020-01-02'),
(867, 18, 'Java 2: The complete reference', 'Schildt,Herbert', '19', '395', 5, '2020-01-02'),
(870, 18, 'Theory of computer science', 'Mishra K.L.P&Chandrasekaran.N', '1', '150', 2, '2020-01-02'),
(871, 18, 'Theory of computer science', 'Mishra K.L.P&Chandrasekaran.N', '1', '150', 2, '2020-01-02'),
(872, 18, 'Theory of computer science', 'Mishra K.L.P&Chandrasekaran.N', '1', '150', 2, '2020-01-02'),
(873, 18, 'Theory of computer science', 'Mishra K.L.P&Chandrasekaran.N', '1', '150', 2, '2020-01-02'),
(874, 18, 'Web commerce technology handbook', 'Minoli Daniel&Minoli,tmma', '9', '295', 0, '2020-01-02'),
(875, 18, 'Web commerce technology handbook', 'Minoli Daniel&Minoli,tmma', '9', '295', 0, '2020-01-02'),
(876, 18, 'Web commerce technology handbook', 'Minoli Daniel&Minoli,tmma', '9', '295', 0, '2020-01-02'),
(877, 18, 'Web commerce technology handbook', 'Minoli Daniel&Minoli,tmma', '9', '295', 0, '2020-01-02'),
(878, 18, 'Web commerce technology handbook', 'Minoli Daniel&Minoli,tmma', '9', '295', 0, '2020-01-02'),
(879, 18, 'David loppefield', 'Dickens,Charles', '14', '125', 0, '2020-01-02'),
(880, 18, 'David loppefield', 'Charles Dickens', '14', '125', 0, '2020-01-02'),
(881, 18, 'David loppefield', 'Charles Dickens', '14', '125', 0, '2020-01-02'),
(884, 20, 'Principles of electonics', 'Mehta.V.K,& Mehta,Rohit', '11', '240', 0, '2020-01-02'),
(885, 20, 'Principles of electonics', 'Mehta.V.K,& Mehta,Rohit', '11', '240', 0, '2020-01-02'),
(886, 20, 'Basic electronic solid state', 'Theja.B.L', '11', '315', 0, '2020-01-02'),
(887, 20, 'Basic electronic solid state', 'Theja.B.L', '11', '315', 0, '2020-01-02'),
(888, 18, 'Industrial engineering&management', 'Khanna.D.P&Sarup.A', '13', '310', 0, '2020-01-02'),
(889, 18, 'Industrial engineering&management', 'Khanna.D.P&Sarup.A', '13', '310', 0, '2020-01-02'),
(890, 19, 'Afirst look at graph theory', 'Clork,John', '7', '130', 1, '2020-01-02'),
(891, 19, 'Statistics for management', 'Levin,Richard.i,Rubin,David.S', '14', '395', 7, '2020-01-02'),
(892, 19, 'Statistics for management', 'Levin,Richard.i,Rubin,David.S', '14', '395', 7, '2020-01-02'),
(893, 19, 'Statistics for management', 'Levin,Richard.i,Rubin,David.S', '14', '395', 7, '2020-01-02'),
(895, 18, 'Cryptography and network security:principles and practice', 'Stallings,William', '20', '225', 3, '2020-01-02'),
(896, 18, 'Cryptography and network security:principles and practice', 'Stallings,William', '20', '225', 3, '2020-01-02'),
(897, 18, 'Cryptography and network security:principles and practice', 'Stallings,William', '20', '225', 3, '2020-01-02'),
(898, 18, 'Cryptography and network security:principles and practice', 'Stallings,William', '20', '225', 3, '2020-01-02'),
(899, 19, 'A first look at graph theory', 'Clark,John&Holton,Derek Allan', '7', '180', 0, '2020-01-02'),
(900, 19, 'A first look at graph theory', 'Clark,John&Holton,Derek Allan', '7', '180', 0, '2020-01-02'),
(901, 19, 'Discrete mathematics and its applications', 'Rosen, Kenneth M', '6', '375', 5, '2020-01-02'),
(902, 19, 'Discrete mathematics and its applications', 'Rosen, Kenneth M', '6', '375', 5, '2020-01-02'),
(904, 18, 'Computer organisation', 'Hamacher,Carl, Vranesic, Zronko and Zaky, Sotwat', '18', '340', 5, '2020-01-02'),
(905, 18, 'Computer organisation', 'Hamacher,Carl, Vranesic, Zronko and Zaky, Sotwat', '18', '340', 5, '2020-01-02'),
(906, 18, 'Computer organisation', 'Hamacher,Carl, Vranesic, Zronko and Zaky, Sotwat', '18', '340', 5, '2020-01-02'),
(907, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '295', 0, '2020-01-02'),
(908, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '295', 0, '2020-01-02'),
(909, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '295', 0, '2020-01-02'),
(910, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '295', 0, '2020-01-02'),
(911, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '295', 0, '2020-01-02'),
(912, 18, 'Algorithms + Data structures = Programs', 'Wirth,Niklaus', '10', '125', 0, '2020-01-02'),
(913, 18, 'Algorithms + Data structures = Programs', 'Wirth,Niklaus', '10', '125', 0, '2020-01-02'),
(914, 18, 'Algorithms + Data structures = Programs', 'Wirth,Niklaus', '10', '125', 0, '2020-01-02'),
(915, 18, 'Algorithms + Data structures = Programs', 'Wirth,Niklaus', '10', '125', 0, '2020-01-02'),
(916, 18, 'Algorithms + Data structures = Programs', 'Wirth,Niklaus', '10', '125', 0, '2020-01-02'),
(917, 18, 'System software: An introduction to system programming', 'Beck, Leland L', '8', '295', 3, '2020-01-02'),
(918, 18, 'System software: An introduction to system programming', 'Beck, Leland L', '8', '295', 3, '2020-01-02'),
(919, 19, 'Applied numerical analysis', 'Gernald, Curtis F and Wheatley,Patrick O', '7', '310', 6, '2020-01-02'),
(920, 19, 'Applied numerical analysis', 'Gernald, Curtis F and Wheatley,Patrick O', '7', '310', 6, '2020-01-02'),
(921, 19, 'Operations Research: An introduction', 'Taha, Mamdy A', '6', '295', 7, '2020-01-02'),
(922, 19, 'Operations Research: An introduction', 'Taha, Mamdy A', '6', '295', 7, '2020-01-02'),
(923, 19, 'Operations Research: An introduction', 'Taha, Mamdy A', '6', '295', 7, '2020-01-02'),
(924, 18, 'An introduction to operations research', 'Hillier, Frederick S and Lisberman Gerald J', '6', '295', 7, '2020-01-02'),
(925, 18, 'An introduction to operations research', 'Hillier, Frederick S and Lisberman Gerald J', '6', '295', 7, '2020-01-02'),
(926, 18, 'Operating system concepts', 'Silberschatz, Abraham, Galvin, Peter Baer and Gagne', '4', '393', 6, '2020-01-02'),
(927, 18, 'Operating system concepts', 'Silberschatz, Abraham, Galvin, Peter Baer and Gagne', '4', '393', 6, '2020-01-02'),
(928, 18, 'Operating system concepts', 'Silberschatz, Abraham, Galvin, Peter Baer and Gagne', '4', '393', 6, '2020-01-02'),
(929, 18, 'Compiler: principles, techniques and tools', 'Aho , Alfred V , Sethi, Ravi and Ullman , Jefery', '2', '399', 0, '2020-01-02'),
(931, 18, 'Compiler: principles, techniques and tools', 'Aho , Alfred V , Sethi, Ravi and Ullman , Jefery', '2', '399', 0, '2020-01-02'),
(932, 18, 'Compiler: principles, techniques and tools', 'Aho , Alfred V , Sethi, Ravi and Ullman , Jefery', '2', '399', 0, '2020-01-02'),
(933, 18, 'Compiler: principles, techniques and tools', 'Aho , Alfred V , Sethi, Ravi and Ullman , Jefery', '2', '399', 0, '2020-01-02'),
(934, 18, 'Compiler design in C', 'Holub, Allen I', '2', '325', 0, '2020-01-02'),
(935, 18, 'Compiler design in C', 'Holub, Allen I', '2', '325', 0, '2020-01-02'),
(936, 18, 'Compiler design in C', 'Holub, Allen I', '2', '325', 0, '2020-01-02'),
(937, 18, 'Software engineering', 'Sommerille, Ian', '5', '395', 6, '2020-01-02'),
(938, 18, 'Software engineering', 'Sommerille, Ian', '5', '395', 6, '2020-01-02'),
(939, 18, 'Software engineering', 'Sommerille, Ian', '5', '395', 6, '2020-01-02'),
(940, 18, 'Compiler Architecture: A quantitative approach', 'Hennessey, John L and Patterson, David A', '2', '395', 3, '2020-01-02'),
(941, 18, 'Compiler Architecture: A quantitative approach', 'Hennessey, John L and Patterson, David A', '2', '395', 3, '2020-01-02'),
(942, 18, 'Compiler Architecture: A quantitative approach', 'Hennessey, John L and Patterson, David A', '2', '395', 3, '2020-01-02'),
(943, 18, 'Compiler Architecture: A quantitative approach', 'Hennessey, John L and Patterson, David A', '2', '395', 3, '2020-01-02'),
(944, 18, 'Compiler Architecture: A quantitative approach', 'Hennessey, John L and Patterson, David A', '2', '395', 3, '2020-01-02'),
(945, 18, 'Computer organisation and Design', 'Hennessey, John L and Patterson, David A', '18', '395', 3, '2020-01-02'),
(946, 18, 'Computer organisation and Design', 'Hennessey, John L and Patterson, David A', '18', '395', 3, '2020-01-02'),
(947, 18, 'Computer organisation and Design', 'Hennessey, John L and Patterson, David A', '18', '395', 3, '2020-01-02'),
(948, 18, 'Computer organisation and Design', 'Hennessey, John L and Patterson, David A', '18', '395', 3, '2020-01-02'),
(949, 18, 'Computer organisation and Design', 'Hennessey, John L and Patterson, David A', '18', '395', 3, '2020-01-02'),
(950, 21, 'Financial management', 'Khan, M Y Jain and P K', '13', '375', 4, '2020-01-02'),
(951, 21, 'Financial management', 'Khan, M Y Jain and P K', '13', '375', 4, '2020-01-02'),
(952, 18, 'Data communications and networking', 'Forouzan, Behrouz A and Fegan, Sophia Chung', '19', '325', 3, '2020-01-02'),
(953, 18, 'Data communications and networking', 'Forouzan, Behrouz A and Fegan, Sophia Chung', '19', '325', 3, '2020-01-02'),
(954, 18, 'Data communications and networking', 'Forouzan, Behrouz A and Fegan, Sophia Chung', '19', '325', 3, '2020-01-02'),
(955, 18, 'Data communications and networking', 'Forouzan, Behrouz A and Fegan, Sophia Chung', '19', '325', 3, '2020-01-02'),
(956, 18, 'Data communications and networking', 'Forouzan, Behrouz A and Fegan, Sophia Chung', '19', '325', 3, '2020-01-02'),
(957, 18, 'Data communications, Computer networks and Open systems', 'Malsall, Fred', '19', '395', 4, '2020-01-02'),
(959, 18, 'Computer networks: Asystems approach', 'Peterson,Larry L and Davie, Bruce S', '19', '395', 3, '2020-01-02'),
(961, 18, 'An engineering approach to computer networking: ATM networks, the internet and the telephone network', 'Keshar S', '3', '299', 0, '2020-01-02'),
(962, 18, 'An engineering approach to computer networking: ATM networks, the internet and the telephone network', 'Keshar S', '3', '299', 0, '2020-01-02'),
(963, 18, 'Artificial intelligence: Structures and strategies for complex problem solving', 'Luger, George F', '8', '360', 4, '2020-01-02'),
(964, 18, 'Artificial intelligence: Structures and strategies for complex problem solving', 'Luger, George F', '8', '360', 4, '2020-01-02'),
(966, 18, 'Introduction to artificial intelligence and expert systems', 'Patterson, Don W', '8', '175', 0, '2020-01-02'),
(967, 18, 'Introduction to artificial intelligence and expert systems', 'Patterson, Don W', '8', '175', 0, '2020-01-02'),
(968, 18, 'Introduction to artificial intelligence and expert systems', 'Patterson, Don W', '8', '175', 0, '2020-01-02'),
(969, 18, 'Introduction to artificial intelligence and expert systems', 'Patterson, Don W', '8', '175', 0, '2020-01-02'),
(970, 18, 'Introduction to artificial intelligence and expert systems', 'Patterson, Don W', '8', '175', 0, '2020-01-02'),
(971, 18, 'Artificial intelligence: A new synthesis', 'Nilsson, Nit J', '8', '395', 0, '2020-01-02'),
(972, 18, 'Artificial intelligence: A new synthesis', 'Nilsson, Nit J', '8', '395', 0, '2020-01-02'),
(973, 18, 'Artificial intelligence: A new synthesis', 'Nilsson, Nit J', '8', '395', 0, '2020-01-02'),
(974, 18, 'Artificial intelligence: A new synthesis', 'Nilsson, Nit J', '8', '395', 0, '2020-01-02'),
(975, 18, 'Artificial intelligence: A new synthesis', 'Nilsson, Nit J', '8', '395', 0, '2020-01-02'),
(977, 18, 'Digital image processing', 'Gonzalez, Rafael C and Woods , Richard E', '1', '250', 2, '2020-01-02'),
(979, 18, 'Fundamentals of digital image processing', 'Jain , Auil K', '1', '225', 0, '2020-01-02'),
(981, 18, 'Digital image processing:P!KS inside', 'Pratt, William K', '1', '450', 3, '2020-01-02'),
(982, 18, 'The design and analysis of computer algorithms', 'aho , Alfred V, Hopcroft , John E, Ullman , Jefery D', '7', '260', 0, '2020-01-02'),
(983, 18, 'The design and analysis of computer algorithms', 'aho , Alfred V, Hopcroft , John E, Ullman , Jefery D', '7', '260', 0, '2020-01-02'),
(984, 18, 'Java 2 platform unleashed', 'Jaworski, Jamie', '19', '499', 0, '2020-01-02'),
(985, 18, 'Java 2 platform unleashed', 'Jaworski, Jamie', '19', '499', 0, '2020-01-02'),
(986, 18, 'Java 2 platform unleashed', 'Jaworski, Jamie', '19', '499', 0, '2020-01-02'),
(987, 18, 'Digital communications systems with satellite and fiber optics applications', 'Kolimbiris, Harold', '20', '310', 0, '2020-01-02'),
(988, 18, 'Digital communications systems with satellite and fiber optics applications', 'Kolimbiris, Harold', '20', '310', 0, '2020-01-02'),
(989, 18, 'Satellite communications', 'Gagliardi, Robert M', '20', '175', 0, '2020-01-02'),
(991, 18, 'Optical communication systems', 'Gowar, John', '20', '275', 2, '2020-01-02'),
(992, 18, 'Optical communication systems', 'Gowar, John', '20', '275', 2, '2020-01-02'),
(993, 18, 'Appliying UML and pattersons: An introduction to object oriented analysis and design and iterative d', 'Lasman, Graig', '3', '399', 3, '2020-01-02'),
(994, 18, 'Appliying UML and pattersons: An introduction to object oriented analysis and design and iterative d', 'Lasman, Graig', '3', '399', 3, '2020-01-02'),
(996, 18, 'Principles of interactive computer graphics', 'Newman, William M and Sproull, Robert F', '9', '225', 2, '2020-01-02'),
(997, 18, 'Principles of interactive computer graphics', 'Newman, William M and Sproull, Robert F', '9', '225', 2, '2020-01-02'),
(998, 18, 'Principles of interactive computer graphics', 'Newman, William M and Sproull, Robert F', '9', '225', 2, '2020-01-02'),
(999, 18, 'Computer graphics', 'Hearn, Donald and Baker , M Pouline', '9', '425', 2, '2020-01-02'),
(1000, 18, 'Computer graphics', 'Hearn, Donald and Baker , M Pouline', '9', '425', 2, '2020-01-02'),
(1001, 18, 'Computer graphics', 'Hearn, Donald and Baker , M Pouline', '9', '425', 2, '2020-01-02'),
(1002, 18, 'Multimedia:making it work', 'Vaughan,Tay', '2', '375', 6, '2020-01-02'),
(1003, 18, 'Multimedia:making it work', 'Vaughan,Tay', '2', '375', 6, '2020-01-02'),
(1005, 18, 'Computer networking: A topdown approach featuring the internet', 'Kurose,James F and Ross,Keithw', '19', '375', 2, '2020-01-02'),
(1006, 18, 'Mobile communications', 'Schiller,Jochen H', '20', '330', 2, '2020-01-02'),
(1007, 18, 'Mobile communications', 'Schiller,Jochen H', '20', '330', 2, '2020-01-02'),
(1009, 18, 'WAP-The wireless application protocol writing applications for the mobile internet', 'Singhal, Sandeep', '20', '449', 0, '2020-01-02'),
(1010, 18, 'WAP-The wireless application protocol writing applications for the mobile internet', 'Singhal, Sandeep', '20', '449', 0, '2020-01-02'),
(1011, 18, 'Frontiers of electronic commerce', 'Kalakota,Ravi and Whinston,Andrew B', '9', '375', 0, '2020-01-02'),
(1012, 18, 'Frontiers of electronic commerce', 'Kalakota,Ravi and Whinston,Andrew B', '9', '375', 0, '2020-01-02'),
(1013, 18, 'Frontiers of electronic commerce', 'Kalakota,Ravi and Whinston,Andrew B', '9', '375', 0, '2020-01-02'),
(1015, 18, 'The unified software development process', 'Jacobson,Ivar,Booch,Grady and Rumbough,James', '4', '475', 0, '2020-01-02'),
(1016, 18, 'The unified software development process', 'Jacobson,Ivar,Booch,Grady and Rumbough,James', '4', '475', 0, '2020-01-02'),
(1017, 18, 'Object oriented systems development using the unified modeling language', 'Bahrami,Ali', '3', '260', 0, '2020-01-02'),
(1018, 18, 'Object oriented systems development using the unified modeling language', 'Bahrami,Ali', '3', '260', 0, '2020-01-02'),
(1019, 18, 'Object oriented systems development using the unified modeling language', 'Bahrami,Ali', '3', '260', 0, '2020-01-02'),
(1020, 18, 'Software architecture:perspectives on an emerging descipline', 'Shaw,Mary and Garlon,David', '18', '225', 0, '2020-01-02'),
(1021, 18, 'Software architecture:perspectives on an emerging descipline', 'Shaw,Mary and Garlon,David', '18', '225', 0, '2020-01-02'),
(1022, 18, 'Computer networks and internets with internet application', 'Comer,Douglas E', '19', '325', 4, '2020-01-02'),
(1023, 18, 'Computer networks and internets with internet application', 'Comer,Douglas E', '19', '325', 4, '2020-01-02'),
(1024, 18, 'Computer networks and internets with internet application', 'Comer,Douglas E', '19', '325', 4, '2020-01-02'),
(1026, 18, 'Pattern classification', 'Dudo,Richard O,Hart,Peter E and stork,David G', '6', '415', 2, '2020-01-02'),
(1028, 18, 'Pattern classification', 'Dudo,Richard O,Hart,Peter E and stork,David G', '6', '415', 2, '2020-01-02'),
(1030, 18, 'Software project management:a unified framework', 'Royce,Walker', '5', '360', 0, '2020-01-02'),
(1031, 18, 'Software project management:a unified framework', 'Royce,Walker', '5', '360', 0, '2020-01-02'),
(1032, 18, 'Introduction to the personal software process', 'Humphrey,Watts S', '5', '315', 0, '2020-01-02'),
(1034, 18, 'Introduction to the personal software process', 'Humphrey,Watts S', '5', '315', 0, '2020-01-02'),
(1035, 18, 'Distributed operating systems:concepts and design', 'Sinha,Pradeep k', '4', '325', 0, '2020-01-02'),
(1037, 18, 'Distributed operating systems:concepts and design', 'Sinha,Pradeep k', '4', '325', 0, '2020-01-02'),
(1038, 21, 'Management accounting', 'Khan,M.Y and Jain P K', '13', '295', 3, '2020-01-02'),
(1039, 21, 'Management accounting', 'Khan,M.Y and Jain P K', '13', '295', 3, '2020-01-02'),
(1041, 21, 'Management accounting', 'Khan,M.Y and Jain P K', '13', '295', 3, '2020-01-02'),
(1042, 21, 'Management accounting', 'Khan,M.Y and Jain P K', '13', '295', 3, '2020-01-02'),
(1043, 18, 'An integrated approach to software engineering', 'Jalote,Pankaj', '5', '295', 3, '2020-01-02'),
(1045, 18, 'An integrated approach to software engineering', 'Jalote,Pankaj', '5', '295', 3, '2020-01-02'),
(1046, 19, 'An introduction to the theory of numbers', 'Niven,Ivan,Zuckerman Herbert S and Montgomery,Hugh L', '7', '305', 5, '2020-01-02'),
(1048, 19, 'An introduction to the theory of numbers', 'Niven,Ivan,Zuckerman Herbert S and Montgomery,Hugh L', '7', '305', 5, '2020-01-02'),
(1049, 18, 'Operating systems', 'Nutt,Gary', '4', '395', 3, '2020-01-02'),
(1050, 18, 'Operating systems', 'Nutt,Gary', '4', '395', 3, '2020-01-02'),
(1051, 18, 'Operating systems', 'Nutt,Gary', '4', '395', 3, '2020-01-02'),
(1053, 18, 'Operating systems', 'Nutt,Gary', '4', '395', 3, '2020-01-02'),
(1054, 18, 'Multimedia:computing,communications and applications', 'Steinmetz,Ralf and Nahrstedt Klara', '2', '399', 0, '2020-01-02'),
(1055, 18, 'Multimedia:computing,communications and applications', 'Steinmetz,Ralf and Nahrstedt Klara', '2', '399', 0, '2020-01-02'),
(1056, 18, 'Multimedia:computing,communications and applications', 'Steinmetz,Ralf and Nahrstedt Klara', '2', '399', 0, '2020-01-02'),
(1057, 18, 'Multimedia:computing,communications and applications', 'Steinmetz,Ralf and Nahrstedt Klara', '2', '399', 0, '2020-01-02'),
(1058, 18, 'Multimedia:computing,communications and applications', 'Steinmetz,Ralf and Nahrstedt Klara', '2', '399', 0, '2020-01-02'),
(159, 18, 'The rational unified process an introduction', 'Kruch ten,Philippe', '4', '275', 3, '2020-01-02'),
(1060, 18, 'The rational unified process an introduction', 'Kruch ten,Philippe', '4', '275', 3, '2020-01-02'),
(1061, 18, 'Simulation modelling and analysis', 'Law,Averill M and Kelton David', '2', '265', 3, '2020-01-02'),
(1062, 18, 'Simulation modelling and analysis', 'Law,Averill M and Kelton David', '2', '265', 3, '2020-01-02'),
(1063, 18, 'Simulation modelling and analysis', 'Law,Averill M and Kelton David', '2', '265', 3, '2020-01-02'),
(1064, 18, 'Simulation modelling and analysis', 'Law,Averill M and Kelton David', '2', '265', 3, '2020-01-02'),
(1065, 18, 'Mobile cellular telecommunications:analog and digital systems', 'Lee,William C.Y', '20', '286', 2, '2020-01-02'),
(1066, 18, 'Mobile cellular telecommunications:analog and digital systems', 'Lee,William C.Y', '20', '286', 2, '2020-01-02'),
(1067, 19, 'Discrete mathematics', 'Sharma, J K', '6', '208', 2, '2020-01-02'),
(1069, 20, 'Principles of electronics', 'Mehta,V K and Mehta ,Shalu', '11', '', 7, '2020-01-02'),
(1070, 18, 'Software engineering:a practitioners approach', 'Pressman,Rogar S', '5', '', 7, '2020-01-02'),
(1071, 18, 'Software engineering:a practitioners approach', 'Pressman,Rogar S', '5', '', 0, '2020-01-02'),
(1072, 18, 'Software engineering', 'Sommerville,Ivan', '5', '', 6, '2020-01-02'),
(1073, 18, 'Software engineering', 'Sommerville,Ivan', '5', '', 6, '2020-01-02');
INSERT INTO `book_details_tb` (`book_id`, `category_id`, `book_name`, `author`, `shelf_no`, `price`, `book_edition`, `book_added_on`) VALUES
(1074, 18, 'Analysis and design of information systems', 'Senn,James A', '8', '', 2, '2020-01-02'),
(1075, 18, 'In-lne/on-line:fundamentals of the internet and www', 'Greenlaw,Raymond and Hepp,Ellen', '19', '', 0, '2020-01-02'),
(1076, 18, 'In-lne/on-line:fundamentals of the internet and www', 'Greenlaw,Raymond and Hepp,Ellen', '19', '', 0, '2020-01-02'),
(1077, 18, 'In-lne/on-line:fundamentals of the internet and www', 'Greenlaw,Raymond and Hepp,Ellen', '19', '', 0, '2020-01-02'),
(1078, 18, 'Look back in anger', 'Osborne,John', '14', '', 0, '2020-01-02'),
(1079, 18, 'Look back in anger', 'Osborne,John', '14', '', 0, '2020-01-02'),
(1080, 18, 'Look back in anger', 'Osborne,John', '14', '', 0, '2020-01-02'),
(1081, 18, 'Look back in anger', 'Osborne,John', '14', '', 0, '2020-01-02'),
(1082, 18, 'Look back in anger', 'Osborne,John', '14', '', 0, '2020-01-02'),
(1083, 18, 'Understanding pointers in c', 'Konetkar,Yashwant P', '20', '210', 3, '2020-01-02'),
(1084, 18, 'Introduction to algorithms', 'Cormen,Thomas H,Leiserson,Charle Rivest,Ronald L Stein,Clifford', '7', '350', 2, '2020-01-02'),
(1086, 18, 'Mobile communications', 'Schiller,Jochen', '20', '295', 2, '2020-01-02'),
(1087, 18, 'Operating systems:internals and design principles', 'Stallings,William', '4', '325', 5, '2020-01-02'),
(1088, 18, 'ASP.NET unleashed', 'Walther,Stephen', '1', '540', 0, '2020-01-02'),
(1090, 18, 'Visual c++ 6 programming bible', 'Leinecker.Richard C and Aacher Tom', '5', '499', 0, '2020-01-02'),
(1091, 18, 'Applying UMC and patterns:an introduction to object oriented analysis and design and iterative devel', 'Larman,Gaig', '4', '450', 3, '2020-01-02'),
(1092, 18, 'Applying UML and patterns:an introduction to object oriented analysis and design and iterative devel', 'Larman,Gaig', '4', '450', 3, '2020-01-02'),
(1093, 18, 'Applying UML and patterns:an introduction to object oriented analysis and design and iterative devel', 'Larman,Gaig', '4', '450', 3, '2020-01-02'),
(1094, 18, 'Applying UML and patterns:an introduction to object oriented analysis and design and iterative devel', 'Larman,Gaig', '4', '450', 3, '2020-01-02'),
(1095, 18, 'Applying UML and patterns:an introduction to object oriented analysis and design and iterative devel', 'Larman,Gaig', '4', '450', 3, '2020-01-02'),
(1096, 18, 'Artificial intelligence:structures and strategies for complex problem solving', 'Luger, George F', '8', '435', 4, '2020-01-02'),
(1097, 18, 'Artificial intelligence:structures and strategies for complex problem solving', 'Luger, George F', '8', '435', 4, '2020-01-02'),
(1098, 18, 'Artificial intelligence:structures and strategies for complex problem solving', 'Luger, George F', '8', '435', 4, '2020-01-02'),
(1099, 18, 'Computer networking: A topdown approach featuring the internet', 'KUrose,James F and Ross,Keithw', '19', '375', 3, '2020-01-02'),
(1100, 18, 'Computer networking: A topdown approach featuring the internet', 'KUrose,James F and Ross,Keithw', '19', '375', 3, '2020-01-02'),
(1101, 18, 'Computer networking: A topdown approach featuring the internet', 'KUrose,James F and Ross,Keithw', '19', '375', 3, '2020-01-02'),
(1102, 18, 'Computer networking: A topdown approach featuring the internet', 'KUrose,James F and Ross,Keithw', '19', '375', 3, '2020-01-02'),
(1103, 18, 'Computer networking: A topdown approach featuring the internet', 'KUrose,James F and Ross,Keithw', '19', '375', 3, '2020-01-02'),
(1104, 18, 'Comuter systems design and architecture', 'Heuring , Vincent P & Jordan Harry F', '18', '280', 2, '2020-01-02'),
(1105, 18, 'Comuter systems design and architecture', 'Heuring , Vincent P & Jordan Harry F', '18', '280', 2, '2020-01-02'),
(1106, 18, 'Comuter systems design and architecture', 'Heuring , Vincent P & Jordan Harry F', '18', '280', 2, '2020-01-02'),
(1107, 18, 'Comuter systems design and architecture', 'Heuring , Vincent P & Jordan Harry F', '18', '280', 2, '2020-01-02'),
(1108, 18, 'Comuter systems design and architecture', 'Heuring , Vincent P & Jordan Harry F', '18', '280', 2, '2020-01-02'),
(1109, 18, 'Fundamentals of database systems', 'Elmasri , Ramez ,Navathe , Shamkant B', '21', '350', 4, '2020-01-02'),
(1110, 18, 'Fundamentals of database systems', 'Elmasri , Ramez ,Navathe , Shamkant B', '21', '350', 4, '2020-01-02'),
(1111, 18, 'Fundamentals of database systems', 'Elmasri , Ramez ,Navathe , Shamkant B', '21', '350', 4, '2020-01-02'),
(1112, 18, 'Fundamentals of database systems', 'Elmasri , Ramez ,Navathe , Shamkant B', '21', '350', 4, '2020-01-02'),
(1113, 18, 'Fundamentals of database systems', 'Elmasri , Ramez ,Navathe , Shamkant B', '21', '350', 4, '2020-01-02'),
(1115, 18, 'Fundamentals of database systems', 'Elmasri , Ramez ,Navathe , Shamkant B', '21', '350', 4, '2020-01-02'),
(1116, 18, 'Fundamentals of database systems', 'Elmasri , Ramez ,Navathe , Shamkant B', '21', '350', 4, '2020-01-02'),
(1117, 18, 'Data mining : Concepts and techniques', 'Han , Jiawei , Kamber , Micheline', '18', '450', 2, '2020-01-02'),
(1118, 18, 'Data mining : Concepts and techniques', 'Han , Jiawei , Kamber , Micheline', '18', '450', 2, '2020-01-02'),
(1119, 18, 'Data mining : Concepts and techniques', 'Han , Jiawei , Kamber , Micheline', '18', '450', 2, '2020-01-02'),
(1120, 19, 'Elements of the theory of computation', 'Lewis , Harry R Papadimitriou , Christos H', '1', '225', 2, '2020-01-02'),
(1122, 19, 'Elements of the theory of computation', 'Lewis , Harry R Papadimitriou , Christos H', '1', '225', 2, '2020-01-02'),
(1124, 18, 'Froutiers of electronic commerce', 'Kolakota , Ravi , Whinston , Andrew B', '9', '450', 0, '2020-01-02'),
(1125, 18, 'Froutiers of electronic commerce', 'Kolakota , Ravi , Whinston , Andrew B', '9', '450', 0, '2020-01-02'),
(1126, 18, 'Fundmentals of object oriented design in UML', 'Page-Jones , Meilir', '3', '350', 0, '2020-01-02'),
(1127, 18, 'Fundmentals of object oriented design in UML', 'Page-Jones , Meilir', '3', '350', 0, '2020-01-02'),
(1129, 18, 'Fundmentals of object oriented design in UML', 'Page-Jones , Meilir', '3', '350', 0, '2020-01-02'),
(1130, 18, 'Fundmentals of object oriented design in UML', 'Page-Jones , Meilir', '3', '350', 0, '2020-01-02'),
(1131, 18, 'Fundmentals of object oriented design in UML', 'Page-Jones , Meilir', '3', '350', 0, '2020-01-02'),
(1132, 18, 'Fundmentals of object oriented design in UML', 'Page-Jones , Meilir', '3', '350', 0, '2020-01-02'),
(1133, 18, 'Fundmentals of object oriented design in UML', 'Page-Jones , Meilir', '3', '350', 0, '2020-01-02'),
(1134, 18, 'IBM PC: Assembly language and programming', 'Abel , Peter & Nizamudin , Niyaz', '3', '195', 0, '2020-01-02'),
(1135, 18, 'IBM PC: Assembly language and programming', 'Abel , Peter & Nizamudin , Niyaz', '3', '195', 0, '2020-01-02'),
(1136, 18, 'Internetworking with TCP/IP design , imlementtion and internals(ANSIC version)', 'Comer , Douglas E and Stevens , David L', '3', '275', 3, '2020-01-02'),
(1137, 18, 'Internetworking with TCP/IP design , imlementtion and internals(ANSIC version)', 'Comer , Douglas E and Stevens , David L', '3', '275', 3, '2020-01-02'),
(1138, 18, 'Internetworking with TCP/IP design , imlementtion and internals(ANSIC version)', 'Comer , Douglas E and Stevens , David L', '3', '275', 3, '2020-01-02'),
(1139, 18, 'Internetworking with TCP/IP design , imlementtion and internals(ANSIC version)', 'Comer , Douglas E and Stevens , David L', '3', '275', 3, '2020-01-02'),
(1141, 18, 'Let us C', 'Kanetkar , Yashavant P', '20', '198', 8, '2020-01-02'),
(1142, 18, 'Let us C', 'Kanetkar , Yashavant P', '20', '198', 8, '2020-01-02'),
(1143, 18, 'Let us C', 'Kanetkar , Yashavant P', '20', '198', 8, '2020-01-02'),
(1144, 18, 'Mastering c++', 'Venugoal K R , Buyyer , Rajkumar & Ravishankar T', '5', '320', 0, '2020-01-02'),
(1145, 18, 'Mastering c++', 'Venugoal K R , Buyyer , Rajkumar & Ravishankar T', '5', '320', 0, '2020-01-02'),
(1146, 18, 'Mastering c++', 'Venugoal K R , Buyyer , Rajkumar & Ravishankar T', '5', '320', 0, '2020-01-02'),
(1147, 18, 'Mastering c++', 'Venugoal K R , Buyyer , Rajkumar & Ravishankar T', '5', '320', 0, '2020-01-02'),
(1148, 18, 'Mastering c++', 'Venugoal K R , Buyyer , Rajkumar & Ravishankar T', '5', '320', 0, '2020-01-02'),
(1149, 18, 'Mobile communications', 'Schiller , Jochen H', '20', '360', 2, '2020-01-02'),
(1150, 18, 'Mobile communications', 'Schiller , Jochen H', '20', '360', 2, '2020-01-02'),
(1151, 18, 'Mobile communications', 'Schiller , Jochen H', '20', '360', 2, '2020-01-02'),
(1152, 18, 'Mobile communications', 'Schiller , Jochen H', '20', '360', 2, '2020-01-02'),
(1153, 18, 'Mobile communications', 'Schiller , Jochen H', '20', '360', 2, '2020-01-02'),
(1154, 18, 'Multimedia computing , communications and applications', 'Steinmetz , Ralf & Nahrstedt , Klara', '2', '450', 0, '2020-01-02'),
(1155, 18, 'Multimedia computing , communications and applications', 'Steinmetz , Ralf & Nahrstedt , Klara', '2', '450', 0, '2020-01-02'),
(1156, 18, 'Multimedia computing , communications and applications', 'Steinmetz , Ralf & Nahrstedt , Klara', '2', '450', 0, '2020-01-02'),
(1157, 18, 'Multimedia computing , communications and applications', 'Steinmetz , Ralf & Nahrstedt , Klara', '2', '450', 0, '2020-01-02'),
(1158, 18, 'Multimedia computing , communications and applications', 'Steinmetz , Ralf & Nahrstedt , Klara', '2', '450', 0, '2020-01-02'),
(1159, 18, 'Multimedia: Making it work', 'Vaughan , Toy', '2', '395', 7, '2020-01-02'),
(1160, 18, 'Multimedia: Making it work', 'Vaughan , Toy', '2', '395', 7, '2020-01-02'),
(1161, 18, 'Multimedia: Making it work', 'Vaughan , Toy', '2', '395', 7, '2020-01-02'),
(1162, 18, 'Multimedia: Making it work', 'Vaughan , Toy', '2', '395', 7, '2020-01-02'),
(1163, 18, 'Multimedia: Making it work', 'Vaughan , Toy', '4', '395', 7, '2020-01-02'),
(1165, 18, 'Operating systems', 'Stallings , William', '5', '299', 5, '2020-01-02'),
(1166, 18, 'Software engineering: A practitioner\'s approach', 'Pressman , Rogers', '5', '410', 6, '2020-01-02'),
(1167, 18, 'Software engineering: A practitioner\'s approach', 'Pressman , Rogers', '5', '410', 6, '2020-01-02'),
(1168, 18, 'Software engineering: A practitioner\'s approach', 'Pressman , Rogers', '5', '410', 6, '2020-01-02'),
(1169, 18, 'Software engineering: A practitioner\'s approach', 'Pressman , Rogers', '5', '410', 6, '2020-01-02'),
(1170, 18, 'Software engineering: A practitioner\'s approach', 'Pressman , Rogers', '5', '410', 6, '2020-01-02'),
(1171, 18, 'Software engineering', 'Sommerville , Jan', '5', '415', 7, '2020-01-02'),
(1172, 18, 'Software engineering', 'Sommerville , Jan', '5', '415', 7, '2020-01-02'),
(1173, 18, 'Software engineering', 'Sommerville , Jan', '5', '415', 7, '2020-01-02'),
(1174, 18, 'Software engineering', 'Sommerville , Jan', '5', '415', 7, '2020-01-02'),
(1175, 18, 'Software engineering', 'Sommerville , Jan', '5', '415', 7, '2020-01-02'),
(1176, 18, 'Theory of computer science: Automata , languages and computation', 'Mishra K L P , Chandrasekaran N', '1', '225', 3, '2020-01-02'),
(1177, 18, 'Theory of computer science: Automata , languages and computation', 'Mishra K L P , Chandrasekaran N', '1', '225', 3, '2020-01-02'),
(1178, 18, 'Theory of computer science: Automata , languages and computation', 'Mishra K L P , Chandrasekaran N', '1', '225', 3, '2020-01-02'),
(1179, 18, 'Theory of computer science: Automata , languages and computation', 'Mishra K L P , Chandrasekaran N', '1', '225', 3, '2020-01-02'),
(1180, 18, 'Theory of computer science: Automata , languages and computation', 'Mishra K L P , Chandrasekaran N', '1', '225', 3, '2020-01-02'),
(1181, 18, 'Theory of computer science: Automata , languages and computation', 'Mishra K L P , Chandrasekaran N', '1', '225', 3, '2020-01-02'),
(1182, 18, 'The unified modeling language user guide : The ultimate tutorial to the UML from the originaldesigne', 'Booch , Grady , Rumbaugh , James & Jacobson , Ivar', '3', '450', 0, '2020-01-02'),
(1183, 18, 'The unified modeling language user guide : The ultimate tutorial to the UML from the originaldesigne', 'Booch , Grady , Rumbaugh , James & Jacobson , Ivar', '3', '450', 0, '2020-01-02'),
(1184, 18, 'The unified modeling language user guide : The ultimate tutorial to the UML from the originaldesigne', 'Booch , Grady , Rumbaugh , James & Jacobson , Ivar', '3', '450', 0, '2020-01-02'),
(1185, 18, 'WAP-The wireless application protocol: writing applications for the mobile internet', 'Singhal Sandeep, Bridgman Thomas,Lalitha Suryanarayana', '4', '525', 0, '2020-01-02'),
(1187, 18, 'Data communications and networking', 'Forouzn , Behrouz A', '19', '365', 4, '2020-01-02'),
(1188, 18, 'Data communications and networking', 'Forouzn , Behrouz A', '19', '365', 4, '2020-01-02'),
(1189, 18, 'Inline and online: Fundamentals of the internet and the world wide web', 'Greenlaw and Hepp , Eilen', '19', '299', 2, '2020-01-02'),
(1191, 18, 'Java 2: The complete reference', 'Schildt, Herbert', '19', '450', 5, '2020-01-02'),
(1192, 18, 'Java 2: The complete reference', 'Schildt, Herbert', '19', '450', 5, '2020-01-02'),
(1193, 18, 'Java 2: The complete reference', 'Schildt, Herbert', '19', '450', 5, '2020-01-02'),
(1194, 18, 'Java 2: The complete reference', 'Schildt, Herbert', '19', '450', 5, '2020-01-02'),
(1195, 19, 'Numerical Methods', 'Balaguruswamy E', '7', '235', 0, '2020-01-02'),
(1196, 19, 'Numerical Methods', 'Balaguruswamy E', '7', '235', 0, '2020-01-02'),
(1197, 19, 'Numerical Methods', 'Balaguruswamy E', '7', '235', 0, '2020-01-02'),
(1198, 19, 'Numerical Methods', 'Balaguruswamy E', '7', '235', 0, '2020-01-02'),
(1199, 19, 'Numerical Methods', 'Balaguruswamy E', '7', '235', 0, '2020-01-02'),
(1200, 19, 'Pattern classification', 'Duda, Richard G, Hart , peter E and Sterk, David G', '6', '479', 2, '2020-01-02'),
(1201, 19, 'Pattern classification', 'Duda, Richard G, Hart , peter E and Sterk, David G', '6', '479', 2, '2020-01-02'),
(1202, 19, 'Pattern classification', 'Duda, Richard G, Hart , peter E and Sterk, David G', '6', '479', 2, '2020-01-02'),
(1203, 18, 'Theory of computer science', 'Mishra,K.P.L Chandrasekaran.N', '1', '225', 3, '2020-01-02'),
(1205, 18, 'Theory of computer science', 'Mishra,K.P.L Chandrasekaran.N', '1', '225', 3, '2020-01-02'),
(1206, 18, 'Developing e-commerce sites: An integrated approach', 'Sharma,Vivek Sharma,Rajiv', '9', '450', 0, '2020-01-02'),
(1207, 18, 'An introduction to ds with application', 'Tremblay', '10', '265', 0, '2020-01-02'),
(1208, 18, 'Multimedia on the web', 'Mc Gloughlin,Stephan', '2', '250', 0, '2020-01-02'),
(1209, 18, 'Multimedia on the web', 'Mc Gloughlin,Stephan', '2', '250', 0, '2020-01-02'),
(1210, 18, 'Multimedia on the web', 'Mc Gloughlin,Stephan', '2', '250', 0, '2020-01-02'),
(1211, 18, 'Multimedia on the web', 'Mc Gloughlin,Stephan', '2', '250', 0, '2020-01-02'),
(1212, 18, 'Multimedia on the web', 'Mc Gloughlin,Stephan', '2', '250', 0, '2020-01-02'),
(1213, 19, 'Elementary theory of numbers', 'Hsiung.C.Y', '7', '120', 0, '2020-01-02'),
(1214, 18, 'Fundamentals of data structures in C++', 'Horowitz,Ellis sahni,Sartaj&Mehta,Dinesh', '10', '375', 0, '2020-01-02'),
(1215, 18, 'Fundamentals of data structures in C++', 'Horowitz,Ellis sahni,Sartaj&Mehta,Dinesh', '10', '375', 0, '2020-01-02'),
(1216, 18, 'Principles of data mining', 'Hand,David,Mannila,Heikki smyth', '18', '350', 0, '2020-01-02'),
(1217, 18, 'Principles of data mining', 'Hand,David,Mannila,Heikki smyth', '18', '350', 0, '2020-01-02'),
(1218, 19, 'Principles of data mining', 'Hand,David,Mannila,Heikki smyth', '18', '350', 0, '2020-01-02'),
(1219, 19, 'Applied numerical analysis', 'Gerald,Curtis.F&Wheatley,Patrick', '6', '350', 7, '2020-01-02'),
(1220, 19, 'Applied numerical analysis', 'Gerald,Curtis.F&Wheatley,Patrick', '6', '350', 7, '2020-01-02'),
(1221, 19, 'Applied numerical analysis', 'Gerald,Curtis.F&Wheatley,Patrick', '6', '350', 7, '2020-01-02'),
(1224, 18, 'Mastering visual basic 6', 'Petroutsos,Erangelos', '1', '597', 0, '2020-01-02'),
(1225, 18, 'Natural language processing:A pawnian perspective', 'Bharati,Akshan Chaitanya,Vineet&Sngal,Rajeev', '1', '150', 0, '2020-01-02'),
(1226, 18, 'Natural language processing:A pawnian perspective', 'Bharati,Akshan Chaitanya,Vineet&Sngal,Rajeev', '1', '150', 0, '2020-01-02'),
(1228, 18, 'Software project management:A unified framework', 'Royce,Walker', '5', '425', 0, '2020-01-02'),
(1229, 18, 'Software project management:A unified framework', 'Royce,Walker', '5', '425', 0, '2020-01-02'),
(1230, 18, 'Unix:concepts&applications', 'Das,Sumitabha', '4', '325', 0, '2020-01-02'),
(1231, 18, 'Unix:concepts&applications', 'Das,Sumitabha', '4', '325', 0, '2020-01-02'),
(1233, 18, 'Unix:concepts&applications', 'Das,Sumitabha', '4', '325', 0, '2020-01-02'),
(1234, 18, 'Unix:concepts&applications', 'Das,Sumitabha', '4', '325', 0, '2020-01-02'),
(1235, 18, 'Pattern classification', 'Duda,Richard.O,Hart,Peter.E.Stork,David.G', '6', '479', 2, '2020-01-02'),
(1236, 18, 'Pattern classification', 'Duda,Richard.O,Hart,Peter.E.Stork,David.G', '6', '479', 2, '2020-01-02'),
(1237, 18, 'The ABCs of javascript', 'Purcell,Lee&Mara,Mary Jane', '19', '225', 0, '2020-01-02'),
(1238, 18, 'The ABCs of javascript', 'Purcell,Lee&Mara,Mary Jane', '19', '225', 0, '2020-01-02'),
(1240, 18, 'Advanced computer architecture: A systems design approach', 'Kain,Richard.Y', '18', '450', 0, '2020-01-02'),
(1241, 18, 'Advanced computer architecture: A systems design approach', 'Kain,Richard.Y', '18', '450', 0, '2020-01-02'),
(1242, 18, 'Advanced computer architecture: A systems design approach', 'Kain,Richard.Y', '18', '450', 0, '2020-01-02'),
(1244, 18, 'Advanced computer architecture: A systems design approach', 'Kain,Richard.Y', '18', '450', 0, '2020-01-02'),
(1245, 18, 'Advanced computer architecture: A systems design approach', 'Sima,Dezso Farntain,Terence Kacsuk,Peter', '18', '485', 0, '2020-01-02'),
(1246, 18, 'Advanced computer architecture: A systems design approach', 'Sima,Dezso Farntain,Terence Kacsuk,Peter', '18', '485', 0, '2020-01-02'),
(1247, 18, 'Advanced computer architecture: A systems design approach', 'Sima,Dezso Farntain,Terence Kacsuk,Peter', '18', '485', 0, '2020-01-02'),
(1248, 18, 'Advanced computer architecture: A systems design approach', 'Sima,Dezso Farntain,Terence Kacsuk,Peter', '18', '485', 0, '2020-01-02'),
(1250, 18, 'Applied XML solutions', 'Marchal,Benoit', '3', '180', 0, '2020-01-02'),
(1252, 18, 'Applied XML solutions', 'Marchal,Benoit', '3', '180', 0, '2020-01-02'),
(1253, 18, 'ASP.NET developer\'s guide', 'Buczek,Greg', '1', '525', 0, '2020-01-02'),
(1254, 18, 'ASP.NET developer\'s guide', 'Buczek,Greg', '1', '525', 0, '2020-01-02'),
(1255, 18, 'ASP.NET developer\'s guide', 'Buczek,Greg', '1', '525', 0, '2020-01-02'),
(1256, 18, 'ASP.NET developer\'s guide', 'Buczek,Greg', '1', '525', 0, '2020-01-02'),
(1258, 18, 'HTML 4.0:No experience required', 'Mack,E.Stephan&Platt Janan', '2', '360', 0, '2020-01-02'),
(1259, 18, 'HTML 4.0:No experience required', 'Mack,E.Stephan&Platt Janan', '2', '360', 0, '2020-01-02'),
(1261, 18, 'The HTML example book', 'Farrar,Edward&Smith,Norman.E', '2', '210', 0, '2020-01-02'),
(1262, 18, 'The HTML example book', 'Farrar,Edward&Smith,Norman.E', '2', '210', 0, '2020-01-02'),
(1263, 18, 'The HTML example book', 'Farrar,Edward&Smith,Norman.E', '2', '210', 0, '2020-01-02'),
(1266, 18, 'Javascript in 24 hours', 'Moncur,Michael', '19', '275', 0, '2020-01-02'),
(1267, 18, 'Learn advanced javascript programming', 'Shiran,Yehuda Shiran,Tomer', '19', '399', 0, '2020-01-02'),
(1268, 18, 'Learn advanced javascript programming', 'Shiran,Yehuda Shiran,Tomer', '19', '399', 0, '2020-01-02'),
(1269, 18, 'Learn advanced javascript programming', 'Shiran,Yehuda Shiran,Tomer', '19', '399', 0, '2020-01-02'),
(1270, 18, 'Starting out with object oriented programming in C++', 'Gaddis,Tony,Watters,Judy&MUGANDA,Godfrey', '5', '349', 3, '2020-01-02'),
(1271, 18, 'Starting out with object oriented programming in C++', 'Gaddis,Tony,Watters,Judy&MUGANDA,Godfrey', '5', '349', 3, '2020-01-02'),
(1273, 18, 'Starting out with object oriented programming in C++', 'Gaddis,Tony,Watters,Judy&MUGANDA,Godfrey', '5', '349', 3, '2020-01-02'),
(1274, 18, 'Starting out with object oriented programming in C++', 'Gaddis,Tony,Watters,Judy&MUGANDA,Godfrey', '5', '349', 3, '2020-01-02'),
(1275, 18, 'The unified software development process', 'Jacobson,Ivar,Booch,Grady,Rumbaugh,James', '4', '499', 0, '2020-01-02'),
(1276, 18, 'The unified software development process', 'Jacobson,Ivar,Booch,Grady,Rumbaugh,James', '4', '499', 0, '2020-01-02'),
(1277, 18, 'The unified software development process', 'Jacobson,Ivar,Booch,Grady,Rumbaugh,James', '4', '499', 0, '2020-01-02'),
(1278, 18, 'Unix internals:The new frontiers', 'Vhalia,Uresh', '4', '465', 0, '2020-01-02'),
(1279, 18, 'Unix internals:The new frontiers', 'Vhalia,Uresh', '4', '465', 0, '2020-01-02'),
(1280, 18, 'Unix internals:The new frontiers', 'Vhalia,Uresh', '4', '465', 0, '2020-01-02'),
(1281, 18, 'Unix internals:The new frontiers', 'Vhalia,Uresh', '4', '465', 0, '2020-01-02'),
(1282, 18, 'Unix internals:The new frontiers', 'Vhalia,Uresh', '4', '465', 0, '2020-01-02'),
(1283, 18, 'Unix network programming:The socket networking api', 'Stevens,W.Richard,Fenner,Bill&Rudoff,Andrew.M', '4', '375', 0, '2020-01-02'),
(1284, 18, 'Unix network programming:The socket networking api', 'Stevens,W.Richard,Fenner,Bill&Rudoff,Andrew.M', '4', '375', 0, '2020-01-02'),
(1285, 18, 'Unix network programming:The socket networking api', 'Stevens,W.Richard,Fenner,Bill&Rudoff,Andrew.M', '4', '375', 0, '2020-01-02'),
(1286, 18, 'Unix network programming:The socket networking api', 'Stevens,W.Richard,Fenner,Bill&Rudoff,Andrew.M', '4', '375', 0, '2020-01-02'),
(1288, 18, 'The unix programming environment', 'kernighan, Brian w & Pike, Rob', '4', '195', 0, '2020-01-02'),
(1290, 18, 'System software :An introduction to systems programming', 'Beck, lelgrd L', '8', '195', 0, '2020-01-02'),
(1291, 18, 'Enterprise research planning', 'Vinodkumar', '13', '', 3, '2020-01-02'),
(1292, 18, 'An introduction to building the data warehouse', 'Venkateswaran. N. K', '18', '180', 0, '2020-01-02'),
(1293, 25, 'Study aid to florets', 'Erluat university control co-operative stores', '14', '90', 0, '2020-01-02'),
(1294, 25, 'Global english and arms', 'Mythili. S & Kadambari', '14', '35', 0, '2020-01-02'),
(1296, 22, 'Frantiers of elective commerce', 'Kalakola', '9', '499', 0, '2020-01-02'),
(1298, 25, 'Global english: An anthology of english prose', 'Raja, Anornd kemoed', '14', '35', 0, '2020-01-02'),
(1299, 19, 'Elementary theory of numbers', 'Hsiung. C. Y', '1', '120', 0, '2020-01-02'),
(1300, 19, 'Elementary theory of numbers', 'Hsiung. C. Y', '1', '120', 0, '2020-01-02'),
(1301, 19, 'Elementary theory of numbers', 'Hsiung. C. Y', '1', '120', 0, '2020-01-02'),
(1302, 18, 'Computer networking', 'James F, Kuros &Keith W. Ross', '19', '510', 3, '2020-01-02'),
(1303, 18, 'Computer networking', 'James F, Kuros &Keith W. Ross', '19', '510', 3, '2020-01-02'),
(1304, 18, 'Computer networking', 'James F, Kuros &Keith W. Ross', '19', '510', 3, '2020-01-02'),
(1305, 18, 'Computer networking', 'James F, Kuros &Keith W. Ross', '19', '510', 3, '2020-01-02'),
(1306, 18, 'Computer networking', 'James F, Kuros &Keith W. Ross', '19', '510', 3, '2020-01-02'),
(1307, 18, 'Computer architecture: Aquantitative approach', 'Hennessy,John L &Patterson, David A', '18', '450', 4, '2020-01-02'),
(1308, 18, 'Computer architecture: Aquantitative approach', 'Hennessy,John L &Patterson, David A', '18', '450', 4, '2020-01-02'),
(1309, 18, 'Computer architecture: Aquantitative approach', 'Hennessy,John L &Patterson, David A', '18', '450', 4, '2020-01-02'),
(1310, 18, 'Java 2: The complete reference', 'Schildt,Herbert', '19', '485', 5, '2020-01-02'),
(1311, 18, 'Introduction to artificial intelligence and expert systems', 'Patterson, Don W', '8', '225', 0, '2020-01-02'),
(1312, 18, 'Introduction to artificial intelligence and expert systems', 'Patterson, Don W', '8', '225', 0, '2020-01-02'),
(1313, 18, 'Introduction to artificial intelligence and expert systems', 'Patterson, Don W', '8', '225', 0, '2020-01-02'),
(1314, 18, 'Introduction to artificial intelligence and expert systems', 'Patterson, Don W', '8', '225', 0, '2020-01-02'),
(1315, 18, 'Introduction to artificial intelligence and expert systems', 'Patterson, Don W', '8', '225', 0, '2020-01-02'),
(1316, 18, 'Operating systems', 'Stallings, William', '4', '435', 6, '2020-01-02'),
(1317, 18, 'Operating systems', 'Stallings, William', '4', '435', 6, '2020-01-02'),
(1318, 18, 'Operating systems', 'Stallings, William', '4', '435', 6, '2020-01-02'),
(1319, 18, 'Operating systems', 'Stallings, William', '4', '435', 6, '2020-01-02'),
(1320, 18, 'Operating systems', 'Stallings, William', '4', '435', 6, '2020-01-02'),
(1322, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '375', 2, '2020-01-02'),
(1323, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '375', 2, '2020-01-02'),
(1324, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '375', 2, '2020-01-02'),
(1325, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '375', 2, '2020-01-02'),
(1326, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '375', 2, '2020-01-02'),
(1327, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '375', 2, '2020-01-02'),
(1328, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '375', 2, '2020-01-02'),
(1329, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '375', 2, '2020-01-02'),
(1330, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '10', '375', 2, '2020-01-02'),
(1332, 19, 'Elements of discrete mathematics', 'Leici C L', '6', '250', 3, '2020-01-02'),
(1333, 19, 'Elements of discrete mathematics', 'Leici C L', '6', '250', 3, '2020-01-02'),
(1334, 19, 'Elements of discrete mathematics', 'Leici C L', '6', '250', 3, '2020-01-02'),
(1335, 19, 'Elements of discrete mathematics', 'Leici C L', '6', '250', 3, '2020-01-02'),
(1336, 18, 'Principles of data mining', 'Danid Hand', '18', '350', 0, '2020-01-02'),
(1337, 18, 'Principles of data mining', 'Danid Hand', '18', '350', 0, '2020-01-02'),
(1338, 18, 'Principles of data mining', 'Danid Hand', '18', '350', 0, '2020-01-02'),
(1339, 18, 'Principles of data mining', 'Danid Hand', '18', '350', 0, '2020-01-02'),
(1340, 18, 'Principles of data mining', 'Danid Hand', '18', '350', 0, '2020-01-02'),
(1341, 18, 'Principles of data mining', 'Danid Hand', '18', '350', 0, '2020-01-02'),
(1342, 18, 'Principles of data mining', 'Danid Hand', '18', '350', 0, '2020-01-02'),
(1343, 18, 'Principles of data mining', 'Danid Hand', '18', '350', 0, '2020-01-02'),
(1344, 18, 'Principles of data mining', 'Danid Hand', '18', '350', 0, '2020-01-02'),
(1345, 18, 'Principles of data mining', 'Danid Hand', '18', '350', 0, '2020-01-02'),
(1347, 0, 'Vivarthanavichinthanam', 'Dr K V Thomas, Dr Mathew J Muttath', '14', '40', 0, '2020-01-02'),
(1348, 24, 'Vivarthanavichinthanam', 'Dr K V Thomas, Dr Mathew J Muttath', '14', '40', 0, '2020-01-02'),
(1349, 18, 'Vivarthanavichinthanam', 'Dr K V Thomas, Dr Mathew J Muttath', '14', '40', 0, '2020-01-02'),
(1350, 18, 'Theory of computer science', 'K L P mishra and Chandrasekaran', '1', '225', 3, '2020-01-02'),
(1352, 18, 'Theory of computer science', 'K L P mishra and Chandrasekaran', '1', '225', 3, '2020-01-02'),
(1353, 19, 'Theory of computer science', 'K L P mishra and Chandrasekaran', '1', '225', 3, '2020-01-02'),
(1354, 19, 'Elementary theory of numbers', 'C Y Hsiung', '7', '120', 0, '2020-01-02'),
(1355, 19, 'Elementary theory of numbers', 'C Y Hsiung', '7', '120', 0, '2020-01-02'),
(1356, 18, 'Elementary theory of numbers', 'C Y Hsiung', '7', '120', 0, '2020-01-02'),
(1358, 18, 'Software engineering', 'Ian Sommerville', '5', '550', 8, '2020-01-02'),
(1359, 18, 'Software engineering', 'Ian Sommerville', '5', '550', 8, '2020-01-02'),
(1360, 18, 'Software engineering', 'Ian Sommerville', '5', '550', 8, '2020-01-02'),
(1362, 18, 'Artificial intelligence', 'Elaine Rich & other', '8', '395', 3, '2020-01-02'),
(1363, 18, 'Artificial intelligence', 'Elaine Rich & other', '8', '395', 3, '2020-01-02'),
(1364, 18, 'Artificial intelligence', 'Elaine Rich & other', '8', '395', 3, '2020-01-02'),
(1365, 18, 'Data communications and networking', 'Behrouz A Forouzan', '19', '435', 4, '2020-01-02'),
(1366, 18, 'Data communications and networking', 'Behrouz A Forouzan', '19', '435', 4, '2020-01-02'),
(1367, 18, 'Data communications and networking', 'Behrouz A Forouzan', '19', '435', 4, '2020-01-02'),
(1368, 18, 'Data communications and networking', 'Behrouz A Forouzan', '19', '435', 4, '2020-01-02'),
(1370, 18, 'System software', 'Leland L.Beck D Manjula', '8', '425', 3, '2020-01-02'),
(1371, 18, 'System software', 'Leland L.Beck D Manjula', '8', '425', 3, '2020-01-02'),
(1372, 18, 'System software', 'Leland L.Beck D Manjula', '8', '425', 3, '2020-01-02'),
(1373, 18, 'Computer architecture: Aquantitative approach', 'John L Hennessy & David A. Patterson', '18', '450', 4, '2020-01-02'),
(1374, 18, 'Computer architecture: Aquantitative approach', 'John L Hennessy & David A. Patterson', '18', '450', 4, '2020-01-02'),
(1375, 18, 'Computer architecture: Aquantitative approach', 'John L Hennessy & David A. Patterson', '18', '450', 4, '2020-01-02'),
(1376, 18, 'Computer architecture: Aquantitative approach', 'John L Hennessy & David A. Patterson', '18', '450', 4, '2020-01-02'),
(1377, 18, 'Java 2: The complete reference', 'Schildt,Herbert', '19', '495', 5, '2020-01-02'),
(1378, 18, 'Java 2: The complete reference', 'Schildt,Herbert', '19', '495', 5, '2020-01-02'),
(1379, 18, 'Java 2: The complete reference', 'Schildt,Herbert', '19', '495', 5, '2020-01-02'),
(1380, 18, 'Java 2: The complete reference', 'Schildt,Herbert', '19', '495', 5, '2020-01-02'),
(1382, 18, 'Fundamentals of database systems', 'Elmasri & Navathe', '21', '485', 5, '2020-01-02'),
(1383, 18, 'Fundamentals of database systems', 'Elmasri & Navathe', '21', '485', 5, '2020-01-02'),
(1384, 18, 'Fundamentals of database systems', 'Elmasri & Navathe', '21', '485', 5, '2020-01-02'),
(1385, 18, 'Computer organisation', 'Carl Hamacher', '18', '$10.50', 5, '2020-01-02'),
(1386, 18, 'Computer organisation', 'Carl Hamacher', '18', '$10.50', 5, '2020-01-02'),
(1387, 18, 'Computer organisation', 'Carl Hamacher', '18', '$10.50', 5, '2020-01-02'),
(1388, 18, 'Computer organisation', 'Carl Hamacher', '18', '$10.50', 5, '2020-01-02'),
(1390, 18, 'Database management systems', 'Ramakrishnan and Gehrke', '21', '$12.50', 3, '2020-01-02'),
(1391, 18, 'Database management systems', 'Ramakrishnan and Gehrke', '21', '$12.50', 3, '2020-01-02'),
(1392, 18, 'Database management systems', 'Ramakrishnan and Gehrke', '21', '$12.50', 3, '2020-01-02'),
(1394, 18, 'Organizational Bhaviour', 'John W, Newstrom', '13', '399', 12, '2020-01-02'),
(1395, 18, 'Organizational Bhaviour', 'John W, Newstrom', '13', '399', 12, '2020-01-02'),
(1396, 18, 'Organizational Bhaviour', 'John W, Newstrom', '13', '399', 12, '2020-01-02'),
(1397, 18, 'Fundamentals of database systems', 'Elmasri & Navathe', '21', '485', 5, '2020-01-02'),
(1398, 18, 'Fundamentals of database systems', 'Elmasri & Navathe', '21', '485', 5, '2020-01-02'),
(1399, 18, 'Fundamentals of database systems', 'Elmasri & Navathe', '21', '485', 5, '2020-01-02'),
(1400, 18, 'Fundamentals of database systems', 'Elmasri & Navathe', '21', '485', 5, '2020-01-02'),
(1402, 18, 'Operating system concepts', 'Silberschatz Galvin and Gagne', '4', '479', 6, '2020-01-02'),
(1403, 18, 'Operating system concepts', 'Silberschatz Galvin and Gagne', '4', '479', 6, '2020-01-02'),
(1404, 18, 'Operating system concepts', 'Silberschatz Galvin and Gagne', '4', '479', 6, '2020-01-02'),
(1405, 19, 'A first look at graph theory', 'John clark and Halton', '7', '180', 0, '2020-01-02'),
(1406, 19, 'A first look at graph theory', 'John clark and Halton', '7', '', 0, '2020-01-02'),
(1407, 19, 'A first look at graph theory', 'John clark and Halton', '7', '', 0, '2020-01-02'),
(1408, 19, 'A first look at graph theory', 'John clark and Halton', '7', '', 0, '2020-01-02'),
(1409, 20, 'Microprocessors and Microcomputer based system design', 'Mohammed Rafiquzzaman', '12', '595', 2, '2020-01-02'),
(1410, 20, 'Microprocessors and Microcomputer based system design', 'Mohammed Rafiquzzaman', '12', '595', 2, '2020-01-02'),
(1411, 20, 'Microprocessors and Microcomputer based system design', 'Mohammed Rafiquzzaman', '12', '595', 2, '2020-01-02'),
(1412, 18, 'Datastructures and algorithms', 'Alfred v.aho Hopcroft and Ullman', '10', '', 0, '2020-01-02'),
(1416, 18, 'Embedded systems design', 'Frank vahid', '8', '389', 0, '2020-01-02'),
(1417, 18, 'Internet and www how to program', 'Deitel', '19', '745', 4, '2020-01-02'),
(1418, 18, 'Softwork project management', 'Bob hugher', '5', '485', 5, '2020-01-02'),
(1422, 18, 'Introduction to algorithms', 'Thomas H Cor wouk', '7', '995', 3, '2020-01-02'),
(1423, 18, 'Internet and www how to program', 'Paul J Dietel Hervey M Deitel', '19', '', 4, '2020-01-02'),
(1424, 18, 'Cryptography and network security:principles and practice', 'William stallings', '20', '', 0, '2020-01-02'),
(1425, 18, 'Cryptography and network security:principles and practice', 'William stallings', '20', '', 0, '2020-01-02'),
(1426, 18, 'Security in cryptography', 'Charle P.pfleeger Shari Lawrence pfleeger', '20', '450', 3, '2020-01-02'),
(1428, 19, 'Numerical methods', 'Chand . S', '7', '', 0, '2020-01-02'),
(1430, 18, 'Mastering c++', 'Venugopal,K.R,Rajkumar,Ravishanker,T', '5', '', 0, '2020-01-02'),
(1432, 18, 'Compilers:principles,techniques and tools', 'Aho,Alfred.V,Lam,Monica S,Ravi sethi,Ullman,Jeffrey D', '2', '899', 2, '2020-01-02'),
(1434, 18, 'Introduction to the theory of computation', 'Sipser,Michael', '1', '499', 3, '2020-01-02'),
(1435, 18, 'Introduction to the theory of computation', 'Sipser,Michael', '1', '499', 3, '2020-01-02'),
(1436, 18, 'Grid computing', 'Joseph,Joshy,Fellenstein,Craig', '2', '549', 0, '2020-01-02'),
(1437, 18, 'Grid computing', 'Joseph,Joshy,Fellenstein,Craig', '2', '549', 0, '2020-01-02'),
(1438, 18, 'Grid computing', 'Joseph,Joshy,Fellenstein,Craig', '2', '549', 0, '2020-01-02'),
(1440, 18, 'Software engineering:a practitioners approach', 'Pressman,Roger S', '5', '820', 7, '2020-01-02'),
(1442, 18, 'Computer networks', 'Tanenbaum,Andrew S,Wotherall,David J', '19', '699', 5, '2020-01-02'),
(1444, 18, 'Principles of information security', 'Whitman,Michael E,Mattord,Heibert J', '1', '599', 5, '2020-01-02'),
(1445, 18, 'Cryptography and network security', 'Stallings,William', '20', '679', 7, '2020-01-02'),
(1447, 18, 'Software testing:principles and practices', 'Desikan,Sreenivasan and Ramesh,Gopalaswamy', '5', '519', 0, '2020-01-02'),
(1449, 18, 'Kennedys electronic communication systems', 'Kennedy,George,Davis,Bernard,Prasanna,S.R.M', '20', '710', 6, '2020-01-02'),
(1450, 18, 'Kennedys electronic communication systems', 'Kennedy,George,Davis,Bernard,Prasanna,S.R.M', '20', '710', 6, '2020-01-02'),
(1452, 18, 'Digital image processing', 'Genzalez,Rafael C and Wonds,Richard E', '1', '799', 3, '2020-01-02'),
(1454, 18, 'The c++ programming language', 'Stroustrup,Bjarne', '5', '899', 3, '2020-01-02'),
(1455, 18, 'The c++ programming language', 'Stroustrup,Bjarne', '5', '899', 3, '2020-01-02'),
(1456, 18, 'Data compression:the complete referrence', 'Salomon,David', '1', '1295', 4, '2020-01-02'),
(1458, 18, 'Software engineering:a practitioners approach', 'Pressman,Roger S', '5', '820', 7, '2020-01-02'),
(1459, 18, 'Software engineering:a practitioners approach', 'Pressman,Roger S', '5', '820', 7, '2020-01-02'),
(1460, 18, 'Digital fundamentals', 'Floyd,Thomas L', '11', '759', 10, '2020-01-02'),
(1461, 18, 'Digital fundamentals', 'Floyd,Thomas L', '11', '759', 10, '2020-01-02'),
(1462, 18, 'Computer networks:a system approach', 'Peterson,Larry L,and Davie,Bruce,c', '19', '575', 5, '2020-01-02'),
(1463, 18, 'Security in computing', 'Pfleeger,Charles P,and Pfleeger,Shari Lawrence', '1', '859', 4, '2020-01-02'),
(1465, 18, 'Security in computing', 'Pfleeger,Charles P,and Pfleeger,Shari Lawrence', '1', '859', 4, '2020-01-02'),
(1466, 18, 'Data communication and networking', 'Forouzan,Behrouz A', '19', '795', 2, '2020-01-02'),
(1469, 18, 'Programming in ANSI C', 'Balagurusamy E', '20', '410', 7, '2020-01-02'),
(1470, 18, 'Programming in ANSI C', 'Balagurusamy E', '20', '410', 7, '2020-01-02'),
(1471, 18, 'Proffessional android for application development', 'Meier,Reto', '1', '699', 0, '2020-01-02'),
(1473, 18, 'Java:the complete refferrence', 'Schildt,Herbert', '19', '885', 9, '2020-01-02'),
(1474, 18, 'Introduction to automation theory,languages and computation', 'Hopcroft,John E', '1', '729', 3, '2020-01-02'),
(1475, 18, 'Introduction to automation theory,languages and computation', 'Hopcroft,John E', '1', '729', 3, '2020-01-02'),
(1476, 18, 'Programming with java: a primer', 'Balagurusamy E', '19', '485', 5, '2020-01-02'),
(1477, 18, 'Programming with java: a primer', 'Balagurusamy E', '19', '485', 5, '2020-01-02'),
(1478, 19, 'Elements of discrete mathematics:a computer oriented approach', 'Liu,C.L and Mohapatra,D.P', '6', '525', 4, '2020-01-02'),
(1479, 19, 'Elements of discrete mathematics:a computer oriented approach', 'Liu,C.L and Mohapatra,D.P', '6', '525', 4, '2020-01-02'),
(1481, 18, 'Fundamentals of computers', 'Rajaraman V,Adabala,Neeharika', '1', '295', 6, '2020-01-02'),
(1483, 18, 'Fundamentals of digital circuits', 'Anad kumar A', '11', '550', 4, '2020-01-02'),
(1484, 18, 'Data structures using c and c++', 'Langsam,Yedidyah,Augustein,Moshe J and Tanenbaum,Aaron M', '10', '524', 2, '2020-01-02'),
(1485, 18, 'Data structures using c and c++', 'Langsam,Yedidyah,Augustein,Moshe J and Tanenbaum,Aaron M', '10', '524', 2, '2020-01-02'),
(1487, 18, 'Mobile communications', 'Schiller,Jochen', '20', '799', 2, '2020-01-02'),
(1488, 18, 'The c++ programming language', 'Stroustrup,Bjarne', '5', '899', 3, '2020-01-02'),
(1489, 18, 'The c++ programming language', 'Stroustrup,Bjarne', '5', '899', 3, '2020-01-02'),
(1490, 18, 'The internet book', 'Comer,Douglas E', '19', '549', 4, '2020-01-02'),
(1491, 18, 'The internet book', 'Comer,Douglas E', '19', '549', 4, '2020-01-02'),
(1492, 20, 'The 8088 and 8086 microprocessors', 'Triebel,Walter A and Avtar singh', '12', '849', 4, '2020-01-02'),
(1493, 20, 'The 8088 and 8086 microprocessors', 'Triebel,Walter A and Avtar singh', '12', '849', 4, '2020-01-02'),
(1494, 18, 'Visual basic .NET programming block book', 'Holzner,Steven', '1', '699', 0, '2020-01-02'),
(1497, 18, 'Object oriented programming with c++', 'Balagurusamy E', '5', '385', 6, '2020-01-02'),
(1498, 18, 'Object oriented programming with c++', 'Balagurusamy E', '5', '385', 6, '2020-01-02'),
(1499, 18, 'Object oriented programming with c++', 'Balagurusamy E', '5', '385', 6, '2020-01-02'),
(1500, 18, 'Object oriented programming with c++', 'Balagurusamy E', '5', '385', 6, '2020-01-02'),
(1501, 19, 'Engineering mathematics', 'Kandasamy P,Thilagavathy K and Gunavathy K', '7', '215', 0, '2020-01-02'),
(1502, 18, 'PHP 6 and MySQL 6 Bible', 'Suehring,steve,Converse,Tim and Joyce Park', '1', '749', 0, '2020-01-02'),
(1504, 18, 'Parallel computing:Theory and practice', 'Quinn,Michael J', '18', '675', 2, '2020-01-02'),
(1505, 18, 'Parallel computing:Theory and practice', 'Quinn,Michael J', '18', '675', 2, '2020-01-02'),
(1506, 18, 'Parallel computing:Theory and practice', 'Quinn,Michael J', '18', '675', 2, '2020-01-02'),
(1507, 18, 'Parallel computing:Theory and practice', 'Quinn,Michael J', '18', '675', 2, '2020-01-02'),
(1509, 19, 'Elements of discrete mathematics', 'Liu C L and Mohapatra D P', '6', '525', 4, '2020-01-02'),
(1511, 18, 'The Internet book', 'Comer , Douglas E', '19', '549', 4, '2020-01-02'),
(1513, 18, 'Distributed and cloud computing:From parallel processing to the internet of things', 'Hwang, Kai, Fox ,Geoffrey C and Dangarra, Jack J', '2', '610', 0, '2020-01-02'),
(1515, 18, 'Data and computer communications', 'Stalling, William', '20', '839', 9, '2020-01-02'),
(1516, 18, 'Computer networks', 'Tanenbaum, Andrew S and Wetherall, David J', '19', '699', 5, '2020-01-02'),
(1518, 18, 'Data communication and networking', 'Forouzan, Behrouz A', '19', '725', 5, '2020-01-02'),
(1519, 18, 'Data communication and networking', 'Forouzan, Behrouz A', '19', '725', 5, '2020-01-02'),
(1520, 19, 'Discrete and combinatorial mathematics', 'Grimaldi, Raloh P and Ramana B V', '6', '879', 5, '2020-01-02'),
(1521, 19, 'Discrete and combinatorial mathematics', 'Grimaldi, Raloh P and Ramana B V', '6', '879', 5, '2020-01-02'),
(1523, 18, 'Data structures', 'Lipschutz, Seymour', '10', '499', 1, '2020-01-02'),
(1524, 18, 'Data structures', 'Lipschutz, Seymour', '10', '499', 1, '2020-01-02'),
(1526, 19, 'Discrete mathematical structures with applications to computer science', 'Tremblay J P and Manohar R', '6', '620', 0, '2020-01-02'),
(1527, 19, 'Discrete mathematical structures with applications to computer science', 'Tremblay J P and Manohar R', '6', '620', 0, '2020-01-02'),
(1528, 19, 'Discrete mathematical structures with applications to computer science', 'Tremblay J P and Manohar R', '6', '620', 0, '2020-01-02'),
(1529, 19, 'Discrete mathematical structures with applications to computer science', 'Tremblay J P and Manohar R', '6', '620', 0, '2020-01-02'),
(1531, 19, 'Advanced engineering mathematics', 'Kreyszig, Erwin', '14', '839', 10, '2020-01-02'),
(1532, 19, 'Advanced engineering mathematics', 'Kreyszig, Erwin', '14', '839', 10, '2020-01-02'),
(1533, 19, 'Advanced engineering mathematics', 'Kreyszig, Erwin', '14', '839', 10, '2020-01-02'),
(1534, 19, 'Advanced engineering mathematics', 'Kreyszig, Erwin', '14', '839', 10, '2020-01-02'),
(1535, 19, 'Advanced engineering mathematics', 'Kreyszig, Erwin', '14', '839', 10, '2020-01-02'),
(1537, 19, 'Advanced engineering mathematics', 'Kreyszig, Erwin', '14', '839', 10, '2020-01-02'),
(1538, 19, 'Advanced engineering mathematics', 'Kreyszig, Erwin', '14', '839', 10, '2020-01-02'),
(1539, 19, 'Advanced engineering mathematics', 'Kreyszig, Erwin', '14', '839', 10, '2020-01-02'),
(1541, 20, 'The 8051 microcontroller and embedded systems: Using assembly and C', 'Mazidi,Jani Q Gillispie and Mckinlay Rolin D', '12', '729', 2, '2020-01-02'),
(1543, 20, 'OP-AMPS and linear integrated circuits', 'Gayakwad, Ramakant A', '1', '499', 4, '2020-01-02'),
(1544, 20, 'OP-AMPS and linear integrated circuits', 'Gayakwad, Ramakant A', '1', '499', 4, '2020-01-02'),
(1546, 18, 'Digital image processing', 'Ganzalez, Rafael C and Woods , Richard E', '1', '799', 3, '2020-01-02'),
(1547, 18, 'Classic data structures', 'Samanta , Debasis', '10', '495', 2, '2020-01-02'),
(1548, 19, 'Numerical methods', 'Balagurusamy E', '7', '625', 0, '2020-01-02'),
(1549, 19, 'Numerical methods', 'Balagurusamy E', '7', '625', 0, '2020-01-02'),
(1550, 19, 'Higher engineering mathematics', 'Bird , John', '7', '359', 8, '2020-01-02'),
(1552, 20, 'Electronic devices and circuit theory', 'Boylestad, Robert L and Naghelsky, Louis', '11', '849', 11, '2020-01-02'),
(1553, 20, 'Electronic devices and circuit theory', 'Boylestad, Robert L and Naghelsky, Louis', '11', '849', 11, '2020-01-02'),
(1554, 20, 'Electronic devices and circuit theory', 'Boylestad, Robert L and Naghelsky, Louis', '11', '849', 11, '2020-01-02'),
(1555, 20, 'Electronic devices and circuit theory', 'Boylestad, Robert L and Naghelsky, Louis', '11', '849', 11, '2020-01-02'),
(1557, 18, 'Introduction to computers', 'Norton, Peter', '1', '625', 7, '2020-01-02'),
(1560, 18, 'Operating systems', 'Nutt, Gary , Chaki, Nabendu and Neogy, Sarmistha', '4', '859', 3, '2020-01-02'),
(1561, 18, 'E-Commerce: An Indian perspective', 'Joseph, P T, S J', '9', '450', 5, '2020-01-02'),
(1564, 18, 'Fundamentals of database systems', 'Elmasri, Ramez and Navathe, Shamkant B', '21', '849', 7, '2020-01-02'),
(1566, 18, 'Data and computer communications', 'Stalling, William', '20', '839', 9, '2020-01-02'),
(1567, 18, 'Data and computer communications', 'Stalling, William', '20', '839', 9, '2020-01-02'),
(1568, 18, 'Software engineering', 'Sommerville , Ian', '5', '879', 10, '2020-01-02'),
(1569, 18, 'Software engineering', 'Sommerville , Ian', '5', '879', 10, '2020-01-02'),
(1570, 18, 'Pervasive computing: Technology and architecture of mobile internet applications', 'Burkhardt, Jochen', '2', '729', 0, '2020-01-02'),
(1571, 18, 'Pervasive computing: Technology and architecture of mobile internet applications', 'Burkhardt, Jochen', '2', '729', 0, '2020-01-02'),
(1572, 18, 'Pattern classification', 'Duda, Richard O, Hart, Peter E, Stoak, David G', '6', '809', 2, '2020-01-02'),
(1573, 18, 'Pattern classification', 'Duda, Richard O, Hart, Peter E, Stoak, David G', '6', '809', 2, '2020-01-02'),
(1574, 18, 'Software testing: Principles and practices', 'Desikan, Srinivasn, Ramesh GOALASWAMY', '5', '519', 0, '2020-01-02'),
(1575, 18, 'Software testing: Principles and practices', 'Desikan, Srinivasn, Ramesh GOALASWAMY', '5', '519', 0, '2020-01-02'),
(1576, 20, 'OP-AMPS and linear integrated circuits', 'Gayakwad, Ramakant A', '1', '499', 4, '2020-01-02'),
(1577, 20, 'OP-AMPS and linear integrated circuits', 'Gayakwad, Ramakant A', '1', '499', 4, '2020-01-02'),
(1578, 20, 'Kennedy\'s electronic communication systems', 'Kennedy, George, Davis , Bernard and Prasanna S R M', '20', '710', 6, '2020-01-02'),
(1579, 20, 'Kennedy\'s electronic communication systems', 'Kennedy, George, Davis , Bernard and Prasanna S R M', '20', '710', 6, '2020-01-02'),
(1581, 19, 'Discrete mathematics and its applications: With combinatorics and graph theory', 'Rosen, Kenneth H', '6', '765', 7, '2020-01-02'),
(1583, 19, 'Discrete mathematics and its applications: With combinatorics and graph theory', 'Rosen, Kenneth H', '6', '765', 7, '2020-01-02'),
(1584, 18, 'Data communication and networking', 'Forouzan, Behrouz A', '19', '725', 5, '2020-01-02'),
(1586, 18, 'Data mining: Concepts and techniques', 'Han, Jiowei, Kamber, Micheline & Pei Jian', '18', '575', 3, '2020-01-02'),
(1587, 18, 'Data mining: Concepts and techniques', 'Han, Jiowei, Kamber, Micheline & Pei Jian', '18', '575', 3, '2020-01-02'),
(1588, 18, 'Computer grahics: C version', 'Hearn, Donalt Dand Baker, M Pauline', '9', '899', 2, '2020-01-02'),
(1590, 18, 'Computer grahics: C version', 'Hearn, Donalt Dand Baker, M Pauline', '9', '899', 2, '2020-01-02'),
(1591, 20, 'The 8051 microcontroller and embedded systems: Using assembly and C', 'Mazidi,Jani Q Gillispie and Mckinlay Rolin D', '12', '729', 2, '2020-01-02'),
(1592, 20, 'The 8051 microcontroller and embedded systems: Using assembly and C', 'Mazidi,Jani Q Gillispie and Mckinlay Rolin D', '12', '729', 2, '2020-01-02'),
(1593, 18, 'Operating systems: Internals and design principles', 'Stalling, William', '4', '819', 7, '2020-01-02'),
(1595, 18, 'Introduction to algorithms', 'Cormen, Thomas H', '7', '1695', 3, '2020-01-02'),
(1596, 18, 'Introduction to algorithms', 'Cormen, Thomas H', '7', '1695', 3, '2020-01-02'),
(1598, 18, 'Introduction to data compression', 'Sayood, Khalid', '1', '575', 4, '2020-01-02'),
(1599, 18, 'Introduction to data compression', 'Sayood, Khalid', '1', '575', 4, '2020-01-02'),
(1601, 20, 'Digital logic and computer design', 'Mono , M Morris', '11', '679', 0, '2020-01-02'),
(1602, 20, 'Digital logic and computer design', 'Mono , M Morris', '11', '679', 0, '2020-01-02'),
(1603, 18, 'Security in computing', 'Pfleeger, Charles and Shari Lawrence', '1', '859', 4, '2020-01-02'),
(1604, 18, 'Security in computing', 'Pfleeger, Charles and Shari Lawrence', '1', '859', 4, '2020-01-02'),
(1605, 18, 'Neuro-fizzy and soft computing', 'Jang J S R ,Sun C T & Mizutani E', '2', '569', 0, '2020-01-02'),
(1606, 18, 'Neuro-fizzy and soft computing', 'Jang J S R ,Sun C T & Mizutani E', '2', '569', 0, '2020-01-02'),
(1607, 20, 'The 8051 microcontroller', 'Ayala, Kenneth', '12', '499', 3, '2020-01-02'),
(1608, 20, 'The 8051 microcontroller', 'Ayala, Kenneth', '12', '499', 3, '2020-01-02'),
(1609, 18, 'Programming with Java: A primer', 'Balagurusamy E', '19', '485', 5, '2020-01-02'),
(1610, 18, 'Programming with Java: A primer', 'Balagurusamy E', '19', '485', 5, '2020-01-02'),
(1611, 20, 'Computer organization and design: The hardware/software interface', 'Patterson, David A and Hennessy, John L', '18', '575', 5, '2020-01-02'),
(1613, 18, 'computer organizartion', 'john', '10', '254', 3, '2020-01-02'),
(2000, 24, 'jjjjjj', 'jjjjjjj', '12', '500', 7, '2020-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `category_tb`
--

CREATE TABLE `category_tb` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_tb`
--

INSERT INTO `category_tb` (`category_id`, `category_name`) VALUES
(18, 'Computer Science'),
(20, 'electronics'),
(21, 'accountancy'),
(22, 'commerce'),
(23, 'economics'),
(24, 'malayalam'),
(25, 'english'),
(28, 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `collection_tb`
--

CREATE TABLE `collection_tb` (
  `collection_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `date_of_collection` date NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection_tb`
--

INSERT INTO `collection_tb` (`collection_id`, `book_id`, `login_id`, `date_of_collection`, `status`) VALUES
(33, 2, 42, '2020-01-24', 2),
(34, 7, 42, '2020-01-01', 2),
(35, 9, 41, '2020-01-01', 2),
(36, 1, 41, '2020-01-24', 2),
(37, 212, 41, '2020-01-25', 2),
(38, 812, 41, '2020-01-25', 2),
(39, 225, 41, '2020-01-27', 2),
(40, 14, 43, '2020-01-27', 2),
(41, 812, 41, '2020-01-01', 2),
(42, 812, 41, '2020-02-15', 1),
(43, 1, 52, '2020-02-01', 1),
(44, 8, 41, '2020-02-21', 1),
(45, 812, 41, '2020-02-21', 2),
(46, 9, 48, '2020-03-28', 1),
(47, 6, 40, '2020-03-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fine_tb`
--

CREATE TABLE `fine_tb` (
  `fine_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `date_of_taken` date NOT NULL DEFAULT current_timestamp(),
  `date_of_return` date NOT NULL DEFAULT current_timestamp(),
  `fine_amount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_tb`
--

INSERT INTO `fine_tb` (`fine_id`, `collection_id`, `date_of_taken`, `date_of_return`, `fine_amount`) VALUES
(9, 24, '2020-01-18', '2020-02-19', '27'),
(10, 25, '2020-02-19', '2020-03-10', '15'),
(11, 26, '2020-03-10', '2020-01-18', '-67'),
(12, 27, '2020-01-18', '2020-02-08', '6'),
(13, 28, '2020-02-08', '2020-02-28', '-5'),
(14, 29, '2020-02-28', '2020-02-28', '-15'),
(15, 30, '2020-02-28', '2020-02-28', '-15'),
(16, 32, '2020-02-28', '2020-02-28', '-15'),
(17, 33, '2020-01-24', '2020-01-24', '-15'),
(18, 36, '2020-01-24', '2020-01-24', '-15'),
(19, 34, '2020-01-01', '2020-01-25', '9'),
(20, 35, '2020-01-01', '2020-01-25', '9'),
(21, 37, '2020-01-25', '2020-01-25', '-15'),
(22, 39, '2020-01-27', '2020-01-27', '-15'),
(23, 38, '2020-01-25', '2020-01-27', '-13'),
(24, 40, '2020-01-27', '2020-02-15', '4'),
(25, 0, '0000-00-00', '2020-02-15', '18292'),
(26, 42, '2020-02-15', '2020-02-15', '-15'),
(27, 0, '0000-00-00', '2020-02-21', '18298'),
(28, 45, '2020-02-21', '2020-02-21', '-15');

-- --------------------------------------------------------

--
-- Table structure for table `login_tb`
--

CREATE TABLE `login_tb` (
  `login_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tb`
--

INSERT INTO `login_tb` (`login_id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'myadmin', 0),
(17, 'john', '123', 1),
(31, 'jijo', '123', 2),
(33, 'Radhika', 'MCA016', 2),
(34, 'swapna', '2100', 1),
(40, 'swapna', '123456', 1),
(41, 'aswani', 'mca004', 2),
(42, 'radhika', 'mca007', 2),
(43, 'bhavana', 'mca031', 2),
(47, 'jijosh', '1234567', 2),
(48, 'raheema', 'mca025', 2),
(52, 'manu', '12345', 2),
(53, 'jijo', '12345', 2),
(54, 'Aiswarya', '123', 1),
(55, 'swapna', '12@a', 1),
(57, 'librarian', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pta_attendance`
--

CREATE TABLE `pta_attendance` (
  `pta_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `p_date` varchar(100) NOT NULL,
  `p_attend` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pta_attendance`
--

INSERT INTO `pta_attendance` (`pta_id`, `department_id`, `reg_no`, `sem_id`, `p_date`, `p_attend`) VALUES
(1, 1, '1101', 3, '2020-11-11', 'present'),
(2, 1, '1102', 3, '2020-11-11', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `public_chat`
--

CREATE TABLE `public_chat` (
  `msg_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `public_chat`
--

INSERT INTO `public_chat` (`msg_id`, `name`, `message`) VALUES
(1, 'akshay', 'hii');

-- --------------------------------------------------------

--
-- Table structure for table `reference_reserve_tb`
--

CREATE TABLE `reference_reserve_tb` (
  `ref_res_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `ref_reserve_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reference_reserve_tb`
--

INSERT INTO `reference_reserve_tb` (`ref_res_id`, `login_id`, `book_id`, `status`, `ref_reserve_date`) VALUES
(16, 40, 522, 3, '2020-03-28 10:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `reference_tb`
--

CREATE TABLE `reference_tb` (
  `ref_book_id` int(7) DEFAULT NULL,
  `ref_category_id` int(11) DEFAULT NULL,
  `ref_book_name` varchar(100) DEFAULT NULL,
  `ref_author` varchar(100) DEFAULT NULL,
  `ref_shelf_no` varchar(50) DEFAULT NULL,
  `ref_price` varchar(100) DEFAULT NULL,
  `ref_edition` varchar(50) DEFAULT NULL,
  `COL 8` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reference_tb`
--

INSERT INTO `reference_tb` (`ref_book_id`, `ref_category_id`, `ref_book_name`, `ref_author`, `ref_shelf_no`, `ref_price`, `ref_edition`, `COL 8`) VALUES
(735, 18, 'Computer architecture : A quantitative approach', 'Hennesy , John L & Pattersen , David A', '17', '395', '3', '17'),
(1431, 20, 'Basic electronics', 'Chand ,S', '17', '', '', '17'),
(178, 20, 'Principles of electronics', 'V K Mehta', '17', '115', '', '17'),
(360, 18, 'Programming in prolog', 'Clocksin W F and Mellish C S', '17', '155', '3', '17'),
(990, 18, 'Satellite communications', 'Gagliardi, Robert M', '17', '175', '', '17'),
(422, 19, 'Topics in algebra', 'Herstein.I.N', '17', '278', '2', '17'),
(40, 19, 'Linear algebra', 'G. Hadley', '17', '155', '', '17'),
(852, 18, 'Simulation modeling and analysis', 'Law,Averill.M &Kelton,W.David', '17', '265', '3', '17'),
(1025, 18, 'Mobile cellular telecommunications:analog and digital systems', 'Lee,William C.Y', '17', '286', '2', '17'),
(1044, 18, 'An integrated approach to software engineering', 'Jalote,Pankaj', '17', '295', '3', '17'),
(180, 19, 'Linear algebra', 'Kenneth Hoffman & Ray Kunze', '17', '150', '2', '17'),
(421, 19, 'Elementary theory of numbers', 'Hssing.C.Y', '17', '150', '2', '17'),
(1047, 19, 'An introduction to the theory of numbers', 'Niven,Ivan,Zuckerman Herbert S and Montgomery,Hugh L', '17', '305', '5', '17'),
(1357, 18, 'Software engineering', 'Ian Sommerville', '17', '550', '8', '17'),
(958, 18, 'Data communications, Computer networks and Open systems', 'Malsall, Fred', '17', '395', '4', '17'),
(858, 18, 'Enterprise resource planning:concets and practice', 'Garg,Vinod kumar&Venkitakrishnan', '17', '150', '2', '17'),
(1369, 18, 'System software', 'Leland L.Beck D Manjula', '17', '425', '3', '17'),
(1140, 18, 'Internetworking with TC/IP design , imlementtion and internals(ANSIC version)', 'Comer , Douglas E and Stevens , David L', '17', '275', '3', '17'),
(1297, 18, 'TCP/IP network administration', 'Hunt cracg', '17', '500', '3', '17'),
(286, 18, 'System analysis and design', 'Awad, Elias . M', '17', '200', '2', '17'),
(756, 18, 'Introductions to automata theory , language & computation ', 'Hopcroft John E & Ullman Jeffery D', '17', '210', '', '17'),
(759, 18, 'An introduction to formal langages and automata', 'Linz , Peter', '17', '135', '3', '17'),
(869, 18, 'Theory of computer science', 'Mishra K.L.P&Chandrasekaran.N', '17', '150', '2', '17'),
(1204, 18, 'Theory of computer science', 'Mishra,K.P.L Chandrasekaran.N', '17', '225', '3', '17'),
(1351, 18, 'Theory of computer science', 'K L P mishra and Chandrasekaran', '17', '225', '3', '17'),
(753, 19, 'Elements of the theory of computation', 'Lewis , Harry R & Papadimitriou , Christos', '17', '150', '2', '17'),
(763, 18, 'Introduction to languages and the theory of computation', 'Martin , John C', '17', '235', '3', '17'),
(61, 18, 'Computer architecture and organization', 'John. P. Hayes', '17', '324', '3', '17'),
(1121, 19, 'Elements of the theory of computation', 'Lewis , Harry R Papadimitriou , Christos H', '17', '225', '2', ''),
(1249, 18, 'Advanced computer architecture: A systems design approach', 'Sima,Dezso Farntain,Terence Kacsuk,Peter', '17', '485', '', ''),
(1243, 18, 'Advanced computer architecture: A systems design approach', 'Kain,Richard.Y', '17', '450', '', ''),
(196, 18, 'Theory and problems of data structures', 'Seymour Lipschutz', '17', '$6.95 ', '5', ''),
(1413, 24, 'Aadu jeevitham', 'Benyamin', '17', '', '', ''),
(1562, 18, 'E-Commerce: An Indian perspective', 'Joseph, P T, S J', '17', '450', '5', ''),
(1004, 18, 'Computer networking: A topdown approach featuring the internet', 'Kurose,James F and Ross,Keithw', '17', '375', '2', ''),
(1525, 18, 'Programming with JAVA: A primer', 'Balagurusamy E', '17', '485', '5', ''),
(1389, 18, 'Database management systems', 'Ramakrishnan and Gehrke', '17', '$12.50', '3', ''),
(737, 18, 'Frontiers of electronic commerce', 'Kalakota , Ravi & Whinston , Andrew B', '17', '350', '', ''),
(522, 18, 'Digital signal processing', 'Proakis, John G & Manolakis, Dimitris G', '17', '295', '3', ''),
(327, 18, 'Quantitative techniques in management', 'Vohrs N D', '17', '275', '2', ''),
(369, 18, 'An introduction to database systems', 'Jase C J', '17', '325', '7', ''),
(557, 18, 'System simulation with digital computer', 'Deo, Narsing', '17', '95', '', ''),
(550, 18, 'System simulation', 'Gordon Geoffrey', '17', '125', '2', ''),
(840, 18, 'Discrete event system simulation', 'Bonks,Jerry,Crson,John S Nelson,Barry L Nicol,David.M', '17', '175', '3', ''),
(1239, 18, 'The ABCs of javascript', 'Purcell,Lee&Mara,Mary Jane', '17', '225', '', ''),
(1008, 18, 'WAP-The wireless application protocol writing applications for the mobile internet', 'Singhal, Sandeep', '17', '449', '', ''),
(1014, 18, 'The unified software development process', 'Jacobson,Ivar,Booch,Grady and Rumbough,James', '17', '475', '', ''),
(189, 18, 'Computer organisation', 'V Carl Hamacher', '17', '$7.50 ', '4', ''),
(1190, 18, 'Inline and online: Fundamentals of the internet and the world wide web', 'Greenlaw and Hepp , Eilen', '17', '299', '2', ''),
(65, 18, 'Computer architecture and parallel processing', 'Hai Hwang & Faye. A. Frriggs', '17', '346', '', ''),
(409, 18, 'Web design with HTML/Flash/Jvascript and E-Commerce Bible', 'Crowder David and Crowder Rhonda', '17', '399', '3', ''),
(1265, 18, 'Javascript in 24 hours', 'Moncur,Michael', '17', '275', '', ''),
(1421, 18, 'Op -Amps and linear integrated circuits', 'Gaya K Wad', '17', '275', '4', ''),
(1186, 18, 'Unix network programming interprocess communications', 'Stevens W Richard', '17', '265', '2', ''),
(1232, 18, 'Unix:concepts&applications', 'Das,Sumitabha', '17', '325', '', ''),
(1289, 18, 'The unix programming environment', 'kernighan, Brian w & Pike, Rob', '17', '195', '', ''),
(1251, 18, 'Applied XML solutions', 'Marchal,Benoit', '17', '180', '', ''),
(786, 18, 'IBM PC Assembly language and programming ', 'Abel , Peter', '17', '195', '5', ''),
(1114, 18, 'Fundamentals of database systems', 'Elmasri , Ramez ,Navathe , Shamkant B', '17', '350', '4', ''),
(1381, 18, 'Fundamentals of database systems', 'Elmasri & Navathe', '17', '485', '5', ''),
(406, 18, 'Active Server Page 3.0 in 21 days', 'Mitchell Scott', '17', '225', '3', ''),
(796, 20, 'The pentium microprocessor', 'Antonakos , James L', '17', '310', '', ''),
(493, 18, 'Analysis and design of information systems', 'Rajaraman.V.', '17', '150', '2', ''),
(361, 18, 'Principles of compiler design', 'Aho Alfred V, and Ullman Jeffrey D', '17', '250', '25', ''),
(1260, 18, 'HTML 4.0:No experience required', 'Mack,E.Stephan&Platt Janan', '17', '360', '', ''),
(1433, 18, 'Compilers:principles,techniques and tools', 'Aho,Alfred.V,Lam,Monica S,Ravi sethi,Ullman,Jeffrey D', '17', '899', '2', ''),
(1128, 18, 'Fundmentals of object oriented design in UML', 'Page-Jones , Meilir', '17', '350', '', ''),
(995, 18, 'Appliying UML and pattersons: An introduction to object oriented analysis and design and iterative d', 'Lasman, Graig', '17', '399', '3', ''),
(1558, 18, 'Introduction to computers', 'Norton, Peter', '17', '625', '7', ''),
(1545, 20, 'OP-AMPS and linear integrated circuits', 'Gayakwad, Ramakant A', '17', '499', '4', ''),
(1612, 20, 'Computer organization and design: The hardware/software interface', 'Patterson, David A and Hennessy, John L', '17', '575', '5', ''),
(477, 18, 'An introduction to data structures with applications', 'Tremblay,Jean Paul', '17', '245', '2', ''),
(1321, 18, 'Data structures, Algorithms and applications in C++', 'Sahni, Sartaj', '17', '375', '2', ''),
(299, 18, 'Fundamental of datastructures', 'Horowitz, Ellis & Sahni,Sartaj', '17', '230', '', ''),
(335, 18, 'Data structures and program design', 'Kruse  Robert L', '17', '225', '3', ''),
(748, 18, 'Data structures and algorithm analysis in c++', 'Weiss , Mark Allen', '17', '295', '2', ''),
(305, 18, 'Fundamental of datastructures', 'Horowitz, Ellis & Sahni,Sartaj', '17', '230', '', ''),
(1331, 19, 'Elements of discrete mathematics', 'Leici C L', '17', '250', '3', ''),
(1222, 18, 'Data structures through C++', 'Kanetkar,Yashvant.P', '17', '210', '', ''),
(457, 18, 'Computer Networks', 'Tanenbaum,Andrews', '17', '250', '3', ''),
(540, 23, 'Managarial Ecnomics', 'Varshney. R L & Maheshwari K L', '17', '145', '16', ''),
(1033, 18, 'Introduction to the personal software process', 'Humphrey,Watts S', '17', '315', '', ''),
(1027, 18, 'Peterson classification', 'Dudo,Richard O,Hart,Peter E and stork,David G', '17', '415', '2', ''),
(261, 18, 'Analysis and design of information system', 'Senn James . A', '17', '87', '2', ''),
(799, 20, 'Microcomputer systems: The 8086/8088 family architecture , programming & design', 'Liu , Yu-cheng , Gibson , Glenn A ', '17', '250', '2', ''),
(846, 18, 'A VHDL Primer', 'Bhasker.J', '17', '199', '3', ''),
(214, 18, 'Quantitative techniques in management', 'N. D. Vochra', '17', '195', '', ''),
(595, 18, 'Management information systems', 'Laudon, Kenneth C and Laudon , Jane P', '17', '350', '7', ''),
(617, 18, 'Multimedia graphics', 'Fernandez leony-Elias Villiam john', '17', '250', '', ''),
(1512, 18, 'The Internet book', 'Comer , Douglas E', '17', '549', '4', ''),
(1503, 18, 'PHP 6 and MySQL 6 Bible', 'Suehring,steve,Converse,Tim and Joyce Park', '17', '749', '', ''),
(1457, 18, 'Data compression:the complete referrence', 'Salomon,David', '17', '1295', '4', ''),
(1508, 18, 'Parallel computing:Theory and practice', 'Quinn,Michael J', '17', '675', '2', ''),
(1514, 18, 'Distributed and cloud computing:From parallel processing to the internet of things', 'Hwang, Kai, Fox ,Geoffrey C and Dangarra, Jack J', '17', '610', '', ''),
(1451, 18, 'Digital image processing', 'Genzalez,Rafael C and Wonds,Richard E', '17', '799', '3', ''),
(560, 18, 'Principles of interactive computer', 'Newman, William M and Sproull, Robert S', '17', '225', '2', ''),
(566, 18, 'Theory and problem of computer graphics', 'Plastock, Roy A and Kalley, Goron', '17', '295', '', ''),
(470, 18, 'Computer graphics: Principles and practice', 'Foley,James.D.', '17', '450', '2', ''),
(1482, 18, 'Fundamentals of digital circuits', 'Anad kumar A', '17', '550', '4', ''),
(930, 18, 'Compiler: principles, techniques and tools', 'Aho , Alfred V , Sethi, Ravi and Ullman , Jefery', '17', '399', '', ''),
(1164, 18, 'Operating systems', 'Stallings , William', '17', '299', '5', ''),
(1556, 20, 'Electronic devices and circuit theory', 'Boylestad, Robert L and Naghelsky, Louis', '17', '849', '11', ''),
(580, 18, 'Cryptography and network security: Principles and practice', 'Stallings, William', '17', '295', '2', ''),
(868, 18, 'Java 2: The complete reference', 'Schildt,Herbert', '17', '395', '5', ''),
(610, 18, 'C++ premier', 'Lippman,Stanley B', '15', '450', '3', ''),
(410, 18, 'A Book on C Programming in C', 'Al Kelly/', '15', '275', '4', ''),
(415, 18, 'Mastering with C', 'Venugopal K.R', '15', '180', '10', ''),
(160, 18, 'The C programming langauge', 'Brian W Kernighan & Dennis M Ritchie', '15', '95', '2', ''),
(1468, 18, 'Programming in ANSI C', 'Balagurusamy E', '15', '410', '7', ''),
(1427, 18, 'Programming in ANSI C', 'Balagurusamy E', '15', '', '4', ''),
(767, 18, 'The unified modeling language reference manual', 'Rumbaugh James , Jacobson Ivar & Booch Grady', '15', '525', '2', ''),
(1393, 18, 'Organizational Bhaviour', 'John W, Newstrom', '15', '399', '12', ''),
(190, 18, 'Essentials of management', 'Harold Koontz', '15', '185', '5', ''),
(1589, 18, 'Computer grahics: C version', 'Hearn, Donalt Dand Baker, M Pauline', '15', '899', '2', ''),
(1597, 18, 'Introduction to algorithms', 'Cormen, Thomas H', '15', '1695', '3', ''),
(1480, 19, 'Elements of discrete mathematics:a computer oriented approach', 'Liu,C.L and Mohapatra,D.P', '15', '525', '4', ''),
(1510, 18, 'Grid computing', 'Joseph, Joshy and Fellestein, Gaig', '15', '549', '', ''),
(1530, 19, 'Discrete mathematical structures with applications to computer science', 'Tremblay J P and Manohar R', '15', '620', '', ''),
(1536, 19, 'Advanced engineering mathematics', 'Kreyszig, Erwin', '15', '839', '10', ''),
(1540, 20, 'Digital fundamentals', 'Floyd , Thomas L', '15', '759', '10', ''),
(1542, 20, 'The 8051 microcontroller and embedded systems: Using assembly and C', 'Mazidi,Jani Q Gillispie and Mckinlay Rolin D', '15', '729', '2', ''),
(1453, 18, 'The c++ programming language', 'Stroustrup,Bjarne', '15', '899', '3', ''),
(1580, 20, 'Kennedy\'s electronic communication systems', 'Kennedy, George, Davis , Bernard and Prasanna S R M', '15', '710', '6', ''),
(1582, 19, 'Discrete mathematics and its applications: With combinatorics and graph theory', 'Rosen, Kenneth H', '15', '765', '7', ''),
(1585, 18, 'Data communication and networking', 'Forouzan, Behrouz A', '15', '725', '5', ''),
(1551, 19, 'Higher engineering mathematics', 'Bird , John', '15', '359', '8', ''),
(1559, 18, 'Operating systems', 'Nutt, Gary , Chaki, Nabendu and Neogy, Sarmistha', '15', '859', '3', ''),
(1486, 18, 'Mobile communications', 'Schiller,Jochen', '15', '799', '2', ''),
(1495, 18, 'Visual basic .NET programming block book', 'Holzner,Steven', '15', '699', '', ''),
(1496, 18, 'Object oriented programming with c++', 'Balagurusamy E', '15', '385', '6', ''),
(1464, 18, 'Security in computing', 'Pfleeger,Charles P,and Pfleeger,Shari Lawrence', '15', '859', '4', ''),
(1467, 18, 'Data communication and networking', 'Forouzan,Behrouz A', '15', '795', '2', ''),
(1472, 18, 'Proffessional android for application development', 'Meier,Reto', '15', '699', '', ''),
(1522, 19, 'Discrete and combinatorial mathematics', 'Grimaldi, Raloh P and Ramana B V', '15', '879', '5', ''),
(1565, 18, 'Data and computer communications', 'Stalling, William', '15', '839', '9', ''),
(1439, 18, 'Software engineering:a practitioners approach', 'Pressman,Roger S', '15', '820', '7', ''),
(1441, 18, 'Computer networks', 'Tanenbaum,Andrew S,Wotherall,David J', '15', '699', '5', ''),
(1446, 18, 'Cryptography and network security', 'Stallings,William', '15', '679', '7', ''),
(1448, 18, 'Software testing:principles and practices', 'Desikan,Sreenivasan and Ramesh,Gopalaswamy', '15', '519', '', ''),
(903, 19, 'Discrete mathematics and its applications', 'Rosen, Kenneth M', '15', '375', '5', ''),
(1052, 18, 'Operating systems', 'Nutt,Gary', '15', '395', '3', ''),
(608, 18, 'Operating systems', 'Godbole,a.s', '15', '225', '13', ''),
(1295, 18, 'Distributed systems:concepts and design', 'Coulouris, George and others', '15', '499', '4', ''),
(976, 18, 'Digital image processing', 'Gonzalez, Rafael C and Woods , Richard E', '15', '250', '2', ''),
(980, 18, 'Digital image processing:P!KS inside', 'Pratt, William K', '15', '450', '3', ''),
(21, 19, 'Probability and statistics for engineers', 'Richard. A. Johnson', '15', '195', '5', ''),
(340, 20, 'Micro processor architecture, programming and alications with the 8085', 'Gaonkar, Ramesh S', '15', '245', '4', ''),
(448, 20, 'Advanced microprocessors and peripherals', 'Ajoy Kumar Ray', '15', '225', '2', ''),
(732, 18, 'Computer organization and design: The hardware/software interface', 'Hennesy , John L & Pattersen , David A', '15', '375', '2', ''),
(1600, 20, 'Digital logic and computer design', 'Mono , M Morris', '15', '679', '', ''),
(1264, 18, 'The HTML example book', 'Farrar,Edward&Smith,Norman.E', '15', '210', '', ''),
(1563, 18, 'Fundamentals of database systems', 'Elmasri, Ramez and Navathe, Shamkant B', '15', '849', '7', ''),
(1029, 18, 'Software project management:a unified framework', 'Royce,Walker', '15', '360', '', ''),
(1419, 18, 'Applied software architecture', 'Christine Hofmeister', '15', '', '', ''),
(1594, 18, 'Operating systems: Internals and design principles', 'Stalling, William', '15', '819', '7', ''),
(337, 20, 'Micro processor architecture, programming and alications with the 8085', 'Gaonkar, Ramesh S', '15', '245', '4', ''),
(99, 20, 'Microprocessors and interfacing', 'Douglas.V. Hall', '15', '275', '2', ''),
(471, 18, 'Computer graphics: Principles and practice', 'Foley,James.D.', '15', '450', '2', ''),
(231, 18, 'An introduction to operating systems', 'Harvey. M. Deitel', '15', '260', '2', ''),
(1036, 18, 'Distributed operating systems:concepts and design', 'Sinha,Pradeep k', '15', '325', '', ''),
(894, 18, 'Cryptography and network security:principles and practice', 'Stallings,William', '15', '225', '3', ''),
(1089, 18, 'Principles of data mining', 'Hand,David,Mannila,Heikki and Smyth,Padhrase', '15', '350', '', ''),
(978, 18, 'Fundamentals of digital image processing', 'Jain , Auil K', '15', '225', '', ''),
(960, 18, 'Computer networks: Asystems approach', 'Peterson,Larry L and Davie, Bruce S', '15', '395', '3', ''),
(1429, 18, 'Operating systems:internals and design principles', 'Stallings,William', '15', '', '6', ''),
(1414, 18, 'Informatics:technology in action', 'Alan Evans and others', '15', '195', '', ''),
(965, 18, 'Artificial intelligence: Structures and strategies for complex problem solving', 'Luger, George F', '15', '360', '4', ''),
(343, 18, 'Artificial intelligence: a new synthesis', 'Nilsson, Nils J', '15', '375', '', ''),
(1361, 18, 'Artificial intelligence', 'Elaine Rich & other', '15', '395', '3', ''),
(1401, 18, 'Operating system concepts', 'Silberschatz Galvin and Gagne', '15', '479', '6', ''),
(1517, 20, 'Embedded system design: A unified hardware/software introduction', 'Vahid, Frank and Givargis, Toni', '15', '559', '', ''),
(734, 19, 'Applied  numerical analysis', 'Gerald , Curtis F , Wheatley , Patrick O', '15', '295', '6', ''),
(603, 18, 'The design of the unix operating system', 'Bach,Maurice.j', '15', '195', '23', ''),
(510, 18, 'Neural Networks and Fuzzy system', 'Kosko, Barto', '15', '275', '', ''),
(613, 18, 'Multimedia Systems', 'Koegel Biyord,john f', '15', '280', '7', ''),
(1443, 18, 'Principles of information security', 'Whitman,Michael E,Mattord,Heibert J', '15', '599', '5', ''),
(352, 18, 'Data structures using c and c++', 'Langsam, Yedidyah, Augenstein,  Moshe J andTenenbaum, Aaron M', '15', '250', '2', ''),
(630, 18, 'C++ program design', 'Cohoon,james.p', '15', '350', '', ''),
(773, 18, 'Object oriented programming in c++', 'Lafore , Robert', '15', '320', '3', ''),
(537, 18, 'Mastering C++', 'Venugopal K.R, Buyya Rajgopal', '15', '235', '', ''),
(534, 18, 'C++ : The complete reference', 'Schildt, Herbert', '15', '375', '3', ''),
(535, 18, 'The C++ programming langauge', 'Stroustrup, Bjarne', '15', '595', '3', ''),
(609, 18, 'C++ premier', 'Lippman,Stanley B', '15', '450', '3', ''),
(419, 19, 'Discrete mathematics for computer scientists and mathematicians', 'Joel.L.Melt, Abraham Kandel and Backer', '15', '250', '2', ''),
(429, 19, 'Discrete mathematics for computer scientists and mathematicians', 'Truss .J.K', '15', '295', '2', ''),
(531, 19, 'Fuzzy sets and fuzzy logic:  theory and aplications ', 'Klix, George E and Yuan Bo', '15', '225', '', ''),
(1272, 18, 'Starting out with object oriented programming in C++', 'Gaddis,Tony,Watters,Judy&MUGANDA,Godfrey', '15', '349', '3', ''),
(521, 18, 'Object oriented programming with C++', 'Balaguruswamy E', '15', '165', '2', ''),
(407, 18, 'C++ programming', 'Holzner Steven', '15', '399', '3', ''),
(1257, 18, 'ASP.NET developer\'s guide', 'Buczek,Greg', '15', '525', '', ''),
(405, 18, 'Oracle 8i DBA Bible', 'Gennick Jonathan', '15', '499', '3', ''),
(408, 18, 'windows 2000 Registry', 'Hipson peter D', '15', '297', '', ''),
(882, 25, 'Longman Dictionary of  contemporary english', 'Gads by adam', '15', '395', '', ''),
(547, 25, 'Oxford advanced learners dictionary', 'Sally wehmeria', '15', '395', '6', ''),
(418, 18, 'the Indispensable PC Hardware Book', 'Mersmes, Hans Deta', '15', '450', '3', ''),
(439, 18, 'Trouble Shooting,maintaining and repairing PCs', 'Stephan.J.Bezetord', '15', '695', '5', ''),
(1287, 18, 'Unix network programming:The socket networking api', 'Stevens,W.Richard,Fenner,Bill&Rudoff,Andrew.M', '15', '375', '', ''),
(1085, 18, 'Textbook of environmental studies for undergraduate courses', 'Bharucha,Erach', '15', '125', '', ''),
(738, 18, 'Exim: The mail transfer agent', 'Hazel , Philip', '15', '350', '', ''),
(404, 18, 'Red hat linear 7.x bible', 'Negus Christepher', '15', '499', '3', ''),
(1123, 18, 'Froutiers of electronic commerce', 'Kolakota , Ravi , Whinston , Andrew B', '15', '450', '', ''),
(865, 18, 'Developing e-commerce sites:An integrated approach', 'Shasma,Vivek&Shasma,Rajiv', '15', '399', '', ''),
(1415, 18, 'An introduction to the history & philosophy of science', 'R.V.G Menon', '15', '80', '', ''),
(1346, 24, 'Vivarthanavichinthanam', 'Dr K V Thomas, Dr Mathew J Muttath', '15', '40', '', ''),
(1420, 24, 'Vidhyabyasa manasasthram', 'Sreejith E', '15', '195', '', ''),
(857, 18, 'Computer oriented numerical methods', 'Rajaraman.V', '15', '89', '3', ''),
(1227, 18, 'Natural language processing:A pawnian perspective', 'Bharati,Akshan Chaitanya,Vineet&Sngal,Rajeev', '15', '150', '', ''),
(764, 18, 'Object oriented systems deveopment using the unified modeling language', 'Bahrami , Ali', '15', '260', '', ''),
(1040, 21, 'Management accounting', 'Khan,M.Y and Jain P K', '15', '295', '3', ''),
(621, 18, 'Management information system', 'Sadagopan.s', '15', '125', '', ''),
(1223, 18, 'Mastering visual basic 6', 'Petroutsos,Erangelos', '15', '597', '', ''),
(1068, 18, 'Ultimate visual dictionary', 'Page,Martyn,G series editor', '15', '500', '', ''),
(883, 25, 'Oxford advanced learner\'s dictionary of current english', 'Wehmeier,Sally', '17', '495', '7', '');

-- --------------------------------------------------------

--
-- Table structure for table `reply_tb`
--

CREATE TABLE `reply_tb` (
  `rply_id` int(11) NOT NULL,
  `msg_id` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rply` varchar(40) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reply_tb`
--

INSERT INTO `reply_tb` (`rply_id`, `msg_id`, `name`, `rply`, `file`) VALUES
(1, '1', 'sree', 'hlooo', ''),
(2, '1', 'sabith', 'Hello', ''),
(3, '1', 'akshay', 'sdfghjk', ''),
(4, '1', 'akshay', 'hgfds', '1867783933.pdf'),
(5, '1', 'akshay', 'hgfds', '1071451279.pdf'),
(6, '1', 'sree', 'kjhgfds', '');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_tb`
--

CREATE TABLE `reservation_tb` (
  `reservation_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'reserved',
  `reserve_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation_tb`
--

INSERT INTO `reservation_tb` (`reservation_id`, `book_id`, `login_id`, `status`, `reserve_date`) VALUES
(41, 2, 40, '2', '2020-01-23 08:35:11'),
(44, 4, 40, '1', '2020-01-20 23:31:08'),
(45, 5, 40, '1', '2020-01-21 04:14:22'),
(48, 2, 42, '2', '2020-01-24 08:08:08'),
(49, 6, 40, '2', '2020-03-28 10:12:02'),
(50, 7, 42, '2', '2020-01-24 08:16:03'),
(51, 1, 41, '2', '2020-01-24 08:21:23'),
(52, 9, 41, '2', '2020-01-24 08:17:04'),
(53, 212, 41, '2', '2020-01-25 14:17:48'),
(54, 812, 41, '2', '2020-01-25 14:24:54'),
(55, 14, 43, '2', '2020-01-27 12:46:04'),
(56, 225, 41, '2', '2020-01-27 12:45:58'),
(57, 812, 41, '2', '2020-02-15 13:53:48'),
(58, 1, 52, '2', '2020-02-18 18:11:38'),
(59, 8, 41, '2', '2020-02-21 07:26:50'),
(60, 9, 48, '2', '2020-03-28 10:11:46'),
(61, 1, 52, '1', '2020-03-28 10:02:15'),
(62, 29, 41, '1', '2020-05-21 10:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `student_details_tb`
--

CREATE TABLE `student_details_tb` (
  `student_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `photo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details_tb`
--

INSERT INTO `student_details_tb` (`student_id`, `login_id`, `name`, `phone_no`, `mail_id`, `batch`, `duration`, `photo`) VALUES
(32, 41, 'Aswani K', '8921360321', 'aswanik97@gmail.com', ' mca', '3', 'aswani_k_1323732481.jpg'),
(33, 42, 'Radhika A C', '8301099221', 'radhika.ac13@gmail.com', 'MCA', '3', 'radhika_a_c_1140125808.jpg'),
(34, 43, 'Bhavana S G', '8156897589', 'bhavanaminnu@gmail.com', 'MCA', '3', 'bhavana_s_g_323725863.jpg'),
(38, 47, 'jijosh', '8089802549', 'ckjijosh@gmail.com', '1', '3', 'jijosh_2071595631.jpg'),
(39, 48, 'Raheema K', '9048226124', 'raheemaabdurahiman@gmail.com', 'mca', '3', 'raheema_k_1929219141.jpg'),
(43, 52, 'manu', '8089802549', 'manu@gmail.com', '5', '3', 'manu_1937664556.jpg'),
(44, 53, 'jijosh', '8089802549', 'ckjijosh@gmail.com', '3', '3', 'jijosh_650973185.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ct`
--

CREATE TABLE `tbl_ct` (
  `ct_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ct`
--

INSERT INTO `tbl_ct` (`ct_id`, `login_id`, `department_id`) VALUES
(3, 6, 3),
(4, 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `department_id` int(11) NOT NULL,
  `dpt_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`department_id`, `dpt_name`) VALUES
(1, 'BSC CS'),
(3, 'BSC Maths'),
(4, 'BSC Physics'),
(5, 'BCA'),
(6, 'BSC chemistry');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_digitalnotice`
--

CREATE TABLE `tbl_digitalnotice` (
  `notice_id` int(11) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `upload_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_digitalnotice`
--

INSERT INTO `tbl_digitalnotice` (`notice_id`, `subject`, `description`, `upload_date`) VALUES
(1, 'College fest', 'festivals', '2020-11-14'),
(3, 'hello', 'sdasdad', '2021-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `feedback` varchar(30) NOT NULL,
  `reply` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`feedback_id`, `login_id`, `feedback`, `reply`) VALUES
(1, 2, 'Programme Details', 'ok\r\n'),
(2, 24, 'nice', 'no reply');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hod`
--

CREATE TABLE `tbl_hod` (
  `hod_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hod`
--

INSERT INTO `tbl_hod` (`hod_id`, `login_id`, `department_id`) VALUES
(3, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_librarian`
--

CREATE TABLE `tbl_librarian` (
  `lib_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `lib_name` varchar(20) NOT NULL,
  `lib_email` varchar(20) NOT NULL,
  `lib_address` varchar(20) NOT NULL,
  `lib_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_librarian`
--

INSERT INTO `tbl_librarian` (`lib_id`, `login_id`, `lib_name`, `lib_email`, `lib_address`, `lib_phone`) VALUES
(5, 15, 'Seetha', 'see@gmail.com', 'seethalayam(ho)', '8871211111'),
(8, 57, 'librarian', 'lib@gmail.com', 'AAAAAAAAAAAAAA', '5646791324');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'myadmin', 'admin'),
(2, 'aloshi', 'al12', 'staff'),
(6, 'smr', 'sm', 'hod'),
(15, 'seethas', 'qwe12', 'lib'),
(17, 'veena', 'vee12', 'teacher'),
(19, 'sams', 'sam12', 'student'),
(24, 'anu', 'an', 'student'),
(25, 'Shazna', 'shaz', 'staff'),
(26, 'keerthu', 'kee', 'ct'),
(29, 'Kiran', 'ki12', 'union'),
(30, 'Sathya', 'sat12', 'teacher'),
(31, 'nw', '12', 'staff'),
(32, 'hf', '123', 'staff'),
(55, 'maneesh', '123', 'parent'),
(59, 'vimal', '123', 'parent'),
(60, 'qqqqqqqqq', 'qqq', 'parent'),
(61, 'qqqqqqqqq', 'qqq', 'parent'),
(62, 'sandhya', '123', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_marks`
--

CREATE TABLE `tbl_marks` (
  `mark_id` int(11) NOT NULL,
  `reg_no` varchar(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `stud_name` varchar(50) NOT NULL,
  `mdate` varchar(20) NOT NULL,
  `sub1` varchar(20) NOT NULL,
  `mark1` varchar(20) NOT NULL,
  `sub2` varchar(20) NOT NULL,
  `mark2` varchar(20) NOT NULL,
  `sub3` varchar(20) NOT NULL,
  `mark3` varchar(20) NOT NULL,
  `sub4` varchar(20) NOT NULL,
  `mark4` varchar(20) NOT NULL,
  `sub5` varchar(20) NOT NULL,
  `mark5` varchar(20) NOT NULL,
  `sub6` varchar(20) NOT NULL,
  `mark6` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_marks`
--

INSERT INTO `tbl_marks` (`mark_id`, `reg_no`, `department_id`, `sem_id`, `stud_name`, `mdate`, `sub1`, `mark1`, `sub2`, `mark2`, `sub3`, `mark3`, `sub4`, `mark4`, `sub5`, `mark5`, `sub6`, `mark6`) VALUES
(1, '1101', 1, 1, 'Sam', '2020-11-10', 'Statistics', '50', 'JAVA', '55', 'CA', '60', 'English', '55', 'CS', '58', 'Malayalam', '60'),
(2, '1102', 1, 3, 'Anusree', '2020-11-11', 'Statistics', '60', 'JAVA', '59', 'CA', '55', 'Malayalam', '60', 'CS', '57', 'English', '55'),
(3, '1101', 1, 3, 'Sam', '2020-11-12', 'Statistics', '38', 'JAVA', '30', 'CA', '35', 'Malayalam', '50', 'CS', '12', 'English', '20'),
(4, '', 1, 1, '', '', 'Submit', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_material`
--

CREATE TABLE `tbl_material` (
  `m_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `file` varchar(100) NOT NULL,
  `file_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_material`
--

INSERT INTO `tbl_material` (`m_id`, `department_id`, `sem_id`, `heading`, `file`, `file_path`) VALUES
(10, 1, 1, 'cs introduction', '441422047.pdf', 'http://192.168.43.77/CollegeManagement/material/441422047.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `msg_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `sub` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`msg_id`, `parent_id`, `teacher_id`, `sub`, `message`, `status`) VALUES
(1, 1, 5, 'adssdf', 'sdfsf', 1),
(3, 5, 5, 'sfgdsg', 'sdfsfdddddddddddddddddd', 1),
(4, 1, 5, 'sdfsf', 'hello hai\r\n', 1),
(5, 1, 5, 'hello', 'akjgfkjaf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `notify_id` int(11) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`notify_id`, `subject`, `message`) VALUES
(1, 'Sem Exam', 'Notification for exam, starts '),
(3, 'admin notification', 'testing\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_officestaff`
--

CREATE TABLE `tbl_officestaff` (
  `staff_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `staff_name` varchar(20) NOT NULL,
  `staff_email` varchar(20) NOT NULL,
  `staff_address` varchar(20) NOT NULL,
  `staff_mob` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_officestaff`
--

INSERT INTO `tbl_officestaff` (`staff_id`, `login_id`, `staff_name`, `staff_email`, `staff_address`, `staff_mob`) VALUES
(2, 2, 'Aloshi', 'al@gmail.com', 'Puthurs', '7474747410'),
(5, 25, 'Shahana', 'shahna@gmail.com', 'Koyilandy', '9000303020'),
(6, 31, 'New', 'nw@gmail.com', 'Puthur', '7474747474'),
(7, 32, 'Seri', 's@gmail.com', 'Puthurs', '7474747410');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parent`
--

CREATE TABLE `tbl_parent` (
  `parent_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_mail` varchar(100) NOT NULL,
  `p_mob` varchar(20) NOT NULL,
  `p_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_parent`
--

INSERT INTO `tbl_parent` (`parent_id`, `login_id`, `student_id`, `p_name`, `p_mail`, `p_mob`, `p_address`) VALUES
(1, 55, 1, 'jose', 'vishnu.futura@gmail.com', '9633325215', 'aaaaaaaaaaaaaaaaaaa'),
(5, 59, 2, 'vimal', 'vimal@g.com', '9876543210', 'sdkjvjsv'),
(6, 60, 2, 'vv', 'maneesh.futura@gmail.com', '9876543210', 'aaaa'),
(7, 61, 2, 'vv', 'maneesh.futura@gmail.com', '9876543210', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_programme`
--

CREATE TABLE `tbl_programme` (
  `programme_id` int(11) NOT NULL,
  `pro_name` varchar(20) NOT NULL,
  `pro_details` varchar(20) NOT NULL,
  `pro_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_programme`
--

INSERT INTO `tbl_programme` (`programme_id`, `pro_name`, `pro_details`, `pro_date`) VALUES
(1, 'UnionDay', 'conducted', '2020-11-13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pro_attendance`
--

CREATE TABLE `tbl_pro_attendance` (
  `pro_attend_id` int(11) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `department_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `pro_date` varchar(100) NOT NULL,
  `attendance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pro_attendance`
--

INSERT INTO `tbl_pro_attendance` (`pro_attend_id`, `reg_no`, `department_id`, `sem_id`, `pro_date`, `attendance`) VALUES
(1, '1101', 1, 3, '2020-11-13', 'present'),
(2, '1102', 1, 3, '2020-11-13', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reply`
--

CREATE TABLE `tbl_reply` (
  `reply_id` int(11) NOT NULL,
  `msg_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `reply` varchar(500) NOT NULL,
  `seen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reply`
--

INSERT INTO `tbl_reply` (`reply_id`, `msg_id`, `teacher_id`, `parent_id`, `reply`, `seen`) VALUES
(1, 1, 5, 1, 'hello', 2),
(2, 1, 5, 1, 'hai', 2),
(3, 1, 5, 1, 'zdcs', 2),
(4, 1, 5, 1, 'zdcs', 2),
(5, 1, 5, 1, 'asdad', 2),
(6, 1, 5, 1, 'aaaaaaaaaaaa', 2),
(7, 1, 5, 1, 'ok', 2),
(8, 5, 5, 1, 'okok', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sem`
--

CREATE TABLE `tbl_sem` (
  `sem_id` int(11) NOT NULL,
  `sem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sem`
--

INSERT INTO `tbl_sem` (`sem_id`, `sem`) VALUES
(1, 'SEM1'),
(2, 'SEM2'),
(3, 'SEM3'),
(4, 'SEM4'),
(5, 'SEM5'),
(9, 'SEM6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_semsubject`
--

CREATE TABLE `tbl_semsubject` (
  `semsub_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `year` varchar(20) NOT NULL,
  `sub1` varchar(20) NOT NULL,
  `sub2` varchar(20) NOT NULL,
  `sub3` varchar(20) NOT NULL,
  `sub4` varchar(20) NOT NULL,
  `sub5` varchar(20) NOT NULL,
  `sub6` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_semsubject`
--

INSERT INTO `tbl_semsubject` (`semsub_id`, `department_id`, `sem_id`, `year`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`) VALUES
(1, 1, 2, 'FirstYear', 'Maths', 'Statistics', 'English', 'Malayalam', 'C++', 'Malayalam2'),
(2, 1, 3, 'secondYear', 'Statistics', 'JAVA', 'CA', 'Malayalam', 'NetworkingSecurity', 'English'),
(3, 2, 2, 'FirstYear', 'Maths', 'Statistics', 'English', 'C', 'C', 'English2'),
(4, 3, 2, 'FirstYear', 'Calculus', 'English', 'Statistics', 'Malyalam', 'Malyalam', 'Maths'),
(5, 4, 1, 'FirstYear', 'Maths', 'English', 'Statistics', 'Physics', 'Physics', 'Malayalam2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `login_id` int(20) NOT NULL,
  `department_id` int(20) NOT NULL,
  `sem_id` int(20) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `roll_no` varchar(20) NOT NULL,
  `stud_name` varchar(50) NOT NULL,
  `stud_email` varchar(50) NOT NULL,
  `stud_mob` varchar(50) NOT NULL,
  `stud_address` varchar(50) NOT NULL,
  `stud_guardian` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `login_id`, `department_id`, `sem_id`, `reg_no`, `roll_no`, `stud_name`, `stud_email`, `stud_mob`, `stud_address`, `stud_guardian`, `status`) VALUES
(1, 19, 1, 2, '1101', '01', 'Sam', 's@gmail.com', '7474747474', 'Calicut', 'Pradeep', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `subject_id` int(11) NOT NULL,
  `sub_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`subject_id`, `sub_name`) VALUES
(1, 'Maths'),
(2, 'C++'),
(3, 'Java'),
(4, 'Statistics'),
(5, 'English'),
(6, 'Malayalam'),
(7, 'Android'),
(8, 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_syllabus`
--

CREATE TABLE `tbl_syllabus` (
  `syllabus_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `year` varchar(20) NOT NULL,
  `syllabus` varchar(50) NOT NULL,
  `sy_path` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_syllabus`
--

INSERT INTO `tbl_syllabus` (`syllabus_id`, `department_id`, `sem_id`, `subject_id`, `year`, `syllabus`, `sy_path`) VALUES
(1, 1, 2, 1, 'FirstYear', 'HomeCare.pdf', 'http://192.168.225.230/CollegeManagement/syllabus/HomeCare.pdf'),
(2, 4, 2, 3, 'SecondYear', '23-IJCSE-08041-67.pdf', 'http://192.168.42.196/CollegeManagement/syllabus/23-IJCSE-08041-67.pdf'),
(3, 1, 1, 1, 'FirstYear', 'garbage management.pdf', 'http://192.168.1.6/CollegeManagement/syllabus/garbagemanagement.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `t_name` varchar(20) NOT NULL,
  `t_email` varchar(20) NOT NULL,
  `t_address` varchar(20) NOT NULL,
  `t_phone` varchar(20) NOT NULL,
  `status_hod` int(11) NOT NULL,
  `status_ct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `login_id`, `subject_id`, `t_name`, `t_email`, `t_address`, `t_phone`, `status_hod`, `status_ct`) VALUES
(1, 6, 1, 'SmruthiS', 'sm@gmail.com', 'new', '1234567890', 1, 1),
(4, 17, 2, 'Veena', 'veena@gmail.com', 'sree(ho)', '1211111111', 0, 1),
(5, 26, 4, 'Keerthana', 'k@gmail.com', 'Pavangad', '9993001010', 0, 1),
(7, 62, 5, 'sandhya', 'sandhya@gmail.com', 'calicut', '7418529622', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timetable`
--

CREATE TABLE `tbl_timetable` (
  `id` int(11) NOT NULL,
  `department` varchar(40) NOT NULL,
  `sem` varchar(40) NOT NULL,
  `forenoon_sub` varchar(40) NOT NULL,
  `forenoon_teacher` varchar(40) NOT NULL,
  `afternoon_sub` varchar(20) NOT NULL,
  `afternoon_teacher` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_timetable`
--

INSERT INTO `tbl_timetable` (`id`, `department`, `sem`, `forenoon_sub`, `forenoon_teacher`, `afternoon_sub`, `afternoon_teacher`) VALUES
(3, 'BSC CS', 'SEM1', 'C++', 'SmruthiS', 'PHP', 'Keerthana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_union`
--

CREATE TABLE `tbl_union` (
  `union_id` int(11) NOT NULL,
  `u_name` varchar(20) NOT NULL,
  `u_email` varchar(20) NOT NULL,
  `u_address` varchar(20) NOT NULL,
  `u_phn` varchar(20) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_union`
--

INSERT INTO `tbl_union` (`union_id`, `u_name`, `u_email`, `u_address`, `u_phn`, `login_id`) VALUES
(1, 'KiranS', 'kiran@gmail.com', 'kolakkad(ho)', '9966332320', 29);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_university`
--

CREATE TABLE `tbl_university` (
  `uni_id` int(11) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `department_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `stud_name` varchar(50) NOT NULL,
  `mdate` varchar(50) NOT NULL,
  `sub1` varchar(50) NOT NULL,
  `mark1` varchar(20) NOT NULL,
  `sub2` varchar(20) NOT NULL,
  `mark2` varchar(20) NOT NULL,
  `sub3` varchar(20) NOT NULL,
  `mark3` varchar(20) NOT NULL,
  `sub4` varchar(20) NOT NULL,
  `mark4` varchar(20) NOT NULL,
  `sub5` varchar(20) NOT NULL,
  `mark5` varchar(20) NOT NULL,
  `sub6` varchar(20) NOT NULL,
  `mark6` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_university`
--

INSERT INTO `tbl_university` (`uni_id`, `reg_no`, `department_id`, `sem_id`, `stud_name`, `mdate`, `sub1`, `mark1`, `sub2`, `mark2`, `sub3`, `mark3`, `sub4`, `mark4`, `sub5`, `mark5`, `sub6`, `mark6`) VALUES
(1, '1101', 1, 3, 'Sam', '2020-11-12', 'Statistics', '60', 'JAVA', '55', 'CA', '60', 'Malayalam', '60', 'CS', '57', 'English', '55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_youtube`
--

CREATE TABLE `tbl_youtube` (
  `link_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_youtube`
--

INSERT INTO `tbl_youtube` (`link_id`, `department_id`, `sem_id`, `heading`, `link`) VALUES
(2, 1, 1, 'dfsdf', 'https://youtu.be/P6HqTjuZPAk');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_register_tb`
--

CREATE TABLE `teacher_register_tb` (
  `teacher_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `mail_id` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `teacher_photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_register_tb`
--

INSERT INTO `teacher_register_tb` (`teacher_id`, `login_id`, `teacher_name`, `phone_no`, `mail_id`, `designation`, `teacher_photo`) VALUES
(12, 40, 'Swapna G Nair', '9846214563', 'swapnagnair123@gmail.com', 'Administrater', 'swapna_g_nair_2054177519.jpg'),
(13, 54, 'Aiswarya', '9048553388', 'aiswarya1@gmail.com', 'Assistant professor', 'aiswarya_3910147.jpg'),
(14, 55, 'swapna', '8921460265', 'aswanik97@gmail.com', 'coordinator', 'swapna_2007925296.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attend_id`);

--
-- Indexes for table `category_tb`
--
ALTER TABLE `category_tb`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `collection_tb`
--
ALTER TABLE `collection_tb`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indexes for table `fine_tb`
--
ALTER TABLE `fine_tb`
  ADD PRIMARY KEY (`fine_id`);

--
-- Indexes for table `login_tb`
--
ALTER TABLE `login_tb`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `pta_attendance`
--
ALTER TABLE `pta_attendance`
  ADD PRIMARY KEY (`pta_id`);

--
-- Indexes for table `public_chat`
--
ALTER TABLE `public_chat`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `reference_reserve_tb`
--
ALTER TABLE `reference_reserve_tb`
  ADD PRIMARY KEY (`ref_res_id`);

--
-- Indexes for table `reply_tb`
--
ALTER TABLE `reply_tb`
  ADD PRIMARY KEY (`rply_id`);

--
-- Indexes for table `reservation_tb`
--
ALTER TABLE `reservation_tb`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `student_details_tb`
--
ALTER TABLE `student_details_tb`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_ct`
--
ALTER TABLE `tbl_ct`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `tbl_digitalnotice`
--
ALTER TABLE `tbl_digitalnotice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tbl_hod`
--
ALTER TABLE `tbl_hod`
  ADD PRIMARY KEY (`hod_id`);

--
-- Indexes for table `tbl_librarian`
--
ALTER TABLE `tbl_librarian`
  ADD PRIMARY KEY (`lib_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_marks`
--
ALTER TABLE `tbl_marks`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `tbl_material`
--
ALTER TABLE `tbl_material`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`notify_id`);

--
-- Indexes for table `tbl_officestaff`
--
ALTER TABLE `tbl_officestaff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `tbl_parent`
--
ALTER TABLE `tbl_parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `tbl_programme`
--
ALTER TABLE `tbl_programme`
  ADD PRIMARY KEY (`programme_id`);

--
-- Indexes for table `tbl_pro_attendance`
--
ALTER TABLE `tbl_pro_attendance`
  ADD PRIMARY KEY (`pro_attend_id`);

--
-- Indexes for table `tbl_reply`
--
ALTER TABLE `tbl_reply`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `tbl_sem`
--
ALTER TABLE `tbl_sem`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `tbl_semsubject`
--
ALTER TABLE `tbl_semsubject`
  ADD PRIMARY KEY (`semsub_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tbl_syllabus`
--
ALTER TABLE `tbl_syllabus`
  ADD PRIMARY KEY (`syllabus_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `tbl_timetable`
--
ALTER TABLE `tbl_timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_union`
--
ALTER TABLE `tbl_union`
  ADD PRIMARY KEY (`union_id`);

--
-- Indexes for table `tbl_university`
--
ALTER TABLE `tbl_university`
  ADD PRIMARY KEY (`uni_id`);

--
-- Indexes for table `tbl_youtube`
--
ALTER TABLE `tbl_youtube`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `teacher_register_tb`
--
ALTER TABLE `teacher_register_tb`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_tb`
--
ALTER TABLE `category_tb`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `collection_tb`
--
ALTER TABLE `collection_tb`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `fine_tb`
--
ALTER TABLE `fine_tb`
  MODIFY `fine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `login_tb`
--
ALTER TABLE `login_tb`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `pta_attendance`
--
ALTER TABLE `pta_attendance`
  MODIFY `pta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `public_chat`
--
ALTER TABLE `public_chat`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reference_reserve_tb`
--
ALTER TABLE `reference_reserve_tb`
  MODIFY `ref_res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reply_tb`
--
ALTER TABLE `reply_tb`
  MODIFY `rply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reservation_tb`
--
ALTER TABLE `reservation_tb`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `student_details_tb`
--
ALTER TABLE `student_details_tb`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_ct`
--
ALTER TABLE `tbl_ct`
  MODIFY `ct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_digitalnotice`
--
ALTER TABLE `tbl_digitalnotice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_hod`
--
ALTER TABLE `tbl_hod`
  MODIFY `hod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_librarian`
--
ALTER TABLE `tbl_librarian`
  MODIFY `lib_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_marks`
--
ALTER TABLE `tbl_marks`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_material`
--
ALTER TABLE `tbl_material`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `notify_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_officestaff`
--
ALTER TABLE `tbl_officestaff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_parent`
--
ALTER TABLE `tbl_parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_programme`
--
ALTER TABLE `tbl_programme`
  MODIFY `programme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pro_attendance`
--
ALTER TABLE `tbl_pro_attendance`
  MODIFY `pro_attend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_reply`
--
ALTER TABLE `tbl_reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_sem`
--
ALTER TABLE `tbl_sem`
  MODIFY `sem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_semsubject`
--
ALTER TABLE `tbl_semsubject`
  MODIFY `semsub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_syllabus`
--
ALTER TABLE `tbl_syllabus`
  MODIFY `syllabus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_timetable`
--
ALTER TABLE `tbl_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_union`
--
ALTER TABLE `tbl_union`
  MODIFY `union_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_youtube`
--
ALTER TABLE `tbl_youtube`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_register_tb`
--
ALTER TABLE `teacher_register_tb`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
