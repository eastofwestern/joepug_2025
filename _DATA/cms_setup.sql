-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2020 at 06:36 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recordsocial`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `level`) VALUES
(15, 'admin', '729Muv9B9X&3', 'info@eastofwestern.com', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `base_country`
--

DROP TABLE IF EXISTS `base_country`;
CREATE TABLE IF NOT EXISTS `base_country` (
  `id` int(11) NOT NULL,
  `iso2` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso3` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_fr` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_de` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `base_country`
--

INSERT INTO `base_country` (`id`, `iso2`, `iso3`, `name_en`, `name_fr`, `name_de`) VALUES
(1, 'AF', 'AFG', 'Afghanistan', NULL, NULL),
(2, 'AX', 'ALA', 'Åland Islands', NULL, NULL),
(3, 'AL', 'ALB', 'Albania', NULL, NULL),
(4, 'DZ', 'DZA', 'Algeria (El Djazaïr)', NULL, NULL),
(5, 'AS', 'ASM', 'American Samoa', NULL, NULL),
(6, 'AD', 'AND', 'Andorra', NULL, NULL),
(7, 'AO', 'AGO', 'Angola', NULL, NULL),
(8, 'AI', 'AIA', 'Anguilla', NULL, NULL),
(9, 'AQ', 'ATA', 'Antarctica', NULL, NULL),
(10, 'AG', 'ATG', 'Antigua and Barbuda', NULL, NULL),
(11, 'AR', 'ARG', 'Argentina', NULL, NULL),
(12, 'AM', 'ARM', 'Armenia', NULL, NULL),
(13, 'AW', 'ABW', 'Aruba', NULL, NULL),
(14, 'AU', 'AUS', 'Australia', NULL, NULL),
(15, 'AT', 'AUT', 'Austria', NULL, NULL),
(16, 'AZ', 'AZE', 'Azerbaijan', NULL, NULL),
(17, 'BS', 'BHS', 'Bahamas', NULL, NULL),
(18, 'BH', 'BHR', 'Bahrain', NULL, NULL),
(19, 'BD', 'BGD', 'Bangladesh', NULL, NULL),
(20, 'BB', 'BRB', 'Barbados', NULL, NULL),
(21, 'BY', 'BLR', 'Belarus', NULL, NULL),
(22, 'BE', 'BEL', 'Belgium', NULL, NULL),
(23, 'BZ', 'BLZ', 'Belize', NULL, NULL),
(24, 'BJ', 'BEN', 'Benin', NULL, NULL),
(25, 'BM', 'BMU', 'Bermuda', NULL, NULL),
(26, 'BT', 'BTN', 'Bhutan', NULL, NULL),
(27, 'BO', 'BOL', 'Bolivia', NULL, NULL),
(28, 'BA', 'BIH', 'Bosnia and Herzegovina', NULL, NULL),
(29, 'BW', 'BWA', 'Botswana', NULL, NULL),
(30, 'BV', 'BVT', 'Bouvet Island', NULL, NULL),
(31, 'BR', 'BRA', 'Brazil', NULL, NULL),
(32, 'IO', 'IOT', 'British Indian Ocean Territory', NULL, NULL),
(33, 'BN', 'BRN', 'Brunei Darussalam', NULL, NULL),
(34, 'BG', 'BGR', 'Bulgaria', NULL, NULL),
(35, 'BF', 'BFA', 'Burkina Faso', NULL, NULL),
(36, 'BI', 'BDI', 'Burundi', NULL, NULL),
(37, 'KH', 'KHM', 'Cambodia', NULL, NULL),
(38, 'CM', 'CMR', 'Cameroon', NULL, NULL),
(39, 'CA', 'CAN', 'Canada', NULL, NULL),
(40, 'CV', 'CPV', 'Cape Verde', NULL, NULL),
(41, 'KY', 'CYM', 'Cayman Islands', NULL, NULL),
(42, 'CF', 'CAF', 'Central African Republic', NULL, NULL),
(43, 'TD', 'TCD', 'Chad (T\'Chad)', NULL, NULL),
(44, 'CL', 'CHL', 'Chile', NULL, NULL),
(45, 'CN', 'CHN', 'China', NULL, NULL),
(46, 'CX', 'CXR', 'Christmas Island', NULL, NULL),
(47, 'CC', 'CCK', 'Cocos (Keeling) Islands', NULL, NULL),
(48, 'CO', 'COL', 'Colombia', NULL, NULL),
(49, 'KM', 'COM', 'Comoros', NULL, NULL),
(50, 'CG', 'COG', 'Congo, Republic Of', NULL, NULL),
(51, 'CD', 'COD', 'Congo, The Democratic Republic of the (formerly Zaire)', NULL, NULL),
(52, 'CK', 'COK', 'Cook Islands', NULL, NULL),
(53, 'CR', 'CRI', 'Costa Rica', NULL, NULL),
(54, 'CI', 'CIV', 'CÔte D\'Ivoire (Ivory Coast)', NULL, NULL),
(55, 'HR', 'HRV', 'Croatia (hrvatska)', NULL, NULL),
(56, 'CU', 'CUB', 'Cuba', NULL, NULL),
(57, 'CY', 'CYP', 'Cyprus', NULL, NULL),
(58, 'CZ', 'CZE', 'Czech Republic', NULL, NULL),
(59, 'DK', 'DNK', 'Denmark', NULL, NULL),
(60, 'DJ', 'DJI', 'Djibouti', NULL, NULL),
(61, 'DM', 'DMA', 'Dominica', NULL, NULL),
(62, 'DO', 'DOM', 'Dominican Republic', NULL, NULL),
(63, 'EC', 'ECU', 'Ecuador', NULL, NULL),
(64, 'EG', 'EGY', 'Egypt', NULL, NULL),
(65, 'SV', 'SLV', 'El Salvador', NULL, NULL),
(66, 'GQ', 'GNQ', 'Equatorial Guinea', NULL, NULL),
(67, 'ER', 'ERI', 'Eritrea', NULL, NULL),
(68, 'EE', 'EST', 'Estonia', NULL, NULL),
(69, 'ET', 'ETH', 'Ethiopia', NULL, NULL),
(70, 'FO', 'FRO', 'Faeroe Islands', NULL, NULL),
(71, 'FK', 'FLK', 'Falkland Islands (Malvinas)', NULL, NULL),
(72, 'FJ', 'FJI', 'Fiji', NULL, NULL),
(73, 'FI', 'FIN', 'Finland', NULL, NULL),
(74, 'FR', 'FRA', 'France', NULL, NULL),
(75, 'GF', 'GUF', 'French Guiana', NULL, NULL),
(76, 'PF', 'PYF', 'French Polynesia', NULL, NULL),
(77, 'TF', 'ATF', 'French Southern Territories', NULL, NULL),
(78, 'GA', 'GAB', 'Gabon', NULL, NULL),
(79, 'GM', 'GMB', 'Gambia, The', NULL, NULL),
(80, 'GE', 'GEO', 'Georgia', NULL, NULL),
(81, 'DE', 'DEU', 'Germany (Deutschland)', NULL, NULL),
(82, 'GH', 'GHA', 'Ghana', NULL, NULL),
(83, 'GI', 'GIB', 'Gibraltar', NULL, NULL),
(84, 'GB', 'GBR', 'Great Britain', NULL, NULL),
(85, 'GR', 'GRC', 'Greece', NULL, NULL),
(86, 'GL', 'GRL', 'Greenland', NULL, NULL),
(87, 'GD', 'GRD', 'Grenada', NULL, NULL),
(88, 'GP', 'GLP', 'Guadeloupe', NULL, NULL),
(89, 'GU', 'GUM', 'Guam', NULL, NULL),
(90, 'GT', 'GTM', 'Guatemala', NULL, NULL),
(91, 'GN', 'GIN', 'Guinea', NULL, NULL),
(92, 'GW', 'GNB', 'Guinea-bissau', NULL, NULL),
(93, 'GY', 'GUY', 'Guyana', NULL, NULL),
(94, 'HT', 'HTI', 'Haiti', NULL, NULL),
(95, 'HM', 'HMD', 'Heard Island and Mcdonald Islands', NULL, NULL),
(96, 'HN', 'HND', 'Honduras', NULL, NULL),
(97, 'HK', 'HKG', 'Hong Kong (Special Administrative Region of China)', NULL, NULL),
(98, 'HU', 'HUN', 'Hungary', NULL, NULL),
(99, 'IS', 'ISL', 'Iceland', NULL, NULL),
(100, 'IN', 'IND', 'India', NULL, NULL),
(101, 'ID', 'IDN', 'Indonesia', NULL, NULL),
(102, 'IR', 'IRN', 'Iran (Islamic Republic of Iran)', NULL, NULL),
(103, 'IQ', 'IRQ', 'Iraq', NULL, NULL),
(104, 'IE', 'IRL', 'Ireland', NULL, NULL),
(105, 'IL', 'ISR', 'Israel', NULL, NULL),
(106, 'IT', 'ITA', 'Italy', NULL, NULL),
(107, 'JM', 'JAM', 'Jamaica', NULL, NULL),
(108, 'JP', 'JPN', 'Japan', NULL, NULL),
(109, 'JO', 'JOR', 'Jordan (Hashemite Kingdom of Jordan)', NULL, NULL),
(110, 'KZ', 'KAZ', 'Kazakhstan', NULL, NULL),
(111, 'KE', 'KEN', 'Kenya', NULL, NULL),
(112, 'KI', 'KIR', 'Kiribati', NULL, NULL),
(113, 'KP', 'PRK', 'Korea (Democratic Peoples Republic pf [North] Korea)', NULL, NULL),
(114, 'KR', 'KOR', 'Korea (Republic of [South] Korea)', NULL, NULL),
(115, 'KW', 'KWT', 'Kuwait', NULL, NULL),
(116, 'KG', 'KGZ', 'Kyrgyzstan', NULL, NULL),
(117, 'LA', 'LAO', 'Lao People\'s Democratic Republic', NULL, NULL),
(118, 'LV', 'LVA', 'Latvia', NULL, NULL),
(119, 'LB', 'LBN', 'Lebanon', NULL, NULL),
(120, 'LS', 'LSO', 'Lesotho', NULL, NULL),
(121, 'LR', 'LBR', 'Liberia', NULL, NULL),
(122, 'LY', 'LBY', 'Libya (Libyan Arab Jamahirya)', NULL, NULL),
(123, 'LI', 'LIE', 'Liechtenstein (Fürstentum Liechtenstein)', NULL, NULL),
(124, 'LT', 'LTU', 'Lithuania', NULL, NULL),
(125, 'LU', 'LUX', 'Luxembourg', NULL, NULL),
(126, 'MO', 'MAC', 'Macao (Special Administrative Region of China)', NULL, NULL),
(127, 'MK', 'MKD', 'Macedonia (Former Yugoslav Republic of Macedonia)', NULL, NULL),
(128, 'MG', 'MDG', 'Madagascar', NULL, NULL),
(129, 'MW', 'MWI', 'Malawi', NULL, NULL),
(130, 'MY', 'MYS', 'Malaysia', NULL, NULL),
(131, 'MV', 'MDV', 'Maldives', NULL, NULL),
(132, 'ML', 'MLI', 'Mali', NULL, NULL),
(133, 'MT', 'MLT', 'Malta', NULL, NULL),
(134, 'MH', 'MHL', 'Marshall Islands', NULL, NULL),
(135, 'MQ', 'MTQ', 'Martinique', NULL, NULL),
(136, 'MR', 'MRT', 'Mauritania', NULL, NULL),
(137, 'MU', 'MUS', 'Mauritius', NULL, NULL),
(138, 'YT', 'MYT', 'Mayotte', NULL, NULL),
(139, 'MX', 'MEX', 'Mexico', NULL, NULL),
(140, 'FM', 'FSM', 'Micronesia (Federated States of Micronesia)', NULL, NULL),
(141, 'MD', 'MDA', 'Moldova', NULL, NULL),
(142, 'MC', 'MCO', 'Monaco', NULL, NULL),
(143, 'MN', 'MNG', 'Mongolia', NULL, NULL),
(144, 'MS', 'MSR', 'Montserrat', NULL, NULL),
(145, 'MA', 'MAR', 'Morocco', NULL, NULL),
(146, 'MZ', 'MOZ', 'Mozambique (Moçambique)', NULL, NULL),
(147, 'MM', 'MMR', 'Myanmar (formerly Burma)', NULL, NULL),
(148, 'NA', 'NAM', 'Namibia', NULL, NULL),
(149, 'NR', 'NRU', 'Nauru', NULL, NULL),
(150, 'NP', 'NPL', 'Nepal', NULL, NULL),
(151, 'NL', 'NLD', 'Netherlands', NULL, NULL),
(152, 'AN', 'ANT', 'Netherlands Antilles', NULL, NULL),
(153, 'NC', 'NCL', 'New Caledonia', NULL, NULL),
(154, 'NZ', 'NZL', 'New Zealand', NULL, NULL),
(155, 'NI', 'NIC', 'Nicaragua', NULL, NULL),
(156, 'NE', 'NER', 'Niger', NULL, NULL),
(157, 'NG', 'NGA', 'Nigeria', NULL, NULL),
(158, 'NU', 'NIU', 'Niue', NULL, NULL),
(159, 'NF', 'NFK', 'Norfolk Island', NULL, NULL),
(160, 'MP', 'MNP', 'Northern Mariana Islands', NULL, NULL),
(161, 'NO', 'NOR', 'Norway', NULL, NULL),
(162, 'OM', 'OMN', 'Oman', NULL, NULL),
(163, 'PK', 'PAK', 'Pakistan', NULL, NULL),
(164, 'PW', 'PLW', 'Palau', NULL, NULL),
(165, 'PS', 'PSE', 'Palestinian Territories', NULL, NULL),
(166, 'PA', 'PAN', 'Panama', NULL, NULL),
(167, 'PG', 'PNG', 'Papua New Guinea', NULL, NULL),
(168, 'PY', 'PRY', 'Paraguay', NULL, NULL),
(169, 'PE', 'PER', 'Peru', NULL, NULL),
(170, 'PH', 'PHL', 'Philippines', NULL, NULL),
(171, 'PN', 'PCN', 'Pitcairn', NULL, NULL),
(172, 'PL', 'POL', 'Poland', NULL, NULL),
(173, 'PT', 'PRT', 'Portugal', NULL, NULL),
(174, 'PR', 'PRI', 'Puerto Rico', NULL, NULL),
(175, 'QA', 'QAT', 'Qatar', NULL, NULL),
(176, 'RE', 'REU', 'RÉunion', NULL, NULL),
(177, 'RO', 'ROU', 'Romania', NULL, NULL),
(178, 'RU', 'RUS', 'Russian Federation', NULL, NULL),
(179, 'RW', 'RWA', 'Rwanda', NULL, NULL),
(180, 'SH', 'SHN', 'Saint Helena', NULL, NULL),
(181, 'KN', 'KNA', 'Saint Kitts and Nevis', NULL, NULL),
(182, 'LC', 'LCA', 'Saint Lucia', NULL, NULL),
(183, 'PM', 'SPM', 'Saint Pierre and Miquelon', NULL, NULL),
(184, 'VC', 'VCT', 'Saint Vincent and the Grenadines', NULL, NULL),
(185, 'WS', 'WSM', 'Samoa (formerly Western Samoa)', NULL, NULL),
(186, 'SM', 'SMR', 'San Marino (Republic of)', NULL, NULL),
(187, 'ST', 'STP', 'Sao Tome and Principe', NULL, NULL),
(188, 'SA', 'SAU', 'Saudi Arabia (Kingdom of Saudi Arabia)', NULL, NULL),
(189, 'SN', 'SEN', 'Senegal', NULL, NULL),
(190, 'CS', 'SCG', 'Serbia and Montenegro (formerly Yugoslavia)', NULL, NULL),
(191, 'SC', 'SYC', 'Seychelles', NULL, NULL),
(192, 'SL', 'SLE', 'Sierra Leone', NULL, NULL),
(193, 'SG', 'SGP', 'Singapore', NULL, NULL),
(194, 'SK', 'SVK', 'Slovakia (Slovak Republic)', NULL, NULL),
(195, 'SI', 'SVN', 'Slovenia', NULL, NULL),
(196, 'SB', 'SLB', 'Solomon Islands', NULL, NULL),
(197, 'SO', 'SOM', 'Somalia', NULL, NULL),
(198, 'ZA', 'ZAF', 'South Africa (zuid Afrika)', NULL, NULL),
(199, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
(200, 'ES', 'ESP', 'Spain (españa)', NULL, NULL),
(201, 'LK', 'LKA', 'Sri Lanka', NULL, NULL),
(202, 'SD', 'SDN', 'Sudan', NULL, NULL),
(203, 'SR', 'SUR', 'Suriname', NULL, NULL),
(204, 'SJ', 'SJM', 'Svalbard and Jan Mayen', NULL, NULL),
(205, 'SZ', 'SWZ', 'Swaziland', NULL, NULL),
(206, 'SE', 'SWE', 'Sweden', NULL, NULL),
(207, 'CH', 'CHE', 'Switzerland (Confederation of Helvetia)', NULL, NULL),
(208, 'SY', 'SYR', 'Syrian Arab Republic', NULL, NULL),
(209, 'TW', 'TWN', 'Taiwan (\"Chinese Taipei\" for IOC)', NULL, NULL),
(210, 'TJ', 'TJK', 'Tajikistan', NULL, NULL),
(211, 'TZ', 'TZA', 'Tanzania', NULL, NULL),
(212, 'TH', 'THA', 'Thailand', NULL, NULL),
(213, 'TL', 'TLS', 'Timor-Leste (formerly East Timor)', NULL, NULL),
(214, 'TG', 'TGO', 'Togo', NULL, NULL),
(215, 'TK', 'TKL', 'Tokelau', NULL, NULL),
(216, 'TO', 'TON', 'Tonga', NULL, NULL),
(217, 'TT', 'TTO', 'Trinidad and Tobago', NULL, NULL),
(218, 'TN', 'TUN', 'Tunisia', NULL, NULL),
(219, 'TR', 'TUR', 'Turkey', NULL, NULL),
(220, 'TM', 'TKM', 'Turkmenistan', NULL, NULL),
(221, 'TC', 'TCA', 'Turks and Caicos Islands', NULL, NULL),
(222, 'TV', 'TUV', 'Tuvalu', NULL, NULL),
(223, 'UG', 'UGA', 'Uganda', NULL, NULL),
(224, 'UA', 'UKR', 'Ukraine', NULL, NULL),
(225, 'AE', 'ARE', 'United Arab Emirates', NULL, NULL),
(226, 'GB', 'GBR', 'United Kingdom (Great Britain)', NULL, NULL),
(227, 'US', 'USA', 'United States', NULL, NULL),
(228, 'UM', 'UMI', 'United States Minor Outlying Islands', NULL, NULL),
(229, 'UY', 'URY', 'Uruguay', NULL, NULL),
(230, 'UZ', 'UZB', 'Uzbekistan', NULL, NULL),
(231, 'VU', 'VUT', 'Vanuatu', NULL, NULL),
(232, 'VA', 'VAT', 'Vatican City (Holy See)', NULL, NULL),
(233, 'VE', 'VEN', 'Venezuela', NULL, NULL),
(234, 'VN', 'VNM', 'Viet Nam', NULL, NULL),
(235, 'VG', 'VGB', 'Virgin Islands, British', NULL, NULL),
(236, 'VI', 'VIR', 'Virgin Islands, U.S.', NULL, NULL),
(237, 'WF', 'WLF', 'Wallis and Futuna', NULL, NULL),
(238, 'EH', 'ESH', 'Western Sahara (formerly Spanish Sahara)', NULL, NULL),
(239, 'YE', 'YEM', 'Yemen (Arab Republic)', NULL, NULL),
(240, 'ZM', 'ZMB', 'Zambia', NULL, NULL),
(241, 'ZW', 'ZWE', 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cat_list`
--

DROP TABLE IF EXISTS `cat_list`;
CREATE TABLE IF NOT EXISTS `cat_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subName` varchar(255) DEFAULT NULL,
  `parentID` int(11) DEFAULT '0',
  `pageType` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `imgON` varchar(255) DEFAULT NULL,
  `imgOFF` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sortBy` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sectionID` int(11) NOT NULL DEFAULT '0',
  `contentType` varchar(50) NOT NULL DEFAULT 'page',
  `projectName` text,
  `metaKeywords` text,
  `metaDesc` text,
  `metaTitle` text,
  `metaImage` varchar(255) DEFAULT NULL,
  `metaImageWidth` int(11) DEFAULT NULL,
  `metaImageHeight` int(11) DEFAULT NULL,
  `target` varchar(50) DEFAULT NULL,
  `imgSize` varchar(50) DEFAULT NULL,
  `bgColor` varchar(100) DEFAULT NULL,
  `tags` text,
  `content` text,
  `sorter` varchar(50) NOT NULL DEFAULT 'filename',
  PRIMARY KEY (`id`),
  KEY `parentID` (`parentID`)
) ENGINE=MyISAM AUTO_INCREMENT=724 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cat_list`
--

INSERT INTO `cat_list` (`id`, `name`, `subName`, `parentID`, `pageType`, `status`, `imgON`, `imgOFF`, `link`, `sortBy`, `slug`, `username`, `password`, `sectionID`, `contentType`, `projectName`, `metaKeywords`, `metaDesc`, `metaTitle`, `target`, `imgSize`, `tags`, `sorter`) VALUES
(717, 'HOME', '', 0, 'text', 'preview', '', '', '', NULL, 'home', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(718, 'ASSETS', '', 0, 'text', 'preview', '', '', '', NULL, 'assets', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(719, '', 'Header Logo', 718, 'grid', 'live', '', '', 'Add Link', NULL, 'assets-header-logo', NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(720, '', 'Social Links', 718, 'text', 'live', '', '', 'Add Link', NULL, 'assets-social-links', NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename');

-- --------------------------------------------------------

--
-- Table structure for table `cat_pics`
--

DROP TABLE IF EXISTS `cat_pics`;
CREATE TABLE IF NOT EXISTS `cat_pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) DEFAULT NULL,
  `picid` int(11) DEFAULT NULL,
  `rowBreak` varchar(5) DEFAULT NULL,
  `imgSize` varchar(50) DEFAULT NULL,
  `sortBy` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`picid`)
) ENGINE=MyISAM AUTO_INCREMENT=9133 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cat_videos`
--

DROP TABLE IF EXISTS `cat_videos`;
CREATE TABLE IF NOT EXISTS `cat_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `vidid` int(11) NOT NULL,
  `sortBy` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`vidid`)
) ENGINE=MyISAM AUTO_INCREMENT=1700 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catid` int(11) DEFAULT NULL,
  `picid` int(11) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `content` text,
  `content2` text,
  `content3` text,
  `vidid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `picID` (`picid`)
) ENGINE=MyISAM AUTO_INCREMENT=990 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
CREATE TABLE IF NOT EXISTS `ec_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `prodID` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sessionID` varchar(255) DEFAULT NULL,
  `optionStr` text,
  PRIMARY KEY (`id`),
  KEY `sessionID` (`sessionID`)
) ENGINE=MyISAM AUTO_INCREMENT=2697 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ec_cart`
--

INSERT INTO `ec_cart` (`id`, `dateModified`, `prodID`, `qty`, `sessionID`, `optionStr`) VALUES
(2694, '2014-02-28 04:22:53', 7737, 1, 'd5ab686b484d57f9094cb2e337425c48', ',540:7618'),
(2693, '2014-02-26 23:36:21', 7623, 1, 'e8530f4d785fe2e0ec0bd573dc813948', ',540:7618'),
(2692, '2014-02-26 23:35:53', 7623, 1, 'e8530f4d785fe2e0ec0bd573dc813948', ',540:7619'),
(2691, '2014-02-26 23:27:33', 7623, 1, 'd5ab686b484d57f9094cb2e337425c48', ',540:7618'),
(2696, '2014-02-28 07:09:38', 7731, 1, 'ff25b4aaa866674d122fd4874f5a4179', ',540:7618');

-- --------------------------------------------------------

--
-- Table structure for table `ec_coupons`
--

DROP TABLE IF EXISTS `ec_coupons`;
CREATE TABLE IF NOT EXISTS `ec_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `startDate` varchar(255) DEFAULT NULL,
  `endDate` varchar(255) DEFAULT NULL,
  `discount` decimal(11,2) DEFAULT NULL,
  `discountType` varchar(50) DEFAULT NULL,
  `uses` int(11) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `custType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
CREATE TABLE IF NOT EXISTS `ec_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastLogin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(50) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ship_fname` varchar(255) NOT NULL,
  `ship_lname` varchar(255) NOT NULL,
  `ship_address1` varchar(255) NOT NULL,
  `ship_address2` varchar(255) NOT NULL,
  `ship_city` varchar(255) NOT NULL,
  `ship_state` varchar(255) NOT NULL,
  `ship_zip` varchar(255) NOT NULL,
  `ship_country` varchar(255) NOT NULL,
  `marketing` varchar(10) NOT NULL,
  `active` varchar(5) NOT NULL DEFAULT 'yes',
  `resaleNumber` varchar(255) DEFAULT NULL,
  `taxID` varchar(255) DEFAULT NULL,
  `paymentType` varchar(50) NOT NULL DEFAULT 'CreditCard',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7913 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
CREATE TABLE IF NOT EXISTS `ec_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optionid` int(11) DEFAULT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `picid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `options` text,
  `sortBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=985 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
CREATE TABLE IF NOT EXISTS `ec_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customerID` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `shippingMethod` varchar(255) NOT NULL,
  `shippingCost` decimal(11,2) NOT NULL,
  `tax` decimal(11,2) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `transactionID` text,
  `paymentMethod` varchar(255) DEFAULT NULL,
  `shipfname` varchar(255) DEFAULT NULL,
  `shiplname` varchar(255) DEFAULT NULL,
  `shipaddress` varchar(255) DEFAULT NULL,
  `shipaddress2` varchar(255) DEFAULT NULL,
  `shipcity` varchar(255) DEFAULT NULL,
  `shipstate` varchar(255) DEFAULT NULL,
  `shipzip` varchar(50) DEFAULT NULL,
  `shipcountry` varchar(255) DEFAULT NULL,
  `billfname` varchar(255) DEFAULT NULL,
  `billlname` varchar(255) DEFAULT NULL,
  `billaddress` varchar(255) DEFAULT NULL,
  `billaddress2` varchar(255) DEFAULT NULL,
  `billcity` varchar(255) DEFAULT NULL,
  `billstate` varchar(255) DEFAULT NULL,
  `billzip` varchar(50) DEFAULT NULL,
  `billcountry` varchar(255) DEFAULT NULL,
  `discountCode` varchar(255) DEFAULT NULL,
  `discountAmount` decimal(11,2) DEFAULT NULL,
  `comments` text,
  `shipDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trackingNumber` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customerID` (`customerID`)
) ENGINE=MyISAM AUTO_INCREMENT=335 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders_products`
--

DROP TABLE IF EXISTS `ec_orders_products`;
CREATE TABLE IF NOT EXISTS `ec_orders_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) NOT NULL,
  `prodID` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `optionStr` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderID` (`orderID`,`prodID`)
) ENGINE=MyISAM AUTO_INCREMENT=462 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_history`
--

DROP TABLE IF EXISTS `ec_order_history`;
CREATE TABLE IF NOT EXISTS `ec_order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notified` varchar(5) DEFAULT NULL,
  `comments` text,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=664 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_status`
--

DROP TABLE IF EXISTS `ec_order_status`;
CREATE TABLE IF NOT EXISTS `ec_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ec_order_status`
--

INSERT INTO `ec_order_status` (`id`, `name`) VALUES
(5, 'Processing'),
(6, 'Shipped'),
(7, 'Cancelled'),
(8, 'Refunded');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_options`
--

DROP TABLE IF EXISTS `ec_product_options`;
CREATE TABLE IF NOT EXISTS `ec_product_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `optionsetid` int(11) DEFAULT NULL,
  `optionid` int(11) DEFAULT NULL,
  `sortBy` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `productid` (`productid`,`optionsetid`,`optionid`)
) ENGINE=MyISAM AUTO_INCREMENT=119273 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ec_product_options`
--

INSERT INTO `ec_product_options` (`id`, `productid`, `optionsetid`, `optionid`, `sortBy`) VALUES
(119229, 7615, 540, 7618, 100),
(119230, 7615, 540, 7619, 101),
(119231, 7614, 540, 7618, 100),
(119232, 7614, 540, 7619, 101),
(119239, 7620, 540, 7618, 100),
(119238, 7613, 540, 7619, 100),
(119240, 7620, 540, 7619, 101),
(119241, 7623, 540, 7618, 100),
(119242, 7623, 540, 7619, 101),
(119243, 7632, 540, 7618, 100),
(119244, 7632, 540, 7619, 101),
(119245, 7731, 540, 7618, 100),
(119246, 7731, 540, 7619, 101),
(119247, 7737, 540, 7618, 100),
(119248, 7737, 540, 7619, 101),
(119272, 7734, 540, 7619, 100);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_options_inventory`
--

DROP TABLE IF EXISTS `ec_product_options_inventory`;
CREATE TABLE IF NOT EXISTS `ec_product_options_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `setstr` varchar(255) NOT NULL,
  `optionstr` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `sortBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productid` (`productid`)
) ENGINE=MyISAM AUTO_INCREMENT=1994 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ec_product_options_inventory`
--

INSERT INTO `ec_product_options_inventory` (`id`, `productid`, `setstr`, `optionstr`, `qty`, `price`, `sortBy`) VALUES
(1978, 7615, '540', '7618', 5, '0.00', 0),
(1979, 7615, '540', '7619', 5, '0.00', 0),
(1980, 7614, '540', '7618', 0, '0.00', 0),
(1981, 7614, '540', '7619', 5, '25.00', 0),
(1983, 7620, '540', '7618', 5, '0.00', 0),
(1982, 7613, '540', '7619', 5, '0.00', 0),
(1984, 7620, '540', '7619', 5, '25.00', 0),
(1985, 7623, '540', '7618', 5, '0.00', 0),
(1986, 7623, '540', '7619', 6, '25.00', 0),
(1987, 7632, '540', '7618', 5, '0.00', 0),
(1988, 7632, '540', '7619', 5, '25.00', 0),
(1989, 7731, '540', '7618', 4, '0.00', 0),
(1990, 7731, '540', '7619', 5, '25.00', 0),
(1991, 7737, '540', '7618', 0, '0.00', 0),
(1992, 7737, '540', '7619', 0, '0.00', 0),
(1993, 7734, '540', '7619', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_wishlist`
--

DROP TABLE IF EXISTS `ec_wishlist`;
CREATE TABLE IF NOT EXISTS `ec_wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `prodID` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sessionID` varchar(255) DEFAULT NULL,
  `optionStr` text,
  PRIMARY KEY (`id`),
  KEY `sessionID` (`sessionID`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ec_wishlist`
--

INSERT INTO `ec_wishlist` (`id`, `dateModified`, `prodID`, `qty`, `sessionID`, `optionStr`) VALUES
(250, '2014-02-14 07:42:32', 7613, 1, 'a1a252d90032b21d06b77871a7f0f80a', ',540:7619'),
(251, '2014-02-17 19:53:47', 7615, 1, '03b6043667461c47ef711ecdc6bb970e', ',540:7618');

-- --------------------------------------------------------

--
-- Table structure for table `homeimage`
--

DROP TABLE IF EXISTS `homeimage`;
CREATE TABLE IF NOT EXISTS `homeimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `sortby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

DROP TABLE IF EXISTS `layouts`;
CREATE TABLE IF NOT EXISTS `layouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layout` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `ismod` varchar(5) NOT NULL DEFAULT 'no',
  `icon` text,
  `screenshot` varchar(255) DEFAULT NULL,
  `sortBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layouts`
--

INSERT INTO `layouts` (`id`, `layout`, `type`, `ismod`, `icon`) VALUES
(1, 'grid', 'manage_images.php', 'yes', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 600 600\"><title>CMS Icons</title><rect x=\"65.05\" y=\"65.05\" width=\"202.66\" height=\"202.66\" style=\"fill:#6d6d6d\"/><rect x=\"332.29\" y=\"65.05\" width=\"202.66\" height=\"202.66\" style=\"fill:#606060\"/><rect x=\"65.05\" y=\"332.29\" width=\"202.66\" height=\"202.66\" style=\"fill:#606060\"/><rect x=\"332.29\" y=\"332.29\" width=\"202.66\" height=\"202.66\" style=\"fill:#6d6d6d\"/></svg>'),
(2, 'slideshow', 'manage_images.php', 'yes', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 600 600\"><title>CMS Icons</title><rect x=\"119.13\" y=\"180.4\" width=\"361.75\" height=\"239.2\" style=\"fill:#606060\"/><path d=\"M566.09,296.18l-38-64a6.5,6.5,0,1,0-11.18,6.64L553.24,300l-36.33,61.18a6.5,6.5,0,0,0,11.18,6.64l38-64a8.64,8.64,0,0,0,0-7.64Z\" style=\"fill:#6d6d6d\"/><path d=\"M80.82,229.91a6.5,6.5,0,0,0-8.91,2.27l-38,64a8.64,8.64,0,0,0,0,7.64l38,64a6.5,6.5,0,1,0,11.18-6.64L46.76,300l36.33-61.18A6.5,6.5,0,0,0,80.82,229.91Z\" style=\"fill:#6d6d6d\"/><circle cx=\"184\" cy=\"468\" r=\"15\" style=\"fill:#6d6d6d\"/><circle cx=\"416\" cy=\"468\" r=\"15\" style=\"fill:#6d6d6d\"/><circle cx=\"358\" cy=\"468\" r=\"15\" style=\"fill:#6d6d6d\"/><circle cx=\"300\" cy=\"468\" r=\"15\" style=\"fill:#6d6d6d\"/><circle cx=\"242\" cy=\"468\" r=\"15\" style=\"fill:#6d6d6d\"/></svg>'),
(3, 'text', 'manage_text.php', 'no', ''),
(4, 'link', 'manage_link.php', 'no', ''),
(10, 'modules', 'manage_modules.php', 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lightbox`
--

DROP TABLE IF EXISTS `lightbox`;
CREATE TABLE IF NOT EXISTS `lightbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateAdded` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `picID` int(11) DEFAULT NULL,
  `sessionID` varchar(255) DEFAULT NULL,
  `sortBy` int(11) NOT NULL DEFAULT '0',
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3307 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catid` int(11) DEFAULT NULL,
  `picid` int(11) DEFAULT NULL,
  `content` text,
  `title` varchar(255) DEFAULT NULL,
  `showTitle` varchar(10) DEFAULT NULL,
  `sortBy` int(11) NOT NULL DEFAULT '0',
  `pageType` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'preview',
  `sorter` varchar(50) NOT NULL DEFAULT 'filename',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `picID` (`picid`)
) ENGINE=MyISAM AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modules_pics`
--

DROP TABLE IF EXISTS `module_pics`;
CREATE TABLE IF NOT EXISTS `module_pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modid` int(11) NOT NULL,
  `picid` int(11) NOT NULL,
  `sortBy` int(11) NOT NULL DEFAULT '0',
  `rowBreak` varchar(10) DEFAULT NULL,
  `imgSize` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modid` (`modid`),
  KEY `picid` (`picid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
COMMIT;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `value`) VALUES
(1, 'URL', 'http://yourlocalurl.com'),
(2, 'siteName', 'Client Name'),
(3, 'imagePath', '/images/pics/'),
(4, 'imageWidth', '900'),
(5, 'imageHeight', '900'),
(6, 'videoPath', '../videos/'),
(7, 'navType', 'text'),
(8, 'caption', 'yes'),
(9, 'picURL', 'yes'),
(10, 'title', 'yes'),
(11, 'shortDesc', 'yes'),
(12, 'imagePathFront', '/images/pics/'),
(13, 'price', 'yes'),
(14, 'address1', '125 W. 4th St'),
(15, 'address2', '#102'),
(16, 'city', 'Los Angeles'),
(17, 'state', 'CA'),
(18, 'zip', '90013'),
(19, 'company', 'Full Company Name'),
(20, 'country', 'US'),
(21, 'taxRate', '9.00'),
(22, 'phone', '(213) 626-2662'),
(23, 'adminLogo', ''),
(24, 'fax', '404.371.9338'),
(25, 'email', 'info@eastofwestern.com'),
(26, 'ecom', 'no'),
(27, 'physicalPath', '/home/118007/domains/dsreps.eowdev.com/html'),
(28, 'imagePathSave', '../images/pics/'),
(29, 'textEntries', 'no'),
(30, 'layouts', 'images - grid,images - scroll,images - slideshow,videos,text'),
(31, 'tags', 'no'),
(32, 'modules', 'no'),
(33, 'itemColor', 'no'),
(34, 'itemVideo', 'yes'),
(35, 'embedVideo', 'yes'),
(36, 'uploadVideo', 'yes'),
(37, 'itemPDF', 'no'),
(38, 'itemDetails2', 'no'),
(39, 'moduleText', 'no'),
(40, 'itemPoster', 'no'),
(41, 'loaderImg', 'data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==');

-- --------------------------------------------------------

--
-- Table structure for table `pics`
--

DROP TABLE IF EXISTS `pics`;
CREATE TABLE IF NOT EXISTS `pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `picid` int(11) DEFAULT NULL,
  `moduleid` int(11) DEFAULT NULL,
  `caption` text,
  `thumb` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `alt1` varchar(255) DEFAULT NULL,
  `alt2` varchar(255) DEFAULT NULL,
  `alt3` varchar(255) DEFAULT NULL,
  `sortBy` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `picURL` varchar(255) DEFAULT NULL,
  `shortDesc` text,
  `price` decimal(11,2) DEFAULT NULL,
  `wPrice` decimal(11,2) DEFAULT NULL,
  `salesPrice` decimal(11,0) DEFAULT NULL,
  `weight` decimal(11,2) NOT NULL DEFAULT '0.25',
  `posterImg` varchar(255) DEFAULT NULL,
  `tags` text,
  `slug` varchar(255) DEFAULT NULL,
  `customSlug` varchar(255) DEFAULT NULL,
  `imgType` varchar(10) DEFAULT NULL,
  `imgSize` varchar(10) DEFAULT NULL,
  `artistid` int(11) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `orientation` varchar(255) DEFAULT NULL,
  `posterWidth` varchar(255) DEFAULT NULL,
  `posterHeight` varchar(255) DEFAULT NULL,
  `posterOrientation` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `related` text,
  `relatedColors` text,
  `colorid` int(11) DEFAULT NULL,
  `hover` varchar(5) DEFAULT NULL,
  `ignoreQty` varchar(5) NOT NULL DEFAULT 'no',
  `soldOut` varchar(5) DEFAULT NULL,
  `featuredQty` int(11) DEFAULT NULL,
  `metaTitle` text,
  `metaDesc` text,
  `metaKeywords` text,
    `metaImage` varchar(255) DEFAULT NULL,
  `metaImageWidth` int(11) DEFAULT NULL,
  `metaImageHeight` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `lbCount` int(11) DEFAULT NULL,
  `bgColor` varchar(50) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `rowBreak` varchar(5) DEFAULT NULL,
  `sorter` varchar(50) NOT NULL DEFAULT 'filename',
  `imgSrc` varchar(50) NOT NULL DEFAULT 'upload',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `picid` (`picid`)
) ENGINE=MyISAM AUTO_INCREMENT=15160 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pics`
--

INSERT INTO `pics` (`id`, `catid`, `picid`, `moduleid`, `caption`, `thumb`, `img`, `alt1`, `alt2`, `alt3`, `sortBy`, `title`, `picURL`, `shortDesc`, `price`, `wPrice`, `salesPrice`, `weight`, `posterImg`, `tags`, `slug`, `customSlug`, `imgType`, `imgSize`, `artistid`, `width`, `height`, `orientation`, `posterWidth`, `posterHeight`, `posterOrientation`, `pdf`, `related`, `relatedColors`, `colorid`, `hover`, `ignoreQty`, `soldOut`, `featuredQty`, `metaTitle`, `metaDesc`, `metaKeywords`, `status`, `lbCount`, `bgColor`, `filename`, `rowBreak`, `sorter`, `imgSrc`) VALUES
(15155, 716, 0, 0, NULL, NULL, '716_qwQD7Z_tate1.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '469', '321', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tate1.jpg', NULL, 'filename', 'upload'),
(15156, 716, 0, 0, NULL, NULL, '716_iJ3Hi9_tate2.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '612', '612', 'square', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tate2.jpg', NULL, 'filename', 'upload'),
(15157, 716, 0, 0, 'caption:', NULL, '716_y9SwJu_tate1.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, '0.25', NULL, NULL, 'title', NULL, NULL, '', NULL, '469', '321', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tate1.jpg', '', 'filename', 'upload'),
(15158, 716, 0, 0, 'caption:', NULL, '716_3AlEga_tate2.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, '0.25', NULL, NULL, 'title', NULL, NULL, '', NULL, '612', '612', 'square', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tate2.jpg', '', 'filename', 'upload'),
(15159, 723, 0, 0, NULL, NULL, '723_GOI4q2_on-board-experiential-logopng.png', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '186', '70', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on-board-experiential-logo.png', NULL, 'filename', 'upload');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(150) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `sortBy` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tag_pics`
--

DROP TABLE IF EXISTS `tag_pics`;
CREATE TABLE IF NOT EXISTS `tag_pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL,
  `picid` int(11) NOT NULL,
  `sortBy` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=472 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `embed` text,
  `embedURL` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `sortBy` int(11) NOT NULL DEFAULT '0',
  `picid` int(11) DEFAULT NULL,
  `tags` text,
  `slug` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `hoverFile` varchar(255) DEFAULT NULL,
  `hoverWidth` int(11) DEFAULT NULL,
  `hoverHeight` int(11) DEFAULT NULL,
  `url_desktop` varchar(255) DEFAULT NULL,
  `url_mobile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `catid`, `caption`, `title`, `embed`, `embedURL`, `file`, `thumbnail`, `sortBy`, `picid`, `tags`, `slug`, `width`, `height`, `hoverFile`, `hoverWidth`, `hoverHeight`) VALUES
(118, 0, NULL, NULL, NULL, NULL, '9041_GUS 2_FOOTWEAR_PLUS_LOVE_002.mp4.mp4', NULL, 0, 9041, '', '', 640, 360, '', 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
