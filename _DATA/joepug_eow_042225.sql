-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: medicine.pdx1-mysql-a7-1a.dreamhost.com
-- Generation Time: Apr 22, 2025 at 02:16 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 8.1.2-1ubuntu2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joepug_eow`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `level`) VALUES
(15, 'admin', 'piI2vvDTp0fUrik', 'info@eastofwestern.com', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `base_country`
--

CREATE TABLE `base_country` (
  `id` int NOT NULL,
  `iso2` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso3` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_fr` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_de` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `cat_list` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subName` varchar(255) DEFAULT NULL,
  `parentID` int DEFAULT '0',
  `pageType` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `imgON` varchar(255) DEFAULT NULL,
  `imgOFF` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sortBy` int DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sectionID` int NOT NULL DEFAULT '0',
  `contentType` varchar(50) NOT NULL DEFAULT 'page',
  `projectName` text,
  `metaKeywords` text,
  `metaDesc` text,
  `metaTitle` text,
  `metaImage` varchar(255) DEFAULT NULL,
  `metaImageWidth` int DEFAULT NULL,
  `metaImageHeight` int DEFAULT NULL,
  `target` varchar(50) DEFAULT NULL,
  `imgSize` varchar(50) DEFAULT NULL,
  `bgColor` varchar(100) DEFAULT NULL,
  `tags` text,
  `content` text,
  `sorter` varchar(50) NOT NULL DEFAULT 'filename'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `cat_list`
--

INSERT INTO `cat_list` (`id`, `name`, `subName`, `parentID`, `pageType`, `status`, `imgON`, `imgOFF`, `link`, `sortBy`, `slug`, `username`, `password`, `sectionID`, `contentType`, `projectName`, `metaKeywords`, `metaDesc`, `metaTitle`, `metaImage`, `metaImageWidth`, `metaImageHeight`, `target`, `imgSize`, `bgColor`, `tags`, `content`, `sorter`) VALUES
(717, 'OVERVIEW - Columns', '', 0, 'grid - columns', 'preview', '', '', '', 1, 'overview---columns', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'white', NULL, NULL, 'drag'),
(718, 'ASSETS', '', 0, 'text', 'preview', '', '', '', 7, 'assets', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(719, '', 'Header Logo', 718, 'grid', 'live', '', '', 'Add Link', 1, 'assets-header-logo', NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(720, '', 'Social Links', 718, 'text', 'live', '', '', 'Add Link', 3, 'assets-social-links', NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(725, 'ARCHIVE', '', 0, 'archive', 'live', NULL, NULL, '', 4, 'archive', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(726, 'SERIES', '', 0, 'grid - series', 'live', NULL, NULL, '', 3, 'series', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(727, 'BIO', '', 0, 'text', 'live', NULL, NULL, '', 5, 'bio', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#f7da70', NULL, NULL, 'filename'),
(728, 'CONTACT', '', 0, 'text', 'live', NULL, NULL, '', 6, 'contact', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'black', NULL, NULL, 'filename'),
(752, '', 'Tom Brady | IWC Watches', 726, 'grid - archive', 'live', NULL, NULL, 'Add Link', 3, 'series-tom-brady--iwc-watches', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(730, '', 'All', 725, 'grid - archive', 'live', NULL, NULL, 'Add Link', 1, 'archive-all', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(731, '', 'Portraits', 725, 'grid - archive', 'live', NULL, NULL, 'Add Link', 3, 'archive-portraits', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(733, '', 'Studio', 725, 'grid - archive', 'live', NULL, NULL, 'Add Link', 5, 'archive-studio', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(736, '', 'Flow State | Personal', 726, 'grid', 'live', NULL, NULL, 'Add Link', 7, 'series-flow-state--personal', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(738, '', 'Test Page', 718, 'grid', 'preview', NULL, NULL, 'Add Link', 4, 'assets-test-page', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(739, 'PLAYGROUND', '', 0, 'grid - loose', 'preview', NULL, NULL, '', 2, 'playground', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(740, '', 'Footer Logo', 718, 'text', 'live', NULL, NULL, 'Add Link', 2, 'assets-footer-logo', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'black', NULL, NULL, 'filename'),
(741, '', 'Mark Ronson | Apple Music', 726, 'grid - series', 'live', NULL, NULL, 'Add Link', 4, 'series-mark-ronson--apple-music', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(742, '', 'Marathoners | Personal Work', 726, 'grid - series', 'preview', NULL, NULL, 'Add Link', 5, 'series-marathoners--personal-work', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(743, '', 'Natasha Lyonne | Entertainment Weekly', 726, 'grid - series', 'live', NULL, NULL, 'Add Link', 6, 'series-natasha-lyonne--entertainment-weekly', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(744, '', 'Colman Domingo | The Wrap', 726, 'grid - archive', 'live', NULL, NULL, 'Add Link', 2, 'series-colman-domingo--the-wrap', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(745, '', 'Muscle Beach | Personal Work', 726, 'grid - archive', 'live', NULL, NULL, 'Add Link', 8, 'series-muscle-beach--personal-work', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(746, '', 'Tim Cook | Wired Magazine', 726, 'grid - series', 'live', NULL, NULL, 'Add Link', 1, 'series-tim-cook--wired-magazine', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(753, 'OVERVIEW', '', 0, 'grid - loose', 'live', NULL, NULL, '', NULL, 'overview', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(747, '', 'Sports', 725, 'grid - archive', 'live', NULL, NULL, 'Add Link', 2, 'archive-sports', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(748, '', 'Groups', 725, 'grid - archive', 'live', NULL, NULL, 'Add Link', 4, 'archive-groups', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(749, '', 'Reportage', 725, 'grid - archive', 'live', NULL, NULL, 'Add Link', 6, 'archive-reportage', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(750, '', 'Key Art', 725, 'grid - archive', 'live', NULL, NULL, 'Add Link', 8, 'archive-key-art', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(751, '', 'Covers', 725, 'grid - archive', 'live', NULL, NULL, 'Add Link', 7, 'archive-covers', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename');

-- --------------------------------------------------------

--
-- Table structure for table `cat_pics`
--

CREATE TABLE `cat_pics` (
  `id` int NOT NULL,
  `catid` int DEFAULT NULL,
  `picid` int DEFAULT NULL,
  `rowBreak` varchar(5) DEFAULT NULL,
  `imgSize` varchar(50) DEFAULT NULL,
  `sortBy` int NOT NULL DEFAULT '0',
  `topMargin` varchar(50) DEFAULT NULL,
  `leftMargin` varchar(50) DEFAULT NULL,
  `colStart` varchar(5) DEFAULT NULL,
  `colEnd` varchar(5) DEFAULT NULL,
  `pos_top` int DEFAULT NULL,
  `pos_left` int DEFAULT NULL,
  `width` decimal(11,2) DEFAULT NULL,
  `layer` int DEFAULT NULL,
  `pos_top_mobile` int DEFAULT NULL,
  `pos_left_mobile` int DEFAULT NULL,
  `width_mobile` decimal(11,2) DEFAULT NULL,
  `layer_mobile` int DEFAULT NULL,
  `vo_desktop` int DEFAULT '0',
  `vo_mobile` int DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_pics`
--

