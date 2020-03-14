-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 15, 2019 at 03:03 PM
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
-- Database: `infradb`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
CREATE TABLE IF NOT EXISTS `assets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `asset_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `asset_subclass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `asset_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `geopolitical_zone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_sponsor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value_2012` double(8,2) NOT NULL,
  `value_2013` double(8,2) NOT NULL,
  `value_2014` double(8,2) NOT NULL,
  `value_2015` double(8,2) NOT NULL,
  `value_2016` double(8,2) NOT NULL,
  `value_2017` double(8,2) NOT NULL,
  `value_2018` double(8,2) NOT NULL,
  `value_2019` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assets_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `user_id`, `asset_class`, `asset_subclass`, `asset_category`, `geopolitical_zone`, `state`, `lga`, `project_sponsor`, `location_description`, `value_2012`, `value_2013`, `value_2014`, `value_2015`, `value_2016`, `value_2017`, `value_2018`, `value_2019`, `created_at`, `updated_at`) VALUES
(12, 1, 'Housing and Regional Development', 'Housing and Regional Development', 'Nos. of Low and Medium cost Houses constructed', 'North East', 'Adamawa', 'Hung', 'Local Government Area', 'Near Bulama\'s Mansion', 45.00, 23.00, 0.00, 89.00, 1.00, 98.00, 0.00, 7.00, '2019-06-18 12:14:08', '2019-06-18 12:14:08'),
(13, 1, 'Social Infrastructure', 'Education', 'Nos. of Blocks of Classrooms constructed in Primary Schools', 'South South', 'Delta', 'Ughelli North', 'State', 'Near Chief\'s Palace under the Mango tree', 2.00, 3.00, 4.00, 6.00, 5.00, 7.00, 8.00, 8.00, '2019-06-19 09:34:29', '2019-06-19 09:34:29'),
(8, 1, 'ICT', 'ICT', 'International Connectivity-Submarine Landing Points', 'South South', 'Akwa Ibom', 'Eastern Obolo', 'Private', 'Lorem ipsum dolor.', 34000.00, 76000.00, 49000.00, 54000.00, 60000.00, 27000.00, 32000.00, 18000.00, '2019-06-15 07:16:07', '2019-06-15 07:16:07'),
(6, 2, 'Energy', 'Power', 'Total installed Capacity (MW)', 'South South', 'Akwa Ibom', 'Etimekpo', 'PPP', 'Donec vivas Quiros la nus de mais.', 34000.00, 76000.00, 49000.00, 54000.00, 60000.00, 27000.00, 32000.00, 18000.00, '2019-06-15 06:55:25', '2019-06-15 06:55:25'),
(10, 1, 'Security', 'Prison', 'Standard Prisons', 'North Central', 'Niger', 'Lapai', 'State', 'Behind Chief\'s Palace', 0.00, 1.00, 2.00, 3.00, 4.00, 5.00, 6.00, 7.00, '2019-06-17 10:00:44', '2019-06-17 10:00:44'),
(11, 1, 'Security', 'Prison', 'Barracks', 'North East', 'Adamawa', 'Hung', 'PPP', 'Near Bulama\'s Villa', 4.00, 3.00, 2.00, 5.00, 6.00, 8.00, 9.00, 0.00, '2019-06-17 10:09:40', '2019-06-17 10:09:40'),
(14, 1, 'Energy', 'Oil & Gas', 'Total Refined Products Storage Capacity (billion litres)', 'South South', 'Delta', 'Ethiope East', 'PPP', 'Near the Chief\'s Palace behind modern market.', 2.00, 0.00, 5.00, 5.00, 2.00, 1.00, 0.00, 0.00, '2019-06-19 11:28:19', '2019-06-19 11:28:19'),
(15, 3, 'Social Infrastructure', 'Health', 'Nos. of Blocks of buildings (Laboratory, Clinic and Hospitals) constructed in Primary Health Centers', 'South South', 'Bayelsa', 'Membe', 'PPP', 'Near Halima\'s oil well', 0.00, 5.00, 7.00, 8.00, 0.00, 0.00, 4.00, 5.00, '2019-07-03 10:02:48', '2019-07-03 10:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `asset_categories`
--

DROP TABLE IF EXISTS `asset_categories`;
CREATE TABLE IF NOT EXISTS `asset_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_subclass_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `asset_categories`
--

INSERT INTO `asset_categories` (`id`, `asset_subclass_id`, `name`, `created_at`, `updated_at`) VALUES
(7, 2, 'Production Capacity-Oil (bpd)', NULL, NULL),
(8, 2, 'Production Capacity- Gas (mcfpd)', NULL, NULL),
(9, 2, 'Total Refining Capacity-Oil (bpd)', NULL, NULL),
(10, 2, 'Total Refined Products Storage Capacity (billion litres)', NULL, NULL),
(11, 2, 'Pipeline Length – Refined (Km)', NULL, NULL),
(12, 2, 'Pipeline Length – Crude Oil (Km)', NULL, NULL),
(13, 2, 'Pipeline Capacity – Crude Oil (m litres)', NULL, NULL),
(14, 2, 'Pipeline Capacity – Refined (m litres)', NULL, NULL),
(15, 1, 'Total installed Capacity (MW)', NULL, NULL),
(16, 1, 'Generation Capacity (MW)', NULL, NULL),
(17, 1, 'Transmission Route Lines (330 KV) (Km)', NULL, NULL),
(18, 1, 'Transmission Route Lines (132 KV) (Km)', NULL, NULL),
(19, 1, 'Transmission Capacity (MW)', NULL, NULL),
(20, 1, 'Transmission Capacity (MW)', NULL, NULL),
(21, 3, 'Nos. of Low and Medium cost Houses constructed', NULL, NULL),
(22, 3, 'Nos. of Mass Housing constructed', NULL, NULL),
(23, 3, 'Nos. of Estates constructed', NULL, NULL),
(24, 5, 'Nos. of Irrigation Systems constructed (Dams and other facilities)', NULL, NULL),
(25, 5, 'Nos. of Fertilizer Plants constructed', NULL, NULL),
(26, 5, 'Nos. of Silos and installed capacity', NULL, NULL),
(27, 5, 'Nos. of food Processing Plants\r\n', NULL, NULL),
(28, 6, 'Nos. of Waterways Systems', NULL, NULL),
(29, 6, 'Nos. of water Treatment Plants', NULL, NULL),
(30, 6, 'Nos. of Sanitation Plants', NULL, NULL),
(31, 7, 'Mining Infrastructure', NULL, NULL),
(37, 4, 'International Connectivity-Submarine Landing Points', NULL, NULL),
(38, 4, 'Lastmile connection-Microwave (Km)', NULL, NULL),
(39, 4, 'Lastmile connection- Base Stations', NULL, NULL),
(40, 4, 'Lastmile connection-Fiber (Km)', NULL, NULL),
(41, 4, 'Government Data Centers', NULL, NULL),
(42, 8, 'Nos. of Commands', NULL, NULL),
(43, 8, 'Nos. of Training Institutes', NULL, NULL),
(44, 9, 'Standard Prisons', NULL, NULL),
(45, 9, 'Barracks', NULL, NULL),
(46, 9, 'Training Schools', NULL, NULL),
(47, 9, 'Armouries', NULL, NULL),
(48, 10, 'Nos. of Fire Service Stations\r\n', NULL, NULL),
(49, 11, 'Unit Command', NULL, NULL),
(50, 11, 'Academy', NULL, NULL),
(51, 11, 'Driver’s License Printing Firm', NULL, NULL),
(52, 11, 'Number of Plate Production Plants', NULL, NULL),
(53, 11, 'FRSC Drivers License Center', NULL, NULL),
(54, 11, 'Roadside Accident Clinics', NULL, NULL),
(55, 11, 'Training Schools', NULL, NULL),
(56, 11, 'Accomodation Units', NULL, NULL),
(57, 12, 'Nos. of Posts', NULL, NULL),
(58, 12, 'Nos. of Barracks', NULL, NULL),
(59, 11, 'Nos. of Training Institutes', NULL, NULL),
(60, 11, 'Nos. of Schools and Colleges', NULL, NULL),
(61, 13, 'Nos. of Formations', NULL, NULL),
(62, 13, 'Nos. of Barracks', NULL, NULL),
(63, 13, 'Nos. of Training Institutes', NULL, NULL),
(64, 13, 'Nos. of Schools and Colleges', NULL, NULL),
(65, 14, 'Commands', NULL, NULL),
(66, 14, 'Air force Units', NULL, NULL),
(67, 14, 'Helipads Locations', NULL, NULL),
(68, 14, 'Fleet Support Group Workshops', NULL, NULL),
(69, 14, 'Forward Operation Base Locations', NULL, NULL),
(70, 14, 'Nos. of Schools and Colleges', NULL, NULL),
(71, 14, 'Communications/ICT Infrastructure Locations', NULL, NULL),
(72, 15, 'Commands', NULL, NULL),
(73, 15, 'Jetty Locations', NULL, NULL),
(74, 15, 'Slipways Locations', NULL, NULL),
(75, 15, 'Dockyard/ Shipyard Locations', NULL, NULL),
(76, 15, 'Fleet Support Group Workshops', NULL, NULL),
(77, 15, 'Forward Operation Base Locations', NULL, NULL),
(78, 15, 'Communications/ICT Infrastructure Locations', NULL, NULL),
(79, 15, 'Nos. of Schools and Colleges', NULL, NULL),
(80, 12, 'Nos. of Training Institutes', NULL, NULL),
(81, 12, 'Nos. of Schools and Colleges', NULL, NULL),
(82, 42, 'Km of Roads Constructed', NULL, NULL),
(83, 42, 'Km of Roads rehabilitated', NULL, NULL),
(84, 42, 'Nos. of Seaports', NULL, NULL),
(85, 42, 'Nos. of Ports operating within 24 hrs', NULL, NULL),
(86, 42, 'Nos. of Airports constructed (categorized)', NULL, NULL),
(87, 42, 'Nos. of Airports Upgraded', NULL, NULL),
(88, 42, 'Nos. of Airports rehabilitated (categorized)', NULL, NULL),
(89, 42, 'Nos. of Bridges Constructed/Rehabilitated', NULL, NULL),
(90, 42, 'Constructed Railway Network (Km)', NULL, NULL),
(91, 42, 'Rehabilitated Railway Network (Km)', NULL, NULL),
(92, 42, 'Assemblies/Automobile plants', NULL, NULL),
(93, 42, 'Nos. of  Bus Stops', NULL, NULL),
(94, 16, 'Nos. of Blocks of Classrooms constructed in Primary Schools', NULL, NULL),
(95, 16, 'Nos. of Blocks of Classrooms constructed in Secondary Schools', NULL, NULL),
(96, 16, 'Nos. of Blocks of Classrooms constructed in Tertiary Schools', NULL, NULL),
(97, 17, 'Nos. of Blocks of buildings (Laboratory, Clinic and Hospitals) constructed in Primary Health Centers', NULL, NULL),
(98, 17, 'Nos. of Blocks of buildings (Laboratory, Clinic and Hospitals) constructed in Secondary Health Centers', NULL, NULL),
(99, 17, 'Nos. of Blocks of buildings (Laboratory, Clinic and Hospitals) constructed in Tertiary Health Centers', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_classes`
--

DROP TABLE IF EXISTS `asset_classes`;
CREATE TABLE IF NOT EXISTS `asset_classes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `asset_classes`
--

INSERT INTO `asset_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Agric/Water/Mining', NULL, NULL),
(2, 'Energy', NULL, NULL),
(3, 'Housing and Regional Development', NULL, NULL),
(4, 'ICT', NULL, NULL),
(5, 'Security', NULL, NULL),
(6, 'Social Infrastructure', NULL, NULL),
(7, 'Transportation', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_subclasses`
--

DROP TABLE IF EXISTS `asset_subclasses`;
CREATE TABLE IF NOT EXISTS `asset_subclasses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_classes_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `asset_subclasses`
--

INSERT INTO `asset_subclasses` (`id`, `asset_classes_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 2, 'Power', NULL, NULL),
(2, 2, 'Oil & Gas', NULL, NULL),
(3, 3, 'Housing and Regional Development', NULL, NULL),
(4, 4, 'ICT', NULL, NULL),
(5, 1, 'Agriculture', NULL, NULL),
(6, 1, 'Water', NULL, NULL),
(7, 1, 'Mining', NULL, NULL),
(8, 5, 'NSCDC', NULL, NULL),
(9, 5, 'Prison', NULL, NULL),
(10, 5, 'Fire Service', NULL, NULL),
(11, 5, 'FRSC', NULL, NULL),
(12, 5, 'Police', NULL, NULL),
(13, 5, 'Military', NULL, NULL),
(14, 5, 'Air Force', NULL, NULL),
(15, 5, 'Navy', NULL, NULL),
(16, 6, 'Education', NULL, NULL),
(17, 6, 'Health', NULL, NULL),
(21, 8, 'Nos. of Commands', NULL, NULL),
(22, 8, 'Nos. of Training Institutes', NULL, NULL),
(23, 16, 'Nos. of Blocks of Classrooms constructed in Primary Schools', NULL, NULL),
(24, 16, 'Nos. of Blocks of Classrooms constructed in Secondary Schools', NULL, NULL),
(25, 16, 'Nos. of Blocks of Classrooms constructed in Tertiary Schools', NULL, NULL),
(26, 17, 'Nos. of Blocks of buildings (Laboratory, Clinic and Hospitals) constructed in Primary Health Centers', NULL, NULL),
(27, 17, 'Nos. of Blocks of buildings (Laboratory, Clinic and Hospitals) constructed in Secondary Health Centers', NULL, NULL),
(28, 17, 'Nos. of Blocks of buildings (Laboratory, Clinic and Hospitals) constructed in Tertiary Health Centers', NULL, NULL),
(42, 7, 'Transportation', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Travel', 'Travel ideas for everyone', '2019-08-08 17:13:14', '2019-08-08 17:13:14'),
(2, 'Food', 'Our favourite recipes', '2019-08-08 17:13:14', '2019-08-08 17:13:14'),
(3, 'Home', 'The latest trends in home decorations', '2019-08-08 17:13:14', '2019-08-08 17:13:14'),
(4, 'Fashion', 'Stay in touch with the latest trends', '2019-08-08 17:13:14', '2019-08-08 17:13:14'),
(5, 'Health', 'An apple a day keeps the doctor away', '2019-08-08 17:13:14', '2019-08-08 17:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `geopolitical_zones`
--

DROP TABLE IF EXISTS `geopolitical_zones`;
CREATE TABLE IF NOT EXISTS `geopolitical_zones` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `geopolitical_zones`
--

INSERT INTO `geopolitical_zones` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'South South', NULL, NULL),
(2, 'South East', NULL, NULL),
(3, 'South West', NULL, NULL),
(4, 'North Central', NULL, NULL),
(5, 'North East', NULL, NULL),
(6, 'North West', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `show_on_homepage` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `items_name_unique` (`name`),
  KEY `items_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `picture`, `category_id`, `status`, `date`, `show_on_homepage`, `options`, `created_at`, `updated_at`) VALUES
(1, '5 citybreak ideas for this year', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet nulla nulla. Donec luctus lorem justo, ut ullamcorper eros pellentesque ut. Etiam scelerisque dapibus lorem, vitae maximus ante condimentum quis. Maecenas ac arcu a lacus aliquet elementum posuere id nunc. Curabitur sem lorem, faucibus ac enim ut, vestibulum feugiat ante. Fusce hendrerit leo nibh, nec consectetur nulla venenatis et. Nulla tincidunt neque quam, sit amet tincidunt quam blandit in. Nunc fringilla rutrum tortor, sit amet bibendum augue convallis a. Etiam mauris orci, sollicitudin eu condimentum sed, dictum ut odio. Sed vel ligula in lectus scelerisque ornare.Mauris dolor nisl, finibus eget sem in, ultrices semper libero. Nullam accumsan suscipit tortor, a vestibulum sapien imperdiet quis. Donec pretium mauris quis lectus sodales accumsan. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec tincidunt semper orci eu molestie. Vivamus fermentum enim vitae magna elementum, quis iaculis augue tincidunt. Donec fermentum quam facilisis sem dictum rutrum. Nunc nec urna lectus. Nulla nec ultrices lorem. Integer ac ante massa.', NULL, 1, 'published', '2019-08-08', 1, '[\"0\",\"1\"]', '2019-08-08 17:13:14', '2019-08-08 17:13:14'),
(2, 'Top 10 restaurants in Italy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet nulla nulla. Donec luctus lorem justo, ut ullamcorper eros pellentesque ut. Etiam scelerisque dapibus lorem, vitae maximus ante condimentum quis. Maecenas ac arcu a lacus aliquet elementum posuere id nunc. Curabitur sem lorem, faucibus ac enim ut, vestibulum feugiat ante. Fusce hendrerit leo nibh, nec consectetur nulla venenatis et. Nulla tincidunt neque quam, sit amet tincidunt quam blandit in. Nunc fringilla rutrum tortor, sit amet bibendum augue convallis a. Etiam mauris orci, sollicitudin eu condimentum sed, dictum ut odio. Sed vel ligula in lectus scelerisque ornare.Mauris dolor nisl, finibus eget sem in, ultrices semper libero. Nullam accumsan suscipit tortor, a vestibulum sapien imperdiet quis. Donec pretium mauris quis lectus sodales accumsan. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec tincidunt semper orci eu molestie. Vivamus fermentum enim vitae magna elementum, quis iaculis augue tincidunt. Donec fermentum quam facilisis sem dictum rutrum. Nunc nec urna lectus. Nulla nec ultrices lorem. Integer ac ante massa.', NULL, 2, 'published', '2019-08-08', 1, '[\"0\",\"1\"]', '2019-08-08 17:13:14', '2019-08-08 17:13:14'),
(3, 'Cocktail ideas for your birthday party', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet nulla nulla. Donec luctus lorem justo, ut ullamcorper eros pellentesque ut. Etiam scelerisque dapibus lorem, vitae maximus ante condimentum quis. Maecenas ac arcu a lacus aliquet elementum posuere id nunc. Curabitur sem lorem, faucibus ac enim ut, vestibulum feugiat ante. Fusce hendrerit leo nibh, nec consectetur nulla venenatis et. Nulla tincidunt neque quam, sit amet tincidunt quam blandit in. Nunc fringilla rutrum tortor, sit amet bibendum augue convallis a. Etiam mauris orci, sollicitudin eu condimentum sed, dictum ut odio. Sed vel ligula in lectus scelerisque ornare.Mauris dolor nisl, finibus eget sem in, ultrices semper libero. Nullam accumsan suscipit tortor, a vestibulum sapien imperdiet quis. Donec pretium mauris quis lectus sodales accumsan. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec tincidunt semper orci eu molestie. Vivamus fermentum enim vitae magna elementum, quis iaculis augue tincidunt. Donec fermentum quam facilisis sem dictum rutrum. Nunc nec urna lectus. Nulla nec ultrices lorem. Integer ac ante massa.', NULL, 2, 'published', '2019-08-08', 1, '[\"0\",\"1\"]', '2019-08-08 17:13:14', '2019-08-08 17:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `item_tag`
--

DROP TABLE IF EXISTS `item_tag`;
CREATE TABLE IF NOT EXISTS `item_tag` (
  `item_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  KEY `item_tag_item_id_foreign` (`item_id`),
  KEY `item_tag_tag_id_foreign` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_tag`
--

INSERT INTO `item_tag` (`item_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lgas`
--

DROP TABLE IF EXISTS `lgas`;
CREATE TABLE IF NOT EXISTS `lgas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=730 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lgas`
--

INSERT INTO `lgas` (`id`, `state_id`, `name`, `created_at`, `updated_at`) VALUES
(230, 13, 'Ifako/Ijaye', NULL, NULL),
(231, 13, 'Ikeja', NULL, NULL),
(232, 13, 'Ikorodu', NULL, NULL),
(233, 13, 'Kosofe', NULL, NULL),
(234, 13, 'Lagos Island', NULL, NULL),
(235, 13, 'Lagos Mainland', NULL, NULL),
(236, 13, 'Mushin', NULL, NULL),
(237, 13, 'Ojo', NULL, NULL),
(238, 13, 'Oshodi –Isolo', NULL, NULL),
(239, 13, 'Shomolu', NULL, NULL),
(240, 13, 'Surulere', NULL, NULL),
(241, 14, 'Abeokuta south', NULL, NULL),
(242, 14, 'Abeokuta north', NULL, NULL),
(243, 14, 'Ado-odo/otta', NULL, NULL),
(244, 14, 'Agbado south', NULL, NULL),
(245, 14, 'Agbado north', NULL, NULL),
(246, 14, 'Ewekoro', NULL, NULL),
(247, 14, 'Idarapo', NULL, NULL),
(248, 14, 'Ifo', NULL, NULL),
(249, 14, 'Ijebu eas', NULL, NULL),
(250, 14, 'Ijebu north', NULL, NULL),
(251, 14, 'Ikenne', NULL, NULL),
(252, 14, 'Ilugun Alaro', NULL, NULL),
(253, 14, 'Imeko afon', NULL, NULL),
(254, 14, 'Ipokia', NULL, NULL),
(255, 14, 'Obafemi/owode', NULL, NULL),
(256, 14, 'Odeda', NULL, NULL),
(257, 14, 'Odogbolu', NULL, NULL),
(258, 14, 'Ogun waterside', NULL, NULL),
(259, 14, 'Sagamu', NULL, NULL),
(260, 15, 'Akoko north', NULL, NULL),
(261, 15, 'Akoko north east', NULL, NULL),
(262, 15, 'Akoko south east', NULL, NULL),
(263, 15, 'Akoko south', NULL, NULL),
(264, 15, 'Akure north', NULL, NULL),
(265, 15, 'Idanre', NULL, NULL),
(266, 15, 'Ifedore', NULL, NULL),
(267, 15, 'Ese odo', NULL, NULL),
(268, 15, 'Ilaje', NULL, NULL),
(269, 15, 'Ilaje oke-igbo', NULL, NULL),
(270, 15, 'Irele', NULL, NULL),
(271, 15, 'Odigbo', NULL, NULL),
(272, 15, 'Okitipupa', NULL, NULL),
(273, 15, 'Ondo', NULL, NULL),
(274, 15, 'Ondo east', NULL, NULL),
(275, 15, 'Ose', NULL, NULL),
(276, 15, 'Owo', NULL, NULL),
(277, 16, 'Atakumosa west', NULL, NULL),
(278, 16, 'Atakumosa east', NULL, NULL),
(279, 16, 'Ayeda-ade', NULL, NULL),
(280, 16, 'Ayedire', NULL, NULL),
(281, 16, 'Bolawaduro', NULL, NULL),
(282, 16, 'Boripe', NULL, NULL),
(283, 16, 'Ede', NULL, NULL),
(284, 16, 'Ede north', NULL, NULL),
(285, 16, 'Egbedore', NULL, NULL),
(286, 16, 'Ejigbo', NULL, NULL),
(287, 16, 'Ife north', NULL, NULL),
(288, 16, 'Ife central', NULL, NULL),
(289, 16, 'Ife south', NULL, NULL),
(290, 16, 'Ife east', NULL, NULL),
(291, 16, 'Ifedayo', NULL, NULL),
(292, 16, 'Ifelodun', NULL, NULL),
(293, 16, 'Ilesha west', NULL, NULL),
(294, 16, 'Ila- orangun', NULL, NULL),
(295, 16, 'Ilesah east', NULL, NULL),
(296, 16, 'Irepodun', NULL, NULL),
(297, 16, 'Irewole', NULL, NULL),
(298, 16, 'Isokan', NULL, NULL),
(299, 16, 'Iwo', NULL, NULL),
(300, 16, 'Obokun', NULL, NULL),
(301, 16, 'Odo-otin', NULL, NULL),
(302, 16, 'Ola oluwa', NULL, NULL),
(303, 16, 'Olorunda', NULL, NULL),
(304, 16, 'Oriade', NULL, NULL),
(305, 16, 'Orolu', NULL, NULL),
(306, 16, 'Oshogbo', NULL, NULL),
(307, 17, 'Afijio', NULL, NULL),
(308, 17, 'Akinyele', NULL, NULL),
(309, 17, 'Attba', NULL, NULL),
(310, 17, 'Atigbo', NULL, NULL),
(311, 17, 'Egbeda', NULL, NULL),
(312, 17, 'Ibadan', NULL, NULL),
(313, 17, 'North east', NULL, NULL),
(314, 17, 'Ibadan central', NULL, NULL),
(315, 17, 'Ibadan south east', NULL, NULL),
(316, 17, 'Ibadan west south', NULL, NULL),
(317, 17, 'Ibarapa east', NULL, NULL),
(318, 17, 'Ibarapa north', NULL, NULL),
(319, 17, 'Ido, Ifedapo', NULL, NULL),
(320, 17, 'Ifeloju', NULL, NULL),
(321, 17, 'Irepo', NULL, NULL),
(322, 17, 'Iseyin', NULL, NULL),
(323, 17, 'Itesiwaju', NULL, NULL),
(324, 17, 'Iwajowa', NULL, NULL),
(325, 17, 'Iwajowa olorunshogo', NULL, NULL),
(326, 17, 'Kajola', NULL, NULL),
(327, 17, 'Irewole', NULL, NULL),
(328, 17, 'Isokan', NULL, NULL),
(329, 17, 'Iwo', NULL, NULL),
(330, 17, 'Obokun', NULL, NULL),
(331, 17, 'Lagelu', NULL, NULL),
(332, 17, 'Ogbomosho north', NULL, NULL),
(333, 17, 'Ogbomosho south', NULL, NULL),
(334, 17, 'Ogo oluwa', NULL, NULL),
(335, 17, 'Oluyole', NULL, NULL),
(336, 17, 'Ona ara', NULL, NULL),
(337, 17, 'Ore lope', NULL, NULL),
(338, 17, 'Orire', NULL, NULL),
(339, 17, 'Oyo east', NULL, NULL),
(340, 17, 'Oyo west', NULL, NULL),
(341, 17, 'Saki east', NULL, NULL),
(342, 17, 'Saki west', NULL, NULL),
(343, 17, 'Surulere', NULL, NULL),
(344, 18, 'Ador', NULL, NULL),
(345, 18, 'Agatu', NULL, NULL),
(346, 18, 'Apa', NULL, NULL),
(347, 18, 'Buruku', NULL, NULL),
(348, 18, 'Kastina-ala', NULL, NULL),
(349, 18, 'Konshisha', NULL, NULL),
(350, 18, 'Kwande', NULL, NULL),
(351, 18, 'Logo', NULL, NULL),
(352, 18, 'Makurdi', NULL, NULL),
(353, 18, 'Obi', NULL, NULL),
(354, 18, 'Ogbadibo', NULL, NULL),
(355, 18, 'Ohimini', NULL, NULL),
(356, 18, 'Oju', NULL, NULL),
(357, 18, 'Okpokwu', NULL, NULL),
(358, 18, 'Oturkpo', NULL, NULL),
(359, 18, 'Tarka', NULL, NULL),
(360, 18, 'Ukum', NULL, NULL),
(361, 18, 'Vandekya', NULL, NULL),
(362, 19, 'Abaji', NULL, NULL),
(363, 19, 'Abuja Municipal', NULL, NULL),
(364, 19, 'Bwari', NULL, NULL),
(365, 19, 'Gwagwalada', NULL, NULL),
(366, 19, 'Kuje', NULL, NULL),
(367, 19, 'Kwali', NULL, NULL),
(368, 20, 'Asa', NULL, NULL),
(369, 20, 'Baruten', NULL, NULL),
(370, 20, 'Ede', NULL, NULL),
(371, 20, 'Ekiti', NULL, NULL),
(372, 20, 'Ifelodun', NULL, NULL),
(373, 20, 'Ilorin south', NULL, NULL),
(374, 20, 'Ilorin West', NULL, NULL),
(375, 20, 'Ilorin East', NULL, NULL),
(376, 20, 'Irepodun', NULL, NULL),
(377, 20, 'Isin', NULL, NULL),
(378, 20, 'Kaiama', NULL, NULL),
(379, 20, 'Moro', NULL, NULL),
(380, 20, 'Offa', NULL, NULL),
(381, 20, 'Oke ero', NULL, NULL),
(382, 20, 'Oyun', NULL, NULL),
(383, 20, 'Pategi', NULL, NULL),
(384, 21, 'Adavi', NULL, NULL),
(385, 21, 'Ajaokuta', NULL, NULL),
(386, 21, 'Ankpa', NULL, NULL),
(387, 21, 'Bassa', NULL, NULL),
(388, 21, 'Dekina', NULL, NULL),
(389, 21, 'Yagba east', NULL, NULL),
(390, 21, 'Ibaji', NULL, NULL),
(391, 21, 'Idah', NULL, NULL),
(392, 21, 'Igalamela', NULL, NULL),
(393, 21, 'Ijumu', NULL, NULL),
(394, 21, 'Kabba bunu', NULL, NULL),
(395, 21, 'Kogi', NULL, NULL),
(396, 21, 'Mopa muro', NULL, NULL),
(397, 21, 'Ofu', NULL, NULL),
(398, 21, 'Ogori magongo', NULL, NULL),
(399, 21, 'Okehi', NULL, NULL),
(400, 21, 'Okene', NULL, NULL),
(401, 21, 'Olamaboro', NULL, NULL),
(402, 21, 'Omala', NULL, NULL),
(403, 21, 'Yagba west', NULL, NULL),
(404, 22, 'Akwanga', NULL, NULL),
(405, 22, 'Awe', NULL, NULL),
(406, 22, 'Doma', NULL, NULL),
(407, 22, 'Karu', NULL, NULL),
(408, 22, 'Keana', NULL, NULL),
(409, 22, 'Keffi', NULL, NULL),
(410, 22, 'Kokona', NULL, NULL),
(411, 22, 'Lafia', NULL, NULL),
(412, 22, 'Nassarawa', NULL, NULL),
(413, 22, 'Nassarawa/Eggon', NULL, NULL),
(414, 22, 'Obi', NULL, NULL),
(415, 22, 'Toto', NULL, NULL),
(416, 22, 'Wamba', NULL, NULL),
(417, 23, 'Agaie', NULL, NULL),
(418, 23, 'Agwara', NULL, NULL),
(419, 23, 'Bida', NULL, NULL),
(420, 23, 'Borgu', NULL, NULL),
(421, 23, 'Bosso', NULL, NULL),
(422, 23, 'Chanchanga', NULL, NULL),
(423, 23, 'Edati', NULL, NULL),
(424, 23, 'Gbako', NULL, NULL),
(425, 23, 'Gurara', NULL, NULL),
(426, 23, 'Kitcha', NULL, NULL),
(427, 23, 'Kontagora', NULL, NULL),
(428, 23, 'Lapai', NULL, NULL),
(429, 23, 'Lavun', NULL, NULL),
(430, 23, 'Magama', NULL, NULL),
(431, 23, 'Mariga', NULL, NULL),
(432, 23, 'Mokwa', NULL, NULL),
(433, 23, 'Moshegu', NULL, NULL),
(434, 23, 'Muya', NULL, NULL),
(435, 23, 'Paiko', NULL, NULL),
(436, 23, 'Rafi', NULL, NULL),
(437, 23, 'Shiroro', NULL, NULL),
(438, 23, 'Suleja', NULL, NULL),
(439, 23, 'Tawa-Wushishi', NULL, NULL),
(440, 24, 'Barkin/ladi', NULL, NULL),
(441, 24, 'Bassa', NULL, NULL),
(442, 24, 'Bokkos', NULL, NULL),
(443, 24, 'Jos North', NULL, NULL),
(444, 24, 'Jos East', NULL, NULL),
(445, 24, 'Jos South', NULL, NULL),
(446, 24, 'Kanam', NULL, NULL),
(447, 24, 'Kiyom', NULL, NULL),
(448, 24, 'Langtang North', NULL, NULL),
(449, 24, 'Langtang South', NULL, NULL),
(450, 24, 'Mangu', NULL, NULL),
(451, 24, 'Mikang', NULL, NULL),
(452, 24, 'Pankshin', NULL, NULL),
(453, 24, 'Qua`an pan', NULL, NULL),
(454, 24, 'Shendam', NULL, NULL),
(455, 24, 'Wase', NULL, NULL),
(456, 25, 'Demsa', NULL, NULL),
(457, 25, 'Fufore', NULL, NULL),
(458, 25, 'Ganye', NULL, NULL),
(459, 25, 'Girei', NULL, NULL),
(460, 25, 'Gombi', NULL, NULL),
(461, 25, 'Jada', NULL, NULL),
(462, 25, 'Yola North', NULL, NULL),
(463, 25, 'Lamurde', NULL, NULL),
(464, 25, 'Madagali', NULL, NULL),
(465, 25, 'Maiha', NULL, NULL),
(466, 25, 'Mayo-Belwa', NULL, NULL),
(467, 25, 'Michika', NULL, NULL),
(468, 25, 'Mubi South', NULL, NULL),
(469, 25, 'Numna', NULL, NULL),
(470, 25, 'Shelleng', NULL, NULL),
(471, 25, 'Song', NULL, NULL),
(472, 25, 'Toungo', NULL, NULL),
(473, 25, 'Jimeta', NULL, NULL),
(474, 25, 'Yola South', NULL, NULL),
(475, 25, 'Hung', NULL, NULL),
(476, 26, 'Alkaleri', NULL, NULL),
(477, 26, 'Bauchi', NULL, NULL),
(478, 26, 'Bogoro', NULL, NULL),
(479, 26, 'Darazo', NULL, NULL),
(480, 26, 'Dass', NULL, NULL),
(481, 26, 'Gamawa', NULL, NULL),
(482, 26, 'Ganjuwa', NULL, NULL),
(483, 26, 'Giade', NULL, NULL),
(484, 26, 'Jama`are', NULL, NULL),
(485, 26, 'Katagum', NULL, NULL),
(486, 26, 'Kirfi', NULL, NULL),
(487, 26, 'Misau', NULL, NULL),
(488, 26, 'Ningi', NULL, NULL),
(489, 26, 'Hira', NULL, NULL),
(490, 26, 'Tafawa Balewa', NULL, NULL),
(491, 26, 'Itas gadau', NULL, NULL),
(492, 26, 'Toro', NULL, NULL),
(493, 26, 'Warji', NULL, NULL),
(494, 26, 'Zaki', NULL, NULL),
(495, 26, 'Dambam', NULL, NULL),
(496, 27, 'Abadan', NULL, NULL),
(497, 27, 'Askira/Uba', NULL, NULL),
(498, 27, 'Bama', NULL, NULL),
(499, 27, 'Bayo', NULL, NULL),
(500, 27, 'Biu', NULL, NULL),
(501, 27, 'Chibok', NULL, NULL),
(502, 27, 'Damboa', NULL, NULL),
(503, 27, 'Dikwagubio', NULL, NULL),
(504, 27, 'Guzamala', NULL, NULL),
(505, 27, 'Gwoza', NULL, NULL),
(506, 27, 'Hawul', NULL, NULL),
(507, 27, 'Jere', NULL, NULL),
(508, 27, 'Kaga', NULL, NULL),
(509, 27, 'Kalka/Balge', NULL, NULL),
(510, 27, 'Konduga', NULL, NULL),
(511, 27, 'Kukawa', NULL, NULL),
(512, 27, 'Kwaya-ku', NULL, NULL),
(513, 27, 'Mafa', NULL, NULL),
(514, 27, 'Magumeri', NULL, NULL),
(515, 27, 'Maiduguri', NULL, NULL),
(516, 27, 'Marte', NULL, NULL),
(517, 27, 'Mobbar', NULL, NULL),
(518, 27, 'Monguno', NULL, NULL),
(519, 27, 'Ngala', NULL, NULL),
(520, 27, 'Nganzai', NULL, NULL),
(521, 27, 'Shani', NULL, NULL),
(522, 28, 'Akko', NULL, NULL),
(523, 28, 'Balanga', NULL, NULL),
(524, 28, 'Billiri', NULL, NULL),
(525, 28, 'Dukku', NULL, NULL),
(526, 28, 'Dunakaye', NULL, NULL),
(527, 28, 'Gombe', NULL, NULL),
(528, 28, 'Kaltungo', NULL, NULL),
(529, 28, 'Kwami', NULL, NULL),
(530, 28, 'Nafada/Bajoga', NULL, NULL),
(531, 28, 'Shomgom', NULL, NULL),
(532, 28, 'Yamaltu/Deba', NULL, NULL),
(533, 28, 'Jere', NULL, NULL),
(534, 28, 'Kaga', NULL, NULL),
(535, 28, 'Kalka/Balge', NULL, NULL),
(536, 28, 'Konduga', NULL, NULL),
(537, 28, 'Kukawa', NULL, NULL),
(538, 29, 'Akdo –kola', NULL, NULL),
(539, 29, 'Bali', NULL, NULL),
(540, 29, 'Donga', NULL, NULL),
(541, 29, 'Gashaka', NULL, NULL),
(542, 29, 'Gassol', NULL, NULL),
(543, 29, 'Ibi', NULL, NULL),
(544, 29, 'Jalingo', NULL, NULL),
(545, 29, 'K/Lamido', NULL, NULL),
(546, 29, 'Kurmi', NULL, NULL),
(547, 29, 'Lan', NULL, NULL),
(548, 29, 'Sardauna', NULL, NULL),
(549, 29, 'Tarum', NULL, NULL),
(550, 29, 'Ussa', NULL, NULL),
(551, 29, 'Wukari', NULL, NULL),
(552, 29, 'Yorro', NULL, NULL),
(553, 29, 'Zing', NULL, NULL),
(554, 30, 'Borsari', NULL, NULL),
(555, 30, 'Damaturu', NULL, NULL),
(556, 30, 'Fika', NULL, NULL),
(557, 30, 'Fune', NULL, NULL),
(558, 30, 'Geidam', NULL, NULL),
(559, 30, 'Gogaram', NULL, NULL),
(560, 30, 'Gujba', NULL, NULL),
(561, 30, 'Gulani', NULL, NULL),
(562, 30, 'Jakusko', NULL, NULL),
(563, 30, 'Karasuwa', NULL, NULL),
(564, 30, 'Machina', NULL, NULL),
(565, 30, 'Nagere', NULL, NULL),
(566, 30, 'Nguru', NULL, NULL),
(567, 30, 'Potiskum', NULL, NULL),
(568, 30, 'Tarmua', NULL, NULL),
(569, 30, 'Yunusari', NULL, NULL),
(570, 30, 'Yusufari', NULL, NULL),
(571, 30, 'Gashua', NULL, NULL),
(572, 31, 'Auyo', NULL, NULL),
(573, 31, 'Babura', NULL, NULL),
(574, 31, 'Birnin- Kudu', NULL, NULL),
(575, 31, 'Birniwa', NULL, NULL),
(576, 31, 'Buji', NULL, NULL),
(577, 31, 'Dute', NULL, NULL),
(578, 31, 'Garki', NULL, NULL),
(579, 31, 'Gagarawa', NULL, NULL),
(580, 31, 'Gumel', NULL, NULL),
(581, 31, 'Guri', NULL, NULL),
(582, 31, 'Gwaram', NULL, NULL),
(583, 31, 'Gwiwa', NULL, NULL),
(584, 31, 'Hadejia', NULL, NULL),
(585, 31, 'Jahun', NULL, NULL),
(586, 31, 'Kafin-Hausa', NULL, NULL),
(587, 31, 'Kaugama', NULL, NULL),
(588, 31, 'Kazaure', NULL, NULL),
(589, 31, 'Kirikisamma', NULL, NULL),
(590, 31, 'Birnin-magaji', NULL, NULL),
(591, 31, 'Maigatari', NULL, NULL),
(592, 31, 'Malamaduri', NULL, NULL),
(593, 31, 'Miga', NULL, NULL),
(594, 31, 'Ringim', NULL, NULL),
(595, 31, 'Roni', NULL, NULL),
(596, 31, 'Sule Tankarka', NULL, NULL),
(597, 31, 'Taura', NULL, NULL),
(598, 31, 'Yankwasi', NULL, NULL),
(599, 32, 'Birnin Gwari', NULL, NULL),
(600, 32, 'Chukun', NULL, NULL),
(601, 32, 'Giwa', NULL, NULL),
(602, 32, 'Kajuru', NULL, NULL),
(603, 32, 'Igabi', NULL, NULL),
(604, 32, 'Ikara', NULL, NULL),
(605, 32, 'Jaba', NULL, NULL),
(606, 32, 'Jema`a', NULL, NULL),
(607, 32, 'Kachia', NULL, NULL),
(608, 32, 'Kaduna North', NULL, NULL),
(609, 32, 'Kaduna South', NULL, NULL),
(610, 32, 'Kagarok', NULL, NULL),
(611, 32, 'Kauru', NULL, NULL),
(612, 32, 'Kabau', NULL, NULL),
(613, 32, 'Kudan', NULL, NULL),
(614, 32, 'Kere', NULL, NULL),
(615, 32, 'Makarfi', NULL, NULL),
(616, 32, 'Sabongari', NULL, NULL),
(617, 32, 'Sanga', NULL, NULL),
(618, 32, 'Soba', NULL, NULL),
(619, 32, 'Zangon-Kataf', NULL, NULL),
(620, 32, 'Zaria', NULL, NULL),
(621, 33, 'KwaliAjigi', NULL, NULL),
(622, 33, 'Albasu', NULL, NULL),
(623, 33, 'Bagwai', NULL, NULL),
(624, 33, 'Bebeji', NULL, NULL),
(625, 33, 'Bichi', NULL, NULL),
(626, 33, 'Bunkure', NULL, NULL),
(627, 33, 'Dala', NULL, NULL),
(628, 33, 'Dambatta', NULL, NULL),
(629, 33, 'Dawakin kudu', NULL, NULL),
(630, 33, 'Dawakin tofa', NULL, NULL),
(631, 33, 'Doguwa', NULL, NULL),
(632, 33, 'Fagge', NULL, NULL),
(633, 33, 'Gabasawa', NULL, NULL),
(634, 33, 'Garko', NULL, NULL),
(635, 33, 'Garun mallam', NULL, NULL),
(636, 33, 'Gaya', NULL, NULL),
(637, 33, 'Gezawa', NULL, NULL),
(638, 33, 'Gwale', NULL, NULL),
(639, 33, 'Gwarzo', NULL, NULL),
(640, 33, 'Kano', NULL, NULL),
(641, 33, 'Karay', NULL, NULL),
(642, 33, 'Kibiya', NULL, NULL),
(643, 33, 'Kiru', NULL, NULL),
(644, 33, 'Kumbtso', NULL, NULL),
(645, 33, 'Kunch', NULL, NULL),
(646, 33, 'Kura', NULL, NULL),
(647, 33, 'Maidobi', NULL, NULL),
(648, 33, 'Makoda', NULL, NULL),
(649, 33, 'MInjibir Nassarawa', NULL, NULL),
(650, 33, 'Rano', NULL, NULL),
(651, 33, 'Rimin gado', NULL, NULL),
(652, 33, 'Rogo', NULL, NULL),
(653, 33, 'Shanono', NULL, NULL),
(654, 33, 'Sumaila', NULL, NULL),
(655, 33, 'Takai', NULL, NULL),
(656, 33, 'Tarauni', NULL, NULL),
(657, 33, 'Tofa', NULL, NULL),
(658, 33, 'Tsanyawa', NULL, NULL),
(659, 33, 'Tudunwada', NULL, NULL),
(660, 33, 'Ungogo', NULL, NULL),
(661, 33, 'Warawa', NULL, NULL),
(662, 33, 'Wudil', NULL, NULL),
(663, 34, 'Bakori', NULL, NULL),
(664, 34, 'Batagarawa', NULL, NULL),
(665, 34, 'Batsari', NULL, NULL),
(666, 34, 'Baure', NULL, NULL),
(667, 34, 'Bindawa', NULL, NULL),
(668, 34, 'Charanchi', NULL, NULL),
(669, 34, 'Dan- Musa', NULL, NULL),
(670, 34, 'Dandume', NULL, NULL),
(671, 34, 'Danja', NULL, NULL),
(672, 34, 'Daura', NULL, NULL),
(673, 34, 'Dutsi', NULL, NULL),
(674, 34, 'Dutsin `ma', NULL, NULL),
(675, 34, 'Faskar', NULL, NULL),
(676, 34, 'Funtua', NULL, NULL),
(677, 34, 'Ingawa', NULL, NULL),
(678, 34, 'Jibiya', NULL, NULL),
(679, 34, 'Kafur', NULL, NULL),
(680, 34, 'Kaita', NULL, NULL),
(681, 34, 'Kankara', NULL, NULL),
(682, 34, 'Kankiya', NULL, NULL),
(683, 34, 'Katsina', NULL, NULL),
(684, 34, 'Furfi', NULL, NULL),
(685, 34, 'Kusada', NULL, NULL),
(686, 34, 'Mai aduwa', NULL, NULL),
(687, 34, 'Malumfashi', NULL, NULL),
(688, 34, 'Mani', NULL, NULL),
(689, 34, 'Mash', NULL, NULL),
(690, 34, 'Matazu', NULL, NULL),
(691, 34, 'Musawa', NULL, NULL),
(692, 34, 'Rimi', NULL, NULL),
(693, 34, 'Sabuwa', NULL, NULL),
(694, 34, 'Safana', NULL, NULL),
(695, 34, 'Sandamu', NULL, NULL),
(696, 34, 'Zango', NULL, NULL),
(697, 35, 'Aliero', NULL, NULL),
(698, 35, 'Arewa Dandi', NULL, NULL),
(699, 35, 'Argungu', NULL, NULL),
(700, 35, 'Augie', NULL, NULL),
(701, 35, 'Bagudo', NULL, NULL),
(702, 35, 'Birnin Kebbi', NULL, NULL),
(703, 35, 'Bunza', NULL, NULL),
(704, 35, 'Dandi', NULL, NULL),
(705, 35, 'Danko', NULL, NULL),
(706, 35, 'Fakai', NULL, NULL),
(707, 35, 'Gwandu', NULL, NULL),
(708, 35, 'Jeda', NULL, NULL),
(709, 35, 'Kalgo', NULL, NULL),
(710, 35, 'Koko-besse', NULL, NULL),
(711, 35, 'Maiyaama', NULL, NULL),
(712, 35, 'Ngaski', NULL, NULL),
(713, 35, 'Sakaba', NULL, NULL),
(714, 35, 'Shanga', NULL, NULL),
(715, 35, 'Suru', NULL, NULL),
(716, 35, 'Wasugu', NULL, NULL),
(717, 35, 'Yauri', NULL, NULL),
(718, 35, 'Zuru', NULL, NULL),
(719, 36, 'Binji', NULL, NULL),
(720, 36, 'Bodinga', NULL, NULL),
(721, 36, 'Dange/shuni', NULL, NULL),
(722, 36, 'Gada', NULL, NULL),
(723, 36, 'Goronyo', NULL, NULL),
(724, 36, 'Gudu', NULL, NULL),
(725, 36, 'Gwadabawa', NULL, NULL),
(726, 36, 'Illella', NULL, NULL),
(727, 36, 'Kebbe', NULL, NULL),
(728, 36, 'Kware', NULL, NULL),
(729, 36, 'Rabah', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_01_15_100000_create_roles_table', 1),
(3, '2019_01_15_110000_create_users_table', 1),
(4, '2019_01_17_121504_create_categories_table', 1),
(5, '2019_01_21_130422_create_tags_table', 1),
(6, '2019_01_21_163402_create_items_table', 1),
(7, '2019_01_21_163414_create_item_tag_table', 1),
(8, '2019_03_06_132557_add_photo_column_to_users_table', 1),
(9, '2019_03_06_143255_add_fields_to_items_table', 1),
(10, '2019_03_20_090438_add_color_tags_table', 1),
(11, '2019_06_14_110329_create_assets_table', 2),
(12, '2019_06_14_130924_create_asset_classes_table', 2),
(13, '2019_06_14_131042_create_asset_subclasses_table', 2),
(14, '2019_06_14_131129_create_asset_categories_table', 2),
(15, '2019_06_14_131243_create_geopolitical_zones_table', 2),
(16, '2019_06_14_131348_create_states_table', 2),
(17, '2019_06_14_131411_create_lgas_table', 2),
(18, '2019_06_14_131535_create_project_sponsors_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_sponsors`
--

DROP TABLE IF EXISTS `project_sponsors`;
CREATE TABLE IF NOT EXISTS `project_sponsors` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_sponsors`
--

INSERT INTO `project_sponsors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Federal', NULL, NULL),
(2, 'State', NULL, NULL),
(3, 'Local Government Area', NULL, NULL),
(4, 'Private', NULL, NULL),
(5, 'PPP', NULL, NULL),
(6, 'IDP', NULL, NULL),
(7, 'Others', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'This is the administration role', '2019-08-08 17:13:13', '2019-08-08 17:13:13'),
(2, 'Creator', 'This is the creator role', '2019-08-08 17:13:13', '2019-08-08 17:13:13'),
(3, 'Member', 'This is the member role', '2019-08-08 17:13:13', '2019-08-08 17:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `geopolitical_zone_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `geopolitical_zone_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Akwa Ibom', NULL, NULL),
(2, 1, 'Bayelsa', NULL, NULL),
(3, 1, 'Cross River', NULL, NULL),
(4, 1, 'Delta', NULL, NULL),
(5, 1, 'Edo', NULL, NULL),
(6, 1, 'Rivers', NULL, NULL),
(7, 2, 'Abia', NULL, NULL),
(8, 2, 'Anambra', NULL, NULL),
(9, 2, 'Ebonyi', NULL, NULL),
(10, 2, 'Enugu', NULL, NULL),
(11, 2, 'Imo', NULL, NULL),
(12, 3, 'Ekiti', NULL, NULL),
(13, 3, 'Lagos', NULL, NULL),
(14, 3, 'Ogun', NULL, NULL),
(15, 3, 'Ondo', NULL, NULL),
(16, 3, 'Osun', NULL, NULL),
(17, 3, 'Oyo', NULL, NULL),
(18, 4, 'Benue', NULL, NULL),
(19, 4, 'FCT', NULL, NULL),
(20, 4, 'Kwara', NULL, NULL),
(21, 4, 'Kogi', NULL, NULL),
(22, 4, 'Nasarawa', NULL, NULL),
(23, 4, 'Niger', NULL, NULL),
(24, 4, 'Plateau', NULL, NULL),
(25, 5, 'Adamawa', NULL, NULL),
(26, 5, 'Bauchi', NULL, NULL),
(27, 5, 'Borno', NULL, NULL),
(28, 5, 'Gombe', NULL, NULL),
(29, 5, 'Taraba', NULL, NULL),
(30, 5, 'Yobe', NULL, NULL),
(31, 6, 'Jigawa', NULL, NULL),
(32, 6, 'Kaduna', NULL, NULL),
(33, 6, 'Kano', NULL, NULL),
(34, 6, 'Katsina', NULL, NULL),
(35, 6, 'Kebbi', NULL, NULL),
(36, 6, 'Sokoto', NULL, NULL),
(37, 6, 'Zamfara', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Hot', '#f44336', '2019-08-08 17:13:14', '2019-08-08 17:13:14'),
(2, 'Trending', '#9c27b0', '2019-08-08 17:13:14', '2019-08-08 17:13:14'),
(3, 'New', '#00bcd4', '2019-08-08 17:13:14', '2019-08-08 17:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `picture`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'MBNP Admin', 'admin@material.com', '2019-08-08 17:13:14', '$2y$10$huAvb//o/KrrpsjXuOzmOuD37zU69iGuoL43x7g0Bsket/XnbCd1W', 'profile/TrM7FvTh2Vh4LOr4KbeN8Wpv4rTFym70eKaZjPHf.png', 1, 'jt3m3R1HsQ7ejN1Pi8a8LjszqpGygNU206oca4ToiW6S3moBROL19AR2YAsu', '2019-08-08 17:13:14', '2019-08-11 15:20:00'),
(2, 'Creator', 'creator@material.com', '2019-08-08 17:13:14', '$2y$10$HRlaRrVQx44XdV4y3SV9c.pflfB3XlMOfk9d/hi6GBNJ3Gj5znO8O', NULL, 2, 'POFhePGMD8QWLHP2XqesTv71YEXefsfT6CQa0Bjt7epW4EV23r1bOhRGU1Kc', '2019-08-08 17:13:14', '2019-08-08 17:13:14'),
(3, 'Member', 'member@material.com', '2019-08-08 17:13:14', '$2y$10$NOAaypplAkzl7PuJJVYtuOE9QhFlMwD4qboE4.pPHMEY9YpVZKXDu', NULL, 3, 'yAwfukBIBT4Joj6RScN251DWpV4pT5UcK9sPcp9tTujWWtAHxIWWWNKIOUUd', '2019-08-08 17:13:14', '2019-08-08 17:13:14');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
