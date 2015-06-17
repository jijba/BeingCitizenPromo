-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2015 at 07:09 PM
-- Server version: 5.6.19-enterprise-commercial-advanced
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trialrun`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE IF NOT EXISTS `campaigns` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `campaign_text` text COLLATE utf8_unicode_ci NOT NULL,
  `constituency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `started_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`cid`, `name`, `campaign_text`, `constituency`, `started_by`, `status`, `start_date`, `created_at`, `updated_at`) VALUES
(3, 'first', 'asfzsdgvvdd', 'Ballimaran', 1, 1, '2015-06-17', '2015-06-17 11:21:54', '2015-06-17 11:21:54'),
(4, 'second', 'rgdv', 'Bijwasan', 1, 1, '2015-06-17', '2015-06-17 11:22:14', '2015-06-17 11:22:14'),
(5, 'third', 'smmaxvmbasmb', 'Chhatarpur', 1, 1, '2015-06-17', '2015-06-17 11:26:32', '2015-06-17 11:26:32'),
(6, 'fourth', 'hvsmhbmwx', 'Delhi Cantt', 1, 1, '2015-06-17', '2015-06-17 11:32:11', '2015-06-17 11:32:11');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