INSERT INTO `cat_pics` (`id`, `catid`, `picid`, `rowBreak`, `imgSize`, `sortBy`, `topMargin`, `leftMargin`, `colStart`, `colEnd`, `pos_top`, `pos_left`, `width`, `layer`, `pos_top_mobile`, `pos_left_mobile`, `width_mobile`, `layer_mobile`, `vo_desktop`, `vo_mobile`) VALUES
(9147, 734, 15174, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9145, 734, 15172, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9137, 717, 15164, '', '', 5, '20', '', '7', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9138, 717, 15165, '', '', 4, '', '', '2', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9139, 717, 15166, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9140, 717, 15167, '', '', 2, '45', '-10', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9485, 717, 15431, '', '', 3, '', '', '10', '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9142, 717, 15169, '', '', 1, '', '', '1', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9146, 734, 15173, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9144, 734, 15171, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9148, 734, 15175, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9149, 735, 15176, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9150, 735, 15177, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9151, 735, 15178, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9152, 735, 15179, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9153, 735, 15180, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9154, 735, 15181, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9237, 726, 15201, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9238, 726, 15202, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9239, 726, 15203, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9329, 730, 15293, '', '', 17, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9328, 730, 15292, '', '', 16, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9327, 730, 15291, '', '', 15, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9324, 730, 15288, '', '', 13, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9325, 730, 15289, '', '', 12, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9326, 730, 15290, '', '', 14, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9322, 730, 15286, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9319, 730, 15283, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9320, 730, 15284, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9321, 730, 15285, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9181, 738, 15182, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9182, 717, 15183, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9183, 717, 15184, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9184, 717, 15185, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9185, 717, 15186, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9186, 717, 15187, '', '', 13, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9187, 717, 15188, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9188, 717, 15189, '', '', 12, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9191, 731, 15170, '', '', 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9190, 717, 15191, '', '', 14, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9222, 739, 15183, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9219, 739, 15165, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9220, 739, 15164, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9221, 739, 15166, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9216, 739, 15170, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9215, 739, 15169, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9217, 739, 15168, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9218, 739, 15167, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9223, 739, 15184, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9224, 739, 15186, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9225, 739, 15185, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9226, 739, 15188, '', '', 12, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9227, 739, 15189, '', '', 13, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9228, 739, 15187, '', '', 14, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9229, 739, 15191, '', '', 15, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9446, 736, 15396, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9444, 736, 15394, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9244, 726, 15208, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9243, 726, 15207, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9241, 726, 15205, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9242, 726, 15206, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9245, 726, 15209, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9246, 726, 15210, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9247, 726, 15211, '', '', 12, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9248, 726, 15212, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9249, 726, 15213, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9250, 726, 15214, '', '', 13, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9251, 742, 15215, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9252, 742, 15216, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9254, 742, 15218, '', '', 18, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9256, 742, 15220, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9257, 742, 15221, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9258, 742, 15222, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9259, 742, 15223, '', '', 21, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9260, 742, 15224, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9263, 742, 15227, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9265, 742, 15229, '', '', 17, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9267, 742, 15231, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9268, 742, 15232, '', '', 19, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9271, 742, 15235, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9272, 742, 15236, '', '', 20, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9275, 742, 15239, '', '', 15, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9277, 742, 15241, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9278, 742, 15242, '', '', 13, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9280, 742, 15244, '', '', 12, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9281, 742, 15245, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9282, 742, 15246, '', '', 14, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9283, 743, 15247, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9284, 743, 15248, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9285, 743, 15249, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9286, 743, 15250, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9287, 743, 15251, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9288, 743, 15252, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9290, 743, 15254, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9477, 752, 15423, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9292, 744, 15256, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9293, 744, 15257, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9294, 744, 15258, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9475, 752, 15421, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9476, 752, 15422, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9298, 744, 15262, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9299, 744, 15263, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9300, 744, 15264, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9301, 744, 15265, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9303, 744, 15267, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9304, 744, 15268, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9305, 744, 15269, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9306, 745, 15270, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9307, 745, 15271, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9308, 745, 15272, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9309, 745, 15273, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9310, 745, 15274, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9311, 745, 15275, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9313, 745, 15277, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9315, 745, 15279, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9317, 745, 15281, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9318, 745, 15282, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9330, 730, 15294, '', '', 18, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9331, 730, 15295, '', '', 19, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9332, 730, 15296, '', '', 20, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9333, 730, 15297, '', '', 21, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9334, 730, 15298, '', '', 22, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9335, 730, 15299, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9336, 730, 15300, '', '', 23, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9337, 730, 15301, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9338, 730, 15302, '', '', 24, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9339, 730, 15303, '', '', 25, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9340, 730, 15304, '', '', 26, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9341, 730, 15305, '', '', 27, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9342, 730, 15306, '', '', 28, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9343, 730, 15307, '', '', 29, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9344, 730, 15308, '', '', 30, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9345, 730, 15309, '', '', 31, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9346, 730, 15310, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9347, 730, 15311, '', '', 32, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9348, 730, 15312, '', '', 33, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9349, 730, 15313, '', '', 34, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9350, 730, 15314, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9351, 730, 15315, '', '', 35, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9352, 730, 15316, '', '', 36, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9353, 730, 15317, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9354, 730, 15318, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9355, 730, 15319, '', '', 37, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9357, 730, 15321, '', '', 38, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9358, 730, 15322, '', '', 39, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9359, 730, 15323, '', '', 40, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9360, 730, 15324, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9363, 730, 15327, '', '', 41, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9554, 750, 15379, '', '', 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9366, 730, 15330, '', '', 42, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9367, 730, 15331, '', '', 44, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9368, 730, 15332, '', '', 45, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9369, 730, 15333, '', '', 46, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9370, 730, 15334, '', '', 47, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9371, 730, 15335, '', '', 43, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9372, 730, 15336, '', '', 48, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9373, 730, 15337, '', '', 49, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9374, 730, 15338, '', '', 50, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9375, 730, 15339, '', '', 51, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9376, 730, 15340, '', '', 52, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9377, 730, 15341, '', '', 53, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9378, 730, 15342, '', '', 54, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9379, 730, 15343, '', '', 55, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9380, 730, 15344, '', '', 56, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9381, 730, 15345, '', '', 57, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9382, 730, 15346, '', '', 58, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9383, 730, 15347, '', '', 59, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9384, 730, 15348, '', '', 60, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9385, 730, 15349, '', '', 61, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9386, 730, 15350, '', '', 62, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9387, 730, 15351, '', '', 63, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9388, 730, 15352, '', '', 64, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9389, 730, 15353, '', '', 65, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9390, 730, 15354, '', '', 66, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9391, 730, 15355, '', '', 67, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9392, 730, 15356, '', '', 68, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9393, 730, 15357, '', '', 69, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9394, 730, 15358, '', '', 70, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9395, 730, 15359, '', '', 71, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9396, 730, 15360, '', '', 72, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9397, 730, 15361, '', '', 73, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9398, 730, 15362, '', '', 75, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9399, 730, 15363, '', '', 74, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9400, 730, 15364, '', '', 76, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9401, 730, 15365, '', '', 77, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9402, 730, 15366, '', '', 78, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9403, 730, 15367, '', '', 79, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9404, 730, 15368, '', '', 80, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9405, 730, 15369, '', '', 81, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9406, 730, 15370, '', '', 82, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9407, 730, 15371, '', '', 83, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9408, 730, 15372, '', '', 84, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9409, 730, 15373, '', '', 85, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9410, 730, 15374, '', '', 86, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9411, 730, 15375, '', '', 87, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9412, 730, 15376, '', '', 88, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9414, 730, 15378, '', '', 89, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9555, 750, 15380, '', '', 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9556, 750, 15381, '', '', 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9557, 750, 15382, '', '', 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9558, 750, 15389, '', '', 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9559, 750, 15390, '', '', 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9421, 730, 15385, '', '', 90, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9423, 730, 15387, '', '', 91, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9424, 730, 15388, '', '', 92, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9560, 750, 15391, '', '', 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9561, 750, 15393, '', '', 0, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9428, 730, 15392, '', '', 93, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9431, 741, 15212, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9432, 741, 15209, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9433, 741, 15203, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9435, 741, 15205, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9436, 741, 15207, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9437, 741, 15202, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9438, 741, 15210, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9439, 741, 15208, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9441, 741, 15211, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9442, 741, 15206, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9449, 736, 15399, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9450, 736, 15400, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9452, 736, 15402, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9455, 736, 15405, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9456, 736, 15406, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9459, 736, 15409, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9460, 736, 15410, '', '', 12, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9461, 736, 15411, '', '', 13, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9462, 736, 15412, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9463, 736, 15413, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9464, 736, 15414, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9465, 746, 15415, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9466, 746, 15416, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9467, 746, 15417, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9468, 746, 15418, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9469, 746, 15419, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9474, 752, 15420, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9478, 752, 15424, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9479, 752, 15425, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9480, 752, 15426, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9481, 752, 15427, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9482, 752, 15428, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9483, 752, 15429, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9484, 752, 15430, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9486, 717, 15432, '', '', 15, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9545, 753, 15191, '', '', 14, '', '', '', '', 155, 40, 29.46, 1, 141, 10, 20.00, 1, 8, 0),
(9546, 753, 15432, '', '', 15, '', '', '', '', 163, 2, 26.37, 1, 169, 20, 28.69, 1, 9, 0),
(9541, 753, 15185, '', '', 10, '', '', '', '', 177, 68, 25.00, 0, 136, 53, 39.40, 1, 10, 0),
(9542, 753, 15188, '', '', 11, '', '', '', '', 230, -1, 36.47, 1, NULL, NULL, NULL, NULL, 12, 0),
(9544, 753, 15187, '', '', 13, '', '', '', '', 69, 38, 28.16, 1, NULL, NULL, NULL, NULL, 4, 0),
(9539, 753, 15184, '', '', 8, '', '', '', '', 46, 11, 33.04, 4, NULL, NULL, NULL, NULL, 2, 0),
(9540, 753, 15186, '', '', 9, '', '', '', '', 202, 14, 33.09, 1, NULL, NULL, NULL, NULL, 11, 0),
(9532, 753, 15169, '', '', 1, '', '', '', '', 52, 68, 29.06, 1, NULL, NULL, NULL, NULL, 3, 0),
(9535, 753, 15165, '', '', 4, '', '', '', '', 88, -1, 40.79, 1, 87, 4, 34.82, 1, 5, 0),
(9536, 753, 15164, '', '', 5, '', '', '', '', 101, 72, 22.60, 1, NULL, NULL, NULL, NULL, 6, 0),
(9572, 753, 15450, '', '', 0, '', '', '', '', 1, 59, 35.30, 1, NULL, NULL, NULL, NULL, 0, 0),
(9538, 753, 15183, '', '', 7, '', '', '', '', 115, 47, 25.70, 2, 123, 35, 20.00, 2, 7, 0),
(9569, 739, 15447, NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, 48, 16.17, 1, NULL, NULL, NULL, NULL, 0, 0),
(9570, 739, 15448, NULL, NULL, 0, NULL, NULL, NULL, NULL, 9, 9, 40.88, 1, NULL, NULL, NULL, NULL, 0, 0),
(9571, 739, 15449, NULL, NULL, 0, NULL, NULL, NULL, NULL, 18, 56, 20.00, 2, NULL, NULL, NULL, NULL, 0, 0),
(9573, 753, 15451, '', '', 0, '', '', '', '', 5, 1, 48.99, 1, NULL, NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cat_videos`
--

CREATE TABLE `cat_videos` (
  `id` int NOT NULL,
  `catid` int NOT NULL,
  `vidid` int NOT NULL,
  `sortBy` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int NOT NULL,
  `catid` int DEFAULT NULL,
  `picid` int DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `content` text,
  `content2` text,
  `content3` text,
  `vidid` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `catid`, `picid`, `page`, `content`, `content2`, `content3`, `vidid`) VALUES
(990, 727, NULL, NULL, '<h3>BIOGRAPHY</h3>\n<p>Joe Pugliese is a native of California and has plied his craft across multiple photographic disciplines before settling on his true love, which is photographing people. He has had the privilege to meet and photograph scientists, authors, performers of every type, creative geniuses, and everyday people who have something fascinating to say. He lives in Los Angeles and travels extensively.</p>\n<p>Lorem ipsum odor amet, consectetuer adipiscing elit. Sodales lacinia interdum aenean elit semper ad vel lobortis habitant! Rutrum nam vivamus molestie eros ornare lacus sagittis eleifend auctor. Integer dolor aptent nostra potenti, urna augue habitant. Odio euismod semper pellentesque nunc tempor. Cubilia dolor etiam suscipit dictum Leo nunc.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h3>AWARD / HONORS</h3>\n<table style=\"border-collapse: collapse; width: 100%; height: 251px;\" border=\"1\"><colgroup><col style=\"width: 18.0628%;\"><col style=\"width: 81.9372%;\"></colgroup>\n<tbody>\n<tr style=\"height: 22.8125px;\">\n<td>2018</td>\n<td>APA National Photo Contest \"Best of Show\"</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2013 - 2019</td>\n<td>Communication Arts Photo Annual</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2019</td>\n<td>Photo District News Photo Annual: Editorial Portrait</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2018</td>\n<td>Photo District News Photo Annual: Editorial Portrait</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2017</td>\n<td>Photo District News Photo Annual: Editorial Portrait, Website, Self-Promotion</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2014 - 2024</td>\n<td>Instructor, Santa Fe Photographic Workshop</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2017</td>\n<td>\"The Editorial Portrait\"</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2017</td>\n<td>American Photography 16, 17, 18, 19</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2014</td>\n<td>LensCulture Portrait Awards Finalist</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2016</td>\n<td>International Photo Awards First Place Portrait</td>\n</tr>\n<tr style=\"height: 22.875px;\">\n<td>2014</td>\n<td>PDN Featured Photographer</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>', '<h3>SELECT CLIENTS</h3>\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"><colgroup><col style=\"width: 49.9346%;\"><col style=\"width: 49.9346%;\"></colgroup>\n<tbody>\n<tr>\n<td>\n<ul>\n<li>Paramount Plus</li>\n<li>Wired</li>\n<li>HBO</li>\n<li>Time Magazine</li>\n<li>Netflix</li>\n<li>Apple</li>\n<li>BBDO</li>\n<li>Amazon Studios</li>\n<li>Hulu</li>\n<li>Men\'s Journal</li>\n<li>Paypal</li>\n<li>Billboard</li>\n<li>ESPN</li>\n<li>TBWA CHIAT DAY</li>\n<li>Harpo Productions</li>\n</ul>\n</td>\n<td>\n<ul>\n<li>Apple TV+</li>\n<li>Town &amp; Country</li>\n<li>Esquire</li>\n<li>NBC Universal</li>\n<li>American Express</li>\n<li>Outside Magazine</li>\n<li>The New Yorker</li>\n<li>Oglivy &amp; Mather</li>\n<li>The Hollywood Reporter</li>\n<li>Bloomberg</li>\n<li>Rivian</li>\n<li>Warner Brothers</li>\n<li>Sony Television</li>\n<li>GQ Magazine</li>\n<li>London Sunday Times</li>\n<li>Los Angeles Times</li>\n</ul>\n</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>', NULL, NULL),
(991, 728, NULL, NULL, '<table style=\"border-collapse: collapse; width: 100%; height: 343.438px;\" border=\"1\"><colgroup><col style=\"width: 33.3333%;\"><col style=\"width: 33.3333%;\"><col style=\"width: 33.3333%;\"></colgroup>\n<tbody>\n<tr style=\"height: 61.4375px;\">\n<td>\n<h3>STUDIO</h3>\n</td>\n<td>\n<h3>BOOKINGS</h3>\n</td>\n<td>\n<h3>IMAGE USE</h3>\n</td>\n</tr>\n<tr style=\"height: 261px;\">\n<td>\n<h3>LOS ANGELES</h3>\n<p>Joe Pugliese<br>6311 Romaine Street<br>Suite No. 7307<br>Los Angeles, CA<br>90038</p>\n<h3>GENERAL INQUIRIES</h3>\n<p><a href=\"mailto:studio@joepug.com\">studio@joepug.com</a></p>\n</td>\n<td>\n<p><em>Represented by:<br></em><strong><a href=\"https://www.ba-reps.com/\" target=\"_blank\" rel=\"noopener\">B</a><a href=\"https://www.ba-reps.com/\" target=\"_blank\" rel=\"noopener\">&amp;A Reps</a></strong></p>\n<h3>NYC / WORLDWIDE</h3>\n<p>EhrinFeeley<br><a href=\"mailto:ehrin@ba-reps.com\">ehrin@ba-reps.com</a><br>tel: +1 917587 8286</p>\n<h3>UK/EUROPE</h3>\n<p>Beth Wightman<br><a href=\"mailto:beth@ba-reps.com\">beth@ba-reps.com</a><br>tel: +44 7876747296</p>\n</td>\n<td>\n<p><em>Represented by:<br></em><strong><a href=\"https://www.augustimage.com/\" target=\"_blank\" rel=\"noopener\">August</a></strong></p>\n<p><span style=\"color: #000000;\"><a style=\"color: #000000;\" title=\"Joe Pugliese Photographs\" href=\"mailto:info@augustimage.com\">info@augustimage.com</a></span><br>tel: +1 212 777 0088</p>\n</td>\n</tr>\n<tr style=\"height: 21px;\">\n<td>\n<p><strong><a href=\"https://www.instagram.com/joepug/\" target=\"_blank\" rel=\"noopener\">INSTAGRAM</a></strong>&nbsp; @joepug</p>\n<p><strong><a href=\"https://www.linkedin.com/in/joepug\" target=\"_blank\" rel=\"noopener\">LINKEDIN&nbsp;</a></strong></p>\n</td>\n<td>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n</td>\n<td>\n<p><em>All Images</em>&nbsp; &copy; Joe Pugliese</p>\n</td>\n</tr>\n</tbody>\n</table>', '', NULL, NULL),
(992, 740, NULL, NULL, '', '', NULL, NULL),
(993, 717, NULL, NULL, '', '', NULL, NULL),
(994, NULL, 15416, NULL, '', '', NULL, NULL),
(995, NULL, 15426, NULL, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `id` int NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `prodID` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `sessionID` varchar(255) DEFAULT NULL,
  `optionStr` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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

CREATE TABLE `ec_coupons` (
  `id` int NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `startDate` varchar(255) DEFAULT NULL,
  `endDate` varchar(255) DEFAULT NULL,
  `discount` decimal(11,2) DEFAULT NULL,
  `discountType` varchar(50) DEFAULT NULL,
  `uses` int NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `custType` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` int NOT NULL,
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
  `paymentType` varchar(50) NOT NULL DEFAULT 'CreditCard'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ec_options`
--

CREATE TABLE `ec_options` (
  `id` int NOT NULL,
  `optionid` int DEFAULT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `picid` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `options` text,
  `sortBy` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` int NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customerID` int NOT NULL,
  `status` int NOT NULL,
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
  `trackingNumber` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders_products`
--

CREATE TABLE `ec_orders_products` (
  `id` int NOT NULL,
  `orderID` int NOT NULL,
  `prodID` int NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `optionStr` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_history`
--

CREATE TABLE `ec_order_history` (
  `id` int NOT NULL,
  `orderID` int NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notified` varchar(5) DEFAULT NULL,
  `comments` text,
  `status` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_status`
--

CREATE TABLE `ec_order_status` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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

CREATE TABLE `ec_product_options` (
  `id` int NOT NULL,
  `productid` int DEFAULT NULL,
  `optionsetid` int DEFAULT NULL,
  `optionid` int DEFAULT NULL,
  `sortBy` int DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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

CREATE TABLE `ec_product_options_inventory` (
  `id` int NOT NULL,
  `productid` int NOT NULL,
  `setstr` varchar(255) NOT NULL,
  `optionstr` varchar(255) NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `sortBy` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ec_product_options_inventory`
--

INSERT INTO `ec_product_options_inventory` (`id`, `productid`, `setstr`, `optionstr`, `qty`, `price`, `sortBy`) VALUES
(1978, 7615, '540', '7618', 5, 0.00, 0),
(1979, 7615, '540', '7619', 5, 0.00, 0),
(1980, 7614, '540', '7618', 0, 0.00, 0),
(1981, 7614, '540', '7619', 5, 25.00, 0),
(1983, 7620, '540', '7618', 5, 0.00, 0),
(1982, 7613, '540', '7619', 5, 0.00, 0),
(1984, 7620, '540', '7619', 5, 25.00, 0),
(1985, 7623, '540', '7618', 5, 0.00, 0),
(1986, 7623, '540', '7619', 6, 25.00, 0),
(1987, 7632, '540', '7618', 5, 0.00, 0),
(1988, 7632, '540', '7619', 5, 25.00, 0),
(1989, 7731, '540', '7618', 4, 0.00, 0),
(1990, 7731, '540', '7619', 5, 25.00, 0),
(1991, 7737, '540', '7618', 0, 0.00, 0),
(1992, 7737, '540', '7619', 0, 0.00, 0),
(1993, 7734, '540', '7619', 0, 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_wishlist`
--

CREATE TABLE `ec_wishlist` (
  `id` int NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `prodID` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `sessionID` varchar(255) DEFAULT NULL,
  `optionStr` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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

CREATE TABLE `homeimage` (
  `id` int NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `sortby` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

CREATE TABLE `layouts` (
  `id` int NOT NULL,
  `layout` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `ismod` varchar(5) NOT NULL DEFAULT 'no',
  `icon` text,
  `screenshot` varchar(255) DEFAULT NULL,
  `sortBy` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `layouts`
--

INSERT INTO `layouts` (`id`, `layout`, `type`, `ismod`, `icon`, `screenshot`, `sortBy`) VALUES
(1, 'grid', 'manage_images.php', 'yes', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 600 600\"><title>CMS Icons</title><rect x=\"65.05\" y=\"65.05\" width=\"202.66\" height=\"202.66\" style=\"fill:#6d6d6d\"/><rect x=\"332.29\" y=\"65.05\" width=\"202.66\" height=\"202.66\" style=\"fill:#606060\"/><rect x=\"65.05\" y=\"332.29\" width=\"202.66\" height=\"202.66\" style=\"fill:#606060\"/><rect x=\"332.29\" y=\"332.29\" width=\"202.66\" height=\"202.66\" style=\"fill:#6d6d6d\"/></svg>', NULL, NULL),
(2, 'slideshow', 'manage_images.php', 'yes', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 600 600\"><title>CMS Icons</title><rect x=\"119.13\" y=\"180.4\" width=\"361.75\" height=\"239.2\" style=\"fill:#606060\"/><path d=\"M566.09,296.18l-38-64a6.5,6.5,0,1,0-11.18,6.64L553.24,300l-36.33,61.18a6.5,6.5,0,0,0,11.18,6.64l38-64a8.64,8.64,0,0,0,0-7.64Z\" style=\"fill:#6d6d6d\"/><path d=\"M80.82,229.91a6.5,6.5,0,0,0-8.91,2.27l-38,64a8.64,8.64,0,0,0,0,7.64l38,64a6.5,6.5,0,1,0,11.18-6.64L46.76,300l36.33-61.18A6.5,6.5,0,0,0,80.82,229.91Z\" style=\"fill:#6d6d6d\"/><circle cx=\"184\" cy=\"468\" r=\"15\" style=\"fill:#6d6d6d\"/><circle cx=\"416\" cy=\"468\" r=\"15\" style=\"fill:#6d6d6d\"/><circle cx=\"358\" cy=\"468\" r=\"15\" style=\"fill:#6d6d6d\"/><circle cx=\"300\" cy=\"468\" r=\"15\" style=\"fill:#6d6d6d\"/><circle cx=\"242\" cy=\"468\" r=\"15\" style=\"fill:#6d6d6d\"/></svg>', NULL, NULL),
(3, 'text', 'manage_text.php', 'no', '', NULL, NULL),
(4, 'link', 'manage_link.php', 'no', '', NULL, NULL),
(10, 'modules', 'manage_modules.php', 'no', NULL, NULL, NULL),
(11, 'grid - columns', 'manage_images.php', 'no', '', NULL, NULL),
(12, 'grid - series', 'manage_images.php', 'no', '', NULL, NULL),
(13, 'grid - archive', 'manage_images.php', 'no', '', NULL, NULL),
(14, 'archive', 'manage_text.php', 'no', '', NULL, NULL),
(15, 'grid - loose', 'manage_loose.php', 'no', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lightbox`
--

CREATE TABLE `lightbox` (
  `id` int NOT NULL,
  `dateAdded` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `picID` int DEFAULT NULL,
  `sessionID` varchar(255) DEFAULT NULL,
  `sortBy` int NOT NULL DEFAULT '0',
  `url` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `filename` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int NOT NULL,
  `catid` int DEFAULT NULL,
  `picid` int DEFAULT NULL,
  `content` text,
  `title` varchar(255) DEFAULT NULL,
  `showTitle` varchar(10) DEFAULT NULL,
  `sortBy` int NOT NULL DEFAULT '0',
  `pageType` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'preview',
  `sorter` varchar(50) NOT NULL DEFAULT 'filename'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `module_pics`
--

CREATE TABLE `module_pics` (
  `id` int NOT NULL,
  `modid` int NOT NULL,
  `picid` int NOT NULL,
  `sortBy` int NOT NULL DEFAULT '0',
  `rowBreak` varchar(10) DEFAULT NULL,
  `imgSize` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `value`) VALUES
(1, 'URL', 'https://joepug.eowdev.com'),
(2, 'siteName', 'Joe Pug'),
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
(19, 'company', 'Joe Pug'),
(20, 'country', 'US'),
(21, 'taxRate', '9.00'),
(22, 'phone', '(213) 626-2662'),
(23, 'adminLogo', ''),
(24, 'fax', '404.371.9338'),
(25, 'email', 'info@eastofwestern.com'),
(26, 'ecom', 'no'),
(27, 'physicalPath', '/home/dh_6xz7ms/joepug.eowdev.com/images/pics/'),
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

CREATE TABLE `pics` (
  `id` int NOT NULL,
  `catid` int NOT NULL DEFAULT '0',
  `picid` int DEFAULT NULL,
  `moduleid` int DEFAULT NULL,
  `caption` text,
  `thumb` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `alt1` varchar(255) DEFAULT NULL,
  `alt2` varchar(255) DEFAULT NULL,
  `alt3` varchar(255) DEFAULT NULL,
  `sortBy` int DEFAULT NULL,
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
  `artistid` int DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `orientation` varchar(255) DEFAULT NULL,
  `aspectRatio` decimal(11,4) DEFAULT NULL,
  `posterWidth` varchar(255) DEFAULT NULL,
  `posterHeight` varchar(255) DEFAULT NULL,
  `posterOrientation` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `related` text,
  `relatedColors` text,
  `colorid` int DEFAULT NULL,
  `hover` varchar(5) DEFAULT NULL,
  `ignoreQty` varchar(5) NOT NULL DEFAULT 'no',
  `soldOut` varchar(5) DEFAULT NULL,
  `featuredQty` int DEFAULT NULL,
  `metaTitle` text,
  `metaDesc` text,
  `metaKeywords` text,
  `metaImage` varchar(255) DEFAULT NULL,
  `metaImageWidth` int DEFAULT NULL,
  `metaImageHeight` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `lbCount` int DEFAULT NULL,
  `bgColor` varchar(50) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `rowBreak` varchar(5) DEFAULT NULL,
  `sorter` varchar(50) NOT NULL DEFAULT 'filename',
  `imgSrc` varchar(50) NOT NULL DEFAULT 'upload'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pics`
--

INSERT INTO `pics` (`id`, `catid`, `picid`, `moduleid`, `caption`, `thumb`, `img`, `alt1`, `alt2`, `alt3`, `sortBy`, `title`, `picURL`, `shortDesc`, `price`, `wPrice`, `salesPrice`, `weight`, `posterImg`, `tags`, `slug`, `customSlug`, `imgType`, `imgSize`, `artistid`, `width`, `height`, `orientation`, `aspectRatio`, `posterWidth`, `posterHeight`, `posterOrientation`, `pdf`, `related`, `relatedColors`, `colorid`, `hover`, `ignoreQty`, `soldOut`, `featuredQty`, `metaTitle`, `metaDesc`, `metaKeywords`, `metaImage`, `metaImageWidth`, `metaImageHeight`, `status`, `lbCount`, `bgColor`, `filename`, `rowBreak`, `sorter`, `imgSrc`) VALUES
(15155, 716, 0, 0, NULL, NULL, '716_qwQD7Z_tate1.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '469', '321', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tate1.jpg', NULL, 'filename', 'upload'),
(15156, 716, 0, 0, NULL, NULL, '716_iJ3Hi9_tate2.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '612', '612', 'square', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tate2.jpg', NULL, 'filename', 'upload'),
(15157, 716, 0, 0, 'caption:', NULL, '716_y9SwJu_tate1.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '469', '321', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tate1.jpg', '', 'filename', 'upload'),
(15158, 716, 0, 0, 'caption:', NULL, '716_3AlEga_tate2.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '612', '612', 'square', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tate2.jpg', '', 'filename', 'upload'),
(15159, 723, 0, 0, NULL, NULL, '723_GOI4q2_on-board-experiential-logopng.png', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '186', '70', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on-board-experiential-logo.png', NULL, 'filename', 'upload'),
(15160, 717, 0, 0, 'caption:', NULL, '717_awQsJw_image-63.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1255', '1859', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 63.jpg', '', 'filename', 'upload'),
(15161, 717, 0, 0, 'caption:', NULL, '717_RIejp8_image-62.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1256', '1859', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 62.jpg', '', 'filename', 'upload'),
(15162, 717, 0, 0, 'caption:', NULL, '717_OFH88h_screenshot-2024-08-27-at-122642-pm.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1240', '2206', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Screenshot 2024-08-27 at 12.26.42 PM.jpg', '', 'filename', 'upload'),
(15163, 717, 0, 0, 'caption:', NULL, '717_AIw8fb_screenshot-2024-08-27-at-13506-pm.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1258', '2204', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Screenshot 2024-08-27 at 1.35.06 PM.jpg', '', 'filename', 'upload'),
(15164, 717, 0, 0, 'caption:', NULL, '717_tC4yUT_image-10.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '530', '706', 'portrait', 0.7507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 10.jpg', '', 'filename', 'upload'),
(15165, 717, 0, 0, 'caption:', NULL, '717_yrhWRg_image-8.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '812', '1083', 'portrait', 0.7498, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 8.jpg', '', 'filename', 'upload'),
(15166, 717, 0, 0, 'caption:', NULL, '717_FzlDPZ_image-3.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1378', '918', 'landscape', 1.5011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 3.jpg', '', 'filename', 'upload'),
(15167, 717, 0, 0, 'caption:', NULL, '717_VRIYec_oprah.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '603', '804', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'oprah.jpg', '', 'filename', 'upload'),
(15168, 717, 0, 0, 'caption:', NULL, '717_K0kYmu_john_legend.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '278', '371', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'john_legend.jpg', '', 'filename', 'upload'),
(15169, 717, 0, 0, 'caption:', NULL, '717_pbbR6a_pamela.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '603', '813', 'portrait', 0.7417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pamela.jpg', '', 'filename', 'upload'),
(15170, 717, 0, 0, 'caption:', NULL, '717_Cc6RNi_seth_rogan.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '603', '804', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'seth_rogan.jpg', '', 'filename', 'upload'),
(15171, 734, 0, 0, 'caption:', NULL, '734_LQuEdA_image-28.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '539', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 28.jpg', '', 'filename', 'upload'),
(15172, 734, 0, 0, 'caption:', NULL, '734_hcr2jo_image-30.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '538', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 30.jpg', '', 'filename', 'upload'),
(15173, 734, 0, 0, 'caption:', NULL, '734_S0HX1J_image-32.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '539', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 32.jpg', '', 'filename', 'upload'),
(15174, 734, 0, 0, 'caption:', NULL, '734_0NDOJe_image-29.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '538', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 29.jpg', '', 'filename', 'upload'),
(15175, 734, 0, 0, 'caption:', NULL, '734_qikboB_image-31.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '538', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 31.jpg', '', 'filename', 'upload'),
(15176, 735, 0, 0, 'caption:', NULL, '735_2Zz1T2_image-45.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '534', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 45.jpg', '', 'filename', 'upload'),
(15177, 735, 0, 0, 'caption:', NULL, '735_U0HAW0_image-43.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '534', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 43.jpg', '', 'filename', 'upload'),
(15178, 735, 0, 0, 'caption:', NULL, '735_ILkNaa_image-46.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '534', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 46.jpg', '', 'filename', 'upload'),
(15179, 735, 0, 0, 'caption:', NULL, '735_Vvh3ti_image-42.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '709', '532', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 42.jpg', '', 'filename', 'upload'),
(15180, 735, 0, 0, 'caption:', NULL, '735_Yj0xWw_image-44.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '534', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 44.jpg', '', 'filename', 'upload'),
(15181, 735, 0, 0, 'caption:', NULL, '735_5DLCN9_image-43.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '534', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 43.jpg', '', 'filename', 'upload'),
(15182, 738, 0, 0, NULL, NULL, '738_zFeKVP_1920x1080png.png', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1920', '1080', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1920x1080.png', NULL, 'filename', 'upload'),
(15183, 717, 0, 0, 'caption:', NULL, '717_lZfCog_554_uy8oqx_joe_pugliese_wright2.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '820', '1094', 'portrait', 0.7495, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_uY8OQX_joe_pugliese_wright2.jpg', '', 'filename', 'upload'),
(15184, 717, 0, 0, 'caption:', NULL, '717_63g09e_554_zcy9yh_pug_rs_05.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1776', '1332', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_ZCy9yh_pug_rs_05.jpg', '', 'filename', 'upload'),
(15185, 717, 0, 0, 'caption:', NULL, '717_TbAXWR_554_w8bfak_pug_rs_06.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1776', '2368', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_W8BfAK_pug_rs_06.jpg', '', 'filename', 'upload'),
(15186, 717, 0, 0, 'caption:', NULL, '717_lnvdTP_554_hm8arx_anderson_cooper_062022_0211.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '820', '614', 'landscape', 1.3355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_Hm8arx_anderson_cooper_062022_0211.jpg', '', 'filename', 'upload'),
(15187, 717, 0, 0, 'caption:', NULL, '717_XlJIol_554_bmgrxw_pug_rs_07.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '820', '1094', 'portrait', 0.7495, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_BMgRXw_pug_rs_07.jpg', '', 'filename', 'upload'),
(15188, 717, 0, 0, 'caption:', NULL, '717_6xNpq6_554_by4alw_10614_04_0461.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1776', '2402', 'portrait', 0.7394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_by4Alw_10614_04_0461.jpg', '', 'filename', 'upload'),
(15189, 717, 0, 0, 'caption:', NULL, '717_ExgYfr_554_8qllgk_10614_03_0334.jpg', NULL, NULL, NULL, 15, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '820', '1094', 'portrait', 0.7495, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_8QllGk_10614_03_0334.jpg', '', 'filename', 'upload'),
(15190, 717, 0, 0, NULL, NULL, '717_0mjcsK_551_siuszy_joe_pugliese_sopranos3.jpg', NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1488', '1984', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '551_SIuszy_joe_pugliese_sopranos3.jpg', NULL, 'filename', 'upload'),
(15191, 717, 0, 0, 'caption:', NULL, '717_yEf2JD_554_fyu0kd_jp_jlo_01.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '820', '1092', 'portrait', 0.7509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_fyu0KD_jp_jlo_01.jpg', '', 'filename', 'upload'),
(15192, 739, 0, 0, 'caption:', NULL, '739_hjX1Vu_734_s0hx1j_image-32.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '539', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '734_S0HX1J_image-32.jpg', '', 'filename', 'upload'),
(15193, 739, 0, 0, 'caption:', NULL, '739_uaR2eE_717_yrhwrg_image-8.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '500', '667', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '717_yrhWRg_image-8.jpg', '', 'filename', 'upload'),
(15194, 739, 0, 0, 'caption:', NULL, '739_So9zqX_717_pbbr6a_pamela.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '500', '674', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '717_pbbR6a_pamela.jpg', '', 'filename', 'upload'),
(15195, 739, 0, 0, 'caption:', NULL, '739_lj56Cx_735_vvh3ti_image-42.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '500', '375', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '735_Vvh3ti_image-42.jpg', '', 'filename', 'upload'),
(15196, 739, 0, 0, 'caption:', NULL, '739_S6xbSr_734_hcr2jo_image-30.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '538', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '734_hcr2jo_image-30.jpg', '', 'filename', 'upload'),
(15197, 739, 0, 0, 'caption:', NULL, '739_vttU7h_734_qikbob_image-31.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '400', '538', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '734_qikboB_image-31.jpg', '', 'filename', 'upload'),
(15198, 739, 0, 0, 'caption:', NULL, '739_RTEpZ9_717_fzldpz_image-3.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '500', '333', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '717_FzlDPZ_image-3.jpg', '', 'filename', 'upload'),
(15199, 739, 0, 0, 'caption:', NULL, '739_Q4Wv1m_717_tc4yut_image-10.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '500', '666', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '717_tC4yUT_image-10.jpg', '', 'filename', 'upload'),
(15200, 736, 0, 0, 'caption:', NULL, '736_vL62BI_8748_nocivc_pers_flow_01_0625.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8748_NoCivC_pers_flow_01_0625.jpg', '', 'filename', 'upload'),
(15201, 726, 0, 0, 'caption:', NULL, '726_Nkq2of_10638_01_0084.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '3000', 'portrait', 0.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0084.jpg', '', 'filename', 'upload'),
(15202, 726, 0, 0, 'caption:', NULL, '726_IBBw5g_10638_01_0679.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0679.jpg', '', 'filename', 'upload'),
(15203, 726, 0, 0, 'caption:', NULL, '726_1muKFg_10638_01_0165.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0165.jpg', '', 'filename', 'upload'),
(15204, 726, 0, 0, 'caption:', NULL, '726_T1qBJG_10638_01_0184.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0184.jpg', '', 'filename', 'upload'),
(15205, 726, 0, 0, 'caption:', NULL, '726_mnDsGY_10638_01_0280.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0280.jpg', '', 'filename', 'upload'),
(15206, 726, 0, 0, 'caption:', NULL, '726_gZHx6m_10638_02_1559.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_02_1559.jpg', '', 'filename', 'upload'),
(15207, 726, 0, 0, 'caption:', NULL, '726_V5TZVn_10638_01_0408.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0408.jpg', '', 'filename', 'upload'),
(15208, 726, 0, 0, 'caption:', NULL, '726_NRvyCC_10638_01_0945.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0945.jpg', '', 'filename', 'upload'),
(15209, 726, 0, 0, 'caption:', NULL, '726_nOciGP_10638_01_0117.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0117.jpg', '', 'filename', 'upload'),
(15210, 726, 0, 0, 'caption:', NULL, '726_HjAeGr_10638_01_0828.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0828.jpg', '', 'filename', 'upload'),
(15211, 726, 0, 0, 'caption:', NULL, '726_MTaoVq_10638_02_1439.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_02_1439.jpg', '', 'filename', 'upload'),
(15212, 726, 0, 0, 'caption:', NULL, '726_JsWnTe_10638_01_0108.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0108.jpg', '', 'filename', 'upload'),
(15213, 726, 0, 0, 'caption:', NULL, '726_A63oOE_10638_02_1104.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_02_1104.jpg', '', 'filename', 'upload'),
(15214, 726, 0, 0, 'caption:', NULL, '726_AJdaTQ_10638_02_1871.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_02_1871.jpg', '', 'filename', 'upload'),
(15215, 742, 0, 0, 'caption:', NULL, '742_PLBryS_08_pugliese_9969_02_0308.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08_Pugliese_9969_02_0308.jpg', '', 'filename', 'upload'),
(15216, 742, 0, 0, 'caption:', NULL, '742_pSZ9TV_12_pugliese_9969_02_0363.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12_Pugliese_9969_02_0363.jpg', '', 'filename', 'upload'),
(15217, 742, 0, 0, 'caption:', NULL, '742_ngJpnb_29_pugliese_9969_03_0905.jpg', NULL, NULL, NULL, 20, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '29_Pugliese_9969_03_0905.jpg', '', 'filename', 'upload'),
(15218, 742, 0, 0, 'caption:', NULL, '742_BU5G5T_37_pugliese_9969_04_1143.jpg', NULL, NULL, NULL, 17, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37_Pugliese_9969_04_1143.jpg', '', 'filename', 'upload'),
(15219, 742, 0, 0, 'caption:', NULL, '742_4g27Au_35_pugliese_9969_04_1008.jpg', NULL, NULL, NULL, 16, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '35_Pugliese_9969_04_1008.jpg', '', 'filename', 'upload'),
(15220, 742, 0, 0, 'caption:', NULL, '742_WrH6W3_03_pugliese_9969_03_0662.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03_Pugliese_9969_03_0662.jpg', '', 'filename', 'upload'),
(15221, 742, 0, 0, 'caption:', NULL, '742_nh7GAZ_07_pugliese_9969_02_0418.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07_Pugliese_9969_02_0418.jpg', '', 'filename', 'upload'),
(15222, 742, 0, 0, 'caption:', NULL, '742_GaPFid_11_pugliese_9969_03_0625.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11_Pugliese_9969_03_0625.jpg', '', 'filename', 'upload'),
(15223, 742, 0, 0, 'caption:', NULL, '742_FIFIov_40_pugliese_9969_04_1318.jpg', NULL, NULL, NULL, 20, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40_Pugliese_9969_04_1318.jpg', '', 'filename', 'upload'),
(15224, 742, 0, 0, 'caption:', NULL, '742_uWYG5x_19_pugliese_9969_02_0389.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19_Pugliese_9969_02_0389.jpg', '', 'filename', 'upload'),
(15225, 742, 0, 0, 'caption:', NULL, '742_hkbOCv_25_pugliese_9969_03_0726.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25_Pugliese_9969_03_0726.jpg', '', 'filename', 'upload'),
(15226, 742, 0, 0, 'caption:', NULL, '742_EarztN_27_pugliese_9969_03_0670.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '27_Pugliese_9969_03_0670.jpg', '', 'filename', 'upload'),
(15227, 742, 0, 0, 'caption:', NULL, '742_3v9NIE_24_pugliese_9969_02_0439.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24_Pugliese_9969_02_0439.jpg', '', 'filename', 'upload'),
(15228, 742, 0, 0, 'caption:', NULL, '742_h9YJn3_13_pugliese_9969_02_0291.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13_Pugliese_9969_02_0291.jpg', '', 'filename', 'upload'),
(15229, 742, 0, 0, 'caption:', NULL, '742_PVLvaU_36_pugliese_9969_04_1116.jpg', NULL, NULL, NULL, 16, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '36_Pugliese_9969_04_1116.jpg', '', 'filename', 'upload'),
(15230, 742, 0, 0, 'caption:', NULL, '742_j6Yh0N_41_pugliese_9969_04_1325.jpg', NULL, NULL, NULL, 25, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41_Pugliese_9969_04_1325.jpg', '', 'filename', 'upload'),
(15231, 742, 0, 0, 'caption:', NULL, '742_n1cYet_18_pugliese_9969_03_0713.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18_Pugliese_9969_03_0713.jpg', '', 'filename', 'upload'),
(15232, 742, 0, 0, 'caption:', NULL, '742_ugrqNU_38_pugliese_9969_04_1215.jpg', NULL, NULL, NULL, 18, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '38_Pugliese_9969_04_1215.jpg', '', 'filename', 'upload'),
(15233, 742, 0, 0, 'caption:', NULL, '742_kJxz18_42_pugliese_9969_04_1266.jpg', NULL, NULL, NULL, 32, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '42_Pugliese_9969_04_1266.jpg', '', 'filename', 'upload'),
(15234, 742, 0, 0, 'caption:', NULL, '742_4o8Uf4_26_pugliese_9969_02_0543.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '26_Pugliese_9969_02_0543.jpg', '', 'filename', 'upload'),
(15235, 742, 0, 0, 'caption:', NULL, '742_VXoGqy_20_pugliese_9969_02_0474.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20_Pugliese_9969_02_0474.jpg', '', 'filename', 'upload'),
(15236, 742, 0, 0, 'caption:', NULL, '742_lUVDfM_39_pugliese_9969_04_1289.jpg', NULL, NULL, NULL, 19, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '39_Pugliese_9969_04_1289.jpg', '', 'filename', 'upload'),
(15237, 742, 0, 0, 'caption:', NULL, '742_vt0ijh_14_pugliese_9969_02_0509.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14_Pugliese_9969_02_0509.jpg', '', 'filename', 'upload'),
(15238, 742, 0, 0, 'caption:', NULL, '742_i7MpI9_09_pugliese_9969_02_0265.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09_Pugliese_9969_02_0265.jpg', '', 'filename', 'upload'),
(15239, 742, 0, 0, 'caption:', NULL, '742_0UdUDN_34_pugliese_9969_04_0979.jpg', NULL, NULL, NULL, 15, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '34_Pugliese_9969_04_0979.jpg', '', 'filename', 'upload'),
(15240, 742, 0, 0, 'caption:', NULL, '742_fvHi75_30_pugliese_9969_03_0703.jpg', NULL, NULL, NULL, 21, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30_Pugliese_9969_03_0703.jpg', '', 'filename', 'upload'),
(15241, 742, 0, 0, 'caption:', NULL, '742_hm4tgN_05_pugliese_9969_02_0254.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_Pugliese_9969_02_0254.jpg', '', 'filename', 'upload'),
(15242, 742, 0, 0, 'caption:', NULL, '742_w6C42j_31_pugliese_9969_04_1081.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '31_Pugliese_9969_04_1081.jpg', '', 'filename', 'upload'),
(15243, 742, 0, 0, 'caption:', NULL, '742_CO9ncl_16_pugliese_9969_03_0754.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16_Pugliese_9969_03_0754.jpg', '', 'filename', 'upload'),
(15244, 742, 0, 0, 'caption:', NULL, '742_icEBIP_28_pugliese_9969_02_0588.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2056', '2741', 'portrait', 0.7501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '28_Pugliese_9969_02_0588.jpg', '', 'filename', 'upload'),
(15245, 742, 0, 0, 'caption:', NULL, '742_sOABA9_17_pugliese_9969_02_0378.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17_Pugliese_9969_02_0378.jpg', '', 'filename', 'upload'),
(15246, 742, 0, 0, 'caption:', NULL, '742_eYfIgU_32_pugliese_9969_03_0857.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32_Pugliese_9969_03_0857.jpg', '', 'filename', 'upload'),
(15247, 743, 0, 0, 'caption:', NULL, '743_rriZDr_10675_13_2184.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_13_2184.jpg', '', 'filename', 'upload'),
(15248, 743, 0, 0, 'caption:', NULL, '743_YiNMVZ_10675_20_3034.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_20_3034.jpg', '', 'filename', 'upload'),
(15249, 743, 0, 0, 'caption:', NULL, '743_eREsBs_10675_14_2252.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_14_2252.jpg', '', 'filename', 'upload'),
(15250, 743, 0, 0, 'caption:', NULL, '743_MPEPbr_10675_07_1416-2.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_07_1416 2.jpg', '', 'filename', 'upload'),
(15251, 743, 0, 0, 'caption:', NULL, '743_c2V6pL_10675_20_3051v2.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_20_3051v2.jpg', '', 'filename', 'upload'),
(15252, 743, 0, 0, 'caption:', NULL, '743_VP6JVR_10675_08_1480.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_08_1480.jpg', '', 'filename', 'upload'),
(15253, 743, 0, 0, 'caption:', NULL, '743_UmOZTI_10675_20_3049.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_20_3049.jpg', '', 'filename', 'upload'),
(15254, 743, 0, 0, 'caption:', NULL, '743_HduQIq_10675_20_3053.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_20_3053.jpg', '', 'filename', 'upload'),
(15255, 744, 0, 0, 'caption:', NULL, '744_0Usuc5_10724_03_0491.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0491.jpg', '', 'filename', 'upload'),
(15256, 744, 0, 0, 'caption:', NULL, '744_YunawX_10724_03_0545.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0545.jpg', '', 'filename', 'upload'),
(15257, 744, 0, 0, 'caption:', NULL, '744_Rnkr22_10724_03_0551.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0551.jpg', '', 'filename', 'upload'),
(15258, 744, 0, 0, 'caption:', NULL, '744_6x0b9O_10724_03_0518.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0518.jpg', '', 'filename', 'upload'),
(15259, 744, 0, 0, 'caption:', NULL, '744_37oYRd_10724_03_0534.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0534.jpg', '', 'filename', 'upload'),
(15260, 744, 0, 0, 'caption:', NULL, '744_2mUeRD_10724_03_0510.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0510.jpg', '', 'filename', 'upload'),
(15261, 744, 0, 0, 'caption:', NULL, '744_gQc7FJ_10724_03_0538.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0538.jpg', '', 'filename', 'upload'),
(15262, 744, 0, 0, 'caption:', NULL, '744_1q9JCU_10724_03_0504.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0504.jpg', '', 'filename', 'upload'),
(15263, 744, 0, 0, 'caption:', NULL, '744_kCjjUI_10724_03_0543v2.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0543v2.jpg', '', 'filename', 'upload'),
(15264, 744, 0, 0, 'caption:', NULL, '744_5W8NBw_10724_03_0531.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0531.jpg', '', 'filename', 'upload'),
(15265, 744, 0, 0, 'caption:', NULL, '744_8Nfv77_10724_03_0548.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0548.jpg', '', 'filename', 'upload'),
(15266, 744, 0, 0, 'caption:', NULL, '744_i5A2Yl_10724_03_0508.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0508.jpg', '', 'filename', 'upload'),
(15267, 744, 0, 0, 'caption:', NULL, '744_Iw6e7h_10724_03_0528.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0528.jpg', '', 'filename', 'upload'),
(15268, 744, 0, 0, 'caption:', NULL, '744_gIjFIC_10724_03_0554.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0554.jpg', '', 'filename', 'upload'),
(15269, 744, 0, 0, 'caption:', NULL, '744_jwKkTH_10724_03_0557.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0557.jpg', '', 'filename', 'upload'),
(15270, 745, 0, 0, 'caption:', NULL, '745_OYWO9B_9983_02_0496-1.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_02_0496 1.jpg', '', 'filename', 'upload'),
(15271, 745, 0, 0, 'caption:', NULL, '745_PlhifR_9983_01_0102.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_01_0102.jpg', '', 'filename', 'upload'),
(15272, 745, 0, 0, 'caption:', NULL, '745_sS61i0_9983_03_0843-1.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_03_0843 1.jpg', '', 'filename', 'upload'),
(15273, 745, 0, 0, 'caption:', NULL, '745_8Ihpba_9983_02_0600-3.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2544', '3000', 'portrait', 0.8480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_02_0600 3.jpg', '', 'filename', 'upload'),
(15274, 745, 0, 0, 'caption:', NULL, '745_kSAmxd_9983_03_0746.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_03_0746.jpg', '', 'filename', 'upload'),
(15275, 745, 0, 0, 'caption:', NULL, '745_izGvuc_9983_04_0989.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_04_0989.jpg', '', 'filename', 'upload'),
(15276, 745, 0, 0, 'caption:', NULL, '745_seeWTm_9983_01_0312-3.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_01_0312 3.jpg', '', 'filename', 'upload'),
(15277, 745, 0, 0, 'caption:', NULL, '745_0RGbOc_9983_02_0545-1.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_02_0545 1.jpg', '', 'filename', 'upload'),
(15278, 745, 0, 0, 'caption:', NULL, '745_RCKvK9_9983_04_1082-1.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_04_1082 1.jpg', '', 'filename', 'upload'),
(15279, 745, 0, 0, 'caption:', NULL, '745_zaq8RD_9983_03_0629.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_03_0629.jpg', '', 'filename', 'upload'),
(15280, 745, 0, 0, 'caption:', NULL, '745_M73jMl_9983_03_0706-1-2.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_03_0706 1 2.jpg', '', 'filename', 'upload'),
(15281, 745, 0, 0, 'caption:', NULL, '745_UxS6Qj_9983_02_0314-1.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_02_0314 1.jpg', '', 'filename', 'upload'),
(15282, 745, 0, 0, 'caption:', NULL, '745_Adsvfl_9983_02_0472-2.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_02_0472 2.jpg', '', 'filename', 'upload');
INSERT INTO `pics` (`id`, `catid`, `picid`, `moduleid`, `caption`, `thumb`, `img`, `alt1`, `alt2`, `alt3`, `sortBy`, `title`, `picURL`, `shortDesc`, `price`, `wPrice`, `salesPrice`, `weight`, `posterImg`, `tags`, `slug`, `customSlug`, `imgType`, `imgSize`, `artistid`, `width`, `height`, `orientation`, `aspectRatio`, `posterWidth`, `posterHeight`, `posterOrientation`, `pdf`, `related`, `relatedColors`, `colorid`, `hover`, `ignoreQty`, `soldOut`, `featuredQty`, `metaTitle`, `metaDesc`, `metaKeywords`, `metaImage`, `metaImageWidth`, `metaImageHeight`, `status`, `lbCount`, `bgColor`, `filename`, `rowBreak`, `sorter`, `imgSrc`) VALUES
(15283, 730, 0, 0, 'caption:', NULL, '730_vNII4b_10541_02_0611.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1998', 'landscape', 1.5015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10541_02_0611.jpg', '', 'filename', 'upload'),
(15284, 730, 0, 0, 'caption:', NULL, '730_zxauGc_10541_01_0226-b&w.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2240', '3000', 'portrait', 0.7467, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10541_01_0226 B&W.jpg', '', 'filename', 'upload'),
(15285, 730, 0, 0, 'caption:', NULL, '730_FHi0r5_10541_01_0147.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2244', '3000', 'portrait', 0.7480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10541_01_0147.jpg', '', 'filename', 'upload'),
(15286, 730, 0, 0, 'caption:', NULL, '730_hCz04W_9941_01_0239.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9941_01_0239.jpg', '', 'filename', 'upload'),
(15287, 730, 0, 0, NULL, NULL, '730_1btmwF_9941_01_0246.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9941_01_0246.jpg', NULL, 'filename', 'upload'),
(15288, 730, 0, 0, 'caption:', NULL, '730_wMgr22_05_rocklen_01_0159.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2349', '3000', 'portrait', 0.7830, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_ROCKLEN_01_0159.jpg', '', 'filename', 'upload'),
(15289, 730, 0, 0, 'caption:', NULL, '730_7BZoMI_joe_pugliese_artist_1.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2246', '3000', 'portrait', 0.7487, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_artist_1.jpg', '', 'filename', 'upload'),
(15290, 730, 0, 0, 'caption:', NULL, '730_vcx127_pugliese_02_0077.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3600', '2700', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_02_0077.jpg', '', 'filename', 'upload'),
(15291, 730, 0, 0, 'caption:', NULL, '730_At3L9v_10614_06_0365.jpg', NULL, NULL, NULL, 15, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2004', 'landscape', 1.4970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10614_06_0365.jpg', '', 'filename', 'upload'),
(15292, 730, 0, 0, 'caption:', NULL, '730_zXe3ab_10614_04_0461.jpg', NULL, NULL, NULL, 16, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2218', '3000', 'portrait', 0.7393, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10614_04_0461.jpg', '', 'filename', 'upload'),
(15293, 730, 0, 0, 'caption:', NULL, '730_Xsifcm_10614_04_0368.jpg', NULL, NULL, NULL, 17, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10614_04_0368.jpg', '', 'filename', 'upload'),
(15294, 730, 0, 0, 'caption:', NULL, '730_n1X5nl_10625_04_1033.jpg', NULL, NULL, NULL, 18, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10625_04_1033.jpg', '', 'filename', 'upload'),
(15295, 730, 0, 0, 'caption:', NULL, '730_IDLL5C_9972_01_0280.jpg', NULL, NULL, NULL, 19, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1998', 'landscape', 1.5015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9972_01_0280.jpg', '', 'filename', 'upload'),
(15296, 730, 0, 0, 'caption:', NULL, '730_406vV7_pugliese_09jpeg.jpg', NULL, NULL, NULL, 20, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1961', '2615', 'portrait', 0.7499, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_09.jpeg', '', 'filename', 'upload'),
(15297, 730, 0, 0, 'caption:', NULL, '730_7RUDoQ_10610_01_0219.jpg', NULL, NULL, NULL, 21, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2251', '3000', 'portrait', 0.7503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10610_01_0219.jpg', '', 'filename', 'upload'),
(15298, 730, 0, 0, 'caption:', NULL, '730_3wHg8c_joe_pugliese_malala1.jpg', NULL, NULL, NULL, 22, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2241', '3000', 'portrait', 0.7470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_malala1.jpg', '', 'filename', 'upload'),
(15299, 730, 0, 0, 'caption:', NULL, '730_78AZ5e_9997_07_2147.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2257', '3000', 'portrait', 0.7523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_07_2147.jpg', '', 'filename', 'upload'),
(15300, 730, 0, 0, 'caption:', NULL, '730_dmKvwN_p_cr.jpg', NULL, NULL, NULL, 23, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_CR.jpg', '', 'filename', 'upload'),
(15301, 730, 0, 0, 'caption:', NULL, '730_hEAPIn_anderson_cooper_062022_0211.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3600', '2700', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ANDERSON_COOPER_062022_0211.jpg', '', 'filename', 'upload'),
(15302, 730, 0, 0, 'caption:', NULL, '730_GoQmN9_apa2018_bos_pug_web.jpg', NULL, NULL, NULL, 24, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1501', '2000', 'portrait', 0.7505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'apa2018_BOS_pug_web.jpg', '', 'filename', 'upload'),
(15303, 730, 0, 0, 'caption:', NULL, '730_Pd4jyf_jli_01.jpg', NULL, NULL, NULL, 25, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JLI_01.JPG', '', 'filename', 'upload'),
(15304, 730, 0, 0, 'caption:', NULL, '730_e2xg1A_p_hfo_01-1.jpg', NULL, NULL, NULL, 26, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_HFO_01 1.jpg', '', 'filename', 'upload'),
(15305, 730, 0, 0, 'caption:', NULL, '730_ZXGRez_10610_04_0976.jpg', NULL, NULL, NULL, 27, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10610_04_0976.jpg', '', 'filename', 'upload'),
(15306, 730, 0, 0, 'caption:', NULL, '730_bmkPXN_pugliese_10699_01_0084vjp.jpg', NULL, NULL, NULL, 28, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1853', '2316', 'portrait', 0.8001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_10699_01_0084vJP.jpg', '', 'filename', 'upload'),
(15307, 730, 0, 0, 'caption:', NULL, '730_4FOKD8_pugliese_10699_01_0074.jpg', NULL, NULL, NULL, 29, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3201', 'portrait', 0.7498, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_10699_01_0074.jpg', '', 'filename', 'upload'),
(15308, 730, 0, 0, 'caption:', NULL, '730_oDA5F3_9864_01_0105-copy.jpg', NULL, NULL, NULL, 30, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9864_01_0105 copy.jpg', '', 'filename', 'upload'),
(15309, 730, 0, 0, 'caption:', NULL, '730_wOsgEt_10589_02_1257.jpg', NULL, NULL, NULL, 31, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_02_1257.jpg', '', 'filename', 'upload'),
(15310, 730, 0, 0, 'caption:', NULL, '730_dYQeNL_10641_05_0366.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1721', '2154', 'portrait', 0.7990, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10641_05_0366.jpg', '', 'filename', 'upload'),
(15311, 730, 0, 0, 'caption:', NULL, '730_A0pX7z_10589_02_1150.jpg', NULL, NULL, NULL, 32, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_02_1150.jpg', '', 'filename', 'upload'),
(15312, 730, 0, 0, 'caption:', NULL, '730_XvBuov_joe_pugliese_dever1.jpg', NULL, NULL, NULL, 33, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_dever1.jpg', '', 'filename', 'upload'),
(15313, 730, 0, 0, 'caption:', NULL, '730_m6ouwA_10589_04_1607.jpg', NULL, NULL, NULL, 34, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_04_1607.jpg', '', 'filename', 'upload'),
(15314, 730, 0, 0, 'caption:', NULL, '730_Sh18OE_10641_03_0237.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3175', '2119', 'landscape', 1.4983, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10641_03_0237.jpg', '', 'filename', 'upload'),
(15315, 730, 0, 0, 'caption:', NULL, '730_ALmDwt_10589_02_1200-1.jpg', NULL, NULL, NULL, 35, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_02_1200 1.jpg', '', 'filename', 'upload'),
(15316, 730, 0, 0, 'caption:', NULL, '730_kAbnON_joe_pugliese_lana1.jpg', NULL, NULL, NULL, 36, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4968', '6210', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_lana1.jpg', '', 'filename', 'upload'),
(15317, 730, 0, 0, 'caption:', NULL, '730_NIRFkL_10641_01_0078.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2431', '3242', 'portrait', 0.7498, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10641_01_0078.jpg', '', 'filename', 'upload'),
(15318, 730, 0, 0, 'caption:', NULL, '730_Otc778_10641_07_0459.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2614', '3501', 'portrait', 0.7466, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10641_07_0459.jpg', '', 'filename', 'upload'),
(15319, 730, 0, 0, 'caption:', NULL, '730_4Km8FM_p_nik_01.jpg', NULL, NULL, NULL, 37, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_NIK_01.jpg', '', 'filename', 'upload'),
(15320, 730, 0, 0, 'caption:', NULL, '730_iAT0s1_10589_01_0924v2.jpg', NULL, NULL, NULL, 43, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3026', '4035', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_01_0924v2.jpg', '', 'filename', 'upload'),
(15321, 730, 0, 0, 'caption:', NULL, '730_WmPaPt_p_rdu_03.jpg', NULL, NULL, NULL, 38, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_RDU_03.jpg', '', 'filename', 'upload'),
(15322, 730, 0, 0, 'caption:', NULL, '730_hEmH6w_p_dja_01.jpg', NULL, NULL, NULL, 39, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4200', '5600', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_DJA_01.jpg', '', 'filename', 'upload'),
(15323, 730, 0, 0, 'caption:', NULL, '730_18LdX7_p_jli_04.jpg', NULL, NULL, NULL, 40, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2244', '3000', 'portrait', 0.7480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JLI_04.jpg', '', 'filename', 'upload'),
(15324, 730, 0, 0, 'caption:', NULL, '730_kZzkQM_holiday2018_lebron_sw3_midnightblack_left_0003-1tif.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HOLIDAY2018_LEBRON_SW3_MIDNIGHTBLACK_LEFT_0003 1.tif', '', 'filename', 'upload'),
(15325, 730, 0, 0, 'caption:', NULL, '730_9di4d8_10589_02_1257.jpg', NULL, NULL, NULL, 41, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_02_1257.jpg', '', 'filename', 'upload'),
(15326, 730, 0, 0, 'caption:', NULL, '730_dSMfCn_10589_02_1150.jpg', NULL, NULL, NULL, 43, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_02_1150.jpg', '', 'filename', 'upload'),
(15327, 730, 0, 0, 'caption:', NULL, '730_FTQ4s1_10589_01_0924v2.jpg', NULL, NULL, NULL, 41, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3026', '4035', 'portrait', 0.7499, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_01_0924v2.jpg', '', 'filename', 'upload'),
(15328, 730, 0, 0, 'caption:', NULL, '730_LZeCSm_10589_04_1607.jpg', NULL, NULL, NULL, 42, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_04_1607.jpg', '', 'filename', 'upload'),
(15329, 730, 0, 0, 'caption:', NULL, '730_0QWCgH_10589_02_1200-1.jpg', NULL, NULL, NULL, 42, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_02_1200 1.jpg', '', 'filename', 'upload'),
(15330, 730, 0, 0, 'caption:', NULL, '730_ac1D2E_pug_rs_06.jpg', NULL, NULL, NULL, 42, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUG_RS_06.jpg', '', 'filename', 'upload'),
(15331, 730, 0, 0, 'caption:', NULL, '730_tUoSDP_pug_rs_01.jpg', NULL, NULL, NULL, 44, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2462', '3000', 'portrait', 0.8207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUG_RS_01.jpg', '', 'filename', 'upload'),
(15332, 730, 0, 0, 'caption:', NULL, '730_rJUl7k_pug_rs_04.jpg', NULL, NULL, NULL, 45, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2251', '3000', 'portrait', 0.7503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUG_RS_04.jpg', '', 'filename', 'upload'),
(15333, 730, 0, 0, 'caption:', NULL, '730_J7f8ZU_pug_rs_07.jpg', NULL, NULL, NULL, 46, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUG_RS_07.jpg', '', 'filename', 'upload'),
(15334, 730, 0, 0, 'caption:', NULL, '730_MNQoaG_pug_rs_03.jpg', NULL, NULL, NULL, 47, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2244', '3000', 'portrait', 0.7480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUG_RS_03.jpg', '', 'filename', 'upload'),
(15335, 730, 0, 0, 'caption:', NULL, '730_jM3xAe_pug_rs_08.jpg', NULL, NULL, NULL, 43, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUG_RS_08.jpg', '', 'filename', 'upload'),
(15336, 730, 0, 0, 'caption:', NULL, '730_XMqYgk_pug_rs_05.jpg', NULL, NULL, NULL, 48, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2249', 'landscape', 1.3339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUG_RS_05.jpg', '', 'filename', 'upload'),
(15337, 730, 0, 0, 'caption:', NULL, '730_ZvtOPa_extra_10545_02_0419.jpg', NULL, NULL, NULL, 49, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Extra_10545_02_0419.jpg', '', 'filename', 'upload'),
(15338, 730, 0, 0, 'caption:', NULL, '730_VKX9oA_cover_10550_05_0852.jpg', NULL, NULL, NULL, 50, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cover_10550_05_0852.jpg', '', 'filename', 'upload'),
(15339, 730, 0, 0, 'caption:', NULL, '730_K5c2UE_cover_10553_03_0919.jpg', NULL, NULL, NULL, 51, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cover_10553_03_0919.jpg', '', 'filename', 'upload'),
(15340, 730, 0, 0, 'caption:', NULL, '730_653r0Z_9872_06_0697.jpg', NULL, NULL, NULL, 52, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2247', '3000', 'portrait', 0.7490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9872_06_0697.jpg', '', 'filename', 'upload'),
(15341, 730, 0, 0, 'caption:', NULL, '730_kb2fP0_9783_02_1298.jpg', NULL, NULL, NULL, 53, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9783_02_1298.jpg', '', 'filename', 'upload'),
(15342, 730, 0, 0, 'caption:', NULL, '730_R6VylU_oprah_harry_v1.jpg', NULL, NULL, NULL, 54, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3006', '1925', 'landscape', 1.5616, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'oprah_harry_v1.jpg', '', 'filename', 'upload'),
(15343, 730, 0, 0, 'caption:', NULL, '730_GYI9Cn_p_bal_02.jpg', NULL, NULL, NULL, 55, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2097', 'landscape', 1.4306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_BAL_02.jpg', '', 'filename', 'upload'),
(15344, 730, 0, 0, 'caption:', NULL, '730_7EF8zH_10505_09_1094.jpg', NULL, NULL, NULL, 56, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2312', '3000', 'portrait', 0.7707, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10505_09_1094.jpg', '', 'filename', 'upload'),
(15345, 730, 0, 0, 'caption:', NULL, '730_EfKnBc_10571_04_0379.jpg', NULL, NULL, NULL, 57, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3072', '1854', 'landscape', 1.6570, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_04_0379.jpg', '', 'filename', 'upload'),
(15346, 730, 0, 0, 'caption:', NULL, '730_PFOyP9_9991_04_0489.jpg', NULL, NULL, NULL, 58, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3838', '2879', 'landscape', 1.3331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9991_04_0489.jpg', '', 'filename', 'upload'),
(15347, 730, 0, 0, 'caption:', NULL, '730_dAYpmg_p_gqc_01.jpg', NULL, NULL, NULL, 59, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1971', 'landscape', 1.5221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_GQC_01.jpg', '', 'filename', 'upload'),
(15348, 730, 0, 0, 'caption:', NULL, '730_1mo0A0_9972_12_1412.jpg', NULL, NULL, NULL, 60, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9972_12_1412.jpg', '', 'filename', 'upload'),
(15349, 730, 0, 0, 'caption:', NULL, '730_FVV1dS_z-xhfugqjpeg.jpg', NULL, NULL, NULL, 61, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'z-xHFUGQ.jpeg', '', 'filename', 'upload'),
(15350, 730, 0, 0, 'caption:', NULL, '730_l0G6bx_9980_01_cvprint_tailor_0229.jpg', NULL, NULL, NULL, 62, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2575', '3000', 'portrait', 0.8583, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9980_01_CVPrint_Tailor_0229.jpg', '', 'filename', 'upload'),
(15351, 730, 0, 0, 'caption:', NULL, '730_yQSSxB_9980_05_cvsocial_1058v4.jpg', NULL, NULL, NULL, 63, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2433', '3243', 'portrait', 0.7502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9980_05_CVSocial_1058v4.jpg', '', 'filename', 'upload'),
(15352, 730, 0, 0, 'caption:', NULL, '730_u0twC0_9947_05_0730.jpg', NULL, NULL, NULL, 64, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9947_05_0730.jpg', '', 'filename', 'upload'),
(15353, 730, 0, 0, 'caption:', NULL, '730_VfbYS7_9947_01_0228.jpg', NULL, NULL, NULL, 65, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9947_01_0228.jpg', '', 'filename', 'upload'),
(15354, 730, 0, 0, 'caption:', NULL, '730_bg2O1Y_pugliese_01.jpg', NULL, NULL, NULL, 66, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_01.jpg', '', 'filename', 'upload'),
(15355, 730, 0, 0, 'caption:', NULL, '730_VB7GsX_jlo_11.jpg', NULL, NULL, NULL, 67, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2048', '1504', 'landscape', 1.3617, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JLO_11.jpg', '', 'filename', 'upload'),
(15356, 730, 0, 0, 'caption:', NULL, '730_bFJFRa_p_jlo_05.jpg', NULL, NULL, NULL, 68, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2343', '3000', 'portrait', 0.7810, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JLO_05.jpg', '', 'filename', 'upload'),
(15357, 730, 0, 0, 'caption:', NULL, '730_olPsb1_jp_jlo_01.jpg', NULL, NULL, NULL, 69, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3600', '4800', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_01.jpg', '', 'filename', 'upload'),
(15358, 730, 0, 0, 'caption:', NULL, '730_iXCKml_jp_jlo_03.jpg', NULL, NULL, NULL, 70, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3600', '4701', 'portrait', 0.7658, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_03.jpg', '', 'filename', 'upload'),
(15359, 730, 0, 0, 'caption:', NULL, '730_MomRnT_p_jlo_04.jpg', NULL, NULL, NULL, 71, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3607', '4800', 'portrait', 0.7515, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JLO_04.jpg', '', 'filename', 'upload'),
(15360, 730, 0, 0, 'caption:', NULL, '730_2pMMiI_jp_jlo_06.jpg', NULL, NULL, NULL, 72, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5400', '3600', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_06.jpg', '', 'filename', 'upload'),
(15361, 730, 0, 0, 'caption:', NULL, '730_CdNgnf_jp_jlo_02.jpg', NULL, NULL, NULL, 73, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4877', '6382', 'portrait', 0.7642, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_02.jpg', '', 'filename', 'upload'),
(15362, 730, 0, 0, 'caption:', NULL, '730_E1ZsIz_10619_05_0906rt_v3.jpg', NULL, NULL, NULL, 75, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10619_05_0906RT_V3.jpg', '', 'filename', 'upload'),
(15363, 730, 0, 0, 'caption:', NULL, '730_9hdNt5_10619_01_0046rt_v2.jpg', NULL, NULL, NULL, 74, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10619_01_0046RT_V2.jpg', '', 'filename', 'upload'),
(15364, 730, 0, 0, 'caption:', NULL, '730_rcMqbI_10619_01_0157rt_v2.jpg', NULL, NULL, NULL, 76, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10619_01_0157RT_V2.jpg', '', 'filename', 'upload'),
(15365, 730, 0, 0, 'caption:', NULL, '730_AJHLyk_10542_05_1131.jpg', NULL, NULL, NULL, 77, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '6582', '4388', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10542_05_1131.jpg', '', 'filename', 'upload'),
(15366, 730, 0, 0, 'caption:', NULL, '730_3KKnog_10542_02_0490.jpg', NULL, NULL, NULL, 78, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4268', '5637', 'portrait', 0.7571, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10542_02_0490.jpg', '', 'filename', 'upload'),
(15367, 730, 0, 0, 'caption:', NULL, '730_n94L4I_10542_06_1133bw.jpg', NULL, NULL, NULL, 79, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4722', '6296', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10542_06_1133BW.jpg', '', 'filename', 'upload'),
(15368, 730, 0, 0, 'caption:', NULL, '730_rKXznY_9841_03_0261.jpg', NULL, NULL, NULL, 80, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1435', '1943', 'portrait', 0.7385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9841_03_0261.jpg', '', 'filename', 'upload'),
(15369, 730, 0, 0, 'caption:', NULL, '730_qw6YYI_9871_09_0872.jpg', NULL, NULL, NULL, 81, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9871_09_0872.jpg', '', 'filename', 'upload'),
(15370, 730, 0, 0, 'caption:', NULL, '730_uMsUnH_p_tpe_01.jpg', NULL, NULL, NULL, 82, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1916', 'landscape', 1.5658, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_TPE_01.jpg', '', 'filename', 'upload'),
(15371, 730, 0, 0, 'caption:', NULL, '730_kWOJvM_9786_02_0130.jpg', NULL, NULL, NULL, 83, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1538', '2000', 'portrait', 0.7690, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9786_02_0130.jpg', '', 'filename', 'upload'),
(15372, 730, 0, 0, 'caption:', NULL, '730_3Lqewe_10505_06_0741.jpg', NULL, NULL, NULL, 84, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2314', '3000', 'portrait', 0.7713, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10505_06_0741.jpg', '', 'filename', 'upload'),
(15373, 730, 0, 0, 'caption:', NULL, '730_ZK6XWr_pugliese_04.jpg', NULL, NULL, NULL, 85, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2397', '3200', 'portrait', 0.7491, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_04.jpg', '', 'filename', 'upload'),
(15374, 730, 0, 0, 'caption:', NULL, '730_WCFrzM_bono_01.jpg', NULL, NULL, NULL, 86, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1533', '2000', 'portrait', 0.7665, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BONO_01.JPG', '', 'filename', 'upload'),
(15375, 730, 0, 0, 'caption:', NULL, '730_p5of9h_pugliese_03.jpg', NULL, NULL, NULL, 87, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3902', '5202', 'portrait', 0.7501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_03.jpg', '', 'filename', 'upload'),
(15376, 730, 0, 0, 'caption:', NULL, '730_3HHIsK_9842_04_0697.jpg', NULL, NULL, NULL, 88, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '1333', 'landscape', 1.5004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9842_04_0697.jpg', '', 'filename', 'upload'),
(15377, 730, 0, 0, 'caption:', NULL, '730_vCeWOp_9842_04_0785.jpg', NULL, NULL, NULL, 93, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '1333', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9842_04_0785.jpg', '', 'filename', 'upload'),
(15378, 730, 0, 0, 'caption:', NULL, '730_OVOsVC_9842_04_0614.jpg', NULL, NULL, NULL, 89, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '1333', 'landscape', 1.5004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9842_04_0614.jpg', '', 'filename', 'upload'),
(15379, 730, 0, 0, 'caption:', NULL, '730_dm37tv_picard_seven.jpg', NULL, NULL, NULL, 90, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2633', '3900', 'portrait', 0.6751, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_SEVEN.jpg', '', 'filename', 'upload'),
(15380, 730, 0, 0, 'caption:', NULL, '730_DtmtIC_picard_jlp.jpg', NULL, NULL, NULL, 91, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2633', '3900', 'portrait', 0.6751, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_JLP.jpg', '', 'filename', 'upload'),
(15381, 730, 0, 0, 'caption:', NULL, '730_TrCNmX_picard_will.jpg', NULL, NULL, NULL, 92, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2633', '3900', 'portrait', 0.6751, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_WILL.jpg', '', 'filename', 'upload'),
(15382, 730, 0, 0, 'caption:', NULL, '730_5jg0qT_picard_worf.jpg', NULL, NULL, NULL, 93, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2633', '3900', 'portrait', 0.6751, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_WORF.jpg', '', 'filename', 'upload'),
(15383, 730, 0, 0, NULL, NULL, '730_HchiSG_10698anderson_01_0015jpeg.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2249', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0015.jpeg', NULL, 'filename', 'upload'),
(15384, 730, 0, 0, 'caption:', NULL, '730_u0aMUA_10698anderson_01_0208_r1jpeg.jpg', NULL, NULL, NULL, 100, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0208_R1.jpeg', '', 'filename', 'upload'),
(15385, 730, 0, 0, 'caption:', NULL, '730_Rp9LRi_10698anderson_01_0383_r1jpeg.jpg', NULL, NULL, NULL, 90, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2237', '3000', 'portrait', 0.7457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0383_R1.jpeg', '', 'filename', 'upload'),
(15386, 730, 0, 0, 'caption:', NULL, '730_x1VP1t_10698anderson_01_0237jpeg.jpg', NULL, NULL, NULL, 102, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2238', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0237.jpeg', '', 'filename', 'upload'),
(15387, 730, 0, 0, 'caption:', NULL, '730_Csjojw_10698anderson_01_0241jpeg.jpg', NULL, NULL, NULL, 91, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2224', '3000', 'portrait', 0.7413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0241.jpeg', '', 'filename', 'upload'),
(15388, 730, 0, 0, 'caption:', NULL, '730_px9x9I_10698anderson_01_0421-b&wjpeg.jpg', NULL, NULL, NULL, 92, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2251', '3000', 'portrait', 0.7503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0421 B&W.jpeg', '', 'filename', 'upload'),
(15389, 730, 0, 0, 'caption:', NULL, '730_PsuBCB_succession_01.jpg', NULL, NULL, NULL, 97, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUCCESSION_01.jpg', '', 'filename', 'upload'),
(15390, 730, 0, 0, 'caption:', NULL, '730_jtrqwt_succession_03.jpg', NULL, NULL, NULL, 98, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUCCESSION_03.jpg', '', 'filename', 'upload'),
(15391, 730, 0, 0, 'caption:', NULL, '730_HrFrJw_succession_04.jpg', NULL, NULL, NULL, 99, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUCCESSION_04.jpg', '', 'filename', 'upload'),
(15392, 730, 0, 0, 'caption:', NULL, '730_O0tpNp_succession_02.jpg', NULL, NULL, NULL, 93, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUCCESSION_02.jpg', '', 'filename', 'upload'),
(15393, 730, 0, 0, 'caption:', NULL, '730_80EQtF_succession_06.jpg', NULL, NULL, NULL, 101, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUCCESSION_06.jpg', '', 'filename', 'upload'),
(15394, 736, 0, 0, 'caption:', NULL, '736_o8Vr2O_05_pers_flow_04_2971.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '1333', 'landscape', 1.5004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_PERS_FLOW_04_2971.jpg', '', 'filename', 'upload'),
(15395, 736, 0, 0, 'caption:', NULL, '736_MqViNb_09_pers_flow_04_1431.jpg', NULL, NULL, NULL, 20, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09_PERS_FLOW_04_1431.jpg', '', 'filename', 'upload'),
(15396, 736, 0, 0, 'caption:', NULL, '736_l41xE4_10_pers_flow_02_1497.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10_PERS_FLOW_02_1497.jpg', '', 'filename', 'upload'),
(15397, 736, 0, 0, 'caption:', NULL, '736_4M6a7T_11_pers_flow_04_2829_jp.jpg', NULL, NULL, NULL, 18, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11_PERS_FLOW_04_2829_jp.jpg', '', 'filename', 'upload'),
(15398, 736, 0, 0, 'caption:', NULL, '736_XPWmsu_12_pers_flow_02_1785_jp-1.jpg', NULL, NULL, NULL, 17, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1600', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12_PERS_FLOW_02_1785_jp 1.jpg', '', 'filename', 'upload'),
(15399, 736, 0, 0, 'caption:', NULL, '736_m1nM3k_01_pers_flow_01_0704_jp.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01_PERS_FLOW_01_0704_jp.jpg', '', 'filename', 'upload'),
(15400, 736, 0, 0, 'caption:', NULL, '736_ydwBw4_02_pers_flow_01_0610.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02_PERS_FLOW_01_0610.jpg', '', 'filename', 'upload'),
(15401, 736, 0, 0, 'caption:', NULL, '736_BHSaDe_03_pers_flow_04_3581.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03_PERS_FLOW_04_3581.jpg', '', 'filename', 'upload'),
(15402, 736, 0, 0, 'caption:', NULL, '736_S2PtKb_06_pers_flow_01_1048.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06_PERS_FLOW_01_1048.jpg', '', 'filename', 'upload'),
(15403, 736, 0, 0, 'caption:', NULL, '736_o3I530_07_pers_flow_01_0625.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07_PERS_FLOW_01_0625.jpg', '', 'filename', 'upload'),
(15404, 736, 0, 0, NULL, NULL, '736_LZZXHp_04_pers_flow_01_0845.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04_PERS_FLOW_01_0845.jpg', NULL, 'filename', 'upload'),
(15405, 736, 0, 0, 'caption:', NULL, '736_7yJ9Ak_08_pers_flow_04_2778.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08_PERS_FLOW_04_2778.jpg', '', 'filename', 'upload'),
(15406, 736, 0, 0, 'caption:', NULL, '736_oPgi9o_joe_pugliese_flow9.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow9.jpg', '', 'filename', 'upload'),
(15407, 736, 0, 0, 'caption:', NULL, '736_ZD4MRM_joe_pugliese_flow2.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow2.jpg', '', 'filename', 'upload'),
(15408, 736, 0, 0, 'caption:', NULL, '736_ifXDA2_joe_pugliese_flow1.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow1.jpg', '', 'filename', 'upload'),
(15409, 736, 0, 0, 'caption:', NULL, '736_Qzrrbm_joe_pugliese_flow6.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow6.jpg', '', 'filename', 'upload'),
(15410, 736, 0, 0, 'caption:', NULL, '736_Ls1A0h_joe_pugliese_flow5.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow5.jpg', '', 'filename', 'upload');
INSERT INTO `pics` (`id`, `catid`, `picid`, `moduleid`, `caption`, `thumb`, `img`, `alt1`, `alt2`, `alt3`, `sortBy`, `title`, `picURL`, `shortDesc`, `price`, `wPrice`, `salesPrice`, `weight`, `posterImg`, `tags`, `slug`, `customSlug`, `imgType`, `imgSize`, `artistid`, `width`, `height`, `orientation`, `aspectRatio`, `posterWidth`, `posterHeight`, `posterOrientation`, `pdf`, `related`, `relatedColors`, `colorid`, `hover`, `ignoreQty`, `soldOut`, `featuredQty`, `metaTitle`, `metaDesc`, `metaKeywords`, `metaImage`, `metaImageWidth`, `metaImageHeight`, `status`, `lbCount`, `bgColor`, `filename`, `rowBreak`, `sorter`, `imgSrc`) VALUES
(15411, 736, 0, 0, 'caption:', NULL, '736_3sr95N_joe_pugliese_flow7.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow7.jpg', '', 'filename', 'upload'),
(15412, 736, 0, 0, 'caption:', NULL, '736_ksT7U0_joe_pugliese_flow3.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow3.jpg', '', 'filename', 'upload'),
(15413, 736, 0, 0, 'caption:', NULL, '736_7yWZBY_joe_pugliese_flow4.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow4.jpg', '', 'filename', 'upload'),
(15414, 736, 0, 0, 'caption:', NULL, '736_oeGaJK_joe_pugliese_flow8.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow8.jpg', '', 'filename', 'upload'),
(15415, 746, 0, 0, 'caption:', NULL, '746_phjcJQ_joe_pugliese_cook_01.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2099', '2798', 'portrait', 0.7502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_01.jpg', '', 'filename', 'upload'),
(15416, 746, 0, 0, 'caption:', NULL, '746_wjneJC_joe_pugliese_cook_03.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'JOE_PUGLIESE_COOK_03.jpg', '', 'filename', 'upload'),
(15417, 746, 0, 0, 'caption:', NULL, '746_QeRmpb_joe_pugliese_cook_04.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_04.jpg', '', 'filename', 'upload'),
(15418, 746, 0, 0, 'caption:', NULL, '746_HYNzXj_joe_pugliese_cook_05.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5401', '3600', 'landscape', 1.5003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_05.jpg', '', 'filename', 'upload'),
(15419, 746, 0, 0, 'caption:', NULL, '746_oSszTS_joe_pugliese_cook_06.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5398', '3600', 'landscape', 1.4994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_06.jpg', '', 'filename', 'upload'),
(15420, 752, 0, 0, 'caption:', NULL, '752_5uIP7b_10592_02_1208.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_02_1208.jpg', '', 'filename', 'upload'),
(15421, 752, 0, 0, 'caption:', NULL, '752_BRjg0F_10592_06_2921.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_06_2921.jpg', '', 'filename', 'upload'),
(15422, 752, 0, 0, 'caption:', NULL, '752_GAtJgU_10592_06_3005.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_06_3005.jpg', '', 'filename', 'upload'),
(15423, 752, 0, 0, 'caption:', NULL, '752_jif071_10592_03_1319.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_03_1319.jpg', '', 'filename', 'upload'),
(15424, 752, 0, 0, 'caption:', NULL, '752_LFqsF4_10592_03_1377.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_03_1377.jpg', '', 'filename', 'upload'),
(15425, 752, 0, 0, 'caption:', NULL, '752_5rA8fz_10592_07_3071.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5602', '3734', 'landscape', 1.5003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_07_3071.jpg', '', 'filename', 'upload'),
(15426, 752, 0, 0, 'caption:', NULL, '752_nSTQJ1_10592_08_3338.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', '', NULL, '', NULL, '3360', '4480', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10592_08_3338.jpg', '', 'filename', 'upload'),
(15427, 752, 0, 0, 'caption:', NULL, '752_5PFluT_10592_08_4069.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3255', '4339', 'portrait', 0.7502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_08_4069.jpg', '', 'filename', 'upload'),
(15428, 752, 0, 0, 'caption:', NULL, '752_ZZFsmP_10592_08_3832.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '6591', '4394', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_08_3832.jpg', '', 'filename', 'upload'),
(15429, 752, 0, 0, 'caption:', NULL, '752_MXLDFb_10592_08_3959.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '6274', '4183', 'landscape', 1.4999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_08_3959.jpg', '', 'filename', 'upload'),
(15430, 752, 0, 0, 'caption:', NULL, '752_LIlTbL_10592_08_4290.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '6153', '4102', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_08_4290.jpg', '', 'filename', 'upload'),
(15431, 717, 0, 0, 'caption:', NULL, '717_YvqRu4_legend-4800.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3600', '4800', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Legend 4800.jpg', '', 'filename', 'upload'),
(15432, 717, 0, 0, 'caption:', NULL, '717_CbClP2_jlc-6000.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4582', '6000', 'portrait', 0.7637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JLC 6000.jpg', '', 'filename', 'upload'),
(15433, 753, 0, 0, NULL, NULL, '753_8IeQ6t_east-of-western.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '170', '170', 'square', 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'east-of-western.jpg', NULL, 'filename', 'upload'),
(15434, 753, 0, 0, NULL, NULL, '753_gVBIyt_east-of-western.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '170', '170', 'square', 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'east-of-western.jpg', NULL, 'filename', 'upload'),
(15435, 753, 0, 0, NULL, NULL, '753_w7dU8w_east-of-western.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '170', '170', 'square', 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'east-of-western.jpg', NULL, 'filename', 'upload'),
(15436, 753, 0, 0, 'caption:', NULL, '753_0dZFee_joe_pugliese_domingo_02.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_DOMINGO_02.jpg', '', 'filename', 'upload'),
(15437, 753, 0, 0, 'caption:', NULL, '753_qPupTY_joe_pugliese_cook_02.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_02.jpg', '', 'filename', 'upload'),
(15438, 753, 0, 0, 'caption:', NULL, '753_nQxNsL_joe_pugliese_cook_03.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_03.jpg', '', 'filename', 'upload'),
(15439, 753, 0, 0, 'caption:', NULL, '753_wLhQSO_joe_pugliese_cook_01.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2099', '2798', 'portrait', 0.7502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_01.jpg', '', 'filename', 'upload'),
(15440, 753, 0, 0, NULL, NULL, '753_YJFRhm_joe_pugliese_lake_01.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_LAKE_01.jpg', NULL, 'filename', 'upload'),
(15441, 753, 0, 0, NULL, NULL, '753_snycQe_imagejpeg.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image.jpeg', NULL, 'filename', 'upload'),
(15442, 753, 0, 0, 'caption:', NULL, '753_TNJlrV_imagejpeg.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image.jpeg', '', 'filename', 'upload'),
(15443, 753, 0, 0, 'caption:', NULL, '753_d1PrVD_joe_pugliese_mx_01.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_01.jpg', '', 'filename', 'upload'),
(15444, 753, 0, 0, NULL, NULL, '753_8pwTWr_joe_pugliese_mx_03.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_03.jpg', NULL, 'filename', 'upload'),
(15445, 739, 0, 0, 'caption:', NULL, '739_n6RlhP_1920x1080png.png', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1920', '1080', 'landscape', 1.7778, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1920x1080.png', '', 'filename', 'upload'),
(15446, 739, 0, 0, 'caption:', NULL, '739_JvYtGu_placeholder-600png.png', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '600', '600', 'square', 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'placeholder-600.png', '', 'filename', 'upload'),
(15447, 739, 0, 0, NULL, NULL, '739_M1eg3Q_430-200x300.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200', '300', 'portrait', 0.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '430-200x300.jpg', NULL, 'filename', 'upload'),
(15448, 739, 0, 0, NULL, NULL, '739_LivsFD_1920x1080png.png', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1920', '1080', 'landscape', 1.7778, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1920x1080.png', NULL, 'filename', 'upload'),
(15449, 739, 0, 0, NULL, NULL, '739_QkAoUo_placeholder-600png.png', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '600', '600', 'square', 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'placeholder-600.png', NULL, 'filename', 'upload'),
(15450, 753, 0, 0, 'caption:', NULL, '753_etyfsz_joe_pugliese_cook_02.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_02.jpg', '', 'filename', 'upload'),
(15451, 753, 0, 0, 'caption:', NULL, '753_0IxgsO_10698anderson_01_0278.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2249', 'landscape', 1.3339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0278.jpg', '', 'filename', 'upload');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `tag` varchar(150) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `sortBy` int DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tag_pics`
--

CREATE TABLE `tag_pics` (
  `id` int NOT NULL,
  `tag` varchar(255) NOT NULL,
  `picid` int NOT NULL,
  `sortBy` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int NOT NULL,
  `catid` int DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `embed` text,
  `embedURL` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `sortBy` int NOT NULL DEFAULT '0',
  `picid` int DEFAULT NULL,
  `tags` text,
  `slug` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `hoverFile` varchar(255) DEFAULT NULL,
  `hoverWidth` int DEFAULT NULL,
  `hoverHeight` int DEFAULT NULL,
  `url_desktop` varchar(255) DEFAULT NULL,
  `url_mobile` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `catid`, `caption`, `title`, `embed`, `embedURL`, `file`, `thumbnail`, `sortBy`, `picid`, `tags`, `slug`, `width`, `height`, `hoverFile`, `hoverWidth`, `hoverHeight`, `url_desktop`, `url_mobile`) VALUES
(118, 0, NULL, NULL, NULL, NULL, '9041_GUS 2_FOOTWEAR_PLUS_LOVE_002.mp4.mp4', NULL, 0, 9041, '', '', 640, 360, '', 0, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_country`
--
ALTER TABLE `base_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat_list`
--
ALTER TABLE `cat_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentID` (`parentID`);

--
-- Indexes for table `cat_pics`
--
ALTER TABLE `cat_pics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`,`picid`);

--
-- Indexes for table `cat_videos`
--
ALTER TABLE `cat_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`,`vidid`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `picID` (`picid`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessionID` (`sessionID`);

--
-- Indexes for table `ec_coupons`
--
ALTER TABLE `ec_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_options`
--
ALTER TABLE `ec_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `ec_orders_products`
--
ALTER TABLE `ec_orders_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderID` (`orderID`,`prodID`);

--
-- Indexes for table `ec_order_history`
--
ALTER TABLE `ec_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_status`
--
ALTER TABLE `ec_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_options`
--
ALTER TABLE `ec_product_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`,`optionsetid`,`optionid`);

--
-- Indexes for table `ec_product_options_inventory`
--
ALTER TABLE `ec_product_options_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `ec_wishlist`
--
ALTER TABLE `ec_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessionID` (`sessionID`);

--
-- Indexes for table `homeimage`
--
ALTER TABLE `homeimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layouts`
--
ALTER TABLE `layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lightbox`
--
ALTER TABLE `lightbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `picID` (`picid`);

--
-- Indexes for table `module_pics`
--
ALTER TABLE `module_pics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modid` (`modid`),
  ADD KEY `picid` (`picid`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pics`
--
ALTER TABLE `pics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `picid` (`picid`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_pics`
--
ALTER TABLE `tag_pics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cat_list`
--
ALTER TABLE `cat_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=754;

--
-- AUTO_INCREMENT for table `cat_pics`
--
ALTER TABLE `cat_pics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9574;

--
-- AUTO_INCREMENT for table `cat_videos`
--
ALTER TABLE `cat_videos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1700;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=996;

--
-- AUTO_INCREMENT for table `ec_cart`
--
ALTER TABLE `ec_cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2697;

--
-- AUTO_INCREMENT for table `ec_coupons`
--
ALTER TABLE `ec_coupons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7913;

--
-- AUTO_INCREMENT for table `ec_options`
--
ALTER TABLE `ec_options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=985;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `ec_orders_products`
--
ALTER TABLE `ec_orders_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT for table `ec_order_history`
--
ALTER TABLE `ec_order_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=664;

--
-- AUTO_INCREMENT for table `ec_order_status`
--
ALTER TABLE `ec_order_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ec_product_options`
--
ALTER TABLE `ec_product_options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119273;

--
-- AUTO_INCREMENT for table `ec_product_options_inventory`
--
ALTER TABLE `ec_product_options_inventory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1994;

--
-- AUTO_INCREMENT for table `ec_wishlist`
--
ALTER TABLE `ec_wishlist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `homeimage`
--
ALTER TABLE `homeimage`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `layouts`
--
ALTER TABLE `layouts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lightbox`
--
ALTER TABLE `lightbox`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3307;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `module_pics`
--
ALTER TABLE `module_pics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `pics`
--
ALTER TABLE `pics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15452;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tag_pics`
--
ALTER TABLE `tag_pics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
