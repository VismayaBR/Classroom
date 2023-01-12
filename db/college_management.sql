-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2021 at 03:13 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.20

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
-- Table structure for table `sub_assignment_tb`
--

CREATE TABLE `sub_assignment_tb` (
  `id` int(44) NOT NULL,
  `name` varchar(44) NOT NULL,
  `department_id` varchar(44) NOT NULL,
  `sem_id` varchar(44) NOT NULL,
  `assignment` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_assignment_tb`
--

INSERT INTO `sub_assignment_tb` (`id`, `name`, `department_id`, `sem_id`, `assignment`) VALUES
(4, 'Sam', '1', '2', 'college_management.sql');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assignment`
--

CREATE TABLE `tbl_assignment` (
  `id` int(44) NOT NULL,
  `department` varchar(44) NOT NULL,
  `name` varchar(44) NOT NULL,
  `sem` varchar(44) NOT NULL,
  `subject` varchar(44) NOT NULL,
  `details` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_assignment`
--

INSERT INTO `tbl_assignment` (`id`, `department`, `name`, `sem`, `subject`, `details`) VALUES
(1, 'BSC CS', 'Veena', 'SEM2', 'maths', 'complete the oops assignment');

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
(17, 'veena', 'vee12', 'teacher'),
(19, 'sams', 'sam12', 'student'),
(24, 'anu', 'an', 'student'),
(30, 'Sathya', 'sat12', 'teacher'),
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
(3, 'BSC CS', 'SEM1', 'C++', 'SmruthiS', 'PHP', 'Keerthana'),
(4, 'BSC CS', 'SEM2', 'Maths', 'SmruthiS', 'Maths', 'Veena'),
(5, 'BSC CS', 'SEM2', 'Maths', 'Veena', 'Android', 'Keerthana');

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
-- Indexes for table `public_chat`
--
ALTER TABLE `public_chat`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `reply_tb`
--
ALTER TABLE `reply_tb`
  ADD PRIMARY KEY (`rply_id`);

--
-- Indexes for table `student_details_tb`
--
ALTER TABLE `student_details_tb`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `sub_assignment_tb`
--
ALTER TABLE `sub_assignment_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_assignment`
--
ALTER TABLE `tbl_assignment`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`);

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
-- AUTO_INCREMENT for table `public_chat`
--
ALTER TABLE `public_chat`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reply_tb`
--
ALTER TABLE `reply_tb`
  MODIFY `rply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_details_tb`
--
ALTER TABLE `student_details_tb`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `sub_assignment_tb`
--
ALTER TABLE `sub_assignment_tb`
  MODIFY `id` int(44) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_assignment`
--
ALTER TABLE `tbl_assignment`
  MODIFY `id` int(44) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
