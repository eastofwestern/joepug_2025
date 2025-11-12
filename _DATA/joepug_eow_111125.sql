-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: medicine.pdx1-mysql-a7-1b.dreamhost.com
-- Generation Time: Nov 11, 2025 at 05:24 PM
-- Server version: 8.0.41-0ubuntu0.24.04.1
-- PHP Version: 8.1.2-1ubuntu2.22

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
  `iso2` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `iso3` char(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name_en` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name_fr` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name_de` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

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
(727, 'BIO', '', 0, 'text', 'live', NULL, NULL, '', 5, 'bio', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#fcd868', NULL, NULL, 'filename'),
(728, 'CONTACT', '', 0, 'text', 'live', NULL, NULL, '', 6, 'contact', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'black', NULL, NULL, 'filename'),
(752, '', 'Tom Brady | IWC Watches', 726, 'grid - archive', 'live', NULL, NULL, 'Add Link', 3, 'series-tom-brady--iwc-watches', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(730, '', 'All', 725, 'grid - archive', 'live', NULL, NULL, 'Add Link', 1, 'archive-all', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(731, '', 'Portraits', 725, 'grid - archive large', 'preview', NULL, NULL, 'Add Link', 4, 'archive-portraits', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(733, '', 'Studio', 725, 'grid - archive', 'preview', NULL, NULL, 'Add Link', 7, 'archive-studio', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(736, '', 'Flow State | Personal', 726, 'grid', 'live', NULL, NULL, 'Add Link', 13, 'series-flow-state--personal', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(738, '', 'Test Page', 718, 'grid', 'preview', NULL, NULL, 'Add Link', 4, 'assets-test-page', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(739, 'PLAYGROUND', '', 0, 'grid - loose', 'preview', NULL, NULL, '', 2, 'playground', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(740, '', 'Footer Logo', 718, 'text', 'live', NULL, NULL, 'Add Link', 2, 'assets-footer-logo', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'black', NULL, NULL, 'filename'),
(741, '', 'Mark Ronson | Apple Music', 726, 'grid - series', 'live', NULL, NULL, 'Add Link', 6, 'series-mark-ronson--apple-music', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(742, '', 'Marathoners | Personal Work', 726, 'grid - series', 'preview', NULL, NULL, 'Add Link', 21, 'series-marathoners--personal-work', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(743, '', 'Natasha Lyonne | Entertainment Weekly', 726, 'grid - series', 'live', NULL, NULL, 'Add Link', 17, 'series-natasha-lyonne--entertainment-weekly', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(744, '', 'Colman Domingo | The Wrap', 726, 'grid - archive', 'live', NULL, NULL, 'Add Link', 8, 'series-colman-domingo--the-wrap', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(745, '', 'Muscle Beach | Personal Work', 726, 'grid - archive', 'live', NULL, NULL, 'Add Link', 20, 'series-muscle-beach--personal-work', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(746, '', 'Tim Cook | Wired Magazine', 726, 'grid - series', 'live', NULL, NULL, 'Add Link', 2, 'series-tim-cook--wired-magazine', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(753, 'OVERVIEW', '', 0, 'grid - loose', 'live', NULL, NULL, '', NULL, 'overview', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(747, '', 'Sports', 725, 'grid - archive large', 'live', NULL, NULL, 'Add Link', 8, 'archive-sports', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(748, '', 'Groups', 725, 'grid - archive large', 'live', NULL, NULL, 'Add Link', 2, 'archive-groups', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(749, '', 'Reportage', 725, 'grid - archive', 'preview', NULL, NULL, 'Add Link', 10, 'archive-reportage', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(750, '', 'Key Art', 725, 'grid - archive large', 'live', NULL, NULL, 'Add Link', 5, 'archive-key-art', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(751, '', 'Covers', 725, 'grid - archive large', 'live', NULL, NULL, 'Add Link', 3, 'archive-covers', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(754, '', 'Seth Rogen | Sunday Times Magazine', 726, 'grid - series', 'live', NULL, NULL, 'Add Link', 18, 'series-seth-rogen--sunday-times-magazine', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(755, '', 'Jockeys | Personal Work', 726, 'grid - series', 'live', NULL, NULL, 'Add Link', 11, 'series-jockeys--personal-work', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(756, '', 'Jockeys | Personal Work', 726, 'grid - series', 'preview', NULL, NULL, 'Add Link', 22, 'series-jockeys--personal-work', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(757, '', 'US Women\'s Soccer | 8x8 Magazine', 726, 'grid - series', 'live', NULL, NULL, 'Add Link', 19, 'series-us-womens-soccer--8x8-magazine', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(758, '', 'Eddie Redmayne | TheWrap', 726, 'grid', 'live', NULL, NULL, 'Add Link', 1, 'series-eddie-redmayne--thewrap', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(759, '', 'Pamela Anderson | Sunday Times Magazine', 726, 'grid', 'live', NULL, NULL, 'Add Link', 9, 'series-pamela-anderson--sunday-times-magazine', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(760, '', 'Picard | Paramount Plus', 726, 'grid', 'live', NULL, NULL, 'Add Link', 7, 'series-picard--paramount-plus', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(761, '', 'Las Cantantas | Personal Work', 726, 'grid', 'live', NULL, NULL, 'Add Link', 15, 'series-las-cantantas--personal-work', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(762, '', 'Music', 725, 'grid - archive large', 'live', NULL, NULL, 'Add Link', 6, 'archive-music', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(763, '', 'Lawrence Brothers | Red Bull', 726, 'grid', 'live', NULL, NULL, 'Add Link', 16, 'series-lawrence-brothers--red-bull', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(764, '', 'Elijah Wood | Sunday Times Magazine', 726, 'grid', 'live', NULL, NULL, 'Add Link', 12, 'series-elijah-wood--sunday-times-magazine', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(765, '', 'Lake Kids | Personal', 726, 'grid', 'live', NULL, NULL, 'Add Link', 4, 'series-lake-kids--personal', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(766, '', 'Color', 725, 'grid - archive large', 'live', NULL, NULL, 'Add Link', 9, 'archive-color', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(767, '', 'Image', 727, 'grid', 'live', NULL, NULL, 'Add Link', NULL, 'bio-image', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'filename'),
(768, '', 'David Letterman | Netflix', 726, 'grid - series', 'live', NULL, NULL, 'Add Link', 10, 'series-david-letterman--netflix', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(769, '', 'Jennifer Lopez | Various Clients', 726, 'grid - series', 'live', NULL, NULL, 'Add Link', 14, 'series-jennifer-lopez--various-clients', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag'),
(770, '', 'Anthony Hopkins | Sunday Times Magazine', 726, 'grid - series', 'live', NULL, NULL, 'Add Link', 5, 'series-anthony-hopkins--sunday-times-magazine', NULL, NULL, 0, 'page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drag');

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
(9238, 726, 15202, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9239, 726, 15203, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9329, 730, 15293, '', '', 103, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9328, 730, 15292, '', '', 105, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9327, 730, 15291, '', '', 104, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9324, 730, 15288, '', '', 100, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9325, 730, 15289, '', '', 99, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9326, 730, 15290, '', '', 101, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9322, 730, 15286, '', '', 98, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9319, 730, 15283, '', '', 93, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9320, 730, 15284, '', '', 94, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9321, 730, 15285, '', '', 95, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
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
(9222, 739, 15183, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 0),
(9219, 739, 15165, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0),
(9220, 739, 15164, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0),
(9221, 739, 15166, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0),
(9216, 739, 15170, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(9215, 739, 15169, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9217, 739, 15168, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0),
(9218, 739, 15167, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0),
(9223, 739, 15184, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 0),
(9224, 739, 15186, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 0),
(9225, 739, 15185, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 0),
(9226, 739, 15188, '', '', 12, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 0),
(9227, 739, 15189, '', '', 13, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 0),
(9228, 739, 15187, '', '', 14, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 0),
(9229, 739, 15191, '', '', 15, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 0),
(9446, 736, 15396, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9444, 736, 15394, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9244, 726, 15208, '', '', 12, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9243, 726, 15207, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9241, 726, 15205, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9242, 726, 15206, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9245, 726, 15209, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9246, 726, 15210, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9247, 726, 15211, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9248, 726, 15212, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9249, 726, 15213, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9575, 731, 15286, '', NULL, 11, '', '', '', '', 50, 50, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
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
(9283, 743, 15247, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9284, 743, 15248, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9285, 743, 15249, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9286, 743, 15250, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9287, 743, 15251, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9288, 743, 15252, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9290, 743, 15254, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9477, 752, 15423, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9899, 748, 15708, '', '', 24, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9294, 744, 15258, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9475, 752, 15421, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9476, 752, 15422, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9298, 744, 15262, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9299, 744, 15263, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9300, 744, 15264, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9301, 744, 15265, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9303, 744, 15267, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9304, 744, 15268, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9305, 744, 15269, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9306, 745, 15270, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9307, 745, 15271, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9308, 745, 15272, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9309, 745, 15273, '', '', 12, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9676, 745, 15535, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9857, 751, 15666, '', '', 25, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9893, 730, 15702, '', '', 26, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9318, 745, 15282, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9330, 730, 15294, '', '', 106, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9331, 730, 15295, '', '', 116, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9332, 730, 15296, '', '', 107, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9333, 730, 15297, '', '', 112, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9334, 730, 15298, '', '', 109, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9335, 730, 15299, '', '', 96, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9336, 730, 15300, '', '', 110, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9337, 730, 15301, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9338, 730, 15302, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9853, 750, 15662, '', '', 25, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9340, 730, 15304, '', '', 20, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9341, 730, 15305, '', '', 113, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9342, 730, 15306, '', '', 114, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9343, 730, 15307, '', '', 115, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9344, 730, 15308, '', '', 117, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9905, 730, 15714, '', '', 39, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9347, 730, 15311, '', '', 119, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9348, 730, 15312, '', '', 121, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9349, 730, 15313, '', '', 118, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9906, 730, 15715, '', '', 36, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9904, 730, 15713, '', '', 38, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10097, 753, 15889, '', '', 0, '', '', '', '', 587, 2, 30.86, 1, NULL, NULL, NULL, NULL, 31, 0),
(9907, 730, 15716, '', '', 29, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9354, 730, 15318, '', '', 92, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9357, 730, 15321, '', '', 122, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9358, 730, 15322, '', '', 123, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9359, 730, 15323, '', '', 124, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10092, 730, 15843, '', '', 22, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9363, 730, 15327, '', '', 120, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9554, 750, 15379, '', '', 13, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9366, 730, 15330, '', '', 125, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9367, 730, 15331, '', '', 127, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9368, 730, 15332, '', '', 128, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9369, 730, 15333, '', '', 129, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9370, 730, 15334, '', '', 130, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9371, 730, 15335, '', '', 126, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9372, 730, 15336, '', '', 131, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9889, 730, 15698, '', '', 24, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9759, 750, 15576, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9758, 750, 15575, '', '', 14, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9376, 730, 15340, '', '', 132, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9378, 730, 15342, '', '', 21, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9379, 730, 15343, '', '', 133, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9380, 730, 15344, '', '', 78, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9381, 730, 15345, '', '', 134, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9382, 730, 15346, '', '', 135, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9383, 730, 15347, '', '', 137, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9384, 730, 15348, '', '', 102, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9385, 730, 15349, '', '', 138, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9386, 730, 15350, '', '', 147, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9387, 730, 15351, '', '', 148, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9388, 730, 15352, '', '', 149, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9389, 730, 15353, '', '', 150, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9390, 730, 15354, '', '', 151, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9391, 730, 15355, '', '', 152, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9392, 730, 15356, '', '', 153, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9393, 730, 15357, '', '', 154, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9394, 730, 15358, '', '', 155, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9395, 730, 15359, '', '', 156, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9396, 730, 15360, '', '', 158, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9397, 730, 15361, '', '', 157, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9398, 730, 15362, '', '', 165, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9399, 730, 15363, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9400, 730, 15364, '', '', 83, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9401, 730, 15365, '', '', 167, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9402, 730, 15366, '', '', 168, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9403, 730, 15367, '', '', 166, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9772, 761, 15589, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9406, 730, 15370, '', '', 30, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10147, 730, 15905, '', '', 32, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9812, 730, 15629, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9900, 730, 15709, '', '', 58, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9412, 730, 15376, '', '', 170, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9414, 730, 15378, '', '', 169, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9556, 750, 15381, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9557, 750, 15382, '', '', 12, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9776, 763, 15593, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9910, 730, 15719, '', '', 50, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10095, 748, 15887, '', '', 12, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9428, 730, 15392, '', '', 136, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9431, 741, 15212, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9432, 741, 15209, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9433, 741, 15203, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9798, 741, 15615, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9436, 741, 15207, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9437, 741, 15202, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9438, 741, 15210, '', '', 4, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9439, 741, 15208, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9441, 741, 15211, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9442, 741, 15206, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9449, 736, 15399, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9450, 736, 15400, '', '', 8, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9452, 736, 15402, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9455, 736, 15405, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9456, 736, 15406, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9459, 736, 15409, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9460, 736, 15410, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9461, 736, 15411, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9462, 736, 15412, '', '', 12, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9463, 736, 15413, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9464, 736, 15414, '', '', 13, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9465, 746, 15415, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9466, 746, 15416, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9467, 746, 15417, '', '', 7, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9468, 746, 15418, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10109, 753, 15901, '', '', 0, '', '', '', '', 673, 5, 36.93, 1, NULL, NULL, NULL, NULL, 34, 0),
(9474, 752, 15420, '', '', 10, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9478, 752, 15424, '', '', 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9479, 752, 15425, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9480, 752, 15426, '', '', 3, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9481, 752, 15427, '', '', 5, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9482, 752, 15428, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9483, 752, 15429, '', '', 11, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9484, 752, 15430, '', '', 6, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9486, 717, 15432, '', '', 15, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9632, 746, 15491, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9629, 755, 15488, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9884, 730, 15693, '', '', 49, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9882, 748, 15691, '', '', 27, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9883, 748, 15692, '', '', 11, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9637, 758, 15496, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9638, 758, 15497, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9639, 758, 15498, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10089, 762, 15882, '', '', 17, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9942, 753, 15750, '', '', 0, '', '', '', '', 134, 40, 20.02, 1, NULL, NULL, NULL, NULL, 9, 0),
(9569, 739, 15447, NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, 48, 16.17, 1, NULL, NULL, NULL, NULL, 15, 0),
(9570, 739, 15448, NULL, NULL, 0, NULL, NULL, NULL, NULL, 9, 9, 40.88, 1, NULL, NULL, NULL, NULL, 16, 0),
(9571, 739, 15449, NULL, NULL, 0, NULL, NULL, NULL, NULL, 18, 56, 20.00, 2, NULL, NULL, NULL, NULL, 17, 0),
(9642, 758, 15501, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9641, 758, 15500, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9852, 751, 15493, '', '', 1, '', '', '', '', 45, 45, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9640, 758, 15499, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9636, 758, 15495, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9901, 730, 15710, '', '', 35, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9630, 755, 15489, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9576, 731, 15289, '', NULL, 12, '', '', '', '', 55, 55, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9577, 731, 15288, '', NULL, 13, '', '', '', '', 60, 60, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9578, 731, 15290, '', NULL, 14, '', '', '', '', 65, 65, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9579, 731, 15291, '', NULL, 15, '', '', '', '', 70, 70, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9580, 731, 15292, '', NULL, 16, '', '', '', '', 75, 75, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9581, 731, 15293, '', NULL, 17, '', '', '', '', 80, 80, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9582, 731, 15294, '', NULL, 18, '', '', '', '', 85, 85, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9583, 747, 15309, '', '', 18, '', '', '', '', 150, 150, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10063, 747, 15856, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9585, 747, 15313, '', '', 19, '', '', '', '', 165, 165, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9586, 747, 15315, '', '', 21, '', '', '', '', 170, 170, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9587, 747, 15321, '', '', 6, '', '', '', '', 185, 185, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9588, 747, 15327, '', '', 20, '', '', '', '', 200, 200, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9589, 747, 15345, '', '', 16, '', '', '', '', 280, 280, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9590, 731, 15298, '', NULL, 22, '', '', '', '', 105, 105, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9591, 731, 15302, '', NULL, 24, '', '', '', '', 115, 115, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9592, 731, 15376, '', NULL, 88, '', '', '', '', 435, 435, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9593, 731, 15378, '', NULL, 89, '', '', '', '', 440, 440, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9595, 754, 15454, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9597, 754, 15456, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9598, 754, 15457, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9599, 754, 15458, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9600, 754, 15459, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9601, 754, 15460, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9603, 755, 15462, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9602, 755, 15461, '', '', 11, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9605, 755, 15464, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9607, 755, 15466, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9608, 755, 15467, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9609, 755, 15468, '', '', 12, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9610, 755, 15469, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9611, 755, 15470, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9631, 746, 15490, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9628, 755, 15487, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10024, 766, 15324, '', '', 6, '', '', '', '', 35, 35, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9612, 757, 15471, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9613, 757, 15472, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9614, 757, 15473, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9615, 757, 15474, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9616, 757, 15475, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9617, 757, 15476, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9618, 757, 15477, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9619, 757, 15478, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9620, 757, 15479, '', '', 11, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9621, 757, 15480, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9622, 757, 15481, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10104, 753, 15896, '', '', 0, '', '', '', '', 497, 27, 36.81, 1, NULL, NULL, NULL, NULL, 26, 0),
(9633, 746, 15492, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9851, 746, 15661, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9627, 755, 15486, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9643, 758, 15502, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9644, 758, 15503, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9645, 758, 15504, '', '', 11, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9646, 758, 15505, '', '', 12, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9647, 759, 15506, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9648, 759, 15507, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9649, 759, 15508, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9651, 759, 15510, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9652, 759, 15511, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9653, 759, 15512, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9654, 759, 15513, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9656, 759, 15515, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9799, 759, 15616, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9658, 760, 15517, '', '', 0, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9659, 760, 15518, '', '', 0, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9660, 760, 15519, '', '', 0, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9661, 760, 15520, '', '', 0, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9662, 760, 15521, '', '', 0, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9663, 760, 15522, '', '', 0, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9664, 761, 15523, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9665, 761, 15524, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9666, 761, 15525, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9667, 761, 15526, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9668, 761, 15527, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9669, 761, 15528, '', '', 11, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9680, 745, 15539, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9681, 745, 15540, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9896, 751, 15705, '', '', 29, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9854, 751, 15663, '', '', 27, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9678, 745, 15537, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9683, 745, 15542, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9895, 751, 15704, '', '', 30, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9693, 750, 15551, '', '', 15, '', '', '', '', 190, 190, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9694, 750, 15550, '', '', 23, '', '', '', '', 195, 195, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9695, 750, 15549, '', '', 7, '', '', '', '', 200, 200, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9696, 750, 15548, '', '', 6, '', '', '', '', 205, 205, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9697, 750, 15547, '', '', 10, '', '', '', '', 210, 210, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9860, 751, 15669, '', '', 16, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9858, 730, 15667, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9769, 750, 15586, '', '', 18, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9702, 750, 15553, '', '', 5, '', '', '', '', 195, 195, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9703, 750, 15554, '', '', 3, '', '', '', '', 200, 200, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9704, 730, 15555, '', '', 111, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9706, 730, 15557, '', '', 144, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9708, 730, 15559, '', '', 17, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9709, 730, 15560, '', '', 145, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9710, 730, 15561, '', '', 146, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10023, 766, 15363, '', '', 13, '', '', '', '', 15, 15, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9804, 730, 15621, '', '', 82, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10122, 762, 15699, '', '', 20, '', '', '', '', 155, 155, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10120, 762, 15865, '', '', 18, '', '', '', '', 140, 140, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10121, 762, 15877, '', '', 19, '', '', '', '', 145, 145, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10123, 762, 15719, '', '', 21, '', '', '', '', 165, 165, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10124, 762, 15725, '', '', 2, '', '', '', '', 175, 175, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10113, 762, 15620, '', '', 1, '', '', '', '', 10, 10, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10114, 762, 15363, '', '', 6, '', '', '', '', 20, 20, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10115, 762, 15869, '', '', 10, '', '', '', '', 55, 55, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10116, 762, 15859, '', '', 11, '', '', '', '', 60, 60, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10117, 762, 15638, '', '', 12, '', '', '', '', 65, 65, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10118, 762, 15559, '', '', 13, '', '', '', '', 70, 70, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10119, 762, 15370, '', '', 24, '', '', '', '', 110, 110, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9881, 748, 15690, '', '', 33, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9731, 730, 15563, '', '', 97, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9732, 731, 15563, '', NULL, 11, '', '', '', '', 50, 50, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9897, 751, 15706, '', '', 17, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9880, 748, 15689, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9894, 751, 15703, '', '', 28, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9735, 748, 15290, '', '', 29, '', '', '', '', 70, 70, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10181, 762, 15350, '', NULL, 145, '', '', '', '', 720, 720, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9970, 751, 15778, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9740, 748, 15331, '', '', 8, '', '', '', '', 260, 260, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9741, 748, 15340, '', '', 34, '', '', '', '', 300, 300, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9743, 748, 15342, '', '', 5, '', '', '', '', 310, 310, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9744, 748, 15344, '', '', 19, '', '', '', '', 320, 320, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9745, 748, 15345, '', '', 25, '', '', '', '', 325, 325, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9746, 748, 15346, '', '', 13, '', '', '', '', 330, 330, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9747, 748, 15347, '', '', 22, '', '', '', '', 335, 335, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9748, 748, 15348, '', '', 1, '', '', '', '', 340, 340, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9890, 730, 15699, '', '', 47, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9750, 730, 15567, '', '', 139, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9751, 730, 15568, '', '', 140, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9752, 730, 15569, '', '', 141, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9753, 730, 15570, '', '', 142, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9754, 730, 15571, '', '', 108, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9879, 748, 15688, '', '', 15, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9760, 750, 15577, '', '', 21, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9782, 763, 15599, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9773, 761, 15590, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9771, 750, 15588, '', '', 19, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9770, 750, 15587, '', '', 17, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9761, 750, 15578, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9762, 750, 15579, '', '', 24, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9763, 750, 15580, '', '', 22, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9765, 750, 15582, '', '', 20, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9766, 750, 15583, '', '', 26, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9767, 750, 15584, '', '', 27, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9774, 761, 15591, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9775, 761, 15592, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9778, 763, 15595, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9779, 763, 15596, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9780, 763, 15597, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9781, 763, 15598, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9783, 763, 15600, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9784, 763, 15601, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9785, 763, 15602, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9786, 763, 15603, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9788, 764, 15605, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9789, 764, 15606, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9790, 764, 15607, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9791, 764, 15608, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9792, 764, 15609, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9793, 764, 15610, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9794, 764, 15611, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9795, 764, 15612, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9797, 764, 15614, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9800, 759, 15617, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9801, 730, 15618, '', '', 80, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9802, 730, 15619, '', '', 81, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9803, 730, 15620, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9805, 730, 15622, '', '', 85, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9806, 730, 15623, '', '', 86, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9807, 730, 15624, '', '', 87, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9808, 730, 15625, '', '', 84, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9809, 730, 15626, '', '', 89, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9810, 730, 15627, '', '', 90, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9811, 730, 15628, '', '', 79, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9813, 730, 15630, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9814, 730, 15631, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10102, 753, 15894, '', '', 0, '', '', '', '', 291, 35, 28.76, 1, NULL, NULL, NULL, NULL, 17, 0),
(9818, 744, 15635, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9848, 751, 15633, '', '', 2, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9861, 730, 15670, '', '', 40, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9850, 751, 15660, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9821, 730, 15638, '', '', 16, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9855, 751, 15664, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9824, 745, 15641, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9825, 745, 15642, NULL, NULL, 6, NULL, NULL, NULL, NULL, 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9903, 730, 15712, '', '', 61, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9856, 751, 15665, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9827, 747, 15626, '', '', 23, '', '', '', '', 50, 50, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9828, 747, 15627, '', '', 3, '', '', '', '', 55, 55, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10094, 748, 15886, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9830, 750, 15643, '', '', 4, '', '', '', '', 5, 5, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9831, 765, 15644, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9832, 765, 15645, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9833, 765, 15646, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9834, 765, 15647, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9835, 765, 15648, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9836, 765, 15649, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9837, 765, 15650, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9838, 765, 15651, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9839, 765, 15652, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9840, 765, 15653, '', '', 12, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9841, 730, 15654, '', '', 69, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9842, 730, 15655, '', '', 70, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9844, 730, 15657, '', '', 71, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9845, 743, 15658, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10093, 747, 15885, '', '', 15, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10103, 753, 15895, '', '', 0, '', '', '', '', 511, 69, 28.87, 1, NULL, NULL, NULL, NULL, 28, 0),
(9847, 751, 15632, '', '', 9, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9862, 730, 15671, '', '', 67, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9863, 730, 15672, '', '', 42, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9865, 730, 15674, '', '', 41, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9866, 730, 15675, '', '', 91, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9868, 730, 15677, '', '', 74, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9869, 730, 15678, '', '', 25, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9870, 730, 15679, '', '', 62, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10107, 753, 15899, '', '', 0, '', '', '', '', 439, 56, 40.05, 1, NULL, NULL, NULL, NULL, 24, 0),
(9873, 730, 15682, '', '', 59, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9874, 730, 15683, '', '', 65, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9875, 730, 15684, '', '', 64, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9876, 730, 15685, '', '', 63, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9877, 730, 15686, '', '', 46, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9878, 730, 15687, '', '', 72, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10099, 753, 15891, '', '', 0, '', '', '', '', 293, 66, 33.01, 1, NULL, NULL, NULL, NULL, 18, 0),
(9911, 730, 15720, '', '', 28, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9912, 730, 15721, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9913, 730, 15722, '', '', 37, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9914, 730, 15723, '', '', 23, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9915, 730, 15724, '', '', 52, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9916, 730, 15725, '', '', 54, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9917, 751, 15726, '', '', 14, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9918, 750, 15727, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9919, 751, 15728, '', '', 31, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9920, 751, 15729, '', '', 19, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9921, 751, 15730, '', '', 12, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9922, 751, 15731, '', '', 13, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9923, 751, 15732, '', '', 11, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9924, 751, 15733, '', '', 32, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9925, 751, 15734, '', '', 22, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9926, 767, 15735, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10106, 753, 15898, '', '', 0, '', '', '', '', 735, 78, 18.60, 1, NULL, NULL, NULL, NULL, 37, 0),
(9928, 753, 15736, '', '', 0, '', '', '', '', 0, 32, 34.16, 1, NULL, NULL, NULL, NULL, 0, 0),
(10108, 753, 15900, '', '', 0, '', '', '', '', 510, 3, 20.08, 1, NULL, NULL, NULL, NULL, 27, 0),
(9937, 753, 15745, '', '', 0, '', '', '', '', 17, 2, 21.90, 1, NULL, NULL, NULL, NULL, 2, 0),
(9930, 753, 15738, '', '', 0, '', '', '', '', 13, 72, 24.98, 1, NULL, NULL, NULL, NULL, 1, 0),
(9931, 753, 15739, '', '', 0, '', '', '', '', 51, 42, 43.85, 1, NULL, NULL, NULL, NULL, 3, 0),
(9932, 753, 15740, '', '', 0, '', '', '', '', 57, 4, 32.11, 1, NULL, NULL, NULL, NULL, 4, 0),
(9933, 753, 15741, '', '', 0, '', '', '', '', 83, 69, 29.71, 1, NULL, NULL, NULL, NULL, 5, 0),
(9934, 753, 15742, '', '', 0, '', '', '', '', 94, 43, 20.00, 1, NULL, NULL, NULL, NULL, 6, 0),
(9935, 753, 15743, '', '', 0, '', '', '', '', 106, 7, 25.72, 1, NULL, NULL, NULL, NULL, 7, 0),
(9938, 753, 15746, '', '', 0, '', '', '', '', 237, 33, 39.31, 1, NULL, NULL, NULL, NULL, 14, 0),
(9939, 753, 15747, '', '', 0, '', '', '', '', 145, 2, 32.90, 1, NULL, NULL, NULL, NULL, 10, 0),
(9940, 753, 15748, '', '', 0, '', '', '', '', 130, 65, 31.20, 1, NULL, NULL, NULL, NULL, 8, 0),
(9941, 753, 15749, '', '', 0, '', '', '', '', 170, 37, 20.59, 1, NULL, NULL, NULL, NULL, 11, 0),
(9943, 753, 15751, '', '', 0, '', '', '', '', 381, 50, 40.44, 1, NULL, NULL, NULL, NULL, 23, 0),
(9944, 753, 15752, '', '', 0, '', '', '', '', 381, 9, 40.33, 1, NULL, NULL, NULL, NULL, 22, 0),
(9945, 753, 15753, '', '', 0, '', '', '', '', 185, 60, 34.00, 1, NULL, NULL, NULL, NULL, 12, 0),
(9946, 753, 15754, '', '', 0, '', '', '', '', 201, 4, 50.12, 1, NULL, NULL, NULL, NULL, 13, 0),
(9949, 753, 15757, '', '', 0, '', '', '', '', 250, 4, 22.46, 1, NULL, NULL, NULL, NULL, 16, 0),
(9948, 753, 15756, '', '', 0, '', '', '', '', 296, 2, 28.87, 1, NULL, NULL, NULL, NULL, 19, 0),
(9950, 753, 15758, '', '', 0, '', '', '', '', 242, 75, 21.95, 1, NULL, NULL, NULL, NULL, 15, 0);
INSERT INTO `cat_pics` (`id`, `catid`, `picid`, `rowBreak`, `imgSize`, `sortBy`, `topMargin`, `leftMargin`, `colStart`, `colEnd`, `pos_top`, `pos_left`, `width`, `layer`, `pos_top_mobile`, `pos_left_mobile`, `width_mobile`, `layer_mobile`, `vo_desktop`, `vo_mobile`) VALUES
(9951, 753, 15759, '', '', 0, '', '', '', '', 335, 1, 55.02, 1, NULL, NULL, NULL, NULL, 21, 0),
(9952, 753, 15760, '', '', 0, '', '', '', '', 332, 60, 33.01, 1, NULL, NULL, NULL, NULL, 20, 0),
(9954, 766, 15762, '', '', 11, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9956, 748, 15764, '', '', 30, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9957, 748, 15765, '', '', 18, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9958, 748, 15766, '', '', 28, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9959, 748, 15767, '', '', 14, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9960, 748, 15768, '', '', 17, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9961, 748, 15769, '', '', 20, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9962, 748, 15770, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9963, 748, 15771, '', '', 32, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9964, 748, 15772, '', '', 26, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9965, 748, 15773, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9966, 748, 15774, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9967, 748, 15775, '', '', 21, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9968, 748, 15776, '', '', 23, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10096, 751, 15888, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9971, 750, 15779, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9972, 748, 15780, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9973, 761, 15781, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9974, 751, 15782, '', '', 23, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9975, 751, 15783, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9976, 751, 15784, '', '', 33, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9977, 753, 15785, '', '', 0, '', '', '', '', 611, 60, 33.35, 1, NULL, NULL, NULL, NULL, 32, 0),
(9978, 753, 15786, '', '', 0, '', '', '', '', 633, 4, 52.24, 1, NULL, NULL, NULL, NULL, 33, 0),
(10007, 765, 15815, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9980, 768, 15788, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9981, 768, 15789, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9982, 768, 15790, '', '', 11, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9983, 768, 15791, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9984, 768, 15792, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9985, 768, 15793, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9986, 768, 15794, '', '', 15, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9987, 768, 15795, '', '', 12, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9988, 768, 15796, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9989, 768, 15797, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9990, 768, 15798, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9991, 768, 15799, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9992, 768, 15800, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9993, 768, 15801, '', '', 17, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9994, 768, 15802, '', '', 13, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9995, 768, 15803, '', '', 14, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9996, 768, 15804, '', '', 16, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9997, 758, 15805, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9998, 746, 15806, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9999, 746, 15807, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10001, 753, 15809, '', '', 0, '', '', '', '', 553, 8, 21.67, 1, NULL, NULL, NULL, NULL, 29, 0),
(10020, 753, 15828, '', '', 0, '', '', '', '', 738, 2, 26.32, 1, NULL, NULL, NULL, NULL, 38, 0),
(10002, 753, 15810, '', '', 0, '', '', '', '', 563, 40, 59.10, 1, NULL, NULL, NULL, NULL, 30, 0),
(10005, 753, 15813, '', '', 0, '', '', '', '', 723, 34, 39.93, 1, NULL, NULL, NULL, NULL, 36, 0),
(10006, 753, 15814, '', '', 0, '', '', '', '', 449, 13, 25.58, 1, NULL, NULL, NULL, NULL, 25, 0),
(10008, 765, 15816, NULL, NULL, 11, NULL, NULL, NULL, NULL, 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10010, 769, 15818, '', '', 11, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10011, 769, 15819, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10012, 769, 15820, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10013, 769, 15821, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10014, 769, 15822, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10021, 769, 15829, '', '', 12, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10015, 769, 15823, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10016, 769, 15824, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10017, 769, 15825, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10018, 769, 15826, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10019, 769, 15827, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10022, 769, 15830, '', '', 13, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10025, 766, 15630, '', '', 25, '', '', '', '', 50, 50, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10026, 766, 15722, '', '', 10, '', '', '', '', 120, 120, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10027, 766, 15697, '', '', 12, '', '', '', '', 145, 145, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10028, 766, 15656, '', '', 15, '', '', '', '', 165, 165, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10041, 766, 15834, '', '', 18, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10030, 766, 15285, '', '', 22, '', '', '', '', 365, 365, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10031, 766, 15344, '', '', 16, '', '', '', '', 415, 415, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10032, 766, 15571, '', '', 2, '', '', '', '', 430, 430, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10064, 766, 15857, '', '', 17, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10034, 766, 15346, '', '', 23, '', '', '', '', 605, 605, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10035, 766, 15568, '', '', 8, '', '', '', '', 630, 630, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10036, 766, 15353, '', '', 9, '', '', '', '', 675, 675, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10037, 766, 15354, '', '', 4, '', '', '', '', 680, 680, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10038, 766, 15831, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10039, 766, 15832, '', '', 24, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10040, 766, 15833, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10042, 766, 15835, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10043, 766, 15836, '', '', 19, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10044, 747, 15837, '', '', 24, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10045, 747, 15838, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10046, 747, 15839, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10047, 747, 15840, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10050, 747, 15843, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10051, 747, 15844, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10052, 766, 15845, '', '', 21, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10053, 769, 15846, '', '', 9, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10054, 766, 15847, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10055, 766, 15848, '', '', 14, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10056, 747, 15849, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10057, 747, 15850, '', '', 11, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10058, 747, 15851, '', '', 14, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10059, 747, 15852, '', '', 22, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10060, 747, 15853, '', '', 17, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10061, 747, 15854, '', '', 13, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10062, 747, 15855, '', '', 12, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10065, 730, 15858, '', '', 68, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10066, 730, 15859, '', '', 11, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10067, 730, 15860, '', '', 76, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10069, 730, 15862, '', '', 31, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10070, 730, 15863, '', '', 60, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10071, 730, 15864, '', '', 159, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10072, 730, 15865, '', '', 44, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10073, 730, 15866, '', '', 73, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10074, 730, 15867, '', '', 75, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10075, 730, 15868, '', '', 77, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10076, 730, 15869, '', '', 10, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10077, 730, 15870, '', '', 66, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10078, 730, 15871, '', '', 56, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10079, 730, 15872, '', '', 161, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10080, 730, 15873, '', '', 162, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10081, 730, 15874, '', '', 163, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10082, 730, 15875, '', '', 160, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10083, 730, 15876, '', '', 57, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10084, 730, 15877, '', '', 45, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10085, 730, 15878, '', '', 164, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10087, 730, 15880, '', '', 33, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10088, 762, 15881, '', '', 15, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10090, 762, 15883, '', '', 14, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10091, 762, 15884, '', '', 16, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10110, 753, 15902, '', '', 0, '', '', '', '', 682, 48, 48.67, 1, NULL, NULL, NULL, NULL, 35, 0),
(10111, 750, 15903, '', '', 16, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10112, 766, 15904, '', '', 20, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10125, 762, 15871, '', '', 8, '', '', '', '', 180, 180, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10126, 762, 15876, '', '', 23, '', '', '', '', 185, 185, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10127, 762, 15862, '', '', 25, '', '', '', '', 200, 200, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10128, 762, 15880, '', '', 27, '', '', '', '', 205, 205, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10129, 762, 15863, '', '', 28, '', '', '', '', 210, 210, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10130, 762, 15712, '', '', 29, '', '', '', '', 215, 215, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10131, 762, 15685, '', '', 30, '', '', '', '', 225, 225, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10132, 762, 15684, '', '', 31, '', '', '', '', 230, 230, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10133, 762, 15870, '', '', 32, '', '', '', '', 240, 240, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10134, 762, 15671, '', '', 33, '', '', '', '', 245, 245, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10135, 762, 15858, '', '', 34, '', '', '', '', 250, 250, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10136, 762, 15866, '', '', 36, '', '', '', '', 275, 275, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10137, 762, 15677, '', '', 37, '', '', '', '', 280, 280, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10138, 762, 15867, '', '', 38, '', '', '', '', 285, 285, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10139, 762, 15860, '', '', 39, '', '', '', '', 290, 290, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10140, 762, 15868, '', '', 40, '', '', '', '', 295, 295, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10141, 762, 15344, '', '', 41, '', '', '', '', 300, 300, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10142, 762, 15364, '', '', 7, '', '', '', '', 325, 325, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10143, 762, 15283, '', '', 42, '', '', '', '', 370, 370, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10144, 762, 15347, '', '', 43, '', '', '', '', 605, 605, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10145, 762, 15349, '', '', 44, '', '', '', '', 610, 610, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10146, 762, 15557, '', '', 35, '', '', '', '', 635, 635, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10148, 730, 15906, '', '', 34, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10149, 730, 15907, '', '', 13, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10150, 730, 15908, '', '', 15, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10151, 730, 15909, '', '', 14, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10153, 730, 15911, '', '', 55, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10154, 762, 15905, '', '', 26, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10155, 762, 15906, '', '', 22, '', '', '', '', 5, 5, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10156, 762, 15907, '', '', 4, '', '', '', '', 10, 10, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10157, 762, 15908, '', '', 3, '', '', '', '', 15, 15, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10158, 762, 15909, '', '', 5, '', '', '', '', 20, 20, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10159, 762, 15911, '', '', 9, '', '', '', '', 25, 25, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10160, 751, 15912, '', '', 15, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10161, 730, 15913, '', '', 48, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10162, 730, 15914, '', '', 12, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10163, 730, 15915, '', '', 27, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10164, 747, 15913, '', NULL, 42, '', '', '', '', 205, 205, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10165, 747, 15709, '', NULL, 50, '', '', '', '', 245, 245, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10166, 747, 15682, '', NULL, 51, '', '', '', '', 250, 250, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10168, 751, 15917, '', '', 18, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10169, 751, 15918, '', '', 21, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10170, 751, 15919, '', '', 24, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10171, 751, 15920, '', '', 26, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10172, 751, 15921, '', '', 20, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10173, 751, 15922, '', '', 8, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10174, 730, 15923, '', '', 88, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10175, 730, 15924, '', '', 43, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10176, 730, 15925, '', '', 143, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10177, 730, 15926, '', '', 19, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10178, 730, 15927, '', '', 18, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10179, 766, 15570, '', NULL, 140, '', '', '', '', 695, 695, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10180, 748, 15928, '', '', 31, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10182, 762, 15351, '', NULL, 146, '', '', '', '', 725, 725, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10183, 762, 15352, '', NULL, 147, '', '', '', '', 730, 730, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10184, 762, 15354, '', NULL, 149, '', '', '', '', 740, 740, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10185, 762, 15358, '', NULL, 153, '', '', '', '', 760, 760, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10186, 762, 15367, '', NULL, 164, '', '', '', '', 815, 815, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10187, 762, 15365, '', NULL, 165, '', '', '', '', 820, 820, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10188, 762, 15366, '', NULL, 166, '', '', '', '', 825, 825, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10189, 730, 15929, '', '', 51, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10190, 730, 15930, '', '', 53, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10191, 770, 15931, '', '', 5, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10192, 770, 15932, '', '', 1, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10193, 770, 15933, '', '', 4, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10195, 770, 15935, '', '', 6, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10196, 770, 15936, '', '', 7, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10197, 770, 15937, '', '', 2, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10198, 770, 15938, '', '', 3, '', '', '', '', 0, 0, 20.00, NULL, NULL, NULL, NULL, NULL, 0, 0);

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
(990, 727, NULL, NULL, '<h3>JOE PUGLIESE</h3>\n<div class=\"bio_wrap\">\n<p data-start=\"129\" data-end=\"467\">California native <strong data-start=\"147\" data-end=\"163\">Joe Pugliese</strong> is a Los Angeles&ndash;based photographer who frequently works in New York City. He discovered photography in high school, developing film and experimenting in his hometown newspaper&rsquo;s darkroom, and has since built a career capturing editorial and portrait images that tell stories with depth and character.</p>\n<p data-start=\"469\" data-end=\"641\">Starting as a photojournalist, Joe transitioned to editorial photography, creating portraits of actors, musicians, scientists, politicians, and other influential figures.</p>\n<p data-start=\"643\" data-end=\"817\">When he&rsquo;s not behind the camera, Joe enjoys cycling in the hills around Los Angeles, baking at home, and traveling to the Sierras to hike and camp with his young son.</p>\n<p><em>Photo &copy; Lucian Pugliese</em></p>\n</div>\n<h3>AWARD / HONORS</h3>\n<table style=\"border-collapse: collapse; width: 100%; height: 271px;\" border=\"1\"><colgroup><col style=\"width: 18.0628%;\"><col style=\"width: 81.9372%;\"></colgroup>\n<tbody>\n<tr style=\"height: 21px;\">\n<td>2025</td>\n<td>American Photography 41 Cover Image</td>\n</tr>\n<tr>\n<td>2025</td>\n<td>APA LA Panelist \"Spotlight on Entertainment Photography</td>\n</tr>\n<tr style=\"height: 21.8125px;\">\n<td>2014-2024</td>\n<td>American Photography 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40 Book Selections</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2018</td>\n<td>APA National Photo Contest \"Best of Show\"</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2019</td>\n<td>Communication Arts Photo Annual Book Selection</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2018, 2019</td>\n<td>Photo District News Photo Annual: Editorial Portrait</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2017</td>\n<td>Photo District News Photo Annual: Editorial Portrait, Website, Self-Promotion</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2014</td>\n<td>Instructor, Santa Fe Photographic Workshop \"The Editorial Portrait\"</td>\n</tr>\n<tr style=\"height: 22.8125px;\">\n<td>2016</td>\n<td>International Photo Awards First Place Portrait</td>\n</tr>\n<tr style=\"height: 22.875px;\">\n<td>2014</td>\n<td>PDN Featured Photographer</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>', '<h3>SELECT CLIENTS</h3>\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"><colgroup><col style=\"width: 49.9346%;\"><col style=\"width: 49.9346%;\"></colgroup>\n<tbody>\n<tr>\n<td>\n<ul>\n<li>Apple</li>\n<li>Wired</li>\n<li>HBO</li>\n<li>Time Magazine</li>\n<li>Netflix</li>\n<li>Paramount Plus</li>\n<li>BBDO</li>\n<li>Amazon Studios</li>\n<li>Hulu</li>\n<li>Men\'s Journal</li>\n<li>Paypal</li>\n<li>Billboard</li>\n<li>ESPN</li>\n<li>TBWA CHIAT DAY</li>\n<li>Harpo Productions</li>\n</ul>\n</td>\n<td>\n<ul>\n<li>Esquire</li>\n<li>Town &amp; Country</li>\n<li>Apple TV+</li>\n<li>NBC Universal</li>\n<li>American Express</li>\n<li>Outside Magazine</li>\n<li>The New Yorker</li>\n<li>Oglivy &amp; Mather</li>\n<li>The Hollywood Reporter</li>\n<li>Bloomberg</li>\n<li>Rivian</li>\n<li>Warner Brothers</li>\n<li>Sony Television</li>\n<li>GQ Magazine</li>\n<li>London Sunday Times Magazine</li>\n</ul>\n</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>', NULL, NULL),
(991, 728, NULL, NULL, '<table style=\"border-collapse: collapse; width: 100%; height: 343.438px;\" border=\"1\"><colgroup><col style=\"width: 33.3333%;\"><col style=\"width: 33.3333%;\"><col style=\"width: 33.3333%;\"></colgroup>\n<tbody>\n<tr style=\"height: 61.4375px;\">\n<td>\n<h2>JOE PUGLIESE</h2>\n</td>\n<td>\n<h2>BOOKINGS</h2>\n</td>\n<td>\n<h2>IMAGE USE</h2>\n</td>\n</tr>\n<tr style=\"height: 261px;\">\n<td style=\"vertical-align: top;\">\n<p>Los Angeles / New York</p>\n<h3>GENERAL INQUIRIES</h3>\n<p><a href=\"mailto:studio@joepug.com\">studio@joepug.com</a><br>tel: +1 917 328 3802</p>\n</td>\n<td style=\"vertical-align: top;\">\n<p>Represented by:&nbsp;<a href=\"https://www.ba-reps.com/photographers/joe-pugliese\" target=\"_blank\" rel=\"noopener\"><strong>B&amp;A Reps</strong></a></p>\n<h3>NYC / WORLDWIDE</h3>\n<p>EhrinFeeley<br><a href=\"mailto:ehrin@ba-reps.com\">ehrin@ba-reps.com</a><br>tel: +1 917 587 8286</p>\n<h3>UK/EUROPE</h3>\n<p>Beth Wightman<br><a href=\"mailto:beth@ba-reps.com\">beth@ba-reps.com</a><br>tel: +44 787 674 7296</p>\n</td>\n<td style=\"vertical-align: top;\">\n<p>Syndication by:&nbsp;<strong><a href=\"https://www.augustimage.com/\" target=\"_blank\" rel=\"noopener\">August</a></strong></p>\n<p><span style=\"color: #000000;\"><a style=\"color: #000000;\" title=\"Joe Pugliese Photographs\" href=\"mailto:info@augustimage.com\">info@augustimage.com</a></span><br>tel: +1 212 777 0088</p>\n</td>\n</tr>\n</tbody>\n</table>', '', NULL, NULL),
(1010, NULL, 15667, NULL, '', '', NULL, NULL),
(1011, NULL, 15631, NULL, '', '', NULL, NULL),
(1012, NULL, 15630, NULL, '', '', NULL, NULL),
(992, 740, NULL, NULL, '', '', NULL, NULL),
(993, 717, NULL, NULL, '', '', NULL, NULL),
(994, NULL, 15416, NULL, '', '', NULL, NULL),
(995, NULL, 15426, NULL, '', '', NULL, NULL),
(998, NULL, 15686, NULL, '', '', NULL, NULL),
(999, NULL, 15722, NULL, '', '', NULL, NULL),
(1000, NULL, 15693, NULL, '', '', NULL, NULL),
(1001, NULL, 15745, NULL, '', '', NULL, NULL),
(1013, NULL, 15869, NULL, '', '', NULL, NULL),
(1014, NULL, 15859, NULL, '', '', NULL, NULL),
(1015, NULL, 15342, NULL, '', '', NULL, NULL),
(1016, NULL, 15723, NULL, '', '', NULL, NULL),
(1017, NULL, 15698, NULL, '', '', NULL, NULL),
(1018, NULL, 15678, NULL, '', '', NULL, NULL),
(1019, NULL, 15702, NULL, '', '', NULL, NULL),
(996, NULL, 15484, NULL, '<h2>Testing the Text</h2>', '', NULL, NULL),
(997, NULL, 15314, NULL, '', '', NULL, NULL),
(1002, NULL, 15561, NULL, '', '', NULL, NULL),
(1003, NULL, 15304, NULL, '', '', NULL, NULL),
(1004, NULL, 15843, NULL, '', '', NULL, NULL),
(1005, NULL, 15620, NULL, '', '', NULL, NULL),
(1006, NULL, 15302, NULL, '', '', NULL, NULL),
(1007, NULL, 15363, NULL, '', '', NULL, NULL),
(1008, NULL, 15301, NULL, '', '', NULL, NULL),
(1009, NULL, 15721, NULL, '', '', NULL, NULL),
(1020, NULL, 15720, NULL, '', '', NULL, NULL),
(1021, NULL, 15716, NULL, '', '', NULL, NULL),
(1022, NULL, 15370, NULL, '', '', NULL, NULL),
(1023, NULL, 15710, NULL, '', '', NULL, NULL),
(1024, NULL, 15559, NULL, '', '', NULL, NULL),
(1025, NULL, 15715, NULL, '', '', NULL, NULL),
(1026, NULL, 15713, NULL, '', '', NULL, NULL),
(1027, NULL, 15714, NULL, '', '', NULL, NULL),
(1028, NULL, 15865, NULL, '', '', NULL, NULL),
(1029, NULL, 15877, NULL, '', '', NULL, NULL),
(1030, NULL, 15685, NULL, '', '', NULL, NULL),
(1031, NULL, 15699, NULL, '', '', NULL, NULL),
(1032, NULL, 15719, NULL, '', '', NULL, NULL),
(1033, NULL, 15724, NULL, '', '', NULL, NULL),
(1034, NULL, 15725, NULL, '', '', NULL, NULL),
(1035, NULL, 15871, NULL, '', '', NULL, NULL),
(1036, NULL, 15876, NULL, '', '', NULL, NULL),
(1037, NULL, 15709, NULL, '', '', NULL, NULL),
(1038, NULL, 15862, NULL, '', '', NULL, NULL),
(1039, NULL, 15880, NULL, '', '', NULL, NULL),
(1040, NULL, 15860, NULL, '', '', NULL, NULL),
(1041, NULL, 15863, NULL, '', '', NULL, NULL),
(1042, NULL, 15712, NULL, '', '', NULL, NULL),
(1043, NULL, 15858, NULL, '', '', NULL, NULL),
(1044, NULL, 15870, NULL, '', '', NULL, NULL),
(1045, NULL, 15679, NULL, '', '', NULL, NULL),
(1046, NULL, 15684, NULL, '', '', NULL, NULL),
(1047, NULL, 15683, NULL, '', '', NULL, NULL),
(1048, NULL, 15671, NULL, '', '', NULL, NULL),
(1049, NULL, 15654, NULL, '', '', NULL, NULL),
(1050, NULL, 15655, NULL, '', '', NULL, NULL),
(1051, NULL, 15657, NULL, '', '', NULL, NULL),
(1052, NULL, 15687, NULL, '', '', NULL, NULL),
(1053, NULL, 15866, NULL, '', '', NULL, NULL),
(1054, NULL, 15867, NULL, '', '', NULL, NULL),
(1055, NULL, 15868, NULL, '', '', NULL, NULL),
(1056, NULL, 15638, NULL, '', '', NULL, NULL),
(1057, NULL, 15618, NULL, '', '', NULL, NULL),
(1058, NULL, 15619, NULL, '', '', NULL, NULL),
(1059, NULL, 15621, NULL, '', '', NULL, NULL),
(1060, NULL, 15364, NULL, '', '', NULL, NULL),
(1061, NULL, 15622, NULL, '', '', NULL, NULL),
(1062, NULL, 15623, NULL, '', '', NULL, NULL),
(1063, NULL, 15624, NULL, '', '', NULL, NULL),
(1064, NULL, 15625, NULL, '', '', NULL, NULL),
(1065, NULL, 15626, NULL, '', '', NULL, NULL),
(1066, NULL, 15627, NULL, '', '', NULL, NULL),
(1067, NULL, 15675, NULL, '', '', NULL, NULL),
(1068, NULL, 15628, NULL, '', '', NULL, NULL),
(1069, NULL, 15629, NULL, '', '', NULL, NULL),
(1070, NULL, 15677, NULL, '', '', NULL, NULL),
(1071, NULL, 15318, NULL, '', '', NULL, NULL),
(1072, NULL, 15283, NULL, '', '', NULL, NULL),
(1073, NULL, 15284, NULL, '', '', NULL, NULL),
(1074, NULL, 15285, NULL, '', '', NULL, NULL),
(1075, NULL, 15299, NULL, '', '', NULL, NULL),
(1076, NULL, 15563, NULL, '', '', NULL, NULL),
(1077, NULL, 15286, NULL, '', '', NULL, NULL),
(1078, NULL, 15289, NULL, '', '', NULL, NULL),
(1079, NULL, 15288, NULL, '', '', NULL, NULL),
(1080, NULL, 15290, NULL, '', '', NULL, NULL),
(1081, NULL, 15348, NULL, '', '', NULL, NULL),
(1082, NULL, 15293, NULL, '', '', NULL, NULL),
(1083, NULL, 15291, NULL, '', '', NULL, NULL),
(1084, NULL, 15292, NULL, '', '', NULL, NULL),
(1085, NULL, 15294, NULL, '', '', NULL, NULL),
(1086, NULL, 15296, NULL, '', '', NULL, NULL),
(1087, NULL, 15571, NULL, '', '', NULL, NULL),
(1088, NULL, 15298, NULL, '', '', NULL, NULL),
(1089, NULL, 15300, NULL, '', '', NULL, NULL),
(1090, NULL, 15555, NULL, '', '', NULL, NULL),
(1091, NULL, 15305, NULL, '', '', NULL, NULL),
(1092, NULL, 15297, NULL, '', '', NULL, NULL),
(1093, NULL, 15306, NULL, '', '', NULL, NULL),
(1094, NULL, 15307, NULL, '', '', NULL, NULL),
(1095, NULL, 15295, NULL, '', '', NULL, NULL),
(1096, NULL, 15682, NULL, '', '', NULL, NULL),
(1097, NULL, 15308, NULL, '', '', NULL, NULL),
(1098, NULL, 15313, NULL, '', '', NULL, NULL),
(1099, NULL, 15311, NULL, '', '', NULL, NULL),
(1100, NULL, 15327, NULL, '', '', NULL, NULL),
(1101, NULL, 15736, NULL, '', '', NULL, NULL),
(1102, NULL, 15905, NULL, '', '', NULL, NULL),
(1103, NULL, 15906, NULL, '', '', NULL, NULL),
(1104, NULL, 15908, NULL, '', '', NULL, NULL),
(1105, NULL, 15909, NULL, '', '', NULL, NULL),
(1106, NULL, 15911, NULL, '', '', NULL, NULL),
(1107, NULL, 15913, NULL, '', '', NULL, NULL),
(1108, NULL, 15914, NULL, '', '', NULL, NULL),
(1109, NULL, 15915, NULL, '', '', NULL, NULL),
(1110, NULL, 15923, NULL, '', '', NULL, NULL),
(1111, NULL, 15924, NULL, '', '', NULL, NULL),
(1112, NULL, 15925, NULL, '', '', NULL, NULL),
(1113, NULL, 15926, NULL, '', '', NULL, NULL),
(1114, NULL, 15927, NULL, '', '', NULL, NULL),
(1115, NULL, 15929, NULL, '', '', NULL, NULL),
(1116, NULL, 15930, NULL, '', '', NULL, NULL),
(1117, NULL, 15907, NULL, '', '', NULL, NULL),
(1118, NULL, 15670, NULL, '', '', NULL, NULL),
(1119, NULL, 15674, NULL, '', '', NULL, NULL),
(1120, NULL, 15344, NULL, '', '', NULL, NULL),
(1121, NULL, 15312, NULL, '', '', NULL, NULL),
(1122, NULL, 15321, NULL, '', '', NULL, NULL),
(1123, NULL, 15322, NULL, '', '', NULL, NULL),
(1124, NULL, 15323, NULL, '', '', NULL, NULL),
(1125, NULL, 15330, NULL, '', '', NULL, NULL),
(1126, NULL, 15335, NULL, '', '', NULL, NULL),
(1127, NULL, 15331, NULL, '', '', NULL, NULL),
(1128, NULL, 15332, NULL, '', '', NULL, NULL),
(1129, NULL, 15333, NULL, '', '', NULL, NULL),
(1130, NULL, 15334, NULL, '', '', NULL, NULL),
(1131, NULL, 15336, NULL, '', '', NULL, NULL),
(1132, NULL, 15340, NULL, '', '', NULL, NULL);

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
(15, 'grid - loose', 'manage_loose.php', 'no', NULL, NULL, NULL),
(16, 'grid - archive large', 'manage_images.php', 'no', NULL, NULL, NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(15164, 717, 0, 0, 'caption:', NULL, '717_tC4yUT_image-10.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '530', '706', 'portrait', 0.7507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 10.jpg', '', 'filename', 'upload'),
(15165, 717, 0, 0, 'caption:', NULL, '717_yrhWRg_image-8.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '812', '1083', 'portrait', 0.7498, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image 8.jpg', '', 'filename', 'upload'),
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
(15183, 717, 0, 0, 'caption:', NULL, '717_lZfCog_554_uy8oqx_joe_pugliese_wright2.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '820', '1094', 'portrait', 0.7495, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_uY8OQX_joe_pugliese_wright2.jpg', '', 'filename', 'upload'),
(15184, 717, 0, 0, 'caption:', NULL, '717_63g09e_554_zcy9yh_pug_rs_05.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1776', '1332', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_ZCy9yh_pug_rs_05.jpg', '', 'filename', 'upload'),
(15185, 717, 0, 0, 'caption:', NULL, '717_TbAXWR_554_w8bfak_pug_rs_06.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1776', '2368', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_W8BfAK_pug_rs_06.jpg', '', 'filename', 'upload'),
(15186, 717, 0, 0, 'caption:', NULL, '717_lnvdTP_554_hm8arx_anderson_cooper_062022_0211.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '820', '614', 'landscape', 1.3355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_Hm8arx_anderson_cooper_062022_0211.jpg', '', 'filename', 'upload'),
(15187, 717, 0, 0, 'caption:', NULL, '717_XlJIol_554_bmgrxw_pug_rs_07.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '820', '1094', 'portrait', 0.7495, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_BMgRXw_pug_rs_07.jpg', '', 'filename', 'upload'),
(15188, 717, 0, 0, 'caption:', NULL, '717_6xNpq6_554_by4alw_10614_04_0461.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1776', '2402', 'portrait', 0.7394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_by4Alw_10614_04_0461.jpg', '', 'filename', 'upload'),
(15189, 717, 0, 0, 'caption:', NULL, '717_ExgYfr_554_8qllgk_10614_03_0334.jpg', NULL, NULL, NULL, 15, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '820', '1094', 'portrait', 0.7495, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_8QllGk_10614_03_0334.jpg', '', 'filename', 'upload'),
(15190, 717, 0, 0, NULL, NULL, '717_0mjcsK_551_siuszy_joe_pugliese_sopranos3.jpg', NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1488', '1984', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '551_SIuszy_joe_pugliese_sopranos3.jpg', NULL, 'filename', 'upload'),
(15191, 717, 0, 0, 'caption:', NULL, '717_yEf2JD_554_fyu0kd_jp_jlo_01.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '820', '1092', 'portrait', 0.7509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '554_fyu0KD_jp_jlo_01.jpg', '', 'filename', 'upload'),
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
(15203, 726, 0, 0, 'caption:', NULL, '726_1muKFg_10638_01_0165.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0165.jpg', '', 'filename', 'upload'),
(15204, 726, 0, 0, 'caption:', NULL, '726_T1qBJG_10638_01_0184.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0184.jpg', '', 'filename', 'upload'),
(15205, 726, 0, 0, 'caption:', NULL, '726_mnDsGY_10638_01_0280.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0280.jpg', '', 'filename', 'upload'),
(15206, 726, 0, 0, 'caption:', NULL, '726_gZHx6m_10638_02_1559.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_02_1559.jpg', '', 'filename', 'upload'),
(15207, 726, 0, 0, 'caption:', NULL, '726_V5TZVn_10638_01_0408.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0408.jpg', '', 'filename', 'upload'),
(15208, 726, 0, 0, 'caption:', NULL, '726_NRvyCC_10638_01_0945.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0945.jpg', '', 'filename', 'upload'),
(15209, 726, 0, 0, 'caption:', NULL, '726_nOciGP_10638_01_0117.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0117.jpg', '', 'filename', 'upload'),
(15210, 726, 0, 0, 'caption:', NULL, '726_HjAeGr_10638_01_0828.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0828.jpg', '', 'filename', 'upload'),
(15211, 726, 0, 0, 'caption:', NULL, '726_MTaoVq_10638_02_1439.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_02_1439.jpg', '', 'filename', 'upload'),
(15212, 726, 0, 0, 'caption:', NULL, '726_JsWnTe_10638_01_0108.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0108.jpg', '', 'filename', 'upload'),
(15213, 726, 0, 0, 'caption:', NULL, '726_A63oOE_10638_02_1104.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_02_1104.jpg', '', 'filename', 'upload'),
(15214, 726, 0, 0, 'caption:', NULL, '726_AJdaTQ_10638_02_1871.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_02_1871.jpg', '', 'filename', 'upload'),
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
(15247, 743, 0, 0, 'caption:', NULL, '743_rriZDr_10675_13_2184.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_13_2184.jpg', '', 'filename', 'upload'),
(15248, 743, 0, 0, 'caption:', NULL, '743_YiNMVZ_10675_20_3034.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_20_3034.jpg', '', 'filename', 'upload'),
(15249, 743, 0, 0, 'caption:', NULL, '743_eREsBs_10675_14_2252.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_14_2252.jpg', '', 'filename', 'upload'),
(15250, 743, 0, 0, 'caption:', NULL, '743_MPEPbr_10675_07_1416-2.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_07_1416 2.jpg', '', 'filename', 'upload'),
(15251, 743, 0, 0, 'caption:', NULL, '743_c2V6pL_10675_20_3051v2.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_20_3051v2.jpg', '', 'filename', 'upload'),
(15252, 743, 0, 0, 'caption:', NULL, '743_VP6JVR_10675_08_1480.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_08_1480.jpg', '', 'filename', 'upload'),
(15253, 743, 0, 0, 'caption:', NULL, '743_UmOZTI_10675_20_3049.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_20_3049.jpg', '', 'filename', 'upload'),
(15254, 743, 0, 0, 'caption:', NULL, '743_HduQIq_10675_20_3053.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_20_3053.jpg', '', 'filename', 'upload'),
(15255, 744, 0, 0, 'caption:', NULL, '744_0Usuc5_10724_03_0491.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0491.jpg', '', 'filename', 'upload'),
(15256, 744, 0, 0, 'caption:', NULL, '744_YunawX_10724_03_0545.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0545.jpg', '', 'filename', 'upload'),
(15257, 744, 0, 0, 'caption:', NULL, '744_Rnkr22_10724_03_0551.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0551.jpg', '', 'filename', 'upload'),
(15258, 744, 0, 0, 'caption:', NULL, '744_6x0b9O_10724_03_0518.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0518.jpg', '', 'filename', 'upload'),
(15259, 744, 0, 0, 'caption:', NULL, '744_37oYRd_10724_03_0534.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0534.jpg', '', 'filename', 'upload'),
(15260, 744, 0, 0, 'caption:', NULL, '744_2mUeRD_10724_03_0510.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0510.jpg', '', 'filename', 'upload'),
(15261, 744, 0, 0, 'caption:', NULL, '744_gQc7FJ_10724_03_0538.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0538.jpg', '', 'filename', 'upload'),
(15262, 744, 0, 0, 'caption:', NULL, '744_1q9JCU_10724_03_0504.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0504.jpg', '', 'filename', 'upload'),
(15263, 744, 0, 0, 'caption:', NULL, '744_kCjjUI_10724_03_0543v2.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0543v2.jpg', '', 'filename', 'upload'),
(15264, 744, 0, 0, 'caption:', NULL, '744_5W8NBw_10724_03_0531.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0531.jpg', '', 'filename', 'upload'),
(15265, 744, 0, 0, 'caption:', NULL, '744_8Nfv77_10724_03_0548.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0548.jpg', '', 'filename', 'upload'),
(15266, 744, 0, 0, 'caption:', NULL, '744_i5A2Yl_10724_03_0508.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0508.jpg', '', 'filename', 'upload'),
(15267, 744, 0, 0, 'caption:', NULL, '744_Iw6e7h_10724_03_0528.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0528.jpg', '', 'filename', 'upload'),
(15268, 744, 0, 0, 'caption:', NULL, '744_gIjFIC_10724_03_0554.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0554.jpg', '', 'filename', 'upload'),
(15269, 744, 0, 0, 'caption:', NULL, '744_jwKkTH_10724_03_0557.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0557.jpg', '', 'filename', 'upload'),
(15270, 745, 0, 0, 'caption:', NULL, '745_OYWO9B_9983_02_0496-1.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_02_0496 1.jpg', '', 'filename', 'upload'),
(15271, 745, 0, 0, 'caption:', NULL, '745_PlhifR_9983_01_0102.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_01_0102.jpg', '', 'filename', 'upload'),
(15272, 745, 0, 0, 'caption:', NULL, '745_sS61i0_9983_03_0843-1.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_03_0843 1.jpg', '', 'filename', 'upload'),
(15273, 745, 0, 0, 'caption:', NULL, '745_8Ihpba_9983_02_0600-3.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2544', '3000', 'portrait', 0.8480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_02_0600 3.jpg', '', 'filename', 'upload'),
(15274, 745, 0, 0, 'caption:', NULL, '745_kSAmxd_9983_03_0746.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_03_0746.jpg', '', 'filename', 'upload'),
(15275, 745, 0, 0, 'caption:', NULL, '745_izGvuc_9983_04_0989.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_04_0989.jpg', '', 'filename', 'upload'),
(15276, 745, 0, 0, 'caption:', NULL, '745_seeWTm_9983_01_0312-3.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_01_0312 3.jpg', '', 'filename', 'upload'),
(15277, 745, 0, 0, 'caption:', NULL, '745_0RGbOc_9983_02_0545-1.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_02_0545 1.jpg', '', 'filename', 'upload'),
(15278, 745, 0, 0, 'caption:', NULL, '745_RCKvK9_9983_04_1082-1.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_04_1082 1.jpg', '', 'filename', 'upload'),
(15279, 745, 0, 0, 'caption:', NULL, '745_zaq8RD_9983_03_0629.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_03_0629.jpg', '', 'filename', 'upload'),
(15280, 745, 0, 0, 'caption:', NULL, '745_M73jMl_9983_03_0706-1-2.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_03_0706 1 2.jpg', '', 'filename', 'upload'),
(15281, 745, 0, 0, 'caption:', NULL, '745_UxS6Qj_9983_02_0314-1.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_02_0314 1.jpg', '', 'filename', 'upload'),
(15282, 745, 0, 0, 'caption:', NULL, '745_Adsvfl_9983_02_0472-2.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_02_0472 2.jpg', '', 'filename', 'upload');
INSERT INTO `pics` (`id`, `catid`, `picid`, `moduleid`, `caption`, `thumb`, `img`, `alt1`, `alt2`, `alt3`, `sortBy`, `title`, `picURL`, `shortDesc`, `price`, `wPrice`, `salesPrice`, `weight`, `posterImg`, `tags`, `slug`, `customSlug`, `imgType`, `imgSize`, `artistid`, `width`, `height`, `orientation`, `aspectRatio`, `posterWidth`, `posterHeight`, `posterOrientation`, `pdf`, `related`, `relatedColors`, `colorid`, `hover`, `ignoreQty`, `soldOut`, `featuredQty`, `metaTitle`, `metaDesc`, `metaKeywords`, `metaImage`, `metaImageWidth`, `metaImageHeight`, `status`, `lbCount`, `bgColor`, `filename`, `rowBreak`, `sorter`, `imgSrc`) VALUES
(15283, 730, 0, 0, 'Actor and Musician', NULL, '730_vNII4b_10541_02_0611.jpg', NULL, NULL, NULL, 93, 'Jeff Goldblum', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jeff-goldblum', '', NULL, '', NULL, '3000', '1998', 'landscape', 1.5015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10541_02_0611.jpg', '', 'filename', 'upload'),
(15284, 730, 0, 0, 'Actor and Musician', NULL, '730_zxauGc_10541_01_0226-b&w.jpg', NULL, NULL, NULL, 94, 'Jeff Goldblum', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jeff-goldblum', '', NULL, '', NULL, '2240', '3000', 'portrait', 0.7467, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10541_01_0226 B&W.jpg', '', 'filename', 'upload'),
(15285, 730, 0, 0, 'Actor and Musician', NULL, '730_FHi0r5_10541_01_0147.jpg', NULL, NULL, NULL, 95, 'Jeff Goldblum', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jeff-goldblum', '', NULL, '', NULL, '2244', '3000', 'portrait', 0.7480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10541_01_0147.jpg', '', 'filename', 'upload'),
(15286, 730, 0, 0, 'Artist', NULL, '730_hCz04W_9941_01_0239.jpg', NULL, NULL, NULL, 98, 'Todd Gray', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'todd-gray', '', NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9941_01_0239.jpg', '', 'filename', 'upload'),
(15287, 730, 0, 0, NULL, NULL, '730_1btmwF_9941_01_0246.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9941_01_0246.jpg', NULL, 'filename', 'upload'),
(15288, 730, 0, 0, 'Artist', NULL, '730_wMgr22_05_rocklen_01_0159.jpg', NULL, NULL, NULL, 100, 'Ry Rocklen', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'ry-rocklen', '', NULL, '', NULL, '2349', '3000', 'portrait', 0.7830, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '05_ROCKLEN_01_0159.jpg', '', 'filename', 'upload'),
(15289, 730, 0, 0, 'Artist', NULL, '730_7BZoMI_joe_pugliese_artist_1.jpg', NULL, NULL, NULL, 99, 'taisha paggett', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'taisha-paggett', '', NULL, '', NULL, '2246', '3000', 'portrait', 0.7487, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_artist_1.jpg', '', 'filename', 'upload'),
(15290, 730, 0, 0, 'Gallerists', NULL, '730_vcx127_pugliese_02_0077.jpg', NULL, NULL, NULL, 101, 'Mieke Marple and Davida Nemeroff', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'mieke-marple-and-davida-nemeroff', '', NULL, '', NULL, '3600', '2700', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pugliese_02_0077.jpg', '', 'filename', 'upload'),
(15291, 730, 0, 0, 'Speaker of the House', NULL, '730_At3L9v_10614_06_0365.jpg', NULL, NULL, NULL, 104, 'Nancy Pelosi', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'nancy-pelosi', '', NULL, '', NULL, '3000', '2004', 'landscape', 1.4970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10614_06_0365.jpg', '', 'filename', 'upload'),
(15292, 730, 0, 0, 'Speaker of the House', NULL, '730_zXe3ab_10614_04_0461.jpg', NULL, NULL, NULL, 105, 'Nancy Pelosi', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'nancy-pelosi', '', NULL, '', NULL, '2218', '3000', 'portrait', 0.7393, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10614_04_0461.jpg', '', 'filename', 'upload'),
(15293, 730, 0, 0, 'Speaker of the House', NULL, '730_Xsifcm_10614_04_0368.jpg', NULL, NULL, NULL, 103, 'Nancy Pelosi', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'nancy-pelosi', '', NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10614_04_0368.jpg', '', 'filename', 'upload'),
(15294, 730, 0, 0, 'Inventor', NULL, '730_n1X5nl_10625_04_1033.jpg', NULL, NULL, NULL, 106, 'Bryan Johnson', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'bryan-johnson', '', NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10625_04_1033.jpg', '', 'filename', 'upload'),
(15295, 730, 0, 0, 'Actor', NULL, '730_IDLL5C_9972_01_0280.jpg', NULL, NULL, NULL, 116, 'Ewan MacGregor', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'ewan-macgregor', '', NULL, '', NULL, '3000', '1998', 'landscape', 1.5015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9972_01_0280.jpg', '', 'filename', 'upload'),
(15296, 730, 0, 0, 'Actor', NULL, '730_406vV7_pugliese_09jpeg.jpg', NULL, NULL, NULL, 107, 'Robin Wright', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'robin-wright', '', NULL, '', NULL, '1961', '2615', 'portrait', 0.7499, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pugliese_09.jpeg', '', 'filename', 'upload'),
(15297, 730, 0, 0, 'Actor', NULL, '730_7RUDoQ_10610_01_0219.jpg', NULL, NULL, NULL, 112, 'Peter Gallagher', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'peter-gallagher', '', NULL, '', NULL, '2251', '3000', 'portrait', 0.7503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10610_01_0219.jpg', '', 'filename', 'upload'),
(15298, 730, 0, 0, 'Activist', NULL, '730_3wHg8c_joe_pugliese_malala1.jpg', NULL, NULL, NULL, 109, 'Malala Yousafzai', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'malala-yousafzai', '', NULL, '', NULL, '2241', '3000', 'portrait', 0.7470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_malala1.jpg', '', 'filename', 'upload'),
(15299, 730, 0, 0, 'Host', NULL, '730_78AZ5e_9997_07_2147.jpg', NULL, NULL, NULL, 96, 'David Letterman', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'david-letterman', '', NULL, '', NULL, '2257', '3000', 'portrait', 0.7523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9997_07_2147.jpg', '', 'filename', 'upload'),
(15300, 730, 0, 0, 'Actor', NULL, '730_dmKvwN_p_cr.jpg', NULL, NULL, NULL, 110, 'Chris Rock', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'chris-rock', '', NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_CR.jpg', '', 'filename', 'upload'),
(15301, 730, 0, 0, 'Journalist', NULL, '730_hEAPIn_anderson_cooper_062022_0211.jpg', NULL, NULL, NULL, 4, 'Anderson Cooper', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'anderson-cooper', '', NULL, '', NULL, '3600', '2700', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'ANDERSON_COOPER_062022_0211.jpg', '', 'filename', 'upload'),
(15302, 730, 0, 0, 'President of the United States', NULL, '730_GoQmN9_apa2018_bos_pug_web.jpg', NULL, NULL, NULL, 1, 'Barack Obama', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'barack-obama', '', NULL, '', NULL, '1501', '2000', 'portrait', 0.7505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'apa2018_BOS_pug_web.jpg', '', 'filename', 'upload'),
(15303, 730, 0, 0, 'caption:', NULL, '730_Pd4jyf_jli_01.jpg', NULL, NULL, NULL, 47, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JLI_01.JPG', '', 'filename', 'upload'),
(15304, 730, 0, 0, 'Actor', NULL, '730_e2xg1A_p_hfo_01-1.jpg', NULL, NULL, NULL, 20, 'Harrison Ford', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'harrison-ford', '', NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_HFO_01 1.jpg', '', 'filename', 'upload'),
(15305, 730, 0, 0, 'Actor', NULL, '730_ZXGRez_10610_04_0976.jpg', NULL, NULL, NULL, 113, 'Peter Gallagher', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'peter-gallagher', '', NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10610_04_0976.jpg', '', 'filename', 'upload'),
(15306, 730, 0, 0, 'Director', NULL, '730_bmkPXN_pugliese_10699_01_0084vjp.jpg', NULL, NULL, NULL, 114, 'Christopher Nolan', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'christopher-nolan', '', NULL, '', NULL, '1853', '2316', 'portrait', 0.8001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pugliese_10699_01_0084vJP.jpg', '', 'filename', 'upload'),
(15307, 730, 0, 0, 'Director', NULL, '730_4FOKD8_pugliese_10699_01_0074.jpg', NULL, NULL, NULL, 115, 'Christopher Nolan', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'christopher-nolan', '', NULL, '', NULL, '2400', '3201', 'portrait', 0.7498, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pugliese_10699_01_0074.jpg', '', 'filename', 'upload'),
(15308, 730, 0, 0, 'Actor', NULL, '730_oDA5F3_9864_01_0105-copy.jpg', NULL, NULL, NULL, 117, 'Harrison Ford', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'harrison-ford', '', NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9864_01_0105 copy.jpg', '', 'filename', 'upload'),
(15309, 730, 0, 0, 'caption:', NULL, '730_wOsgEt_10589_02_1257.jpg', NULL, NULL, NULL, 100, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_02_1257.jpg', '', 'filename', 'upload'),
(15310, 730, 0, 0, 'caption:', NULL, '730_dYQeNL_10641_05_0366.jpg', NULL, NULL, NULL, 41, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1721', '2154', 'portrait', 0.7990, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10641_05_0366.jpg', '', 'filename', 'upload'),
(15311, 730, 0, 0, 'Athlete', NULL, '730_A0pX7z_10589_02_1150.jpg', NULL, NULL, NULL, 119, 'Sky Brown', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'sky-brown', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10589_02_1150.jpg', '', 'filename', 'upload'),
(15312, 730, 0, 0, 'Actor', NULL, '730_XvBuov_joe_pugliese_dever1.jpg', NULL, NULL, NULL, 121, 'Kaitlyn Dever', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'kaitlyn-dever', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_dever1.jpg', '', 'filename', 'upload'),
(15313, 730, 0, 0, 'Athlete', NULL, '730_m6ouwA_10589_04_1607.jpg', NULL, NULL, NULL, 118, 'Sky Brown', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'sky-brown', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10589_04_1607.jpg', '', 'filename', 'upload'),
(15314, 730, 0, 0, 'Sunday Times Magazine', NULL, '730_Sh18OE_10641_03_0237.jpg', NULL, NULL, NULL, 40, 'Seth Rogan', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'seth-rogan', '', NULL, '', NULL, '3175', '2119', 'landscape', 1.4983, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10641_03_0237.jpg', '', 'filename', 'upload'),
(15315, 730, 0, 0, 'caption:', NULL, '730_ALmDwt_10589_02_1200-1.jpg', NULL, NULL, NULL, 20, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_02_1200 1.jpg', '', 'filename', 'upload'),
(15316, 730, 0, 0, 'caption:', NULL, '730_kAbnON_joe_pugliese_lana1.jpg', NULL, NULL, NULL, 105, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4968', '6210', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_lana1.jpg', '', 'filename', 'upload'),
(15317, 730, 0, 0, 'caption:', NULL, '730_NIRFkL_10641_01_0078.jpg', NULL, NULL, NULL, 39, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2431', '3242', 'portrait', 0.7498, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10641_01_0078.jpg', '', 'filename', 'upload'),
(15318, 730, 0, 0, 'Actor', NULL, '730_Otc778_10641_07_0459.jpg', NULL, NULL, NULL, 92, 'Seth Rogen', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'seth-rogen', '', NULL, '', NULL, '2614', '3501', 'portrait', 0.7466, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10641_07_0459.jpg', '', 'filename', 'upload'),
(15319, 730, 0, 0, 'caption:', NULL, '730_4Km8FM_p_nik_01.jpg', NULL, NULL, NULL, 104, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_NIK_01.jpg', '', 'filename', 'upload'),
(15320, 730, 0, 0, 'caption:', NULL, '730_iAT0s1_10589_01_0924v2.jpg', NULL, NULL, NULL, 43, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3026', '4035', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_01_0924v2.jpg', '', 'filename', 'upload'),
(15321, 730, 0, 0, 'Athlete', NULL, '730_WmPaPt_p_rdu_03.jpg', NULL, NULL, NULL, 122, 'Ryan Dungey', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'ryan-dungey', '', NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_RDU_03.jpg', '', 'filename', 'upload'),
(15322, 730, 0, 0, 'Athlete', NULL, '730_hEmH6w_p_dja_01.jpg', NULL, NULL, NULL, 123, 'DeSean Jackson', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'desean-jackson', '', NULL, '', NULL, '4200', '5600', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_DJA_01.jpg', '', 'filename', 'upload'),
(15323, 730, 0, 0, 'Athlete', NULL, '730_18LdX7_p_jli_04.jpg', NULL, NULL, NULL, 124, 'Jeremy Lin', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jeremy-lin', '', NULL, '', NULL, '2244', '3000', 'portrait', 0.7480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_JLI_04.jpg', '', 'filename', 'upload'),
(15324, 730, 0, 0, 'caption:', NULL, '730_kZzkQM_holiday2018_lebron_sw3_midnightblack_left_0003-1tif.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HOLIDAY2018_LEBRON_SW3_MIDNIGHTBLACK_LEFT_0003 1.tif', '', 'filename', 'upload'),
(15325, 730, 0, 0, 'caption:', NULL, '730_9di4d8_10589_02_1257.jpg', NULL, NULL, NULL, 41, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_02_1257.jpg', '', 'filename', 'upload'),
(15326, 730, 0, 0, 'caption:', NULL, '730_dSMfCn_10589_02_1150.jpg', NULL, NULL, NULL, 43, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_02_1150.jpg', '', 'filename', 'upload'),
(15327, 730, 0, 0, 'Athlete', NULL, '730_FTQ4s1_10589_01_0924v2.jpg', NULL, NULL, NULL, 120, 'Sky Brown', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'sky-brown', '', NULL, '', NULL, '3026', '4035', 'portrait', 0.7499, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10589_01_0924v2.jpg', '', 'filename', 'upload'),
(15328, 730, 0, 0, 'caption:', NULL, '730_LZeCSm_10589_04_1607.jpg', NULL, NULL, NULL, 42, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_04_1607.jpg', '', 'filename', 'upload'),
(15329, 730, 0, 0, 'caption:', NULL, '730_0QWCgH_10589_02_1200-1.jpg', NULL, NULL, NULL, 42, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10589_02_1200 1.jpg', '', 'filename', 'upload'),
(15330, 730, 0, 0, 'Actor:', NULL, '730_ac1D2E_pug_rs_06.jpg', NULL, NULL, NULL, 125, 'Michela De Rossi', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'michela-de-rossi', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'PUG_RS_06.jpg', '', 'filename', 'upload'),
(15331, 730, 0, 0, 'Cast', NULL, '730_tUoSDP_pug_rs_01.jpg', NULL, NULL, NULL, 127, 'The Many Saints of Newark', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'the-many-saints-of-newark', '', NULL, '', NULL, '2462', '3000', 'portrait', 0.8207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'PUG_RS_01.jpg', '', 'filename', 'upload'),
(15332, 730, 0, 0, 'Actor', NULL, '730_rJUl7k_pug_rs_04.jpg', NULL, NULL, NULL, 128, 'Leslie Odom Jr.', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'leslie-odom-jr', '', NULL, '', NULL, '2251', '3000', 'portrait', 0.7503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'PUG_RS_04.jpg', '', 'filename', 'upload'),
(15333, 730, 0, 0, 'Actor', NULL, '730_J7f8ZU_pug_rs_07.jpg', NULL, NULL, NULL, 129, 'Ray Liotta', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'ray-liotta', '', NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'PUG_RS_07.jpg', '', 'filename', 'upload'),
(15334, 730, 0, 0, 'Creator', NULL, '730_MNQoaG_pug_rs_03.jpg', NULL, NULL, NULL, 130, 'David Chase', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'david-chase', '', NULL, '', NULL, '2244', '3000', 'portrait', 0.7480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'PUG_RS_03.jpg', '', 'filename', 'upload'),
(15335, 730, 0, 0, 'Actor', NULL, '730_jM3xAe_pug_rs_08.jpg', NULL, NULL, NULL, 126, 'Vera Farmiga', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'vera-farmiga', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'PUG_RS_08.jpg', '', 'filename', 'upload'),
(15336, 730, 0, 0, 'Actor', NULL, '730_XMqYgk_pug_rs_05.jpg', NULL, NULL, NULL, 131, 'Jon Bernthal', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jon-bernthal', '', NULL, '', NULL, '3000', '2249', 'landscape', 1.3339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'PUG_RS_05.jpg', '', 'filename', 'upload'),
(15337, 730, 0, 0, 'caption:', NULL, '730_ZvtOPa_extra_10545_02_0419.jpg', NULL, NULL, NULL, 58, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Extra_10545_02_0419.jpg', '', 'filename', 'upload'),
(15338, 730, 0, 0, 'caption:', NULL, '730_VKX9oA_cover_10550_05_0852.jpg', NULL, NULL, NULL, 59, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cover_10550_05_0852.jpg', '', 'filename', 'upload'),
(15339, 730, 0, 0, 'caption:', NULL, '730_K5c2UE_cover_10553_03_0919.jpg', NULL, NULL, NULL, 59, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cover_10553_03_0919.jpg', '', 'filename', 'upload'),
(15340, 730, 0, 0, 'Group', NULL, '730_653r0Z_9872_06_0697.jpg', NULL, NULL, NULL, 132, 'Emmy Actors', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'emmy-actors', '', NULL, '', NULL, '2247', '3000', 'portrait', 0.7490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9872_06_0697.jpg', '', 'filename', 'upload'),
(15341, 730, 0, 0, 'caption:', NULL, '730_kb2fP0_9783_02_1298.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9783_02_1298.jpg', '', 'filename', 'upload'),
(15342, 730, 0, 0, 'caption:', NULL, '730_R6VylU_oprah_harry_v1.jpg', NULL, NULL, NULL, 21, 'Oprah Winfrey and Prince Harry', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'oprah-winfrey-and-prince-harry', '', NULL, '', NULL, '3006', '1925', 'landscape', 1.5616, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'oprah_harry_v1.jpg', '', 'filename', 'upload'),
(15343, 730, 0, 0, 'caption:', NULL, '730_GYI9Cn_p_bal_02.jpg', NULL, NULL, NULL, 133, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2097', 'landscape', 1.4306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_BAL_02.jpg', '', 'filename', 'upload'),
(15344, 730, 0, 0, 'Musicians', NULL, '730_7EF8zH_10505_09_1094.jpg', NULL, NULL, NULL, 78, 'U2', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'u2', '', NULL, '', NULL, '2312', '3000', 'portrait', 0.7707, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10505_09_1094.jpg', '', 'filename', 'upload'),
(15345, 730, 0, 0, 'caption:', NULL, '730_EfKnBc_10571_04_0379.jpg', NULL, NULL, NULL, 134, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3072', '1854', 'landscape', 1.6570, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_04_0379.jpg', '', 'filename', 'upload'),
(15346, 730, 0, 0, 'caption:', NULL, '730_PFOyP9_9991_04_0489.jpg', NULL, NULL, NULL, 135, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3838', '2879', 'landscape', 1.3331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9991_04_0489.jpg', '', 'filename', 'upload'),
(15347, 730, 0, 0, 'caption:', NULL, '730_dAYpmg_p_gqc_01.jpg', NULL, NULL, NULL, 137, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1971', 'landscape', 1.5221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_GQC_01.jpg', '', 'filename', 'upload'),
(15348, 730, 0, 0, 'caption:', NULL, '730_1mo0A0_9972_12_1412.jpg', NULL, NULL, NULL, 102, 'Emmy Nominated Actors', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'emmy-nominated-actors', '', NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9972_12_1412.jpg', '', 'filename', 'upload'),
(15349, 730, 0, 0, 'caption:', NULL, '730_FVV1dS_z-xhfugqjpeg.jpg', NULL, NULL, NULL, 138, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'z-xHFUGQ.jpeg', '', 'filename', 'upload'),
(15350, 730, 0, 0, 'caption:', NULL, '730_l0G6bx_9980_01_cvprint_tailor_0229.jpg', NULL, NULL, NULL, 147, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2575', '3000', 'portrait', 0.8583, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9980_01_CVPrint_Tailor_0229.jpg', '', 'filename', 'upload'),
(15351, 730, 0, 0, 'caption:', NULL, '730_yQSSxB_9980_05_cvsocial_1058v4.jpg', NULL, NULL, NULL, 148, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2433', '3243', 'portrait', 0.7502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9980_05_CVSocial_1058v4.jpg', '', 'filename', 'upload'),
(15352, 730, 0, 0, 'caption:', NULL, '730_u0twC0_9947_05_0730.jpg', NULL, NULL, NULL, 149, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9947_05_0730.jpg', '', 'filename', 'upload'),
(15353, 730, 0, 0, 'caption:', NULL, '730_VfbYS7_9947_01_0228.jpg', NULL, NULL, NULL, 150, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9947_01_0228.jpg', '', 'filename', 'upload'),
(15354, 730, 0, 0, 'caption:', NULL, '730_bg2O1Y_pugliese_01.jpg', NULL, NULL, NULL, 151, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_01.jpg', '', 'filename', 'upload'),
(15355, 730, 0, 0, 'caption:', NULL, '730_VB7GsX_jlo_11.jpg', NULL, NULL, NULL, 152, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2048', '1504', 'landscape', 1.3617, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JLO_11.jpg', '', 'filename', 'upload'),
(15356, 730, 0, 0, 'caption:', NULL, '730_bFJFRa_p_jlo_05.jpg', NULL, NULL, NULL, 153, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2343', '3000', 'portrait', 0.7810, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JLO_05.jpg', '', 'filename', 'upload'),
(15357, 730, 0, 0, 'caption:', NULL, '730_olPsb1_jp_jlo_01.jpg', NULL, NULL, NULL, 154, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3600', '4800', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_01.jpg', '', 'filename', 'upload'),
(15358, 730, 0, 0, 'caption:', NULL, '730_iXCKml_jp_jlo_03.jpg', NULL, NULL, NULL, 155, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3600', '4701', 'portrait', 0.7658, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_03.jpg', '', 'filename', 'upload'),
(15359, 730, 0, 0, 'caption:', NULL, '730_MomRnT_p_jlo_04.jpg', NULL, NULL, NULL, 156, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3607', '4800', 'portrait', 0.7515, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JLO_04.jpg', '', 'filename', 'upload'),
(15360, 730, 0, 0, 'caption:', NULL, '730_2pMMiI_jp_jlo_06.jpg', NULL, NULL, NULL, 158, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5400', '3600', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_06.jpg', '', 'filename', 'upload'),
(15361, 730, 0, 0, 'caption:', NULL, '730_CdNgnf_jp_jlo_02.jpg', NULL, NULL, NULL, 157, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4877', '6382', 'portrait', 0.7642, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_02.jpg', '', 'filename', 'upload'),
(15362, 730, 0, 0, 'caption:', NULL, '730_E1ZsIz_10619_05_0906rt_v3.jpg', NULL, NULL, NULL, 165, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10619_05_0906RT_V3.jpg', '', 'filename', 'upload'),
(15363, 730, 0, 0, 'Musician', NULL, '730_9hdNt5_10619_01_0046rt_v2.jpg', NULL, NULL, NULL, 3, 'John Legend', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'john-legend', '', NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10619_01_0046RT_V2.jpg', '', 'filename', 'upload'),
(15364, 730, 0, 0, 'Musician', NULL, '730_rcMqbI_10619_01_0157rt_v2.jpg', NULL, NULL, NULL, 83, 'John Legend:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'john-legend', '', NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10619_01_0157RT_V2.jpg', '', 'filename', 'upload'),
(15365, 730, 0, 0, 'caption:', NULL, '730_AJHLyk_10542_05_1131.jpg', NULL, NULL, NULL, 167, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '6582', '4388', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10542_05_1131.jpg', '', 'filename', 'upload'),
(15366, 730, 0, 0, 'caption:', NULL, '730_3KKnog_10542_02_0490.jpg', NULL, NULL, NULL, 168, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4268', '5637', 'portrait', 0.7571, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10542_02_0490.jpg', '', 'filename', 'upload'),
(15367, 730, 0, 0, 'caption:', NULL, '730_n94L4I_10542_06_1133bw.jpg', NULL, NULL, NULL, 166, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4722', '6296', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10542_06_1133BW.jpg', '', 'filename', 'upload'),
(15368, 730, 0, 0, 'caption:', NULL, '730_rKXznY_9841_03_0261.jpg', NULL, NULL, NULL, 95, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1435', '1943', 'portrait', 0.7385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9841_03_0261.jpg', '', 'filename', 'upload'),
(15369, 730, 0, 0, 'caption:', NULL, '730_qw6YYI_9871_09_0872.jpg', NULL, NULL, NULL, 96, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9871_09_0872.jpg', '', 'filename', 'upload'),
(15370, 730, 0, 0, 'Musician', NULL, '730_uMsUnH_p_tpe_01.jpg', NULL, NULL, NULL, 30, 'Tom Petty', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'tom-petty', '', NULL, '', NULL, '3000', '1916', 'landscape', 1.5658, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_TPE_01.jpg', '', 'filename', 'upload'),
(15371, 730, 0, 0, 'caption:', NULL, '730_kWOJvM_9786_02_0130.jpg', NULL, NULL, NULL, 153, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1538', '2000', 'portrait', 0.7690, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9786_02_0130.jpg', '', 'filename', 'upload'),
(15372, 730, 0, 0, 'caption:', NULL, '730_3Lqewe_10505_06_0741.jpg', NULL, NULL, NULL, 100, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2314', '3000', 'portrait', 0.7713, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10505_06_0741.jpg', '', 'filename', 'upload'),
(15373, 730, 0, 0, 'caption:', NULL, '730_ZK6XWr_pugliese_04.jpg', NULL, NULL, NULL, 101, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2397', '3200', 'portrait', 0.7491, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_04.jpg', '', 'filename', 'upload'),
(15374, 730, 0, 0, 'caption:', NULL, '730_WCFrzM_bono_01.jpg', NULL, NULL, NULL, 151, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1533', '2000', 'portrait', 0.7665, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BONO_01.JPG', '', 'filename', 'upload'),
(15375, 730, 0, 0, 'caption:', NULL, '730_p5of9h_pugliese_03.jpg', NULL, NULL, NULL, 128, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3902', '5202', 'portrait', 0.7501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_03.jpg', '', 'filename', 'upload'),
(15376, 730, 0, 0, 'caption:', NULL, '730_3HHIsK_9842_04_0697.jpg', NULL, NULL, NULL, 170, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '1333', 'landscape', 1.5004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9842_04_0697.jpg', '', 'filename', 'upload'),
(15377, 730, 0, 0, 'caption:', NULL, '730_vCeWOp_9842_04_0785.jpg', NULL, NULL, NULL, 93, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '1333', 'landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9842_04_0785.jpg', '', 'filename', 'upload'),
(15378, 730, 0, 0, 'caption:', NULL, '730_OVOsVC_9842_04_0614.jpg', NULL, NULL, NULL, 169, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '1333', 'landscape', 1.5004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9842_04_0614.jpg', '', 'filename', 'upload'),
(15379, 730, 0, 0, 'caption:', NULL, '730_dm37tv_picard_seven.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2633', '3900', 'portrait', 0.6751, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_SEVEN.jpg', '', 'filename', 'upload'),
(15380, 730, 0, 0, 'caption:', NULL, '730_DtmtIC_picard_jlp.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2633', '3900', 'portrait', 0.6751, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_JLP.jpg', '', 'filename', 'upload'),
(15381, 730, 0, 0, 'caption:', NULL, '730_TrCNmX_picard_will.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2633', '3900', 'portrait', 0.6751, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_WILL.jpg', '', 'filename', 'upload'),
(15382, 730, 0, 0, 'caption:', NULL, '730_5jg0qT_picard_worf.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2633', '3900', 'portrait', 0.6751, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_WORF.jpg', '', 'filename', 'upload'),
(15383, 730, 0, 0, NULL, NULL, '730_HchiSG_10698anderson_01_0015jpeg.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2249', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0015.jpeg', NULL, 'filename', 'upload'),
(15384, 730, 0, 0, 'caption:', NULL, '730_u0aMUA_10698anderson_01_0208_r1jpeg.jpg', NULL, NULL, NULL, 100, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0208_R1.jpeg', '', 'filename', 'upload'),
(15385, 730, 0, 0, 'caption:', NULL, '730_Rp9LRi_10698anderson_01_0383_r1jpeg.jpg', NULL, NULL, NULL, 136, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2237', '3000', 'portrait', 0.7457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0383_R1.jpeg', '', 'filename', 'upload'),
(15386, 730, 0, 0, 'caption:', NULL, '730_x1VP1t_10698anderson_01_0237jpeg.jpg', NULL, NULL, NULL, 102, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2238', '3000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0237.jpeg', '', 'filename', 'upload'),
(15387, 730, 0, 0, 'caption:', NULL, '730_Csjojw_10698anderson_01_0241jpeg.jpg', NULL, NULL, NULL, 137, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2224', '3000', 'portrait', 0.7413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0241.jpeg', '', 'filename', 'upload'),
(15388, 730, 0, 0, 'caption:', NULL, '730_px9x9I_10698anderson_01_0421-b&wjpeg.jpg', NULL, NULL, NULL, 138, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2251', '3000', 'portrait', 0.7503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0421 B&W.jpeg', '', 'filename', 'upload'),
(15389, 730, 0, 0, 'caption:', NULL, '730_PsuBCB_succession_01.jpg', NULL, NULL, NULL, 22, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUCCESSION_01.jpg', '', 'filename', 'upload'),
(15390, 730, 0, 0, 'caption:', NULL, '730_jtrqwt_succession_03.jpg', NULL, NULL, NULL, 21, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUCCESSION_03.jpg', '', 'filename', 'upload'),
(15391, 730, 0, 0, 'caption:', NULL, '730_HrFrJw_succession_04.jpg', NULL, NULL, NULL, 24, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUCCESSION_04.jpg', '', 'filename', 'upload'),
(15392, 730, 0, 0, 'caption:', NULL, '730_O0tpNp_succession_02.jpg', NULL, NULL, NULL, 136, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUCCESSION_02.jpg', '', 'filename', 'upload'),
(15393, 730, 0, 0, 'caption:', NULL, '730_80EQtF_succession_06.jpg', NULL, NULL, NULL, 25, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUCCESSION_06.jpg', '', 'filename', 'upload'),
(15394, 736, 0, 0, 'caption:', NULL, '736_o8Vr2O_05_pers_flow_04_2971.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '1333', 'landscape', 1.5004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_PERS_FLOW_04_2971.jpg', '', 'filename', 'upload'),
(15395, 736, 0, 0, 'caption:', NULL, '736_MqViNb_09_pers_flow_04_1431.jpg', NULL, NULL, NULL, 20, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09_PERS_FLOW_04_1431.jpg', '', 'filename', 'upload'),
(15396, 736, 0, 0, 'caption:', NULL, '736_l41xE4_10_pers_flow_02_1497.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10_PERS_FLOW_02_1497.jpg', '', 'filename', 'upload'),
(15397, 736, 0, 0, 'caption:', NULL, '736_4M6a7T_11_pers_flow_04_2829_jp.jpg', NULL, NULL, NULL, 18, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11_PERS_FLOW_04_2829_jp.jpg', '', 'filename', 'upload'),
(15398, 736, 0, 0, 'caption:', NULL, '736_XPWmsu_12_pers_flow_02_1785_jp-1.jpg', NULL, NULL, NULL, 17, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1600', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12_PERS_FLOW_02_1785_jp 1.jpg', '', 'filename', 'upload'),
(15399, 736, 0, 0, 'caption:', NULL, '736_m1nM3k_01_pers_flow_01_0704_jp.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01_PERS_FLOW_01_0704_jp.jpg', '', 'filename', 'upload'),
(15400, 736, 0, 0, 'caption:', NULL, '736_ydwBw4_02_pers_flow_01_0610.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02_PERS_FLOW_01_0610.jpg', '', 'filename', 'upload'),
(15401, 736, 0, 0, 'caption:', NULL, '736_BHSaDe_03_pers_flow_04_3581.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03_PERS_FLOW_04_3581.jpg', '', 'filename', 'upload'),
(15402, 736, 0, 0, 'caption:', NULL, '736_S2PtKb_06_pers_flow_01_1048.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06_PERS_FLOW_01_1048.jpg', '', 'filename', 'upload'),
(15403, 736, 0, 0, 'caption:', NULL, '736_o3I530_07_pers_flow_01_0625.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07_PERS_FLOW_01_0625.jpg', '', 'filename', 'upload'),
(15404, 736, 0, 0, NULL, NULL, '736_LZZXHp_04_pers_flow_01_0845.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04_PERS_FLOW_01_0845.jpg', NULL, 'filename', 'upload'),
(15405, 736, 0, 0, 'caption:', NULL, '736_7yJ9Ak_08_pers_flow_04_2778.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08_PERS_FLOW_04_2778.jpg', '', 'filename', 'upload'),
(15406, 736, 0, 0, 'caption:', NULL, '736_oPgi9o_joe_pugliese_flow9.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow9.jpg', '', 'filename', 'upload'),
(15407, 736, 0, 0, 'caption:', NULL, '736_ZD4MRM_joe_pugliese_flow2.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow2.jpg', '', 'filename', 'upload'),
(15408, 736, 0, 0, 'caption:', NULL, '736_ifXDA2_joe_pugliese_flow1.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow1.jpg', '', 'filename', 'upload'),
(15409, 736, 0, 0, 'caption:', NULL, '736_Qzrrbm_joe_pugliese_flow6.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow6.jpg', '', 'filename', 'upload');
INSERT INTO `pics` (`id`, `catid`, `picid`, `moduleid`, `caption`, `thumb`, `img`, `alt1`, `alt2`, `alt3`, `sortBy`, `title`, `picURL`, `shortDesc`, `price`, `wPrice`, `salesPrice`, `weight`, `posterImg`, `tags`, `slug`, `customSlug`, `imgType`, `imgSize`, `artistid`, `width`, `height`, `orientation`, `aspectRatio`, `posterWidth`, `posterHeight`, `posterOrientation`, `pdf`, `related`, `relatedColors`, `colorid`, `hover`, `ignoreQty`, `soldOut`, `featuredQty`, `metaTitle`, `metaDesc`, `metaKeywords`, `metaImage`, `metaImageWidth`, `metaImageHeight`, `status`, `lbCount`, `bgColor`, `filename`, `rowBreak`, `sorter`, `imgSrc`) VALUES
(15410, 736, 0, 0, 'caption:', NULL, '736_Ls1A0h_joe_pugliese_flow5.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow5.jpg', '', 'filename', 'upload'),
(15411, 736, 0, 0, 'caption:', NULL, '736_3sr95N_joe_pugliese_flow7.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow7.jpg', '', 'filename', 'upload'),
(15412, 736, 0, 0, 'caption:', NULL, '736_ksT7U0_joe_pugliese_flow3.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow3.jpg', '', 'filename', 'upload'),
(15413, 736, 0, 0, 'caption:', NULL, '736_7yWZBY_joe_pugliese_flow4.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow4.jpg', '', 'filename', 'upload'),
(15414, 736, 0, 0, 'caption:', NULL, '736_oeGaJK_joe_pugliese_flow8.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow8.jpg', '', 'filename', 'upload'),
(15415, 746, 0, 0, 'caption:', NULL, '746_phjcJQ_joe_pugliese_cook_01.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2099', '2798', 'portrait', 0.7502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_01.jpg', '', 'filename', 'upload'),
(15416, 746, 0, 0, 'caption:', NULL, '746_wjneJC_joe_pugliese_cook_03.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'JOE_PUGLIESE_COOK_03.jpg', '', 'filename', 'upload'),
(15417, 746, 0, 0, 'caption:', NULL, '746_QeRmpb_joe_pugliese_cook_04.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_04.jpg', '', 'filename', 'upload'),
(15418, 746, 0, 0, 'caption:', NULL, '746_HYNzXj_joe_pugliese_cook_05.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5401', '3600', 'landscape', 1.5003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_05.jpg', '', 'filename', 'upload'),
(15419, 746, 0, 0, 'caption:', NULL, '746_oSszTS_joe_pugliese_cook_06.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5398', '3600', 'landscape', 1.4994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_06.jpg', '', 'filename', 'upload'),
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
(15432, 717, 0, 0, 'caption:', NULL, '717_CbClP2_jlc-6000.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4582', '6000', 'portrait', 0.7637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JLC 6000.jpg', '', 'filename', 'upload'),
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
(15451, 753, 0, 0, 'caption:', NULL, '753_0IxgsO_10698anderson_01_0278.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2249', 'landscape', 1.3339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0278.jpg', '', 'filename', 'upload'),
(15452, 753, 0, 0, NULL, NULL, '753_Mjc1pv_dudamel_collage_01.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2796', '2696', 'landscape', 1.0371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dudamel_Collage_01.jpg', NULL, 'filename', 'upload'),
(15453, 754, 0, 0, NULL, NULL, '754_H3t2gJ_06_rogen_0376v2.jpg', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1499', '2000', 'portrait', 0.7495, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06_ROGEN_0376v2.jpg', NULL, 'filename', 'upload'),
(15454, 754, 0, 0, 'caption:', NULL, '754_XnO4E8_05_rogen_0439bw.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1503', '2000', 'portrait', 0.7515, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_ROGEN_0439bw.jpg', '', 'filename', 'upload'),
(15455, 754, 0, 0, NULL, NULL, '754_e4WG46_03_rogen_0237.jpg', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', '1332', 'landscape', 1.5015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03_ROGEN_0237.jpg', NULL, 'filename', 'upload'),
(15456, 754, 0, 0, 'caption:', NULL, '754_vv8TTl_rogen_cover.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2232', '3000', 'portrait', 0.7440, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ROGEN_COVER.jpg', '', 'filename', 'upload'),
(15457, 754, 0, 0, 'caption:', NULL, '754_2SNUZB_02_rogen_0366.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1598', '2000', 'portrait', 0.7990, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02_ROGEN_0366.jpg', '', 'filename', 'upload'),
(15458, 754, 0, 0, 'caption:', NULL, '754_35s2IK_04_rogen_0301.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1599', '2000', 'portrait', 0.7995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04_ROGEN_0301.jpg', '', 'filename', 'upload'),
(15459, 754, 0, 0, 'caption:', NULL, '754_a64q9d_rogen_opener.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4959', '3328', 'landscape', 1.4901, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ROGEN_OPENER.jpg', '', 'filename', 'upload'),
(15460, 754, 0, 0, 'caption:', NULL, '754_37pvau_01_rogen_0078.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01_ROGEN_0078.jpg', '', 'filename', 'upload'),
(15461, 755, 0, 0, 'caption:', NULL, '755_88uTwp_04_09_9975_02_0512.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04_09_9975_02_0512.jpg', '', 'filename', 'upload'),
(15462, 755, 0, 0, 'caption:', NULL, '755_mtrrtr_05_9975_04_0912.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_9975_04_0912.jpg', '', 'filename', 'upload'),
(15463, 755, 0, 0, 'caption:', NULL, '755_Kk9cAK_03_02_9975_02_0471.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03_02_9975_02_0471.jpg', '', 'filename', 'upload'),
(15464, 755, 0, 0, 'caption:', NULL, '755_JssGnY_07_9975_02_0370.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07_9975_02_0370.jpg', '', 'filename', 'upload'),
(15465, 755, 0, 0, 'caption:', NULL, '755_krFRyC_06_11_9975_04_0930.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06_11_9975_04_0930.jpg', '', 'filename', 'upload'),
(15466, 755, 0, 0, 'caption:', NULL, '755_JtIRkO_02_9975_03_0817.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02_9975_03_0817.jpg', '', 'filename', 'upload'),
(15467, 755, 0, 0, 'caption:', NULL, '755_Gay4kJ_08_9975_04_0979.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08_9975_04_0979.jpg', '', 'filename', 'upload'),
(15468, 755, 0, 0, 'caption:', NULL, '755_CujJ9P_01_08_9975_03_0662.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01_08_9975_03_0662.jpg', '', 'filename', 'upload'),
(15469, 755, 0, 0, 'caption:', NULL, '755_sV3CHC_10_9975_04_1043.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10_9975_04_1043.jpg', '', 'filename', 'upload'),
(15470, 755, 0, 0, 'caption:', NULL, '755_vsUGTU_09_9975_04_1080.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09_9975_04_1080.jpg', '', 'filename', 'upload'),
(15471, 757, 0, 0, 'caption:', NULL, '757_pjBUcg_10571_11_1054.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1337', '1645', 'portrait', 0.8128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_11_1054.jpg', '', 'filename', 'upload'),
(15472, 757, 0, 0, 'caption:', NULL, '757_z8fEWm_10571_04_0415.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2483', '3312', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_04_0415.jpg', '', 'filename', 'upload'),
(15473, 757, 0, 0, 'caption:', NULL, '757_sdDbWb_10571_03_0283.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2140', '2619', 'portrait', 0.8171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_03_0283.jpg', '', 'filename', 'upload'),
(15474, 757, 0, 0, 'caption:', NULL, '757_0gATsh_10571_07_0732.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1669', '2093', 'portrait', 0.7974, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_07_0732.jpg', '', 'filename', 'upload'),
(15475, 757, 0, 0, 'caption:', NULL, '757_BV2aPu_10571_11_0975-1.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1713', '2105', 'portrait', 0.8138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_11_0975 1.jpg', '', 'filename', 'upload'),
(15476, 757, 0, 0, 'caption:', NULL, '757_fKziEs_10571_09_0879.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2381', '2911', 'portrait', 0.8179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_09_0879.jpg', '', 'filename', 'upload'),
(15477, 757, 0, 0, 'caption:', NULL, '757_IxwHUM_10571_04_0379.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3072', '1854', 'landscape', 1.6570, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_04_0379.jpg', '', 'filename', 'upload'),
(15478, 757, 0, 0, 'caption:', NULL, '757_KaT0dq_10571_08_0794.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2443', '3063', 'portrait', 0.7976, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_08_0794.jpg', '', 'filename', 'upload'),
(15479, 757, 0, 0, 'caption:', NULL, '757_PyPpvK_10571_05_0542.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2054', '2526', 'portrait', 0.8131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_05_0542.jpg', '', 'filename', 'upload'),
(15480, 757, 0, 0, 'caption:', NULL, '757_84G7wF_10571_13_1246.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2212', '2711', 'portrait', 0.8159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_13_1246.jpg', '', 'filename', 'upload'),
(15481, 757, 0, 0, 'caption:', NULL, '757_DjXCrK_10571_03_0330.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2368', '2899', 'portrait', 0.8168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_03_0330.jpg', '', 'filename', 'upload'),
(15482, 753, 0, 0, 'caption:', NULL, '753_NhLv6G_10735_02_0352.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_02_0352.jpg', '', 'filename', 'upload'),
(15483, 753, 0, 0, NULL, NULL, '753_7vhChm_1920x1080png.png', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1920', '1080', 'landscape', 1.7778, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1920x1080.png', NULL, 'filename', 'upload'),
(15484, 753, NULL, NULL, '', NULL, 'no-image.jpg', NULL, NULL, NULL, NULL, 'Text Entry', NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, 'text-entry', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'filename', 'upload'),
(15485, 753, 0, 0, 'caption:', NULL, '753_6E9izO_pugliese_altman_01.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_Altman_01.jpg', '', 'filename', 'upload'),
(15486, 755, 0, 0, 'caption:', NULL, '755_nyvVYO_02_9975_02_0471.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02_9975_02_0471.jpg', '', 'filename', 'upload'),
(15487, 755, 0, 0, 'caption:', NULL, '755_zyt9qW_04_9975_01_0296.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04_9975_01_0296.jpg', '', 'filename', 'upload'),
(15488, 755, 0, 0, 'caption:', NULL, '755_LjXFl8_05_9975_01_0244.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_9975_01_0244.jpg', '', 'filename', 'upload'),
(15489, 755, 0, 0, 'caption:', NULL, '755_TvSwJf_9975_03_0592-1.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9975_03_0592 1.jpg', '', 'filename', 'upload'),
(15490, 746, 0, 0, 'caption:', NULL, '746_DbFoi5_10723_07_0734.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5398', '3600', 'landscape', 1.4994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10723_07_0734.jpg', '', 'filename', 'upload'),
(15491, 746, 0, 0, 'caption:', NULL, '746_6hWVZG_10723_01_0014.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10723_01_0014.jpg', '', 'filename', 'upload'),
(15492, 746, 0, 0, 'caption:', NULL, '746_IZuIyz_10723_07_0897.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10723_07_0897.jpg', '', 'filename', 'upload'),
(15493, 746, 0, 0, 'caption:', NULL, '746_HLfHvR_wired_tc_cover_02.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wired_TC_COVER_02.jpg', '', 'filename', 'upload'),
(15494, 746, 0, 0, 'caption:', NULL, '746_FHHqGY_wired_tc_inside_01.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4795', '3260', 'landscape', 1.4709, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wired_TC_INSIDE_01.jpg', '', 'filename', 'upload'),
(15495, 758, 0, 0, 'caption:', NULL, '758_1nzrId_10735_01_0021.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_01_0021.jpg', '', 'filename', 'upload'),
(15496, 758, 0, 0, 'caption:', NULL, '758_zZtNEa_10735_03_0624.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_03_0624.jpg', '', 'filename', 'upload'),
(15497, 758, 0, 0, 'caption:', NULL, '758_a8efCM_10735_01_0149-3.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2265', 'landscape', 1.3245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_01_0149 3.jpg', '', 'filename', 'upload'),
(15498, 758, 0, 0, 'caption:', NULL, '758_w06F3a_10735_03_0571.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_03_0571.jpg', '', 'filename', 'upload'),
(15499, 758, 0, 0, 'caption:', NULL, '758_LVDFn2_10735_02_0392.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2001', 'landscape', 1.4993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_02_0392.jpg', '', 'filename', 'upload'),
(15500, 758, 0, 0, 'caption:', NULL, '758_w7kLBV_10735_01_0036.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_01_0036.jpg', '', 'filename', 'upload'),
(15501, 758, 0, 0, 'caption:', NULL, '758_7WzKzE_10735_01_0106v2.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_01_0106v2.jpg', '', 'filename', 'upload'),
(15502, 758, 0, 0, 'caption:', NULL, '758_TUIpDC_10735_03_0588-1.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_03_0588 1.jpg', '', 'filename', 'upload'),
(15503, 758, 0, 0, 'caption:', NULL, '758_lrZySP_10735_03_0592.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_03_0592.jpg', '', 'filename', 'upload'),
(15504, 758, 0, 0, 'caption:', NULL, '758_yapioJ_10735_03_0557.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_03_0557.jpg', '', 'filename', 'upload'),
(15505, 758, 0, 0, 'caption:', NULL, '758_cWpDIt_10735_01_0143.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_01_0143.jpg', '', 'filename', 'upload'),
(15506, 759, 0, 0, 'caption:', NULL, '759_XeVUgA_10698anderson_02_0469jpeg.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_02_0469.jpeg', '', 'filename', 'upload'),
(15507, 759, 0, 0, 'caption:', NULL, '759_ZVNTtw_10698anderson_bts_03_0579jpeg.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_BTS_03_0579.jpeg', '', 'filename', 'upload'),
(15508, 759, 0, 0, 'caption:', NULL, '759_gIKqSz_10698anderson_01_0278jpeg.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2249', 'landscape', 1.3339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0278.jpeg', '', 'filename', 'upload'),
(15509, 759, 0, 0, NULL, NULL, '759_7zfhve_10698anderson_bts_03_0681_r1jpeg.jpg', NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3000', '2006', 'landscape', 1.4955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_BTS_03_0681_R1.jpeg', NULL, 'filename', 'upload'),
(15510, 759, 0, 0, 'caption:', NULL, '759_OUakl0_10698anderson_01_0015jpeg.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0015.jpeg', '', 'filename', 'upload'),
(15511, 759, 0, 0, 'caption:', NULL, '759_SsMtQD_10698anderson_01_0421-b&wjpeg.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2251', '3000', 'portrait', 0.7503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0421 B&W.jpeg', '', 'filename', 'upload'),
(15512, 759, 0, 0, 'caption:', NULL, '759_OlWLPb_10698anderson_01_0383_r1jpeg.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2237', '3000', 'portrait', 0.7457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0383_R1.jpeg', '', 'filename', 'upload'),
(15513, 759, 0, 0, 'caption:', NULL, '759_6YA4ML_10698anderson_01_0241jpeg.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2224', '3000', 'portrait', 0.7413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0241.jpeg', '', 'filename', 'upload'),
(15514, 759, 0, 0, 'caption:', NULL, '759_UhnjJ6_10698anderson_01_0208_r1jpeg.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0208_R1.jpeg', '', 'filename', 'upload'),
(15515, 759, 0, 0, 'caption:', NULL, '759_Y51584_10698anderson_01_0237jpeg.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2238', '3000', 'portrait', 0.7460, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0237.jpeg', '', 'filename', 'upload'),
(15516, 759, 0, 0, NULL, NULL, '759_ANkiVl_screenshot-2025-09-18-at-70648 pmpng.png', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2316', '3130', 'portrait', 0.7389, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dudamel_01v2.gif', NULL, 'filename', 'upload'),
(15517, 760, 0, 0, 'caption:', NULL, '760_qGF3rZ_picard_geordi.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2025', '3000', 'portrait', 0.6750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_GEORDI.jpg', '', 'filename', 'upload'),
(15518, 760, 0, 0, 'caption:', NULL, '760_NW5lZ9_picard_jlp.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2025', '3000', 'portrait', 0.6750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_JLP.jpg', '', 'filename', 'upload'),
(15519, 760, 0, 0, 'caption:', NULL, '760_Ou2tkH_picard_raffi.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2025', '3000', 'portrait', 0.6750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_RAFFI.jpg', '', 'filename', 'upload'),
(15520, 760, 0, 0, 'caption:', NULL, '760_1oFeOo_picard_seven.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2025', '3000', 'portrait', 0.6750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_SEVEN.jpg', '', 'filename', 'upload'),
(15521, 760, 0, 0, 'caption:', NULL, '760_KCEiVc_picard_will.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2025', '3000', 'portrait', 0.6750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_WILL.jpg', '', 'filename', 'upload'),
(15522, 760, 0, 0, 'caption:', NULL, '760_NJIc4A_picard_worf.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2025', '3000', 'portrait', 0.6750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PICARD_WORF.jpg', '', 'filename', 'upload'),
(15523, 761, 0, 0, 'caption:', NULL, '761_XQwMyd_joe_pugliese_mariachi5.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_mariachi5.jpg', '', 'filename', 'upload'),
(15524, 761, 0, 0, 'caption:', NULL, '761_G9KsCh_joe_pugliese_mariachi4.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_mariachi4.jpg', '', 'filename', 'upload'),
(15525, 761, 0, 0, 'caption:', NULL, '761_xrZJEs_joe_pugliese_mariachi1.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_mariachi1.jpg', '', 'filename', 'upload'),
(15526, 761, 0, 0, 'caption:', NULL, '761_puEimK_joe_pugliese_mariachi6.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_mariachi6.jpg', '', 'filename', 'upload'),
(15527, 761, 0, 0, 'caption:', NULL, '761_zjHah5_joe_pugliese_mariachi3.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_mariachi3.jpg', '', 'filename', 'upload'),
(15528, 761, 0, 0, 'caption:', NULL, '761_cIhmeO_joe_pugliese_mariachi7.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_mariachi7.jpg', '', 'filename', 'upload'),
(15529, 753, 0, 0, NULL, NULL, '753_oY2Vve_jada_01.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2404', '3000', 'portrait', 0.8013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jada_01.jpg', NULL, 'filename', 'upload'),
(15530, 753, 0, 0, NULL, NULL, '753_eKHBry_jada_03.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jada_03.jpg', NULL, 'filename', 'upload'),
(15531, 753, 0, 0, 'caption:', NULL, '753_nfB1sx_jada_04.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jada_04.jpg', '', 'filename', 'upload'),
(15532, 753, 0, 0, NULL, NULL, '753_Ar837e_jada_02.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jada_02.jpg', NULL, 'filename', 'upload'),
(15533, 753, 0, 0, 'caption:', NULL, '753_IKmO07_lake_05_2898.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKE_05_2898.jpg', '', 'filename', 'upload'),
(15534, 745, 0, 0, NULL, NULL, '745_o2To3B_muscle_03.jpg', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2401', '3000', 'portrait', 0.8003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MUSCLE_03.jpg', NULL, 'filename', 'upload'),
(15535, 745, 0, 0, 'caption:', NULL, '745_zgoSx1_muscle_02.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MUSCLE_02.jpg', '', 'filename', 'upload'),
(15536, 745, 0, 0, 'caption:', NULL, '745_m5vZ2N_muscle_04.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MUSCLE_04.jpg', '', 'filename', 'upload'),
(15537, 745, 0, 0, 'caption:', NULL, '745_2lWBLJ_muscle_01.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2258', '3000', 'portrait', 0.7527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MUSCLE_01.jpg', '', 'filename', 'upload');
INSERT INTO `pics` (`id`, `catid`, `picid`, `moduleid`, `caption`, `thumb`, `img`, `alt1`, `alt2`, `alt3`, `sortBy`, `title`, `picURL`, `shortDesc`, `price`, `wPrice`, `salesPrice`, `weight`, `posterImg`, `tags`, `slug`, `customSlug`, `imgType`, `imgSize`, `artistid`, `width`, `height`, `orientation`, `aspectRatio`, `posterWidth`, `posterHeight`, `posterOrientation`, `pdf`, `related`, `relatedColors`, `colorid`, `hover`, `ignoreQty`, `soldOut`, `featuredQty`, `metaTitle`, `metaDesc`, `metaKeywords`, `metaImage`, `metaImageWidth`, `metaImageHeight`, `status`, `lbCount`, `bgColor`, `filename`, `rowBreak`, `sorter`, `imgSrc`) VALUES
(15538, 745, 0, 0, 'caption:', NULL, '745_Qt4nts_muscle_06.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2401', '3000', 'portrait', 0.8003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MUSCLE_06.jpg', '', 'filename', 'upload'),
(15539, 745, 0, 0, 'caption:', NULL, '745_Tf0B1F_muscle_07.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2256', '3000', 'portrait', 0.7520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MUSCLE_07.jpg', '', 'filename', 'upload'),
(15540, 745, 0, 0, 'caption:', NULL, '745_VlINnn_muscle_05.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MUSCLE_05.jpg', '', 'filename', 'upload'),
(15541, 745, 0, 0, NULL, NULL, '745_SNY6OH_muscle_08.jpg', NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2401', '3000', 'portrait', 0.8003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MUSCLE_08.jpg', NULL, 'filename', 'upload'),
(15542, 745, 0, 0, 'caption:', NULL, '745_z3ccsz_muscle_04.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MUSCLE_04.jpg', '', 'filename', 'upload'),
(15543, 753, 0, 0, 'caption:', NULL, '753_Dd6rY2_oprah_01.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Oprah_01.jpg', '', 'filename', 'upload'),
(15544, 753, 0, 0, 'caption:', NULL, '753_5OqQYp_10734_07_0416-1.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10734_07_0416 1.jpg', '', 'filename', 'upload'),
(15545, 753, 0, 0, 'caption:', NULL, '753_EpCt16_joe_pugliese_brolin_01.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2001', 'landscape', 1.4993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_BROLIN_01.jpg', '', 'filename', 'upload'),
(15546, 753, 0, 0, 'caption:', NULL, '753_h8fjYd_joe_pugliese_cook_01.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2099', '2798', 'portrait', 0.7502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_COOK_01.jpg', '', 'filename', 'upload'),
(15547, 730, 0, 0, 'caption:', NULL, '730_3UKpSn_joe_pugliese_apa_05.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2025', '3000', 'portrait', 0.6750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_APA_05.jpg', '', 'filename', 'upload'),
(15548, 730, 0, 0, 'caption:', NULL, '730_3VI5St_joe_pugliese_apa_04.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1382', '2048', 'portrait', 0.6748, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_APA_04.jpg', '', 'filename', 'upload'),
(15549, 730, 0, 0, 'caption:', NULL, '730_RYAjaV_joe_pugliese_apa_01.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '3000', 'portrait', 0.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_APA_01.jpg', '', 'filename', 'upload'),
(15550, 730, 0, 0, 'caption:', NULL, '730_wcNDSX_joe_pugliese_apa_02.jpg', NULL, NULL, NULL, 23, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3158', '5000', 'portrait', 0.6316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_APA_02.jpg', '', 'filename', 'upload'),
(15551, 730, 0, 0, 'caption:', NULL, '730_dBPj7Z_joe_pugliese_apa_03.jpg', NULL, NULL, NULL, 15, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2025', '3000', 'portrait', 0.6750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_APA_03.jpg', '', 'filename', 'upload'),
(15552, 730, 0, 0, 'caption:', NULL, '730_rMFrGc_1535791_mkt-pa_succession-s2_ka_po_72b.jpg', NULL, NULL, NULL, 22, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '648', '960', 'portrait', 0.6750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1535791_MKT-PA_Succession S2_KA_PO_72B.jpg', '', 'filename', 'upload'),
(15553, 730, 0, 0, 'caption:', NULL, '730_S3QaDB_doc_fox_2.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1382', '2048', 'portrait', 0.6748, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Doc_Fox_2.jpg', '', 'filename', 'upload'),
(15554, 730, 0, 0, 'caption:', NULL, '730_LtNUo8_mountainhead.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2104', '3118', 'portrait', 0.6748, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mountainhead.jpg', '', 'filename', 'upload'),
(15555, 730, 0, 0, 'Musician and Producer', NULL, '730_dL1feg_9841_03_0261.jpg', NULL, NULL, NULL, 111, 'Dr Dre', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'dr-dre', '', NULL, '', NULL, '1435', '1943', 'portrait', 0.7385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9841_03_0261.jpg', '', 'filename', 'upload'),
(15556, 730, 0, 0, NULL, NULL, '730_r0HnZV_9871_09_0872.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9871_09_0872.jpg', NULL, 'filename', 'upload'),
(15557, 730, 0, 0, 'caption:', NULL, '730_OqXNWL_10505_06_0741.jpg', NULL, NULL, NULL, 144, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2314', '3000', 'portrait', 0.7713, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10505_06_0741.jpg', '', 'filename', 'upload'),
(15558, 730, 0, 0, 'caption:', NULL, '730_MBbetG_p_tpe_01.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1916', 'landscape', 1.5658, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_TPE_01.jpg', '', 'filename', 'upload'),
(15559, 730, 0, 0, 'Musician', NULL, '730_q3bqmh_pugliese_04.jpg', NULL, NULL, NULL, 17, 'Lana Del Rey', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'lana-del-rey', '', NULL, '', NULL, '2397', '3200', 'portrait', 0.7491, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pugliese_04.jpg', '', 'filename', 'upload'),
(15560, 730, 0, 0, 'caption:', NULL, '730_cK8YMb_9786_02_0130.jpg', NULL, NULL, NULL, 145, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1538', '2000', 'portrait', 0.7690, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9786_02_0130.jpg', '', 'filename', 'upload'),
(15561, 730, 0, 0, 'Musician', NULL, '730_cVLCH6_bono_01.jpg', NULL, NULL, NULL, 146, 'Bono', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'bono', '', NULL, '', NULL, '1533', '2000', 'portrait', 0.7665, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'BONO_01.JPG', '', 'filename', 'upload'),
(15562, 730, 0, 0, 'caption:', NULL, '730_CAoETt_pugliese_03.jpg', NULL, NULL, NULL, 79, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3902', '5202', 'portrait', 0.7501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_03.jpg', '', 'filename', 'upload'),
(15563, 730, 0, 0, 'CEO', NULL, '730_LCQuwu_9703_01_0098.jpg', NULL, NULL, NULL, 97, 'Elon Musk', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'elon-musk', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9703_01_0098.jpg', '', 'filename', 'upload'),
(15564, 753, 0, 0, 'caption:', NULL, '753_F0aobR_pugliese_10699_01_0084vjp.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1853', '2316', 'portrait', 0.8001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_10699_01_0084vJP.jpg', '', 'filename', 'upload'),
(15565, 753, 0, 0, 'caption:', NULL, '753_drommm_10675_14_2252.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_14_2252.jpg', '', 'filename', 'upload'),
(15566, 730, 0, 0, NULL, NULL, '730_VsTjHQ_cover_10554_03_0928.jpg', NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cover_10554_03_0928.jpg', NULL, 'filename', 'upload'),
(15567, 730, 0, 0, 'caption:', NULL, '730_ANkBKc_cover_10550_05_0852.jpg', NULL, NULL, NULL, 139, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cover_10550_05_0852.jpg', '', 'filename', 'upload'),
(15568, 730, 0, 0, 'caption:', NULL, '730_mYjqq6_extra_10545_02_0419.jpg', NULL, NULL, NULL, 140, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Extra_10545_02_0419.jpg', '', 'filename', 'upload'),
(15569, 730, 0, 0, 'caption:', NULL, '730_mYuZVd_cover_10545_02_0472.jpg', NULL, NULL, NULL, 141, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cover_10545_02_0472.jpg', '', 'filename', 'upload'),
(15570, 730, 0, 0, 'caption:', NULL, '730_0vRQ4D_10545_01_0376.jpg', NULL, NULL, NULL, 142, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2308', '3000', 'portrait', 0.7693, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10545_01_0376.jpg', '', 'filename', 'upload'),
(15571, 730, 0, 0, 'Actor and Creator', NULL, '730_lBgCsD_cover_10553_03_0919.jpg', NULL, NULL, NULL, 108, 'Lena Waithe', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'lena-waithe', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Cover_10553_03_0919.jpg', '', 'filename', 'upload'),
(15572, 753, 0, 0, 'caption:', NULL, '753_isZVtl_anderson_cooper_062022_0211.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ANDERSON_COOPER_062022_0211.jpg', '', 'filename', 'upload'),
(15573, 753, 0, 0, 'caption:', NULL, '753_dI6zAl_10619_01_0157rt_v2.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10619_01_0157RT_V2.jpg', '', 'filename', 'upload'),
(15574, 750, 0, 0, NULL, NULL, '750_BBZkxO_nup_205652_00001.jpg', NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3000', '1688', 'landscape', 1.7773, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nup_205652_00001.jpg', NULL, 'filename', 'upload'),
(15575, 750, 0, 0, 'caption:', NULL, '750_cgwW7v_nup_205652_00002.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nup_205652_00002.jpg', '', 'filename', 'upload'),
(15576, 750, 0, 0, 'caption:', NULL, '750_CTW9Pk_better_call_saul_ver8_xlg.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '900', '1333', 'portrait', 0.6752, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'better_call_saul_ver8_xlg.jpg', '', 'filename', 'upload'),
(15577, 750, 0, 0, 'caption:', NULL, '750_YnXEKu_375436id2a_hak_48x72_wildpostings_2up_knife_rgb.jpg', NULL, NULL, NULL, 21, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4000', '3000', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '375436id2a_HAK_48x72_WildPostings_2UP_KNIFE_RGB.jpg', '', 'filename', 'upload'),
(15578, 750, 0, 0, 'caption:', NULL, '750_ZtY0V4_1535791_mkt-pa_succession-s2_ka_po_72b.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2592', '3840', 'portrait', 0.6750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1535791_MKT-PA_Succession S2_KA_PO_72B.jpg', '', 'filename', 'upload'),
(15579, 750, 0, 0, 'caption:', NULL, '750_3qeEvc_hak_614_digital1sheet5_rgb_1.jpg', NULL, NULL, NULL, 24, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3158', '5000', 'portrait', 0.6316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HAK_614_Digital1Sheet5_RGB_1.jpg', '', 'filename', 'upload'),
(15580, 750, 0, 0, 'caption:', NULL, '750_3Bu9e1_hak_1sheet_maskpeacock_rgb_5smjpeg.jpg', NULL, NULL, NULL, 22, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1579', '2500', 'portrait', 0.6316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HAK_1Sheet_MaskPeacock_RGB_5SM.jpeg', '', 'filename', 'upload'),
(15581, 750, 0, 0, 'caption:', NULL, '750_clkAa0_hm-ho_succession_s4_ka_48x14_rgb_titletag.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4500', '1313', 'landscape', 3.4273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HM-HO_SUCCESSION_S4_KA_48x14_RGB_TitleTag.jpg', '', 'filename', 'upload'),
(15582, 750, 0, 0, 'caption:', NULL, '750_PzvZdN_tls_s01_dungeon_verticalfinish_bleed_121922.jpg', NULL, NULL, NULL, 20, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2071', '3000', 'portrait', 0.6903, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TLS_S01_Dungeon_VerticalFinish_Bleed_121922.jpg', '', 'filename', 'upload'),
(15583, 750, 0, 0, 'caption:', NULL, '750_jDQS8o_pr_wildpost_70x48_karlie_fin_04.jpg', NULL, NULL, NULL, 26, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2070', '3000', 'portrait', 0.6900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PR_WILDPOST_70x48_KARLIE_FIN_04.jpg', '', 'filename', 'upload'),
(15584, 750, 0, 0, 'caption:', NULL, '750_zdjbyE_project_runway_s18_ka_subway_2-sht_purple-salmon_fin_04_x-1a.jpg', NULL, NULL, NULL, 27, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2323', 'landscape', 1.2914, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PROJECT_RUNWAY_S18_KA_SUBWAY_2-SHT_PURPLE-SALMON_FIN_04_X-1a.jpg', '', 'filename', 'upload'),
(15585, 750, 0, 0, 'caption:', NULL, '750_tw3nUp_1647245_mkt_pm_succession_s3_ca_shiv_connor_1080x1350_ig.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1080', '1350', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1647245_MKT_PM_Succession_S3_CA_Shiv_Connor_1080x1350_IG.jpg', '', 'filename', 'upload'),
(15586, 750, 0, 0, 'caption:', NULL, '750_iXnshT_1647245_mkt_pm_succession_s3_ca_geri_roman_1080x1350_ig.jpg', NULL, NULL, NULL, 18, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1080', '1350', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1647245_MKT_PM_Succession_S3_CA_Geri_Roman_1080x1350_IG.jpg', '', 'filename', 'upload'),
(15587, 750, 0, 0, 'caption:', NULL, '750_IQPgxG_1647245_mkt_pm_succession_s3_ca_kendal_logan_1080x1350_ig.jpg', NULL, NULL, NULL, 17, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1080', '1350', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1647245_MKT_PM_Succession_S3_CA_Kendal_Logan_1080x1350_IG.jpg', '', 'filename', 'upload'),
(15588, 750, 0, 0, 'caption:', NULL, '750_1Jtbx2_1647245_mkt_pm_succession_s3_ca_tom_greg_1080x1350_ig.jpg', NULL, NULL, NULL, 19, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1080', '1350', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1647245_MKT_PM_Succession_S3_CA_Tom_Greg_1080x1350_IG.jpg', '', 'filename', 'upload'),
(15589, 761, 0, 0, 'caption:', NULL, '761_xry5oJ_51_joepug.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '960', '1280', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51_JOEPUG.jpg', '', 'filename', 'upload'),
(15590, 761, 0, 0, 'caption:', NULL, '761_Ef10H7_55_joepug.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '960', '1280', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '55_JOEPUG.jpg', '', 'filename', 'upload'),
(15591, 761, 0, 0, 'caption:', NULL, '761_avr89q_53_joepug.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '960', '1280', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '53_JOEPUG.jpg', '', 'filename', 'upload'),
(15592, 761, 0, 0, 'caption:', NULL, '761_fYKMeG_52_joepug.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '960', '1280', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '52_JOEPUG.jpg', '', 'filename', 'upload'),
(15593, 763, 0, 0, 'caption:', NULL, '763_9H0uZN_joe_pugliese_mx_02.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_02.jpg', '', 'filename', 'upload'),
(15594, 763, 0, 0, 'caption:', NULL, '763_7Jzt7L_joe_pugliese_mx_03.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_03.jpg', '', 'filename', 'upload'),
(15595, 763, 0, 0, 'caption:', NULL, '763_98Op3b_joe_pugliese_mx_01.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_01.jpg', '', 'filename', 'upload'),
(15596, 763, 0, 0, 'caption:', NULL, '763_X5Q9um_joe_pugliese_mx_06.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2254', '2818', 'portrait', 0.7999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_06.jpg', '', 'filename', 'upload'),
(15597, 763, 0, 0, 'caption:', NULL, '763_ZuV92K_joe_pugliese_mx_05.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_05.jpg', '', 'filename', 'upload'),
(15598, 763, 0, 0, 'caption:', NULL, '763_aQ9fhI_joe_pugliese_mx_08.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_08.jpg', '', 'filename', 'upload'),
(15599, 763, 0, 0, 'caption:', NULL, '763_5VCeQc_joe_pugliese_mx_11.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3904', '2610', 'landscape', 1.4958, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_11.jpg', '', 'filename', 'upload'),
(15600, 763, 0, 0, 'caption:', NULL, '763_LM3xm1_joe_pugliese_mx_10.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_10.jpg', '', 'filename', 'upload'),
(15601, 763, 0, 0, 'caption:', NULL, '763_W3z4iX_joe_pugliese_mx_09.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2001', 'landscape', 1.4993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_09.jpg', '', 'filename', 'upload'),
(15602, 763, 0, 0, 'caption:', NULL, '763_92beTc_joe_pugliese_mx_07.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2252', 'landscape', 1.3321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_07.jpg', '', 'filename', 'upload'),
(15603, 763, 0, 0, 'caption:', NULL, '763_yEjvBZ_joe_pugliese_mx_12.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_12.jpg', '', 'filename', 'upload'),
(15604, 764, 0, 0, NULL, NULL, '764_Gc4far_10658_01_0117.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4063', '5418', 'portrait', 0.7499, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10658_01_0117.jpg', NULL, 'filename', 'upload'),
(15605, 764, 0, 0, 'caption:', NULL, '764_ZxK4XW_10658_03_0270.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10658_03_0270.jpg', '', 'filename', 'upload'),
(15606, 764, 0, 0, 'caption:', NULL, '764_efPmIS_10658_05_0575.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2105', 'landscape', 1.4252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10658_05_0575.jpg', '', 'filename', 'upload'),
(15607, 764, 0, 0, 'caption:', NULL, '764_zZpvF8_10658_01_0166-1.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10658_01_0166 1.jpg', '', 'filename', 'upload'),
(15608, 764, 0, 0, 'caption:', NULL, '764_zTCVq1_10658_05_0659.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10658_05_0659.jpg', '', 'filename', 'upload'),
(15609, 764, 0, 0, 'caption:', NULL, '764_hqthtX_10658_04_0338.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10658_04_0338.jpg', '', 'filename', 'upload'),
(15610, 764, 0, 0, 'caption:', NULL, '764_nxQ9ET_10658_04_0379.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2249', 'landscape', 1.3339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10658_04_0379.jpg', '', 'filename', 'upload'),
(15611, 764, 0, 0, 'caption:', NULL, '764_GdIO6T_10658_03_0333.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4001', '3000', 'landscape', 1.3337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10658_03_0333.jpg', '', 'filename', 'upload'),
(15612, 764, 0, 0, 'caption:', NULL, '764_BU2uCW_10658_01_0117.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10658_01_0117.jpg', '', 'filename', 'upload'),
(15613, 764, 0, 0, 'caption:', NULL, '764_D69bJl_10658_03_0281.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4500', '3000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10658_03_0281.jpg', '', 'filename', 'upload'),
(15614, 764, 0, 0, 'caption:', NULL, '764_NAXegW_10658_04_0370.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4001', '3000', 'landscape', 1.3337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10658_04_0370.jpg', '', 'filename', 'upload'),
(15615, 741, 0, 0, 'caption:', NULL, '741_O97JNt_10638_01_0280.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10638_01_0280.jpg', '', 'filename', 'upload'),
(15616, 759, 0, 0, 'caption:', NULL, '759_7z6W0O_pam_contact_01.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1844', '2305', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PAM_Contact_01.jpg', '', 'filename', 'upload'),
(15617, 759, 0, 0, 'caption:', NULL, '759_dkrs9s_pugliese_pamanderson_cover.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2480', '3330', 'portrait', 0.7447, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_PamAnderson_Cover.jpg', '', 'filename', 'upload'),
(15618, 730, 0, 0, 'Creators', NULL, '730_MEyRyj_joe_pugliese_duffbros1.jpg', NULL, NULL, NULL, 80, 'Duffer Brothers', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'duffer-brothers', '', NULL, '', NULL, '1470', '2000', 'portrait', 0.7350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_duffbros1.JPG', '', 'filename', 'upload'),
(15619, 730, 0, 0, 'Creators', NULL, '730_pLttNC_joe_pugliese_duffbros2.jpg', NULL, NULL, NULL, 81, 'Duffer Brothers', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'duffer-brothers', '', NULL, '', NULL, '3060', '2000', 'landscape', 1.5300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_duffbros2.JPG', '', 'filename', 'upload'),
(15620, 730, 0, 0, 'Icon', NULL, '730_JT8KJU_joe_pugliese_dolly1.jpg', NULL, NULL, NULL, 2, 'Dolly Parton', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'dolly-parton', '', NULL, '', NULL, '3000', '3999', 'portrait', 0.7502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_dolly1.jpg', '', 'filename', 'upload'),
(15621, 730, 0, 0, 'caption:', NULL, '730_okWpgk_joe_pugliese_hat_1.jpg', NULL, NULL, NULL, 82, 'Stuart Hetherington', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'stuart-hetherington', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_hat_1.jpg', '', 'filename', 'upload'),
(15622, 730, 0, 0, 'Personal Work', NULL, '730_ebATc0_joe_pugliese_lucian2.jpg', NULL, NULL, NULL, 85, 'Lucian', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'lucian', '', NULL, '', NULL, '2000', '2500', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_lucian2.jpg', '', 'filename', 'upload'),
(15623, 730, 0, 0, 'Personal Work', NULL, '730_hLDsz0_joe_pugliese_lucian3.jpg', NULL, NULL, NULL, 86, 'Lucian', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'lucian', '', NULL, '', NULL, '2000', '2500', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_lucian3.jpg', '', 'filename', 'upload'),
(15624, 730, 0, 0, 'Personal Work', NULL, '730_Cm2RHE_joe_pugliese_lucian1.jpg', NULL, NULL, NULL, 87, 'Lucian', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'lucian', '', NULL, '', NULL, '2000', '2500', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_lucian1.jpg', '', 'filename', 'upload'),
(15625, 730, 0, 0, 'Actor', NULL, '730_tWQCO9_joe_pugliese_lithgow1.jpg', NULL, NULL, NULL, 84, 'John Lithgow', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'john-lithgow', '', NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_lithgow1.JPG', '', 'filename', 'upload'),
(15626, 730, 0, 0, 'Athlete', NULL, '730_EdeLqA_joe_pugliese_yelich1.jpg', NULL, NULL, NULL, 89, 'Christian Yelich', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'christian-yelich', '', NULL, '', NULL, '3000', '1800', 'landscape', 1.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_yelich1.jpg', '', 'filename', 'upload'),
(15627, 730, 0, 0, 'Athlete', NULL, '730_GNSjq0_joe_pugliese_yelich3.jpg', NULL, NULL, NULL, 90, 'Christian Yelich', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'christian-yelich', '', NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_yelich3.jpg', '', 'filename', 'upload'),
(15628, 730, 0, 0, 'Director', NULL, '730_LX2vpi_joe_pugliese_zhao1.jpg', NULL, NULL, NULL, 79, 'Chloé Zhao', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'chlo-zhao', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'joe_pugliese_zhao1.jpg', '', 'filename', 'upload'),
(15629, 730, 0, 0, 'Actor', NULL, '730_AcDaxo_10700_01_0285.jpg', NULL, NULL, NULL, 9, 'Jada Pinkett Smith', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jada-pinkett-smith', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10700_01_0285.jpg', '', 'filename', 'upload'),
(15630, 730, 0, 0, 'Actor', NULL, '730_ZAtgUA_10700_04_0987-1.jpg', NULL, NULL, NULL, 8, 'Jada Pinkett Smith', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jada-pinkett-smith', '', NULL, '', NULL, '3606', '4500', 'portrait', 0.8013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10700_04_0987 1.jpg', '', 'filename', 'upload'),
(15631, 730, 0, 0, 'Actor', NULL, '730_q7yUTn_pugliese_10700_01_0130.jpg', NULL, NULL, NULL, 7, 'Jada Pinkett Smith', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jada-pinkett-smith', '', NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pugliese_10700_01_0130.jpg', '', 'filename', 'upload'),
(15632, 730, 0, 0, 'caption:', NULL, '730_5jnfXC_sunday-times_15-10-2023_y1gg_p1.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2552', '3402', 'portrait', 0.7501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sunday Times_15-10-2023_Y1GG_p1.jpg', '', 'filename', 'upload'),
(15633, 730, 0, 0, 'caption:', NULL, '730_Gk8Oi1_altmanfinalcover.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2429', '3000', 'portrait', 0.8097, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ALTMAN.FINAL.COVER.jpg', '', 'filename', 'upload'),
(15634, 730, 0, 0, 'caption:', NULL, '730_cN13sO_altmaninside.jpg', NULL, NULL, NULL, 74, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2520', '3150', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ALTMAN.inside.jpg', '', 'filename', 'upload'),
(15635, 744, 0, 0, 'caption:', NULL, '744_h1fzGL_10724_03_0491.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0491.jpg', '', 'filename', 'upload'),
(15636, 730, 0, 0, 'caption:', NULL, '730_SoeNGe_08302024_joe_pug4095v2.jpg', NULL, NULL, NULL, 121, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08.30.2024_JOE_PUG4095v2.jpg', '', 'filename', 'upload'),
(15637, 730, 0, 0, NULL, NULL, '730_wsS0Lh_lana-ig.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4968', '6210', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LANA IG.jpg', NULL, 'filename', 'upload'),
(15638, 730, 0, 0, 'Musician', NULL, '730_bhfaMJ_lana-ig.jpg', NULL, NULL, NULL, 16, 'Lana Del Rey', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'lana-del-rey', '', NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'LANA IG.jpg', '', 'filename', 'upload'),
(15639, 730, 0, 0, 'caption:', NULL, '730_XZ6u9E_2024-mls-season-pass-artjpeg.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1920', '1080', 'landscape', 1.7778, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024 MLS Season Pass art.jpeg', '', 'filename', 'upload'),
(15640, 730, 0, 0, 'caption:', NULL, '730_9IaNnW_messi_la.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4032', '3024', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Messi_LA.jpg', '', 'filename', 'upload'),
(15641, 745, 0, 0, 'caption:', NULL, '745_cOLXz3_9983_01_0312-1.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_01_0312 1.jpg', '', 'filename', 'upload'),
(15642, 745, 0, 0, NULL, NULL, '745_l6WIU4_9983_04_1082-1.jpg', NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9983_04_1082 1.jpg', NULL, 'filename', 'upload'),
(15643, 730, 0, 0, 'caption:', NULL, '730_DwgBF8_swan_01.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1855', '2787', 'portrait', 0.6656, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SWAN_01.jpg', '', 'filename', 'upload'),
(15644, 765, 0, 0, 'caption:', NULL, '765_ibDpPe_lake_01_0281.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5111', '3408', 'landscape', 1.4997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKE_01_0281.jpg', '', 'filename', 'upload'),
(15645, 765, 0, 0, 'caption:', NULL, '765_Jn8FOs_lake_05_3599-1.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3625', '4532', 'portrait', 0.7999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKE_05_3599 1.jpg', '', 'filename', 'upload'),
(15646, 765, 0, 0, 'caption:', NULL, '765_T2W9XI_lake_01_0154.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3878', '5171', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKE_01_0154.jpg', '', 'filename', 'upload'),
(15647, 765, 0, 0, 'caption:', NULL, '765_i7ddXz_lake_03_1031.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4896', '6528', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKE_03_1031.jpg', '', 'filename', 'upload'),
(15648, 765, 0, 0, 'caption:', NULL, '765_sSgaxq_lake_05_3639.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4177', '5221', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKE_05_3639.jpg', '', 'filename', 'upload'),
(15649, 765, 0, 0, 'caption:', NULL, '765_A9DYZQ_lake_02_0907.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5198', '3465', 'landscape', 1.5001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKE_02_0907.jpg', '', 'filename', 'upload'),
(15650, 765, 0, 0, 'caption:', NULL, '765_K8SCOg_lake_05_2898.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKE_05_2898.jpg', '', 'filename', 'upload'),
(15651, 765, 0, 0, 'caption:', NULL, '765_CDPpSI_lake_03_1570.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '6959', '4639', 'landscape', 1.5001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKE_03_1570.jpg', '', 'filename', 'upload'),
(15652, 765, 0, 0, 'caption:', NULL, '765_nMhSrf_lake_03_1726-1.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4938', '6584', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKE_03_1726 1.jpg', '', 'filename', 'upload'),
(15653, 765, 0, 0, 'caption:', NULL, '765_uGxNwt_lake_04_2493.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5564', '3710', 'landscape', 1.4997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKE_04_2493.jpg', '', 'filename', 'upload'),
(15654, 730, 0, 0, 'Actor', NULL, '730_WNV23l_fox_01.jpg', NULL, NULL, NULL, 69, 'Michael J. Fox', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'michael-j-fox', '', NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'FOX_01.jpg', '', 'filename', 'upload'),
(15655, 730, 0, 0, 'Actor', NULL, '730_csogYk_fox_03.jpg', NULL, NULL, NULL, 70, 'Michael J. Fox', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'michael-j-fox', '', NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'FOX_03.jpg', '', 'filename', 'upload'),
(15656, 730, 0, 0, 'caption:', NULL, '730_TDocXO_loyal_01.jpg', NULL, NULL, NULL, 15, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3444', '4500', 'portrait', 0.7653, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LOYAL_01.jpg', '', 'filename', 'upload'),
(15657, 730, 0, 0, 'Actor', NULL, '730_7Aw8lF_fox_02.jpg', NULL, NULL, NULL, 71, 'Michael J. Fox', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'michael-j-fox', '', NULL, '', NULL, '3973', '3000', 'landscape', 1.3243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'FOX_02.jpg', '', 'filename', 'upload'),
(15658, 743, 0, 0, 'caption:', NULL, '743_LSlOKC_10675_19_2931.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_19_2931.jpg', '', 'filename', 'upload'),
(15659, 730, 0, 0, 'caption:', NULL, '730_Q3qFYp_10675_17_2554.jpg', NULL, NULL, NULL, 57, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_17_2554.jpg', '', 'filename', 'upload'),
(15660, 751, 0, 0, 'caption:', NULL, '751_Z4Tgmy_pugliese_pamanderson_cover.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2480', '3330', 'portrait', 0.7447, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_PamAnderson_Cover.jpg', '', 'filename', 'upload'),
(15661, 746, 0, 0, 'caption:', NULL, '746_wmbOU5_10723_03_0299.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10723_03_0299.jpg', '', 'filename', 'upload'),
(15662, 750, 0, 0, 'caption:', NULL, '750_LswqL8_hand-of-godpng.png', NULL, NULL, NULL, 25, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1366', '2000', 'portrait', 0.6830, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hand of God.png', '', 'filename', 'upload'),
(15663, 751, 0, 0, 'caption:', NULL, '751_dhODKe_inc_cover.jpg', NULL, NULL, NULL, 27, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2403', '3157', 'portrait', 0.7612, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inc_Cover.jpg', '', 'filename', 'upload');
INSERT INTO `pics` (`id`, `catid`, `picid`, `moduleid`, `caption`, `thumb`, `img`, `alt1`, `alt2`, `alt3`, `sortBy`, `title`, `picURL`, `shortDesc`, `price`, `wPrice`, `salesPrice`, `weight`, `posterImg`, `tags`, `slug`, `customSlug`, `imgType`, `imgSize`, `artistid`, `width`, `height`, `orientation`, `aspectRatio`, `posterWidth`, `posterHeight`, `posterOrientation`, `pdf`, `related`, `relatedColors`, `colorid`, `hover`, `ignoreQty`, `soldOut`, `featuredQty`, `metaTitle`, `metaDesc`, `metaKeywords`, `metaImage`, `metaImageWidth`, `metaImageHeight`, `status`, `lbCount`, `bgColor`, `filename`, `rowBreak`, `sorter`, `imgSrc`) VALUES
(15664, 751, 0, 0, 'caption:', NULL, '751_1G4HPF_jp_jlo_07.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1000', '1293', 'portrait', 0.7734, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_07.jpg', '', 'filename', 'upload'),
(15665, 751, 0, 0, 'caption:', NULL, '751_Y2GBKR_e-090619-coverpromo9a-copy.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '3600', 'portrait', 0.8333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E-090619-COVERPROMO9A copy.jpg', '', 'filename', 'upload'),
(15666, 751, 0, 0, 'caption:', NULL, '751_5mWbt4_ewcvr1515_promo.jpg', NULL, NULL, NULL, 25, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2363', '3150', 'portrait', 0.7502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EWCVR1515_PROMO.jpg', '', 'filename', 'upload'),
(15667, 730, 0, 0, 'Actor', NULL, '730_rKHv4X_10618_04_0413jpeg.jpg', NULL, NULL, NULL, 6, 'John Cena', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'john-cena', '', NULL, '', NULL, '3000', '2004', 'landscape', 1.4970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10618_04_0413.jpeg', '', 'filename', 'upload'),
(15668, 730, 0, 0, 'caption:', NULL, '730_LYOUD5_10599_04_0899jp.jpg', NULL, NULL, NULL, 38, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2291', '3000', 'portrait', 0.7637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10599_04_0899JP.jpg', '', 'filename', 'upload'),
(15669, 751, 0, 0, 'caption:', NULL, '751_ZyEfqU_jp_pelosi_cover.jpg', NULL, NULL, NULL, 16, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1000', '1293', 'portrait', 0.7734, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_Pelosi_Cover.jpg', '', 'filename', 'upload'),
(15670, 730, 0, 0, 'Innovator', NULL, '730_VHA1Bc_p_sjo_03.jpg', NULL, NULL, NULL, 40, 'Steve Jobs', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'steve-jobs', '', NULL, '', NULL, '2242', '2880', 'portrait', 0.7785, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_SJO_03.jpg', '', 'filename', 'upload'),
(15671, 730, 0, 0, 'Musician', NULL, '730_gq8MMF_p_jwh_06.jpg', NULL, NULL, NULL, 67, 'Jack White', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jack-white', '', NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_JWH_06.jpg', '', 'filename', 'upload'),
(15672, 730, 0, 0, 'caption:', NULL, '730_waRLVV_p_sjo_01.jpg', NULL, NULL, NULL, 42, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2240', '2880', 'portrait', 0.7778, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_SJO_01.jpg', '', 'filename', 'upload'),
(15673, 730, 0, 0, 'caption:', NULL, '730_UGZ4pG_p_tpe_01.jpg', NULL, NULL, NULL, 73, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1916', 'landscape', 1.5658, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_TPE_01.jpg', '', 'filename', 'upload'),
(15674, 730, 0, 0, 'Innovator', NULL, '730_FjqTTh_p_sjo_02.jpg', NULL, NULL, NULL, 41, 'Steve Jobs', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'steve-jobs', '', NULL, '', NULL, '3000', '2068', 'landscape', 1.4507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_SJO_02.jpg', '', 'filename', 'upload'),
(15675, 730, 0, 0, 'Actor', NULL, '730_M59gQu_p_men_03.jpg', NULL, NULL, NULL, 91, 'Mireille Enos', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'mireille-enos', '', NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_MEN_03.jpg', '', 'filename', 'upload'),
(15676, 730, 0, 0, 'caption:', NULL, '730_3vyqyH_p_u2_02.jpg', NULL, NULL, NULL, 72, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_U2_02.jpg', '', 'filename', 'upload'),
(15677, 730, 0, 0, 'Musician', NULL, '730_8LlKi7_p_u2_01.jpg', NULL, NULL, NULL, 74, 'Bono', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'bono', '', NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_U2_01.jpg', '', 'filename', 'upload'),
(15678, 730, 0, 0, 'CEO', NULL, '730_gPRL5r_p_emu_01.jpg', NULL, NULL, NULL, 25, 'Elon Musk', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'elon-musk', '', NULL, '', NULL, '3000', '2248', 'landscape', 1.3345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_EMU_01.jpg', '', 'filename', 'upload'),
(15679, 730, 0, 0, 'Architect', NULL, '730_th2wu7_p_fge_02.jpg', NULL, NULL, NULL, 62, 'Frank Gehry', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'frank-gehry', '', NULL, '', NULL, '2247', '3000', 'portrait', 0.7490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_FGE_02.jpg', '', 'filename', 'upload'),
(15680, 730, 0, 0, 'caption:', NULL, '730_3LBMoN_p_cobfpo_10.jpg', NULL, NULL, NULL, 30, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1950', 'landscape', 1.5385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_COBfpo_10.jpg', '', 'filename', 'upload'),
(15681, 730, 0, 0, 'caption:', NULL, '730_JsIlEm_p_u2_08.jpg', NULL, NULL, NULL, 70, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1796', 'landscape', 1.6704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_U2_08.jpg', '', 'filename', 'upload'),
(15682, 730, 0, 0, 'Boxer', NULL, '730_PEkjYN_p_mty_02.jpg', NULL, NULL, NULL, 59, 'Mike Tyson', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'mike-tyson', '', NULL, '', NULL, '2333', '3000', 'portrait', 0.7777, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_MTY_02.jpg', '', 'filename', 'upload'),
(15683, 730, 0, 0, 'Musician', NULL, '730_VKizRD_p_jwh_07.jpg', NULL, NULL, NULL, 65, 'Jack White', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jack-white', '', NULL, '', NULL, '2305', '3000', 'portrait', 0.7683, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_JWH_07.jpg', '', 'filename', 'upload'),
(15684, 730, 0, 0, 'Musician', NULL, '730_AAY9Ok_p_jwh_05.jpg', NULL, NULL, NULL, 64, 'Jack White', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jack-white', '', NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_JWH_05.jpg', '', 'filename', 'upload'),
(15685, 730, 0, 0, 'Musician', NULL, '730_ipwIhK_p_jwh_01.jpg', NULL, NULL, NULL, 63, 'Jack White', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jack-white', '', NULL, '', NULL, '3000', '2248', 'landscape', 1.3345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_JWH_01.jpg', '', 'filename', 'upload'),
(15686, 730, 0, 0, 'Comedian', NULL, '730_gWM6Gf_p_sma_01.jpg', NULL, NULL, NULL, 46, 'Steve Martin', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'steve-martin', '', NULL, '', NULL, '2343', '3000', 'portrait', 0.7810, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_SMA_01.jpg', '', 'filename', 'upload'),
(15687, 730, 0, 0, 'Publisher', NULL, '730_GeuOe9_9402_01_-054_rgb.jpg', NULL, NULL, NULL, 72, 'Hugh Hefner', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'hugh-hefner', '', NULL, '', NULL, '2308', '3000', 'portrait', 0.7693, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9402_01_ 054_RGB.jpg', '', 'filename', 'upload'),
(15688, 748, 0, 0, 'caption:', NULL, '748_CuLqIY_glow_spread.jpg', NULL, NULL, NULL, 15, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4725', '3150', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GLOW_SPREAD.jpg', '', 'filename', 'upload'),
(15689, 748, 0, 0, 'caption:', NULL, '748_KErqNM_9978_09_1888.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2247', 'landscape', 1.3351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9978_09_1888.jpg', '', 'filename', 'upload'),
(15690, 748, 0, 0, 'caption:', NULL, '748_Y5Ayou_9976_01_0136.jpg', NULL, NULL, NULL, 33, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1955', 'landscape', 1.5345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9976_01_0136.jpg', '', 'filename', 'upload'),
(15691, 748, 0, 0, 'caption:', NULL, '748_Cgh9MV_9979_04_0556_v5.jpg', NULL, NULL, NULL, 27, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3500', '2100', 'landscape', 1.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9979_04_0556_v5.jpg', '', 'filename', 'upload'),
(15692, 748, 0, 0, 'caption:', NULL, '748_Am3JDC_9962_03_0401.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9962_03_0401.jpg', '', 'filename', 'upload'),
(15693, 730, 0, 0, 'Media Mogul', NULL, '730_XT6C7w_9974_05_0608.jpg', NULL, NULL, NULL, 49, 'Tyler Perry', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'tyler-perry', '', NULL, '', NULL, '3000', '1995', 'landscape', 1.5038, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9974_05_0608.jpg', '', 'filename', 'upload'),
(15694, 730, 0, 0, 'Actor', NULL, '730_gggAT3_9976_05_2041.jpg', NULL, NULL, NULL, 71, 'Aubrey Plaze', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'aubrey-plaze', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9976_05_2041.jpg', '', 'filename', 'upload'),
(15695, 730, 0, 0, 'caption:', NULL, '730_xFNgUN_9985_12_2031.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2282', '3000', 'portrait', 0.7607, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9985_12_2031.jpg', '', 'filename', 'upload'),
(15696, 730, 0, 0, 'caption:', NULL, '730_QhfVT1_9962_03_0401.jpg', NULL, NULL, NULL, 48, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9962_03_0401.jpg', '', 'filename', 'upload'),
(15697, 730, 0, 0, 'caption:', NULL, '730_tnwVox_9985_10_1683.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2238', '3000', 'portrait', 0.7460, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9985_10_1683.jpg', '', 'filename', 'upload'),
(15698, 730, 0, 0, 'Actor', NULL, '730_8EgLpW_9972_05_0686.jpg', NULL, NULL, NULL, 24, 'Jeffrey Wright', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jeffrey-wright', '', NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9972_05_0686.jpg', '', 'filename', 'upload'),
(15699, 730, 0, 0, 'Musician', NULL, '730_eAiGKV_9985_11_1751.jpg', NULL, NULL, NULL, 47, 'Normani', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'normani', '', NULL, '', NULL, '2235', '3000', 'portrait', 0.7450, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9985_11_1751.jpg', '', 'filename', 'upload'),
(15700, 730, 0, 0, 'caption:', NULL, '730_9JHbDi_13ry_alishaboe_blueseamless_080.jpg', NULL, NULL, NULL, 47, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13RY_AlishaBoe_BlueSeamless_080.jpg', '', 'filename', 'upload'),
(15701, 730, 0, 0, 'caption:', NULL, '730_WrvjeB_13ry_katherinelangford_grayseamless_106vjp.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13RY_KatherineLangford_GraySeamless_106vJP.jpg', '', 'filename', 'upload'),
(15702, 730, 0, 0, 'Actor', NULL, '730_Yv7jiS_13ry_katherinelangford_exterior_243vjp.jpg', NULL, NULL, NULL, 26, 'Katherine Langford', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'katherine-langford', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '13RY_KatherineLangford_Exterior_243vJP.jpg', '', 'filename', 'upload'),
(15703, 751, 0, 0, 'caption:', NULL, '751_VWpngp_pugliese_chevy_01.jpg', NULL, NULL, NULL, 28, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2396', '3200', 'portrait', 0.7488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_Chevy_01.jpg', '', 'filename', 'upload'),
(15704, 751, 0, 0, 'caption:', NULL, '751_wML6Pi_pugliese_actors_02.jpg', NULL, NULL, NULL, 30, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2462', '3200', 'portrait', 0.7694, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_Actors_02.jpg', '', 'filename', 'upload'),
(15705, 751, 0, 0, 'caption:', NULL, '751_N7cgIn_pugliese_lana_01.jpg', NULL, NULL, NULL, 29, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2468', '3200', 'portrait', 0.7713, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_Lana_01.jpg', '', 'filename', 'upload'),
(15706, 751, 0, 0, 'caption:', NULL, '751_Woxvf4_pugliese_ford_01.jpg', NULL, NULL, NULL, 17, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2354', '3200', 'portrait', 0.7356, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_Ford_01.jpg', '', 'filename', 'upload'),
(15707, 748, 0, 0, NULL, NULL, '748_9UD1Zt_9666_02_0705_v2.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3000', '2121', 'landscape', 1.4144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9666_02_0705_v2.jpg', NULL, 'filename', 'upload'),
(15708, 748, 0, 0, 'caption:', NULL, '748_rcRVHL_9666_02_0705_v2.jpg', NULL, NULL, NULL, 24, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2121', 'landscape', 1.4144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9666_02_0705_v2.jpg', '', 'filename', 'upload'),
(15709, 730, 0, 0, 'Boxer', NULL, '730_aw5Kjn_05_joepug.jpg', NULL, NULL, NULL, 58, 'Mike Tyson', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'mike-tyson', '', NULL, '', NULL, '959', '1280', 'portrait', 0.7492, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '05_JOEPUG.jpg', '', 'filename', 'upload'),
(15710, 730, 0, 0, 'Actor', NULL, '730_gIW4iA_22_joepug.jpg', NULL, NULL, NULL, 35, 'Samuel L. Jackson', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'samuel-l-jackson', '', NULL, '', NULL, '995', '1280', 'portrait', 0.7773, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '22_JOEPUG.jpg', '', 'filename', 'upload'),
(15711, 730, 0, 0, 'caption:', NULL, '730_VMpYJH_16_joepug.jpg', NULL, NULL, NULL, 25, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1280', '814', 'landscape', 1.5725, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16_JOEPUG.jpg', '', 'filename', 'upload'),
(15712, 730, 0, 0, 'Musician', NULL, '730_LiPOIM_09_joepug.jpg', NULL, NULL, NULL, 61, 'Justin Bieber', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'justin-bieber', '', NULL, '', NULL, '1280', '853', 'landscape', 1.5006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '09_JOEPUG.jpg', '', 'filename', 'upload'),
(15713, 730, 0, 0, 'President of the United States', NULL, '730_3GXW75_13_joepug.jpg', NULL, NULL, NULL, 38, 'George W. Bush', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'george-w-bush', '', NULL, '', NULL, '1280', '853', 'landscape', 1.5006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '13_JOEPUG.jpg', '', 'filename', 'upload'),
(15714, 730, 0, 0, 'President of the United States', NULL, '730_RrEzSp_12_joepug.jpg', NULL, NULL, NULL, 39, 'George W. Bush', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'george-w-bush', '', NULL, '', NULL, '960', '1280', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '12_JOEPUG.jpg', '', 'filename', 'upload'),
(15715, 730, 0, 0, 'Actor', NULL, '730_NpoQHh_64_joepug.jpg', NULL, NULL, NULL, 36, 'Billy Bob Thornton', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'billy-bob-thornton', '', NULL, '', NULL, '960', '1280', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '64_JOEPUG.jpg', '', 'filename', 'upload'),
(15716, 730, 0, 0, 'Photographer', NULL, '730_p3QLNk_66_joepug.jpg', NULL, NULL, NULL, 29, 'Dan Winters', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'dan-winters', '', NULL, '', NULL, '960', '1280', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '66_JOEPUG.jpg', '', 'filename', 'upload'),
(15717, 730, 0, 0, 'caption:', NULL, '730_00xG6O_21_joepug.jpg', NULL, NULL, NULL, 21, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '973', '1280', 'portrait', 0.7602, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21_JOEPUG.jpg', '', 'filename', 'upload'),
(15718, 730, 0, 0, 'caption:', NULL, '730_37PvAK_07_joepug.jpg', NULL, NULL, NULL, 22, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1280', '832', 'landscape', 1.5385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07_JOEPUG.jpg', '', 'filename', 'upload'),
(15719, 730, 0, 0, 'Singer', NULL, '730_uLxScq_59_joepug.jpg', NULL, NULL, NULL, 50, 'Mary J. Blige', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'mary-j-blige', '', NULL, '', NULL, '955', '1280', 'portrait', 0.7461, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '59_JOEPUG.jpg', '', 'filename', 'upload'),
(15720, 730, 0, 0, 'Photographer', NULL, '730_O3XSGx_65_joepug.jpg', NULL, NULL, NULL, 28, 'Dan Winters', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'dan-winters', '', NULL, '', NULL, '960', '1280', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '65_JOEPUG.jpg', '', 'filename', 'upload'),
(15721, 730, 0, 0, 'Secretary of State', NULL, '730_i52onr_72_joepug.jpg', NULL, NULL, NULL, 5, 'Hlllary Clinton', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'hlllary-clinton', '', NULL, '', NULL, '985', '1280', 'portrait', 0.7695, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '72_JOEPUG.jpg', '', 'filename', 'upload'),
(15722, 730, 0, 0, 'Musician', NULL, '730_NIYKl6_69_joepug.jpg', NULL, NULL, NULL, 37, 'Thunderbird', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'thunderbird', '', NULL, '', NULL, '960', '1280', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '69_JOEPUG.jpg', '', 'filename', 'upload'),
(15723, 730, 0, 0, 'Actor and Director', NULL, '730_5Ag3iG_62_joepug.jpg', NULL, NULL, NULL, 23, 'Angelina Jolie', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'angelina-jolie', '', NULL, '', NULL, '960', '1280', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '62_JOEPUG.jpg', '', 'filename', 'upload'),
(15724, 730, 0, 0, 'Icon', NULL, '730_npN8qn_03_joepug.jpg', NULL, NULL, NULL, 52, 'Oprah Winfrey', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'oprah-winfrey', '', NULL, '', NULL, '959', '1280', 'portrait', 0.7492, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '03_JOEPUG.jpg', '', 'filename', 'upload'),
(15725, 730, 0, 0, 'Icon', NULL, '730_3KqcIU_14_joepug.jpg', NULL, NULL, NULL, 54, 'Dolly Parton', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'dolly-parton', '', NULL, '', NULL, '1280', '853', 'landscape', 1.5006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '14_JOEPUG.jpg', '', 'filename', 'upload'),
(15726, 751, 0, 0, 'caption:', NULL, '751_aVGqII_pug_rs_01.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2465', '3000', 'portrait', 0.8217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUG_RS_01.jpg', '', 'filename', 'upload'),
(15727, 750, 0, 0, 'caption:', NULL, '750_7XGIeS_succession-final-season-poster.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '810', '1200', 'portrait', 0.6750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'succession-final-season-poster.jpg', '', 'filename', 'upload'),
(15728, 751, 0, 0, 'caption:', NULL, '751_MpKRML_r1318_cov_eric_church[6].jpg', NULL, NULL, NULL, 31, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1454', '1763', 'portrait', 0.8247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'R1318_COV_Eric_Church[6].jpg', '', 'filename', 'upload'),
(15729, 751, 0, 0, 'caption:', NULL, '751_Y7kSRn_17-kid-cudi.jpg', NULL, NULL, NULL, 19, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '3900', 'portrait', 0.7692, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17 Kid Cudi.jpg', '', 'filename', 'upload'),
(15730, 751, 0, 0, 'caption:', NULL, '751_4Hp7RW_1009_womencover5.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3280', '4240', 'portrait', 0.7736, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1009_womencover5.jpg', '', 'filename', 'upload'),
(15731, 751, 0, 0, 'caption:', NULL, '751_hXEGlq_1009_womencover3.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3280', '4240', 'portrait', 0.7736, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1009_womencover3.jpg', '', 'filename', 'upload'),
(15732, 751, 0, 0, 'caption:', NULL, '751_SfCIMf_1009_womencover1.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3280', '4240', 'portrait', 0.7736, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1009_womencover1.jpg', '', 'filename', 'upload'),
(15733, 751, 0, 0, 'caption:', NULL, '751_Qt36Mv__ofcthr_031517_haileesteinfeld-copy.jpg', NULL, NULL, NULL, 32, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2307', '3000', 'portrait', 0.7690, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '_OFCTHR_031517_HaileeSteinfeld copy.jpg', '', 'filename', 'upload'),
(15734, 751, 0, 0, 'caption:', NULL, '751_TrysQp_inc-cover.jpg', NULL, NULL, NULL, 22, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1200', '1500', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inc-cover.jpg', '', 'filename', 'upload'),
(15735, 767, 0, 0, NULL, NULL, '767_ocWr0m_pugliese_bio_2024v2_web.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1500', '2000', 'portrait', 0.7505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe-pugliese-bio@2x-100.jpg', NULL, 'filename', 'upload'),
(15736, 753, 0, 0, 'Actor', NULL, '753_0wKpav_10735_02_0352.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', '', NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10735_02_0352.jpg', '', 'filename', 'upload'),
(15737, 753, 0, 0, 'caption:', NULL, '753_mRwuRT_10723_01_0105_crop.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2099', '2798', 'portrait', 0.7502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10723_01_0105_crop.jpg', '', 'filename', 'upload'),
(15738, 753, 0, 0, 'caption:', NULL, '753_qJtVF0_pugliese_oprah_01.jpg', NULL, NULL, NULL, 25, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_Oprah_01.jpg', '', 'filename', 'upload'),
(15739, 753, 0, 0, 'caption:', NULL, '753_JMRVCA_joe_pugliese_brolin_01.jpg', NULL, NULL, NULL, 35, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2001', 'landscape', 1.4993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_BROLIN_01.jpg', '', 'filename', 'upload'),
(15740, 753, 0, 0, 'caption:', NULL, '753_WkZL8F_10718_05_0503_bw.jpg', NULL, NULL, NULL, 23, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10718_05_0503_bw.jpg', '', 'filename', 'upload'),
(15741, 753, 0, 0, 'caption:', NULL, '753_JY9pdQ_01_rogen_0078.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01_ROGEN_0078.jpg', '', 'filename', 'upload'),
(15742, 753, 0, 0, 'caption:', NULL, '753_XKW43i_10724_03_0543v2.jpg', NULL, NULL, NULL, 19, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0543v2.jpg', '', 'filename', 'upload'),
(15743, 753, 0, 0, 'caption:', NULL, '753_i5D3PB_pugliese_altman_01.jpg', NULL, NULL, NULL, 32, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_Altman_01.jpg', '', 'filename', 'upload'),
(15744, 753, 0, 0, NULL, NULL, '753_13L2oS_10723_05_0422.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10723_05_0422.jpg', NULL, 'filename', 'upload'),
(15745, 753, 0, 0, 'caption:', NULL, '753_1kaLEQ_10723_01_0105_crop.jpg', NULL, NULL, NULL, 27, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', '', NULL, '', NULL, '2099', '2798', 'portrait', 0.7502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '10723_01_0105_crop.jpg', '', 'filename', 'upload'),
(15746, 753, 0, 0, 'caption:', NULL, '753_xlP2gv_lake_05_2898.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKE_05_2898.jpg', '', 'filename', 'upload'),
(15747, 753, 0, 0, 'caption:', NULL, '753_ysa1nu_joe_pugliese_mx_01.jpg', NULL, NULL, NULL, 31, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_MX_01.jpg', '', 'filename', 'upload'),
(15748, 753, 0, 0, 'caption:', NULL, '753_rMDVdm_10614_04_0461.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2218', '3000', 'portrait', 0.7393, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10614_04_0461.jpg', '', 'filename', 'upload'),
(15749, 753, 0, 0, 'caption:', NULL, '753_UBm1C0_10724_03_0491.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10724_03_0491.jpg', '', 'filename', 'upload'),
(15750, 753, 0, 0, 'caption:', NULL, '753_mX6gj2_10619_01_0046rt_v2.jpg', NULL, NULL, NULL, 26, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10619_01_0046RT_V2.jpg', '', 'filename', 'upload'),
(15751, 753, 0, 0, 'caption:', NULL, '753_bzwqQR_joe_pugliese_flow7.jpg', NULL, NULL, NULL, 29, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow7.jpg', '', 'filename', 'upload'),
(15752, 753, 0, 0, 'caption:', NULL, '753_OavJWs_joe_pugliese_flow5.jpg', NULL, NULL, NULL, 28, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_flow5.jpg', '', 'filename', 'upload'),
(15753, 753, 0, 0, 'caption:', NULL, '753_TosZ2G_10592_03_1377.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_03_1377.jpg', '', 'filename', 'upload'),
(15754, 753, 0, 0, 'caption:', NULL, '753_r2PZxz_10592_08_3959.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_08_3959.jpg', '', 'filename', 'upload'),
(15755, 753, 0, 0, 'caption:', NULL, '753_xlKmnk_10592_07_3071.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10592_07_3071.jpg', '', 'filename', 'upload'),
(15756, 753, 0, 0, 'caption:', NULL, '753_d0riov_10698anderson_01_0278.jpg', NULL, NULL, NULL, 34, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2249', 'landscape', 1.3339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0278.jpg', '', 'filename', 'upload'),
(15757, 753, 0, 0, 'caption:', NULL, '753_QKdcLl_10698anderson_01_0241jpeg.jpg', NULL, NULL, NULL, 38, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2224', '3000', 'portrait', 0.7413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10698.ANDERSON_01_0241.jpeg', '', 'filename', 'upload'),
(15758, 753, 0, 0, 'caption:', NULL, '753_MbOhrr_08_9975_03_0662.jpg', NULL, NULL, NULL, 16, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08_9975_03_0662.jpg', '', 'filename', 'upload'),
(15759, 753, 0, 0, 'caption:', NULL, '753_LcyvxL_joe_pugliese_brolin_04.jpg', NULL, NULL, NULL, 37, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_BROLIN_04.jpg', '', 'filename', 'upload'),
(15760, 753, 0, 0, 'caption:', NULL, '753_hFcUIX_joe_pugliese_brolin_03.jpg', NULL, NULL, NULL, 36, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_BROLIN_03.jpg', '', 'filename', 'upload'),
(15761, 766, 0, 0, 'caption:', NULL, '766_A8o9Qa_pugliese_03.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2173', '2897', 'portrait', 0.7501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUGLIESE_03.jpg', '', 'filename', 'upload'),
(15762, 766, 0, 0, 'caption:', NULL, '766_5dn3ik_10619_05_0906rt_v3.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '4000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10619_05_0906RT_V3.jpg', '', 'filename', 'upload'),
(15763, 748, 0, 0, 'caption:', NULL, '748_BM1KDO_p_acr_01.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2332', '3000', 'portrait', 0.7773, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_ACR_01.jpg', '', 'filename', 'upload'),
(15764, 748, 0, 0, 'caption:', NULL, '748_ZRxyWo_p_aid_01.jpg', NULL, NULL, NULL, 30, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2101', 'landscape', 1.4279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_AID_01.jpg', '', 'filename', 'upload'),
(15765, 748, 0, 0, 'caption:', NULL, '748_R9YjYG_p_aid_02.jpg', NULL, NULL, NULL, 18, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1945', 'landscape', 1.5424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_AID_02.jpg', '', 'filename', 'upload'),
(15766, 748, 0, 0, 'caption:', NULL, '748_HQiP8P_p_cda_03b.jpg', NULL, NULL, NULL, 28, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1990', 'landscape', 1.5075, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_CDA_03b.jpg', '', 'filename', 'upload'),
(15767, 748, 0, 0, 'caption:', NULL, '748_QQLLQd_p_bbs_05.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2261', 'landscape', 1.3268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_BBS_05.jpg', '', 'filename', 'upload'),
(15768, 748, 0, 0, 'caption:', NULL, '748_tvMOwt_p_cou_01.jpg', NULL, NULL, NULL, 17, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2031', 'landscape', 1.4771, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_COU_01.jpg', '', 'filename', 'upload'),
(15769, 748, 0, 0, 'caption:', NULL, '748_Ak18Dw_p_dod_01.jpg', NULL, NULL, NULL, 20, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1932', 'landscape', 1.5528, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_DOD_01.jpg', '', 'filename', 'upload'),
(15770, 748, 0, 0, 'caption:', NULL, '748_tFEs66_p_eve_02.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_EVE_02.jpg', '', 'filename', 'upload'),
(15771, 748, 0, 0, 'caption:', NULL, '748_cLDIO9_p_jch_02.jpg', NULL, NULL, NULL, 32, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2248', 'landscape', 1.3345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JCH_02.jpg', '', 'filename', 'upload'),
(15772, 748, 0, 0, 'caption:', NULL, '748_PamqX4_p_nex_01.jpg', NULL, NULL, NULL, 26, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_NEX_01.jpg', '', 'filename', 'upload'),
(15773, 748, 0, 0, 'caption:', NULL, '748_sQUmdL_p_new_01.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1979', 'landscape', 1.5159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_NEW_01.jpg', '', 'filename', 'upload'),
(15774, 748, 0, 0, 'caption:', NULL, '748_0Hxb5S_p_sac_01.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2154', 'landscape', 1.3928, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_SAC_01.jpg', '', 'filename', 'upload'),
(15775, 748, 0, 0, 'caption:', NULL, '748_I9itMI_p_spt_01.jpg', NULL, NULL, NULL, 21, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2059', 'landscape', 1.4570, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_SPT_01.jpg', '', 'filename', 'upload'),
(15776, 748, 0, 0, 'caption:', NULL, '748_J7Es45_p_spa_01.jpg', NULL, NULL, NULL, 23, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1933', 'landscape', 1.5520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_SPA_01.jpg', '', 'filename', 'upload'),
(15777, 748, 0, 0, 'caption:', NULL, '748_zH4cgv_p_u2_08.jpg', NULL, NULL, NULL, 16, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1796', 'landscape', 1.6704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_U2_08.jpg', '', 'filename', 'upload'),
(15778, 751, 0, 0, 'caption:', NULL, '751_2OA9Ad_611_cover_applef1-[wv]_6249771.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3075', '3975', 'portrait', 0.7736, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '611_COVER_AppleF1 [WV]_6249771.jpg', '', 'filename', 'upload'),
(15779, 750, 0, 0, 'caption:', NULL, '750_OheMy5_nup_208503_00002.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NUP_208503_00002.jpg', '', 'filename', 'upload'),
(15780, 748, 0, 0, 'caption:', NULL, '748_KMcIRI_9984_11_1132.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9984_11_1132.jpg', '', 'filename', 'upload'),
(15781, 761, 0, 0, 'caption:', NULL, '761_ZsW3vZ_9984_05_0519.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9984_05_0519.jpg', '', 'filename', 'upload'),
(15782, 751, 0, 0, 'caption:', NULL, '751_mgkAvo_tsc_ajo_01.jpg', NULL, NULL, NULL, 23, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2308', '3000', 'portrait', 0.7693, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TSC_AJO_01.jpg', '', 'filename', 'upload'),
(15783, 751, 0, 0, 'caption:', NULL, '751_s1ypMH_wired_cover.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2177', '3000', 'portrait', 0.7257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wired_Cover.jpg', '', 'filename', 'upload'),
(15784, 751, 0, 0, 'caption:', NULL, '751_vRcJk5_tsc_dja_01.jpg', NULL, NULL, NULL, 33, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2500', '3000', 'portrait', 0.8333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TSC_DJA_01.jpg', '', 'filename', 'upload'),
(15785, 753, 0, 0, 'caption:', NULL, '753_tkM1AJ_9997_07_2147v.jpg', NULL, NULL, NULL, 15, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2257', '3000', 'portrait', 0.7523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_07_2147v.jpg', '', 'filename', 'upload'),
(15786, 753, 0, 0, 'caption:', NULL, '753_uxmsSr_9997_07_2224vjp.jpg', NULL, NULL, NULL, 22, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_07_2224vJP.jpg', '', 'filename', 'upload'),
(15787, 753, 0, 0, 'caption:', NULL, '753_86qdZp_9997_01_0117.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '2667', 'portrait', 0.7499, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_01_0117.jpg', '', 'filename', 'upload'),
(15788, 768, 0, 0, 'caption:', NULL, '768_CQPhTT_9997_01_0410.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1995', 'landscape', 1.5038, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_01_0410.jpg', '', 'filename', 'upload'),
(15789, 768, 0, 0, 'caption:', NULL, '768_kMUdDz_9997_01_0428.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2001', 'landscape', 1.4993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_01_0428.jpg', '', 'filename', 'upload'),
(15790, 768, 0, 0, 'caption:', NULL, '768_h7GTwD_9997_06_1986.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_06_1986.jpg', '', 'filename', 'upload'),
(15791, 768, 0, 0, 'caption:', NULL, '768_FsTWxY_9997_07_2224vjp.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_07_2224vJP.jpg', '', 'filename', 'upload');
INSERT INTO `pics` (`id`, `catid`, `picid`, `moduleid`, `caption`, `thumb`, `img`, `alt1`, `alt2`, `alt3`, `sortBy`, `title`, `picURL`, `shortDesc`, `price`, `wPrice`, `salesPrice`, `weight`, `posterImg`, `tags`, `slug`, `customSlug`, `imgType`, `imgSize`, `artistid`, `width`, `height`, `orientation`, `aspectRatio`, `posterWidth`, `posterHeight`, `posterOrientation`, `pdf`, `related`, `relatedColors`, `colorid`, `hover`, `ignoreQty`, `soldOut`, `featuredQty`, `metaTitle`, `metaDesc`, `metaKeywords`, `metaImage`, `metaImageWidth`, `metaImageHeight`, `status`, `lbCount`, `bgColor`, `filename`, `rowBreak`, `sorter`, `imgSrc`) VALUES
(15792, 768, 0, 0, 'caption:', NULL, '768_boX3XY_9997_08_2295.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_08_2295.jpg', '', 'filename', 'upload'),
(15793, 768, 0, 0, 'caption:', NULL, '768_fQGBHm_9997_12_3085.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2544', '3000', 'portrait', 0.8480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_12_3085.jpg', '', 'filename', 'upload'),
(15794, 768, 0, 0, 'caption:', NULL, '768_0YAUbT_10502_02_0661vjp.jpg', NULL, NULL, NULL, 15, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10502_02_0661vJP.jpg', '', 'filename', 'upload'),
(15795, 768, 0, 0, 'caption:', NULL, '768_oYMxlq_10513_03_0778.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10513_03_0778.jpg', '', 'filename', 'upload'),
(15796, 768, 0, 0, 'caption:', NULL, '768_OSiyOZ_9997_04_1653.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2001', 'landscape', 1.4993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_04_1653.jpg', '', 'filename', 'upload'),
(15797, 768, 0, 0, 'caption:', NULL, '768_cZRO6I_10502_01_0262.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2001', 'landscape', 1.4993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10502_01_0262.jpg', '', 'filename', 'upload'),
(15798, 768, 0, 0, 'caption:', NULL, '768_tamQLW_9997_01_0117.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '2667', 'portrait', 0.7499, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_01_0117.jpg', '', 'filename', 'upload'),
(15799, 768, 0, 0, 'caption:', NULL, '768_5zPTyT_9997_06_1974.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2246', '3000', 'portrait', 0.7487, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_06_1974.jpg', '', 'filename', 'upload'),
(15800, 768, 0, 0, 'caption:', NULL, '768_bxDbHR_9997_07_2147v.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2257', '3000', 'portrait', 0.7523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_07_2147v.jpg', '', 'filename', 'upload'),
(15801, 768, 0, 0, 'caption:', NULL, '768_AbW6bh_9997_06_2145-&w.jpg', NULL, NULL, NULL, 17, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2263', '3000', 'portrait', 0.7543, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_06_2145 &W.jpg', '', 'filename', 'upload'),
(15802, 768, 0, 0, 'caption:', NULL, '768_RVwsxS_10513_01_0043.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2001', 'landscape', 1.4993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10513_01_0043.jpg', '', 'filename', 'upload'),
(15803, 768, 0, 0, 'caption:', NULL, '768_82nOoN_9997_06_2114v.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_06_2114v.jpg', '', 'filename', 'upload'),
(15804, 768, 0, 0, 'caption:', NULL, '768_bV5XdK_10522_02_0948-1.jpg', NULL, NULL, NULL, 16, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2255', '3000', 'portrait', 0.7517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10522_02_0948 1.jpg', '', 'filename', 'upload'),
(15805, 758, 0, 0, 'caption:', NULL, '758_lvta9E_10735_02_0352.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10735_02_0352.jpg', '', 'filename', 'upload'),
(15806, 746, 0, 0, 'caption:', NULL, '746_Egh5Rd_10723_01_0133tif.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10723_01_0133.tif', '', 'filename', 'upload'),
(15807, 746, 0, 0, 'caption:', NULL, '746_Px4rwb_10723_07_0892.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5398', '3600', 'landscape', 1.4994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10723_07_0892.jpg', '', 'filename', 'upload'),
(15808, 753, 0, 0, 'caption:', NULL, '753_3T07Yc_pugliese_04.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2247', '3000', 'portrait', 0.7490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_04.jpg', '', 'filename', 'upload'),
(15809, 753, 0, 0, 'caption:', NULL, '753_X3YLLh_joe_pugliese_band_1.jpg', NULL, NULL, NULL, 33, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_band_1.jpg', '', 'filename', 'upload'),
(15810, 753, 0, 0, 'caption:', NULL, '753_AnfCA1_9947_01_0228.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9947_01_0228.jpg', '', 'filename', 'upload'),
(15811, 753, 0, 0, 'caption:', NULL, '753_ueNvpP_lyonne_02.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1968', 'landscape', 1.5244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lyonne_02.jpg', '', 'filename', 'upload'),
(15812, 753, 0, 0, 'caption:', NULL, '753_CoJFVy_muscle_01.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2258', '3000', 'portrait', 0.7527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MUSCLE_01.jpg', '', 'filename', 'upload'),
(15813, 753, 0, 0, 'caption:', NULL, '753_GJg83f_joe_pugliese_sky1.jpg', NULL, NULL, NULL, 24, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_sky1.jpg', '', 'filename', 'upload'),
(15814, 753, 0, 0, 'caption:', NULL, '753_bb0nTr_10734_07_0416-1.jpg', NULL, NULL, NULL, 20, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10734_07_0416 1.jpg', '', 'filename', 'upload'),
(15815, 765, 0, 0, NULL, NULL, '765_CEVHQF_joe_pugliese_lake_02.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', '3001', 'portrait', 0.7997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_LAKE_02.jpg', NULL, 'filename', 'upload'),
(15816, 765, 0, 0, NULL, NULL, '765_CCFV0i_joe_pugliese_lake_05.jpg', NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOE_PUGLIESE_LAKE_05.jpg', NULL, 'filename', 'upload'),
(15817, 769, 0, 0, 'caption:', NULL, '769_OZ9nev_jp_jlo_07.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1000', '1293', 'portrait', 0.7734, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_07.jpg', '', 'filename', 'upload'),
(15818, 769, 0, 0, 'caption:', NULL, '769_aCsZqt_jp_jlo_06.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5400', '3600', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_06.jpg', '', 'filename', 'upload'),
(15819, 769, 0, 0, 'caption:', NULL, '769_5siXYH_jp_jlo_01.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3600', '4800', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_01.jpg', '', 'filename', 'upload'),
(15820, 769, 0, 0, 'caption:', NULL, '769_PZlUXB_jp_jlo_05.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3600', '4716', 'portrait', 0.7634, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_05.jpg', '', 'filename', 'upload'),
(15821, 769, 0, 0, 'caption:', NULL, '769_0pWtEt_jp_jlo_03.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3600', '4701', 'portrait', 0.7658, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_03.jpg', '', 'filename', 'upload'),
(15822, 769, 0, 0, 'caption:', NULL, '769_8URRwD_jp_jlo_02.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4877', '6382', 'portrait', 0.7642, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_02.jpg', '', 'filename', 'upload'),
(15823, 769, 0, 0, 'caption:', NULL, '769_mnU0Pf_p_jlo_03-1.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2253', '3000', 'portrait', 0.7510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JLO_03 1.jpg', '', 'filename', 'upload'),
(15824, 769, 0, 0, 'caption:', NULL, '769_gokdLN_p_jlo_04-1.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2254', '3000', 'portrait', 0.7513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JLO_04 1.jpg', '', 'filename', 'upload'),
(15825, 769, 0, 0, 'caption:', NULL, '769_qtugqK_p_jlo_11.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JLO_11.jpg', '', 'filename', 'upload'),
(15826, 769, 0, 0, 'caption:', NULL, '769_3AXDQh_p_jlo_01.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2328', '3000', 'portrait', 0.7760, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JLO_01.jpg', '', 'filename', 'upload'),
(15827, 769, 0, 0, 'caption:', NULL, '769_TfU1HH_p_jlo_10.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2203', 'landscape', 1.3618, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JLO_10.jpg', '', 'filename', 'upload'),
(15828, 753, 0, 0, 'caption:', NULL, '753_ULW8D9_pugliese_03.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2173', '2897', 'portrait', 0.7501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUGLIESE_03.jpg', '', 'filename', 'upload'),
(15829, 769, 0, 0, 'caption:', NULL, '769_sRCFn0_10595_04_1161.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10595_04_1161.jpg', '', 'filename', 'upload'),
(15830, 769, 0, 0, 'caption:', NULL, '769_YSwr6k_10595_04_1174.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1956', 'landscape', 1.5337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10595_04_1174.jpg', '', 'filename', 'upload'),
(15831, 766, 0, 0, 'caption:', NULL, '766_gcTm3v_10675_13_2184.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2224', '1482', 'landscape', 1.5007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_13_2184.jpg', '', 'filename', 'upload'),
(15832, 766, 0, 0, 'caption:', NULL, '766_JlzGrC_10675_16_2503.jpg', NULL, NULL, NULL, 24, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1969', '2625', 'portrait', 0.7501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_16_2503.jpg', '', 'filename', 'upload'),
(15833, 766, 0, 0, 'caption:', NULL, '766_jO9syg_10675_07_1416.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1881', '2508', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10675_07_1416.jpg', '', 'filename', 'upload'),
(15834, 766, 0, 0, 'caption:', NULL, '766_e1eFua_10641_05_0366.jpg', NULL, NULL, NULL, 18, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1721', '2154', 'portrait', 0.7990, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10641_05_0366.jpg', '', 'filename', 'upload'),
(15835, 766, 0, 0, 'caption:', NULL, '766_kthsQ1_10641_01_0078.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2431', '3242', 'portrait', 0.7498, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10641_01_0078.jpg', '', 'filename', 'upload'),
(15836, 766, 0, 0, 'caption:', NULL, '766_DZegp3_10641_03_0237.jpg', NULL, NULL, NULL, 19, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3175', '2119', 'landscape', 1.4983, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10641_03_0237.jpg', '', 'filename', 'upload'),
(15837, 747, 0, 0, 'caption:', NULL, '747_Bkvbpc_nikewomenshowcase_daryaklishina_0361_v1.jpg', NULL, NULL, NULL, 23, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1177', '1571', 'portrait', 0.7492, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NikeWomenShowcase_DaryaKlishina_0361_v1.jpg', '', 'filename', 'upload'),
(15838, 747, 0, 0, 'caption:', NULL, '747_VXWTDW_p_csa_01.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1800', '2400', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_CSA_01.jpg', '', 'filename', 'upload'),
(15839, 747, 0, 0, 'caption:', NULL, '747_EYDtEY_p_nik_01.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_NIK_01.jpg', '', 'filename', 'upload'),
(15840, 747, 0, 0, 'caption:', NULL, '747_jPdQg5_p_jli_04.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2244', '3000', 'portrait', 0.7480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JLI_04.jpg', '', 'filename', 'upload'),
(15841, 747, 0, 0, NULL, NULL, '747_9xIanW_p_dja_01.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4200', '5600', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_DJA_01.jpg', NULL, 'filename', 'upload'),
(15842, 747, 0, 0, NULL, NULL, '747_82kEPH_holiday2018_lebron_sw3_midnightblack_left_0003-1tif.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HOLIDAY2018_LEBRON_SW3_MIDNIGHTBLACK_LEFT_0003 1.tif', NULL, 'filename', 'upload'),
(15843, 747, 0, 0, 'Athlete', NULL, '747_d2smM2_holiday2018_lebron_sw3_midnightblack_left_0003-1.jpg', NULL, NULL, NULL, 22, 'Lebron James', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'lebron-james', '', NULL, '', NULL, '2244', '3000', 'portrait', 0.7480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'HOLIDAY2018_LEBRON_SW3_MIDNIGHTBLACK_LEFT_0003 1.jpg', '', 'filename', 'upload'),
(15844, 747, 0, 0, 'caption:', NULL, '747_WJa1A2_p_dja_01.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_DJA_01.jpg', '', 'filename', 'upload'),
(15845, 766, 0, 0, 'caption:', NULL, '766_sPnFqu_pugliese_02jpeg.jpg', NULL, NULL, NULL, 21, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2397', '3200', 'portrait', 0.7491, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_02.jpeg', '', 'filename', 'upload'),
(15846, 769, 0, 0, 'caption:', NULL, '769_aSHlsb_dlj85nya.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2338', '3000', 'portrait', 0.7793, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dlj85NYA.jpg', '', 'filename', 'upload'),
(15847, 766, 0, 0, 'caption:', NULL, '766_9v231h_9841_01_0148.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1498', '2000', 'portrait', 0.7490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9841_01_0148.jpg', '', 'filename', 'upload'),
(15848, 766, 0, 0, 'caption:', NULL, '766_fOuvfb_cover_10550_05_0852.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cover_10550_05_0852.jpg', '', 'filename', 'upload'),
(15849, 747, 0, 0, 'caption:', NULL, '747_l8ATOv_9829_05_0403.jpg', NULL, NULL, NULL, 9, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2000', '1498', 'landscape', 1.3351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9829_05_0403.jpg', '', 'filename', 'upload'),
(15850, 747, 0, 0, 'caption:', NULL, '747_rAzOd8_9829_06_0641.jpg', NULL, NULL, NULL, 10, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1500', '2000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9829_06_0641.jpg', '', 'filename', 'upload'),
(15851, 747, 0, 0, 'caption:', NULL, '747_sfjGIX_10571_11_1026.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_11_1026.jpg', '', 'filename', 'upload'),
(15852, 747, 0, 0, 'caption:', NULL, '747_hUyMUB_04_09_9975_02_0512.jpg', NULL, NULL, NULL, 21, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04_09_9975_02_0512.jpg', '', 'filename', 'upload'),
(15853, 747, 0, 0, 'caption:', NULL, '747_NcMJSc_10635_03_0972.jpg', NULL, NULL, NULL, 16, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10635_03_0972.jpg', '', 'filename', 'upload'),
(15854, 747, 0, 0, 'caption:', NULL, '747_CpjpYz_10571_08_0794.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2443', '3063', 'portrait', 0.7976, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_08_0794.jpg', '', 'filename', 'upload'),
(15855, 747, 0, 0, 'caption:', NULL, '747_LjGGYL_10571_04_0415.jpg', NULL, NULL, NULL, 11, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2483', '3312', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10571_04_0415.jpg', '', 'filename', 'upload'),
(15856, 747, 0, 0, 'caption:', NULL, '747_UbOM0h_9827_06_0474.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9827_06_0474.jpg', '', 'filename', 'upload'),
(15857, 766, 0, 0, 'caption:', NULL, '766_49auw9_10505_06_0741.jpg', NULL, NULL, NULL, 17, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2314', '3000', 'portrait', 0.7713, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10505_06_0741.jpg', '', 'filename', 'upload'),
(15858, 730, 0, 0, 'Musician', NULL, '730_LBmZ4U_p_jwh_09.jpg', NULL, NULL, NULL, 68, 'Jack White', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jack-white', '', NULL, '', NULL, '2307', '3000', 'portrait', 0.7690, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_JWH_09.jpg', '', 'filename', 'upload'),
(15859, 730, 0, 0, 'Musician', NULL, '730_4PmLzF_p_mja_04.jpg', NULL, NULL, NULL, 11, 'Mick Jagger', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'mick-jagger', '', NULL, '', NULL, '2318', '3000', 'portrait', 0.7727, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_MJA_04.jpg', '', 'filename', 'upload'),
(15860, 730, 0, 0, 'Musician', NULL, '730_vn7c91_p_u2_02.jpg', NULL, NULL, NULL, 76, 'The Edge', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'the-edge', '', NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_U2_02.jpg', '', 'filename', 'upload'),
(15861, 730, 0, 0, 'caption:', NULL, '730_PXRLHg__gst-3.jpg', NULL, NULL, NULL, 45, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1438', '1920', 'portrait', 0.7490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '_GST-3.jpg', '', 'filename', 'upload'),
(15862, 730, 0, 0, 'Musician', NULL, '730_ixz8fy__tpe06.jpg', NULL, NULL, NULL, 31, 'Tom Petty', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'tom-petty', '', NULL, '', NULL, '1867', '2400', 'portrait', 0.7779, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '_TPE06.jpg', '', 'filename', 'upload'),
(15863, 730, 0, 0, 'Musician', NULL, '730_eJVg4f__jbe05.jpg', NULL, NULL, NULL, 60, 'Justin Bieber', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'justin-bieber', '', NULL, '', NULL, '1477', '1920', 'portrait', 0.7693, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '_JBE05.jpg', '', 'filename', 'upload'),
(15864, 730, 0, 0, 'caption:', NULL, '730_TFLobp_p_jwh_03.jpg', NULL, NULL, NULL, 159, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2005', 'landscape', 1.4963, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JWH_03.jpg', '', 'filename', 'upload'),
(15865, 730, 0, 0, 'Musician', NULL, '730_2CYxi3_p_sha_02.jpg', NULL, NULL, NULL, 44, 'Shakira', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'shakira', '', NULL, '', NULL, '2286', '3000', 'portrait', 0.7620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_SHA_02.jpg', '', 'filename', 'upload'),
(15866, 730, 0, 0, 'Musicians', NULL, '730_9dJgr2_p_u2_08.jpg', NULL, NULL, NULL, 73, 'U2', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'u2', '', NULL, '', NULL, '3000', '1796', 'landscape', 1.6704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_U2_08.jpg', '', 'filename', 'upload'),
(15867, 730, 0, 0, 'Musician', NULL, '730_PjAjU9_p_u2_05.jpg', NULL, NULL, NULL, 75, 'Larry Mullen', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'larry-mullen', '', NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_U2_05.jpg', '', 'filename', 'upload'),
(15868, 730, 0, 0, 'Musician', NULL, '730_wZsOgk_jp_u2_04.jpg', NULL, NULL, NULL, 77, 'Bono', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'bono', '', NULL, '', NULL, '3000', '2251', 'landscape', 1.3327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'JP_U2_04.jpg', '', 'filename', 'upload'),
(15869, 730, 0, 0, 'Musician', NULL, '730_SyOJWn_p_mja_01.jpg', NULL, NULL, NULL, 10, 'Mick Jagger', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'mick-jagger', '', NULL, '', NULL, '3000', '1908', 'landscape', 1.5723, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_MJA_01.jpg', '', 'filename', 'upload'),
(15870, 730, 0, 0, 'Musician', NULL, '730_hUu2Mi_p_jwh_08.jpg', NULL, NULL, NULL, 66, 'Jack White', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jack-white', '', NULL, '', NULL, '2307', '3000', 'portrait', 0.7690, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_JWH_08.jpg', '', 'filename', 'upload'),
(15871, 730, 0, 0, 'Musician', NULL, '730_oi57Z5_p_sdo_01.jpg', NULL, NULL, NULL, 56, 'Snoop Dogg', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'snoop-dogg', '', NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_SDO_01.jpg', '', 'filename', 'upload'),
(15872, 730, 0, 0, 'caption:', NULL, '730_GywbEp_p_u2_04.jpg', NULL, NULL, NULL, 161, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_U2_04.jpg', '', 'filename', 'upload'),
(15873, 730, 0, 0, 'caption:', NULL, '730_m28lTb_p_u2_01.jpg', NULL, NULL, NULL, 162, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_U2_01.jpg', '', 'filename', 'upload'),
(15874, 730, 0, 0, 'caption:', NULL, '730_8o6hqK_p_jb_02.jpg', NULL, NULL, NULL, 163, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JB_02.jpg', '', 'filename', 'upload'),
(15875, 730, 0, 0, 'caption:', NULL, '730_BFBNTY_p_jwh_04.jpg', NULL, NULL, NULL, 160, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JWH_04.jpg', '', 'filename', 'upload'),
(15876, 730, 0, 0, 'Musician', NULL, '730_tRFi4Q_9980_05_cvsocial_1215.jpg', NULL, NULL, NULL, 57, 'A$AP Rocky', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'aap-rocky', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '9980_05_CVSocial_1215.jpg', '', 'filename', 'upload'),
(15877, 730, 0, 0, 'Musician', NULL, '730_AGgThv_p_gst_01.jpg', NULL, NULL, NULL, 45, 'George Strait', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'george-strait', '', NULL, '', NULL, '2337', '3000', 'portrait', 0.7790, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_GST_01.jpg', '', 'filename', 'upload'),
(15878, 730, 0, 0, 'caption:', NULL, '730_xIzE2R_p_jb_03.jpg', NULL, NULL, NULL, 164, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2119', 'landscape', 1.4158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JB_03.jpg', '', 'filename', 'upload'),
(15879, 730, 0, 0, NULL, NULL, '730_PPqwWb_p_jwh_01.jpg', NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3000', '2248', 'landscape', 1.3345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_JWH_01.jpg', NULL, 'filename', 'upload'),
(15880, 730, 0, 0, 'Musician', NULL, '730_85LnJG__tpe05.jpg', NULL, NULL, NULL, 33, 'Tom Petty', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'tom-petty', '', NULL, '', NULL, '1867', '2400', 'portrait', 0.7779, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '_TPE05.jpg', '', 'filename', 'upload'),
(15881, 762, 0, 0, 'caption:', NULL, '762_tQCQ4Q_pugliese_10701_moz_101423_01_0345-1.jpg', NULL, NULL, NULL, 15, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '4064', '5079', 'portrait', 0.8002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_10701_MOZ_101423_01_0345 1.jpg', '', 'filename', 'upload'),
(15882, 762, 0, 0, 'caption:', NULL, '762_iPKmHG_pugliese_10701_moz_101423_01_0400-1.jpg', NULL, NULL, NULL, 17, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2401', '3000', 'portrait', 0.8003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_10701_MOZ_101423_01_0400 1.jpg', '', 'filename', 'upload'),
(15883, 762, 0, 0, 'caption:', NULL, '762_5boVJi_pugliese_10701_moz_101423_02_2087.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2572', '3215', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_10701_MOZ_101423_02_2087.jpg', '', 'filename', 'upload'),
(15884, 762, 0, 0, 'caption:', NULL, '762_QlvKUX_pugliese_10701_moz_101423_01_1372.jpg', NULL, NULL, NULL, 16, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2275', '2844', 'portrait', 0.7999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_10701_MOZ_101423_01_1372.jpg', '', 'filename', 'upload'),
(15885, 747, 0, 0, 'caption:', NULL, '747_TZoeHI_p_apu_03.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p_APU_03.jpg', '', 'filename', 'upload'),
(15886, 748, 0, 0, 'caption:', NULL, '748_74bfLZ_pugliese_duffers.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '1961', 'landscape', 1.5298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_Duffers.jpg', '', 'filename', 'upload'),
(15887, 748, 0, 0, 'caption:', NULL, '748_Nvpjuj_pugliese_9951_06_0463.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_9951_06_0463.jpg', '', 'filename', 'upload'),
(15888, 751, 0, 0, 'caption:', NULL, '751_5OYbFs_sunday-times_02-11-2025_y1gg_p1.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sunday Times_02-11-2025_Y1GG_p1.jpg', '', 'filename', 'upload'),
(15889, 753, 0, 0, 'caption:', NULL, '753_ngFoLA_09_rafa_01_0221.jpg', NULL, NULL, NULL, 17, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2236', '3000', 'portrait', 0.7453, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09_RAFA_01_0221.jpg', '', 'filename', 'upload'),
(15890, 753, 0, 0, 'caption:', NULL, '753_5PoBp0_mch_01.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2093', 'landscape', 1.4333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MCH_01.jpg', '', 'filename', 'upload'),
(15891, 753, 0, 0, 'caption:', NULL, '753_J1poUV_10741_02_0175.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10741_02_0175.jpg', '', 'filename', 'upload'),
(15892, 753, 0, 0, NULL, NULL, '753_t1q0Nc_pugliese_10741_02_0179_1086.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_10741_02_0179_1086.jpg', NULL, 'filename', 'upload'),
(15893, 753, 0, 0, 'caption:', NULL, '753_WspFLJ_10741_01_0098.jpg', NULL, NULL, NULL, 12, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10741_01_0098.jpg', '', 'filename', 'upload'),
(15894, 753, 0, 0, 'caption:', NULL, '753_aZ7gk0_10741_01_0036-1.jpg', NULL, NULL, NULL, 21, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2388', '3000', 'portrait', 0.7960, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10741_01_0036 1.jpg', '', 'filename', 'upload'),
(15895, 753, 0, 0, 'caption:', NULL, '753_VHKjQf_9864_01_0188.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1383', '1880', 'portrait', 0.7356, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9864_01_0188.jpg', '', 'filename', 'upload'),
(15896, 753, 0, 0, 'caption:', NULL, '753_hfG9Xy_03_pug_rs_08.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03_PUG_RS_08.jpg', '', 'filename', 'upload'),
(15897, 753, 0, 0, 'caption:', NULL, '753_esIr13_9997_06_2114v.jpg', NULL, NULL, NULL, 13, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_06_2114v.jpg', '', 'filename', 'upload'),
(15898, 753, 0, 0, 'caption:', NULL, '753_YwQgfF_9997_06_2114v.jpg', NULL, NULL, NULL, 14, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9997_06_2114v.jpg', '', 'filename', 'upload'),
(15899, 753, 0, 0, 'caption:', NULL, '753_DPYvT5_jp_jlo_01.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JP_JLO_01.jpg', '', 'filename', 'upload'),
(15900, 753, 0, 0, 'caption:', NULL, '753_xWzMSS_joe_pugliese_hat_1.jpg', NULL, NULL, NULL, 30, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joe_pugliese_hat_1.jpg', '', 'filename', 'upload'),
(15901, 753, 0, 0, 'caption:', NULL, '753_ngsywu_pugliese_10699_01_0084vjp.jpg', NULL, NULL, NULL, 39, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1853', '2316', 'portrait', 0.8001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_10699_01_0084vJP.jpg', '', 'filename', 'upload'),
(15902, 753, 0, 0, 'caption:', NULL, '753_DGiJgP_10658_01_0166-1.jpg', NULL, NULL, NULL, 18, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10658_01_0166 1.jpg', '', 'filename', 'upload'),
(15903, 750, 0, 0, 'caption:', NULL, '750_Eysvff_screen-shot-2021-08-12-at-75953-ampng.png', NULL, NULL, NULL, 16, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '1838', '1202', 'landscape', 1.5291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Screen Shot 2021-08-12 at 7.59.53 AM.png', '', 'filename', 'upload'),
(15904, 766, 0, 0, 'caption:', NULL, '766_7aKC6d_ajo_03.jpg', NULL, NULL, NULL, 20, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2308', '3000', 'portrait', 0.7693, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AJO_03.jpg', '', 'filename', 'upload'),
(15905, 730, 0, 0, 'Musician', NULL, '730_clnRQT_tpe_02.jpg', NULL, NULL, NULL, 32, 'Tom Petty', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'tom-petty', '', NULL, '', NULL, '2462', '3200', 'portrait', 0.7694, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'TPE_02.jpg', '', 'filename', 'upload'),
(15906, 730, 0, 0, 'Music Moguls', NULL, '730_OJMgZd_bea_01.jpg', NULL, NULL, NULL, 34, 'Dr. Dre and Jimmy Iovine', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'dr-dre-and-jimmy-iovine', '', NULL, '', NULL, '2532', '3200', 'portrait', 0.7913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'BEA_01.jpg', '', 'filename', 'upload'),
(15907, 730, 0, 0, 'Musician', NULL, '730_R1QITA_and_02.jpg', NULL, NULL, NULL, 13, 'Andre 3000', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'andre-3000', '', NULL, '', NULL, '2454', '3200', 'portrait', 0.7669, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'AND_02.jpg', '', 'filename', 'upload'),
(15908, 730, 0, 0, 'Musician', NULL, '730_5WMUOS_and_01.jpg', NULL, NULL, NULL, 15, 'Andre 3000', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'andre-3000', '', NULL, '', NULL, '2461', '3200', 'portrait', 0.7691, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'AND_01.jpg', '', 'filename', 'upload'),
(15909, 730, 0, 0, 'Musician', NULL, '730_qofctI_and_03.jpg', NULL, NULL, NULL, 14, 'Andre 3000', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'andre-3000', '', NULL, '', NULL, '4809', '3200', 'landscape', 1.5028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'AND_03.jpg', '', 'filename', 'upload'),
(15910, 730, 0, 0, NULL, NULL, '730_qg9Lsi_thu_01.jpg', NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2400', '3200', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'THU_01.jpg', NULL, 'filename', 'upload'),
(15911, 730, 0, 0, 'Musician', NULL, '730_Xh4iHs_sdo_03.jpg', NULL, NULL, NULL, 55, 'Snoop Dogg', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'snoop-dogg', '', NULL, '', NULL, '2486', '3200', 'portrait', 0.7769, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'SDO_03.jpg', '', 'filename', 'upload'),
(15912, 751, 0, 0, 'caption:', NULL, '751_ROW1DG_tsc_tco_01.jpg', NULL, NULL, NULL, 15, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2438', '3200', 'portrait', 0.7619, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TSC_TCO_01.jpg', '', 'filename', 'upload'),
(15913, 730, 0, 0, 'Athlete', NULL, '730_Jftj1Q_p_lar_01.jpg', NULL, NULL, NULL, 48, 'Lance Armstrong', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'lance-armstrong', '', NULL, '', NULL, '2334', '3000', 'portrait', 0.7780, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_LAR_01.jpg', '', 'filename', 'upload'),
(15914, 730, 0, 0, 'Actor and Director', NULL, '730_MhPBIC_p_jfo_01c.jpg', NULL, NULL, NULL, 12, 'Jodie Foster', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jodie-foster', '', NULL, '', NULL, '2248', '3000', 'portrait', 0.7493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_JFO_01c.jpg', '', 'filename', 'upload'),
(15915, 730, 0, 0, 'Actor', NULL, '730_tCNHJn_p_jha_01.jpg', NULL, NULL, NULL, 27, 'Jon Hamm', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jon-hamm', '', NULL, '', NULL, '2250', '3000', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'p_JHA_01.jpg', '', 'filename', 'upload'),
(15916, 751, 0, 0, NULL, NULL, '751_OdSjbd_tsc_tco_01.jpg', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2438', '3200', 'portrait', 0.7619, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TSC_TCO_01.jpg', NULL, 'filename', 'upload'),
(15917, 751, 0, 0, 'caption:', NULL, '751_FGH2A9_tsc_emu_01.jpg', NULL, NULL, NULL, 18, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2401', '3200', 'portrait', 0.7503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TSC_EMU_01.jpg', '', 'filename', 'upload'),
(15918, 751, 0, 0, 'caption:', NULL, '751_XsNnXn_tsc_jlo_01.jpg', NULL, NULL, NULL, 21, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2462', '3200', 'portrait', 0.7694, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TSC_JLO_01.jpg', '', 'filename', 'upload'),
(15919, 751, 0, 0, 'caption:', NULL, '751_AiYrDv_tsc_mja_01.jpg', NULL, NULL, NULL, 24, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3200', 'portrait', 0.7500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TSC_MJA_01.jpg', '', 'filename', 'upload'),
(15920, 751, 0, 0, 'caption:', NULL, '751_nrhIXd_tsc_con_01.jpg', NULL, NULL, NULL, 26, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2468', '3200', 'portrait', 0.7713, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TSC_CON_01.jpg', '', 'filename', 'upload');
INSERT INTO `pics` (`id`, `catid`, `picid`, `moduleid`, `caption`, `thumb`, `img`, `alt1`, `alt2`, `alt3`, `sortBy`, `title`, `picURL`, `shortDesc`, `price`, `wPrice`, `salesPrice`, `weight`, `posterImg`, `tags`, `slug`, `customSlug`, `imgType`, `imgSize`, `artistid`, `width`, `height`, `orientation`, `aspectRatio`, `posterWidth`, `posterHeight`, `posterOrientation`, `pdf`, `related`, `relatedColors`, `colorid`, `hover`, `ignoreQty`, `soldOut`, `featuredQty`, `metaTitle`, `metaDesc`, `metaKeywords`, `metaImage`, `metaImageWidth`, `metaImageHeight`, `status`, `lbCount`, `bgColor`, `filename`, `rowBreak`, `sorter`, `imgSrc`) VALUES
(15921, 751, 0, 0, 'caption:', NULL, '751_HFVAat_tsc_gst_01.jpg', NULL, NULL, NULL, 20, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2416', '3200', 'portrait', 0.7550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TSC_GST_01.jpg', '', 'filename', 'upload'),
(15922, 751, 0, 0, 'caption:', NULL, '751_joADmU_tsc_eho_01.jpg', NULL, NULL, NULL, 8, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2438', '3200', 'portrait', 0.7619, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TSC_EHO_01.jpg', '', 'filename', 'upload'),
(15923, 730, 0, 0, 'Athlete', NULL, '730_mTXIWZ_lar_02.jpg', NULL, NULL, NULL, 88, 'Lance Armstrong', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'lance-armstrong', '', NULL, '', NULL, '2496', '3200', 'portrait', 0.7800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'LAR_02.jpg', '', 'filename', 'upload'),
(15924, 730, 0, 0, 'Actor', NULL, '730_54ypFX_aad_01.jpg', NULL, NULL, NULL, 43, 'Amy Adams', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'amy-adams', '', NULL, '', NULL, '2487', '3200', 'portrait', 0.7772, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'AAD_01.jpg', '', 'filename', 'upload'),
(15925, 730, 0, 0, 'CEO', NULL, '730_wcIypg_bez_01.jpg', NULL, NULL, NULL, 143, 'Jeff Bezos', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jeff-bezos', '', NULL, '', NULL, '2488', '3200', 'portrait', 0.7775, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'BEZ_01.jpg', '', 'filename', 'upload'),
(15926, 730, 0, 0, 'Actor', NULL, '730_dCyvGU_kdo_01.jpg', NULL, NULL, NULL, 19, 'Kirk Douglas', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'kirk-douglas', '', NULL, '', NULL, '4271', '3200', 'landscape', 1.3347, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'KDO_01.jpg', '', 'filename', 'upload'),
(15927, 730, 0, 0, 'Actor', NULL, '730_3hrEFY_jgy_01.jpg', NULL, NULL, NULL, 18, 'Jake Gyllenhaal', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'jake-gyllenhaal', '', NULL, '', NULL, '2401', '3200', 'portrait', 0.7503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'JGY_01.jpg', '', 'filename', 'upload'),
(15928, 748, 0, 0, 'caption:', NULL, '748_idIgjm_ent_02.jpg', NULL, NULL, NULL, 31, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '5030', '3200', 'landscape', 1.5719, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ENT_02.jpg', '', 'filename', 'upload'),
(15929, 730, 0, 0, 'Icon', NULL, '730_SRSdiX_owi_02.jpg', NULL, NULL, NULL, 51, 'Oprah Winfrey', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'oprah-winfrey', '', NULL, '', NULL, '4271', '3200', 'landscape', 1.3347, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'OWI_02.jpg', '', 'filename', 'upload'),
(15930, 730, 0, 0, 'Icon', NULL, '730_83tFhG_owi_03.jpg', NULL, NULL, NULL, 53, 'Oprah Winfrey', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'oprah-winfrey', '', NULL, '', NULL, '4660', '3200', 'landscape', 1.4563, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'OWI_03.jpg', '', 'filename', 'upload'),
(15931, 770, 0, 0, 'caption:', NULL, '770_FJ6nRc_10741_02_0172.jpg', NULL, NULL, NULL, 5, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10741_02_0172.jpg', '', 'filename', 'upload'),
(15932, 770, 0, 0, 'caption:', NULL, '770_t4LpRi_10741_02_0175.jpg', NULL, NULL, NULL, 1, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2000', 'landscape', 1.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10741_02_0175.jpg', '', 'filename', 'upload'),
(15933, 770, 0, 0, 'caption:', NULL, '770_KUFv46_10741_02_0147.jpg', NULL, NULL, NULL, 4, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10741_02_0147.jpg', '', 'filename', 'upload'),
(15934, 770, 0, 0, 'caption:', NULL, '770_EVlhwk_10741_01_0091.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '3000', '2250', 'landscape', 1.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10741_01_0091.jpg', '', 'filename', 'upload'),
(15935, 770, 0, 0, 'caption:', NULL, '770_WBLotb_pugliese_10741_02_0179_1086.jpg', NULL, NULL, NULL, 6, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2249', '3000', 'portrait', 0.7497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pugliese_10741_02_0179_1086.jpg', '', 'filename', 'upload'),
(15936, 770, 0, 0, 'caption:', NULL, '770_ZtPywc_10741_01_0098.jpg', NULL, NULL, NULL, 7, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10741_01_0098.jpg', '', 'filename', 'upload'),
(15937, 770, 0, 0, 'caption:', NULL, '770_MzKDGO_10741_01_0036-1.jpg', NULL, NULL, NULL, 2, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2388', '3000', 'portrait', 0.7960, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10741_01_0036 1.jpg', '', 'filename', 'upload'),
(15938, 770, 0, 0, 'caption:', NULL, '770_0vd5s8_10741_02_0131.jpg', NULL, NULL, NULL, 3, 'title:', 'url:', '', NULL, NULL, NULL, 0.25, NULL, NULL, 'title', NULL, NULL, '', NULL, '2400', '3000', 'portrait', 0.8000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10741_02_0131.jpg', '', 'filename', 'upload');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=771;

--
-- AUTO_INCREMENT for table `cat_pics`
--
ALTER TABLE `cat_pics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10199;

--
-- AUTO_INCREMENT for table `cat_videos`
--
ALTER TABLE `cat_videos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1700;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1133;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15939;

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
