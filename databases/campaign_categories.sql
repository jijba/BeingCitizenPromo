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
-- Table structure for table `campaign_categories`
--

CREATE TABLE IF NOT EXISTS `campaign_categories` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `campaign_categories`
--

INSERT INTO `campaign_categories` (`cid`, `category`, `created_at`, `updated_at`) VALUES
(3, 'to be set', '2015-06-17 11:21:54', '2015-06-17 11:21:54'),
(4, 'to be set', '2015-06-17 11:22:14', '2015-06-17 11:22:14'),
(5, 'to be set', '2015-06-17 11:26:32', '2015-06-17 11:26:32'),
(6, 'to be set', '2015-06-17 11:32:11', '2015-06-17 11:32:11');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
