-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2016 at 08:19 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auser` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL,
  `marquee1` text NOT NULL,
  `colgname` varchar(99) NOT NULL,
  `colgintro` text NOT NULL,
  `footerinfo` varchar(50) NOT NULL,
  `abouthead` varchar(50) NOT NULL,
  `aboutinfo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--


INSERT INTO `admin` (`id`, `auser`, `apass`, `marquee1`, `colgname`, `colgintro`, `footerinfo`, `abouthead`, `aboutinfo`) VALUES
(1, 'admin', 'caf1a3dfb505ffed0d024130f58c5cfa', 'College Information', 'ABC Group Of Institutions', 'a pioneer educational Institute of Northern India, has been striving to provide quality higher education since 2000. Approved by AICTE and UGC, ABC has a sprawling multi-discipline campus, world class facilities and competent faculty, with prime focus on research and quality education. Creating a benchmark in the field of education, ABC aims to create proficient technocrats and future leaders with emphasis on overall development of personality imbibing core human values among students.', 'Copyright under 2012-2013', 'About Us', 'Our College  is dedicated to preparing students with the knowledge, skills and training needed for meaningful employment. Through education, we create opportunities, change lives and impact futures.</font><br> <h3><b>Our values</b></h3> <font size="+1">We are dedicated to preparing students for meaningful employment. We provide a quality education and learning environment. We embody integrity in everything we do. We believe in partnership with employers, students, graduates and our communities. We have pride in our students and are passionate about their success. We respect diversity and believe all people should have the opportunity to get an education and find meaningful employment. We believe in continuous improvement and exploring new ideas.</font><br> <h3><b>Who we are</b></h3> <font size="+1">ABC is the parent organization for XYZ College.  Since its inception, ABC has been a leader in career-focused education, meeting workforce needs for in-demand employment fields. As occupational challenges and opportunities are recognized, ABC develops new programs in cooperation with industry leaders to meet the needs of our students and graduates and of employers, as well.'),

(2, 'sanjeev', '98d34c1758b15b5a359b69c2b08c5767', '', '', '', '', '', ''),
(3, 'dmin', 'Password@123', 'College Information', 'ABC Group Of Institutions', 'a pioneer educational Institute of Northern India, has been striving to provide quality higher education since 2000. Approved by AICTE and UGC, ABC has a sprawling multi-discipline campus, world class facilities and competent faculty, with prime focus on research and quality education. Creating a benchmark in the field of education, ABC aims to create proficient technocrats and future leaders with emphasis on overall development of personality imbibing core human values among students.', 'Copyright under 2012-2013', 'About Us', 'Our College  is dedicated to preparing students with the knowledge, skills and training needed for meaningful employment. Through education, we create opportunities, change lives and impact futures.</font><br> <h3><b>Our values</b></h3> <font size="+1">We are dedicated to preparing students for meaningful employment. We provide a quality education and learning environment. We embody integrity in everything we do. We believe in partnership with employers, students, graduates and our communities. We have pride in our students and are passionate about their success. We respect diversity and believe all people should have the opportunity to get an education and find meaningful employment. We believe in continuous improvement and exploring new ideas.</font><br> <h3><b>Who we are</b></h3> <font size="+1">ABC is the parent organization for XYZ College.  Since its inception, ABC has been a leader in career-focused education, meeting workforce needs for in-demand employment fields. As occupational challenges and opportunities are recognized, ABC develops new programs in cooperation with industry leaders to meet the needs of our students and graduates and of employers, as well.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `mob` bigint(50) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `gender`, `mob`, `address`) VALUES
(26, 'vivek', '3b3b8360f70b78bb4f6239078e636626', 'neeraj@gmail.com', 'm', 8800670473, ''),
(36, 'ishaan', 'd76f3d05cc9ac98f1f9160274a39fe33', 'abhi@gmail.com', 'm', 9015501899, 'ddd9');

CREATE TABLE feedback (
    fb varchar(500) 
);

INSERT INTO `feedback` (`fb`)  VALUES ('Mess food is not good');
