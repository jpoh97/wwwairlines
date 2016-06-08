-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2016 a las 17:07:45
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `airline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aeropuerto`
--

CREATE TABLE `aeropuerto` (
  `id` int(11) NOT NULL,
  `iata` varchar(3) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `ciudad` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `pais` varchar(30) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `aeropuerto`
--

INSERT INTO `aeropuerto` (`id`, `iata`, `nombre`, `ciudad`, `pais`) VALUES
(1, 'GKA', 'Goroka', 'Goroka', 'Papua new guinea'),
(2, 'MAG', 'Madang', 'Madang', 'Papua new guinea'),
(3, 'HGU', 'Mount hagen', 'Mount hagen', 'Papua new guinea'),
(4, 'LAE', 'Nadzab', 'Nadzab', 'Papua new guinea'),
(5, 'POM', 'Port moresby jacksons international', 'Port moresby', 'Papua new guinea'),
(6, 'WWK', 'Wewak international', 'Wewak', 'Papua new guinea'),
(7, 'UAK', 'Narsarsuaq', 'Narssarssuaq', 'Greenland'),
(8, 'GOH', 'Nuuk', 'Godthaab', 'Greenland'),
(9, 'JAV', 'Jacobshavn', 'Jakobshavn', 'Greenland'),
(10, 'KUS', 'Kulusuk', 'Kulusuk', 'Greenland'),
(11, 'SFJ', 'Kangerlussuaq sondre stromfjord', 'Sondrestrom', 'Greenland'),
(12, 'THU', 'Thule air base', 'Thule', 'Greenland'),
(13, 'AEY', 'Akureyri', 'Akureyri', 'Iceland'),
(14, 'EGS', 'Egilsstadir', 'Egilsstadir', 'Iceland'),
(15, 'HFN', 'Hornafjordur', 'Hofn', 'Iceland'),
(16, 'HZK', 'Husavik', 'Husavik', 'Iceland'),
(17, 'IFJ', 'Isafjordur', 'Isafjordur', 'Iceland'),
(18, 'KEF', 'Keflavik nas', 'Keflavik', 'Iceland'),
(19, 'OPA', 'Kopasker', 'Kopasker', 'Iceland'),
(20, 'PFJ', 'Patreksfjordur', 'Patreksfjordur', 'Iceland'),
(21, 'RKV', 'Reykjavik', 'Reykjavik', 'Iceland'),
(22, 'SIJ', 'Siglufjordhur', 'Siglufjordur', 'Iceland'),
(23, 'VEY', 'Vestmannaeyjar', 'Vestmannaeyjar', 'Iceland'),
(24, 'YAM', 'Sault ste marie', 'Sault sainte marie', 'Canada'),
(25, 'YAV', 'Winnipeg st andrews', 'Winnipeg', 'Canada'),
(26, 'YAW', 'Shearwater', 'Halifax', 'Canada'),
(27, 'YAY', 'St anthony', 'St. anthony', 'Canada'),
(28, 'YAZ', 'Tofino', 'Tofino', 'Canada'),
(29, 'YBB', 'Kugaaruk', 'Pelly bay', 'Canada'),
(30, 'YBC', 'Baie comeau', 'Baie comeau', 'Canada'),
(31, 'YBG', 'Bagotville', 'Bagotville', 'Canada'),
(32, 'YBK', 'Baker lake', 'Baker lake', 'Canada'),
(33, 'YBL', 'Campbell river', 'Campbell river', 'Canada'),
(34, 'YBR', 'Brandon muni', 'Brandon', 'Canada'),
(35, 'YCB', 'Cambridge bay', 'Cambridge bay', 'Canada'),
(36, 'YCD', 'Nanaimo', 'Nanaimo', 'Canada'),
(37, 'YCG', 'Castlegar', 'Castlegar', 'Canada'),
(38, 'YCH', 'Miramichi', 'Chatham', 'Canada'),
(39, 'YCL', 'Charlo', 'Charlo', 'Canada'),
(40, 'YCO', 'Kugluktuk', 'Coppermine', 'Canada'),
(41, 'YCT', 'Coronation', 'Coronation', 'Canada'),
(42, 'YCW', 'Chilliwack', 'Chilliwack', 'Canada'),
(43, 'YCY', 'Clyde river', 'Clyde river', 'Canada'),
(44, 'YZS', 'Fairmont hot springs', 'Coral harbour', 'Canada'),
(45, 'YDA', 'Dawson', 'Dawson', 'Canada'),
(46, 'YDB', 'Burwash', 'Burwash', 'Canada'),
(47, 'YDC', 'Princeton', 'Princeton', 'Canada'),
(48, 'YDF', 'Deer lake', 'Deer lake', 'Canada'),
(49, 'YDL', 'Dease lake', 'Dease lake', 'Canada'),
(50, 'YDN', 'Dauphin barker', 'Dauphin', 'Canada'),
(51, 'YDQ', 'Dawson creek', 'Dawson creek', 'Canada'),
(52, 'YED', 'Edmonton namao', 'Edmonton', 'Canada'),
(53, 'YEG', 'Edmonton international', 'Edmonton', 'Canada'),
(54, 'YEK', 'Arviat', 'Eskimo point', 'Canada'),
(55, 'YEN', 'Estevan', 'Estevan', 'Canada'),
(56, 'YET', 'Edson', 'Edson', 'Canada'),
(57, 'YEU', 'Eureka', 'Eureka', 'Canada'),
(58, 'YEV', 'Inuvik mike zubko', 'Inuvik', 'Canada'),
(59, 'YFB', 'Iqaluit', 'Iqaluit', 'Canada'),
(60, 'YFC', 'Fredericton', 'Fredericton', 'Canada'),
(61, 'YFO', 'Flin flon', 'Flin flon', 'Canada'),
(62, 'YFR', 'Fort resolution', 'Fort resolution', 'Canada'),
(63, 'YFS', 'Fort simpson', 'Fort simpson', 'Canada'),
(64, 'YGK', 'Kingston', 'Kingston', 'Canada'),
(65, 'YGL', 'La grande riviere', 'La grande riviere', 'Canada'),
(66, 'YGP', 'Gaspe', 'Gaspe', 'Canada'),
(67, 'YGQ', 'Geraldton greenstone regional', 'Geraldton', 'Canada'),
(68, 'YGR', 'Iles de la madeleine', 'Iles de la madeleine', 'Canada'),
(69, 'YGW', 'Kuujjuarapik', 'Kuujjuararapik', 'Canada'),
(70, 'YGX', 'Gillam', 'Gillam', 'Canada'),
(71, 'YHB', 'Hudson bay', 'Hudson bay', 'Canada'),
(72, 'YHD', 'Dryden rgnl', 'Dryden', 'Canada'),
(73, 'YHI', 'Holman', 'Holman island', 'Canada'),
(74, 'YHK', 'Gjoa haven', 'Gjoa haven', 'Canada'),
(75, 'YHM', 'Hamilton', 'Hamilton', 'Canada'),
(76, 'YHU', 'St hubert', 'Montreal', 'Canada'),
(77, 'YHY', 'Hay river', 'Hay river', 'Canada'),
(78, 'YHZ', 'Halifax international', 'Halifax', 'Canada'),
(79, 'YIB', 'Atikokan muni', 'Atikokan', 'Canada'),
(80, 'YIO', 'Pond inlet', 'Pond inlet', 'Canada'),
(81, 'YJN', 'St jean', 'St. jean', 'Canada'),
(82, 'YJT', 'Stephenville', 'Stephenville', 'Canada'),
(83, 'YKA', 'Kamloops', 'Kamloops', 'Canada'),
(84, 'YKF', 'Waterloo rgnl', 'Waterloo', 'Canada'),
(85, 'YKL', 'Schefferville', 'Schefferville', 'Canada'),
(86, 'YKY', 'Kindersley', 'Kindersley', 'Canada'),
(87, 'YKZ', 'Buttonville muni', 'Toronto', 'Canada'),
(88, 'YLD', 'Chapleau', 'Chapleau', 'Canada'),
(89, 'YLJ', 'Meadow lake', 'Meadow lake', 'Canada'),
(90, 'YLL', 'Lloydminster', 'Lloydminster', 'Canada'),
(91, 'YLT', 'Alert', 'Alert', 'Canada'),
(92, 'YLW', 'Kelowna', 'Kelowna', 'Canada'),
(93, 'YMA', 'Mayo', 'Mayo', 'Canada'),
(94, 'YMJ', 'Moose jaw', 'Moose jaw', 'Canada'),
(95, 'YMM', 'Fort mcmurray', 'Fort mcmurray', 'Canada'),
(96, 'YMO', 'Moosonee', 'Moosonee', 'Canada'),
(97, 'YMW', 'Maniwaki', 'Maniwaki', 'Canada'),
(98, 'YMX', 'Montreal international mirabel', 'Montreal', 'Canada'),
(99, 'YNA', 'Natashquan', 'Natashquan', 'Canada'),
(100, 'YND', 'Gatineau', 'Gatineau', 'Canada'),
(101, 'YNM', 'Matagami', 'Matagami', 'Canada'),
(102, 'YOC', 'Old crow', 'Old crow', 'Canada'),
(103, 'YOD', 'Cold lake', 'Cold lake', 'Canada'),
(104, 'YOJ', 'High level', 'High level', 'Canada'),
(105, 'YOW', 'Ottawa macdonald cartier international', 'Ottawa', 'Canada'),
(106, 'YPA', 'Prince albert glass field', 'Prince albert', 'Canada'),
(107, 'YPE', 'Peace river', 'Peace river', 'Canada'),
(108, 'YPG', 'Southport', 'Portage-la-prairie', 'Canada'),
(109, 'YPL', 'Pickle lake', 'Pickle lake', 'Canada'),
(110, 'YPN', 'Port menier', 'Port menier', 'Canada'),
(111, 'YPQ', 'Peterborough', 'Peterborough', 'Canada'),
(112, 'YPR', 'Prince rupert', 'Prince pupert', 'Canada'),
(113, 'YPY', 'Fort chipewyan', 'Fort chipewyan', 'Canada'),
(114, 'YQA', 'Muskoka', 'Muskoka', 'Canada'),
(115, 'YQB', 'Quebec jean lesage international', 'Quebec', 'Canada'),
(116, 'YQF', 'Red deer regional', 'Red deer industrial', 'Canada'),
(117, 'YQG', 'Windsor', 'Windsor', 'Canada'),
(118, 'YQH', 'Watson lake', 'Watson lake', 'Canada'),
(119, 'YQK', 'Kenora', 'Kenora', 'Canada'),
(120, 'YQL', 'Lethbridge', 'Lethbridge', 'Canada'),
(121, 'YQM', 'Greater moncton international', 'Moncton', 'Canada'),
(122, 'YQQ', 'Comox', 'Comox', 'Canada'),
(123, 'YQR', 'Regina international', 'Regina', 'Canada'),
(124, 'YQT', 'Thunder bay', 'Thunder bay', 'Canada'),
(125, 'YQU', 'Grande prairie', 'Grande prairie', 'Canada'),
(126, 'YQV', 'Yorkton muni', 'Yorkton', 'Canada'),
(127, 'YQW', 'North battleford', 'North battleford', 'Canada'),
(128, 'YQX', 'Gander international', 'Gander', 'Canada'),
(129, 'YQY', 'Sydney', 'Sydney', 'Canada'),
(130, 'YQZ', 'Quesnel', 'Quesnel', 'Canada'),
(131, 'YRB', 'Resolute bay', 'Resolute', 'Canada'),
(132, 'YRI', 'Riviere du loup', 'Riviere du loup', 'Canada'),
(133, 'YRJ', 'Roberval', 'Roberval', 'Canada'),
(134, 'YRM', 'Rocky mountain house', 'Rocky mountain house', 'Canada'),
(135, 'YRT', 'Rankin inlet', 'Rankin inlet', 'Canada'),
(136, 'YSB', 'Sudbury', 'Sudbury', 'Canada'),
(137, 'YSC', 'Sherbrooke', 'Sherbrooke', 'Canada'),
(138, 'YSJ', 'Saint john', 'St. john', 'Canada'),
(139, 'YSM', 'Fort smith', 'Fort smith', 'Canada'),
(140, 'YSR', 'Nanisivik', 'Nanisivik', 'Canada'),
(141, 'YSU', 'Summerside', 'Summerside', 'Canada'),
(142, 'YSY', 'Sachs harbour', 'Sachs harbour', 'Canada'),
(143, 'YTE', 'Cape dorset', 'Cape dorset', 'Canada'),
(144, 'YTH', 'Thompson', 'Thompson', 'Canada'),
(145, 'YTR', 'Trenton', 'Trenton', 'Canada'),
(146, 'YTS', 'Timmins', 'Timmins', 'Canada'),
(147, 'YTZ', 'City centre', 'Toronto', 'Canada'),
(148, 'YUB', 'Tuktoyaktuk', 'Tuktoyaktuk', 'Canada'),
(149, 'YUL', 'Montreal international dorval', 'Montreal', 'Canada'),
(150, 'YUT', 'Repulse bay', 'Repulse bay', 'Canada'),
(151, 'YUX', 'Hall beach', 'Hall beach', 'Canada'),
(152, 'YUY', 'Rouyn noranda', 'Rouyn', 'Canada'),
(153, 'YVC', 'La ronge', 'La ronge', 'Canada'),
(154, 'YVG', 'Vermilion', 'Vermillion', 'Canada'),
(155, 'YVM', 'Qikiqtarjuaq', 'Broughton island', 'Canada'),
(156, 'YVO', 'Val d or', 'Val d or', 'Canada'),
(157, 'YVP', 'Kuujjuaq', 'Quujjuaq', 'Canada'),
(158, 'YVQ', 'Norman wells', 'Norman wells', 'Canada'),
(159, 'YVR', 'Vancouver international', 'Vancouver', 'Canada'),
(160, 'YVT', 'Buffalo narrows', 'Buffalo narrows', 'Canada'),
(161, 'YVV', 'Wiarton', 'Wiarton', 'Canada'),
(162, 'YWA', 'Petawawa', 'Petawawa', 'Canada'),
(163, 'YWG', 'Winnipeg international', 'Winnipeg', 'Canada'),
(164, 'YWK', 'Wabush', 'Wabush', 'Canada'),
(165, 'YWL', 'Williams lake', 'Williams lake', 'Canada'),
(166, 'YWY', 'Wrigley', 'Wrigley', 'Canada'),
(167, 'YXC', 'Cranbrook', 'Cranbrook', 'Canada'),
(168, 'YXD', 'Edmonton city centre', 'Edmonton', 'Canada'),
(169, 'YXE', 'Saskatoon j g diefenbaker international', 'Saskatoon', 'Canada'),
(170, 'YXH', 'Medicine hat', 'Medicine hat', 'Canada'),
(171, 'YXJ', 'Fort st john', 'Fort saint john', 'Canada'),
(172, 'YXL', 'Sioux lookout', 'Sioux lookout', 'Canada'),
(173, 'YXP', 'Pangnirtung', 'Pangnirtung', 'Canada'),
(174, 'YXR', 'Timiskaming rgnl', 'Earlton', 'Canada'),
(175, 'YXS', 'Prince george', 'Prince george', 'Canada'),
(176, 'YXT', 'Terrace', 'Terrace', 'Canada'),
(177, 'YXU', 'London', 'London', 'Canada'),
(178, 'YXX', 'Abbotsford', 'Abbotsford', 'Canada'),
(179, 'YXY', 'Whitehorse international', 'Whitehorse', 'Canada'),
(180, 'YYB', 'North bay', 'North bay', 'Canada'),
(181, 'YYC', 'Calgary international', 'Calgary', 'Canada'),
(182, 'YYD', 'Smithers', 'Smithers', 'Canada'),
(183, 'YYE', 'Fort nelson', 'Fort nelson', 'Canada'),
(184, 'YYF', 'Penticton', 'Penticton', 'Canada'),
(185, 'YYG', 'Charlottetown', 'Charlottetown', 'Canada'),
(186, 'YYH', 'Taloyoak', 'Spence bay', 'Canada'),
(187, 'YYJ', 'Victoria international', 'Victoria', 'Canada'),
(188, 'YYL', 'Lynn lake', 'Lynn lake', 'Canada'),
(189, 'YYN', 'Swift current', 'Swift current', 'Canada'),
(190, 'YYQ', 'Churchill', 'Churchill', 'Canada'),
(191, 'YYR', 'Goose bay', 'Goose bay', 'Canada'),
(192, 'YYT', 'St johns international', 'St. johns', 'Canada'),
(193, 'YYU', 'Kapuskasing', 'Kapuskasing', 'Canada'),
(194, 'YYW', 'Armstrong', 'Armstrong', 'Canada'),
(195, 'YYY', 'Mont joli', 'Mont joli', 'Canada'),
(196, 'YYZ', 'Lester b pearson international', 'Toronto', 'Canada'),
(197, 'YZD', 'Downsview', 'Toronto', 'Canada'),
(198, 'YZE', 'Gore bay manitoulin', 'Gore bay', 'Canada'),
(199, 'YZF', 'Yellowknife', 'Yellowknife', 'Canada'),
(200, 'YZH', 'Slave lake', 'Slave lake', 'Canada'),
(201, 'YZP', 'Sandspit', 'Sandspit', 'Canada'),
(202, 'YZR', 'Chris hadfield', 'Sarnia', 'Canada'),
(203, 'YZT', 'Port hardy', 'Port hardy', 'Canada'),
(204, 'YZU', 'Whitecourt', 'Whitecourt', 'Canada'),
(205, 'YZV', 'Sept iles', 'Sept-iles', 'Canada'),
(206, 'YZW', 'Teslin', 'Teslin', 'Canada'),
(207, 'YZX', 'Greenwood', 'Greenwood', 'Canada'),
(208, 'ZFA', 'Faro', 'Faro', 'Canada'),
(209, 'ZFM', 'Fort mcpherson', 'Fort mcpherson', 'Canada'),
(210, 'BJA', 'Soummam', 'Bejaja', 'Algeria'),
(211, 'ALG', 'Houari boumediene', 'Algier', 'Algeria'),
(212, 'DJG', 'Tiska', 'Djanet', 'Algeria'),
(213, 'VVZ', 'Illizi', 'Illizi', 'Algeria'),
(214, 'GSF', 'Setif ain arnat', 'Setif', 'Algeria'),
(215, 'TMR', 'Tamanrasset', 'Tamanrasset', 'Algeria'),
(216, 'GJL', 'Jijel', 'Jijel', 'Algeria'),
(217, 'AAE', 'Annaba', 'Annaba', 'Algeria'),
(218, 'CZL', 'Mohamed boudiaf international', 'Constantine', 'Algeria'),
(219, 'TEE', 'Cheikh larbi tebessi', 'Tebessa', 'Algeria'),
(220, 'HRM', 'Hassi r mel', 'Tilrempt', 'Algeria'),
(221, 'TID', 'Bou chekif', 'Tiaret', 'Algeria'),
(222, 'TIN', 'Tindouf', 'Tindouf', 'Algeria'),
(223, 'QAS', 'Ech cheliff', 'Ech-cheliff', 'Algeria'),
(224, 'TAF', 'Tafaraoui', 'Oran', 'Algeria'),
(225, 'TLM', 'Zenata', 'Tlemcen', 'Algeria'),
(226, 'ORN', 'Es senia', 'Oran', 'Algeria'),
(227, 'MUW', 'Ghriss', 'Ghriss', 'Algeria'),
(228, 'AZR', 'Touat cheikh sidi mohamed belkebir', 'Adrar', 'Algeria'),
(229, 'BSK', 'Biskra', 'Biskra', 'Algeria'),
(230, 'ELG', 'El golea', 'El golea', 'Algeria'),
(231, 'GHA', 'Noumerate', 'Ghardaia', 'Algeria'),
(232, 'HME', 'Oued irara', 'Hassi-messaoud', 'Algeria'),
(233, 'INZ', 'In salah', 'In salah', 'Algeria'),
(234, 'TGR', 'Sidi mahdi', 'Touggourt', 'Algeria'),
(235, 'LOO', 'Laghouat', 'Laghouat', 'Algeria'),
(236, 'TMX', 'Timimoun', 'Timimoun', 'Algeria'),
(237, 'OGX', 'Ouargla', 'Ouargla', 'Algeria'),
(238, 'IAM', 'In amenas', 'Zarzaitine', 'Algeria'),
(239, 'COO', 'Cotonou cadjehoun', 'Cotonou', 'Benin'),
(240, 'PKO', 'Parakou', 'Parakou', 'Benin'),
(241, 'OUA', 'Ouagadougou', 'Ouagadougou', 'Burkina faso'),
(242, 'BOY', 'Bobo dioulasso', 'Bobo-dioulasso', 'Burkina faso'),
(243, 'ACC', 'Kotoka international', 'Accra', 'Ghana'),
(244, 'TML', 'Tamale', 'Tamale', 'Ghana'),
(245, 'NYI', 'Sunyani', 'Sunyani', 'Ghana'),
(246, 'TKD', 'Takoradi', 'Takoradi', 'Ghana'),
(247, 'ABJ', 'Abidjan felix houphouet boigny international', 'Abidjan', 'Ivory coast'),
(248, 'BYK', 'Bouake', 'Bouake', 'Ivory coast'),
(249, 'DJO', 'Daloa', 'Daloa', 'Ivory coast'),
(250, 'HGO', 'Korhogo', 'Korhogo', 'Ivory coast'),
(251, 'MJC', 'Man', 'Man', 'Ivory coast'),
(252, 'SPY', 'San pedro', 'San pedro', 'Ivory coast'),
(253, 'ASK', 'Yamoussoukro', 'Yamoussoukro', 'Ivory coast'),
(254, 'ABV', 'Abuja nnamdi azikiwe international', 'Abuja', 'Nigeria'),
(255, 'AKR', 'Akure', 'Akure', 'Nigeria'),
(256, 'BNI', 'Benin', 'Benin', 'Nigeria'),
(257, 'CBQ', 'Calabar', 'Calabar', 'Nigeria'),
(258, 'ENU', 'Enugu', 'Enugu', 'Nigeria'),
(259, 'QUS', 'Gusau', 'Gusau', 'Nigeria'),
(260, 'IBA', 'Ibadan', 'Ibadan', 'Nigeria'),
(261, 'ILR', 'Ilorin', 'Ilorin', 'Nigeria'),
(262, 'JOS', 'Jos', 'Jos', 'Nigeria'),
(263, 'KAD', 'Kaduna', 'Kaduna', 'Nigeria'),
(264, 'KAN', 'Kano mallam aminu international', 'Kano', 'Nigeria'),
(265, 'MIU', 'Maiduguri', 'Maiduguri', 'Nigeria'),
(266, 'MDI', 'Makurdi', 'Makurdi', 'Nigeria'),
(267, 'LOS', 'Lagos murtala muhammed', 'Lagos', 'Nigeria'),
(268, 'MXJ', 'Minna new', 'Minna', 'Nigeria'),
(269, 'PHC', 'Port harcourt international', 'Port hartcourt', 'Nigeria'),
(270, 'SKO', 'Sadiq abubakar iii international', 'Sokoto', 'Nigeria'),
(271, 'YOL', 'Yola', 'Yola', 'Nigeria'),
(272, 'ZAR', 'Zaria', 'Zaria', 'Nigeria'),
(273, 'MFG', 'Maradi', 'Maradi', 'Niger'),
(274, 'NIM', 'Diori hamani', 'Niamey', 'Niger'),
(275, 'THZ', 'Tahoua', 'Tahoua', 'Niger'),
(276, 'AJY', 'Manu dayak', 'Agadez', 'Niger'),
(277, 'ZND', 'Zinder', 'Zinder', 'Niger'),
(278, 'MIR', 'Habib bourguiba international', 'Monastir', 'Tunisia'),
(279, 'TUN', 'Carthage', 'Tunis', 'Tunisia'),
(280, 'GAF', 'Gafsa', 'Gafsa', 'Tunisia'),
(281, 'GAE', 'Gabes', 'Gabes', 'Tunisia'),
(282, 'DJE', 'Zarzis', 'Djerba', 'Tunisia'),
(283, 'EBM', 'El borma', 'El borma', 'Tunisia'),
(284, 'SFA', 'Thyna', 'Sfax', 'Tunisia'),
(285, 'TOE', 'Nefta', 'Tozeur', 'Tunisia'),
(286, 'LRL', 'Niamtougou', 'Niatougou', 'Togo'),
(287, 'LFW', 'Lome tokoin', 'Lome', 'Togo'),
(288, 'ANR', 'Deurne', 'Antwerp', 'Belgium'),
(289, 'BRU', 'Brussels natl', 'Brussels', 'Belgium'),
(290, 'CRL', 'Brussels south', 'Charleroi', 'Belgium'),
(291, 'QKT', 'Wevelgem', 'Kortrijk-vevelgem', 'Belgium'),
(292, 'LGG', 'Liege', 'Liege', 'Belgium'),
(293, 'OST', 'Oostende', 'Ostend', 'Belgium'),
(294, 'BBJ', 'Bautzen', 'Bautzen', 'Germany'),
(295, 'AOC', 'Altenburg nobitz', 'Altenburg', 'Germany'),
(296, 'GWW', 'Goldsboro wayne muni', 'Gotha ost', 'Germany'),
(297, 'SXF', 'Schonefeld', 'Berlin', 'Germany'),
(298, 'DRS', 'Dresden', 'Dresden', 'Germany'),
(299, 'ERF', 'Erfurt', 'Erfurt', 'Germany'),
(300, 'FRA', 'Frankfurt main', 'Frankfurt', 'Germany'),
(301, 'FMO', 'Munster osnabruck', 'Muenster/osnabrueck', 'Germany'),
(302, 'HAM', 'Hamburg', 'Hamburg', 'Germany'),
(303, 'THF', 'Tempelhof', 'Berlin', 'Germany'),
(304, 'CGN', 'Koln bonn', 'Cologne', 'Germany'),
(305, 'DUS', 'Dusseldorf', 'Duesseldorf', 'Germany'),
(306, 'MUC', 'Munich', 'Munich', 'Germany'),
(307, 'NUE', 'Nurnberg', 'Nuernberg', 'Germany'),
(308, 'LEJ', 'Leipzig halle', 'Leipzig', 'Germany'),
(309, 'SCN', 'Saarbrucken', 'Saarbruecken', 'Germany'),
(310, 'STR', 'Stuttgart', 'Stuttgart', 'Germany'),
(311, 'TXL', 'Tegel', 'Berlin', 'Germany'),
(312, 'HAJ', 'Hannover', 'Hannover', 'Germany'),
(313, 'BRE', 'Bremen', 'Bremen', 'Germany'),
(314, 'HHN', 'Frankfurt hahn', 'Hahn', 'Germany'),
(315, 'MHG', 'Mannheim city', 'Mannheim', 'Germany'),
(316, 'XFW', 'Hamburg finkenwerder', 'Hamburg', 'Germany'),
(317, 'KEL', 'Kiel holtenau', 'Kiel', 'Germany'),
(318, 'LBC', 'Lubeck blankensee', 'Luebeck', 'Germany'),
(319, 'AAH', 'Aachen merzbruck', 'Aachen', 'Germany'),
(320, 'ZCA', 'Arnsberg menden', 'Arnsberg', 'Germany'),
(321, 'ESS', 'Essen mulheim', 'Essen', 'Germany'),
(322, 'MGL', 'Monchengladbach', 'Moenchengladbach', 'Germany'),
(323, 'PAD', 'Paderborn lippstadt', 'Paderborn', 'Germany'),
(324, 'DTM', 'Dortmund', 'Dortmund', 'Germany'),
(325, 'AGB', 'Augsburg', 'Augsburg', 'Germany'),
(326, 'OBF', 'Oberpfaffenhofen', 'Oberpfaffenhofen', 'Germany'),
(327, 'FDH', 'Friedrichshafen', 'Friedrichshafen', 'Germany'),
(328, 'SZW', 'Schwerin parchim', 'Parchim', 'Germany'),
(329, 'BYU', 'Bayreuth', 'Bayreuth', 'Germany'),
(330, 'HOQ', 'Hof plauen', 'Hof', 'Germany'),
(331, 'ZNV', 'Koblenz winningen', 'Koblenz', 'Germany'),
(332, 'ZQF', 'Trier fohren', 'Trier', 'Germany'),
(333, 'ZQC', 'Speyer', 'Speyer', 'Germany'),
(334, 'ZCC', 'Baden oos', 'Baden-baden', 'Germany'),
(335, 'ZQL', 'Donaueschingen villingen', 'Donaueschingen', 'Germany'),
(336, 'BWE', 'Braunschweig', 'Braunschweig', 'Germany'),
(337, 'KSF', 'Kassel calden', 'Kassel', 'Germany'),
(338, 'BRV', 'Bremerhaven', 'Bremerhaven', 'Germany'),
(339, 'LEM', 'Lemwerder', 'Lemwerder', 'Germany'),
(340, 'EME', 'Emden', 'Emden', 'Germany'),
(341, 'WVN', 'Wilhelmshaven mariensiel', 'Wilhelmshaven', 'Germany'),
(342, 'BMK', 'Borkum', 'Borkum', 'Germany'),
(343, 'NRD', 'Norderney', 'Norderney', 'Germany'),
(344, 'GWT', 'Westerland sylt', 'Westerland', 'Germany'),
(345, 'TLL', 'Tallinn', 'Tallinn-ulemiste international', 'Estonia'),
(346, 'ENF', 'Enontekio', 'Enontekio', 'Finland'),
(347, 'KEV', 'Halli', 'Halli', 'Finland'),
(348, 'HEM', 'Helsinki malmi', 'Helsinki', 'Finland'),
(349, 'HEL', 'Helsinki vantaa', 'Helsinki', 'Finland'),
(350, 'IVL', 'Ivalo', 'Ivalo', 'Finland'),
(351, 'JOE', 'Joensuu', 'Joensuu', 'Finland'),
(352, 'JYV', 'Jyvaskyla', 'Jyvaskyla', 'Finland'),
(353, 'KAU', 'Kauhava', 'Kauhava', 'Finland'),
(354, 'KEM', 'Kemi tornio', 'Kemi', 'Finland'),
(355, 'KAJ', 'Kajaani', 'Kajaani', 'Finland'),
(356, 'KOK', 'Kruunupyy', 'Kruunupyy', 'Finland'),
(357, 'KAO', 'Kuusamo', 'Kuusamo', 'Finland'),
(358, 'KTT', 'Kittila', 'Kittila', 'Finland'),
(359, 'KUO', 'Kuopio', 'Kuopio', 'Finland'),
(360, 'LPP', 'Lappeenranta', 'Lappeenranta', 'Finland'),
(361, 'MHQ', 'Mariehamn', 'Mariehamn', 'Finland'),
(362, 'MIK', 'Mikkeli', 'Mikkeli', 'Finland'),
(363, 'OUL', 'Oulu', 'Oulu', 'Finland'),
(364, 'POR', 'Pori', 'Pori', 'Finland'),
(365, 'RVN', 'Rovaniemi', 'Rovaniemi', 'Finland'),
(366, 'SVL', 'Savonlinna', 'Savonlinna', 'Finland'),
(367, 'SOT', 'Sodankyla', 'Sodankyla', 'Finland'),
(368, 'TMP', 'Tampere pirkkala', 'Tampere', 'Finland'),
(369, 'TKU', 'Turku', 'Turku', 'Finland'),
(370, 'QVY', 'Utti', 'Utti', 'Finland'),
(371, 'VAA', 'Vaasa', 'Vaasa', 'Finland'),
(372, 'VRK', 'Varkaus', 'Varkaus', 'Finland'),
(373, 'BFS', 'Aldergrove', 'Belfast', 'North ireland'),
(374, 'ENK', 'St angelo', 'Enniskillen', 'England'),
(375, 'BHD', 'City', 'Belfast', 'North ireland'),
(376, 'LDY', 'Londonderry eglinton', 'Londonderry', 'North ireland'),
(377, 'BHX', 'Birmingham', 'Birmingham', 'England'),
(378, 'CVT', 'Coventry', 'Coventry', 'England'),
(379, 'GLO', 'Gloucestershire', 'Golouchestershire', 'England'),
(380, 'MAN', 'Manchester', 'Manchester', 'England'),
(381, 'NQY', 'St mawgan', 'Newquai', 'England'),
(382, 'LYE', 'Lyneham', 'Lyneham', 'U.k.'),
(383, 'YEO', 'Yeovilton', 'Yeovilton', 'U.k.'),
(384, 'CWL', 'Cardiff', 'Cardiff', 'Wales'),
(385, 'SWS', 'Swansea', 'Swansea', 'England'),
(386, 'BRS', 'Bristol', 'Bristol', 'England'),
(387, 'LPL', 'Liverpool', 'Liverpool', 'England'),
(388, 'LTN', 'Luton', 'London', 'England'),
(389, 'PLH', 'Plymouth', 'Plymouth', 'England'),
(390, 'BOH', 'Bournemouth', 'Bournemouth', 'England'),
(391, 'SOU', 'Southampton', 'Southampton', 'England'),
(392, 'QLA', 'Lasham', 'Lasham', 'England'),
(393, 'GCI', 'Guernsey', 'Guernsey', 'Guernsey isld.'),
(394, 'JER', 'Jersey', 'Jersey', 'England'),
(395, 'ESH', 'Shoreham', 'Shoreham by sea', 'England'),
(396, 'BQH', 'Biggin hill', 'Biggin hill', 'England'),
(397, 'LGW', 'Gatwick', 'London', 'England'),
(398, 'LCY', 'City', 'London', 'England'),
(399, 'FAB', 'Farnborough', 'Farnborough', 'England'),
(400, 'BBS', 'Blackbushe', 'Blackbushe', 'England'),
(401, 'LHR', 'Heathrow', 'London', 'Engalnd'),
(402, 'SEN', 'Southend', 'Southend', 'England'),
(403, 'LYX', 'Lydd', 'Lydd', 'U.k.'),
(404, 'MSE', 'Manston', 'Manston', 'England'),
(405, 'CAX', 'Carlisle', 'Carlisle', 'England'),
(406, 'BLK', 'Blackpool', 'Blackpool', 'England'),
(407, 'HUY', 'Humberside', 'Humberside', 'England'),
(408, 'BWF', 'Walney island', 'Barrow island', 'England'),
(409, 'LBA', 'Leeds bradford', 'Leeds', 'England'),
(410, 'CEG', 'Hawarden', 'Hawarden', 'England'),
(411, 'IOM', 'Isle of man', 'Isle of man', 'England'),
(412, 'NCL', 'Newcastle', 'Newcastle', 'England'),
(413, 'MME', 'Teesside', 'Teesside', 'England'),
(414, 'EMA', 'East midlands', 'East midlands', 'England'),
(415, 'KOI', 'Kirkwall', 'Kirkwall', 'Scotland'),
(416, 'LSI', 'Sumburgh', 'Sumburgh', 'U.k.'),
(417, 'WIC', 'Wick', 'Wick', 'U.k.'),
(418, 'ABZ', 'Dyce', 'Aberdeen', 'U.k'),
(419, 'INV', 'Inverness', 'Inverness', 'U.k'),
(420, 'GLA', 'Glasgow', 'Glasgow', 'U.k'),
(421, 'EDI', 'Edinburgh', 'Edinburgh', 'U.k'),
(422, 'ILY', 'Islay', 'Islay', 'U.k'),
(423, 'PIK', 'Prestwick', 'Prestwick', 'U.k'),
(424, 'BEB', 'Benbecula', 'Benbecula', 'U.k'),
(425, 'SDZ', 'Scatsta', 'Scatsta', 'U.k.'),
(426, 'DND', 'Dundee', 'Dundee', 'U.k'),
(427, 'SYY', 'Stornoway', 'Stornoway', 'U.k.'),
(428, 'TRE', 'Tiree', 'Tiree', 'U.k.'),
(429, 'ADX', 'Leuchars', 'Leuchars', 'U.k'),
(430, 'LMO', 'Lossiemouth', 'Lossiemouth', 'U.k'),
(431, 'CBG', 'Cambridge', 'Cambridge', 'England'),
(432, 'NWI', 'Norwich', 'Norwich', 'England'),
(433, 'STN', 'Stansted', 'London', 'England'),
(434, 'EXT', 'Exeter', 'Exeter', 'England'),
(435, 'FZO', 'Bristol filton', 'Bristol', 'England'),
(436, 'HTF', 'Hatfield', 'Hatfield', 'England'),
(437, 'OXF', 'Kidlington', 'Oxford', 'England'),
(438, 'MHZ', 'Mildenhall', 'Mildenhall', 'England'),
(439, 'FFD', 'Fairford', 'Fairford', 'England'),
(440, 'BZZ', 'Brize norton', 'Brize norton', 'England'),
(441, 'ODH', 'Odiham', 'Odiham', 'U.k.'),
(442, 'NHT', 'Northolt raf', 'Northolt', 'U.k.'),
(443, 'QCY', 'Coningsby', 'Coningsby', 'England'),
(444, 'BEQ', 'Honington', 'Honington', 'England'),
(445, 'WTN', 'Waddington', 'Waddington', 'U.k.'),
(446, 'CLF', 'Coltishall', 'Coltishall', 'England'),
(447, 'KNF', 'Marham', 'Marham', 'U.k.'),
(448, 'MPN', 'Mount pleasant', 'Mount pleasant', 'Falkland islands'),
(449, 'AMS', 'Schiphol', 'Amsterdam', 'Netherlands'),
(450, 'MST', 'Maastricht', 'Maastricht', 'Netherlands'),
(451, 'EIN', 'Eindhoven', 'Eindhoven', 'Netherlands'),
(452, 'GRQ', 'Eelde', 'Groningen', 'Netherlands'),
(453, 'DHR', 'De kooy', 'De kooy', 'Netherlands'),
(454, 'LWR', 'Leeuwarden', 'Leeuwarden', 'Netherlands'),
(455, 'RTM', 'Rotterdam', 'Rotterdam', 'Netherlands'),
(456, 'UTC', 'Soesterberg', 'Soesterberg', 'Netherlands'),
(457, 'ENS', 'Twenthe', 'Enschede', 'Netherlands'),
(458, 'LID', 'Valkenburg', 'Valkenburg', 'Netherlands'),
(459, 'WOE', 'Woensdrecht', 'Woensdrecht', 'Netherlands'),
(460, 'ORK', 'Cork', 'Cork', 'Ireland'),
(461, 'GWY', 'Galway', 'Galway', 'Ireland'),
(462, 'DUB', 'Dublin', 'Dublin', 'Ireland'),
(463, 'NOC', 'Connaught', 'Connaught', 'Ireland'),
(464, 'KIR', 'Kerry', 'Kerry', 'Ireland'),
(465, 'SNN', 'Shannon', 'Shannon', 'Ireland'),
(466, 'SXL', 'Sligo', 'Sligo', 'Ireland'),
(467, 'WAT', 'Waterford', 'Waterford', 'Ireland'),
(468, 'AAR', 'Aarhus', 'Aarhus', 'Denmark'),
(469, 'BLL', 'Billund', 'Billund', 'Denmark'),
(470, 'CPH', 'Kastrup', 'Copenhagen', 'Denmark'),
(471, 'EBJ', 'Esbjerg', 'Esbjerg', 'Denmark'),
(472, 'KRP', 'Karup', 'Karup', 'Denmark'),
(473, 'ODE', 'Odense', 'Odense', 'Denmark'),
(474, 'RKE', 'Roskilde', 'Copenhagen', 'Denmark'),
(475, 'RNN', 'Bornholm ronne', 'Ronne', 'Denmark'),
(476, 'SGD', 'Sonderborg', 'Soenderborg', 'Denmark'),
(477, 'SKS', 'Skrydstrup', 'Skrydstrup', 'Denmark'),
(478, 'TED', 'Thisted', 'Thisted', 'Denmark'),
(479, 'FAE', 'Vagar', 'Vagar', 'Faroe isl.'),
(480, 'STA', 'Stauning', 'Stauning', 'Denmark'),
(481, 'AAL', 'Aalborg', 'Aalborg', 'Denmark'),
(482, 'LUX', 'Findel international airport', 'Luxemburg', 'Luxemburg'),
(483, 'AES', 'Vigra', 'Alesund', 'Norway'),
(484, 'ANX', 'Andoya', 'Andoya', 'Norway'),
(485, 'ALF', 'Alta', 'Alta', 'Norway'),
(486, 'BNN', 'Bronnoy', 'Bronnoysund', 'Norway'),
(487, 'BOO', 'Bodo', 'Bodoe', 'Norway'),
(488, 'BGO', 'Bergen flesland', 'Bergen', 'Norway'),
(489, 'BJF', 'Batsfjord', 'Batsfjord', 'Norway'),
(490, 'KRS', 'Kristiansand kjevik', 'Kristiansand', 'Norway'),
(491, 'BDU', 'Bardufoss', 'Bardufoss', 'Norway'),
(492, 'EVE', 'Evenes', 'Evenes', 'Norway'),
(493, 'FBU', 'Oslo fornebu', 'Oslo', 'Norway'),
(494, 'VDB', 'Fagernes leirin', 'Fagernes', 'Norway'),
(495, 'FRO', 'Floro', 'Floro', 'Norway'),
(496, 'OSL', 'Oslo gardermoen', 'Oslo', 'Norway'),
(497, 'HMR', 'Stafsberg', 'Hamar', 'Norway'),
(498, 'HAU', 'Haugesund karmoy', 'Haugesund', 'Norway'),
(499, 'HAA', 'Hasvik', 'Hasvik', 'Norway'),
(500, 'KSU', 'Kristiansund kvernberget', 'Kristiansund', 'Norway'),
(501, 'KKN', 'Kirkenes hoybuktmoen', 'Kirkenes', 'Norway'),
(502, 'FAN', 'Lista', 'Lista', 'Norway'),
(503, 'MOL', 'Aro', 'Molde', 'Norway'),
(504, 'MJF', 'Kjaerstad', 'Mosjoen', 'Norway'),
(505, 'LKL', 'Banak', 'Banak', 'Norway'),
(506, 'OLA', 'Orland', 'Orland', 'Norway'),
(507, 'RRS', 'Roeros', 'Roros', 'Norway'),
(508, 'LYR', 'Svalbard longyear', 'Svalbard', 'Norway'),
(509, 'SOG', 'Sogndal haukasen', 'Sogndal', 'Norway'),
(510, 'SKE', 'Skien geiteryggen', 'Skien', 'Norway'),
(511, 'SRP', 'Soerstokken', 'Stord', 'Norway'),
(512, 'SOJ', 'Sorkjosen', 'Sorkjosen', 'Norway'),
(513, 'SSJ', 'Stokka', 'Sandnessjoen', 'Norway'),
(514, 'TOS', 'Tromso', 'Tromso', 'Norway'),
(515, 'TRF', 'Torp', 'Torp', 'Norway'),
(516, 'TRD', 'Trondheim vaernes', 'Trondheim', 'Norway'),
(517, 'SVG', 'Stavanger sola', 'Stavanger', 'Norway'),
(518, 'GDN', 'Rebiechowo', 'Gdansk', 'Poland'),
(519, 'KRK', 'Balice jp ii international airport', 'Krakow', 'Poland'),
(520, 'KTW', 'Pyrzowice', 'Katowice', 'Poland'),
(521, 'POZ', 'Lawica', 'Poznan', 'Poland'),
(522, 'RZE', 'Jasionka', 'Rzeszow', 'Poland'),
(523, 'SZZ', 'Goleniow', 'Szczechin', 'Poland'),
(524, 'OSP', 'Redzikowo', 'Slupsk', 'Poland'),
(525, 'WAW', 'Okecie', 'Warsaw', 'Poland'),
(526, 'WRO', 'Strachowice', 'Wroclaw', 'Poland'),
(527, 'IEG', 'Babimost', 'Zielona gora', 'Poland'),
(528, 'AGH', 'Angelholm', 'Angelholm', 'Sweden'),
(529, 'RNB', 'Ronneby', 'Ronneby', 'Sweden'),
(530, 'GOT', 'Landvetter', 'Gothenborg', 'Sweden'),
(531, 'JKG', 'Jonkoping', 'Joenkoeping', 'Sweden'),
(532, 'LDK', 'Lidkoping', 'Lidkoping', 'Sweden'),
(533, 'GSE', 'Save', 'Gothenborg', 'Sweden'),
(534, 'KVB', 'Skovde', 'Skovde', 'Sweden'),
(535, 'THN', 'Trollhattan vanersborg', 'Trollhattan', 'Sweden'),
(536, 'KSK', 'Karlskoga', 'Karlskoga', 'Sweden'),
(537, 'MXX', 'Mora', 'Mora', 'Sweden'),
(538, 'NYO', 'Skavsta', 'Stockholm', 'Sweden'),
(539, 'KID', 'Kristianstad', 'Kristianstad', 'Sweden'),
(540, 'JLD', 'Landskrona', 'Landskrona', 'Sweden'),
(541, 'OSK', 'Oskarshamn', 'Oskarshamn', 'Sweden'),
(542, 'KLR', 'Kalmar', 'Kalkmar', 'Sweden'),
(543, 'MMX', 'Sturup', 'Malmoe', 'Sweden'),
(544, 'HAD', 'Halmstad', 'Halmstad', 'Sweden'),
(545, 'VXO', 'Kronoberg', 'Vaxjo', 'Sweden'),
(546, 'EVG', 'Sveg', 'Sveg', 'Sweden'),
(547, 'GEV', 'Gallivare', 'Gallivare', 'Sweden'),
(548, 'HUV', 'Hudiksvall', 'Hudiksvall', 'Sweden'),
(549, 'KRF', 'Kramfors solleftea', 'Kramfors', 'Sweden'),
(550, 'LYC', 'Lycksele', 'Lycksele', 'Sweden'),
(551, 'SDL', 'Sundsvall harnosand', 'Sundsvall', 'Sweden'),
(552, 'OER', 'Ornskoldsvik', 'Ornskoldsvik', 'Sweden'),
(553, 'KRN', 'Kiruna', 'Kiruna', 'Sweden'),
(554, 'SFT', 'Skelleftea', 'Skelleftea', 'Sweden'),
(555, 'UME', 'Umea', 'Umea', 'Sweden'),
(556, 'VHM', 'Vilhelmina', 'Vilhelmina', 'Sweden'),
(557, 'AJR', 'Arvidsjaur', 'Arvidsjaur', 'Sweden'),
(558, 'ORB', 'Orebro', 'Orebro', 'Sweden'),
(559, 'VST', 'Vasteras', 'Vasteras', 'Sweden'),
(560, 'LLA', 'Kallax', 'Lulea', 'Sweden'),
(561, 'OSD', 'Froson', 'Ostersund', 'Sweden'),
(562, 'ARN', 'Arlanda', 'Stockholm', 'Sweden'),
(563, 'BMA', 'Bromma', 'Stockholm', 'Sweden'),
(564, 'BLE', 'Borlange', 'Borlange', 'Sweden'),
(565, 'HLF', 'Hultsfred', 'Hultsfred', 'Sweden'),
(566, 'GVX', 'Gavle sandviken', 'Gavle', 'Sweden'),
(567, 'LPI', 'Saab', 'Linkoeping', 'Sweden'),
(568, 'NRK', 'Kungsangen', 'Norrkoeping', 'Sweden'),
(569, 'VBY', 'Visby', 'Visby', 'Sweden'),
(570, 'SPM', 'Spangdahlem ab', 'Spangdahlem', 'Germany'),
(571, 'RMS', 'Ramstein ab', 'Ramstein', 'Germany'),
(572, 'GHF', 'Giebelstadt aaf', 'Giebelstadt', 'Germany'),
(573, 'ZCN', 'Celle', 'Celle', 'Germany'),
(574, 'ZNF', 'Hanau aaf', 'Hanau', 'Germany'),
(575, 'QHD', 'Heidelberg aaf', 'Heidelberg', 'Germany'),
(576, 'GKE', 'Geilenkirchen', 'Geilenkirchen', 'Germany'),
(577, 'RLG', 'Laage', 'Laage', 'Germany'),
(578, 'FEL', 'Furstenfeldbruck', 'Fuerstenfeldbruck', 'Germany'),
(579, 'LRC', 'Laarbruch', 'Laarbruch', 'Germany'),
(580, 'GUT', 'Gutersloh', 'Guetersloh', 'Germany'),
(581, 'BGN', 'Bruggen', 'Brueggen', 'Germany'),
(582, 'ALJ', 'Alexander bay', 'Alexander bay', 'South africa'),
(583, 'AGZ', 'Aggeneys', 'Aggeneys', 'South africa'),
(584, 'VIY', 'Bisho', 'Bisho', 'South africa'),
(585, 'BFN', 'Bloemfontein', 'Bloemfontein', 'South africa'),
(586, 'CPT', 'Cape town international', 'Cape town', 'South africa'),
(587, 'DUR', 'Durban international', 'Durban', 'South africa'),
(588, 'ELS', 'East london', 'East london', 'South africa'),
(589, 'ELL', 'Ellisras', 'Ellisras', 'South africa'),
(590, 'GCJ', 'Grand central', 'Johannesburg', 'South africa'),
(591, 'GRJ', 'George', 'George', 'South africa'),
(592, 'HCS', 'Rand', 'Johannesburg', 'South africa'),
(593, 'GHC', 'Heidelberg', 'Heidelberg', 'South africa'),
(594, 'HDS', 'Hoedspruit afs', 'Hoedspruit', 'South africa'),
(595, 'JNB', 'Johannesburg international', 'Johannesburg', 'South africa'),
(596, 'KIM', 'Kimberley', 'Kimberley', 'South africa'),
(597, 'KLZ', 'Kleinsee', 'Kleinsee', 'South africa'),
(598, 'HLA', 'Lanseria', 'Johannesburg', 'South africa'),
(599, 'LCD', 'Louis trichardt afb', 'Louis trichardt', 'South africa'),
(600, 'LAY', 'Ladysmith', 'Ladysmith', 'South africa'),
(601, 'MGH', 'Margate', 'Margate', 'South africa'),
(602, 'MFK', 'Mafikeng north', 'Mafikeng', 'South africa'),
(603, 'MBO', 'Mafikeng', 'Mmabatho', 'Bophuthatswana'),
(604, 'MEZ', 'Messina', 'Messina', 'South africa'),
(605, 'NCS', 'Newcastle', 'Newcastle', 'South africa'),
(606, 'NLP', 'Nelspruit', 'Nelspruit', 'South africa'),
(607, 'DUH', 'Oudtshoorn', 'Oudtshoorn', 'South africa'),
(608, 'PLZ', 'Port elizabeth', 'Port elizabeth', 'South africa'),
(609, 'PHW', 'Phalaborwa', 'Phalaborwa', 'South africa'),
(610, 'PTG', 'Pietersburg muni', 'Pietersburg', 'South africa'),
(611, 'PZB', 'Pietermaritzburg', 'Pietermaritzburg', 'South africa'),
(612, 'NTY', 'Pilanesberg', 'Pilanesberg', 'South africa'),
(613, 'UTW', 'Queenstown', 'Queenstown', 'South africa'),
(614, 'RCB', 'Richards bay', 'Richards bay', 'South africa'),
(615, 'SBU', 'Springbok', 'Springbok', 'South africa'),
(616, 'SIS', 'Sishen', 'Sishen', 'South africa'),
(617, 'SZK', 'Skukuza', 'Skukuza', 'South africa'),
(618, 'THY', 'P r mphephu', 'Thohoyandou', 'South africa'),
(619, 'TCU', 'Thaba nchu', 'Thaba nchu', 'Bophuthatswana'),
(620, 'LTA', 'Tzaneen', 'Tzaneen', 'South africa'),
(621, 'ULD', 'Prince mangosuthu buthelezi', 'Ulundi', 'South africa'),
(622, 'UTN', 'Upington', 'Upington', 'South africa'),
(623, 'UTT', 'Umtata', 'Umtata', 'South africa'),
(624, 'VRU', 'Vryburg', 'Vryburg', 'South africa'),
(625, 'VIR', 'Virginia', 'Durban', 'South africa'),
(626, 'VYD', 'Vryheid', 'Vryheid', 'South africa'),
(627, 'PRY', 'Wonderboom', 'Pretoria', 'South africa'),
(628, 'WEL', 'Welkom', 'Welkom', 'South africa'),
(629, 'FRW', 'Francistown', 'Francistown', 'Botswana'),
(630, 'JWA', 'Jwaneng', 'Jwaneng', 'Botswana'),
(631, 'BBK', 'Kasane', 'Kasane', 'Botswana'),
(632, 'MUB', 'Maun', 'Maun', 'Botswana'),
(633, 'ORP', 'Orapa', 'Orapa', 'Botswana'),
(634, 'GBE', 'Sir seretse khama international', 'Gaberone', 'Botswana'),
(635, 'PKW', 'Selebi phikwe', 'Selebi-phikwe', 'Botswana'),
(636, 'BZV', 'Brazzaville maya maya', 'Brazzaville', 'Congo'),
(637, 'ION', 'Impfondo', 'Impfondo', 'Congo'),
(638, 'MKJ', 'Makoua', 'Makoua', 'Congo'),
(639, 'FTX', 'Owando', 'Owando', 'Congo'),
(640, 'OUE', 'Ouesso', 'Ouesso', 'Congo'),
(641, 'KMK', 'Makabana', 'Makabana', 'Congo'),
(642, 'DIS', 'Dolisie', 'Loudima', 'Congo'),
(643, 'PNR', 'Pointe noire', 'Pointe-noire', 'Congo'),
(644, 'MTS', 'Matsapha', 'Manzini', 'Swaziland'),
(645, 'BGF', 'Bangui m poko', 'Bangui', 'Central african rep.'),
(646, 'BGU', 'Bangassou', 'Bangassou', 'Central african rep.'),
(647, 'IRO', 'Birao', 'Birao', 'Central african rep.'),
(648, 'BBY', 'Bambari', 'Bambari', 'Central african rep.'),
(649, 'NDL', 'Ndele', 'Ndele', 'Central african rep.'),
(650, 'BOP', 'Bouar', 'Bouar', 'Central african rep.'),
(651, 'BIV', 'Bria', 'Bria', 'Central african rep.'),
(652, 'BBT', 'Berberati', 'Berberati', 'Central african rep.'),
(653, 'AIG', 'Yalinga', 'Yalinga', 'Central african rep.'),
(654, 'BSG', 'Bata', 'Bata', 'Equatorial guinea'),
(655, 'SSG', 'Malabo', 'Malabo', 'Equatorial guinea'),
(656, 'MRU', 'Sir seewoosagur ramgoolam international', 'Plaisance', 'Mauritius'),
(657, 'RRG', 'Plaine corail', 'Rodriguez island', 'Mauritius'),
(658, 'TKC', 'Tiko', 'Tiko', 'Cameroon'),
(659, 'DLA', 'Douala', 'Douala', 'Cameroon'),
(660, 'OUR', 'Batouri', 'Batouri', 'Cameroon'),
(661, 'MVR', 'Maroua salak', 'Maroua', 'Cameroon'),
(662, 'FOM', 'Foumban nkounja', 'Foumban', 'Cameroon'),
(663, 'NGE', 'Ngaoundere', 'Ngaoundere', 'Cameroon'),
(664, 'GOU', 'Garoua', 'Garoua', 'Cameroon'),
(665, 'BFX', 'Bafoussam', 'Bafoussam', 'Cameroon'),
(666, 'BPC', 'Bamenda', 'Bamenda', 'Cameroon'),
(667, 'YAO', 'Yaounde', 'Yaounde', 'Cameroon'),
(668, 'LVI', 'Livingstone', 'Livingstone', 'Zambia'),
(669, 'LUN', 'Lusaka international', 'Lusaka', 'Zambia'),
(670, 'MFU', 'Mfuwe', 'Mfuwe', 'Zambia'),
(671, 'NLA', 'Ndola', 'Ndola', 'Zambia'),
(672, 'KIW', 'Southdowns', 'Southdowns', 'Zambia'),
(673, 'HAH', 'Moroni hahaia', 'Moroni', 'Comoros islands'),
(674, 'NWA', 'Moheli bandar es salam', 'Moheli', 'Comoros islands'),
(675, 'YVA', 'Moroni iconi', 'Moroni', 'Comoros islands'),
(676, 'AJN', 'Anjouan ouani', 'Anjouan', 'Comoros islands'),
(677, 'DZA', 'Dzaoudzi pamanzi', 'Dzaoudzi', 'Mayotte island'),
(678, 'RUN', 'St denis gillot', 'St.-denis', 'Reunion island'),
(679, 'ZSE', 'St pierre pierrefonds', 'St.-pierre', 'Reunion island'),
(680, 'TNR', 'Antananarivo ivato', 'Antananarivo', 'Madagascar'),
(681, 'ZVA', 'Miandrivazo', 'Miandrivazo', 'Madagascar'),
(682, 'SMS', 'Sainte marie', 'Sainte marie', 'Madagascar'),
(683, 'TMM', 'Toamasina', 'Toamasina', 'Madagascar'),
(684, 'MOQ', 'Morondava', 'Morondava', 'Madagascar'),
(685, 'DIE', 'Antsiranana arrachart', 'Antsiranana', 'Madagascar'),
(686, 'WMR', 'Mananara avaratra', 'Mananara', 'Madagascar'),
(687, 'ZWA', 'Andapa', 'Andapa', 'Madagascar'),
(688, 'AMB', 'Ambilobe mahavavy', 'Ambilobe', 'Madagascar'),
(689, 'ANM', 'Antalaha antsirabato', 'Antalaha', 'Madagascar'),
(690, 'HVA', 'Analalava', 'Analalava', 'Madagascar'),
(691, 'MJN', 'Mahajanga philibert tsiranana', 'Mahajanga', 'Madagascar'),
(692, 'NOS', 'Nosy be fascene', 'Nosy-be', 'Madagascar'),
(693, 'BPY', 'Besalampy', 'Besalampy', 'Madagascar'),
(694, 'WMN', 'Maroantsetra', 'Maroantsetra', 'Madagascar'),
(695, 'SVB', 'Sambava sud', 'Sambava', 'Madagascar'),
(696, 'VOH', 'Vohimarina', 'Vohemar', 'Madagascar'),
(697, 'WAI', 'Antsohihy ambalabe', 'Antsohihy', 'Madagascar'),
(698, 'FTU', 'Tolagnaro', 'Tolagnaro', 'Madagascar'),
(699, 'WFI', 'Fianarantsoa', 'Fianarantsoa', 'Madagascar'),
(700, 'RVA', 'Farafangana', 'Farafangana', 'Madagascar'),
(701, 'WVK', 'Manakara sud', 'Manakara', 'Madagascar'),
(702, 'MNJ', 'Mananjary', 'Mananjary', 'Madagascar'),
(703, 'MXM', 'Morombe', 'Morombe', 'Madagascar'),
(704, 'TLE', 'Toliara', 'Toliara', 'Madagascar'),
(705, 'SSY', 'Mbanza congo', 'Mbanza-congo', 'Angola'),
(706, 'BUG', 'Benguela', 'Benguela', 'Angola'),
(707, 'CAB', 'Cabinda', 'Cabinda', 'Angola'),
(708, 'PGI', 'Chitato', 'Chitato', 'Angola'),
(709, 'CAV', 'Cazombo', 'Cazombo', 'Angola'),
(710, 'NGV', 'Ngiva', 'Ngiva', 'Angola'),
(711, 'NOV', 'Huambo', 'Huambo', 'Angola'),
(712, 'SVP', 'Kuito', 'Kuito', 'Angola'),
(713, 'LAD', 'Luanda 4 de fevereiro', 'Luanda', 'Angola'),
(714, 'MEG', 'Malanje', 'Malanje', 'Angola'),
(715, 'SPP', 'Menongue', 'Menongue', 'Angola'),
(716, 'GXG', 'Negage', 'Negage', 'Angola'),
(717, 'PBN', 'Porto amboim', 'Porto amboim', 'Angola'),
(718, 'VHC', 'Saurimo', 'Saurimo', 'Angola'),
(719, 'SZA', 'Soyo', 'Soyo', 'Angola'),
(720, 'LUO', 'Luena', 'Luena', 'Angola'),
(721, 'UGO', 'Uige', 'Uige', 'Angola'),
(722, 'XGN', 'Xangongo', 'Xangongo', 'Angola'),
(723, 'OYE', 'Oyem', 'Oyem', 'Gabon'),
(724, 'OKN', 'Okondja', 'Okondja', 'Gabon'),
(725, 'LBQ', 'Lambarene', 'Lambarene', 'Gabon'),
(726, 'BMM', 'Bitam', 'Bitam', 'Gabon'),
(727, 'MFF', 'Moanda', 'Moanda', 'Gabon'),
(728, 'POG', 'Port gentil', 'Port gentil', 'Gabon'),
(729, 'OMB', 'Omboue hopital', 'Omboue hospial', 'Gabon'),
(730, 'MKU', 'Makokou', 'Makokou', 'Gabon'),
(731, 'LBV', 'Libreville leon m ba', 'Libreville', 'Gabon'),
(732, 'MZC', 'Mitzic', 'Mitzic', 'Gabon'),
(733, 'MVB', 'Franceville mvengue', 'Franceville', 'Gabon'),
(734, 'LTL', 'Lastourville', 'Lastourville', 'Gabon'),
(735, 'TCH', 'Tchibanga', 'Tchibanga', 'Gabon'),
(736, 'PCP', 'Principe', 'Principe', 'Sao tome & principe'),
(737, 'TMS', 'Sao tome international', 'Sao tome', 'Sao tome & principe'),
(738, 'BEW', 'Beira', 'Beira', 'Mozambique'),
(739, 'FXO', 'Cuamba', 'Cuamba', 'Mozambique'),
(740, 'INH', 'Inhambane', 'Inhambane', 'Mozambique'),
(741, 'VXC', 'Lichinga', 'Lichinga', 'Mozambique'),
(742, 'MPM', 'Maputo', 'Maputo', 'Mozambique'),
(743, 'MZB', 'Mocimboa da praia', 'Mocimboa da praia', 'Mozambique'),
(744, 'MNC', 'Nacala', 'Nacala', 'Mozambique'),
(745, 'APL', 'Nampula', 'Nampula', 'Mozambique'),
(746, 'POL', 'Pemba', 'Pemba', 'Mozambique'),
(747, 'UEL', 'Quelimane', 'Quelimane', 'Mozambique'),
(748, 'TET', 'Tete chingozi', 'Tete', 'Mozambique'),
(749, 'VNX', 'Vilankulo', 'Vilankulu', 'Mozambique'),
(750, 'DES', 'Desroches', 'Desroches', 'Seychelles'),
(751, 'SEZ', 'Seychelles international', 'Mahe', 'Seychelles'),
(752, 'PRI', 'Praslin', 'Praslin', 'Seychelles'),
(753, 'SRH', 'Sarh', 'Sarh', 'Chad'),
(754, 'AEH', 'Abeche', 'Abeche', 'Chad'),
(755, 'MQQ', 'Moundou', 'Moundou', 'Chad'),
(756, 'NDJ', 'Ndjamena', 'Ndjamena', 'Chad'),
(757, 'PLF', 'Pala', 'Pala', 'Chad'),
(758, 'FYT', 'Faya largeau', 'Faya-largeau', 'Chad'),
(759, 'BUQ', 'Joshua mqabuko nkomo international', 'Bulawayo', 'Zimbabwe'),
(760, 'BFO', 'Chiredzi buffalo range', 'Chiredzi', 'Zimbabwe'),
(761, 'VFA', 'Victoria falls international', 'Victoria falls', 'Zimbabwe'),
(762, 'UTA', 'Mutare grand reef', 'Mutare', 'Zimbabwe'),
(763, 'HRE', 'Harare international', 'Harare', 'Zimbabwe'),
(764, 'KAB', 'Kariba international', 'Kariba', 'Zimbabwe'),
(765, 'MVZ', 'Masvingo', 'Masvingo', 'Zimbabwe'),
(766, 'GWE', 'Gweru thornhill', 'Gwert', 'Zimbabwe'),
(767, 'WKM', 'Hwange national park', 'Hwange national park', 'Zimbabwe'),
(768, 'BLZ', 'Chileka international', 'Blantyre', 'Malawi'),
(769, 'KGJ', 'Karonga', 'Karonga', 'Malawi'),
(770, 'ZZU', 'Mzuzu', 'Mzuzu', 'Malawi'),
(771, 'MSU', 'Moshoeshoe i international', 'Maseru', 'Lesotho'),
(772, 'FIH', 'Kinshasa ndjili international', 'Kinshasa', 'Zaire'),
(773, 'NLO', 'Kinshasa ndolo', 'Kinshasa', 'Zaire'),
(774, 'MNB', 'Muanda', 'Muanda', 'Zaire'),
(775, 'MAT', 'Matadi tshimpi', 'Matadi', 'Zaire'),
(776, 'FDU', 'Bandundu', 'Bandoundu', 'Zaire'),
(777, 'KKW', 'Kikwit', 'Kikwit', 'Zaire'),
(778, 'MDK', 'Mbandaka', 'Mbandaka', 'Zaire'),
(779, 'BDT', 'Gbadolite', 'Gbadolite', 'Zaire'),
(780, 'GMA', 'Gemena', 'Gemena', 'Zaire'),
(781, 'LIQ', 'Lisala', 'Lisala', 'Zaire'),
(782, 'FKI', 'Kisangani simisini', 'Kisangani', 'Zaire'),
(783, 'IRP', 'Isiro matari', 'Isiro', 'Zaire'),
(784, 'BUX', 'Bunia', 'Bunia', 'Zaire'),
(785, 'BKY', 'Bukavu kavumu', 'Bukavu/kavumu', 'Zaire'),
(786, 'GOM', 'Goma', 'Goma', 'Zaire'),
(787, 'KND', 'Kindu', 'Kindu', 'Zaire'),
(788, 'FBM', 'Lubumbashi international', 'Lubumashi', 'Zaire'),
(789, 'KWZ', 'Kolwezi', 'Kolwezi', 'Zaire'),
(790, 'FMI', 'Kalemie', 'Kalemie', 'Zaire'),
(791, 'KMN', 'Kamina base', 'Kamina base', 'Zaire'),
(792, 'KGA', 'Kananga', 'Kananga', 'Zaire'),
(793, 'MJM', 'Mbuji mayi', 'Mbuji-mayi', 'Zaire'),
(794, 'BKO', 'Bamako senou', 'Bamako', 'Mali'),
(795, 'GAQ', 'Gao', 'Gao', 'Mali'),
(796, 'KYS', 'Kayes', 'Kayes', 'Mali'),
(797, 'MZI', 'Mopti ambodedjo', 'Mopti', 'Mali'),
(798, 'NIX', 'Nioro', 'Nioro', 'Mali'),
(799, 'TOM', 'Tombouctou', 'Tombouctou', 'Mali'),
(800, 'BJL', 'Banjul international', 'Banjul', 'Gambia'),
(801, 'FUE', 'Fuerteventura', 'Fuerteventura', 'Canary islands'),
(802, 'VDE', 'Hierro', 'Hierro', 'Canary islands'),
(803, 'SPC', 'La palma', 'Santa cruz de la palma', 'Spain'),
(804, 'LPA', 'Gran canaria', 'Gran canaria', 'Canary islands'),
(805, 'ACE', 'Lanzarote', 'Lanzerote', 'Canary islands'),
(806, 'TFS', 'Tenerife sur', 'Tenerife', 'Canary islands'),
(807, 'TFN', 'Tenerife norte', 'Tenerife', 'Canary islands'),
(808, 'MLN', 'Melilla', 'Melilla', 'Spanish north africa'),
(809, 'HGS', 'Hastings', 'Hastings', 'Sierra leone'),
(810, 'FNA', 'Freetown lungi', 'Freetown', 'Sierra leone'),
(811, 'BXO', 'Bissau oswaldo vieira international', 'Bissau', 'Guinea bissau'),
(812, 'MLW', 'Monrovia spriggs payne', 'Monrovia', 'Liberia'),
(813, 'ROB', 'Monrovia roberts international', 'Monrovia', 'Liberia'),
(814, 'AGA', 'Inezgane', 'Agadir', 'Morocco'),
(815, 'TTA', 'Plage blanche', 'Tan tan', 'Morocco'),
(816, 'FEZ', 'Saiss', 'Fez', 'Morocco'),
(817, 'ERH', 'Moulay ali cherif', 'Er-rachidia', 'Morocco'),
(818, 'MEK', 'Bassatine', 'Meknes', 'Morocco'),
(819, 'OUD', 'Angads', 'Oujda', 'Morocco'),
(820, 'CAS', 'Anfa', 'Casablanca', 'Morocco'),
(821, 'RBA', 'Sale', 'Rabat', 'Morocco'),
(822, 'SII', 'Sidi ifni', 'Sidi ifini', 'Morocco'),
(823, 'CMN', 'Mohammed v', 'Casablanca', 'Morocco'),
(824, 'RAK', 'Menara', 'Marrakech', 'Morocco'),
(825, 'NNA', 'Kenitra', 'Kentira', 'Morocco'),
(826, 'OZZ', 'Ouarzazate', 'Ouarzazate', 'Morocco'),
(827, 'AHU', 'Cherif el idrissi', 'Al hociema', 'Morocco'),
(828, 'TTU', 'Saniat rmel', 'Tetouan', 'Morocco'),
(829, 'TNG', 'Ibn batouta', 'Tanger', 'Morocco'),
(830, 'ZIG', 'Ziguinchor', 'Ziguinchor', 'Senegal'),
(831, 'KDA', 'Kolda', 'Kolda', 'Senegal'),
(832, 'CSK', 'Cap skiring', 'Cap skiring', 'Senegal'),
(833, 'KLC', 'Kaolack', 'Kaolack', 'Senegal'),
(834, 'DKR', 'Leopold sedar senghor international', 'Dakar', 'Senegal'),
(835, 'XLS', 'Saint louis', 'St. louis', 'Senegal'),
(836, 'BXE', 'Bakel', 'Bakel', 'Senegal'),
(837, 'KGG', 'Kedougou', 'Kedougou', 'Senegal'),
(838, 'TUD', 'Tambacounda', 'Tambacounda', 'Senegal'),
(839, 'IEO', 'Aioun el atrouss', 'Aioun el atrouss', 'Mauritania'),
(840, 'TIY', 'Tidjikja', 'Tidjikja', 'Mauritania'),
(841, 'KFA', 'Kiffa', 'Kiffa', 'Mauritania'),
(842, 'EMN', 'Nema', 'Nema', 'Mauritania'),
(843, 'KED', 'Kaedi', 'Kaedi', 'Mauritania'),
(844, 'NKC', 'Nouakchott', 'Nouakschott', 'Mauritania'),
(845, 'SEY', 'Selibady', 'Selibabi', 'Mauritania'),
(846, 'ATR', 'Atar', 'Atar', 'Mauritania'),
(847, 'NDB', 'Nouadhibou', 'Nouadhibou', 'Mauritania'),
(848, 'FIG', 'Fria', 'Fira', 'Guinea'),
(849, 'FAA', 'Faranah', 'Faranah', 'Guinea'),
(850, 'LEK', 'Labe', 'Labe', 'Guinea'),
(851, 'MCA', 'Macenta', 'Macenta', 'Guinea'),
(852, 'NZE', 'Nzerekore', 'Nzerekore', 'Guinea'),
(853, 'SID', 'Amilcar cabral international', 'Amilcar cabral', 'Cape verde islands'),
(854, 'BVC', 'Rabil', 'Boa vista', 'Cape verde islands'),
(855, 'RAI', 'Francisco mendes', 'Francisco mendez', 'Cape verde islands'),
(856, 'MMO', 'Maio', 'Maio', 'Cape verde islands'),
(857, 'SNE', 'Preguica', 'Sao nocolau island', 'Cape verde islands'),
(858, 'VXE', 'Sao pedro', 'Sao vicente island', 'Cape verde islands'),
(859, 'ADD', 'Bole international', 'Addis ababa', 'Ethiopia'),
(860, 'BJR', 'Bahir dar', 'Bahar dar', 'Ethiopia'),
(861, 'DIR', 'Aba tenna dejazmatch yilma international', 'Dire dawa', 'Ethiopia'),
(862, 'GMB', 'Gambella', 'Gambella', 'Ethiopia'),
(863, 'GDQ', 'Gonder', 'Gondar', 'Ethiopia'),
(864, 'JIM', 'Aba segud', 'Jimma', 'Ethiopia'),
(865, 'LLI', 'Lalibella', 'Lalibella', 'Ethiopia'),
(866, 'MQX', 'Mekele', 'Makale', 'Ethiopia'),
(867, 'BJM', 'Bujumbura international', 'Bujumbura', 'Burundi'),
(868, 'HGA', 'Hargeisa', 'Hargeisa', 'Somalia'),
(869, 'BBO', 'Berbera', 'Berbera', 'Somalia'),
(870, 'KMU', 'Kisimayu', 'Kismayu', 'Somalia'),
(871, 'MGQ', 'Mogadishu', 'Mogadishu', 'Somalia'),
(872, 'ALY', 'Alexandria international', 'Alexandria', 'Egypt'),
(873, 'ABS', 'Abu simbel', 'Abu simbel', 'Egypt'),
(874, 'CAI', 'Cairo international', 'Cairo', 'Egypt'),
(875, 'HRG', 'Hurghada international', 'Hurghada', 'Egypt'),
(876, 'LXR', 'Luxor international', 'Luxor', 'Egypt'),
(877, 'MUH', 'Mersa matruh', 'Mersa-matruh', 'Egypt'),
(878, 'PSD', 'Port said', 'Port said', 'Egypt'),
(879, 'SKV', 'St catherine international', 'St. catherine', 'Egypt'),
(880, 'ASW', 'Aswan international', 'Aswan', 'Egypt'),
(881, 'ELT', 'El tor', 'El-tor', 'Egypt'),
(882, 'EDL', 'Eldoret international', 'Eldoret', 'Kenya'),
(883, 'GAS', 'Garissa', 'Garissa', 'Kenya'),
(884, 'KIS', 'Kisumu', 'Kisumu', 'Kenya'),
(885, 'KTL', 'Kitale', 'Kitale', 'Kenya'),
(886, 'LOK', 'Lodwar', 'Lodwar', 'Kenya'),
(887, 'LAU', 'Lamu manda', 'Lamu', 'Kenya'),
(888, 'LOY', 'Loyengalani', 'Loyangalani', 'Kenya'),
(889, 'NDE', 'Mandera', 'Mandera', 'Kenya'),
(890, 'RBT', 'Marsabit', 'Marsabit', 'Kenya'),
(891, 'MYD', 'Malindi', 'Malindi', 'Kenya'),
(892, 'MBA', 'Moi international', 'Mombasa', 'Kenya'),
(893, 'OYL', 'Moyale lower', 'Moyale lower', 'Kenya'),
(894, 'NYE', 'Nyeri', 'Nyeri', 'Kenya'),
(895, 'WIL', 'Nairobi wilson', 'Nairobi', 'Kenya'),
(896, 'NYK', 'Nanyuki', 'Nanyuki', 'Kenya'),
(897, 'WJR', 'Wajir', 'Wajir', 'Kenya'),
(898, 'GHT', 'Ghat', 'Ghat', 'Libya'),
(899, 'AKF', 'Kufra', 'Kufra', 'Libya'),
(900, 'BEN', 'Benina', 'Benghazi', 'Libya'),
(901, 'SEB', 'Sebha', 'Sebha', 'Libya'),
(902, 'TIP', 'Tripoli international', 'Tripoli', 'Libya'),
(903, 'LTD', 'Ghadames east', 'Ghadames', 'Libya'),
(904, 'GYI', 'Gisenyi', 'Gisenyi', 'Rwanda'),
(905, 'KGL', 'Kigali international', 'Kigali', 'Rwanda'),
(906, 'KME', 'Kamembe', 'Kamembe', 'Rwanda'),
(907, 'DOG', 'Dongola', 'Dongola', 'Sudan'),
(908, 'ELF', 'El fasher', 'El fasher', 'Sudan'),
(909, 'KSL', 'Kassala', 'Kassala', 'Sudan'),
(910, 'UYL', 'Nyala', 'Nyala', 'Sudan'),
(911, 'EBD', 'El obeid', 'El obeid', 'Sudan'),
(912, 'JUB', 'Juba', 'Juba', 'Sudan'),
(913, 'MAK', 'Malakal', 'Malakal', 'Sudan'),
(914, 'PZU', 'Port sudan', 'Port sudan', 'Sudan'),
(915, 'KRT', 'Khartoum', 'Khartoum', 'Sudan'),
(916, 'WUU', 'Wau', 'Wau', 'Sudan'),
(917, 'ARK', 'Arusha', 'Arusha', 'Tanzania'),
(918, 'DAR', 'Dar es salaam', 'Dar es salaam', 'Tanzania'),
(919, 'DOD', 'Dodoma', 'Dodoma', 'Tanzania'),
(920, 'IRI', 'Iringa', 'Iringa', 'Tanzania'),
(921, 'JRO', 'Kilimanjaro international', 'Kilimanjaro', 'Tanzania'),
(922, 'QSI', 'Moshi', 'Moshi', 'Tanzania'),
(923, 'MYW', 'Mtwara', 'Mtwara', 'Tanzania'),
(924, 'MWZ', 'Mwanza', 'Mwanza', 'Tanzania'),
(925, 'PMA', 'Pemba', 'Pemba', 'Tanzania'),
(926, 'TGT', 'Tanga', 'Tanga', 'Tanzania'),
(927, 'ZNZ', 'Zanzibar', 'Zanzibar', 'Tanzania'),
(928, 'EBB', 'Entebbe international', 'Entebbe', 'Uganda'),
(929, 'SRT', 'Soroti', 'Soroti', 'Uganda'),
(930, 'ABI', 'Abilene rgnl', 'Abilene', 'Usa'),
(931, 'ACK', 'Nantucket mem', 'Nantucket', 'Usa'),
(932, 'ACT', 'Waco rgnl', 'Waco', 'Usa'),
(933, 'ACY', 'Atlantic city international', 'Atlantic city', 'Usa'),
(934, 'ADM', 'Ardmore muni', 'Ardmore', 'Usa'),
(935, 'ADW', 'Andrews afb', 'Camp springs', 'Usa'),
(936, 'AEX', 'Alexandria international', 'Alexandria', 'Usa'),
(937, 'AGS', 'Augusta rgnl at bush fld', 'Bush field', 'Usa'),
(938, 'AKR', 'Akron fulton international', 'Akron', 'Usa'),
(939, 'ALB', 'Albany international', 'Albany', 'Usa'),
(940, 'ALI', 'Alice international', 'Alice', 'Usa'),
(941, 'AMA', 'Amarillo international', 'Amarillo', 'Usa'),
(942, 'ANB', 'Anniston metropolitan', 'Anniston', 'Usa'),
(943, 'AND', 'Anderson rgnl', 'Andersen', 'Usa'),
(944, 'AOO', 'Altoona blair co', 'Altoona', 'Usa'),
(945, 'APG', 'Phillips aaf', 'Aberdeen', 'Usa'),
(946, 'ARA', 'Acadiana regional', 'Louisiana', 'Usa'),
(947, 'ART', 'Watertown international', 'Watertown', 'Usa'),
(948, 'ATL', 'The william b hartsfield atlanta international', 'Atlanta', 'Usa'),
(949, 'AUG', 'Augusta state', 'Augusta', 'Usa'),
(950, 'AUS', 'Austin bergstrom international', 'Austin', 'Usa'),
(951, 'BAB', 'Beale afb', 'Marysville', 'Usa'),
(952, 'BAD', 'Barksdale afb', 'Shreveport', 'Usa'),
(953, 'BCT', 'Boca raton', 'Boca raton', 'Usa'),
(954, 'BDE', 'Baudette international', 'Baudette', 'Usa'),
(955, 'BDL', 'Bradley international', 'Windsor locks', 'Usa'),
(956, 'BDR', 'Igor i sikorsky mem', 'Stratford', 'Usa'),
(957, 'BED', 'Laurence g hanscom fld', 'Bedford', 'Usa'),
(958, 'BFI', 'Boeing fld king co international', 'Seattle', 'Usa'),
(959, 'BFL', 'Meadows fld', 'Bakersfield', 'Usa'),
(960, 'BFM', 'Mobile downtown', 'Mobile', 'Usa'),
(961, 'BGR', 'Bangor international', 'Bangor', 'Usa'),
(962, 'BHM', 'Birmingham international', 'Birmingham', 'Usa'),
(963, 'BIF', 'Biggs aaf', 'El paso', 'Usa'),
(964, 'BIX', 'Keesler afb', 'Biloxi', 'Usa'),
(965, 'BKF', 'Buckley afb', 'Buckley', 'Usa'),
(966, 'BLI', 'Bellingham international', 'Bellingham', 'Usa'),
(967, 'BLV', 'Scott afb midamerica', 'Belleville', 'Usa'),
(968, 'BNA', 'Nashville international', 'Nashville', 'Usa'),
(969, 'BOI', 'Boise air terminal', 'Boise', 'Usa'),
(970, 'BOS', 'General edward lawrence logan international', 'Boston', 'Usa'),
(971, 'BPT', 'Southeast texas rgnl', 'Beaumont', 'Usa'),
(972, 'BRO', 'Brownsville south padre island international', 'Brownsville', 'Usa'),
(973, 'BTR', 'Baton rouge metro ryan fld', 'Baton rouge', 'Usa'),
(974, 'BTV', 'Burlington international', 'Burlington', 'Usa'),
(975, 'BUF', 'Buffalo niagara international', 'Buffalo', 'Usa'),
(976, 'BUR', 'Burbank glendale pasadena', 'Burbank', 'Usa'),
(977, 'BWI', 'Baltimore washington international', 'Baltimore', 'Usa'),
(978, 'BYH', 'Arkansas international', 'Blytheville', 'Usa'),
(979, 'BYS', 'Bicycle lake aaf', 'Fort irwin', 'Usa'),
(980, 'CAE', 'Columbia metropolitan', 'Colombia', 'Usa'),
(981, 'CAR', 'Caribou muni', 'Caribou', 'Usa'),
(982, 'CBM', 'Columbus afb', 'Colombus', 'Usa'),
(983, 'CDC', 'Cedar city rgnl', 'Cedar city', 'Usa'),
(984, 'CDS', 'Childress muni', 'Childress', 'Usa'),
(985, 'CEF', 'Westover arb metropolitan', 'Chicopee falls', 'Usa'),
(986, 'CEW', 'Bob sikes', 'Crestview', 'Usa'),
(987, 'CFD', 'Coulter fld', 'Bryan', 'Usa'),
(988, 'CHA', 'Lovell fld', 'Chattanooga', 'Usa'),
(989, 'CHS', 'Charleston afb international', 'Charleston', 'Usa'),
(990, 'CIC', 'Chico muni', 'Chico', 'Usa');
INSERT INTO `aeropuerto` (`id`, `iata`, `nombre`, `ciudad`, `pais`) VALUES
(991, 'CLE', 'Cleveland hopkins international', 'Cleveland', 'Usa'),
(992, 'CLL', 'Easterwood fld', 'College station', 'Usa'),
(993, 'CLT', 'Charlotte douglas international', 'Charlotte', 'Usa'),
(994, 'CMH', 'Port columbus international', 'Columbus', 'Usa'),
(995, 'CNM', 'Cavern city air terminal', 'Carlsbad', 'Usa'),
(996, 'CNW', 'Tstc waco', 'Waco', 'Usa'),
(997, 'COF', 'Patrick afb', 'Coco beach', 'Usa'),
(998, 'COS', 'City of colorado springs muni', 'Colorado springs', 'Usa'),
(999, 'COT', 'Cotulla la salle co', 'Cotulla', 'Usa'),
(1000, 'COU', 'Columbia rgnl', 'Columbia', 'Usa'),
(1001, 'CPR', 'Natrona co international', 'Casper', 'Usa'),
(1002, 'CRP', 'Corpus christi international', 'Corpus christi', 'Usa'),
(1003, 'CTB', 'Cut bank muni', 'Cutbank', 'Usa'),
(1004, 'CVG', 'Cincinnati northern kentucky international', 'Cincinnati', 'Usa'),
(1005, 'CVS', 'Cannon afb', 'Clovis', 'Usa'),
(1006, 'CXL', 'Calexico international', 'Calexico', 'Usa'),
(1007, 'CXO', 'Montgomery co', 'Conroe', 'Usa'),
(1008, 'CYS', 'Cheyenne', 'Cheyenne', 'Usa'),
(1009, 'DAL', 'Dallas love fld', 'Dallas', 'Usa'),
(1010, 'DAY', 'James m cox dayton international', 'Dayton', 'Usa'),
(1011, 'DCA', 'Ronald reagan washington national', 'Washington', 'Usa'),
(1012, 'DEN', 'Denver international', 'Denver', 'Usa'),
(1013, 'DET', 'Detroit city', 'Detroit', 'Usa'),
(1014, 'DFW', 'Dallas fort worth international', 'Dallas-fort worth', 'Usa'),
(1015, 'DHN', 'Dothan rgnl', 'Dothan', 'Usa'),
(1016, 'DHT', 'Dalhart muni', 'Dalhart', 'Usa'),
(1017, 'DLF', 'Laughlin afb', 'Del rio', 'Usa'),
(1018, 'DLH', 'Duluth international', 'Duluth', 'Usa'),
(1019, 'DMA', 'Davis monthan afb', 'Tucson', 'Usa'),
(1020, 'DOV', 'Dover afb', 'Dover', 'Usa'),
(1021, 'DPA', 'Du page', 'West chicago', 'Usa'),
(1022, 'DRI', 'Beauregard parish', 'Deridder', 'Usa'),
(1023, 'DRO', 'Durango la plata co', 'Durango', 'Usa'),
(1024, 'DRT', 'Del rio international', 'Del rio', 'Usa'),
(1025, 'DSM', 'Des moines international', 'Des moines', 'Usa'),
(1026, 'DTW', 'Detroit metro wayne co', 'Detroit', 'Usa'),
(1027, 'DUG', 'Bisbee douglas international', 'Douglas', 'Usa'),
(1028, 'DYS', 'Dyess afb', 'Abilene', 'Usa'),
(1029, 'ECG', 'Elizabeth city cgas rgnl', 'Elizabeth city', 'Usa'),
(1030, 'EDW', 'Edwards afb', 'Edwards afb', 'Usa'),
(1031, 'EFD', 'Ellington fld', 'Houston', 'Usa'),
(1032, 'EGP', 'Eagle pass muni', 'Eagle pass', 'Usa'),
(1033, 'EKN', 'Elkins randolph co jennings randolph', 'Elkins', 'Usa'),
(1034, 'ELD', 'South arkansas rgnl at goodwin fld', 'El dorado', 'Usa'),
(1035, 'ELP', 'El paso international', 'El paso', 'Usa'),
(1036, 'END', 'Vance afb', 'Enid', 'Usa'),
(1037, 'ENV', 'Wendover', 'Wendover', 'Usa'),
(1038, 'ESF', 'Esler rgnl', 'Alexandria', 'Usa'),
(1039, 'EWN', 'Craven co rgnl', 'New bern', 'Usa'),
(1040, 'EWR', 'Newark liberty international', 'Newark', 'Usa'),
(1041, 'EYW', 'Key west international', 'Key west', 'Usa'),
(1042, 'FAF', 'Felker aaf', 'Fort eustis', 'Usa'),
(1043, 'FAT', 'Fresno yosemite international', 'Fresno', 'Usa'),
(1044, 'FCS', 'Butts aaf', 'Fort carson', 'Usa'),
(1045, 'FFO', 'Wright patterson afb', 'Dayton', 'Usa'),
(1046, 'FHU', 'Sierra vista muni libby aaf', 'Fort huachuca', 'Usa'),
(1047, 'FLL', 'Fort lauderdale hollywood international', 'Fort lauderdale', 'Usa'),
(1048, 'FLO', 'Florence rgnl', 'Florence', 'Usa'),
(1049, 'FLV', 'Sherman aaf', 'Fort leavenworth', 'Usa'),
(1050, 'FMH', 'Otis angb', 'Falmouth', 'Usa'),
(1051, 'FMN', 'Four corners rgnl', 'Farmington', 'Usa'),
(1052, 'FMY', 'Page fld', 'Fort myers', 'Usa'),
(1053, 'FOD', 'Fort dodge rgnl', 'Fort dodge', 'Usa'),
(1054, 'FOE', 'Forbes fld', 'Topeka', 'Usa'),
(1055, 'FOK', 'The francis s gabreski', 'West hampton beach', 'Usa'),
(1056, 'FRI', 'Marshall aaf', 'Fort riley', 'Usa'),
(1057, 'FSI', 'Henry post aaf', 'Fort sill', 'Usa'),
(1058, 'FSM', 'Fort smith rgnl', 'Fort smith', 'Usa'),
(1059, 'FTK', 'Godman aaf', 'Fort knox', 'Usa'),
(1060, 'FTW', 'Fort worth meacham international', 'Fort worth', 'Usa'),
(1061, 'FXE', 'Fort lauderdale executive', 'Fort lauderdale', 'Usa'),
(1062, 'FYV', 'Drake fld', 'Fayetteville', 'Usa'),
(1063, 'GAG', 'Gage', 'Gage', 'Usa'),
(1064, 'GCK', 'Garden city rgnl', 'Garden city', 'Usa'),
(1065, 'GEG', 'Spokane international', 'Spokane', 'Usa'),
(1066, 'GFK', 'Grand forks international', 'Grand forks', 'Usa'),
(1067, 'GGG', 'East texas rgnl', 'Longview', 'Usa'),
(1068, 'GLS', 'Scholes international at galveston', 'Galveston', 'Usa'),
(1069, 'GNT', 'Grants milan muni', 'Grants', 'Usa'),
(1070, 'GNV', 'Gainesville rgnl', 'Gainesville', 'Usa'),
(1071, 'GRB', 'Austin straubel international', 'Green bay', 'Usa'),
(1072, 'GRF', 'Gray aaf', 'Fort lewis', 'Usa'),
(1073, 'GRK', 'Robert gray aaf', 'Killeen', 'Usa'),
(1074, 'GRR', 'Gerald r ford international', 'Grand rapids', 'Usa'),
(1075, 'GSB', 'Seymour johnson afb', 'Goldsboro', 'Usa'),
(1076, 'GTB', 'Wheeler sack aaf', 'Fort drum', 'Usa'),
(1077, 'GTF', 'Great falls international', 'Great falls', 'Usa'),
(1078, 'GUS', 'Grissom arb', 'Peru', 'Usa'),
(1079, 'GVT', 'Majors', 'Greenvile', 'Usa'),
(1080, 'GVW', 'Richards gebaur memorial', 'Grandview', 'Usa'),
(1081, 'GWO', 'Greenwood leflore', 'Greenwood', 'Usa'),
(1082, 'HBR', 'Hobart muni', 'Hobart', 'Usa'),
(1083, 'HFD', 'Hartford brainard', 'Hartford', 'Usa'),
(1084, 'HHR', 'Jack northrop fld hawthorne muni', 'Hawthorne', 'Usa'),
(1085, 'HIB', 'Chisholm hibbing', 'Hibbing', 'Usa'),
(1086, 'HIF', 'Hill afb', 'Ogden', 'Usa'),
(1087, 'HKY', 'Hickory rgnl', 'Hickory', 'Usa'),
(1088, 'HLN', 'Helena rgnl', 'Helena', 'Usa'),
(1089, 'HLR', 'Hood aaf', 'Fort hood', 'Usa'),
(1090, 'HMN', 'Holloman afb', 'Alamogordo', 'Usa'),
(1091, 'HOB', 'Lea co rgnl', 'Hobbs', 'Usa'),
(1092, 'HON', 'Huron rgnl', 'Huron', 'Usa'),
(1093, 'HOP', 'Campbell aaf', 'Hopkinsville', 'Usa'),
(1094, 'HOU', 'William p hobby', 'Houston', 'Usa'),
(1095, 'HPN', 'Westchester co', 'White plains', 'Usa'),
(1096, 'HRL', 'Valley international', 'Harlingen', 'Usa'),
(1097, 'HRO', 'Boone co', 'Harrison', 'Usa'),
(1098, 'HRT', 'Hurlburt fld', 'Mary esther', 'Usa'),
(1099, 'HST', 'Homestead arb', 'Homestead', 'Usa'),
(1100, 'HTL', 'Roscommon co', 'Houghton lake', 'Usa'),
(1101, 'HUA', 'Redstone aaf', 'Redstone', 'Usa'),
(1102, 'HUF', 'Terre haute international hulman fld', 'Terre haute', 'Usa'),
(1103, 'HUL', 'Houlton international', 'Houlton', 'Usa'),
(1104, 'HVR', 'Havre city co', 'Havre', 'Usa'),
(1105, 'HWO', 'North perry', 'Hollywood', 'Usa'),
(1106, 'IAB', 'Mc connell afb', 'Wichita', 'Usa'),
(1107, 'IAD', 'Washington dulles international', 'Washington', 'Usa'),
(1108, 'IAG', 'Niagara falls international', 'Niagara falls', 'Usa'),
(1109, 'IAH', 'George bush intcntl houston', 'Houston', 'Usa'),
(1110, 'ICT', 'Wichita mid continent', 'Wichita', 'Usa'),
(1111, 'IKK', 'Greater kankakee', 'Kankakee', 'Usa'),
(1112, 'ABQ', 'Albuquerque international sunport', 'Kirtland a.f.b.', 'Usa'),
(1113, 'ILG', 'New castle co', 'Wilmington', 'Usa'),
(1114, 'ILM', 'Wilmington international', 'Wilmington', 'Usa'),
(1115, 'IND', 'Indianapolis international', 'Indianapolis', 'Usa'),
(1116, 'INK', 'Winkler co', 'Wink', 'Usa'),
(1117, 'INL', 'Falls international', 'International falls', 'Usa'),
(1118, 'INS', 'Indian springs af aux', 'Indian springs', 'Usa'),
(1119, 'INT', 'Smith reynolds', 'Winston-salem', 'Usa'),
(1120, 'IPL', 'Imperial co', 'Imperial', 'Usa'),
(1121, 'IPT', 'Williamsport rgnl', 'Williamsport', 'Usa'),
(1122, 'ISN', 'Sloulin fld international', 'Williston', 'Usa'),
(1123, 'ISP', 'Long island mac arthur', 'Islip', 'Usa'),
(1124, 'JAN', 'Jackson international', 'Jackson', 'Usa'),
(1125, 'JAX', 'Jacksonville international', 'Jacksonville', 'Usa'),
(1126, 'JBR', 'Jonesboro muni', 'Jonesboro', 'Usa'),
(1127, 'JFK', 'John f kennedy international', 'New york', 'Usa'),
(1128, 'LAN', 'Capital city', 'Lansing', 'Usa'),
(1129, 'LAS', 'Mc carran international', 'Las vegas', 'Usa'),
(1130, 'LAX', 'Los angeles international', 'Los angeles', 'Usa'),
(1131, 'LBB', 'Lubbock international', 'Lubbock', 'Usa'),
(1132, 'LCH', 'Lake charles rgnl', 'Lake charles', 'Usa'),
(1133, 'LCK', 'Rickenbacker international', 'Columbus', 'Usa'),
(1134, 'LFI', 'Langley afb', 'Hampton', 'Usa'),
(1135, 'LFK', 'Angelina co', 'Lufkin', 'Usa'),
(1136, 'LFT', 'Lafayette rgnl', 'Lafayette', 'Usa'),
(1137, 'LGA', 'La guardia', 'New york', 'Usa'),
(1138, 'LGB', 'Long beach', 'Long beach', 'Usa'),
(1139, 'LHW', 'Wright aaf', 'Wright', 'Usa'),
(1140, 'LIT', 'Adams fld', 'Little rock', 'Usa'),
(1141, 'LNA', 'Palm beach co park', 'West palm beach', 'Usa'),
(1142, 'LNK', 'Lincoln muni', 'Lincoln', 'Usa'),
(1143, 'LOU', 'Bowman fld', 'Louisville', 'Usa'),
(1144, 'LRD', 'Laredo international', 'Laredo', 'Usa'),
(1145, 'LRF', 'Little rock afb', 'Jacksonville', 'Usa'),
(1146, 'LSF', 'Lawson aaf', 'Fort benning', 'Usa'),
(1147, 'LSV', 'Nellis afb', 'Las vegas', 'Usa'),
(1148, 'LTS', 'Altus afb', 'Altus', 'Usa'),
(1149, 'LUF', 'Luke afb', 'Phoenix', 'Usa'),
(1150, 'LUK', 'Cincinnati muni lunken fld', 'Cincinnati', 'Usa'),
(1151, 'MAF', 'Midland international', 'Midland', 'Usa'),
(1152, 'MCC', 'Mc clellan afld', 'Sacramento', 'Usa'),
(1153, 'MCF', 'Macdill afb', 'Tampa', 'Usa'),
(1154, 'MCI', 'Kansas city international', 'Kansas city', 'Usa'),
(1155, 'MCN', 'Middle georgia rgnl', 'Macon', 'Usa'),
(1156, 'MCO', 'Orlando international', 'Orlando', 'Usa'),
(1157, 'MDT', 'Harrisburg international', 'Harrisburg', 'Usa'),
(1158, 'MDW', 'Chicago midway international', 'Chicago', 'Usa'),
(1159, 'MEM', 'Memphis international', 'Memphis', 'Usa'),
(1160, 'MER', 'Castle', 'Merced', 'Usa'),
(1161, 'MFE', 'Mc allen miller international', 'Mcallen', 'Usa'),
(1162, 'MGE', 'Dobbins arb', 'Marietta', 'Usa'),
(1163, 'MHR', 'Sacramento mather', 'Sacramento', 'Usa'),
(1164, 'MIA', 'Miami international', 'Miami', 'Usa'),
(1165, 'MIB', 'Minot afb', 'Minot', 'Usa'),
(1166, 'MIV', 'Millville muni', 'Millville', 'Usa'),
(1167, 'MKE', 'General mitchell international', 'Milwaukee', 'Usa'),
(1168, 'MKL', 'Mc kellar sipes rgnl', 'Jackson', 'Usa'),
(1169, 'MKO', 'Davis fld', 'Muskogee', 'Usa'),
(1170, 'MLB', 'Melbourne international', 'Melbourne', 'Usa'),
(1171, 'MLC', 'Mc alester rgnl', 'Mcalester', 'Usa'),
(1172, 'MLT', 'Millinocket muni', 'Millinocket', 'Usa'),
(1173, 'MLU', 'Monroe rgnl', 'Monroe', 'Usa'),
(1174, 'MMV', 'Mc minnville muni', 'Mackminnville', 'Usa'),
(1175, 'MNM', 'Menominee marinette twin co', 'Macon', 'Usa'),
(1176, 'MOB', 'Mobile rgnl', 'Mobile', 'Usa'),
(1177, 'MOD', 'Modesto city co harry sham', 'Modesto', 'Usa'),
(1178, 'MOT', 'Minot international', 'Minot', 'Usa'),
(1179, 'MPV', 'Edward f knapp state', 'Montpelier', 'Usa'),
(1180, 'MQT', 'Sawyer international', 'Marquette', 'Usa'),
(1181, 'MSN', 'Dane co rgnl truax fld', 'Madison', 'Usa'),
(1182, 'MSP', 'Minneapolis st paul international', 'Minneapolis', 'Usa'),
(1183, 'MSS', 'Massena international richards fld', 'Massena', 'Usa'),
(1184, 'MSY', 'Louis armstrong new orleans international', 'New orleans', 'Usa'),
(1185, 'MTC', 'Selfridge angb', 'Mount clemens', 'Usa'),
(1186, 'MUI', 'Muir aaf', 'Muir', 'Usa'),
(1187, 'MUO', 'Mountain home afb', 'Mountain home', 'Usa'),
(1188, 'MWH', 'Grant co international', 'Grant county airport', 'Usa'),
(1189, 'MWL', 'Mineral wells', 'Mineral wells', 'Usa'),
(1190, 'MXF', 'Maxwell afb', 'Montgomery', 'Usa'),
(1191, 'MYR', 'Myrtle beach international', 'Myrtle beach', 'Usa'),
(1192, 'NBC', 'Beaufort mcas', 'Beaufort', 'Usa'),
(1193, 'NBG', 'New orleans nas jrb', 'New orleans', 'Usa'),
(1194, 'NCA', 'New river mcas', 'Jacksonville', 'Usa'),
(1195, 'NEL', 'Lakehurst naes', 'Lakehurst', 'Usa'),
(1196, 'NFL', 'Fallon nas', 'Fallon', 'Usa'),
(1197, 'NGU', 'Norfolk ns', 'Norfolk', 'Usa'),
(1198, 'NHK', 'Patuxent river nas', 'Patuxent river', 'Usa'),
(1199, 'NID', 'China lake naws', 'China', 'Usa'),
(1200, 'NIP', 'Jacksonville nas', 'Jacksonville', 'Usa'),
(1201, 'NJK', 'El centro naf', 'El centro', 'Usa'),
(1202, 'NKT', 'Cherry point mcas', 'Cherry point', 'Usa'),
(1203, 'NKX', 'Miramar mcas', 'Miramar', 'Usa'),
(1204, 'NLC', 'Lemoore nas', 'Lemoore', 'Usa'),
(1205, 'NMM', 'Meridian nas', 'Meridian', 'Usa'),
(1206, 'NOW', 'Port angeles cgas', 'Port angeles', 'Usa'),
(1207, 'NPA', 'Pensacola nas', 'Pensacola', 'Usa'),
(1208, 'NQA', 'Millington muni', 'Millington', 'Usa'),
(1209, 'NQI', 'Kingsville nas', 'Kingsville', 'Usa'),
(1210, 'NQX', 'Key west nas', 'Key west', 'Usa'),
(1211, 'NSE', 'Whiting fld nas north', 'Milton', 'Usa'),
(1212, 'NTD', 'Point mugu nas', 'Point mugu', 'Usa'),
(1213, 'NTK', 'Tustin mcaf', 'Tustin', 'Usa'),
(1214, 'NTU', 'Oceana nas', 'Oceana', 'Usa'),
(1215, 'NUQ', 'Moffett federal afld', 'Mountain view', 'Usa'),
(1216, 'NUW', 'Whidbey island nas', 'Whidbey island', 'Usa'),
(1217, 'NXP', 'Twentynine palms eaf', 'Twenty nine palms', 'Usa'),
(1218, 'NXX', 'Willow grove nas jrb', 'Willow grove', 'Usa'),
(1219, 'NYG', 'Quantico mcaf', 'Quantico', 'Usa'),
(1220, 'NZC', 'Cecil fld', 'Jacksonville', 'Usa'),
(1221, 'NZY', 'North island nas', 'San diego', 'Usa'),
(1222, 'OAK', 'Metropolitan oakland international', 'Oakland', 'Usa'),
(1223, 'OFF', 'Offutt afb', 'Omaha', 'Usa'),
(1224, 'OGS', 'Ogdensburg international', 'Ogdensburg', 'Usa'),
(1225, 'OKC', 'Will rogers world', 'Oklahoma city', 'Usa'),
(1226, 'OLS', 'Nogales international', 'Nogales', 'Usa'),
(1227, 'OMA', 'Eppley afld', 'Omaha', 'Usa'),
(1228, 'ONT', 'Ontario international', 'Ontario', 'Usa'),
(1229, 'OPF', 'Opa locka', 'Miami', 'Usa'),
(1230, 'ORD', 'Chicago ohare international', 'Chicago', 'Usa'),
(1231, 'ORF', 'Norfolk international', 'Norfolk', 'Usa'),
(1232, 'ORL', 'Executive', 'Orlando', 'Usa'),
(1233, 'PAE', 'Snohomish co', 'Everett', 'Usa'),
(1234, 'PAM', 'Tyndall afb', 'Panama city', 'Usa'),
(1235, 'PBF', 'Grider fld', 'Pine bluff', 'Usa'),
(1236, 'PBG', 'Plattsburgh international', 'Plattsburgh', 'Usa'),
(1237, 'PBI', 'Palm beach international', 'West palm beach', 'Usa'),
(1238, 'PDX', 'Portland international', 'Portland', 'Usa'),
(1239, 'PHF', 'Newport news williamsburg international', 'Newport news', 'Usa'),
(1240, 'PHL', 'Philadelphia international', 'Philadelphia', 'Usa'),
(1241, 'PHN', 'St clair co international', 'Port huron', 'Usa'),
(1242, 'PHX', 'Phoenix sky harbor international', 'Phoenix', 'Usa'),
(1243, 'PIE', 'St petersburg clearwater international', 'St. petersburg', 'Usa'),
(1244, 'PIT', 'Pittsburgh international', 'Pittsburgh (pennsylva)', 'Usa'),
(1245, 'PMD', 'Palmdale prod flt test instl af plt 42', 'Palmdale', 'Usa'),
(1246, 'PNC', 'Ponca city muni', 'Ponca city', 'Usa'),
(1247, 'PNE', 'Northeast philadelphia', 'Philadelphia', 'Usa'),
(1248, 'PNM', 'Princeton muni', 'Princeton', 'Usa'),
(1249, 'PNS', 'Pensacola rgnl', 'Pensacola', 'Usa'),
(1250, 'POB', 'Pope afb', 'Fayetteville', 'Usa'),
(1251, 'POE', 'Polk aaf', 'Fort polk', 'Usa'),
(1252, 'PQI', 'Northern maine rgnl at presque isle', 'Presque isle', 'Usa'),
(1253, 'PRC', 'Ernest a love fld', 'Prescott', 'Usa'),
(1254, 'PSP', 'Palm springs international', 'Palm springs', 'Usa'),
(1255, 'PSX', 'Palacios muni', 'Palacios', 'Usa'),
(1256, 'PUB', 'Pueblo mem', 'Pueblo memorial', 'Usa'),
(1257, 'PVD', 'Theodore francis green state', 'Providence', 'Usa'),
(1258, 'PWM', 'Portland international jetport', 'Portland', 'Usa'),
(1259, 'RAL', 'Riverside muni', 'Riverside', 'Usa'),
(1260, 'RBM', 'Robinson aaf', 'Robinson', 'Usa'),
(1261, 'RCA', 'Ellsworth afb', 'Rapid city', 'Usa'),
(1262, 'RDR', 'Grand forks afb', 'Red river', 'Usa'),
(1263, 'RDU', 'Raleigh durham international', 'Raleigh-durham', 'Usa'),
(1264, 'RIC', 'Richmond international', 'Richmond', 'Usa'),
(1265, 'RIU', 'Rancho murieta', 'Rancho murieta', 'Usa'),
(1266, 'RIV', 'March arb', 'Riverside', 'Usa'),
(1267, 'RME', 'Griffiss airpark', 'Rome', 'Usa'),
(1268, 'RND', 'Randolph afb', 'San antonio', 'Usa'),
(1269, 'RNO', 'Reno tahoe international', 'Reno', 'Usa'),
(1270, 'ROC', 'Greater rochester international', 'Rochester', 'Usa'),
(1271, 'ROW', 'Roswell industrial air center', 'Roswell', 'Usa'),
(1272, 'RSW', 'Southwest florida international', 'Fort myers', 'Usa'),
(1273, 'SAC', 'Sacramento executive', 'Sacramento', 'Usa'),
(1274, 'SAF', 'Santa fe muni', 'Santa fe', 'Usa'),
(1275, 'SAN', 'San diego international lindbergh fld', 'San diego', 'Usa'),
(1276, 'SAT', 'San antonio international', 'San antonio', 'Usa'),
(1277, 'SAV', 'Savannah hilton head international', 'Savannah', 'Usa'),
(1278, 'SBO', 'Emanuel co', 'Santa barbara', 'Usa'),
(1279, 'SBY', 'Salisbury ocean city wicomico rgnl', 'Salisbury', 'Usa'),
(1280, 'SCK', 'Stockton metropolitan', 'Stockton', 'Usa'),
(1281, 'SEA', 'Seattle tacoma international', 'Seattle', 'Usa'),
(1282, 'SEM', 'Craig fld', 'Selma', 'Usa'),
(1283, 'SFF', 'Felts fld', 'Spokane', 'Usa'),
(1284, 'SFO', 'San francisco international', 'San francisco', 'Usa'),
(1285, 'SFZ', 'North central state', 'Smithfield', 'Usa'),
(1286, 'SHV', 'Shreveport rgnl', 'Shreveport', 'Usa'),
(1287, 'SJC', 'Norman y mineta san jose international', 'San jose', 'Usa'),
(1288, 'SJT', 'San angelo rgnl mathis fld', 'San angelo', 'Usa'),
(1289, 'SKA', 'Fairchild afb', 'Spokane', 'Usa'),
(1290, 'SKF', 'Lackland afb kelly fld annex', 'San antonio', 'Usa'),
(1291, 'SKY', 'Griffing sandusky', 'Sandusky', 'Usa'),
(1292, 'SLC', 'Salt lake city international', 'Salt lake city', 'Usa'),
(1293, 'SMF', 'Sacramento international', 'Sacramento', 'Usa'),
(1294, 'SNA', 'John wayne arpt orange co', 'Santa ana', 'Usa'),
(1295, 'SPB', 'Scappoose industrial airpark', 'San luis', 'Usa'),
(1296, 'SPG', 'Albert whitted', 'St. petersburg', 'Usa'),
(1297, 'SPS', 'Sheppard afb wichita falls muni', 'Wichita falls', 'Usa'),
(1298, 'SSC', 'Shaw afb', 'Sumter', 'Usa'),
(1299, 'STL', 'Lambert st louis international', 'St. louis', 'Usa'),
(1300, 'SUU', 'Travis afb', 'Fairfield', 'Usa'),
(1301, 'SUX', 'Sioux gateway col bud day fld', 'Sioux city', 'Usa'),
(1302, 'SVN', 'Hunter aaf', 'Hunter aaf', 'Usa'),
(1303, 'SWF', 'Stewart international', 'Newburgh', 'Usa'),
(1304, 'SYR', 'Syracuse hancock international', 'Syracuse', 'Usa'),
(1305, 'SZL', 'Whiteman afb', 'Knobnoster', 'Usa'),
(1306, 'TBN', 'Waynesville rgnl arpt at forney fld', 'Fort leonardwood', 'Usa'),
(1307, 'TCC', 'Tucumcari muni', 'Tucumcari', 'Usa'),
(1308, 'TCM', 'Mc chord afb', 'Tacoma', 'Usa'),
(1309, 'TCS', 'Truth or consequences muni', 'Truth or consequences', 'Usa'),
(1310, 'TEB', 'Teterboro', 'Teterboro', 'Usa'),
(1311, 'TIK', 'Tinker afb', 'Oklahoma city', 'Usa'),
(1312, 'TLH', 'Tallahassee rgnl', 'Tallahassee', 'Usa'),
(1313, 'TMB', 'Kendall tamiami executive', 'Kendall-tamiami', 'Usa'),
(1314, 'TNT', 'Dade collier training and transition', 'Miami', 'Usa'),
(1315, 'TPA', 'Tampa international', 'Tampa', 'Usa'),
(1316, 'TTN', 'Trenton mercer', 'Trenton', 'Usa'),
(1317, 'TUL', 'Tulsa international', 'Tulsa', 'Usa'),
(1318, 'TUS', 'Tucson international', 'Tucson', 'Usa'),
(1319, 'TXK', 'Texarkana rgnl webb fld', 'Texarkana', 'Usa'),
(1320, 'TYR', 'Tyler pounds rgnl', 'Tyler', 'Usa'),
(1321, 'TYS', 'Mc ghee tyson', 'Knoxville', 'Usa'),
(1322, 'UGN', 'Waukegan rgnl', 'Chicago', 'Usa'),
(1323, 'VAD', 'Moody afb', 'Valdosta', 'Usa'),
(1324, 'VBG', 'Vandenberg afb', 'Lompoc', 'Usa'),
(1325, 'VCV', 'Southern california logistics', 'Victorville', 'Usa'),
(1326, 'VPS', 'Eglin afb', 'Valparaiso', 'Usa (florida'),
(1327, 'VRB', 'Vero beach muni', 'Vero beach', 'Usa'),
(1328, 'WAL', 'Wallops flight facility', 'Wallops island', 'Usa'),
(1329, 'WRB', 'Robins afb', 'Macon', 'Usa'),
(1330, 'WRI', 'Mc guire afb', 'Wrightstown', 'Usa'),
(1331, 'WSD', 'Condron aaf', 'White sands', 'Usa'),
(1332, 'WWD', 'Cape may co', 'Wildwood', 'Usa'),
(1333, 'YIP', 'Willow run', 'Detroit', 'Usa'),
(1334, 'YNG', 'Youngstown warren rgnl', 'Youngstown', 'Usa'),
(1335, 'YUM', 'Yuma mcas yuma international', 'Yuma', 'Usa'),
(1336, 'ZUN', 'Black rock', 'Zuni pueblo', 'Usa'),
(1337, 'TIA', 'Tirana rinas', 'Tirana', 'Albania'),
(1338, 'BOJ', 'Burgas', 'Bourgas', 'Bulgaria'),
(1339, 'GOZ', 'Gorna oryahovitsa', 'Gorna orechovica', 'Bulgaria'),
(1340, 'PDV', 'Plovdiv', 'Plovdiv', 'Bulgaria'),
(1341, 'SOF', 'Sofia', 'Sofia', 'Bulgaria'),
(1342, 'VAR', 'Varna', 'Varna', 'Bulgaria'),
(1343, 'LCA', 'Larnaca', 'Larnaca', 'Cyprus'),
(1344, 'PFO', 'Paphos international', 'Paphos', 'Cyprus'),
(1345, 'AKT', 'Akrotiri', 'Akrotiri', 'Cyprus'),
(1346, 'DBV', 'Dubrovnik', 'Dubrovnik', 'Croatia'),
(1347, 'OSI', 'Osijek', 'Osijek', 'Croatia'),
(1348, 'PUY', 'Pula', 'Pula', 'Croatia'),
(1349, 'RJK', 'Rijeka', 'Rijeka', 'Croatia'),
(1350, 'SPU', 'Split', 'Split', 'Croatia'),
(1351, 'ZAG', 'Zagreb', 'Zagreb', 'Croatia'),
(1352, 'ZAD', 'Zadar', 'Zadar', 'Croatia'),
(1353, 'ALC', 'Alicante', 'Alicante', 'Spain'),
(1354, 'LEI', 'Almeria', 'Almeria', 'Spain'),
(1355, 'OVD', 'Asturias', 'Aviles', 'Spain'),
(1356, 'ODB', 'Cordoba', 'Cordoba', 'Spain'),
(1357, 'BIO', 'Bilbao', 'Bilbao', 'Spain'),
(1358, 'BCN', 'Barcelona', 'Barcelona', 'Spain'),
(1359, 'BJZ', 'Talavera la real', 'Badajoz', 'Spain'),
(1360, 'LCG', 'A coruna', 'La coruna', 'Spain'),
(1361, 'GRX', 'Armilla', 'Granada', 'Spain'),
(1362, 'GRO', 'Girona', 'Gerona', 'Spain'),
(1363, 'GRX', 'Granada', 'Granada', 'Spain'),
(1364, 'IBZ', 'Ibiza', 'Ibiza', 'Spain'),
(1365, 'XRY', 'Jerez', 'Jerez', 'Spain'),
(1366, 'MJV', 'Murcia san javier', 'Murcia', 'Spain'),
(1367, 'MAD', 'Barajas', 'Madrid', 'Spain'),
(1368, 'AGP', 'Malaga', 'Malaga', 'Spain'),
(1369, 'MAH', 'Menorca', 'Menorca', 'Spain'),
(1370, 'OZP', 'Moron ab', 'Sevilla', 'Spain'),
(1371, 'PMI', 'Palma de mallorca', 'Palma de mallorca', 'Spain'),
(1372, 'PNA', 'Pamplona', 'Pamplona', 'Spain'),
(1373, 'REU', 'Reus', 'Reus', 'Spain'),
(1374, 'SLM', 'Salamanca', 'Salamanca', 'Spain'),
(1375, 'EAS', 'San sebastian', 'San sebastian', 'Spain'),
(1376, 'SCQ', 'Santiago', 'Santiago', 'Spain'),
(1377, 'LEU', 'Seo de urgel', 'Seo de urgel', 'Spain'),
(1378, 'TOJ', 'Torrejon', 'Madrid', 'Spain'),
(1379, 'VLC', 'Valencia', 'Valencia', 'Spain'),
(1380, 'VLL', 'Valladolid', 'Valladolid', 'Spain'),
(1381, 'VIT', 'Vitoria', 'Vitoria', 'Spain'),
(1382, 'VGO', 'Vigo', 'Vigo', 'Spain'),
(1383, 'SDR', 'Santander', 'Santander', 'Spain'),
(1384, 'ZAZ', 'Zaragoza ab', 'Zaragoza', 'Spain'),
(1385, 'SVQ', 'Sevilla', 'Sevilla', 'Spain'),
(1386, 'CQF', 'Calais dunkerque', 'Calais', 'France'),
(1387, 'LTQ', 'Le touquet paris plage', 'Le tourquet', 'France'),
(1388, 'AGF', 'La garenne', 'Agen', 'France'),
(1389, 'BOD', 'Merignac', 'Bordeaux', 'France'),
(1390, 'EGC', 'Roumaniere', 'Bergerac', 'France'),
(1391, 'CNG', 'Chateaubernard', 'Cognac', 'France'),
(1392, 'PIS', 'Biard', 'Poitiers', 'France'),
(1393, 'MCU', 'Montlucon gueret', 'Montlucon-gueret', 'France'),
(1394, 'LIG', 'Bellegarde', 'Limoges', 'France'),
(1395, 'NIT', 'Souche', 'Niort', 'France'),
(1396, 'TLS', 'Blagnac', 'Toulouse', 'France'),
(1397, 'PUF', 'Pau pyrenees', 'Pau', 'France'),
(1398, 'LRH', 'Lherm', 'La rochelle', 'France'),
(1399, 'LDE', 'Lourdes', 'Tarbes', 'France'),
(1400, 'ANG', 'Brie champniers', 'Angouleme', 'France'),
(1401, 'BVE', 'La roche', 'Brive', 'France'),
(1402, 'PGX', 'Bassillac', 'Perigueux', 'France'),
(1403, 'BIQ', 'Anglet', 'Biarritz-bayonne', 'France'),
(1404, 'XAC', 'La teste de buch', 'Arcachon', 'France'),
(1405, 'LBI', 'Le sequestre', 'Albi', 'France'),
(1406, 'DCM', 'Mazamet', 'Castres', 'France'),
(1407, 'RDZ', 'Marcillac', 'Rodez', 'France'),
(1408, 'RYN', 'Medis', 'Royan', 'France'),
(1409, 'RCO', 'St agnant', 'Rochefort', 'France'),
(1410, 'CMR', 'Houssen', 'Colmar', 'France'),
(1411, 'DLE', 'Tavaux', 'Dole', 'France'),
(1412, 'OBS', 'Vals lanas', 'Aubenas-vals-lanas', 'France'),
(1413, 'LPY', 'Loudes', 'Le puy', 'France'),
(1414, 'XBK', 'Ceyzeriat', 'Bourg', 'France'),
(1415, 'XVF', 'Tarare', 'Vilefrance', 'France'),
(1416, 'XMU', 'Montbeugny', 'Moulins', 'France'),
(1417, 'ETZ', 'Metz nancy lorraine', 'Metz', 'France'),
(1418, 'BIA', 'Poretta', 'Bastia', 'Corse isl.'),
(1419, 'CLY', 'Saint catherine', 'Calvi', 'Corse isl.'),
(1420, 'FSC', 'Sud corse', 'Figari', 'Corse isl.'),
(1421, 'AJA', 'Campo dell oro', 'Ajaccio', 'Corse isl.'),
(1422, 'SOZ', 'Solenzara', 'Solenzara', 'Corse isl.'),
(1423, 'AUF', 'Branches', 'Auxerre', 'France'),
(1424, 'CMF', 'Aix les bains', 'Chambery', 'France'),
(1425, 'CFE', 'Auvergne', 'Clermont ferrand', 'France'),
(1426, 'BOU', 'Bourges', 'Bourges', 'France'),
(1427, 'XCD', 'Champforgeuil', 'Chalon', 'France'),
(1428, 'QNJ', 'Annemasse', 'Annemasse', 'France'),
(1429, 'LYS', 'Saint exupery', 'Lyon', 'France'),
(1430, 'QNX', 'Charnay', 'Macon', 'France'),
(1431, 'RNE', 'Renaison', 'Roanne', 'France'),
(1432, 'NCY', 'Meythet', 'Annecy', 'France'),
(1433, 'GNB', 'Saint geoirs', 'Grenoble', 'France'),
(1434, 'MCU', 'Domerat', 'Montlucon', 'France'),
(1435, 'VAF', 'Chabeuil', 'Valence', 'France'),
(1436, 'VHY', 'Charmeil', 'Vichy', 'France'),
(1437, 'AUR', 'Aurillac', 'Aurillac', 'France'),
(1438, 'CHR', 'Deols', 'Chateauroux', 'France'),
(1439, 'LYN', 'Bron', 'Lyon', 'France'),
(1440, 'QXB', 'Aix les milles', 'Aix-les-milles', 'France'),
(1441, 'CEQ', 'Mandelieu', 'Cannes', 'France'),
(1442, 'EBU', 'Boutheon', 'St.-etienne', 'France'),
(1443, 'CCF', 'Salvaza', 'Carcassonne', 'France'),
(1444, 'MRS', 'Provence', 'Marseille', 'France'),
(1445, 'NCE', 'Cote d azur', 'Nice', 'France'),
(1446, 'PGF', 'Rivesaltes', 'Perpignan', 'France'),
(1447, 'CTT', 'Le castellet', 'Le castellet', 'France'),
(1448, 'MPL', 'Mediterranee', 'Montpellier', 'France'),
(1449, 'BZR', 'Vias', 'Beziers', 'France'),
(1450, 'AVN', 'Caumont', 'Avignon', 'France'),
(1451, 'MEN', 'Brenoux', 'Mende', 'France'),
(1452, 'BVA', 'Tille', 'Beauvais', 'France'),
(1453, 'LEH', 'Octeville', 'Le havre', 'France'),
(1454, 'ORE', 'Bricy', 'Orleans', 'France'),
(1455, 'URO', 'Vallee de seine', 'Rouen', 'France'),
(1456, 'TUF', 'Val de loire', 'Tours', 'France'),
(1457, 'CET', 'Le pontreau', 'Cholet', 'France'),
(1458, 'LVA', 'Entrammes', 'Laval', 'France'),
(1459, 'LBG', 'Le bourget', 'Paris', 'France'),
(1460, 'CSF', 'Creil', 'Creil', 'France'),
(1461, 'CDG', 'Charles de gaulle', 'Paris', 'France'),
(1462, 'TNF', 'Toussus le noble', 'Toussous-le-noble', 'France'),
(1463, 'ORY', 'Orly', 'Paris', 'France'),
(1464, 'POX', 'Cormeilles en vexin', 'Pontoise', 'France'),
(1465, 'QYR', 'Barberey', 'Troyes', 'France'),
(1466, 'NVS', 'Fourchambault', 'Nevers', 'France'),
(1467, 'LIL', 'Lesquin', 'Lille', 'France'),
(1468, 'BES', 'Guipavas', 'Brest', 'France'),
(1469, 'CER', 'Maupertus', 'Cherbourg', 'France'),
(1470, 'DNR', 'Pleurtuit', 'Dinard', 'France'),
(1471, 'DOL', 'St gatien', 'Deauville', 'France'),
(1472, 'LRT', 'Lann bihoue', 'Lorient', 'France'),
(1473, 'EDM', 'Les ajoncs', 'La roche-sur-yon', 'France'),
(1474, 'CFR', 'Carpiquet', 'Caen', 'France'),
(1475, 'LME', 'Arnage', 'Le mans', 'France'),
(1476, 'RNS', 'St jacques', 'Rennes', 'France'),
(1477, 'LAI', 'Lannion', 'Lannion', 'France'),
(1478, 'UIP', 'Pluguffan', 'Quimper', 'France'),
(1479, 'NTE', 'Nantes atlantique', 'Nantes', 'France'),
(1480, 'SBK', 'Armor', 'St.-brieuc armor', 'France'),
(1481, 'MXN', 'Ploujean', 'Morlaix', 'France'),
(1482, 'VNE', 'Meucon', 'Vannes', 'France'),
(1483, 'SNR', 'Montoir', 'St.-nazaire', 'France'),
(1484, 'MLH', 'Bale mulhouse', 'Mulhouse', 'France'),
(1485, 'DIJ', 'Longvic', 'Dijon', 'France'),
(1486, 'MZM', 'Frescaty', 'Metz', 'France'),
(1487, 'EPL', 'Mirecourt', 'Epinal', 'France'),
(1488, 'ENC', 'Essey', 'Nancy', 'France'),
(1489, 'RHE', 'Champagne', 'Reims', 'France'),
(1490, 'SXB', 'Entzheim', 'Strassbourg', 'France'),
(1491, 'TLN', 'Hyeres', 'Hyeres', 'France'),
(1492, 'FNI', 'Garons', 'Nimes', 'France'),
(1493, 'FSP', 'St pierre', 'St.-pierre', 'St. pierre & miquelon'),
(1494, 'PYR', 'Andravida', 'Andravida', 'Greece'),
(1495, 'AGQ', 'Agrinion', 'Agrinion', 'Greece'),
(1496, 'AXD', 'Dimokritos', 'Alexandroupolis', 'Greece'),
(1497, 'HEW', 'Athinai', 'Athens', 'Greece'),
(1498, 'VOL', 'Nea anchialos', 'Nea anghialos', 'Greece'),
(1499, 'JKH', 'Chios', 'Chios', 'Greece'),
(1500, 'IOA', 'Ioannina', 'Ioannina', 'Greece'),
(1501, 'HER', 'Nikos kazantzakis', 'Heraklion', 'Greece'),
(1502, 'KSO', 'Aristotelis', 'Kastoria', 'Greece'),
(1503, 'KIT', 'Kithira', 'Kithira', 'Greece'),
(1504, 'EFL', 'Kefallinia', 'Keffallinia', 'Greece'),
(1505, 'KLX', 'Kalamata', 'Kalamata', 'Greece'),
(1506, 'KGS', 'Kos', 'Kos', 'Greece'),
(1507, 'AOK', 'Karpathos', 'Karpathos', 'Greece'),
(1508, 'CFU', 'Ioannis kapodistrias international', 'Kerkyra/corfu', 'Greece'),
(1509, 'KSJ', 'Kasos', 'Kasos', 'Greece'),
(1510, 'KVA', 'Megas alexandros international', 'Kavala', 'Greece'),
(1511, 'KZI', 'Filippos', 'Kozani', 'Greece'),
(1512, 'LRS', 'Leros', 'Leros', 'Greece'),
(1513, 'LXS', 'Limnos', 'Limnos', 'Greece'),
(1514, 'LRA', 'Larisa', 'Larissa', 'Greece'),
(1515, 'JMK', 'Mikonos', 'Mykonos', 'Greece'),
(1516, 'MJT', 'Mitilini', 'Mytilini', 'Greece'),
(1517, 'PVK', 'Aktio', 'Preveza', 'Greece'),
(1518, 'RHO', 'Diagoras', 'Rhodos', 'Greece'),
(1519, 'GPA', 'Araxos', 'Patras', 'Greece'),
(1520, 'CHQ', 'Souda', 'Chania', 'Greece'),
(1521, 'JSI', 'Skiathos', 'Skiathos', 'Greece'),
(1522, 'SMI', 'Samos', 'Samos', 'Greece'),
(1523, 'JTR', 'Santorini', 'Santorini', 'Greece'),
(1524, 'JSH', 'Sitia', 'Sitia', 'Greece'),
(1525, 'SKU', 'Skyros', 'Skiros', 'Greece'),
(1526, 'SKG', 'Makedonia', 'Thessaloniki', 'Greece'),
(1527, 'ZTH', 'Zakinthos dionysios solomos', 'Zakynthos', 'Greece'),
(1528, 'BUD', 'Ferihegy', 'Budapest', 'Hungary'),
(1529, 'DEB', 'Debrecen', 'Debrecen', 'Hungary'),
(1530, 'CRV', 'Crotone', 'Crotone', 'Italy'),
(1531, 'BRI', 'Palese macchie', 'Bari', 'Italy'),
(1532, 'FOG', 'Gino lisa', 'Foggia', 'Italy'),
(1533, 'TAR', 'Grottaglie', 'Grottaglie', 'Italy'),
(1534, 'LCC', 'Lecce', 'Lecce', 'Italy'),
(1535, 'PSR', 'Pescara', 'Pescara', 'Italy'),
(1536, 'BDS', 'Casale', 'Brindisi', 'Italy'),
(1537, 'SUF', 'Lamezia terme', 'Lamezia', 'Italy'),
(1538, 'CTA', 'Catania fontanarossa', 'Catania', 'Italy'),
(1539, 'LMP', 'Lampedusa', 'Lampedusa', 'Italy'),
(1540, 'PNL', 'Pantelleria', 'Pantelleria', 'Italy'),
(1541, 'PMO', 'Palermo', 'Palermo', 'Italy'),
(1542, 'PMO', 'Boccadifalco', 'Palermo', 'Italy'),
(1543, 'REG', 'Reggio calabria', 'Reggio calabria', 'Italy'),
(1544, 'TPS', 'Trapani birgi', 'Trapani', 'Italy'),
(1545, 'NSY', 'Sigonella', 'Sigonella', 'Italy'),
(1546, 'AHO', 'Alghero', 'Alghero', 'Italy'),
(1547, 'DCI', 'Decimomannu', 'Decimomannu', 'Italy'),
(1548, 'CAG', 'Elmas', 'Cagliari', 'Italy'),
(1549, 'OLB', 'Olbia costa smeralda', 'Olbia', 'Italy'),
(1550, 'TTB', 'Tortoli', 'Tortoli', 'Italy'),
(1551, 'MXP', 'Malpensa', 'Milano', 'Italy'),
(1552, 'BGY', 'Bergamo orio al serio', 'Bergamo', 'Italy'),
(1553, 'TRN', 'Torino', 'Torino', 'Italy'),
(1554, 'ALL', 'Albenga', 'Albenga', 'Italy'),
(1555, 'GOA', 'Genova sestri', 'Genoa', 'Italy'),
(1556, 'LIN', 'Linate', 'Milan', 'Italy'),
(1557, 'PMF', 'Parma', 'Parma', 'Italy'),
(1558, 'QPZ', 'Piacenza', 'Piacenza', 'Italy'),
(1559, 'CUF', 'Levaldigi', 'Levaldigi', 'Italy'),
(1560, 'AVB', 'Aviano ab', 'Aviano', 'Italy'),
(1561, 'BZO', 'Bolzano', 'Bolzano', 'Italy'),
(1562, 'BLQ', 'Bologna', 'Bologna', 'Italy'),
(1563, 'TSF', 'Treviso', 'Treviso', 'Italy'),
(1564, 'FRL', 'Forli', 'Forli', 'Italy'),
(1565, 'VBS', 'Montichiari', 'Montichiari', 'Italy'),
(1566, 'TRS', 'Ronchi dei legionari', 'Ronchi de legionari', 'Italy'),
(1567, 'RMI', 'Rimini', 'Rimini', 'Italy'),
(1568, 'VIC', 'Vicenza', 'Vicenza', 'Italy'),
(1569, 'QPA', 'Padova', 'Padova', 'Italy'),
(1570, 'VRN', 'Villafranca', 'Villafranca', 'Italy'),
(1571, 'VCE', 'Venezia tessera', 'Venice', 'Italy'),
(1572, 'SAY', 'Ampugnano', 'Siena', 'Italy'),
(1573, 'CIA', 'Ciampino', 'Rome', 'Italy'),
(1574, 'FCO', 'Fiumicino', 'Rome', 'Italy'),
(1575, 'EBA', 'Marina di campo', 'Marina di campo', 'Italy'),
(1576, 'QLT', 'Latina', 'Latina', 'Italy'),
(1577, 'NAP', 'Capodichino', 'Naples', 'Italy'),
(1578, 'PSA', 'Pisa', 'Pisa', 'Italy'),
(1579, 'FLR', 'Peretola', 'Firenze', 'Italy'),
(1580, 'GRS', 'Grosseto', 'Grosseto', 'Italy'),
(1581, 'PEG', 'Perugia', 'Perugia', 'Italy'),
(1582, 'LJU', 'Ljubljana', 'Ljubliana', 'Slovenia'),
(1583, 'MBX', 'Maribor', 'Maribor', 'Slovenia'),
(1584, 'POW', 'Portoroz', 'Portoroz', 'Slovenia'),
(1585, 'KLV', 'Karlovy vary', 'Karlovy vary', 'Czech republic'),
(1586, 'OSR', 'Mosnov', 'Ostrava', 'Czech republic'),
(1587, 'PED', 'Pardubice', 'Pardubice', 'Czech republic'),
(1588, 'PRV', 'Prerov', 'Prerov', 'Czech republic'),
(1589, 'PRG', 'Ruzyne', 'Prague', 'Czech republic'),
(1590, 'BRQ', 'Turany', 'Turany', 'Czech republic'),
(1591, 'TLV', 'Ben gurion', 'Tel-aviv', 'Israel'),
(1592, 'BEV', 'Teyman', 'Beer-sheba', 'Israel'),
(1593, 'ETH', 'Eilat', 'Elat', 'Israel'),
(1594, 'HFA', 'Haifa', 'Haifa', 'Israel'),
(1595, 'RPN', 'Mahanaim i ben yaakov', 'Rosh pina', 'Israel'),
(1596, 'JRS', 'Jerusalem/atarot', 'Jerusalem', 'Israel'),
(1597, 'VDA', 'Ovda', 'Ovda', 'Israel'),
(1598, 'SDV', 'Sde dov', 'Tel-aviv', 'Israel'),
(1599, 'MLA', 'Luqa', 'Malta', 'Malta'),
(1600, 'GRZ', 'Graz mil/civ', 'Graz', 'Austria'),
(1601, 'INN', 'Innsbruck', 'Innsbruck', 'Austria'),
(1602, 'KLU', 'Klagenfurt(aus-afb)', 'Klagenfurt', 'Austria'),
(1603, 'LNZ', 'Horsching international airport (aus - afb)', 'Linz', 'Austria'),
(1604, 'SZG', 'Salzburg', 'Salzburg', 'Austria'),
(1605, 'VIE', 'Schwechat', 'Vienna', 'Austria'),
(1606, 'SMA', 'Santa maria', 'Santa maria (island)', 'Acores'),
(1607, 'BGC', 'Braganca', 'Braganca', 'Acores'),
(1608, 'FLW', 'Flores', 'Flores (flores isl.)', 'Acores'),
(1609, 'FAO', 'Faro', 'Faro', 'Acores'),
(1610, 'GRW', 'Graciosa', 'Graciosa island', 'Acores'),
(1611, 'HOR', 'Horta', 'Horta', 'Acores'),
(1612, 'TER', 'Lajes', 'Lajes (terceira island)', 'Acores'),
(1613, 'PDL', 'Ponta delgada', 'Ponta delgada', 'Acores'),
(1614, 'PIX', 'Pico', 'Pico', 'Acores'),
(1615, 'OPO', 'Porto', 'Porto', 'Acores'),
(1616, 'PXO', 'Porto santo', 'Porto santo', 'Madeira'),
(1617, 'LIS', 'Lisboa', 'Lisbon', 'Portugal'),
(1618, 'SJZ', 'Sao jorge', 'Sao jorge island', 'Acores'),
(1619, 'VRL', 'Vila real', 'Vila real', 'Acores'),
(1620, 'OMO', 'Mostar', 'Mostar', 'Bosnia-hercegovina'),
(1621, 'SJJ', 'Sarajevo', 'Sarajevo', 'Bosnia-hercegovina'),
(1622, 'ARW', 'Arad', 'Arad', 'Romania'),
(1623, 'BCM', 'Bacau', 'Bacau', 'Romania'),
(1624, 'BAY', 'Tautii magheraus', 'Baia mare', 'Romania'),
(1625, 'BBU', 'Baneasa', 'Bucharest', 'Romania'),
(1626, 'CND', 'Mihail kogalniceanu', 'Constanta', 'Romania'),
(1627, 'CLJ', 'Someseni', 'Cluj-napoca', 'Romania'),
(1628, 'CSB', 'Caransebes', 'Caransebes', 'Romania'),
(1629, 'CRA', 'Craiova', 'Craiova', 'Romania'),
(1630, 'IAS', 'Iasi', 'Iasi', 'Romania'),
(1631, 'OMR', 'Oradea', 'Oradea', 'Romania'),
(1632, 'OTP', 'Otopeni', 'Bucharest', 'Romania'),
(1633, 'SBZ', 'Sibiu', 'Sibiu', 'Romania'),
(1634, 'SUJ', 'Satu mare', 'Satu mare', 'Romania'),
(1635, 'SCV', 'Salcea', 'Suceava', 'Romania'),
(1636, 'TCE', 'Cataloi', 'Tulcea', 'Romania'),
(1637, 'TGM', 'Vidrasau', 'Tirgu mures', 'Romania'),
(1638, 'TSR', 'Giarmata', 'Timisoara', 'Romania'),
(1639, 'GVA', 'Geneva cointrin', 'Geneva', 'Switzerland'),
(1640, 'SIR', 'Sion', 'Sion', 'Switzerland'),
(1641, 'LUG', 'Lugano', 'Lugano', 'Switzerland'),
(1642, 'BRN', 'Bern belp', 'Bern', 'Switzerland'),
(1643, 'ZRH', 'Zurich', 'Zurich', 'Switzerland'),
(1644, 'ACH', 'St gallen altenrhein', 'Altenrhein', 'Switzerland'),
(1645, 'SMV', 'Samedan', 'Samedan', 'Switzerland'),
(1646, 'ESB', 'Esenboga', 'Ankara', 'Turkey'),
(1647, 'ANK', 'Etimesgut', 'Ankara', 'Turkey'),
(1648, 'ADA', 'Adana', 'Adana', 'Turkey'),
(1649, 'ADA', 'Incirlik ab', 'Adana', 'Turkey'),
(1650, 'AFY', 'Afyon', 'Afyon', 'Turkey'),
(1651, 'AYT', 'Antalya', 'Antalya', 'Turkey'),
(1652, 'GZT', 'Oguzeli', 'Gaziantep', 'Turkey'),
(1653, 'KYA', 'Konya', 'Konya', 'Turkey'),
(1654, 'MZH', 'Merzifon', 'Merzifon', 'Turkey'),
(1655, 'SSX', 'Samsun airport', 'Samsun', 'Turkey'),
(1656, 'VAS', 'Sivas', 'Sivas', 'Turkey'),
(1657, 'MLX', 'Erhac', 'Malatya', 'Turkey'),
(1658, 'ASR', 'Erkilet', 'Kayseri', 'Turkey'),
(1659, 'DNZ', 'Cardak', 'Denizli', 'Turkey'),
(1660, 'IST', 'Ataturk', 'Istanbul', 'Turkey'),
(1661, 'BTZ', 'Bursa', 'Bursa', 'Turkey'),
(1662, 'BZI', 'Balikesir', 'Balikesir', 'Turkey'),
(1663, 'BDM', 'Bandirma', 'Bandirma', 'Turkey'),
(1664, 'ESK', 'Eskisehir', 'Eskisehir', 'Turkey'),
(1665, 'ADB', 'Adnan menderes', 'Izmir', 'Turkey'),
(1666, 'IGL', 'Cigli', 'Izmir', 'Turkey'),
(1667, 'DLM', 'Dalaman', 'Dalaman', 'Turkey'),
(1668, 'EZS', 'Elazig', 'Elazig', 'Turkey'),
(1669, 'DIY', 'Diyarbakir', 'Diyabakir', 'Turkey'),
(1670, 'ERC', 'Erzincan', 'Erzincan', 'Turkey'),
(1671, 'ERZ', 'Erzurum', 'Erzurum', 'Turkey'),
(1672, 'TZX', 'Trabzon', 'Trabzon', 'Turkey'),
(1673, 'VAN', 'Van', 'Van', 'Turkey'),
(1674, 'BAL', 'Batman', 'Batman', 'Turkey'),
(1675, 'KIV', 'Chisinau', 'Kichinau fir/acc/com', 'Moldova'),
(1676, 'OHD', 'Ohrid', 'Ohrid', 'Former macedonia'),
(1677, 'SKP', 'Skopje', 'Skopje', 'Former macedonia'),
(1678, 'GIB', 'Gibraltar', 'Gibraltar', 'Gibraltar'),
(1679, 'BEG', 'Beograd', 'Beograd', 'Yugoslavia'),
(1680, 'TGD', 'Podgorica', 'Podgorica', 'Yugoslavia'),
(1681, 'PRN', 'Pristina', 'Pristina', 'Yugoslavia'),
(1682, 'TIV', 'Tivat', 'Tivat', 'Yugoslavia'),
(1683, 'BTS', 'M r stefanik', 'Bratislava', 'Slovakia'),
(1684, 'KSC', 'Kosice', 'Kosice', 'Slovakia'),
(1685, 'PZY', 'Piestany', 'Piestany', 'Slovakia'),
(1686, 'SLD', 'Sliac', 'Sliac', 'Slovakia'),
(1687, 'TAT', 'Tatry', 'Poprad', 'Slovakia'),
(1688, 'NCA', 'North caicos', 'North caicos', 'Turks & caicos i.'),
(1689, 'PLS', 'Providenciales', 'Providenciales', 'Turks & caicos i.'),
(1690, 'XSC', 'South caicos', 'South caicos', 'Turks & caicos i.'),
(1691, 'BRX', 'Maria montez international', 'Barahona', 'Dominican republic'),
(1692, 'HEX', 'Herrera international', 'Santo domingo', 'Dominican republic'),
(1693, 'LRM', 'La romana international', 'La romana', 'Dominican republic'),
(1694, 'PUJ', 'Punta cana international', 'Punta cana', 'Dominican republic'),
(1695, 'POP', 'Gregorio luperon international', 'Puerto plata', 'Dominican republic'),
(1696, 'SDQ', 'Las americas international', 'Santo domingo', 'Dominican republic'),
(1697, 'STI', 'Cibao international', 'Santiago', 'Dominican republic'),
(1698, 'CBV', 'Coban', 'Coban', 'Guatemala'),
(1699, 'GUA', 'La aurora', 'Guatemala city', 'Guatemala'),
(1700, 'LCE', 'Goloson international', 'La ceiba', 'Honduras'),
(1701, 'SAP', 'La mesa international', 'San pedro sula', 'Honduras'),
(1702, 'GJA', 'Guanaja', 'Guanaja', 'Honduras'),
(1703, 'PEU', 'Puerto lempira', 'Puerto lempira', 'Honduras'),
(1704, 'RTB', 'Roatan', 'Roatan', 'Honduras'),
(1705, 'TEA', 'Tela', 'Tela', 'Honduras'),
(1706, 'TGU', 'Toncontin international', 'Tegucigalpa', 'Honduras'),
(1707, 'OCJ', 'Boscobel', 'Ocho rios', 'Jamaica'),
(1708, 'KIN', 'Norman manley international', 'Kingston', 'Jamaica'),
(1709, 'MBJ', 'Sangster international', 'Montego bay', 'Jamaica'),
(1710, 'POT', 'Ken jones', 'Port antonio', 'Jamaica'),
(1711, 'KTP', 'Tinson pen', 'Kingston', 'Jamaica'),
(1712, 'ACA', 'General juan n alvarez international', 'Acapulco', 'Mexico'),
(1713, 'NTR', 'Del norte international', 'Monterrey', 'Mexico'),
(1714, 'AGU', 'Jesus teran international', 'Aguascalientes', 'Mexico'),
(1715, 'HUX', 'Bahias de huatulco international', 'Bahias dehuatulco', 'Mexico'),
(1716, 'CVJ', 'Cuernavaca', 'Cuernavaca', 'Mexico'),
(1717, 'CME', 'Ciudad del carmen international', 'Ciudad del carmen', 'Mexico'),
(1718, 'CUL', 'Culiacan international', 'Culiacan', 'Mexico'),
(1719, 'CTM', 'Chetumal international', 'Chetumal', 'Mexico'),
(1720, 'CEN', 'Ciudad obregon international', 'Ciudad obregon', 'Mexico'),
(1721, 'CPE', 'Ingeniero alberto acuna ongay international', 'Campeche', 'Mexico'),
(1722, 'CJS', 'Abraham gonzalez international', 'Ciudad juarez', 'Mexico'),
(1723, 'CUU', 'General r fierro villalobos international', 'Chihuahua', 'Mexico'),
(1724, 'CVM', 'Ciudad victoria', 'Ciudad victoria', 'Mexico'),
(1725, 'CZM', 'Cozumel international', 'Cozumel', 'Mexico'),
(1726, 'MMC', 'Ciudad mante', 'Ciudad mante', 'Mexico'),
(1727, 'DGO', 'Durango international', 'Durango', 'Mexico'),
(1728, 'TPQ', 'Tepic', 'Tepic', 'Mexico'),
(1729, 'ESE', 'General alberto l salinas c international', 'Ensenada', 'Mexico'),
(1730, 'GDL', 'Don miguel y hidalgo international', 'Guadalajara', 'Mexico'),
(1731, 'GYM', 'General jose maria yanez international', 'Guaymas', 'Mexico'),
(1732, 'TCN', 'Tehuacan', 'Tehuacan', 'Mexico'),
(1733, 'HMO', 'General ignacio p garcia international', 'Hermosillo', 'Mexico'),
(1734, 'CLQ', 'Colima', 'Colima', 'Mexico'),
(1735, 'ISJ', 'Isla mujeres', 'Isla mujeres', 'Mexico'),
(1736, 'SLW', 'Plan de guadalupe international', 'Saltillo', 'Mexico'),
(1737, 'LZC', 'Lazaro cardenas', 'Lazard cardenas', 'Mexico'),
(1738, 'LMM', 'Valle del fuerte international', 'Los mochis', 'Mexico'),
(1739, 'BJX', 'De guanajuato international', 'Del bajio', 'Mexico'),
(1740, 'LAP', 'General manuel marquez de leon international', 'La paz', 'Mexico'),
(1741, 'LTO', 'Loreto international', 'Loreto', 'Mexico'),
(1742, 'MAM', 'General servando canales international', 'Matamoros', 'Mexico'),
(1743, 'MID', 'Licenciado manuel crecencio rejon international', 'Merida', 'Mexico'),
(1744, 'MXL', 'General rodolfo sanchez taboada international', 'Mexicali', 'Mexico'),
(1745, 'MLM', 'General francisco j mujica', 'Morelia', 'Mexico'),
(1746, 'MTT', 'Minatitlan', 'Minatitlan', 'Mexico'),
(1747, 'LOV', 'Monclova international', 'Monclova', 'Mexico'),
(1748, 'MEX', 'Licenciado benito juarez international', 'Mexico city', 'Mexico'),
(1749, 'MTY', 'General mariano escobedo international', 'Monterrey', 'Mexico'),
(1750, 'MZT', 'General rafael buelna international', 'Mazatlan', 'Mexico'),
(1751, 'NOG', 'Nogales international', 'Nogales', 'Mexico'),
(1752, 'NLD', 'Quetzalcoatl international', 'Nuevo laredo', 'Mexico'),
(1753, 'OAX', 'Xoxocotlan international', 'Oaxaca', 'Mexico'),
(1754, 'PAZ', 'Tajin', 'Poza rico', 'Mexico'),
(1755, 'PBC', 'Hermanos serdan international', 'Puebla', 'Mexico'),
(1756, 'PCA', 'Ingeniero juan guillermo villasana', 'Pachuca', 'Mexico'),
(1757, 'PPE', 'Punta penasco', 'Punta penasco', 'Mexico'),
(1758, 'PDS', 'Piedras negras international', 'Piedras negras', 'Mexico'),
(1759, 'UPN', 'Licenciado y gen ignacio lopez rayon', 'Uruapan', 'Mexico'),
(1760, 'PVR', 'Licenciado gustavo diaz ordaz international', 'Puerto vallarta', 'Mexico'),
(1761, 'PXM', 'Puerto escondido', 'Puerto escondido', 'Mexico'),
(1762, 'QRO', 'Ingeniero f espinoza gutierrez international', 'Queretaro', 'Mexico'),
(1763, 'REX', 'General lucio blanco international', 'Reynosa', 'Mexico'),
(1764, 'SJD', 'Los cabos international', 'San jose del cabo', 'Mexico'),
(1765, 'SLP', 'Ponciano arriaga international', 'San luis potosi', 'Mexico'),
(1766, 'TXA', 'Tlaxcala', 'Tlaxcala', 'Mexico'),
(1767, 'TRC', 'Torreon international', 'Torreon', 'Mexico'),
(1768, 'TGZ', 'Francisco sarabia', 'Tuxtla gutierrez', 'Mexico'),
(1769, 'TIJ', 'General abelardo l rodriguez international', 'Tijuana', 'Mexico'),
(1770, 'TAM', 'General francisco javier mina international', 'Tampico', 'Mexico'),
(1771, 'TSL', 'Tamuin', 'Tamuin', 'Mexico'),
(1772, 'TLC', 'Licenciado adolfo lopez mateos international', 'Toluca', 'Mexico'),
(1773, 'TAP', 'Tapachula international', 'Tapachula', 'Mexico'),
(1774, 'CUN', 'Cancun international', 'Cancun', 'Mexico'),
(1775, 'VSA', 'C p a carlos rovirosa international', 'Villahermosa', 'Mexico'),
(1776, 'VER', 'General heriberto jara international', 'Vera cruz', 'Mexico'),
(1777, 'ZCL', 'General leobardo c ruiz international', 'Zacatecas', 'Mexico'),
(1778, 'ZIH', 'Ixtapa zihuatanejo international', 'Zihuatanejo', 'Mexico'),
(1779, 'ZMM', 'Zamora', 'Zamora', 'Mexico'),
(1780, 'ZLO', 'Playa de oro international', 'Manzanillo', 'Mexico'),
(1781, 'BEF', 'Bluefields', 'Bluefields', 'Nicaragua'),
(1782, 'MGA', 'Managua international', 'Managua', 'Nicaragua'),
(1783, 'PUZ', 'Puerto cabezas', 'Puerto cabezas', 'Nicaragua'),
(1784, 'BOC', 'Bocas del toro', 'Bocas del toro', 'Panama'),
(1785, 'CHX', 'Cap manuel nino international', 'Changuinola', 'Panama'),
(1786, 'DAV', 'Enrique malek international', 'David', 'Panama'),
(1787, 'HOW', 'Howard afb', 'Howard', 'Panama'),
(1788, 'PAC', 'Marcos a gelabert international', 'Panama', 'Panama'),
(1789, 'PTY', 'Tocumen international', 'Panama city', 'Panama'),
(1790, 'OTR', 'Coto 47', 'Coto 47', 'Costa rica'),
(1791, 'GLF', 'Golfito', 'Golfito', 'Costa rica'),
(1792, 'LIR', 'Daniel oduber quiros international', 'Liberia', 'Costa rica'),
(1793, 'LIO', 'Limon international', 'Limon', 'Costa rica'),
(1794, 'NOB', 'Nosara', 'Nosara beach', 'Costa rica'),
(1795, 'SJO', 'Juan santamaria international', 'San jose', 'Costa rica'),
(1796, 'PMZ', 'Palmar sur', 'Palmar sur', 'Costa rica'),
(1797, 'XQP', 'Quepos managua', 'Quepos', 'Costa rica'),
(1798, 'SAL', 'El salvador international', 'San salvador', 'El salvador'),
(1799, 'CAP', 'Cap haitien', 'Cap haitien', 'Haiti'),
(1800, 'PAP', 'Port au prince international', 'Port-au-prince', 'Haiti'),
(1801, 'BCA', 'Gustavo rizo', 'Baracoa playa', 'Cuba'),
(1802, 'BYM', 'Carlos manuel de cespedes', 'Bayamo', 'Cuba'),
(1803, 'AVI', 'Maximo gomez', 'Ciego de avila', 'Cuba'),
(1804, 'CFG', 'Jaime gonzalez', 'Cienfuegos', 'Cuba'),
(1805, 'CYO', 'Vilo acuna', 'Cayo', 'Cuba'),
(1806, 'CMW', 'Ignacio agramonte international', 'Camaguey', 'Cuba'),
(1807, 'SCU', 'Antonio maceo international', 'Santiago de cuba', 'Cuba'),
(1808, 'GAO', 'Mariana grajales', 'Guantanamo', 'Cuba'),
(1809, 'HAV', 'Jose marti international', 'Havana', 'Cuba'),
(1810, 'HOG', 'Frank pais', 'Holguin', 'Cuba'),
(1811, 'LCL', 'La coloma', 'La coloma', 'Cuba'),
(1812, 'MOA', 'Orestes acosta', 'Moa', 'Cuba'),
(1813, 'MZO', 'Sierra maestra', 'Manzanillo', 'Cuba'),
(1814, 'GER', 'Rafael perez', 'Nueva gerona', 'Cuba'),
(1815, 'SNU', 'Abel santamaria', 'Santa clara', 'Cuba'),
(1816, 'VRA', 'Juan gualberto gomez international', 'Varadero', 'Cuba'),
(1817, 'VTU', 'Hermanos ameijeiras', 'Las tunas', 'Cuba'),
(1818, 'CYB', 'Gerrard smith international', 'Cayman barac', 'Cayman islands'),
(1819, 'GCM', 'Owen roberts international', 'Georgetown', 'Cayman islands'),
(1820, 'ASD', 'Andros town', 'Andros town', 'Bahamas'),
(1821, 'MHH', 'Marsh harbour', 'Marsh harbor', 'Bahamas'),
(1822, 'SAQ', 'San andros', 'San andros', 'Bahamas'),
(1823, 'AXP', 'Spring point', 'Spring point', 'Bahamas'),
(1824, 'TCB', 'Treasure cay', 'Treasure cay', 'Bahamas'),
(1825, 'CCZ', 'Chub cay', 'Chub cay', 'Bahamas'),
(1826, 'BIM', 'South bimini', 'Alice town', 'Bahamas'),
(1827, 'GGT', 'Exuma international', 'Great exuma', 'Bahamas'),
(1828, 'ELH', 'North eleuthera', 'North eleuthera', 'Bahamas'),
(1829, 'GHB', 'Governors harbour', 'Governors harbor', 'Bahamas'),
(1830, 'RSD', 'Rock sound', 'Rock sound', 'Bahamas'),
(1831, 'FPO', 'Grand bahama international', 'Freeport', 'Bahamas'),
(1832, 'WTD', 'West end', 'West end', 'Bahamas'),
(1833, 'IGA', 'Matthew town', 'Matthew town', 'Bahamas'),
(1834, 'LGI', 'Deadmans cay', 'Dead mans cay', 'Bahamas'),
(1835, 'SML', 'Stella maris', 'Stella maris', 'Bahamas'),
(1836, 'MYG', 'Mayaguana', 'Mayaguana', 'Bahamas'),
(1837, 'NAS', 'Nassau international', 'Nassau', 'Bahamas'),
(1838, 'ZSA', 'San salvador', 'Cockburn town', 'Bahamas'),
(1839, 'BZE', 'Philip s w goldson international', 'Belize city', 'Belize'),
(1840, 'AIT', 'Aitutaki', 'Aitutaki', 'Cook islands'),
(1841, 'RAR', 'Rarotonga international', 'Avarua', 'Cook islands'),
(1842, 'NAN', 'Nadi international', 'Nandi', 'Fiji'),
(1843, 'SUV', 'Nausori international', 'Nausori', 'Fiji'),
(1844, 'LMG', 'Labasa', 'Lambasa', 'Fiji'),
(1845, 'TBU', 'Fua amotu international', 'Tongatapu', 'Tonga'),
(1846, 'HPA', 'Haapai', 'Haapai', 'Tonga'),
(1847, 'VAV', 'Vavau international', 'Vavau', 'Tonga'),
(1848, 'FUN', 'Funafuti international airport', 'Funafuti', 'Tuvalu island'),
(1849, 'TRW', 'Bonriki international', 'Tarawa', 'Kiribati'),
(1850, 'TBF', 'Tabiteuea north', 'Tabiteuea north', 'Kiribati'),
(1851, 'HUE', 'Niue international', 'Alofi', 'New zealand'),
(1852, 'WLS', 'Hihifo', 'Wallis', 'Wallis & futuna'),
(1853, 'APW', 'Faleolo international', 'Faleolo', 'Samoa'),
(1854, 'PPG', 'Pago pago international', 'Pago pago', 'Samoa'),
(1855, 'RUR', 'Rurutu', 'Rurutu', 'French polynesia'),
(1856, 'TUB', 'Tubuai', 'Tubuai', 'French polynesia'),
(1857, 'AAA', 'Anaa', 'Anaa', 'French polynesia'),
(1858, 'TIH', 'Tikehau', 'Tikehau', 'French polynesia'),
(1859, 'REA', 'Reao', 'Reao', 'French polynesia'),
(1860, 'FAV', 'Fakarava', 'Fakarava', 'French polynesia'),
(1861, 'XMH', 'Manihi', 'Manihi', 'French polynesia'),
(1862, 'GMR', 'Totegegie', 'Totegegie', 'French polynesia'),
(1863, 'KKR', 'Kaukura', 'Kaukura atoll', 'Tuamotu islands'),
(1864, 'MKP', 'Makemo', 'Makemo', 'French polynesia'),
(1865, 'NAU', 'Napuka', 'Napuka island', 'French polynesia'),
(1866, 'PKP', 'Puka puka', 'Puka puka', 'French polynesia'),
(1867, 'TKP', 'Takapoto', 'Takapoto', 'French polynesia'),
(1868, 'AXR', 'Arutua', 'Arutua', 'Tuamotu islands'),
(1869, 'MVT', 'Mataiva', 'Mataiva', 'French polynesia'),
(1870, 'TKX', 'Takaroa', 'Takaroa', 'French polynesia'),
(1871, 'NHV', 'Nuku hiva', 'Nuku hiva', 'French polynesia'),
(1872, 'BOB', 'Bora bora', 'Bora bora', 'French polynesia'),
(1873, 'RGI', 'Rangiroa', 'Rangiroa', 'French polynesia'),
(1874, 'HUH', 'Huahine', 'Huahine island', 'French polynesia'),
(1875, 'MOZ', 'Temae', 'Moorea', 'French polynesia'),
(1876, 'HOI', 'Hao', 'Hao island', 'Tuamotu islands'),
(1877, 'MAU', 'Maupiti', 'Maupiti', 'French polynesia'),
(1878, 'RFP', 'Uturoa', 'Raiatea island', 'French polynesia'),
(1879, 'VLI', 'Port vila bauerfield', 'Port-vila', 'Vanuatu'),
(1880, 'KNQ', 'Kone', 'Kone', 'New caledonia'),
(1881, 'KOC', 'Koumac', 'Koumac', 'New caledonia'),
(1882, 'LIF', 'Ouanaham', 'Lifou', 'New caledonia'),
(1883, 'GEA', 'Noumea magenta', 'Noumea', 'New caledonia'),
(1884, 'MEE', 'La roche', 'Mare', 'New caledonia'),
(1885, 'TOU', 'Touho', 'Touho', 'New caledonia'),
(1886, 'UVE', 'Ouvea ouloup', 'Ouvea', 'New caledonia'),
(1887, 'NOU', 'La tontouta', 'Noumea', 'New caledonia'),
(1888, 'AKL', 'Auckland international', 'Auckland', 'New zealand'),
(1889, 'TUO', 'Taupo', 'Taupo', 'New zealand'),
(1890, 'CHC', 'Christchurch international', 'Christchurch', 'New zealand'),
(1891, 'CHT', 'Chatham islands', 'Chatham island', 'New zealand'),
(1892, 'DUD', 'Dunedin', 'Dunedin', 'New zealand'),
(1893, 'GIS', 'Gisborne', 'Gisborne', 'New zealand'),
(1894, 'MON', 'Glentanner', 'Glentanner', 'New zealand'),
(1895, 'HKK', 'Hokitika', 'Hokitika', 'New zealand'),
(1896, 'HLZ', 'Hamilton', 'Hamilton', 'New zealand'),
(1897, 'KKE', 'Kerikeri', 'Kerikeri', 'New zealand'),
(1898, 'KAT', 'Kaitaia', 'Kaitaia', 'New zealand'),
(1899, 'ALR', 'Alexandra', 'Alexandra', 'New zealand'),
(1900, 'GTN', 'Mount cook', 'Mount cook', 'New zealand'),
(1901, 'TEU', 'Manapouri', 'Manapouri', 'New zealand'),
(1902, 'MRO', 'Masterton', 'Masterton', 'New zealand'),
(1903, 'NPL', 'New plymouth', 'New plymouth', 'New zealand'),
(1904, 'NSN', 'Nelson', 'Nelson', 'New zealand'),
(1905, 'IVC', 'Invercargill', 'Invercargill', 'New zealand'),
(1906, 'OAM', 'Oamaru', 'Oamaru', 'New zealand'),
(1907, 'PMR', 'Palmerston north', 'Palmerston north', 'New zealand'),
(1908, 'PPQ', 'Paraparaumu', 'Paraparaumu', 'New zealand'),
(1909, 'ZQN', 'Queenstown', 'Queenstown international', 'New zealand'),
(1910, 'ROT', 'Rotorua', 'Rotorua', 'New zealand'),
(1911, 'TRG', 'Tauranga', 'Tauranga', 'New zealand'),
(1912, 'TIU', 'Timaru', 'Timaru', 'New zealand'),
(1913, 'BHE', 'Woodbourne', 'Woodbourne', 'New zealand'),
(1914, 'WKA', 'Wanaka', 'Wanaka', 'New zealand'),
(1915, 'WHK', 'Whakatane', 'Whakatane', 'New zealand');
INSERT INTO `aeropuerto` (`id`, `iata`, `nombre`, `ciudad`, `pais`) VALUES
(1916, 'WLG', 'Wellington international', 'Wellington', 'New zealand'),
(1917, 'WRE', 'Whangarei', 'Whangarei', 'New zealand'),
(1918, 'WSZ', 'Westport', 'Westport', 'New zealand'),
(1919, 'WAG', 'Wanganui', 'Wanganui', 'New zealand'),
(1920, 'HEA', 'Herat', 'Herat', 'Afghanistan'),
(1921, 'JAA', 'Jalalabad', 'Jalalabad', 'Afghanistan'),
(1922, 'KBL', 'Kabul international', 'Kabul', 'Afghanistan'),
(1923, 'KDH', 'Kandahar', 'Kandahar', 'Afghanistan'),
(1924, 'MMZ', 'Maimana', 'Maimama', 'Afghanistan'),
(1925, 'MZR', 'Mazar i sharif', 'Mazar-i-sharif', 'Afghanistan'),
(1926, 'UND', 'Kunduz', 'Kunduz', 'Afghanistan'),
(1927, 'BAH', 'Bahrain international', 'Bahrain', 'Bahrain'),
(1928, 'AHB', 'Abha', 'Abha', 'Saudi arabia'),
(1929, 'LEA', 'Al ahsa', 'Al-ahsa', 'Saudi arabia'),
(1930, 'ABT', 'Al baha', 'El-baha', 'Saudi arabia'),
(1931, 'BHH', 'Bisha', 'Bisha', 'Saudi arabia'),
(1932, 'DMM', 'King fahd international', 'Dammam', 'Saudi arabia'),
(1933, 'DHA', 'King abdulaziz ab', 'Dhahran', 'Saudi arabia'),
(1934, 'GIZ', 'Jazan', 'Gizan', 'Saudi arabia'),
(1935, 'ELQ', 'Gassim', 'Gassim', 'Saudi arabia'),
(1936, 'URY', 'Guriat', 'Guriat', 'Saudi arabia'),
(1937, 'HAS', 'Hail', 'Hail', 'Saudi arabia'),
(1938, 'JED', 'King abdulaziz international', 'Jeddah', 'Saudi arabia'),
(1939, 'HBT', 'King khaled military city', 'King khalid mil.city', 'Saudi arabia'),
(1940, 'MED', 'Prince mohammad bin abdulaziz', 'Madinah', 'Saudi arabia'),
(1941, 'EAM', 'Nejran', 'Nejran', 'Saudi arabia'),
(1942, 'AQI', 'Qaisumah', 'Hafr al-batin', 'Saudi arabia'),
(1943, 'RAH', 'Rafha', 'Rafha', 'Saudi arabia'),
(1944, 'RUH', 'King khaled international', 'Riyadh', 'Saudi arabia'),
(1945, 'RAE', 'Arar', 'Arar', 'Saudi arabia'),
(1946, 'SHW', 'Sharurah', 'Sharurah', 'Saudi arabia'),
(1947, 'AJO', 'Al jouf', 'Al-jouf', 'Saudi arabia'),
(1948, 'SLF', 'Sulayel', 'Sulayel', 'Saudi arabia'),
(1949, 'TUU', 'Tabuk', 'Tabuk', 'Saudi arabia'),
(1950, 'TIF', 'Taif', 'Taif', 'Saudi arabia'),
(1951, 'TUI', 'Turaif', 'Turaif', 'Saudi arabia'),
(1952, 'EJH', 'Wejh', 'Wejh', 'Saudi arabia'),
(1953, 'YNB', 'Yenbo', 'Yenbo', 'Saudi arabia'),
(1954, 'ABD', 'Abadan', 'Abadan', 'Iran'),
(1955, 'QMJ', 'Shahid asyaee', 'Masjed soleiman', 'Iran'),
(1956, 'MRX', 'Mahshahr', 'Bandar mahshahr', 'Iran'),
(1957, 'AWZ', 'Ahwaz', 'Ahwaz', 'Iran'),
(1958, 'BUZ', 'Bushehr', 'Bushehr', 'Iran'),
(1959, 'KIH', 'Kish island', 'Kish island', 'Iran'),
(1960, 'BDH', 'Bandar lengeh', 'Bandar lengeh', 'Iran'),
(1961, 'KSH', 'Shahid ashrafi esfahani', 'Bakhtaran', 'Iran'),
(1962, 'SDG', 'Sanandaj', 'Sanandaj', 'Iran'),
(1963, 'RAS', 'Rasht', 'Rasht', 'Iran'),
(1964, 'THR', 'Mehrabad international', 'Teheran', 'Iran'),
(1965, 'BND', 'Bandar abbass international', 'Bandar abbas', 'Iran'),
(1966, 'KER', 'Kerman', 'Kerman', 'Iran'),
(1967, 'XBJ', 'Birjand', 'Birjand', 'Iran'),
(1968, 'RZR', 'Ramsar', 'Ramsar', 'Iran'),
(1969, 'SYZ', 'Shiraz shahid dastghaib international', 'Shiraz', 'Iran'),
(1970, 'TBZ', 'Tabriz international', 'Tabriz', 'Iran'),
(1971, 'AZD', 'Yazd shahid sadooghi', 'Yazd', 'Iran'),
(1972, 'ZBR', 'Chah bahar', 'Chah bahar', 'Iran'),
(1973, 'ZAH', 'Zahedan international', 'Zahedan', 'Iran'),
(1974, 'AMM', 'Queen alia international', 'Amman', 'Jordan'),
(1975, 'ADJ', 'Marka international', 'Amman', 'Jordan'),
(1976, 'AQJ', 'Aqaba international', 'Aqaba', 'Jordan'),
(1977, 'OMF', 'King hussein', 'Mafraq', 'Jordan'),
(1978, 'KWI', 'Kuwait international', 'Kuwait', 'Kuwait'),
(1979, 'BEY', 'Beirut international', 'Beirut', 'Lebanon'),
(1980, 'AUH', 'Abu dhabi international', 'Abu dhabi', 'United arab emirates'),
(1981, 'AZI', 'Bateen', 'Abu dhabi', 'United arab emirates'),
(1982, 'DXB', 'Dubai international', 'Dubai', 'United arab emirates'),
(1983, 'FJR', 'Fujairah international', 'Fujeirah', 'United arab emirates'),
(1984, 'RKT', 'Ras al khaimah international', 'Ras al khaimah', 'United arab emirates'),
(1985, 'SHJ', 'Sharjah international', 'Sharjah', 'United arab emirates'),
(1986, 'KHS', 'Khasab', 'Khasab', 'Oman'),
(1987, 'MSH', 'Masirah', 'Masirah', 'Oman'),
(1988, 'MCT', 'Seeb international', 'Muscat', 'Oman'),
(1989, 'SLL', 'Salalah', 'Salalah', 'Oman'),
(1990, 'TTH', 'Thumrait', 'Thumrait', 'Oman'),
(1991, 'LYP', 'Faisalabad international', 'Faisalabad', 'Pakistan'),
(1992, 'GWD', 'Gwadar', 'Gwadar', 'Pakistan'),
(1993, 'GIL', 'Gilgit', 'Gilgit', 'Pakistan'),
(1994, 'KHI', 'Jinnah international', 'Karachi', 'Pakistan'),
(1995, 'HDD', 'Hyderabad', 'Hyderabad', 'Pakistan'),
(1996, 'LHE', 'Allama iqbal international', 'Lahore', 'Pakistan'),
(1997, 'MFG', 'Muzaffarabad', 'Muzaffarabad', 'Pakistan'),
(1998, 'MJD', 'Moenjodaro', 'Moenjodaro', 'Pakistan'),
(1999, 'MUX', 'Multan international', 'Multan', 'Pakistan'),
(2000, 'WNS', 'Nawabshah', 'Nawabshah', 'Pakistan'),
(2001, 'ORW', 'Ormara', 'Ormara', 'Pakistan'),
(2002, 'PJG', 'Panjgur', 'Panjgur', 'Pakistan'),
(2003, 'PSI', 'Pasni', 'Pasni', 'Pakistan'),
(2004, 'PEW', 'Peshawar', 'Peshawar', 'Pakistan'),
(2005, 'UET', 'Quetta', 'Quetta', 'Pakistan'),
(2006, 'RYK', 'Shaikh zayed', 'Rahim yar khan', 'Pakistan'),
(2007, 'ISB', 'Chaklala', 'Islamabad', 'Pakistan'),
(2008, 'RAZ', 'Rawalakot', 'Rawala kot', 'Pakistan'),
(2009, 'SKZ', 'Sukkur', 'Sukkur', 'Pakistan'),
(2010, 'SDT', 'Saidu sharif', 'Saidu sharif', 'Pakistan'),
(2011, 'SUL', 'Sui', 'Sui', 'Pakistan'),
(2012, 'BDN', 'Talhar', 'Talhar', 'Pakistan'),
(2013, 'TRB', 'Turbat international', 'Turbo', 'Colombia'),
(2014, 'PZH', 'Zhob', 'Zhob', 'Pakistan'),
(2015, 'SDA', 'Saddam international', 'Baghdad', 'Iraq'),
(2016, 'BSR', 'Basrah international', 'Basrah', 'Iraq'),
(2017, 'ALP', 'Aleppo international', 'Aleppo', 'Syria'),
(2018, 'DAM', 'Damascus international', 'Damascus', 'Syria'),
(2019, 'DEZ', 'Deir zzor', 'Deire zor', 'Syria'),
(2020, 'LTK', 'Bassel al assad international', 'Latakia', 'Syria'),
(2021, 'PMS', 'Palmyra', 'Palmyra', 'Syria'),
(2022, 'DOH', 'Doha international', 'Doha', 'Qatar'),
(2023, 'PAQ', 'Palmer muni', 'Palmer', 'Usa'),
(2024, 'BTI', 'Barter island lrrs', 'Barter island', 'Usa'),
(2025, 'BET', 'Bethel', 'Bethel', 'Usa'),
(2026, 'BIG', 'Allen aaf', 'Delta junction', 'Usa'),
(2027, 'BRW', 'Wiley post will rogers mem', 'Barrow', 'Usa'),
(2028, 'BTT', 'Bettles', 'Bettles', 'Usa'),
(2029, 'CDB', 'Cold bay', 'Cold bay', 'Usa'),
(2030, 'CDV', 'Merle k mudhole smith', 'Cordova', 'Usa'),
(2031, 'ADK', 'Adak', 'Adak island', 'Usa'),
(2032, 'DLG', 'Dillingham', 'Dillingham', 'Usa'),
(2033, 'ADQ', 'Kodiak', 'Kodiak', 'Usa'),
(2034, 'DUT', 'Unalaska', 'Unalaska', 'Usa'),
(2035, 'EDF', 'Elmendorf afb', 'Anchorage', 'Usa'),
(2036, 'EHM', 'Cape newenham lrrs', 'Cape newenham', 'Usa'),
(2037, 'EIL', 'Eielson afb', 'Fairbanks', 'Usa'),
(2038, 'ENA', 'Kenai muni', 'Kenai', 'Usa'),
(2039, 'FAI', 'Fairbanks international', 'Fairbanks', 'Usa'),
(2040, 'FBK', 'Wainwright aaf', 'Fort wainwright', 'Usa'),
(2041, 'GAL', 'Edward g pitka sr', 'Galena', 'Usa'),
(2042, 'GKN', 'Gulkana', 'Gulkana', 'Usa'),
(2043, 'SGY', 'Skagway', 'Skagway', 'Usa'),
(2044, 'HOM', 'Homer', 'Homer', 'Usa'),
(2045, 'ILI', 'Iliamna', 'Iliamna', 'Usa'),
(2046, 'UTO', 'Indian mountain lrrs', 'Indian mountains', 'Usa'),
(2047, 'JNU', 'Juneau international', 'Juneau', 'Usa'),
(2048, 'AKN', 'King salmon', 'King salmon', 'Usa'),
(2049, 'KTN', 'Ketchikan international', 'Ketchikan', 'Usa'),
(2050, 'LUR', 'Cape lisburne lrrs', 'Cape lisburne', 'Usa'),
(2051, 'MCG', 'Mc grath', 'Mcgrath', 'Usa'),
(2052, 'MRI', 'Merrill fld', 'Anchorage', 'Usa'),
(2053, 'ANC', 'Ted stevens anchorage international', 'Anchorage', 'Usa'),
(2054, 'ANN', 'Annette island', 'Annette island', 'Usa'),
(2055, 'OME', 'Nome', 'Nome', 'Usa'),
(2056, 'ORT', 'Northway', 'Northway', 'Usa'),
(2057, 'OTZ', 'Ralph wien mem', 'Kotzebue', 'Usa'),
(2058, 'PML', 'Platinum', 'Port moller', 'Usa'),
(2059, 'SCC', 'Deadhorse', 'Deadhorse', 'Usa'),
(2060, 'SIT', 'Sitka rocky gutierrez', 'Sitka', 'Usa'),
(2061, 'SNP', 'St paul island', 'St. paul island', 'Usa'),
(2062, 'SVW', 'Sparrevohn lrrs', 'Sparrevohn', 'Usa'),
(2063, 'SYA', 'Eareckson as', 'Shemya', 'Usa'),
(2064, 'TAL', 'Ralph m calhoun', 'Tanana', 'Usa'),
(2065, 'TNC', 'Tin city lrrs', 'Tin city', 'Usa'),
(2066, 'TKA', 'Talkeetna', 'Talkeetna', 'Usa'),
(2067, 'TLJ', 'Tatalina lrrs', 'Tatalina', 'Usa'),
(2068, 'UNK', 'Unalakleet', 'Unalakleet', 'Usa'),
(2069, 'VDZ', 'Valdez pioneer field', 'Valdez', 'Usa'),
(2070, 'AIN', 'Wainwright as', 'Fort wainwright', 'Usa'),
(2071, 'YAK', 'Yakutat', 'Yakutat', 'Usa'),
(2072, 'CIS', 'Canton island airport', 'Canton island', 'Phoenix isl.'),
(2073, 'FYU', 'Fort yukon', 'Fort yukon', 'Usa'),
(2074, 'ROP', 'Rota international', 'Rota', 'Mariana islands'),
(2075, 'SPN', 'Saipan international', 'Saipan', 'Mariana islands'),
(2076, 'UAM', 'Andersen afb', 'Andersen', 'Mariana islands'),
(2077, 'GUM', 'Guam international', 'Agana', 'Mariana islands'),
(2078, 'TNI', 'West tinian', 'West tinian', 'Mariana islands'),
(2079, 'BKH', 'Barking sands pmrf', 'Barking sands', 'Usa  kauai isl.'),
(2080, 'HDH', 'Dillingham', 'Dillingham', 'Usa  oahu isl.'),
(2081, 'HNM', 'Hana', 'Hana', 'Usa  maui isl.'),
(2082, 'JHM', 'Kapalua', 'Lahania-kapalua', 'Usa  maui isl.'),
(2083, 'KOA', 'Kona international at keahole', 'Kona', 'Usa  hawaii isl.'),
(2084, 'LIH', 'Lihue', 'Lihue', 'Usa  kauai isl.'),
(2085, 'MKK', 'Molokai', 'Molokai', 'Usa  molokai isl.'),
(2086, 'MUE', 'Waimea kohala', 'Kamuela', 'Usa  hawaii isl.'),
(2087, 'NGF', 'Kaneohe bay mcaf', 'Kaneohe bay', 'Usa  oahu isl.'),
(2088, 'HNL', 'Honolulu international', 'Honolulu', 'Usa  oahu isl.'),
(2089, 'LNY', 'Lanai', 'Lanai', 'Usa  lanai isl.'),
(2090, 'OGG', 'Kahului', 'Kahului', 'Usa  maui isl.'),
(2091, 'BSF', 'Bradshaw aaf', 'Bradshaw field', 'Usa  hawaii isl.'),
(2092, 'ITO', 'Hilo international', 'Hilo', 'Usa  hawaii isl.'),
(2093, 'UPP', 'Upolu', 'Opolu', 'Usa'),
(2094, 'JON', 'Johnston atoll', 'Johnston island', 'Johnston atoll'),
(2095, '1Z8', 'Enewetak aux af', 'Eniwetok island', 'Marshall islands'),
(2096, 'MAJ', 'Marshall islands international', 'Majuro', 'Marshall islands'),
(2097, 'KWA', 'Bucholz aaf', 'Kwajalein', 'Marshall islands'),
(2098, 'CXI', 'Christmas island', 'Kiritimati', 'Kiribati'),
(2099, 'MDY', 'Midway atoll', 'Midway', 'Midway island'),
(2100, 'OLI', 'Oliktok lrrs', 'Oliktok point', 'Usa'),
(2101, 'PIZ', 'Point lay lrrs', 'Point lay', 'Usa'),
(2102, 'TKK', 'Chuuk international', 'Chuuk', 'Micronesia'),
(2103, 'PNI', 'Pohnpei international', 'Pohnpei', 'Micronesia'),
(2104, 'ROR', 'Babelthuap', 'Babelthuap', 'Palau island'),
(2105, 'KSA', 'Kosrae', 'Kosrae', 'Micronesia'),
(2106, 'YAP', 'Yap international', 'Yap', 'Micronesia'),
(2107, 'KNH', 'Shang yi', 'Chinmen', 'Taiwan'),
(2108, 'PIF', 'Pingtung south', 'Pingtung', 'Taiwan'),
(2109, 'TTT', 'Fengnin', 'Fengnin', 'Taiwan'),
(2110, 'GNI', 'Green island', 'Green island', 'Taiwan'),
(2111, 'KHH', 'Kaohsiung international', 'Kaohsiung', 'Taiwan'),
(2112, 'CYI', 'Chiayi', 'Chiayi', 'Taiwan'),
(2113, 'TXG', 'Taichung', 'Chung', 'Taiwan'),
(2114, 'KYD', 'Lanyu', 'Lanyu', 'Taiwan'),
(2115, 'MZW', 'Matsu', 'Matsu', 'Taiwan'),
(2116, 'TNN', 'Tainan', 'Tainan', 'Taiwan'),
(2117, 'MZG', 'Makung', 'Makung', 'Taiwan'),
(2118, 'TSA', 'Sungshan', 'Taipei', 'Taiwan'),
(2119, 'TPE', 'Chiang kai shek international', 'Taipei', 'Taiwan'),
(2120, 'WOT', 'Wang an', 'Wang an', 'Taiwan'),
(2121, 'HUN', 'Hualien', 'Hualien', 'Taiwan'),
(2122, 'NRT', 'New tokyo international', 'Tokyo', 'Japan'),
(2123, 'MMJ', 'Matsumoto', 'Matsumoto', 'Japan'),
(2124, 'IWO', 'Iwo jima', 'Iwojima', 'Japan'),
(2125, 'SHM', 'Nanki shirahama', 'Nanki-shirahama', 'Japan'),
(2126, 'OBO', 'Obihiro', 'Obihiro', 'Japan'),
(2127, 'CTS', 'Chitose international airport', 'Sapporo', 'Japan'),
(2128, 'HKD', 'Hakodate', 'Hakodate', 'Japan'),
(2129, 'SPK', 'Chitose', 'Chitose', 'Japan'),
(2130, 'MMB', 'Memanbetsu', 'Memanbetsu', 'Japan'),
(2131, 'SHB', 'Nakashibetsu', 'Nakashibetsu', 'Japan'),
(2132, 'SPK', 'Sapporo', 'Sapporo', 'Japan'),
(2133, 'WKJ', 'Wakkanai', 'Wakkanai', 'Japan'),
(2134, 'IKI', 'Iki', 'Iki', 'Japan'),
(2135, 'UBJ', 'Yamaguchi ube', 'Yamaguchi', 'Japan'),
(2136, 'TSJ', 'Tsushima', 'Tsushima', 'Japan'),
(2137, 'MBE', 'Monbetsu', 'Monbetsu', 'Japan'),
(2138, 'AKJ', 'Asahikawa', 'Asahikawa', 'Japan'),
(2139, 'RIS', 'Rishiri', 'Rishiri island', 'Japan'),
(2140, 'KUM', 'Yakushima', 'Yakushima', 'Japan'),
(2141, 'FUJ', 'Fukue', 'Fukue', 'Japan'),
(2142, 'FUK', 'Fukuoka', 'Fukuoka', 'Japan'),
(2143, 'TNE', 'Tanegashima', 'Tanegashima', 'Japan'),
(2144, 'KOJ', 'Kagoshima', 'Kagoshima', 'Japan'),
(2145, 'KMI', 'Miyazaki', 'Miyazaki', 'Japan'),
(2146, 'OIT', 'Oita', 'Oita', 'Japan'),
(2147, 'KKJ', 'Kitakyushu', 'Kitakyushu', 'Japan'),
(2148, 'KMJ', 'Kumamoto', 'Kumamoto', 'Japan'),
(2149, 'NGS', 'Nagasaki', 'Nagasaki', 'Japan'),
(2150, 'ASJ', 'Amami', 'Amami', 'Japan'),
(2151, 'TKN', 'Tokunoshima', 'Tokunoshima', 'Japan'),
(2152, 'KMQ', 'Komatsu', 'Kanazawa', 'Japan'),
(2153, 'NGO', 'Nagoya', 'Nagoya', 'Japan'),
(2154, 'OKI', 'Oki', 'Oki island', 'Japan'),
(2155, 'TOY', 'Toyama', 'Toyama', 'Japan'),
(2156, 'HIJ', 'Hiroshima', 'Hiroshima', 'Japan'),
(2157, 'OKJ', 'Okayama', 'Okayama', 'Japan'),
(2158, 'IZO', 'Izumo', 'Izumo', 'Japan'),
(2159, 'YGJ', 'Miho', 'Miho', 'Japan'),
(2160, 'KCZ', 'Kochi', 'Kochi', 'Japan'),
(2161, 'MYJ', 'Matsuyama', 'Matsuyama', 'Japan'),
(2162, 'ITM', 'Osaka international', 'Osaka', 'Japan'),
(2163, 'TTJ', 'Tottori', 'Tottori', 'Japan'),
(2164, 'TKS', 'Tokushima', 'Tokushima', 'Japan'),
(2165, 'TAK', 'Takamatsu', 'Takamatsu', 'Japan'),
(2166, 'AOJ', 'Aomori', 'Aomori', 'Japan'),
(2167, 'GAJ', 'Yamagata', 'Yamagata', 'Japan'),
(2168, 'HNA', 'Hanamaki', 'Hanamaki', 'Japan'),
(2169, 'AXT', 'Akita', 'Akita', 'Japan'),
(2170, 'MSJ', 'Misawa ab', 'Misawa', 'Japan'),
(2171, 'SDJ', 'Sendai', 'Sendai', 'Japan'),
(2172, 'HAC', 'Hachijojima', 'Hachijojima', 'Japan'),
(2173, 'OIM', 'Oshima', 'Oshima', 'Japan'),
(2174, 'MMY', 'Miyakejima', 'Miyake jima', 'Japan'),
(2175, 'HND', 'Tokyo international', 'Tokyo', 'Japan'),
(2176, 'OKO', 'Yokota ab', 'Yokota', 'Japan'),
(2177, 'KWJ', 'Gwangju', 'Kwangju', 'Korea'),
(2178, 'KUB', 'Kunsan ab', 'Kunsan', 'Korea'),
(2179, 'RSU', 'Yeosu', 'Yeosu', 'Korea'),
(2180, 'SHO', 'Sokcho', 'Sokcho', 'Korea'),
(2181, 'KAG', 'Gangneung', 'Kangnung', 'Korea'),
(2182, 'CJU', 'Jeju international', 'Cheju', 'Korea'),
(2183, 'PUS', 'Gimhae international', 'Kimhae', 'Korea'),
(2184, 'USN', 'Ulsan', 'Ulsan', 'Korea'),
(2185, 'SSN', 'Seoul ab', 'Seoul east', 'Korea'),
(2186, 'OSN', 'Osan ab', 'Osan', 'Korea'),
(2187, 'GMP', 'Gimpo', 'Seoul', 'Korea'),
(2188, 'KPO', 'Pohang', 'Pohang', 'Korea'),
(2189, 'TAE', 'Daegu ab', 'Taegu', 'Korea'),
(2190, 'YEC', 'Yecheon', 'Yechon', 'Korea'),
(2191, 'OKA', 'Naha', 'Naha', 'Japan'),
(2192, 'DNA', 'Kadena ab', 'Kadena', 'Japan'),
(2193, 'ISG', 'Ishigaki', 'Ishigaki', 'Japan'),
(2194, 'UEO', 'Kumejima', 'Kumejima', 'Japan'),
(2195, 'MMD', 'Minami daito', 'Minami daito', 'Japan'),
(2196, 'MMY', 'Miyako', 'Miyako', 'Japan'),
(2197, 'KTD', 'Kitadaito', 'Kitadaito', 'Japan'),
(2198, 'SHI', 'Shimojishima', 'Shimojishima', 'Japan'),
(2199, 'RNJ', 'Yoron', 'Yoron', 'Japan'),
(2200, 'OGN', 'Yonaguni', 'Yonaguni jima', 'Japan'),
(2201, 'MNL', 'Ninoy aquino international', 'Manila', 'Philippines'),
(2202, 'CEB', 'Cotabato', 'Cebu', 'Philippines'),
(2203, 'CGY', 'Cagayan de oro', 'Ladag', 'Philippines'),
(2204, 'MNL', 'Malabang', 'Manila', 'Philippines'),
(2205, 'LGP', 'Pagadian', 'Legazpi', 'Philippines'),
(2206, 'ZAM', 'Zamboanga international', 'Zamboanga', 'Philippines'),
(2207, 'BAG', 'Baguio', 'Baguio', 'Philippines'),
(2208, 'TAC', 'Daniel z romualdez', 'Tacloban', 'Philippines'),
(2209, 'BCD', 'Bacolod', 'Bacolod', 'Philippines'),
(2210, 'DGT', 'Dumaguete', 'Dumaguete', 'Philippines'),
(2211, 'ILO', 'Iloilo', 'Iloilo', 'Philippines'),
(2212, 'KLO', 'Kalibo', 'Kalibo', 'Philippines'),
(2213, 'NOP', 'Mactan international', 'Masbate', 'Philippines'),
(2214, 'PPS', 'Puerto princesa', 'Puerto princesa', 'Philippines'),
(2215, 'SJI', 'Antique', 'San jose', 'Philippines'),
(2216, 'COC', 'Comodoro pierrestegui', 'Concordia', 'Argentina'),
(2217, 'GHU', 'Gualeguaychu', 'Gualeguaychu', 'Argentina'),
(2218, 'PRA', 'General urquiza', 'Parana', 'Argentina'),
(2219, 'ROS', 'Rosario', 'Rosario', 'Argentina'),
(2220, 'SFN', 'Sauce viejo', 'Santa fe', 'Argentina'),
(2221, 'AEP', 'Aeroparque jorge newbery', 'Buenos aires', 'Argentina'),
(2222, 'COR', 'Ambrosio l v taravella', 'Cordoba', 'Argentina'),
(2223, 'LPG', 'La plata', 'La plata', 'Argentina'),
(2224, 'MDZ', 'El plumerillo', 'Mendoza', 'Argentina'),
(2225, 'LGS', 'Malargue', 'Malargue', 'Argentina'),
(2226, 'AFA', 'San rafael', 'San rafael', 'Argentina'),
(2227, 'CTC', 'Catamarca', 'Catamarca', 'Argentina'),
(2228, 'SDE', 'Santiago del estero', 'Santiago del estero', 'Argentina'),
(2229, 'IRJ', 'La rioja', 'La rioja', 'Argentina'),
(2230, 'TUC', 'Teniente benjamin matienzo', 'Tucuman', 'Argentina'),
(2231, 'UAQ', 'San juan', 'San julian', 'Argentina'),
(2232, 'RCU', 'Rio cuarto area de material', 'Rio cuarto', 'Argentina'),
(2233, 'VDR', 'Villa dolores', 'Villa dolores', 'Argentina'),
(2234, 'LUQ', 'San luis', 'San luis', 'Argentina'),
(2235, 'CNQ', 'Corrientes', 'Corrientes', 'Argentina'),
(2236, 'RES', 'Resistencia', 'Resistencia', 'Argentina'),
(2237, 'FMA', 'Formosa', 'Formosa', 'Argentina'),
(2238, 'IGR', 'Cataratas del iguazu', 'Iguazu falls', 'Argentina'),
(2239, 'AOL', 'Paso de los libres', 'Paso de los libres', 'Argentina'),
(2240, 'PSS', 'Posadas', 'Posadas', 'Argentina'),
(2241, 'SLA', 'Salta', 'Salta', 'Argentina'),
(2242, 'JUJ', 'Jujuy', 'Jujuy', 'Argentina'),
(2243, 'ORA', 'Oran', 'Oran', 'Argentina'),
(2244, 'EHL', 'El bolson', 'El bolson', 'Argentina'),
(2245, 'CRD', 'Comodoro rivadavia', 'Comodoro rivadavia', 'Argentina'),
(2246, 'EMX', 'El maiten', 'El maiten', 'Argentina'),
(2247, 'EQS', 'Esquel', 'Esquel', 'Argentina'),
(2248, 'REL', 'Almirante zar', 'Trelew', 'Argentina'),
(2249, 'VDM', 'Gobernador castello', 'Viedma', 'Argentina'),
(2250, 'PMY', 'El tehuelche', 'Puerto madryn', 'Argentina'),
(2251, 'ING', 'Lago argentino', 'Lago argentino', 'Argentina'),
(2252, 'PUD', 'Puerto deseado', 'Puerto deseado', 'Argentina'),
(2253, 'RGA', 'Rio grande', 'Rio grande', 'Argentina'),
(2254, 'RGL', 'Rio gallegos', 'Rio gallegos', 'Argentina'),
(2255, 'USH', 'Ushuaia malvinas argentinas', 'Ushuaia', 'Argentina'),
(2256, 'ULA', 'San julian', 'San julian', 'Argentina'),
(2257, 'JSM', 'Jose de san martin', 'Jose de san martin', 'Argentina'),
(2258, 'RYO', 'El turbio', 'Rio turbio', 'Argentina'),
(2259, 'RZA', 'Santa cruz', 'Santa cruz', 'Argentina'),
(2260, 'BHI', 'Comandante espora', 'Bahia blanca', 'Argentina'),
(2261, 'MDQ', 'Mar del plata', 'Mar del plata', 'Argentina'),
(2262, 'NQN', 'Presidente peron', 'Neuquen', 'Argentina'),
(2263, 'RSA', 'Santa rosa', 'Santa rosa', 'Argentina'),
(2264, 'BRC', 'San carlos de bariloche', 'San carlos de bariloch', 'Argentina'),
(2265, 'TDL', 'Tandil', 'Tandil', 'Argentina'),
(2266, 'VLG', 'Villa gesell', 'Villa gesell', 'Argentina'),
(2267, 'CPC', 'Aviador c campos', 'San martin des andes', 'Argentina'),
(2268, 'CDJ', 'Unknown', 'Conceicao do araguaia', 'Brazil'),
(2269, 'AQA', 'Araraquara', 'Araracuara', 'Brazil'),
(2270, 'AJU', 'Santa maria', 'Aracaju', 'Brazil'),
(2271, 'AFL', 'Alta floresta', 'Alta floresta', 'Brazil'),
(2272, 'ARU', 'Aracatuba', 'Aracatuba', 'Brazil'),
(2273, 'BEL', 'Val de caes', 'Belem', 'Brazil'),
(2274, 'BGX', 'Comandante gustavo kraemer', 'Bage', 'Brazil'),
(2275, 'PLU', 'Pampulha', 'Belo horizonte', 'Brazil'),
(2276, 'BFH', 'Bacacheri', 'Curitiba', 'Brazil'),
(2277, 'BSB', 'Presidente juscelino kubitschek', 'Brasilia', 'Brazil'),
(2278, 'BAU', 'Bauru', 'Bauru', 'Brazil'),
(2279, 'BVB', 'Boa vista', 'Boa vista', 'Brazil'),
(2280, 'CAC', 'Cascavel', 'Cascavel', 'Brazil'),
(2281, 'CNF', 'Tancredo neves', 'Belo horizonte', 'Brazil'),
(2282, 'CGR', 'Campo grande', 'Campo grande', 'Brazil'),
(2283, 'XAP', 'Chapeco', 'Chapeco', 'Brazil'),
(2284, 'CLN', 'Carolina', 'Carolina', 'Brazil'),
(2285, 'CAW', 'Bartolomeu lisandro', 'Campos', 'Brazil'),
(2286, 'CMG', 'Corumba international', 'Corumba', 'Brazil'),
(2287, 'CWB', 'Afonso pena', 'Curitiba', 'Brazil'),
(2288, 'CRQ', 'Caravelas', 'Caravelas', 'Brazil'),
(2289, 'CXJ', 'Campo dos bugres', 'Caxias do sul', 'Brazil'),
(2290, 'CGB', 'Marechal rondon', 'Cuiaba', 'Brazil'),
(2291, 'CZS', 'Cruzeiro do sul', 'Cruiziro do sul', 'Brazil'),
(2292, 'PPB', 'Presidente prudente', 'President prudente', 'Brazil'),
(2293, 'MAO', 'Eduardo gomes international', 'Manaus', 'Brazil'),
(2294, 'FRC', 'Franca', 'Franca', 'Brazil'),
(2295, 'IGU', 'Cataratas international', 'Foz do iguacu', 'Brazil'),
(2296, 'FLN', 'Hercilio luz', 'Florianopolis', 'Brazil'),
(2297, 'FEN', 'Fernando de noronha', 'Fernando do noronha', 'Brazil'),
(2298, 'FOR', 'Pinto martins international', 'Fortaleza', 'Brazil'),
(2299, 'GIG', 'Galeao antonio carlos jobim', 'Rio de janeiro', 'Brazil'),
(2300, 'GYN', 'Santa genoveva', 'Goiania', 'Brazil'),
(2301, 'GRU', 'Guarulhos', 'Sao paulo', 'Brazil'),
(2302, 'ATM', 'Altamira', 'Altamira', 'Brazil'),
(2303, 'IOS', 'Ilheus', 'Ilheus', 'Brazil'),
(2304, 'IPN', 'Usiminas', 'Ipatinga', 'Brazil'),
(2305, 'IMP', 'Imperatriz', 'Imperatriz', 'Brazil'),
(2306, 'JDF', 'Francisco de assis', 'Juiz de fora', 'Brazil'),
(2307, 'JPA', 'Intl. pres. castro pinto', 'Joao pessoa', 'Brazil'),
(2308, 'JOI', 'Joinville', 'Joinville', 'Brazil'),
(2309, 'VCP', 'Viracopos', 'Campinas', 'Brazil'),
(2310, 'LIP', 'Lins', 'Lins', 'Brazil'),
(2311, 'LDB', 'Londrina', 'Londrina', 'Brazil'),
(2312, 'LAZ', 'Bom jesus da lapa', 'Bom jesus da lapa', 'Brazil'),
(2313, 'MAB', 'Maraba', 'Maraba', 'Brazil'),
(2314, 'MGF', 'Maringa', 'Maringa', 'Brazil'),
(2315, 'MOC', 'Montes claros', 'Montes claros', 'Brazil'),
(2316, 'MCZ', 'Zumbi dos palmares', 'Maceio', 'Brazil'),
(2317, 'MCP', 'Macapa', 'Macapa', 'Brazil'),
(2318, 'NVT', 'Navegantes itajai', 'Navegantes', 'Brazil'),
(2319, 'GEL', 'Santo angelo', 'Santo angelo', 'Brazil'),
(2320, 'NAT', 'Augusto severo', 'Natal', 'Brazil'),
(2321, 'POA', 'Salgado filho', 'Porto alegre', 'Brazil'),
(2322, 'POO', 'Pocos de caldas', 'Pocos de caldas', 'Brazil'),
(2323, 'PFB', 'Lauro kurtz', 'Passo fundo', 'Brazil'),
(2324, 'PET', 'Pelotas', 'Pelotas', 'Brazil'),
(2325, 'PNZ', 'Petrolina', 'Petrolina', 'Brazil'),
(2326, 'PNB', 'Porto nacional', 'Porto nacional', 'Brazil'),
(2327, 'PMG', 'Ponta pora', 'Ponta pora', 'Brazil'),
(2328, 'PVH', 'Governador jorge teixeira de oliveira', 'Porto velho', 'Brazil'),
(2329, 'RBR', 'Presidente medici', 'Rio branco', 'Brazil'),
(2330, 'REC', 'Guararapes', 'Recife', 'Brazil'),
(2331, 'RIG', 'Rio grande', 'Rio grande', 'Brazil'),
(2332, 'SDU', 'Santos dumont', 'Rio de janeiro', 'Brazil'),
(2333, 'RAO', 'Leite lopes', 'Ribeirao preto', 'Brazil'),
(2334, 'STU', 'Santa cruz', 'Rio de janeiro', 'Brazil'),
(2335, 'SJK', 'Sao jose dos campos', 'Sao jose dos campos', 'Brazil'),
(2336, 'SLZ', 'Marechal cunha machado', 'Sao luis', 'Brazil'),
(2337, 'STM', 'Santa maria', 'Santarem', 'Brazil'),
(2338, 'CGH', 'Congonhas', 'Sao paulo', 'Brazil'),
(2339, 'SJP', 'Sao jose do rio preto', 'Sao jose do rio preto', 'Brazil'),
(2340, 'SSZ', 'Santos air base', 'Santos', 'Brazil'),
(2341, 'SSA', 'Deputado luis eduardo magalhaes', 'Salvador', 'Brazil'),
(2342, 'THE', 'Senador petronio portella', 'Teresina', 'Brazil'),
(2343, 'TFF', 'Tefe', 'Tefe', 'Brazil'),
(2344, 'TBT', 'Tabatinga', 'Tabatinga', 'Brazil'),
(2345, 'TUR', 'Tucurui', 'Tucurui', 'Brazil'),
(2346, 'PAV', 'Paulo afonso', 'Paulo alfonso', 'Brazil'),
(2347, 'URG', 'Rubem berta', 'Uruguaiana', 'Brazil'),
(2348, 'UDI', 'Uberlandia', 'Uberlandia', 'Brazil'),
(2349, 'UBA', 'Uberaba', 'Uberaba', 'Brazil'),
(2350, 'VAG', 'Major brigadeiro trompowsky', 'Varginha', 'Brazil'),
(2351, 'BVH', 'Vilhena', 'Vilhena', 'Brazil'),
(2352, 'VIX', 'Goiabeiras', 'Vitoria', 'Brazil'),
(2353, 'QPS', 'Campo fontenelle', 'Piracununga', 'Brazil'),
(2354, 'ZUD', 'Pupelde', 'Ancud', 'Chile'),
(2355, 'WAP', 'Alto palena', 'Alto palena', 'Chile'),
(2356, 'ARI', 'Chacalluta', 'Arica', 'Chile'),
(2357, 'BBA', 'Balmaceda', 'Balmaceda', 'Chile'),
(2358, 'CCH', 'Chile chico', 'Chile chico', 'Chile'),
(2359, 'CJC', 'El loa', 'Calama', 'Chile'),
(2360, 'PUQ', 'Carlos ibanez del campo international', 'Punta arenas', 'Chile'),
(2361, 'GXQ', 'Teniente vidal', 'Coyhaique', 'Chile'),
(2362, 'IQQ', 'Diego aracena international', 'Iquique', 'Chile'),
(2363, 'SCL', 'Arturo merino benitez international', 'Santiago', 'Chile'),
(2364, 'ANF', 'Cerro moreno international', 'Antofagasta', 'Chile'),
(2365, 'LSQ', 'Maria dolores', 'Los angeles', 'Chile'),
(2366, 'CPO', 'Chamonate', 'Copiapo', 'Chile'),
(2367, 'CCP', 'Carriel sur international', 'Concepcion', 'Chile'),
(2368, 'IPC', 'Mataveri international', 'Easter island', 'Chile'),
(2369, 'ZOS', 'Canal bajo carlos hott siebert', 'Osorno', 'Chile'),
(2370, 'LSC', 'La florida', 'La serena', 'Chile'),
(2371, 'ZCO', 'Maquehue', 'Temuco', 'Chile'),
(2372, 'PMC', 'El tepual international', 'Puerto montt', 'Chile'),
(2373, 'ULC', 'Los cerrillos', 'Santiago', 'Chile'),
(2374, 'WCH', 'Chaiten', 'Chaiten', 'Chile'),
(2375, 'ZAL', 'Pichoy', 'Valdivia', 'Chile'),
(2376, 'ATF', 'Chachoan', 'Ambato', 'Ecuador'),
(2377, 'OCC', 'Francisco de orellana', 'Coca', 'Ecuador'),
(2378, 'CUE', 'Mariscal lamar', 'Cuenca', 'Ecuador'),
(2379, 'GPS', 'Seymour', 'Galapagos', 'Galapagos i. (ecuador'),
(2380, 'GYE', 'Simon bolivar international', 'Guayaquil', 'Ecuador'),
(2381, 'LGQ', 'Lago agrio', 'Lago agrio', 'Ecuador'),
(2382, 'XMS', 'Macas', 'Macas', 'Ecuador'),
(2383, 'MCH', 'General serrano', 'Machala', 'Ecuador'),
(2384, 'MEC', 'Eloy alfaro international', 'Manta', 'Ecuador'),
(2385, 'PVO', 'Reales tamarindos', 'Portoviejo', 'Ecuador'),
(2386, 'UIO', 'Mariscal sucre international', 'Quito', 'Ecuador'),
(2387, 'SNC', 'General ulpiano paez', 'Salinas', 'Ecuador'),
(2388, 'TPC', 'Tarapoa', 'Tarapoa', 'Ecuador'),
(2389, 'TUA', 'El rosal teniente mantilla', 'Tulcan', 'Ecuador'),
(2390, 'ASU', 'Silvio pettirossi international', 'Asuncion', 'Paraguay'),
(2391, 'AXM', 'El eden', 'Armenia', 'Colombia'),
(2392, 'PUU', 'Tres de mayo', 'Puerto asis', 'Colombia'),
(2393, 'BGA', 'Palonegro', 'Bucaramanga', 'Colombia'),
(2394, 'BOG', 'El dorado', 'Bogota', 'Colombia'),
(2395, 'BAQ', 'Ernesto cortissoz', 'Barranquilla', 'Colombia'),
(2396, 'BSC', 'Jose celestino mutis', 'Bahia solano', 'Colombia'),
(2397, 'BUN', 'Gerardo tobar lopez', 'Buenaventura', 'Colombia'),
(2398, 'CUC', 'Camilo daza', 'Cucuta', 'Colombia'),
(2399, 'COG', 'Mandinga', 'Condoto', 'Colombia'),
(2400, 'CTG', 'Rafael nunez', 'Cartagena', 'Colombia'),
(2401, 'CLO', 'Alfonso bonilla aragon international', 'Cali', 'Colombia'),
(2402, 'TCO', 'La florida', 'Tumaco', 'Colombia'),
(2403, 'CZU', 'Las brujas', 'Corozal', 'Colombia'),
(2404, 'EJA', 'Yariguies', 'Barrancabermeja', 'Colombia'),
(2405, 'FLA', 'Gustavo artunduaga paredes', 'Florencia', 'Colombia'),
(2406, 'GPI', 'Guapi', 'Guapi', 'Colombia'),
(2407, 'IBE', 'Perales', 'Ibague', 'Colombia'),
(2408, 'IPI', 'San luis', 'Ipiales', 'Colombia'),
(2409, 'LET', 'Alfredo vasquez cobo', 'Leticia', 'Colombia'),
(2410, 'EOH', 'Olaya herrera', 'Medellin', 'Colombia'),
(2411, 'MGN', 'Baracoa', 'Magangue', 'Colombia'),
(2412, 'MTR', 'Los garzones', 'Monteria', 'Colombia'),
(2413, 'MVP', 'Fabio alberto leon bentley', 'Mitu', 'Colombia'),
(2414, 'MZL', 'La nubia', 'Manizales', 'Colombia'),
(2415, 'NVA', 'Benito salas', 'Neiva', 'Colombia'),
(2416, 'OCV', 'Aguas claras', 'Ocana', 'Colombia'),
(2417, 'OTU', 'Otu', 'Otu', 'Colombia'),
(2418, 'PCR', 'Puerto carreno', 'Puerto carreno', 'Colombia'),
(2419, 'PEI', 'Matecana', 'Pereira', 'Colombia'),
(2420, 'PPN', 'Guillermo leon valencia', 'Popayan', 'Colombia'),
(2421, 'PSO', 'Antonio narino', 'Pasto', 'Colombia'),
(2422, 'PVA', 'El embrujo', 'Providencia', 'Colombia'),
(2423, 'MDE', 'Jose maria cordova', 'Medellin', 'Colombia'),
(2424, 'RCH', 'Almirante padilla', 'Riohacha', 'Colombia'),
(2425, 'RVE', 'Los colonizadores', 'Saravena', 'Colombia'),
(2426, 'SJE', 'Jorge e gonzalez torres', 'San jose del guaviare', 'Colombia'),
(2427, 'SMR', 'Simon bolivar', 'Santa marta', 'Colombia'),
(2428, 'ADZ', 'Gustavo rojas pinilla', 'San andres island', 'Colombia'),
(2429, 'SVI', 'Eduardo falla solano', 'San vincente de caguan', 'Colombia'),
(2430, 'TDA', 'Trinidad', 'Trinidad', 'Colombia'),
(2431, 'TME', 'Tame', 'Tame', 'Colombia'),
(2432, 'TRB', 'Gonzalo mejia', 'Turbo', 'Colombia'),
(2433, 'AUC', 'Santiago perez', 'Arauca', 'Colombia'),
(2434, 'UIB', 'El carano', 'Quibdo', 'Colombia'),
(2435, 'ULQ', 'Farfan', 'Tulua', 'Colombia'),
(2436, 'VUP', 'Alfonso lopez pumarejo', 'Valledupar', 'Colombia'),
(2437, 'VVC', 'Vanguardia', 'Villavicencio', 'Colombia'),
(2438, 'APB', 'Apolo', 'Apolo', 'Bolivia'),
(2439, 'BJO', 'Bermejo', 'Bermejo', 'Bolivia'),
(2440, 'CAM', 'Camiri', 'Camiri', 'Bolivia'),
(2441, 'CBB', 'Jorge wilsterman', 'Cochabamba', 'Bolivia'),
(2442, 'CIJ', 'Capitan anibal arab', 'Cobija', 'Bolivia'),
(2443, 'CEP', 'Concepcion', 'Conception', 'Bolivia'),
(2444, 'GYA', 'Cap de av emilio beltran', 'Guayaramerin', 'Bolivia'),
(2445, 'SJB', 'San joaquin', 'San joaquin', 'Bolivia'),
(2446, 'LPB', 'El alto international', 'La paz', 'Bolivia'),
(2447, 'MGD', 'Magdalena', 'Magdalena', 'Bolivia'),
(2448, 'POI', 'Capitan nicolas rojas', 'Potosi', 'Bolivia'),
(2449, 'PSZ', 'Cap de av salvador ogaya g', 'Puerto suarez', 'Bolivia'),
(2450, 'RIB', 'Cap de av selin zeitun lopez', 'Riberalta', 'Bolivia'),
(2451, 'RBQ', 'Rurrenabaque', 'Rurrenabaque', 'Bolivia'),
(2452, 'SRJ', 'Capitan german quiroga g', 'San borja', 'Bolivia'),
(2453, 'SRE', 'Juana azurduy de padilla', 'Sucre', 'Bolivia'),
(2454, 'TJA', 'Capitan oriel lea plaza', 'Tarija', 'Bolivia'),
(2455, 'TDD', 'Tte av jorge henrich arauz', 'Trinidad', 'Bolivia'),
(2456, 'VVI', 'Viru viru international', 'Santa cruz', 'Bolivia'),
(2457, 'PBM', 'Johan a pengel international', 'Zandery', 'Surinam'),
(2458, 'ORG', 'Zorg en hoop', 'Paramaribo', 'Surinam'),
(2459, 'CAY', 'Rochambeau', 'Cayenne', 'French guyana'),
(2460, 'PCL', 'Cap fap david avenzur rengifo', 'Pucallpa', 'Peru'),
(2461, 'CHM', 'Teniente fap jaime a de montr morales', 'Chimbote', 'Peru'),
(2462, 'TGI', 'Tingo maria', 'Tingo maria', 'Peru'),
(2463, 'CIX', 'Capt jose abelardo quinones gonzales', 'Chiclayo', 'Peru'),
(2464, 'AYP', 'Coronel fap alfredo mendivil duarte', 'Ayacucho', 'Peru'),
(2465, 'ANS', 'Andahuaylas', 'Andahuaylas', 'Peru'),
(2466, 'ATA', 'Commandante fap german arias grazziani', 'Anta', 'Peru'),
(2467, 'LIM', 'Jorge chavez international', 'Lima', 'Peru'),
(2468, 'JJI', 'Juanjui', 'Juanjui', 'Peru'),
(2469, 'JUL', 'Juliaca', 'Juliaca', 'Peru'),
(2470, 'TBP', 'Pedro canga', 'Tumbes', 'Peru'),
(2471, 'YMS', 'Moises benzaquen rengifo', 'Yurimaguas', 'Peru'),
(2472, 'CHH', 'Chachapoyas', 'Chachapoyas', 'Peru'),
(2473, 'IQT', 'Coronel fap francisco secada vignetta', 'Iquitos', 'Peru'),
(2474, 'AQP', 'Rodriguez ballon', 'Arequipa', 'Peru'),
(2475, 'TRU', 'Capitan carlos martinez de pinillos', 'Trujillo', 'Peru'),
(2476, 'PIO', 'Pisco', 'Pisco', 'Peru'),
(2477, 'TPP', 'Tarapoto', 'Tarapoto', 'Peru'),
(2478, 'TCQ', 'Coronel fap carlos ciriani santa rosa', 'Tacna', 'Peru'),
(2479, 'PEM', 'Padre aldamiz', 'Puerto maldonado', 'Peru'),
(2480, 'PIU', 'Capitan concha', 'Piura', 'Peru'),
(2481, 'TYL', 'Capitan montes', 'Talara', 'Peru'),
(2482, 'CUZ', 'Velazco astete', 'Cuzco', 'Peru'),
(2483, 'MVD', 'Angel s adami', 'Montevideo', 'Uruguay'),
(2484, 'ATI', 'Artigas international', 'Artigas', 'Uruguay'),
(2485, 'CYR', 'Laguna de los patos international', 'Colonia', 'Uruguay'),
(2486, 'MLZ', 'Cerro largo', 'Melo', 'Uruguay'),
(2487, 'MVD', 'Carrasco international', 'Montevideo', 'Uruguay'),
(2488, 'PDP', 'El jaguel international', 'Punta del este', 'Uruguay'),
(2489, 'PDU', 'Tydeo larre borges international', 'Paysandu', 'Uruguay'),
(2490, 'RVY', 'Rivera international', 'Rivera', 'Uruguay'),
(2491, 'STY', 'Nueva hesperides international', 'Salto', 'Uruguay'),
(2492, 'TAW', 'Tacuarembo', 'Tacuarembo', 'Uruguay'),
(2493, 'AGV', 'Oswaldo guevara mujica', 'Acarigua', 'Venezuela'),
(2494, 'AAO', 'Anaco', 'Anaco', 'Venezuela'),
(2495, 'BLA', 'General jose antonio anzoategui international', 'Barcelona', 'Venezuela'),
(2496, 'BNS', 'Barinas', 'Barinas', 'Venezuela'),
(2497, 'BRM', 'Barquisimeto international', 'Barquisimeto', 'Venezuela'),
(2498, 'CBL', 'Ciudad bolivar', 'Ciudad bolivar', 'Venezuela'),
(2499, 'CAJ', 'Canaima', 'Canaima', 'Venezuela'),
(2500, 'CUP', 'General jose francisco bermudez', 'Carupano', 'Venezuela'),
(2501, 'CZE', 'Jose leonardo chirinos', 'Coro', 'Venezuela'),
(2502, 'CUM', 'Antonio jose de sucre', 'Cumana', 'Venezuela'),
(2503, 'GUI', 'Guiria', 'Guiria', 'Venezuela'),
(2504, 'GUQ', 'Guanare', 'Guanare', 'Venezuela'),
(2505, 'LSP', 'Josefa camejo', 'Paraguana', 'Venezuela'),
(2506, 'LFR', 'La fria', 'La fria', 'Venezuela'),
(2507, 'MAR', 'La chinita international', 'Maracaibo', 'Venezuela'),
(2508, 'MRD', 'Alberto carnevalli', 'Merida', 'Venezuela'),
(2509, 'PMV', 'Del caribe international gen santago marino', 'Porlamar', 'Venezuela'),
(2510, 'CCS', 'Simon bolivar international', 'Caracas', 'Venezuela'),
(2511, 'MUN', 'Maturin', 'Maturin', 'Venezuela'),
(2512, 'PYH', 'Casique aramare', 'Puerto ayacucho', 'Venezuela'),
(2513, 'PBL', 'General bartolome salom international', 'Puerto cabello', 'Venezuela'),
(2514, 'PZO', 'General manuel carlos piar', 'Guayana', 'Venezuela'),
(2515, 'SVZ', 'San antonio del tachira', 'San antonio', 'Venezuela'),
(2516, 'STD', 'Mayor buenaventura vivas', 'Santo domingo', 'Venezuela'),
(2517, 'SFH', 'Sub teniente nestor arias', 'San felipe', 'Venezuela'),
(2518, 'SFD', 'San fernando de apure', 'San fernando de apure', 'Venezuela'),
(2519, 'SOM', 'San tome', 'San tome', 'Venezuela'),
(2520, 'STB', 'Santa barbara del zulia', 'Santa barbara', 'Venezuela'),
(2521, 'TUV', 'Tucupita', 'Tucupita', 'Venezuela'),
(2522, 'VLN', 'Arturo michelena international', 'Valencia', 'Venezuela'),
(2523, 'VLV', 'Dr antonio nicolas briceno', 'Valera', 'Venezuela'),
(2524, 'VDP', 'Valle de la pascua', 'Valle de la pascua', 'Venezuela'),
(2525, 'KAR', 'Kamarang', 'Kamarang', 'Guyana'),
(2526, 'LTM', 'Lethem', 'Lethem', 'Guyana'),
(2527, 'ANU', 'V c bird international', 'Antigua', 'Leeward islands'),
(2528, 'BGI', 'Grantley adams international', 'Bridgetown', 'Barbados'),
(2529, 'DCF', 'Canefield', 'Canefield', 'Dominica'),
(2530, 'DOM', 'Melville hall', 'Dominica', 'Dominica'),
(2531, 'FDF', 'Le lamentin', 'Fort-de-france', 'Antilles'),
(2532, 'SFG', 'Grand case', 'St. martin', 'Antilles'),
(2533, 'SBH', 'Gustavia/st.barthel', 'St.-barthelemy', 'Antilles'),
(2534, 'PTP', 'Le raizet', 'Pointe-a-pitre', 'Antilles'),
(2535, 'GND', 'Point salines international', 'Point salines', 'Grenada'),
(2536, 'STT', 'Cyril e king', 'St. thomas', 'Virgin isl.'),
(2537, 'STX', 'Henry e rohlsen', 'St. criox island', 'Virgin isl.'),
(2538, 'BQN', 'Rafael hernandez', 'Aguadilla', 'Puerto rico'),
(2539, 'FAJ', 'Diego jimenez torres', 'Fajardo', 'Puerto rico'),
(2540, 'SIG', 'Fernando luis ribas dominicci', 'San juan', 'Puerto rico'),
(2541, 'MAZ', 'Eugenio maria de hostos', 'Mayaguez', 'Puerto rico'),
(2542, 'NRR', 'Roosevelt roads ns', 'Roosevelt roads', 'Puerto rico'),
(2543, 'PSE', 'Mercedita', 'Ponce', 'Puerto rico'),
(2544, 'SJU', 'Luis munoz marin international', 'San juan', 'Puerto rico'),
(2545, 'SKB', 'Robert l bradshaw', 'Basse terre', 'St. kitts & nevis'),
(2546, 'SLU', 'George f l charles', 'Castries', 'St. lucia island'),
(2547, 'UVF', 'Hewanorra international', 'Hewandorra', 'St. lucia island'),
(2548, 'AUA', 'Reina beatrix international', 'Oranjestad', 'Aruba'),
(2549, 'BON', 'Flamingo', 'Kralendijk', 'Antilles'),
(2550, 'CUR', 'Hato', 'Willemstad', 'Antilles'),
(2551, 'EUX', 'F d roosevelt', 'Oranjestad', 'Antilles'),
(2552, 'SXM', 'Princess juliana international', 'Philipsburg', 'Antilles'),
(2553, 'AXA', 'Wallblake', 'The valley', 'Anguilla isl.'),
(2554, 'MNI', 'Santee cooper rgnl', 'Plymouth', 'Montserrat island'),
(2555, 'TAB', 'Crown point', 'Scarborough', 'Trinidad & tobago'),
(2556, 'POS', 'Piarco', 'Port-of-spain', 'Trinidad & tobago'),
(2557, 'EIS', 'Terrance b lettsome international', 'Roadtown/beef island', 'Virgin isl.'),
(2558, 'CIW', 'Canouan', 'Canouan island', 'St.vincent/grenadines'),
(2559, 'MQS', 'Mustique', 'Mustique', 'St.vincent/grenadines'),
(2560, 'SVD', 'E t joshua', 'Kingstown', 'St.vincent/grenadines'),
(2561, 'ALA', 'Almaty', 'Alma-ata', 'Kazakhstan'),
(2562, 'TSE', 'Astana', 'Tselinograd', 'Russia'),
(2563, 'FRU', 'Manas', 'Bishkek', 'Russia'),
(2564, 'OSS', 'Osh', 'Osh', 'Russia'),
(2565, 'CIT', 'Shymkent', 'Chimkent', 'Russia'),
(2566, 'DZH', 'Zhezkazgan', 'Dzhezkazgan', 'Russia'),
(2567, 'URA', 'Uralsk', 'Uralsk', 'Russia'),
(2568, 'PLX', 'Semipalatinsk', 'Semiplatinsk', 'Russia'),
(2569, 'AKX', 'Aktyubinsk', 'Aktyubinsk', 'Russia'),
(2570, 'KTQ', 'Kostanay', 'Kustanay', 'Russia'),
(2571, 'BAK', 'Bina', 'Baku', 'Russia'),
(2572, 'ADH', 'Ada muni', 'Aldan', 'Russia'),
(2573, 'YKS', 'Yakutsk', 'Yakutsk', 'Russia'),
(2574, 'EVN', 'Zvartnots', 'Yerevan', 'Russia'),
(2575, 'TBS', 'Lochini', 'Tbilisi', 'Georgia'),
(2576, 'SUI', 'Sukhumi dranda', 'Sukhumi', 'Georgia'),
(2577, 'BQS', 'Ignatyevo', 'Blagoveschensk', 'Russia'),
(2578, 'KHV', 'Novy', 'Khabarovsk', 'Russia'),
(2579, 'PVS', 'Provideniya bay', 'Provideniya bay', 'Russia'),
(2580, 'GDX', 'Sokol', 'Magadan', 'Russia'),
(2581, 'PKC', 'Yelizovo', 'Petropavlovsk', 'Russia'),
(2582, 'UUS', 'Khomutovo', 'Yuzhno-sakhalinsk', 'Russia'),
(2583, 'VVO', 'Knevichi', 'Vladivostok', 'Russia'),
(2584, 'HTA', 'Kadala', 'Chita', 'Russia'),
(2585, 'BTK', 'Bratsk', 'Bratsk', 'Russia'),
(2586, 'IKT', 'Irkutsk', 'Irkutsk', 'Russia'),
(2587, 'UUD', 'Mukhino', 'Ulan-ude', 'Russia'),
(2588, 'KBP', 'Boryspil', 'Kiev', 'Russia'),
(2589, 'DOK', 'Donetsk', 'Donetsk', 'Russia'),
(2590, 'DNK', 'Dnipropetrovsk', 'Dnepropetrovsk', 'Russia'),
(2591, 'SIP', 'Simferopol', 'Simferopol', 'Russia'),
(2592, 'KGO', 'Kirovograd', 'Kirovograd', 'Russia'),
(2593, 'IEV', 'Zhuliany', 'Kiev', 'Russia'),
(2594, 'LWO', 'Lviv', 'Lvov', 'Russia'),
(2595, 'ODS', 'Odesa', 'Odessa', 'Russia'),
(2596, 'LED', 'Pulkovo', 'St. petersburg', 'Russia'),
(2597, 'MMK', 'Murmansk', 'Murmansk', 'Russia'),
(2598, 'GME', 'Gomel', 'Gomel', 'Russia'),
(2599, 'VTB', 'Vitebsk', 'Vitebsk', 'Russia'),
(2600, 'KGD', 'Khrabrovo', 'Kaliningrad', 'Russia'),
(2601, 'MHP', 'Minsk 1', 'Minsk', 'Russia'),
(2602, 'MSQ', 'Minsk 2', 'Minsk 2', 'Russia'),
(2603, 'ABA', 'Abakan', 'Abakan', 'Russia'),
(2604, 'BAX', 'Barnaul', 'Barnaul', 'Russia'),
(2605, 'KEJ', 'Kemerovo', 'Kemorovo', 'Russia'),
(2606, 'OMS', 'Tsentralny', 'Omsk', 'Russia'),
(2607, 'KRR', 'Pashkovsky', 'Krasnodar', 'Russia'),
(2608, 'MCX', 'Uytash', 'Makhachkala', 'Russia'),
(2609, 'MRV', 'Mineralnyye vody', 'Mineralnye vody', 'Russia'),
(2610, 'STW', 'Shpakovskoye', 'Stavropol', 'Russia'),
(2611, 'ROV', 'Rostov na donu', 'Rostov', 'Russia'),
(2612, 'AER', 'Sochi', 'Sochi', 'Russia'),
(2613, 'ASF', 'Astrakhan', 'Astrakhan', 'Russia'),
(2614, 'VOG', 'Gumrak', 'Volgograd', 'Russia'),
(2615, 'CEK', 'Balandino', 'Chelyabinsk', 'Russia'),
(2616, 'MQF', 'Magnitogorsk', 'Magnetiogorsk', 'Russia'),
(2617, 'NJC', 'Nizhnevartovsk', 'Nizhnevartovsk', 'Russia'),
(2618, 'PEE', 'Bolshoye savino', 'Perm', 'Russia'),
(2619, 'SGC', 'Surgut', 'Surgut', 'Russia'),
(2620, 'SVX', 'Koltsovo', 'Sverdlovsk', 'Russia'),
(2621, 'TOX', 'Cabool mem', 'Tobolsk', 'Russia'),
(2622, 'KRO', 'Kurgan', 'Kurgan', 'Russia'),
(2623, 'ASB', 'Ashgabat', 'Ashkhabad', 'Russia'),
(2624, 'KRW', 'Turkmenbashi airport', 'Krasnovodsk', 'Russia'),
(2625, 'DYU', 'Dushanbe', 'Dushanbe', 'Russia'),
(2626, 'NCU', 'Nukus', 'Nukus', 'Russia'),
(2627, 'BHK', 'Bukhara', 'Bukhara', 'Russia'),
(2628, 'SKD', 'Samarkand', 'Samarkand', 'Russia'),
(2629, 'TAS', 'Yuzhny', 'Tashkent', 'Uzbekistan'),
(2630, 'BZK', 'Bryansk', 'Bryansk', 'Russia'),
(2631, 'SVO', 'Sheremetyevo', 'Moscow', 'Russia'),
(2632, 'KLD', 'Migalovo', 'Tver', 'Russia'),
(2633, 'VOZ', 'Chertovitskoye', 'Voronezh', 'Russia'),
(2634, 'VKO', 'Vnukovo', 'Moscow', 'Russia'),
(2635, 'SCW', 'Syktyvkar', 'Syktyvkar', 'Russia'),
(2636, 'KZN', 'Kazan', 'Kazan', 'Russia'),
(2637, 'REN', 'Orenburg', 'Orenburg', 'Russia'),
(2638, 'PEZ', 'Pleasanton muni', 'Penza', 'Russia'),
(2639, 'UFA', 'Ufa', 'Ufa', 'Russia'),
(2640, 'KBY', 'Kurumoch', 'Samara', 'Russia'),
(2641, 'AMD', 'Ahmedabad', 'Ahmedabad', 'India'),
(2642, 'AKD', 'Akola', 'Akola', 'India'),
(2643, 'IXU', 'Aurangabad', 'Aurangabad', 'India'),
(2644, 'BOM', 'Chhatrapati shivaji international', 'Bombay', 'India'),
(2645, 'PAB', 'Bilaspur', 'Bilaspur', 'India'),
(2646, 'BHJ', 'Bhuj', 'Bhuj', 'India'),
(2647, 'IXG', 'Belgaum', 'Belgaum', 'India'),
(2648, 'BDQ', 'Vadodara', 'Baroda', 'India'),
(2649, 'BHO', 'Bhopal', 'Bhopal', 'India'),
(2650, 'BHU', 'Bhavnagar', 'Bhaunagar', 'India'),
(2651, 'NMB', 'Daman', 'Daman', 'India'),
(2652, 'GOI', 'Goa', 'Goa', 'India'),
(2653, 'IDR', 'Devi ahilyabai holkar', 'Indore', 'India'),
(2654, 'JLR', 'Jabalpur', 'Jabalpur', 'India'),
(2655, 'JGA', 'Jamnagar', 'Jamnagar', 'India'),
(2656, 'IXY', 'Kandla', 'Kandla', 'India'),
(2657, 'HJR', 'Khajuraho', 'Khajuraho', 'India'),
(2658, 'KLH', 'Kolhapur', 'Kolhapur', 'India'),
(2659, 'IXK', 'Keshod', 'Keshod', 'India'),
(2660, 'NAG', 'Nagpur', 'Nagpur', 'India'),
(2661, 'ISK', 'Nasik road', 'Nasik road', 'India'),
(2662, 'PNQ', 'Pune', 'Pune', 'India'),
(2663, 'PBD', 'Porbandar', 'Porbandar', 'India'),
(2664, 'RAJ', 'Rajkot', 'Rajkot', 'India'),
(2665, 'RPR', 'Raipur', 'Raipur', 'India'),
(2666, 'SSE', 'Sholapur', 'Sholapur', 'India'),
(2667, 'STV', 'Surat', 'Surat', 'India'),
(2668, 'UDR', 'Udaipur', 'Udaipur', 'India'),
(2669, 'CMB', 'Bandaranaike international', 'Colombo', 'Sri lanka'),
(2670, 'RML', 'Colombo ratmalana', 'Colombo', 'Sri lanka'),
(2671, 'GOY', 'Amparai', 'Galoya', 'Sri lanka'),
(2672, 'JAF', 'Kankesanturai', 'Jaffna', 'Sri lanka'),
(2673, 'TRR', 'China bay', 'Trinciomalee', 'Sri lanka'),
(2674, 'PNH', 'Pochentong international', 'Phnom-penh', 'Cambodia'),
(2675, 'REP', 'Siem reap', 'Siem-reap', 'Cambodia'),
(2676, 'IXA', 'Agartala', 'Agartala', 'India'),
(2677, 'AJL', 'Aizawl', 'Aizwal', 'India'),
(2678, 'IXB', 'Bagdogra', 'Baghdogra', 'India'),
(2679, 'RGH', 'Balurghat', 'Balurghat', 'India'),
(2680, 'BBI', 'Bhubaneshwar', 'Bhubaneswar', 'India'),
(2681, 'CCU', 'Netaji subhash chandra bose international', 'Calcutta', 'India'),
(2682, 'COH', 'Cooch behar', 'Cooch-behar', 'India'),
(2683, 'DBO', 'Dhanbad', 'Dhanbad', 'India'),
(2684, 'YOP', 'Gorakhpur', 'Gorakhpur', 'India'),
(2685, 'GAY', 'Gaya', 'Gaya', 'India'),
(2686, 'IMF', 'Imphal', 'Imphal', 'India'),
(2687, 'IXW', 'Jamshedpur', 'Jamshedpur', 'India'),
(2688, 'JRH', 'Jorhat', 'Jorhat', 'India'),
(2689, 'IXH', 'Kailashahar', 'Kailashahar', 'India'),
(2690, 'IXS', 'Silchar', 'Silchar', 'India'),
(2691, 'IXI', 'Lilabari', 'Lilabari', 'India'),
(2692, 'MOH', 'Dibrugarh', 'Mohanbari', 'India'),
(2693, 'IXT', 'Pasighat', 'Pasighat', 'India'),
(2694, 'PAT', 'Patna', 'Patina', 'India'),
(2695, 'IXR', 'Birsa munda', 'Ranchi', 'India'),
(2696, 'RRK', 'Rourkela', 'Rourkela', 'India'),
(2697, 'VTZ', 'Vishakhapatnam', 'Vishakhapatnam', 'India'),
(2698, 'CXB', 'Coxs bazar', 'Coxs bazar', 'Bangladesh'),
(2699, 'CGP', 'Shah amanat international', 'Chittagong', 'Bangladesh'),
(2700, 'IRD', 'Ishurdi', 'Ishurdi', 'Bangladesh'),
(2701, 'JSR', 'Jessore', 'Jessore', 'Bangladesh'),
(2702, 'RJH', 'Rajshahi', 'Rajshahi', 'Bangladesh'),
(2703, 'SPD', 'Saidpur', 'Saidpur', 'Bangladesh'),
(2704, 'ZYL', 'Osmany international', 'Sylhet osmani', 'Bangladesh'),
(2705, 'DAC', 'Zia international', 'Dhaka', 'Bangladesh'),
(2706, 'HKG', 'Hong kong international', 'Hong kong', 'Hong kong'),
(2707, 'AGR', 'Agra', 'Agra', 'India'),
(2708, 'IXD', 'Allahabad', 'Allahabad', 'India'),
(2709, 'ATQ', 'Amritsar', 'Amritsar', 'India'),
(2710, 'VNS', 'Varanasi', 'Varanasi', 'India'),
(2711, 'KUU', 'Kullu manali', 'Kulu', 'India'),
(2712, 'IXC', 'Chandigarh', 'Chandigarh', 'India'),
(2713, 'DED', 'Dehradun', 'Dehra dun', 'India'),
(2714, 'DEL', 'Indira gandhi international', 'Delhi', 'India'),
(2715, 'GWL', 'Gwalior', 'Gwalior', 'India'),
(2716, 'JOH', 'Jodhpur', 'Jodhpur', 'India'),
(2717, 'JAI', 'Jaipur', 'Jaipur', 'India'),
(2718, 'JSA', 'Jaisalmer', 'Jaisalmer', 'India'),
(2719, 'IXJ', 'Jammu', 'Jammu', 'India'),
(2720, 'KNU', 'Kanpur', 'Kanpur', 'India'),
(2721, 'KTU', 'Kota', 'Kota', 'India'),
(2722, 'LUH', 'Ludhiana', 'Ludhiaha', 'India'),
(2723, 'IXL', 'Leh', 'Leh', 'India'),
(2724, 'LKO', 'Lucknow', 'Lucknow', 'India'),
(2725, 'IXP', 'Pathankot', 'Pathankot', 'India'),
(2726, 'PGH', 'Pantnagar', 'Nainital', 'India'),
(2727, 'SXR', 'Srinagar', 'Srinagar', 'India'),
(2728, 'LPQ', 'Luang prabang', 'Luang prabang', 'Laos'),
(2729, 'PKZ', 'Pakse', 'Pakse', 'Laos'),
(2730, 'ZVK', 'Savannakhet', 'Savannakhet', 'Laos'),
(2731, 'VTE', 'Wattay international', 'Vientiane', 'Laos'),
(2732, 'MFM', 'Macau international', 'Macau', 'Macau'),
(2733, 'BWA', 'Bhairahawa', 'Bhairawa', 'Nepal'),
(2734, 'KTM', 'Tribhuvan international', 'Kathmandu', 'Nepal'),
(2735, 'PKR', 'Pokhara', 'Pokhara', 'Nepal'),
(2736, 'SIF', 'Simara', 'Simara', 'Nepal'),
(2737, 'BIR', 'Biratnagar', 'Biratnagar', 'Nepal'),
(2738, 'AGX', 'Agatti', 'Agatti island', 'India'),
(2739, 'BLR', 'Bangalore', 'Bangalore', 'India'),
(2740, 'VGA', 'Vijayawada', 'Vijayawada', 'India'),
(2741, 'CJB', 'Coimbatore', 'Coimbatore', 'India'),
(2742, 'CCJ', 'Calicut', 'Calicut', 'India'),
(2743, 'CDP', 'Cuddapah', 'Cuddapah', 'India'),
(2744, 'HYD', 'Hyderabad', 'Hyderabad', 'India'),
(2745, 'IXM', 'Madurai', 'Madurai', 'India'),
(2746, 'IXE', 'Mangalore', 'Mangalore', 'India'),
(2747, 'MAA', 'Chennai international', 'Madras', 'India'),
(2748, 'IXZ', 'Port blair', 'Port blair', 'India'),
(2749, 'RJA', 'Rajahmundry', 'Rajahmundry', 'India'),
(2750, 'TIR', 'Tirupati', 'Tirupeti', 'India'),
(2751, 'TRZ', 'Tiruchirappalli', 'Tiruchchirappalli', 'India'),
(2752, 'TRV', 'Thiruvananthapuram international', 'Trivandrum', 'India'),
(2753, 'PBH', 'Paro', 'Paro', 'Bhutan'),
(2754, 'MLE', 'Male international', 'Male', 'Maldives'),
(2755, 'BKK', 'Bangkok international', 'Bangkok', 'Thailand'),
(2756, 'UTP', 'U taphao international', 'Rayong', 'Thailand'),
(2757, 'LPT', 'Lampang', 'Lampang', 'Thailand'),
(2758, 'PRH', 'Phrae', 'Phrae', 'Thailand'),
(2759, 'HHQ', 'Hua hin', 'Prachuap khiri khan', 'Thailand'),
(2760, 'PHS', 'Phitsanulok', 'Phitsanulok', 'Thailand'),
(2761, 'NAW', 'Narathiwat', 'Narathiwat', 'Thailand'),
(2762, 'PAN', 'Pattani', 'Pattani', 'Thailand'),
(2763, 'NST', 'Cha ian', 'Nakhon si thammarat', 'Thailand'),
(2764, 'HKT', 'Phuket international', 'Phuket', 'Thailand'),
(2765, 'HDY', 'Hat yai international', 'Songkhla', 'Thailand'),
(2766, 'TST', 'Trang', 'Trang', 'Thailand'),
(2767, 'UTH', 'Udon thani', 'Udon thani', 'Thailand'),
(2768, 'SNO', 'Sakon nakhon', 'Sakon nakhon', 'Thailand'),
(2769, 'LOE', 'Loei', 'Loei', 'Thailand'),
(2770, 'NAK', 'Khorat', 'Nakhon ratchasima', 'Thailand'),
(2771, 'KOP', 'Nakhon phanom', 'Nakhon phanom', 'Thailand'),
(2772, 'DAD', 'Danang international', 'Danang', 'Viet nam'),
(2773, 'HAN', 'Noibai international', 'Hanoi', 'Viet nam'),
(2774, 'NHA', 'Nha trang airport', 'Nhatrang', 'Viet nam'),
(2775, 'SGN', 'Tansonnhat international', 'Ho chi minh city', 'Viet nam'),
(2776, 'HEH', 'Heho', 'Heho', 'Myanmar'),
(2777, 'KET', 'Kengtung', 'Kengtung', 'Myanmar'),
(2778, 'KYP', 'Kyaukpyu', 'Kyaukpyu', 'Myanmar'),
(2779, 'LSH', 'Lashio', 'Lashio', 'Myanmar'),
(2780, 'MDL', 'Mandalay international', 'Mandalay', 'Myanmar'),
(2781, 'MGZ', 'Myeik', 'Myeik', 'Myanmar'),
(2782, 'MYT', 'Myitkyina', 'Myitkyina', 'Myanmar'),
(2783, 'MOG', 'Monghsat', 'Mong hsat', 'Myanmar'),
(2784, 'PBU', 'Putao', 'Putao', 'Myanmar'),
(2785, 'AKY', 'Sittwe', 'Sittwe', 'Myanmar'),
(2786, 'SNW', 'Thandwe', 'Thandwe', 'Myanmar'),
(2787, 'THL', 'Tachilek', 'Tachilek', 'Myanmar'),
(2788, 'RGN', 'Yangon international', 'Yangon', 'Myanmar'),
(2789, 'UPG', 'Hasanuddin', 'Ujung pandang', 'Indonesia'),
(2790, 'KDI', 'Wolter monginsidi', 'Kendari', 'Indonesia'),
(2791, 'BIK', 'Frans kaisiepo', 'Biak', 'Indonesia'),
(2792, 'NBX', 'Nabire', 'Nabire', 'Indonesia'),
(2793, 'TIM', 'Moses kilangin', 'Timika', 'Indonesia'),
(2794, 'DJJ', 'Sentani', 'Jayapura', 'Indonesia'),
(2795, 'WMX', 'Wamena', 'Wamena', 'Indonesia'),
(2796, 'MKQ', 'Mopah', 'Merauke', 'Indonesia'),
(2797, 'GTO', 'Jalaluddin', 'Gorontalo', 'Indonesia'),
(2798, 'PLW', 'Mutiara', 'Palu', 'Indonesia'),
(2799, 'MDC', 'Sam ratulangi', 'Manado', 'Indonesia'),
(2800, 'PSJ', 'Kasiguncu', 'Poso', 'Indonesia'),
(2801, 'TTE', 'Babullah', 'Ternate', 'Indonesia'),
(2802, 'LUW', 'Bubung', 'Luwuk', 'Indonesia'),
(2803, 'AMQ', 'Pattimura', 'Ambon', 'Indonesia'),
(2804, 'KNG', 'Kaimana', 'Kaimana', 'Indonesia'),
(2805, 'MKW', 'Rendani', 'Manokwari', 'Indonesia'),
(2806, 'SOQ', 'Jefman', 'Sorong', 'Indonesia'),
(2807, 'BTU', 'Bintulu', 'Bintulu', 'Malaysia'),
(2808, 'KCH', 'Kuching international', 'Kuching', 'Malaysia'),
(2809, 'MUR', 'Marudi', 'Marudi', 'Malaysia'),
(2810, 'MYY', 'Miri', 'Miri', 'Malaysia'),
(2811, 'SBW', 'Sibu', 'Sibu', 'Malaysia'),
(2812, 'LDU', 'Lahad datu', 'Lahad datu', 'Malaysia'),
(2813, 'BKI', 'Kota kinabalu international', 'Kota kinabalu', 'Malaysia'),
(2814, 'LBU', 'Labuan', 'Labuan', 'Malaysia'),
(2815, 'TWU', 'Tawau', 'Tawau', 'Malaysia'),
(2816, 'BWN', 'Brunei international', 'Brunei', 'Brunei'),
(2817, 'SBG', 'Maimun saleh', 'Sabang', 'Indonesia'),
(2818, 'MLG', 'Abdul rachman saleh', 'Malang', 'Indonesia'),
(2819, 'PKU', 'Sultan syarif kasim ii', 'Pekanbaru', 'Indonesia'),
(2820, 'DUM', 'Pinang kampai', 'Dumai', 'Indonesia'),
(2821, 'BDO', 'Husein sastranegara', 'Bandung', 'Indonesia'),
(2822, 'CBN', 'Penggung', 'Cirebon', 'Indonesia'),
(2823, 'HLP', 'Halim perdanakusuma international', 'Jakarta', 'Indonesia'),
(2824, 'CGK', 'Soekarno hatta international', 'Jakarta', 'Indonesia'),
(2825, 'JOG', 'Adi sutjipto', 'Yogyakarta', 'Indonesia'),
(2826, 'CXP', 'Tunggul wulung', 'Cilacap', 'Indonesia'),
(2827, 'PCB', 'Pondok cabe', 'Jakarta', 'Indonesia'),
(2828, 'SRG', 'Achmad yani', 'Semarang', 'Indonesia'),
(2829, 'BTH', 'Hang nadim', 'Batam', 'Indonesia'),
(2830, 'TJQ', 'H as hanandjoeddin', 'Tanjung pandan', 'Indonesia'),
(2831, 'PGK', 'Depati amir', 'Pangkal pinang', 'Indonesia'),
(2832, 'TNJ', 'Kijang', 'Tanjung pinang', 'Indonesia'),
(2833, 'SIQ', 'Dabo', 'Singkep', 'Indonesia'),
(2834, 'GNS', 'Binaka', 'Gunung sitoli', 'Indonesia'),
(2835, 'PDG', 'Tabing', 'Padang', 'Indonesia'),
(2836, 'MES', 'Polonia', 'Medan', 'Indonesia'),
(2837, 'KTG', 'Rahadi usman', 'Ketapang', 'Indonesia'),
(2838, 'PNK', 'Supadio', 'Pontianak', 'Indonesia'),
(2839, 'SQC', 'Susilo', 'Sintang', 'Indonesia'),
(2840, 'DJB', 'Sultan thaha', 'Jambi', 'Indonesia'),
(2841, 'BKS', 'Padang kemiling', 'Bengkulu', 'Indonesia'),
(2842, 'PLM', 'Sultan mahmud badaruddin ii', 'Palembang', 'Indonesia'),
(2843, 'RGT', 'Japura', 'Rengat', 'Indonesia'),
(2844, 'BTJ', 'Sultan iskandarmuda', 'Banda aceh', 'Indonesia'),
(2845, 'AOR', 'Sultan abdul halim', 'Alor setar', 'Malaysia'),
(2846, 'KBR', 'Sultan ismail petra', 'Kota bahru', 'Malaysia'),
(2847, 'KUA', 'Kuantan', 'Kuantan', 'Malaysia'),
(2848, 'KTE', 'Kerteh', 'Kerteh', 'Malaysia'),
(2849, 'IPH', 'Sultan azlan shah', 'Ipoh', 'Malaysia'),
(2850, 'JHB', 'Sultan ismail', 'Johor bahru', 'Malaysia'),
(2851, 'KUL', 'Kuala lumpur international', 'Kuala lumpur', 'Malaysia'),
(2852, 'LGK', 'Langkawi international', 'Pulau', 'Malaysia'),
(2853, 'MKZ', 'Malacca', 'Malacca', 'Malaysia'),
(2854, 'TGG', 'Sultan mahmud', 'Kuala terengganu', 'Malaysia');
INSERT INTO `aeropuerto` (`id`, `iata`, `nombre`, `ciudad`, `pais`) VALUES
(2855, 'PEN', 'Penang international', 'Penang', 'Malaysia'),
(2856, 'DIL', 'Comoro (komoro) airport', 'Dili', 'East timor'),
(2857, 'BDJ', 'Syamsudin noor', 'Banjarmasin', 'Indonesia'),
(2858, 'PKN', 'Iskandar', 'Pangkalan bun', 'Indonesia'),
(2859, 'PKY', 'Tjilik riwut', 'Palangkaraya', 'Indonesia'),
(2860, 'MOF', 'Wai oti', 'Maumere', 'Indonesia'),
(2861, 'ENE', 'H hasan aroeboesman', 'Ende', 'Indonesia'),
(2862, 'RTG', 'Satar tacik', 'Ruteng', 'Indonesia'),
(2863, 'KOE', 'El tari', 'Kupang', 'Indonesia'),
(2864, 'LBJ', 'Mutiara ii', 'Labuhan bajo', 'Indonesia'),
(2865, 'BPN', 'Sepinggan', 'Balikpapan', 'Indonesia'),
(2866, 'TRK', 'Juwata', 'Taraken', 'Indonesia'),
(2867, 'SRI', 'Temindung', 'Samarinda', 'Indonesia'),
(2868, 'AMI', 'Selaparang', 'Mataram', 'Indonesia'),
(2869, 'BMU', 'Muhammad salahuddin', 'Bima', 'Indonesia'),
(2870, 'DPS', 'Bali international', 'Denpasar', 'Indonesia'),
(2871, 'SWG', 'Sumbawa besar', 'Sumbawa', 'Indonesia'),
(2872, 'WGP', 'Mau hau', 'Waingapu', 'Indonesia'),
(2873, 'SUB', 'Juanda', 'Surabaya', 'Indonesia'),
(2874, 'SOC', 'Adi sumarmo wiryokusumo', 'Solo city', 'Indonesia'),
(2875, 'QPG', 'Paya lebar', 'Paya lebar', 'Singapore'),
(2876, 'XSP', 'Seletar', 'Singapore', 'Singapore'),
(2877, 'SIN', 'Singapore changi', 'Singapore', 'Singapore'),
(2878, 'ABM', 'Bamaga injinoo', 'Amberley', 'Australia'),
(2879, 'ASP', 'Alice springs', 'Alice springs', 'Australia'),
(2880, 'BNE', 'Brisbane international', 'Brisbane', 'Australia'),
(2881, 'OOL', 'Gold coast coolangatta', 'Coolangatta', 'Australia'),
(2882, 'CNS', 'Cairns international', 'Cairns', 'Australia'),
(2883, 'CTL', 'Charleville', 'Charlieville', 'Australia'),
(2884, 'ISA', 'Mount isa', 'Mount isa', 'Australia'),
(2885, 'MCY', 'Maroochydore sunshine coast', 'Maroochydore', 'Australia'),
(2886, 'MKY', 'Mackay', 'Mackay', 'Australia'),
(2887, 'PPP', 'Proserpine whitsunday coast', 'Prosserpine', 'Australia'),
(2888, 'ROK', 'Rockhampton', 'Rockhampton', 'Australia'),
(2889, 'TSV', 'Townsville', 'Townsville', 'Australia'),
(2890, 'WEI', 'Weipa', 'Weipa', 'Australia'),
(2891, 'AVV', 'Avalon', 'Avalon', 'Australia'),
(2892, 'ABX', 'Albury', 'Albury', 'Australia'),
(2893, 'MEB', 'Melbourne essendon', 'Melbourne', 'Australia'),
(2894, 'HBA', 'Hobart', 'Hobart', 'Australia'),
(2895, 'LST', 'Launceston', 'Launceston', 'Australia'),
(2896, 'MBW', 'Melbourne moorabbin', 'Melbourne', 'Australia'),
(2897, 'MEL', 'Melbourne international', 'Melbourne', 'Australia'),
(2898, 'ADL', 'Adelaide international', 'Adelaide', 'Australia'),
(2899, 'JAD', 'Perth jandakot', 'Perth', 'Australia'),
(2900, 'KTA', 'Karratha', 'Karratha', 'Australia'),
(2901, 'KGI', 'Kalgoorlie boulder', 'Kalgoorlie', 'Australia'),
(2902, 'KNX', 'Kununurra', 'Kununurra', 'Australia'),
(2903, 'LEA', 'Learmonth', 'Learmonth', 'Australia'),
(2904, 'PHE', 'Port hedland international', 'Port hedland', 'Australia'),
(2905, 'PER', 'Perth international', 'Perth', 'Australia'),
(2906, 'UMR', 'Woomera', 'Woomera', 'Australia'),
(2907, 'BWU', 'Sydney bankstown', 'Sydney', 'Australia'),
(2908, 'CBR', 'Canberra', 'Canberra', 'Australia'),
(2909, 'CFS', 'Coffs harbour', 'Coffs harbour', 'Australia'),
(2910, 'CDU', 'Camden', 'Camden', 'Australia'),
(2911, 'DBO', 'Dubbo', 'Dubbo', 'Australia'),
(2912, 'NLK', 'Norfolk island international', 'Norfolk island', 'Australia'),
(2913, 'RCM', 'Richmond', 'Richmond', 'Australia'),
(2914, 'SYD', 'Kingsford smith international airport', 'Sydney', 'Australia'),
(2915, 'TMW', 'Tamworth', 'Tamworth', 'Australia'),
(2916, 'WGA', 'Wagga wagga', 'Wagga wagga', 'Australia'),
(2917, 'PEK', 'Capital', 'Beijing', 'China'),
(2918, 'HLD', 'Dongshan', 'Hailar', 'China'),
(2919, 'TSN', 'Binhai', 'Tianjin', 'China'),
(2920, 'TYN', 'Wusu', 'Taiyuan', 'China'),
(2921, 'CAN', 'Baiyun', 'Guangzhou', 'China'),
(2922, 'CSX', 'Huanghua', 'Changcha', 'China'),
(2923, 'KWL', 'Liangjiang', 'Guilin', 'China'),
(2924, 'NNG', 'Wuxu', 'Nanning', 'China'),
(2925, 'SWA', 'Wai sha airport', 'Shantou', 'China'),
(2926, 'SZX', 'Baoan', 'Shenzhen', 'China'),
(2927, 'CGO', 'Xinzheng', 'Zhengzhou', 'China'),
(2928, 'WUH', 'Tianhe', 'Wuhan', 'China'),
(2929, 'FNJ', 'Pyongyang / sunan (capital) airport', 'Pyongyang', 'Korea'),
(2930, 'DNH', 'Dunhuang airport', 'Dunhuang', 'China'),
(2931, 'ZGC', 'Zhongchuan', 'Lanzhou', 'China'),
(2932, 'XIY', 'Xianyang', 'Xi an', 'China'),
(2933, 'ULN', 'Buyant ukhaa', 'Ulan bator', 'Mongolia'),
(2934, 'KMG', 'Wujiaba', 'Kunming', 'China'),
(2935, 'XMN', 'Gaoqi', 'Xiamen', 'China'),
(2936, 'KHN', 'Nanchang airport', 'Nanchang', 'China'),
(2937, 'FOC', 'Changle', 'Fuzhou', 'China'),
(2938, 'HGH', 'Xiaoshan', 'Hangzhou', 'China'),
(2939, 'JDZ', 'Jingdezhen airport', 'Jingdezhen', 'China'),
(2940, 'NGB', 'Lishe', 'Ninbo', 'China'),
(2941, 'NKG', 'Lu kou airport', 'Nanjing', 'China'),
(2942, 'HFE', 'Luogang', 'Hefei', 'China'),
(2943, 'TAO', 'Liuting', 'Qingdao', 'China'),
(2944, 'SHA', 'Hongqiao international', 'Shanghai', 'China'),
(2945, 'YNT', 'Laishan', 'Yantai', 'China'),
(2946, 'CKG', 'Jiangbei', 'Chongqing', 'China'),
(2947, 'LXA', 'Lhasa airport', 'Lhasa', 'China'),
(2948, 'CTU', 'Shuangliu', 'Chengdu', 'China'),
(2949, 'XIC', 'Qingshan', 'Xichang', 'China'),
(2950, 'KHG', 'Kashi', 'Kashi', 'China'),
(2951, 'HTN', 'Hotan', 'Hotan', 'China'),
(2952, 'URC', 'Diwopu', 'Urumqi', 'China'),
(2953, 'HRB', 'Taiping', 'Harbin', 'China'),
(2954, 'DLC', 'Zhoushuizi', 'Dalian', 'China');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asiento`
--

CREATE TABLE `asiento` (
  `id` int(10) NOT NULL,
  `cabina` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asiento`
--

INSERT INTO `asiento` (`id`, `cabina`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 2),
(7, 3),
(8, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avion`
--

CREATE TABLE `avion` (
  `id` varchar(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `avion`
--

INSERT INTO `avion` (`id`, `nombre`) VALUES
('747', 'Boeing'),
('A320', 'EgyptAir');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabina`
--

CREATE TABLE `cabina` (
  `id` int(10) NOT NULL,
  `tipo` int(2) DEFAULT NULL,
  `avion` varchar(10) DEFAULT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cabina`
--

INSERT INTO `cabina` (`id`, `tipo`, `avion`, `capacidad`) VALUES
(1, 1, '747', 500),
(2, 2, '747', 200),
(3, 2, 'A320', 5000),
(4, 1, 'A320', 300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id` int(4) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `tipoid` varchar(2) NOT NULL,
  `numeroid` int(15) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `pais_nacimiento` int(4) DEFAULT NULL,
  `pais_residencia` int(4) DEFAULT NULL,
  `departamento` int(4) DEFAULT NULL,
  `ciudad` int(4) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `tarjeta_credito` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`tipoid`, `numeroid`, `nombre`, `apellido`, `fecha_nacimiento`, `correo`, `genero`, `pais_nacimiento`, `pais_residencia`, `departamento`, `ciudad`, `direccion`, `tarjeta_credito`) VALUES
('1', 42, 'mia', 'kalifha', '1995-12-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('1', 2222222, 'oe', 'oe', '2016-06-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('1', 970209140, 'J p', 'o h', '2013-11-12', 'juan.ospina3@udea.edu.co', 'M', 1, 1, 1, 1, 'Cra 72 # 91 a 16', 0),
('3', 69, 'megan', 'fox', '2010-06-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('3', 321, 'bbbb', 'cc', '2003-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('3', 111222, 'aaaaaaa', 'bbbbb', '2016-06-02', 'juan.ospina3@udea.edu.co', 'M', 1, 1, 1, 1, 'Cra 72 # 91 a 16', 3.242123412342343e15),
('3', 123456789, 'el ', 'jefazo', '2016-06-01', 'oe@oe.oe', 'M', 13, 13, 9, 9, 'calle 9', 0),
('4', 90, 'estefi', 'errote', '1995-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('4', 111, 'lucho', 'portuano', '2016-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('4', 321, 'bbbbbbbbb', 'ccccc', '2016-05-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escala`
--

CREATE TABLE `escala` (
  `id` int(10) NOT NULL,
  `idvuelo` int(10) DEFAULT NULL,
  `aeropuerto` int(10) DEFAULT NULL,
  `idavion` varchar(10) DEFAULT NULL,
  `hora` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `escala`
--

INSERT INTO `escala` (`id`, `idvuelo`, `aeropuerto`, `idavion`, `hora`) VALUES
(1, 1, 1, '747', '2016-05-30 00:00:00'),
(2, 2, 2, 'A320', '2016-05-31 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(4) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `pais` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`, `pais`) VALUES
(1, 'Antioquia', 38),
(2, 'Cundinamarca', 38);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(4) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pais`
--



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE `socio` (
  `tipoid` varchar(2) NOT NULL,
  `numeroid` int(15) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `pais_nacimiento` int(4) DEFAULT NULL,
  `pais_residencia` int(4) DEFAULT NULL,
  `departamento` int(4) DEFAULT NULL,
  `ciudad` int(4) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `millas` double NOT NULL,
  `tarjeta_credito` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `socio`
--

INSERT INTO `socio` (`tipoid`, `numeroid`, `nombre`, `apellido`, `fecha_nacimiento`, `correo`, `contrasena`, `genero`, `pais_nacimiento`, `pais_residencia`, `departamento`, `ciudad`, `direccion`, `millas`, `tarjeta_credito`) VALUES
('2', 1152707477, 'juan pablo', 'ospina herrera', '1997-02-09', 'jpoh97@gmail.com', 'jpoh97', 'M', 12, 234, 1, 1, 'carrera 72', 5368000, 1.234567890123456e15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocabina`
--

CREATE TABLE `tipocabina` (
  `id` int(2) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipocabina`
--

INSERT INTO `tipocabina` (`id`, `nombre`) VALUES
(1, 'ejecutivo'),
(2, 'economico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiquete`
--

CREATE TABLE `tiquete` (
  `vuelo` int(10) NOT NULL,
  `asiento` int(10) NOT NULL,
  `precio` double DEFAULT NULL,
  `tipoid` varchar(2) NOT NULL,
  `numeroid` int(15) NOT NULL,
  `tipo` int(1) NOT NULL,
  `codigo` varchar(6) NOT NULL,
  `checkedin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiquete`
--

INSERT INTO `tiquete` (`vuelo`, `asiento`, `precio`, `tipoid`, `numeroid`, `tipo`, `codigo`, `checkedin`) VALUES
(1, 1, 360000, '3', 111222, 2, 'D4BF3E', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

CREATE TABLE `vuelo` (
  `id` int(10) NOT NULL,
  `aeropuerto_salida` int(4) DEFAULT NULL,
  `aeropuerto_llegada` int(4) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vuelo`
--

INSERT INTO `vuelo` (`id`, `aeropuerto_salida`, `aeropuerto_llegada`, `fecha`) VALUES
(1, 2423, 2394, '2016-06-13 00:00:00'),
(2, 2394, 2423, '2016-06-14 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vueloxcabina`
--

CREATE TABLE `vueloxcabina` (
  `idvuelo` int(10) NOT NULL,
  `idcabina` int(10) NOT NULL,
  `precio` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vueloxcabina`
--

INSERT INTO `vueloxcabina` (`idvuelo`, `idcabina`, `precio`) VALUES
(1, 1, 200000),
(1, 2, 400000),
(2, 3, 5000000),
(2, 4, 300000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aeropuerto`
--
ALTER TABLE `aeropuerto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asiento`
--
ALTER TABLE `asiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cabina` (`cabina`);

--
-- Indices de la tabla `avion`
--
ALTER TABLE `avion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cabina`
--
ALTER TABLE `cabina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo` (`tipo`),
  ADD KEY `avion` (`avion`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estado` (`estado`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`tipoid`,`numeroid`);

--
-- Indices de la tabla `escala`
--
ALTER TABLE `escala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idvuelo` (`idvuelo`),
  ADD KEY `idavion` (`idavion`),
  ADD KEY `aeropuerto` (`aeropuerto`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pais` (`pais`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`tipoid`,`numeroid`);

--
-- Indices de la tabla `tipocabina`
--
ALTER TABLE `tipocabina`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiquete`
--
ALTER TABLE `tiquete`
  ADD PRIMARY KEY (`vuelo`,`asiento`),
  ADD KEY `asiento` (`asiento`);

--
-- Indices de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aeropuerto_salida` (`aeropuerto_salida`),
  ADD KEY `aeropuerto_llegada` (`aeropuerto_llegada`);

--
-- Indices de la tabla `vueloxcabina`
--
ALTER TABLE `vueloxcabina`
  ADD PRIMARY KEY (`idvuelo`,`idcabina`),
  ADD KEY `idcabina` (`idcabina`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aeropuerto`
--
ALTER TABLE `aeropuerto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2955;
--
-- AUTO_INCREMENT de la tabla `escala`
--
ALTER TABLE `escala`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asiento`
--
ALTER TABLE `asiento`
  ADD CONSTRAINT `asiento_ibfk_1` FOREIGN KEY (`cabina`) REFERENCES `cabina` (`id`);

--
-- Filtros para la tabla `cabina`
--
ALTER TABLE `cabina`
  ADD CONSTRAINT `cabina_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipocabina` (`id`),
  ADD CONSTRAINT `cabina_ibfk_2` FOREIGN KEY (`avion`) REFERENCES `avion` (`id`);

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`estado`) REFERENCES `estado` (`id`);

--
-- Filtros para la tabla `escala`
--
ALTER TABLE `escala`
  ADD CONSTRAINT `escala_ibfk_1` FOREIGN KEY (`idvuelo`) REFERENCES `vuelo` (`id`),
  ADD CONSTRAINT `escala_ibfk_2` FOREIGN KEY (`idavion`) REFERENCES `avion` (`id`),
  ADD CONSTRAINT `escala_ibfk_3` FOREIGN KEY (`aeropuerto`) REFERENCES `aeropuerto` (`id`);

--
-- Filtros para la tabla `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`pais`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `tiquete`
--
ALTER TABLE `tiquete`
  ADD CONSTRAINT `tiquete_ibfk_1` FOREIGN KEY (`vuelo`) REFERENCES `vuelo` (`id`),
  ADD CONSTRAINT `tiquete_ibfk_2` FOREIGN KEY (`asiento`) REFERENCES `asiento` (`id`);

--
-- Filtros para la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD CONSTRAINT `vuelo_ibfk_1` FOREIGN KEY (`aeropuerto_salida`) REFERENCES `aeropuerto` (`id`),
  ADD CONSTRAINT `vuelo_ibfk_2` FOREIGN KEY (`aeropuerto_llegada`) REFERENCES `aeropuerto` (`id`);

--
-- Filtros para la tabla `vueloxcabina`
--
ALTER TABLE `vueloxcabina`
  ADD CONSTRAINT `vueloxcabina_ibfk_2` FOREIGN KEY (`idcabina`) REFERENCES `cabina` (`id`),
  ADD CONSTRAINT `vueloxcabina_ibfk_3` FOREIGN KEY (`idvuelo`) REFERENCES `vuelo` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


INSERT INTO pais(id,nombre) values( '1', 'Afghanistan');
INSERT INTO pais(id,nombre) values( '2', 'Albania');
INSERT INTO pais(id,nombre) values( '3', 'Algeria');
INSERT INTO pais(id,nombre) values( '4', 'Angola');
INSERT INTO pais(id,nombre) values( '5', 'Anguilla isl.');
INSERT INTO pais(id,nombre) values( '6', 'Antilles');
INSERT INTO pais(id,nombre) values( '7', 'Argentina');
INSERT INTO pais(id,nombre) values( '8', 'Aruba');
INSERT INTO pais(id,nombre) values( '9', 'Australia');
INSERT INTO pais(id,nombre) values( '10', 'Austria');
INSERT INTO pais(id,nombre) values( '11', 'Bahamas');
INSERT INTO pais(id,nombre) values( '12', 'Bahrain');
INSERT INTO pais(id,nombre) values( '13', 'Bangladesh');
INSERT INTO pais(id,nombre) values( '14', 'Barbados');
INSERT INTO pais(id,nombre) values( '15', 'Belgium');
INSERT INTO pais(id,nombre) values( '16', 'Belize');
INSERT INTO pais(id,nombre) values( '17', 'Benin');
INSERT INTO pais(id,nombre) values( '18', 'Bhutan');
INSERT INTO pais(id,nombre) values( '19', 'Bolivia');
INSERT INTO pais(id,nombre) values( '20', 'Bophuthatswana');
INSERT INTO pais(id,nombre) values( '21', 'Bosnia-hercegovina');
INSERT INTO pais(id,nombre) values( '22', 'Botswana');
INSERT INTO pais(id,nombre) values( '23', 'Brazil');
INSERT INTO pais(id,nombre) values( '24', 'Brunei');
INSERT INTO pais(id,nombre) values( '25', 'Bulgaria');
INSERT INTO pais(id,nombre) values( '26', 'Burkina faso');
INSERT INTO pais(id,nombre) values( '27', 'Burundi');
INSERT INTO pais(id,nombre) values( '28', 'Cambodia');
INSERT INTO pais(id,nombre) values( '29', 'Cameroon');
INSERT INTO pais(id,nombre) values( '30', 'Canada');
INSERT INTO pais(id,nombre) values( '31', 'Canary islands');
INSERT INTO pais(id,nombre) values( '32', 'Cape verde islands');
INSERT INTO pais(id,nombre) values( '33', 'Cayman islands');
INSERT INTO pais(id,nombre) values( '34', 'Central african rep.');
INSERT INTO pais(id,nombre) values( '35', 'Chad');
INSERT INTO pais(id,nombre) values( '36', 'Chile');
INSERT INTO pais(id,nombre) values( '37', 'China');
INSERT INTO pais(id,nombre) values( '38', 'Colombia');
INSERT INTO pais(id,nombre) values( '39', 'Comoros islands');
INSERT INTO pais(id,nombre) values( '40', 'Congo');
INSERT INTO pais(id,nombre) values( '41', 'Cook islands');
INSERT INTO pais(id,nombre) values( '42', 'Corse isl.');
INSERT INTO pais(id,nombre) values( '43', 'Costa rica');
INSERT INTO pais(id,nombre) values( '44', 'Croatia');
INSERT INTO pais(id,nombre) values( '45', 'Cuba');
INSERT INTO pais(id,nombre) values( '46', 'Cyprus');
INSERT INTO pais(id,nombre) values( '47', 'Czech republic');
INSERT INTO pais(id,nombre) values( '48', 'Denmark');
INSERT INTO pais(id,nombre) values( '49', 'Dominica');
INSERT INTO pais(id,nombre) values( '50', 'Dominican republic');
INSERT INTO pais(id,nombre) values( '51', 'East timor');
INSERT INTO pais(id,nombre) values( '52', 'Ecuador');
INSERT INTO pais(id,nombre) values( '53', 'Egypt');
INSERT INTO pais(id,nombre) values( '54', 'El salvador');
INSERT INTO pais(id,nombre) values( '55', 'Engalnd');
INSERT INTO pais(id,nombre) values( '56', 'England');
INSERT INTO pais(id,nombre) values( '57', 'Equatorial guinea');
INSERT INTO pais(id,nombre) values( '58', 'Estonia');
INSERT INTO pais(id,nombre) values( '59', 'Ethiopia');
INSERT INTO pais(id,nombre) values( '60', 'Falkland islands');
INSERT INTO pais(id,nombre) values( '61', 'Faroe isl.');
INSERT INTO pais(id,nombre) values( '62', 'Fiji');
INSERT INTO pais(id,nombre) values( '63', 'Finland');
INSERT INTO pais(id,nombre) values( '64', 'Former macedonia');
INSERT INTO pais(id,nombre) values( '65', 'France');
INSERT INTO pais(id,nombre) values( '66', 'French guyana');
INSERT INTO pais(id,nombre) values( '67', 'French polynesia');
INSERT INTO pais(id,nombre) values( '68', 'Gabon');
INSERT INTO pais(id,nombre) values( '69', 'Galapagos i. (ecuador');
INSERT INTO pais(id,nombre) values( '70', 'Gambia');
INSERT INTO pais(id,nombre) values( '71', 'Georgia');
INSERT INTO pais(id,nombre) values( '72', 'Germany');
INSERT INTO pais(id,nombre) values( '73', 'Ghana');
INSERT INTO pais(id,nombre) values( '74', 'Gibraltar');
INSERT INTO pais(id,nombre) values( '75', 'Greece');
INSERT INTO pais(id,nombre) values( '76', 'Greenland');
INSERT INTO pais(id,nombre) values( '77', 'Grenada');
INSERT INTO pais(id,nombre) values( '78', 'Guatemala');
INSERT INTO pais(id,nombre) values( '79', 'Guernsey isld.');
INSERT INTO pais(id,nombre) values( '80', 'Guinea');
INSERT INTO pais(id,nombre) values( '81', 'Guinea bissau');
INSERT INTO pais(id,nombre) values( '82', 'Guyana');
INSERT INTO pais(id,nombre) values( '83', 'Haiti');
INSERT INTO pais(id,nombre) values( '84', 'Honduras');
INSERT INTO pais(id,nombre) values( '85', 'Hong kong');
INSERT INTO pais(id,nombre) values( '86', 'Hungary');
INSERT INTO pais(id,nombre) values( '87', 'Iceland');
INSERT INTO pais(id,nombre) values( '88', 'India');
INSERT INTO pais(id,nombre) values( '89', 'Indonesia');
INSERT INTO pais(id,nombre) values( '90', 'Iran');
INSERT INTO pais(id,nombre) values( '91', 'Iraq');
INSERT INTO pais(id,nombre) values( '92', 'Ireland');
INSERT INTO pais(id,nombre) values( '93', 'Israel');
INSERT INTO pais(id,nombre) values( '94', 'Italy');
INSERT INTO pais(id,nombre) values( '95', 'Ivory coast');
INSERT INTO pais(id,nombre) values( '96', 'Jamaica');
INSERT INTO pais(id,nombre) values( '97', 'Japan');
INSERT INTO pais(id,nombre) values( '98', 'Johnston atoll');
INSERT INTO pais(id,nombre) values( '99', 'Jordan');
INSERT INTO pais(id,nombre) values( '100', 'Kazakhstan');
INSERT INTO pais(id,nombre) values( '101', 'Kenya');
INSERT INTO pais(id,nombre) values( '102', 'Kiribati');
INSERT INTO pais(id,nombre) values( '103', 'Korea');
INSERT INTO pais(id,nombre) values( '104', 'Kuwait');
INSERT INTO pais(id,nombre) values( '105', 'Laos');
INSERT INTO pais(id,nombre) values( '106', 'Lebanon');
INSERT INTO pais(id,nombre) values( '107', 'Leeward islands');
INSERT INTO pais(id,nombre) values( '108', 'Lesotho');
INSERT INTO pais(id,nombre) values( '109', 'Liberia');
INSERT INTO pais(id,nombre) values( '110', 'Libya');
INSERT INTO pais(id,nombre) values( '111', 'Luxemburg');
INSERT INTO pais(id,nombre) values( '112', 'Macau');
INSERT INTO pais(id,nombre) values( '113', 'Madagascar');
INSERT INTO pais(id,nombre) values( '114', 'Madeira');
INSERT INTO pais(id,nombre) values( '115', 'Malawi');
INSERT INTO pais(id,nombre) values( '116', 'Malaysia');
INSERT INTO pais(id,nombre) values( '117', 'Maldives');
INSERT INTO pais(id,nombre) values( '118', 'Mali');
INSERT INTO pais(id,nombre) values( '119', 'Malta');
INSERT INTO pais(id,nombre) values( '120', 'Mariana islands');
INSERT INTO pais(id,nombre) values( '121', 'Marshall islands');
INSERT INTO pais(id,nombre) values( '122', 'Mauritania');
INSERT INTO pais(id,nombre) values( '123', 'Mauritius');
INSERT INTO pais(id,nombre) values( '124', 'Mayotte island');
INSERT INTO pais(id,nombre) values( '125', 'Mexico');
INSERT INTO pais(id,nombre) values( '126', 'Micronesia');
INSERT INTO pais(id,nombre) values( '127', 'Midway island');
INSERT INTO pais(id,nombre) values( '128', 'Moldova');
INSERT INTO pais(id,nombre) values( '129', 'Mongolia');
INSERT INTO pais(id,nombre) values( '130', 'Montserrat island');
INSERT INTO pais(id,nombre) values( '131', 'Morocco');
INSERT INTO pais(id,nombre) values( '132', 'Mozambique');
INSERT INTO pais(id,nombre) values( '133', 'Myanmar');
INSERT INTO pais(id,nombre) values( '134', 'Nepal');
INSERT INTO pais(id,nombre) values( '135', 'Netherlands');
INSERT INTO pais(id,nombre) values( '136', 'New caledonia');
INSERT INTO pais(id,nombre) values( '137', 'New zealand');
INSERT INTO pais(id,nombre) values( '138', 'Nicaragua');
INSERT INTO pais(id,nombre) values( '139', 'Niger');
INSERT INTO pais(id,nombre) values( '140', 'Nigeria');
INSERT INTO pais(id,nombre) values( '141', 'North ireland');
INSERT INTO pais(id,nombre) values( '142', 'Norway');
INSERT INTO pais(id,nombre) values( '143', 'Oman');
INSERT INTO pais(id,nombre) values( '144', 'Pakistan');
INSERT INTO pais(id,nombre) values( '145', 'Palau island');
INSERT INTO pais(id,nombre) values( '146', 'Panama');
INSERT INTO pais(id,nombre) values( '147', 'Papua new guinea');
INSERT INTO pais(id,nombre) values( '148', 'Paraguay');
INSERT INTO pais(id,nombre) values( '149', 'Peru');
INSERT INTO pais(id,nombre) values( '150', 'Philippines');
INSERT INTO pais(id,nombre) values( '151', 'Phoenix isl.');
INSERT INTO pais(id,nombre) values( '152', 'Poland');
INSERT INTO pais(id,nombre) values( '153', 'Portugal');
INSERT INTO pais(id,nombre) values( '154', 'Puerto rico');
INSERT INTO pais(id,nombre) values( '155', 'Qatar');
INSERT INTO pais(id,nombre) values( '156', 'Reunion island');
INSERT INTO pais(id,nombre) values( '157', 'Romania');
INSERT INTO pais(id,nombre) values( '158', 'Russia');
INSERT INTO pais(id,nombre) values( '159', 'Rwanda');
INSERT INTO pais(id,nombre) values( '160', 'Samoa');
INSERT INTO pais(id,nombre) values( '161', 'Sao tome & principe');
INSERT INTO pais(id,nombre) values( '162', 'Saudi arabia');
INSERT INTO pais(id,nombre) values( '163', 'Scotland');
INSERT INTO pais(id,nombre) values( '164', 'Senegal');
INSERT INTO pais(id,nombre) values( '165', 'Seychelles');
INSERT INTO pais(id,nombre) values( '166', 'Sierra leone');
INSERT INTO pais(id,nombre) values( '167', 'Singapore');
INSERT INTO pais(id,nombre) values( '168', 'Slovakia');
INSERT INTO pais(id,nombre) values( '169', 'Slovenia');
INSERT INTO pais(id,nombre) values( '170', 'Somalia');
INSERT INTO pais(id,nombre) values( '171', 'South africa');
INSERT INTO pais(id,nombre) values( '172', 'Spain');
INSERT INTO pais(id,nombre) values( '173', 'Spanish north africa');
INSERT INTO pais(id,nombre) values( '174', 'Sri lanka');
INSERT INTO pais(id,nombre) values( '175', 'St. kitts & nevis');
INSERT INTO pais(id,nombre) values( '176', 'St. lucia island');
INSERT INTO pais(id,nombre) values( '177', 'St. pierre & miquelon');
INSERT INTO pais(id,nombre) values( '178', 'St.vincent/grenadines');
INSERT INTO pais(id,nombre) values( '179', 'Sudan');
INSERT INTO pais(id,nombre) values( '180', 'Surinam');
INSERT INTO pais(id,nombre) values( '181', 'Swaziland');
INSERT INTO pais(id,nombre) values( '182', 'Sweden');
INSERT INTO pais(id,nombre) values( '183', 'Switzerland');
INSERT INTO pais(id,nombre) values( '184', 'Syria');
INSERT INTO pais(id,nombre) values( '185', 'Taiwan');
INSERT INTO pais(id,nombre) values( '186', 'Tanzania');
INSERT INTO pais(id,nombre) values( '187', 'Thailand');
INSERT INTO pais(id,nombre) values( '188', 'Togo');
INSERT INTO pais(id,nombre) values( '189', 'Tonga');
INSERT INTO pais(id,nombre) values( '190', 'Trinidad & tobago');
INSERT INTO pais(id,nombre) values( '191', 'Tuamotu islands');
INSERT INTO pais(id,nombre) values( '192', 'Tunisia');
INSERT INTO pais(id,nombre) values( '193', 'Turkey');
INSERT INTO pais(id,nombre) values( '194', 'Turks & caicos i.');
INSERT INTO pais(id,nombre) values( '195', 'Tuvalu island');
INSERT INTO pais(id,nombre) values( '196', 'U.k');
INSERT INTO pais(id,nombre) values( '197', 'U.k.');
INSERT INTO pais(id,nombre) values( '198', 'Uganda');
INSERT INTO pais(id,nombre) values( '199', 'United arab emirates');
INSERT INTO pais(id,nombre) values( '200', 'Uruguay');
INSERT INTO pais(id,nombre) values( '201', 'Usa');
INSERT INTO pais(id,nombre) values( '202', 'Usa  hawaii isl.');
INSERT INTO pais(id,nombre) values( '203', 'Usa  kauai isl.');
INSERT INTO pais(id,nombre) values( '204', 'Usa  lanai isl.');
INSERT INTO pais(id,nombre) values( '205', 'Usa  maui isl.');
INSERT INTO pais(id,nombre) values( '206', 'Usa  molokai isl.');
INSERT INTO pais(id,nombre) values( '207', 'Usa  oahu isl.');
INSERT INTO pais(id,nombre) values( '208', 'Usa (florida');
INSERT INTO pais(id,nombre) values( '209', 'Uzbekistan');
INSERT INTO pais(id,nombre) values( '210', 'Vanuatu');
INSERT INTO pais(id,nombre) values( '211', 'Venezuela');
INSERT INTO pais(id,nombre) values( '212', 'Viet nam');
INSERT INTO pais(id,nombre) values( '213', 'Virgin isl.');
INSERT INTO pais(id,nombre) values( '214', 'Wales');
INSERT INTO pais(id,nombre) values( '215', 'Wallis & futuna');
INSERT INTO pais(id,nombre) values( '216', 'Yugoslavia');
INSERT INTO pais(id,nombre) values( '217', 'Zaire');
INSERT INTO pais(id,nombre) values( '218', 'Zambia');
INSERT INTO pais(id,nombre) values( '219', 'Zimbabwe');






INSERT INTO ciudad(id,nombre,estado) values( '1', 'Aachen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2', 'Aalborg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '3', 'Aarhus', '2');
INSERT INTO ciudad(id,nombre,estado) values( '4', 'Abadan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '5', 'Abakan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '6', 'Abbotsford', '2');
INSERT INTO ciudad(id,nombre,estado) values( '7', 'Abeche', '2');
INSERT INTO ciudad(id,nombre,estado) values( '8', 'Aberdeen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '9', 'Abha', '2');
INSERT INTO ciudad(id,nombre,estado) values( '10', 'Abidjan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '11', 'Abilene', '1');
INSERT INTO ciudad(id,nombre,estado) values( '12', 'Abu dhabi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '13', 'Abu simbel', '2');
INSERT INTO ciudad(id,nombre,estado) values( '14', 'Abuja', '1');
INSERT INTO ciudad(id,nombre,estado) values( '15', 'Acapulco', '2');
INSERT INTO ciudad(id,nombre,estado) values( '16', 'Acarigua', '2');
INSERT INTO ciudad(id,nombre,estado) values( '17', 'Accra', '1');
INSERT INTO ciudad(id,nombre,estado) values( '18', 'Adak island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '19', 'Adana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '20', 'Addis ababa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '21', 'Adelaide', '2');
INSERT INTO ciudad(id,nombre,estado) values( '22', 'Adrar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '23', 'Afyon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '24', 'Agadez', '2');
INSERT INTO ciudad(id,nombre,estado) values( '25', 'Agadir', '2');
INSERT INTO ciudad(id,nombre,estado) values( '26', 'Agana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '27', 'Agartala', '2');
INSERT INTO ciudad(id,nombre,estado) values( '28', 'Agatti island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '29', 'Agen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '30', 'Aggeneys', '2');
INSERT INTO ciudad(id,nombre,estado) values( '31', 'Agra', '2');
INSERT INTO ciudad(id,nombre,estado) values( '32', 'Agrinion', '2');
INSERT INTO ciudad(id,nombre,estado) values( '33', 'Aguadilla', '1');
INSERT INTO ciudad(id,nombre,estado) values( '34', 'Aguascalientes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '35', 'Ahmedabad', '1');
INSERT INTO ciudad(id,nombre,estado) values( '36', 'Ahwaz', '1');
INSERT INTO ciudad(id,nombre,estado) values( '37', 'Aioun el atrouss', '2');
INSERT INTO ciudad(id,nombre,estado) values( '38', 'Aitutaki', '2');
INSERT INTO ciudad(id,nombre,estado) values( '39', 'Aix-les-milles', '2');
INSERT INTO ciudad(id,nombre,estado) values( '40', 'Aizwal', '2');
INSERT INTO ciudad(id,nombre,estado) values( '41', 'Ajaccio', '1');
INSERT INTO ciudad(id,nombre,estado) values( '42', 'Akita', '1');
INSERT INTO ciudad(id,nombre,estado) values( '43', 'Akola', '1');
INSERT INTO ciudad(id,nombre,estado) values( '44', 'Akron', '1');
INSERT INTO ciudad(id,nombre,estado) values( '45', 'Akrotiri', '2');
INSERT INTO ciudad(id,nombre,estado) values( '46', 'Aktyubinsk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '47', 'Akure', '1');
INSERT INTO ciudad(id,nombre,estado) values( '48', 'Akureyri', '2');
INSERT INTO ciudad(id,nombre,estado) values( '49', 'Al hociema', '2');
INSERT INTO ciudad(id,nombre,estado) values( '50', 'Al-ahsa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '51', 'Al-jouf', '1');
INSERT INTO ciudad(id,nombre,estado) values( '52', 'Alamogordo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '53', 'Albany', '2');
INSERT INTO ciudad(id,nombre,estado) values( '54', 'Albenga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '55', 'Albi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '56', 'Albury', '2');
INSERT INTO ciudad(id,nombre,estado) values( '57', 'Aldan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '58', 'Aleppo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '59', 'Alert', '1');
INSERT INTO ciudad(id,nombre,estado) values( '60', 'Alesund', '1');
INSERT INTO ciudad(id,nombre,estado) values( '61', 'Alexander bay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '62', 'Alexandra', '1');
INSERT INTO ciudad(id,nombre,estado) values( '63', 'Alexandria', '2');
INSERT INTO ciudad(id,nombre,estado) values( '64', 'Alexandroupolis', '1');
INSERT INTO ciudad(id,nombre,estado) values( '65', 'Alghero', '1');
INSERT INTO ciudad(id,nombre,estado) values( '66', 'Algier', '2');
INSERT INTO ciudad(id,nombre,estado) values( '67', 'Alicante', '2');
INSERT INTO ciudad(id,nombre,estado) values( '68', 'Alice', '1');
INSERT INTO ciudad(id,nombre,estado) values( '69', 'Alice springs', '1');
INSERT INTO ciudad(id,nombre,estado) values( '70', 'Alice town', '2');
INSERT INTO ciudad(id,nombre,estado) values( '71', 'Allahabad', '1');
INSERT INTO ciudad(id,nombre,estado) values( '72', 'Alma-ata', '2');
INSERT INTO ciudad(id,nombre,estado) values( '73', 'Almeria', '1');
INSERT INTO ciudad(id,nombre,estado) values( '74', 'Alofi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '75', 'Alor setar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '76', 'Alta', '2');
INSERT INTO ciudad(id,nombre,estado) values( '77', 'Alta floresta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '78', 'Altamira', '2');
INSERT INTO ciudad(id,nombre,estado) values( '79', 'Altenburg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '80', 'Altenrhein', '2');
INSERT INTO ciudad(id,nombre,estado) values( '81', 'Alto palena', '1');
INSERT INTO ciudad(id,nombre,estado) values( '82', 'Altoona', '1');
INSERT INTO ciudad(id,nombre,estado) values( '83', 'Altus', '1');
INSERT INTO ciudad(id,nombre,estado) values( '84', 'Amami', '1');
INSERT INTO ciudad(id,nombre,estado) values( '85', 'Amarillo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '86', 'Ambato', '2');
INSERT INTO ciudad(id,nombre,estado) values( '87', 'Amberley', '2');
INSERT INTO ciudad(id,nombre,estado) values( '88', 'Ambilobe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '89', 'Ambon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '90', 'Amilcar cabral', '2');
INSERT INTO ciudad(id,nombre,estado) values( '91', 'Amman', '1');
INSERT INTO ciudad(id,nombre,estado) values( '92', 'Amritsar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '93', 'Amsterdam', '1');
INSERT INTO ciudad(id,nombre,estado) values( '94', 'Anaa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '95', 'Anaco', '1');
INSERT INTO ciudad(id,nombre,estado) values( '96', 'Analalava', '1');
INSERT INTO ciudad(id,nombre,estado) values( '97', 'Anchorage', '1');
INSERT INTO ciudad(id,nombre,estado) values( '98', 'Ancud', '1');
INSERT INTO ciudad(id,nombre,estado) values( '99', 'Andahuaylas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '100', 'Andapa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '101', 'Andersen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '102', 'Andoya', '2');
INSERT INTO ciudad(id,nombre,estado) values( '103', 'Andravida', '1');
INSERT INTO ciudad(id,nombre,estado) values( '104', 'Andros town', '1');
INSERT INTO ciudad(id,nombre,estado) values( '105', 'Angelholm', '1');
INSERT INTO ciudad(id,nombre,estado) values( '106', 'Angouleme', '1');
INSERT INTO ciudad(id,nombre,estado) values( '107', 'Anjouan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '108', 'Ankara', '2');
INSERT INTO ciudad(id,nombre,estado) values( '109', 'Annaba', '2');
INSERT INTO ciudad(id,nombre,estado) values( '110', 'Annecy', '2');
INSERT INTO ciudad(id,nombre,estado) values( '111', 'Annemasse', '1');
INSERT INTO ciudad(id,nombre,estado) values( '112', 'Annette island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '113', 'Anniston', '2');
INSERT INTO ciudad(id,nombre,estado) values( '114', 'Anta', '2');
INSERT INTO ciudad(id,nombre,estado) values( '115', 'Antalaha', '2');
INSERT INTO ciudad(id,nombre,estado) values( '116', 'Antalya', '1');
INSERT INTO ciudad(id,nombre,estado) values( '117', 'Antananarivo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '118', 'Antigua', '1');
INSERT INTO ciudad(id,nombre,estado) values( '119', 'Antofagasta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '120', 'Antsiranana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '121', 'Antsohihy', '1');
INSERT INTO ciudad(id,nombre,estado) values( '122', 'Antwerp', '1');
INSERT INTO ciudad(id,nombre,estado) values( '123', 'Aomori', '2');
INSERT INTO ciudad(id,nombre,estado) values( '124', 'Apolo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '125', 'Aqaba', '1');
INSERT INTO ciudad(id,nombre,estado) values( '126', 'Aracaju', '1');
INSERT INTO ciudad(id,nombre,estado) values( '127', 'Aracatuba', '1');
INSERT INTO ciudad(id,nombre,estado) values( '128', 'Arad', '2');
INSERT INTO ciudad(id,nombre,estado) values( '129', 'Arar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '130', 'Araracuara', '2');
INSERT INTO ciudad(id,nombre,estado) values( '131', 'Arauca', '2');
INSERT INTO ciudad(id,nombre,estado) values( '132', 'Arcachon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '133', 'Ardmore', '1');
INSERT INTO ciudad(id,nombre,estado) values( '134', 'Arequipa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '135', 'Arica', '1');
INSERT INTO ciudad(id,nombre,estado) values( '136', 'Armenia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '137', 'Armstrong', '1');
INSERT INTO ciudad(id,nombre,estado) values( '138', 'Arnsberg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '139', 'Artigas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '140', 'Arusha', '2');
INSERT INTO ciudad(id,nombre,estado) values( '141', 'Arutua', '2');
INSERT INTO ciudad(id,nombre,estado) values( '142', 'Arvidsjaur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '143', 'Asahikawa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '144', 'Ashkhabad', '1');
INSERT INTO ciudad(id,nombre,estado) values( '145', 'Astrakhan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '146', 'Asuncion', '2');
INSERT INTO ciudad(id,nombre,estado) values( '147', 'Aswan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '148', 'Atar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '149', 'Athens', '2');
INSERT INTO ciudad(id,nombre,estado) values( '150', 'Atikokan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '151', 'Atlanta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '152', 'Atlantic city', '1');
INSERT INTO ciudad(id,nombre,estado) values( '153', 'Aubenas-vals-lanas', '2');
INSERT INTO ciudad(id,nombre,estado) values( '154', 'Auckland', '2');
INSERT INTO ciudad(id,nombre,estado) values( '155', 'Augsburg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '156', 'Augusta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '157', 'Aurangabad', '2');
INSERT INTO ciudad(id,nombre,estado) values( '158', 'Aurillac', '2');
INSERT INTO ciudad(id,nombre,estado) values( '159', 'Austin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '160', 'Auxerre', '1');
INSERT INTO ciudad(id,nombre,estado) values( '161', 'Avalon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '162', 'Avarua', '2');
INSERT INTO ciudad(id,nombre,estado) values( '163', 'Aviano', '2');
INSERT INTO ciudad(id,nombre,estado) values( '164', 'Avignon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '165', 'Aviles', '2');
INSERT INTO ciudad(id,nombre,estado) values( '166', 'Ayacucho', '2');
INSERT INTO ciudad(id,nombre,estado) values( '167', 'Babelthuap', '2');
INSERT INTO ciudad(id,nombre,estado) values( '168', 'Bacau', '1');
INSERT INTO ciudad(id,nombre,estado) values( '169', 'Bacolod', '1');
INSERT INTO ciudad(id,nombre,estado) values( '170', 'Badajoz', '1');
INSERT INTO ciudad(id,nombre,estado) values( '171', 'Baden-baden', '1');
INSERT INTO ciudad(id,nombre,estado) values( '172', 'Bafoussam', '1');
INSERT INTO ciudad(id,nombre,estado) values( '173', 'Bage', '2');
INSERT INTO ciudad(id,nombre,estado) values( '174', 'Baghdad', '1');
INSERT INTO ciudad(id,nombre,estado) values( '175', 'Baghdogra', '1');
INSERT INTO ciudad(id,nombre,estado) values( '176', 'Bagotville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '177', 'Baguio', '2');
INSERT INTO ciudad(id,nombre,estado) values( '178', 'Bahar dar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '179', 'Bahia blanca', '2');
INSERT INTO ciudad(id,nombre,estado) values( '180', 'Bahia solano', '2');
INSERT INTO ciudad(id,nombre,estado) values( '181', 'Bahias dehuatulco', '1');
INSERT INTO ciudad(id,nombre,estado) values( '182', 'Bahrain', '1');
INSERT INTO ciudad(id,nombre,estado) values( '183', 'Baia mare', '1');
INSERT INTO ciudad(id,nombre,estado) values( '184', 'Baie comeau', '1');
INSERT INTO ciudad(id,nombre,estado) values( '185', 'Bakel', '1');
INSERT INTO ciudad(id,nombre,estado) values( '186', 'Baker lake', '2');
INSERT INTO ciudad(id,nombre,estado) values( '187', 'Bakersfield', '1');
INSERT INTO ciudad(id,nombre,estado) values( '188', 'Bakhtaran', '1');
INSERT INTO ciudad(id,nombre,estado) values( '189', 'Baku', '2');
INSERT INTO ciudad(id,nombre,estado) values( '190', 'Balikesir', '1');
INSERT INTO ciudad(id,nombre,estado) values( '191', 'Balikpapan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '192', 'Balmaceda', '1');
INSERT INTO ciudad(id,nombre,estado) values( '193', 'Baltimore', '1');
INSERT INTO ciudad(id,nombre,estado) values( '194', 'Balurghat', '1');
INSERT INTO ciudad(id,nombre,estado) values( '195', 'Bamako', '2');
INSERT INTO ciudad(id,nombre,estado) values( '196', 'Bambari', '1');
INSERT INTO ciudad(id,nombre,estado) values( '197', 'Bamenda', '1');
INSERT INTO ciudad(id,nombre,estado) values( '198', 'Banak', '1');
INSERT INTO ciudad(id,nombre,estado) values( '199', 'Banda aceh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '200', 'Bandar abbas', '2');
INSERT INTO ciudad(id,nombre,estado) values( '201', 'Bandar lengeh', '1');
INSERT INTO ciudad(id,nombre,estado) values( '202', 'Bandar mahshahr', '1');
INSERT INTO ciudad(id,nombre,estado) values( '203', 'Bandirma', '2');
INSERT INTO ciudad(id,nombre,estado) values( '204', 'Bandoundu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '205', 'Bandung', '1');
INSERT INTO ciudad(id,nombre,estado) values( '206', 'Bangalore', '1');
INSERT INTO ciudad(id,nombre,estado) values( '207', 'Bangassou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '208', 'Bangkok', '1');
INSERT INTO ciudad(id,nombre,estado) values( '209', 'Bangor', '2');
INSERT INTO ciudad(id,nombre,estado) values( '210', 'Bangui', '2');
INSERT INTO ciudad(id,nombre,estado) values( '211', 'Banjarmasin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '212', 'Banjul', '2');
INSERT INTO ciudad(id,nombre,estado) values( '213', 'Baracoa playa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '214', 'Barahona', '2');
INSERT INTO ciudad(id,nombre,estado) values( '215', 'Barcelona', '1');
INSERT INTO ciudad(id,nombre,estado) values( '216', 'Bardufoss', '1');
INSERT INTO ciudad(id,nombre,estado) values( '217', 'Bari', '2');
INSERT INTO ciudad(id,nombre,estado) values( '218', 'Barinas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '219', 'Barking sands', '1');
INSERT INTO ciudad(id,nombre,estado) values( '220', 'Barnaul', '1');
INSERT INTO ciudad(id,nombre,estado) values( '221', 'Baroda', '2');
INSERT INTO ciudad(id,nombre,estado) values( '222', 'Barquisimeto', '2');
INSERT INTO ciudad(id,nombre,estado) values( '223', 'Barrancabermeja', '1');
INSERT INTO ciudad(id,nombre,estado) values( '224', 'Barranquilla', '2');
INSERT INTO ciudad(id,nombre,estado) values( '225', 'Barrow', '2');
INSERT INTO ciudad(id,nombre,estado) values( '226', 'Barrow island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '227', 'Barter island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '228', 'Basrah', '2');
INSERT INTO ciudad(id,nombre,estado) values( '229', 'Basse terre', '1');
INSERT INTO ciudad(id,nombre,estado) values( '230', 'Bastia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '231', 'Bata', '2');
INSERT INTO ciudad(id,nombre,estado) values( '232', 'Batam', '1');
INSERT INTO ciudad(id,nombre,estado) values( '233', 'Batman', '2');
INSERT INTO ciudad(id,nombre,estado) values( '234', 'Baton rouge', '1');
INSERT INTO ciudad(id,nombre,estado) values( '235', 'Batouri', '1');
INSERT INTO ciudad(id,nombre,estado) values( '236', 'Batsfjord', '1');
INSERT INTO ciudad(id,nombre,estado) values( '237', 'Baudette', '2');
INSERT INTO ciudad(id,nombre,estado) values( '238', 'Bauru', '1');
INSERT INTO ciudad(id,nombre,estado) values( '239', 'Bautzen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '240', 'Bayamo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '241', 'Bayreuth', '2');
INSERT INTO ciudad(id,nombre,estado) values( '242', 'Beaufort', '2');
INSERT INTO ciudad(id,nombre,estado) values( '243', 'Beaumont', '2');
INSERT INTO ciudad(id,nombre,estado) values( '244', 'Beauvais', '2');
INSERT INTO ciudad(id,nombre,estado) values( '245', 'Bedford', '1');
INSERT INTO ciudad(id,nombre,estado) values( '246', 'Beer-sheba', '2');
INSERT INTO ciudad(id,nombre,estado) values( '247', 'Beijing', '1');
INSERT INTO ciudad(id,nombre,estado) values( '248', 'Beira', '1');
INSERT INTO ciudad(id,nombre,estado) values( '249', 'Beirut', '2');
INSERT INTO ciudad(id,nombre,estado) values( '250', 'Bejaja', '2');
INSERT INTO ciudad(id,nombre,estado) values( '251', 'Belem', '1');
INSERT INTO ciudad(id,nombre,estado) values( '252', 'Belfast', '1');
INSERT INTO ciudad(id,nombre,estado) values( '253', 'Belgaum', '1');
INSERT INTO ciudad(id,nombre,estado) values( '254', 'Belize city', '1');
INSERT INTO ciudad(id,nombre,estado) values( '255', 'Belleville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '256', 'Bellingham', '2');
INSERT INTO ciudad(id,nombre,estado) values( '257', 'Belo horizonte', '2');
INSERT INTO ciudad(id,nombre,estado) values( '258', 'Benbecula', '1');
INSERT INTO ciudad(id,nombre,estado) values( '259', 'Benghazi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '260', 'Bengkulu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '261', 'Benguela', '2');
INSERT INTO ciudad(id,nombre,estado) values( '262', 'Benin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '263', 'Beograd', '1');
INSERT INTO ciudad(id,nombre,estado) values( '264', 'Berbera', '1');
INSERT INTO ciudad(id,nombre,estado) values( '265', 'Berberati', '1');
INSERT INTO ciudad(id,nombre,estado) values( '266', 'Bergamo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '267', 'Bergen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '268', 'Bergerac', '2');
INSERT INTO ciudad(id,nombre,estado) values( '269', 'Berlin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '270', 'Bermejo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '271', 'Bern', '2');
INSERT INTO ciudad(id,nombre,estado) values( '272', 'Besalampy', '1');
INSERT INTO ciudad(id,nombre,estado) values( '273', 'Bethel', '2');
INSERT INTO ciudad(id,nombre,estado) values( '274', 'Bettles', '1');
INSERT INTO ciudad(id,nombre,estado) values( '275', 'Beziers', '1');
INSERT INTO ciudad(id,nombre,estado) values( '276', 'Bhairawa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '277', 'Bhaunagar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '278', 'Bhopal', '2');
INSERT INTO ciudad(id,nombre,estado) values( '279', 'Bhubaneswar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '280', 'Bhuj', '2');
INSERT INTO ciudad(id,nombre,estado) values( '281', 'Biak', '2');
INSERT INTO ciudad(id,nombre,estado) values( '282', 'Biarritz-bayonne', '2');
INSERT INTO ciudad(id,nombre,estado) values( '283', 'Biggin hill', '1');
INSERT INTO ciudad(id,nombre,estado) values( '284', 'Bilaspur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '285', 'Bilbao', '2');
INSERT INTO ciudad(id,nombre,estado) values( '286', 'Billund', '1');
INSERT INTO ciudad(id,nombre,estado) values( '287', 'Biloxi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '288', 'Bima', '2');
INSERT INTO ciudad(id,nombre,estado) values( '289', 'Bintulu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '290', 'Birao', '1');
INSERT INTO ciudad(id,nombre,estado) values( '291', 'Biratnagar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '292', 'Birjand', '1');
INSERT INTO ciudad(id,nombre,estado) values( '293', 'Birmingham', '2');
INSERT INTO ciudad(id,nombre,estado) values( '294', 'Bisha', '1');
INSERT INTO ciudad(id,nombre,estado) values( '295', 'Bishkek', '1');
INSERT INTO ciudad(id,nombre,estado) values( '296', 'Bisho', '1');
INSERT INTO ciudad(id,nombre,estado) values( '297', 'Biskra', '2');
INSERT INTO ciudad(id,nombre,estado) values( '298', 'Bissau', '2');
INSERT INTO ciudad(id,nombre,estado) values( '299', 'Bitam', '1');
INSERT INTO ciudad(id,nombre,estado) values( '300', 'Blackbushe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '301', 'Blackpool', '1');
INSERT INTO ciudad(id,nombre,estado) values( '302', 'Blagoveschensk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '303', 'Blantyre', '2');
INSERT INTO ciudad(id,nombre,estado) values( '304', 'Bloemfontein', '2');
INSERT INTO ciudad(id,nombre,estado) values( '305', 'Bluefields', '2');
INSERT INTO ciudad(id,nombre,estado) values( '306', 'Blytheville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '307', 'Boa vista', '1');
INSERT INTO ciudad(id,nombre,estado) values( '308', 'Bobo-dioulasso', '2');
INSERT INTO ciudad(id,nombre,estado) values( '309', 'Boca raton', '2');
INSERT INTO ciudad(id,nombre,estado) values( '310', 'Bocas del toro', '2');
INSERT INTO ciudad(id,nombre,estado) values( '311', 'Bodoe', '1');
INSERT INTO ciudad(id,nombre,estado) values( '312', 'Bogota', '2');
INSERT INTO ciudad(id,nombre,estado) values( '313', 'Boise', '1');
INSERT INTO ciudad(id,nombre,estado) values( '314', 'Bologna', '1');
INSERT INTO ciudad(id,nombre,estado) values( '315', 'Bolzano', '1');
INSERT INTO ciudad(id,nombre,estado) values( '316', 'Bom jesus da lapa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '317', 'Bombay', '2');
INSERT INTO ciudad(id,nombre,estado) values( '318', 'Bora bora', '1');
INSERT INTO ciudad(id,nombre,estado) values( '319', 'Bordeaux', '2');
INSERT INTO ciudad(id,nombre,estado) values( '320', 'Borkum', '2');
INSERT INTO ciudad(id,nombre,estado) values( '321', 'Borlange', '2');
INSERT INTO ciudad(id,nombre,estado) values( '322', 'Boston', '2');
INSERT INTO ciudad(id,nombre,estado) values( '323', 'Bouake', '2');
INSERT INTO ciudad(id,nombre,estado) values( '324', 'Bouar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '325', 'Bourg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '326', 'Bourgas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '327', 'Bourges', '1');
INSERT INTO ciudad(id,nombre,estado) values( '328', 'Bournemouth', '1');
INSERT INTO ciudad(id,nombre,estado) values( '329', 'Bradshaw field', '2');
INSERT INTO ciudad(id,nombre,estado) values( '330', 'Braganca', '2');
INSERT INTO ciudad(id,nombre,estado) values( '331', 'Brandon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '332', 'Brasilia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '333', 'Bratislava', '2');
INSERT INTO ciudad(id,nombre,estado) values( '334', 'Bratsk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '335', 'Braunschweig', '2');
INSERT INTO ciudad(id,nombre,estado) values( '336', 'Brazzaville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '337', 'Bremen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '338', 'Bremerhaven', '1');
INSERT INTO ciudad(id,nombre,estado) values( '339', 'Brest', '1');
INSERT INTO ciudad(id,nombre,estado) values( '340', 'Bria', '2');
INSERT INTO ciudad(id,nombre,estado) values( '341', 'Bridgetown', '2');
INSERT INTO ciudad(id,nombre,estado) values( '342', 'Brindisi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '343', 'Brisbane', '2');
INSERT INTO ciudad(id,nombre,estado) values( '344', 'Bristol', '1');
INSERT INTO ciudad(id,nombre,estado) values( '345', 'Brive', '1');
INSERT INTO ciudad(id,nombre,estado) values( '346', 'Brize norton', '2');
INSERT INTO ciudad(id,nombre,estado) values( '347', 'Bronnoysund', '1');
INSERT INTO ciudad(id,nombre,estado) values( '348', 'Broughton island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '349', 'Brownsville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '350', 'Brueggen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '351', 'Brunei', '2');
INSERT INTO ciudad(id,nombre,estado) values( '352', 'Brussels', '2');
INSERT INTO ciudad(id,nombre,estado) values( '353', 'Bryan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '354', 'Bryansk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '355', 'Bucaramanga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '356', 'Bucharest', '1');
INSERT INTO ciudad(id,nombre,estado) values( '357', 'Buckley', '1');
INSERT INTO ciudad(id,nombre,estado) values( '358', 'Budapest', '2');
INSERT INTO ciudad(id,nombre,estado) values( '359', 'Buenaventura', '2');
INSERT INTO ciudad(id,nombre,estado) values( '360', 'Buenos aires', '2');
INSERT INTO ciudad(id,nombre,estado) values( '361', 'Buffalo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '362', 'Buffalo narrows', '1');
INSERT INTO ciudad(id,nombre,estado) values( '363', 'Bujumbura', '1');
INSERT INTO ciudad(id,nombre,estado) values( '364', 'Bukavu/kavumu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '365', 'Bukhara', '1');
INSERT INTO ciudad(id,nombre,estado) values( '366', 'Bulawayo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '367', 'Bunia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '368', 'Burbank', '1');
INSERT INTO ciudad(id,nombre,estado) values( '369', 'Burlington', '2');
INSERT INTO ciudad(id,nombre,estado) values( '370', 'Bursa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '371', 'Burwash', '1');
INSERT INTO ciudad(id,nombre,estado) values( '372', 'Bush field', '2');
INSERT INTO ciudad(id,nombre,estado) values( '373', 'Bushehr', '1');
INSERT INTO ciudad(id,nombre,estado) values( '374', 'Cabinda', '1');
INSERT INTO ciudad(id,nombre,estado) values( '375', 'Caen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '376', 'Cagliari', '2');
INSERT INTO ciudad(id,nombre,estado) values( '377', 'Cairns', '2');
INSERT INTO ciudad(id,nombre,estado) values( '378', 'Cairo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '379', 'Calabar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '380', 'Calais', '2');
INSERT INTO ciudad(id,nombre,estado) values( '381', 'Calama', '2');
INSERT INTO ciudad(id,nombre,estado) values( '382', 'Calcutta', '2');
INSERT INTO ciudad(id,nombre,estado) values( '383', 'Calexico', '2');
INSERT INTO ciudad(id,nombre,estado) values( '384', 'Calgary', '1');
INSERT INTO ciudad(id,nombre,estado) values( '385', 'Cali', '2');
INSERT INTO ciudad(id,nombre,estado) values( '386', 'Calicut', '1');
INSERT INTO ciudad(id,nombre,estado) values( '387', 'Calvi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '388', 'Camaguey', '2');
INSERT INTO ciudad(id,nombre,estado) values( '389', 'Cambridge', '1');
INSERT INTO ciudad(id,nombre,estado) values( '390', 'Cambridge bay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '391', 'Camden', '2');
INSERT INTO ciudad(id,nombre,estado) values( '392', 'Camiri', '2');
INSERT INTO ciudad(id,nombre,estado) values( '393', 'Camp springs', '2');
INSERT INTO ciudad(id,nombre,estado) values( '394', 'Campbell river', '2');
INSERT INTO ciudad(id,nombre,estado) values( '395', 'Campeche', '2');
INSERT INTO ciudad(id,nombre,estado) values( '396', 'Campinas', '2');
INSERT INTO ciudad(id,nombre,estado) values( '397', 'Campo grande', '2');
INSERT INTO ciudad(id,nombre,estado) values( '398', 'Campos', '2');
INSERT INTO ciudad(id,nombre,estado) values( '399', 'Canaima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '400', 'Canberra', '2');
INSERT INTO ciudad(id,nombre,estado) values( '401', 'Cancun', '2');
INSERT INTO ciudad(id,nombre,estado) values( '402', 'Canefield', '1');
INSERT INTO ciudad(id,nombre,estado) values( '403', 'Cannes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '404', 'Canouan island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '405', 'Canton island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '406', 'Cap haitien', '1');
INSERT INTO ciudad(id,nombre,estado) values( '407', 'Cap skiring', '1');
INSERT INTO ciudad(id,nombre,estado) values( '408', 'Cape dorset', '1');
INSERT INTO ciudad(id,nombre,estado) values( '409', 'Cape lisburne', '1');
INSERT INTO ciudad(id,nombre,estado) values( '410', 'Cape newenham', '1');
INSERT INTO ciudad(id,nombre,estado) values( '411', 'Cape town', '1');
INSERT INTO ciudad(id,nombre,estado) values( '412', 'Caracas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '413', 'Caransebes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '414', 'Caravelas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '415', 'Carcassonne', '1');
INSERT INTO ciudad(id,nombre,estado) values( '416', 'Cardiff', '1');
INSERT INTO ciudad(id,nombre,estado) values( '417', 'Caribou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '418', 'Carlisle', '2');
INSERT INTO ciudad(id,nombre,estado) values( '419', 'Carlsbad', '2');
INSERT INTO ciudad(id,nombre,estado) values( '420', 'Carolina', '2');
INSERT INTO ciudad(id,nombre,estado) values( '421', 'Cartagena', '1');
INSERT INTO ciudad(id,nombre,estado) values( '422', 'Carupano', '2');
INSERT INTO ciudad(id,nombre,estado) values( '423', 'Casablanca', '2');
INSERT INTO ciudad(id,nombre,estado) values( '424', 'Cascavel', '2');
INSERT INTO ciudad(id,nombre,estado) values( '425', 'Casper', '2');
INSERT INTO ciudad(id,nombre,estado) values( '426', 'Castlegar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '427', 'Castres', '1');
INSERT INTO ciudad(id,nombre,estado) values( '428', 'Castries', '2');
INSERT INTO ciudad(id,nombre,estado) values( '429', 'Catamarca', '1');
INSERT INTO ciudad(id,nombre,estado) values( '430', 'Catania', '1');
INSERT INTO ciudad(id,nombre,estado) values( '431', 'Caxias do sul', '1');
INSERT INTO ciudad(id,nombre,estado) values( '432', 'Cayenne', '1');
INSERT INTO ciudad(id,nombre,estado) values( '433', 'Cayman barac', '2');
INSERT INTO ciudad(id,nombre,estado) values( '434', 'Cayo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '435', 'Cazombo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '436', 'Cebu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '437', 'Cedar city', '2');
INSERT INTO ciudad(id,nombre,estado) values( '438', 'Celle', '1');
INSERT INTO ciudad(id,nombre,estado) values( '439', 'Chachapoyas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '440', 'Chah bahar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '441', 'Chaiten', '1');
INSERT INTO ciudad(id,nombre,estado) values( '442', 'Chalon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '443', 'Chambery', '2');
INSERT INTO ciudad(id,nombre,estado) values( '444', 'Chandigarh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '445', 'Changcha', '2');
INSERT INTO ciudad(id,nombre,estado) values( '446', 'Changuinola', '1');
INSERT INTO ciudad(id,nombre,estado) values( '447', 'Chania', '2');
INSERT INTO ciudad(id,nombre,estado) values( '448', 'Chapeco', '1');
INSERT INTO ciudad(id,nombre,estado) values( '449', 'Chapleau', '2');
INSERT INTO ciudad(id,nombre,estado) values( '450', 'Charleroi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '451', 'Charleston', '2');
INSERT INTO ciudad(id,nombre,estado) values( '452', 'Charlieville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '453', 'Charlo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '454', 'Charlotte', '1');
INSERT INTO ciudad(id,nombre,estado) values( '455', 'Charlottetown', '1');
INSERT INTO ciudad(id,nombre,estado) values( '456', 'Chateauroux', '1');
INSERT INTO ciudad(id,nombre,estado) values( '457', 'Chatham', '1');
INSERT INTO ciudad(id,nombre,estado) values( '458', 'Chatham island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '459', 'Chattanooga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '460', 'Cheju', '1');
INSERT INTO ciudad(id,nombre,estado) values( '461', 'Chelyabinsk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '462', 'Chengdu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '463', 'Cherbourg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '464', 'Cherry point', '2');
INSERT INTO ciudad(id,nombre,estado) values( '465', 'Chetumal', '2');
INSERT INTO ciudad(id,nombre,estado) values( '466', 'Cheyenne', '2');
INSERT INTO ciudad(id,nombre,estado) values( '467', 'Chiayi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '468', 'Chicago', '1');
INSERT INTO ciudad(id,nombre,estado) values( '469', 'Chiclayo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '470', 'Chico', '1');
INSERT INTO ciudad(id,nombre,estado) values( '471', 'Chicopee falls', '2');
INSERT INTO ciudad(id,nombre,estado) values( '472', 'Chihuahua', '1');
INSERT INTO ciudad(id,nombre,estado) values( '473', 'Childress', '1');
INSERT INTO ciudad(id,nombre,estado) values( '474', 'Chile chico', '1');
INSERT INTO ciudad(id,nombre,estado) values( '475', 'Chilliwack', '2');
INSERT INTO ciudad(id,nombre,estado) values( '476', 'Chimbote', '2');
INSERT INTO ciudad(id,nombre,estado) values( '477', 'Chimkent', '2');
INSERT INTO ciudad(id,nombre,estado) values( '478', 'China', '1');
INSERT INTO ciudad(id,nombre,estado) values( '479', 'Chinmen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '480', 'Chios', '1');
INSERT INTO ciudad(id,nombre,estado) values( '481', 'Chiredzi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '482', 'Chita', '1');
INSERT INTO ciudad(id,nombre,estado) values( '483', 'Chitato', '1');
INSERT INTO ciudad(id,nombre,estado) values( '484', 'Chitose', '1');
INSERT INTO ciudad(id,nombre,estado) values( '485', 'Chittagong', '2');
INSERT INTO ciudad(id,nombre,estado) values( '486', 'Cholet', '2');
INSERT INTO ciudad(id,nombre,estado) values( '487', 'Chongqing', '1');
INSERT INTO ciudad(id,nombre,estado) values( '488', 'Christchurch', '2');
INSERT INTO ciudad(id,nombre,estado) values( '489', 'Chub cay', '2');
INSERT INTO ciudad(id,nombre,estado) values( '490', 'Chung', '1');
INSERT INTO ciudad(id,nombre,estado) values( '491', 'Churchill', '1');
INSERT INTO ciudad(id,nombre,estado) values( '492', 'Chuuk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '493', 'Ciego de avila', '2');
INSERT INTO ciudad(id,nombre,estado) values( '494', 'Cienfuegos', '2');
INSERT INTO ciudad(id,nombre,estado) values( '495', 'Cilacap', '1');
INSERT INTO ciudad(id,nombre,estado) values( '496', 'Cincinnati', '2');
INSERT INTO ciudad(id,nombre,estado) values( '497', 'Cirebon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '498', 'Ciudad bolivar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '499', 'Ciudad del carmen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '500', 'Ciudad juarez', '1');
INSERT INTO ciudad(id,nombre,estado) values( '501', 'Ciudad mante', '2');
INSERT INTO ciudad(id,nombre,estado) values( '502', 'Ciudad obregon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '503', 'Ciudad victoria', '1');
INSERT INTO ciudad(id,nombre,estado) values( '504', 'Clermont ferrand', '2');
INSERT INTO ciudad(id,nombre,estado) values( '505', 'Cleveland', '1');
INSERT INTO ciudad(id,nombre,estado) values( '506', 'Clovis', '2');
INSERT INTO ciudad(id,nombre,estado) values( '507', 'Cluj-napoca', '1');
INSERT INTO ciudad(id,nombre,estado) values( '508', 'Clyde river', '1');
INSERT INTO ciudad(id,nombre,estado) values( '509', 'Coban', '1');
INSERT INTO ciudad(id,nombre,estado) values( '510', 'Cobija', '2');
INSERT INTO ciudad(id,nombre,estado) values( '511', 'Coca', '2');
INSERT INTO ciudad(id,nombre,estado) values( '512', 'Cochabamba', '2');
INSERT INTO ciudad(id,nombre,estado) values( '513', 'Cockburn town', '1');
INSERT INTO ciudad(id,nombre,estado) values( '514', 'Coco beach', '2');
INSERT INTO ciudad(id,nombre,estado) values( '515', 'Coffs harbour', '1');
INSERT INTO ciudad(id,nombre,estado) values( '516', 'Cognac', '2');
INSERT INTO ciudad(id,nombre,estado) values( '517', 'Coimbatore', '2');
INSERT INTO ciudad(id,nombre,estado) values( '518', 'Cold bay', '2');
INSERT INTO ciudad(id,nombre,estado) values( '519', 'Cold lake', '1');
INSERT INTO ciudad(id,nombre,estado) values( '520', 'Colima', '2');
INSERT INTO ciudad(id,nombre,estado) values( '521', 'College station', '1');
INSERT INTO ciudad(id,nombre,estado) values( '522', 'Colmar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '523', 'Cologne', '1');
INSERT INTO ciudad(id,nombre,estado) values( '524', 'Colombia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '525', 'Colombo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '526', 'Colombus', '2');
INSERT INTO ciudad(id,nombre,estado) values( '527', 'Colonia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '528', 'Colorado springs', '2');
INSERT INTO ciudad(id,nombre,estado) values( '529', 'Coltishall', '2');
INSERT INTO ciudad(id,nombre,estado) values( '530', 'Columbia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '531', 'Columbus', '2');
INSERT INTO ciudad(id,nombre,estado) values( '532', 'Comodoro rivadavia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '533', 'Comox', '1');
INSERT INTO ciudad(id,nombre,estado) values( '534', 'Conceicao do araguaia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '535', 'Concepcion', '2');
INSERT INTO ciudad(id,nombre,estado) values( '536', 'Conception', '2');
INSERT INTO ciudad(id,nombre,estado) values( '537', 'Concordia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '538', 'Condoto', '1');
INSERT INTO ciudad(id,nombre,estado) values( '539', 'Coningsby', '1');
INSERT INTO ciudad(id,nombre,estado) values( '540', 'Connaught', '1');
INSERT INTO ciudad(id,nombre,estado) values( '541', 'Conroe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '542', 'Constanta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '543', 'Constantine', '1');
INSERT INTO ciudad(id,nombre,estado) values( '544', 'Cooch-behar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '545', 'Coolangatta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '546', 'Copenhagen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '547', 'Copiapo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '548', 'Coppermine', '2');
INSERT INTO ciudad(id,nombre,estado) values( '549', 'Coral harbour', '1');
INSERT INTO ciudad(id,nombre,estado) values( '550', 'Cordoba', '1');
INSERT INTO ciudad(id,nombre,estado) values( '551', 'Cordova', '1');
INSERT INTO ciudad(id,nombre,estado) values( '552', 'Cork', '2');
INSERT INTO ciudad(id,nombre,estado) values( '553', 'Coro', '2');
INSERT INTO ciudad(id,nombre,estado) values( '554', 'Coronation', '2');
INSERT INTO ciudad(id,nombre,estado) values( '555', 'Corozal', '1');
INSERT INTO ciudad(id,nombre,estado) values( '556', 'Corpus christi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '557', 'Corrientes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '558', 'Corumba', '1');
INSERT INTO ciudad(id,nombre,estado) values( '559', 'Coto 47', '1');
INSERT INTO ciudad(id,nombre,estado) values( '560', 'Cotonou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '561', 'Cotulla', '1');
INSERT INTO ciudad(id,nombre,estado) values( '562', 'Coventry', '2');
INSERT INTO ciudad(id,nombre,estado) values( '563', 'Coxs bazar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '564', 'Coyhaique', '1');
INSERT INTO ciudad(id,nombre,estado) values( '565', 'Cozumel', '1');
INSERT INTO ciudad(id,nombre,estado) values( '566', 'Craiova', '1');
INSERT INTO ciudad(id,nombre,estado) values( '567', 'Cranbrook', '1');
INSERT INTO ciudad(id,nombre,estado) values( '568', 'Creil', '1');
INSERT INTO ciudad(id,nombre,estado) values( '569', 'Crestview', '1');
INSERT INTO ciudad(id,nombre,estado) values( '570', 'Crotone', '1');
INSERT INTO ciudad(id,nombre,estado) values( '571', 'Cruiziro do sul', '1');
INSERT INTO ciudad(id,nombre,estado) values( '572', 'Cuamba', '2');
INSERT INTO ciudad(id,nombre,estado) values( '573', 'Cucuta', '2');
INSERT INTO ciudad(id,nombre,estado) values( '574', 'Cuddapah', '2');
INSERT INTO ciudad(id,nombre,estado) values( '575', 'Cuenca', '2');
INSERT INTO ciudad(id,nombre,estado) values( '576', 'Cuernavaca', '2');
INSERT INTO ciudad(id,nombre,estado) values( '577', 'Cuiaba', '2');
INSERT INTO ciudad(id,nombre,estado) values( '578', 'Culiacan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '579', 'Cumana', '2');
INSERT INTO ciudad(id,nombre,estado) values( '580', 'Curitiba', '2');
INSERT INTO ciudad(id,nombre,estado) values( '581', 'Cutbank', '1');
INSERT INTO ciudad(id,nombre,estado) values( '582', 'Cuzco', '1');
INSERT INTO ciudad(id,nombre,estado) values( '583', 'Dakar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '584', 'Dalaman', '1');
INSERT INTO ciudad(id,nombre,estado) values( '585', 'Dalhart', '1');
INSERT INTO ciudad(id,nombre,estado) values( '586', 'Dalian', '2');
INSERT INTO ciudad(id,nombre,estado) values( '587', 'Dallas', '2');
INSERT INTO ciudad(id,nombre,estado) values( '588', 'Dallas-fort worth', '1');
INSERT INTO ciudad(id,nombre,estado) values( '589', 'Daloa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '590', 'Daman', '1');
INSERT INTO ciudad(id,nombre,estado) values( '591', 'Damascus', '2');
INSERT INTO ciudad(id,nombre,estado) values( '592', 'Dammam', '2');
INSERT INTO ciudad(id,nombre,estado) values( '593', 'Danang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '594', 'Dar es salaam', '1');
INSERT INTO ciudad(id,nombre,estado) values( '595', 'Dauphin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '596', 'David', '1');
INSERT INTO ciudad(id,nombre,estado) values( '597', 'Dawson', '2');
INSERT INTO ciudad(id,nombre,estado) values( '598', 'Dawson creek', '2');
INSERT INTO ciudad(id,nombre,estado) values( '599', 'Dayton', '2');
INSERT INTO ciudad(id,nombre,estado) values( '600', 'De kooy', '1');
INSERT INTO ciudad(id,nombre,estado) values( '601', 'Dead mans cay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '602', 'Deadhorse', '1');
INSERT INTO ciudad(id,nombre,estado) values( '603', 'Dease lake', '2');
INSERT INTO ciudad(id,nombre,estado) values( '604', 'Deauville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '605', 'Debrecen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '606', 'Decimomannu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '607', 'Deer lake', '1');
INSERT INTO ciudad(id,nombre,estado) values( '608', 'Dehra dun', '1');
INSERT INTO ciudad(id,nombre,estado) values( '609', 'Deire zor', '1');
INSERT INTO ciudad(id,nombre,estado) values( '610', 'Del bajio', '1');
INSERT INTO ciudad(id,nombre,estado) values( '611', 'Del rio', '1');
INSERT INTO ciudad(id,nombre,estado) values( '612', 'Delhi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '613', 'Delta junction', '2');
INSERT INTO ciudad(id,nombre,estado) values( '614', 'Denizli', '1');
INSERT INTO ciudad(id,nombre,estado) values( '615', 'Denpasar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '616', 'Denver', '2');
INSERT INTO ciudad(id,nombre,estado) values( '617', 'Deridder', '2');
INSERT INTO ciudad(id,nombre,estado) values( '618', 'Des moines', '2');
INSERT INTO ciudad(id,nombre,estado) values( '619', 'Desroches', '1');
INSERT INTO ciudad(id,nombre,estado) values( '620', 'Detroit', '1');
INSERT INTO ciudad(id,nombre,estado) values( '621', 'Dhahran', '1');
INSERT INTO ciudad(id,nombre,estado) values( '622', 'Dhaka', '1');
INSERT INTO ciudad(id,nombre,estado) values( '623', 'Dhanbad', '1');
INSERT INTO ciudad(id,nombre,estado) values( '624', 'Dijon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '625', 'Dili', '2');
INSERT INTO ciudad(id,nombre,estado) values( '626', 'Dillingham', '2');
INSERT INTO ciudad(id,nombre,estado) values( '627', 'Dinard', '2');
INSERT INTO ciudad(id,nombre,estado) values( '628', 'Dire dawa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '629', 'Diyabakir', '1');
INSERT INTO ciudad(id,nombre,estado) values( '630', 'Djanet', '2');
INSERT INTO ciudad(id,nombre,estado) values( '631', 'Djerba', '2');
INSERT INTO ciudad(id,nombre,estado) values( '632', 'Dnepropetrovsk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '633', 'Dodoma', '2');
INSERT INTO ciudad(id,nombre,estado) values( '634', 'Doha', '2');
INSERT INTO ciudad(id,nombre,estado) values( '635', 'Dole', '2');
INSERT INTO ciudad(id,nombre,estado) values( '636', 'Dominica', '2');
INSERT INTO ciudad(id,nombre,estado) values( '637', 'Donaueschingen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '638', 'Donetsk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '639', 'Dongola', '1');
INSERT INTO ciudad(id,nombre,estado) values( '640', 'Dortmund', '2');
INSERT INTO ciudad(id,nombre,estado) values( '641', 'Dothan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '642', 'Douala', '2');
INSERT INTO ciudad(id,nombre,estado) values( '643', 'Douglas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '644', 'Dover', '1');
INSERT INTO ciudad(id,nombre,estado) values( '645', 'Dresden', '1');
INSERT INTO ciudad(id,nombre,estado) values( '646', 'Dryden', '2');
INSERT INTO ciudad(id,nombre,estado) values( '647', 'Dubai', '1');
INSERT INTO ciudad(id,nombre,estado) values( '648', 'Dubbo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '649', 'Dublin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '650', 'Dubrovnik', '1');
INSERT INTO ciudad(id,nombre,estado) values( '651', 'Duesseldorf', '1');
INSERT INTO ciudad(id,nombre,estado) values( '652', 'Duluth', '2');
INSERT INTO ciudad(id,nombre,estado) values( '653', 'Dumaguete', '1');
INSERT INTO ciudad(id,nombre,estado) values( '654', 'Dumai', '1');
INSERT INTO ciudad(id,nombre,estado) values( '655', 'Dundee', '2');
INSERT INTO ciudad(id,nombre,estado) values( '656', 'Dunedin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '657', 'Dunhuang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '658', 'Durango', '1');
INSERT INTO ciudad(id,nombre,estado) values( '659', 'Durban', '2');
INSERT INTO ciudad(id,nombre,estado) values( '660', 'Dushanbe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '661', 'Dzaoudzi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '662', 'Dzhezkazgan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '663', 'Eagle pass', '2');
INSERT INTO ciudad(id,nombre,estado) values( '664', 'Earlton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '665', 'East london', '1');
INSERT INTO ciudad(id,nombre,estado) values( '666', 'East midlands', '1');
INSERT INTO ciudad(id,nombre,estado) values( '667', 'Easter island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '668', 'Ech-cheliff', '1');
INSERT INTO ciudad(id,nombre,estado) values( '669', 'Edinburgh', '1');
INSERT INTO ciudad(id,nombre,estado) values( '670', 'Edmonton', '2');
INSERT INTO ciudad(id,nombre,estado) values( '671', 'Edson', '1');
INSERT INTO ciudad(id,nombre,estado) values( '672', 'Edwards afb', '1');
INSERT INTO ciudad(id,nombre,estado) values( '673', 'Egilsstadir', '1');
INSERT INTO ciudad(id,nombre,estado) values( '674', 'Eindhoven', '1');
INSERT INTO ciudad(id,nombre,estado) values( '675', 'El bolson', '1');
INSERT INTO ciudad(id,nombre,estado) values( '676', 'El borma', '2');
INSERT INTO ciudad(id,nombre,estado) values( '677', 'El centro', '1');
INSERT INTO ciudad(id,nombre,estado) values( '678', 'El dorado', '1');
INSERT INTO ciudad(id,nombre,estado) values( '679', 'El fasher', '1');
INSERT INTO ciudad(id,nombre,estado) values( '680', 'El golea', '2');
INSERT INTO ciudad(id,nombre,estado) values( '681', 'El maiten', '1');
INSERT INTO ciudad(id,nombre,estado) values( '682', 'El obeid', '2');
INSERT INTO ciudad(id,nombre,estado) values( '683', 'El paso', '1');
INSERT INTO ciudad(id,nombre,estado) values( '684', 'El-baha', '1');
INSERT INTO ciudad(id,nombre,estado) values( '685', 'El-tor', '2');
INSERT INTO ciudad(id,nombre,estado) values( '686', 'Elat', '2');
INSERT INTO ciudad(id,nombre,estado) values( '687', 'Elazig', '2');
INSERT INTO ciudad(id,nombre,estado) values( '688', 'Eldoret', '1');
INSERT INTO ciudad(id,nombre,estado) values( '689', 'Elizabeth city', '2');
INSERT INTO ciudad(id,nombre,estado) values( '690', 'Elkins', '2');
INSERT INTO ciudad(id,nombre,estado) values( '691', 'Ellisras', '2');
INSERT INTO ciudad(id,nombre,estado) values( '692', 'Emden', '1');
INSERT INTO ciudad(id,nombre,estado) values( '693', 'Ende', '2');
INSERT INTO ciudad(id,nombre,estado) values( '694', 'Enid', '2');
INSERT INTO ciudad(id,nombre,estado) values( '695', 'Eniwetok island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '696', 'Enniskillen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '697', 'Enontekio', '1');
INSERT INTO ciudad(id,nombre,estado) values( '698', 'Enschede', '2');
INSERT INTO ciudad(id,nombre,estado) values( '699', 'Ensenada', '2');
INSERT INTO ciudad(id,nombre,estado) values( '700', 'Entebbe', '1');
INSERT INTO ciudad(id,nombre,estado) values( '701', 'Enugu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '702', 'Epinal', '2');
INSERT INTO ciudad(id,nombre,estado) values( '703', 'Er-rachidia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '704', 'Erfurt', '2');
INSERT INTO ciudad(id,nombre,estado) values( '705', 'Erzincan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '706', 'Erzurum', '1');
INSERT INTO ciudad(id,nombre,estado) values( '707', 'Esbjerg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '708', 'Eskimo point', '2');
INSERT INTO ciudad(id,nombre,estado) values( '709', 'Eskisehir', '1');
INSERT INTO ciudad(id,nombre,estado) values( '710', 'Esquel', '2');
INSERT INTO ciudad(id,nombre,estado) values( '711', 'Essen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '712', 'Estevan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '713', 'Eureka', '2');
INSERT INTO ciudad(id,nombre,estado) values( '714', 'Evenes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '715', 'Everett', '1');
INSERT INTO ciudad(id,nombre,estado) values( '716', 'Exeter', '2');
INSERT INTO ciudad(id,nombre,estado) values( '717', 'Fagernes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '718', 'Fairbanks', '1');
INSERT INTO ciudad(id,nombre,estado) values( '719', 'Fairfield', '1');
INSERT INTO ciudad(id,nombre,estado) values( '720', 'Fairford', '2');
INSERT INTO ciudad(id,nombre,estado) values( '721', 'Faisalabad', '2');
INSERT INTO ciudad(id,nombre,estado) values( '722', 'Fajardo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '723', 'Fakarava', '2');
INSERT INTO ciudad(id,nombre,estado) values( '724', 'Faleolo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '725', 'Fallon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '726', 'Falmouth', '2');
INSERT INTO ciudad(id,nombre,estado) values( '727', 'Farafangana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '728', 'Faranah', '1');
INSERT INTO ciudad(id,nombre,estado) values( '729', 'Farmington', '2');
INSERT INTO ciudad(id,nombre,estado) values( '730', 'Farnborough', '1');
INSERT INTO ciudad(id,nombre,estado) values( '731', 'Faro', '2');
INSERT INTO ciudad(id,nombre,estado) values( '732', 'Faya-largeau', '2');
INSERT INTO ciudad(id,nombre,estado) values( '733', 'Fayetteville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '734', 'Fengnin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '735', 'Fernando do noronha', '1');
INSERT INTO ciudad(id,nombre,estado) values( '736', 'Fez', '1');
INSERT INTO ciudad(id,nombre,estado) values( '737', 'Fianarantsoa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '738', 'Figari', '2');
INSERT INTO ciudad(id,nombre,estado) values( '739', 'Fira', '2');
INSERT INTO ciudad(id,nombre,estado) values( '740', 'Firenze', '1');
INSERT INTO ciudad(id,nombre,estado) values( '741', 'Flin flon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '742', 'Florence', '2');
INSERT INTO ciudad(id,nombre,estado) values( '743', 'Florencia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '744', 'Flores (flores isl.)', '2');
INSERT INTO ciudad(id,nombre,estado) values( '745', 'Florianopolis', '1');
INSERT INTO ciudad(id,nombre,estado) values( '746', 'Floro', '1');
INSERT INTO ciudad(id,nombre,estado) values( '747', 'Foggia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '748', 'Forli', '1');
INSERT INTO ciudad(id,nombre,estado) values( '749', 'Formosa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '750', 'Fort benning', '2');
INSERT INTO ciudad(id,nombre,estado) values( '751', 'Fort carson', '1');
INSERT INTO ciudad(id,nombre,estado) values( '752', 'Fort chipewyan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '753', 'Fort dodge', '2');
INSERT INTO ciudad(id,nombre,estado) values( '754', 'Fort drum', '1');
INSERT INTO ciudad(id,nombre,estado) values( '755', 'Fort eustis', '1');
INSERT INTO ciudad(id,nombre,estado) values( '756', 'Fort hood', '1');
INSERT INTO ciudad(id,nombre,estado) values( '757', 'Fort huachuca', '1');
INSERT INTO ciudad(id,nombre,estado) values( '758', 'Fort irwin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '759', 'Fort knox', '1');
INSERT INTO ciudad(id,nombre,estado) values( '760', 'Fort lauderdale', '1');
INSERT INTO ciudad(id,nombre,estado) values( '761', 'Fort leavenworth', '2');
INSERT INTO ciudad(id,nombre,estado) values( '762', 'Fort leonardwood', '2');
INSERT INTO ciudad(id,nombre,estado) values( '763', 'Fort lewis', '2');
INSERT INTO ciudad(id,nombre,estado) values( '764', 'Fort mcmurray', '1');
INSERT INTO ciudad(id,nombre,estado) values( '765', 'Fort mcpherson', '2');
INSERT INTO ciudad(id,nombre,estado) values( '766', 'Fort myers', '2');
INSERT INTO ciudad(id,nombre,estado) values( '767', 'Fort nelson', '1');
INSERT INTO ciudad(id,nombre,estado) values( '768', 'Fort polk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '769', 'Fort resolution', '1');
INSERT INTO ciudad(id,nombre,estado) values( '770', 'Fort riley', '2');
INSERT INTO ciudad(id,nombre,estado) values( '771', 'Fort saint john', '1');
INSERT INTO ciudad(id,nombre,estado) values( '772', 'Fort sill', '1');
INSERT INTO ciudad(id,nombre,estado) values( '773', 'Fort simpson', '2');
INSERT INTO ciudad(id,nombre,estado) values( '774', 'Fort smith', '2');
INSERT INTO ciudad(id,nombre,estado) values( '775', 'Fort wainwright', '1');
INSERT INTO ciudad(id,nombre,estado) values( '776', 'Fort worth', '2');
INSERT INTO ciudad(id,nombre,estado) values( '777', 'Fort yukon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '778', 'Fort-de-france', '2');
INSERT INTO ciudad(id,nombre,estado) values( '779', 'Fortaleza', '1');
INSERT INTO ciudad(id,nombre,estado) values( '780', 'Foumban', '1');
INSERT INTO ciudad(id,nombre,estado) values( '781', 'Foz do iguacu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '782', 'Franca', '2');
INSERT INTO ciudad(id,nombre,estado) values( '783', 'Franceville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '784', 'Francisco mendez', '2');
INSERT INTO ciudad(id,nombre,estado) values( '785', 'Francistown', '1');
INSERT INTO ciudad(id,nombre,estado) values( '786', 'Frankfurt', '1');
INSERT INTO ciudad(id,nombre,estado) values( '787', 'Fredericton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '788', 'Freeport', '2');
INSERT INTO ciudad(id,nombre,estado) values( '789', 'Freetown', '2');
INSERT INTO ciudad(id,nombre,estado) values( '790', 'Fresno', '2');
INSERT INTO ciudad(id,nombre,estado) values( '791', 'Friedrichshafen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '792', 'Fuerstenfeldbruck', '1');
INSERT INTO ciudad(id,nombre,estado) values( '793', 'Fuerteventura', '1');
INSERT INTO ciudad(id,nombre,estado) values( '794', 'Fujeirah', '2');
INSERT INTO ciudad(id,nombre,estado) values( '795', 'Fukue', '1');
INSERT INTO ciudad(id,nombre,estado) values( '796', 'Fukuoka', '1');
INSERT INTO ciudad(id,nombre,estado) values( '797', 'Funafuti', '2');
INSERT INTO ciudad(id,nombre,estado) values( '798', 'Fuzhou', '2');
INSERT INTO ciudad(id,nombre,estado) values( '799', 'Gaberone', '2');
INSERT INTO ciudad(id,nombre,estado) values( '800', 'Gabes', '1');
INSERT INTO ciudad(id,nombre,estado) values( '801', 'Gafsa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '802', 'Gage', '2');
INSERT INTO ciudad(id,nombre,estado) values( '803', 'Gainesville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '804', 'Galapagos', '1');
INSERT INTO ciudad(id,nombre,estado) values( '805', 'Galena', '2');
INSERT INTO ciudad(id,nombre,estado) values( '806', 'Gallivare', '1');
INSERT INTO ciudad(id,nombre,estado) values( '807', 'Galoya', '2');
INSERT INTO ciudad(id,nombre,estado) values( '808', 'Galveston', '1');
INSERT INTO ciudad(id,nombre,estado) values( '809', 'Galway', '2');
INSERT INTO ciudad(id,nombre,estado) values( '810', 'Gambella', '2');
INSERT INTO ciudad(id,nombre,estado) values( '811', 'Gander', '2');
INSERT INTO ciudad(id,nombre,estado) values( '812', 'Gao', '1');
INSERT INTO ciudad(id,nombre,estado) values( '813', 'Garden city', '1');
INSERT INTO ciudad(id,nombre,estado) values( '814', 'Garissa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '815', 'Garoua', '2');
INSERT INTO ciudad(id,nombre,estado) values( '816', 'Gaspe', '1');
INSERT INTO ciudad(id,nombre,estado) values( '817', 'Gassim', '2');
INSERT INTO ciudad(id,nombre,estado) values( '818', 'Gatineau', '2');
INSERT INTO ciudad(id,nombre,estado) values( '819', 'Gavle', '1');
INSERT INTO ciudad(id,nombre,estado) values( '820', 'Gaya', '2');
INSERT INTO ciudad(id,nombre,estado) values( '821', 'Gaziantep', '1');
INSERT INTO ciudad(id,nombre,estado) values( '822', 'Gbadolite', '1');
INSERT INTO ciudad(id,nombre,estado) values( '823', 'Gdansk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '824', 'Geilenkirchen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '825', 'Gemena', '2');
INSERT INTO ciudad(id,nombre,estado) values( '826', 'Geneva', '2');
INSERT INTO ciudad(id,nombre,estado) values( '827', 'Genoa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '828', 'George', '2');
INSERT INTO ciudad(id,nombre,estado) values( '829', 'Georgetown', '2');
INSERT INTO ciudad(id,nombre,estado) values( '830', 'Geraldton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '831', 'Gerona', '2');
INSERT INTO ciudad(id,nombre,estado) values( '832', 'Ghadames', '2');
INSERT INTO ciudad(id,nombre,estado) values( '833', 'Ghardaia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '834', 'Ghat', '2');
INSERT INTO ciudad(id,nombre,estado) values( '835', 'Ghriss', '2');
INSERT INTO ciudad(id,nombre,estado) values( '836', 'Gibraltar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '837', 'Giebelstadt', '1');
INSERT INTO ciudad(id,nombre,estado) values( '838', 'Gilgit', '2');
INSERT INTO ciudad(id,nombre,estado) values( '839', 'Gillam', '2');
INSERT INTO ciudad(id,nombre,estado) values( '840', 'Gisborne', '2');
INSERT INTO ciudad(id,nombre,estado) values( '841', 'Gisenyi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '842', 'Gizan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '843', 'Gjoa haven', '2');
INSERT INTO ciudad(id,nombre,estado) values( '844', 'Glasgow', '1');
INSERT INTO ciudad(id,nombre,estado) values( '845', 'Glentanner', '2');
INSERT INTO ciudad(id,nombre,estado) values( '846', 'Goa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '847', 'Godthaab', '2');
INSERT INTO ciudad(id,nombre,estado) values( '848', 'Goiania', '1');
INSERT INTO ciudad(id,nombre,estado) values( '849', 'Goldsboro', '1');
INSERT INTO ciudad(id,nombre,estado) values( '850', 'Golfito', '1');
INSERT INTO ciudad(id,nombre,estado) values( '851', 'Golouchestershire', '1');
INSERT INTO ciudad(id,nombre,estado) values( '852', 'Goma', '2');
INSERT INTO ciudad(id,nombre,estado) values( '853', 'Gomel', '1');
INSERT INTO ciudad(id,nombre,estado) values( '854', 'Gondar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '855', 'Goose bay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '856', 'Gorakhpur', '1');
INSERT INTO ciudad(id,nombre,estado) values( '857', 'Gore bay', '2');
INSERT INTO ciudad(id,nombre,estado) values( '858', 'Gorna orechovica', '2');
INSERT INTO ciudad(id,nombre,estado) values( '859', 'Goroka', '2');
INSERT INTO ciudad(id,nombre,estado) values( '860', 'Gorontalo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '861', 'Gotha ost', '1');
INSERT INTO ciudad(id,nombre,estado) values( '862', 'Gothenborg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '863', 'Governors harbor', '2');
INSERT INTO ciudad(id,nombre,estado) values( '864', 'Graciosa island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '865', 'Gran canaria', '2');
INSERT INTO ciudad(id,nombre,estado) values( '866', 'Granada', '1');
INSERT INTO ciudad(id,nombre,estado) values( '867', 'Grand forks', '1');
INSERT INTO ciudad(id,nombre,estado) values( '868', 'Grand rapids', '2');
INSERT INTO ciudad(id,nombre,estado) values( '869', 'Grande prairie', '2');
INSERT INTO ciudad(id,nombre,estado) values( '870', 'Grandview', '1');
INSERT INTO ciudad(id,nombre,estado) values( '871', 'Grant county airport', '2');
INSERT INTO ciudad(id,nombre,estado) values( '872', 'Grants', '2');
INSERT INTO ciudad(id,nombre,estado) values( '873', 'Graz', '2');
INSERT INTO ciudad(id,nombre,estado) values( '874', 'Great exuma', '1');
INSERT INTO ciudad(id,nombre,estado) values( '875', 'Great falls', '1');
INSERT INTO ciudad(id,nombre,estado) values( '876', 'Green bay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '877', 'Green island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '878', 'Greenvile', '1');
INSERT INTO ciudad(id,nombre,estado) values( '879', 'Greenwood', '1');
INSERT INTO ciudad(id,nombre,estado) values( '880', 'Grenoble', '2');
INSERT INTO ciudad(id,nombre,estado) values( '881', 'Groningen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '882', 'Grosseto', '2');
INSERT INTO ciudad(id,nombre,estado) values( '883', 'Grottaglie', '2');
INSERT INTO ciudad(id,nombre,estado) values( '884', 'Guadalajara', '1');
INSERT INTO ciudad(id,nombre,estado) values( '885', 'Gualeguaychu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '886', 'Guanaja', '1');
INSERT INTO ciudad(id,nombre,estado) values( '887', 'Guanare', '1');
INSERT INTO ciudad(id,nombre,estado) values( '888', 'Guangzhou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '889', 'Guantanamo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '890', 'Guapi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '891', 'Guatemala city', '2');
INSERT INTO ciudad(id,nombre,estado) values( '892', 'Guayana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '893', 'Guayaquil', '1');
INSERT INTO ciudad(id,nombre,estado) values( '894', 'Guayaramerin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '895', 'Guaymas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '896', 'Guernsey', '2');
INSERT INTO ciudad(id,nombre,estado) values( '897', 'Guetersloh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '898', 'Guilin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '899', 'Guiria', '2');
INSERT INTO ciudad(id,nombre,estado) values( '900', 'Gulkana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '901', 'Gunung sitoli', '1');
INSERT INTO ciudad(id,nombre,estado) values( '902', 'Guriat', '2');
INSERT INTO ciudad(id,nombre,estado) values( '903', 'Gusau', '1');
INSERT INTO ciudad(id,nombre,estado) values( '904', 'Gwadar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '905', 'Gwalior', '1');
INSERT INTO ciudad(id,nombre,estado) values( '906', 'Gwert', '1');
INSERT INTO ciudad(id,nombre,estado) values( '907', 'Haapai', '2');
INSERT INTO ciudad(id,nombre,estado) values( '908', 'Hachijojima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '909', 'Hafr al-batin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '910', 'Hahn', '2');
INSERT INTO ciudad(id,nombre,estado) values( '911', 'Haifa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '912', 'Hail', '2');
INSERT INTO ciudad(id,nombre,estado) values( '913', 'Hailar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '914', 'Hakodate', '2');
INSERT INTO ciudad(id,nombre,estado) values( '915', 'Halifax', '1');
INSERT INTO ciudad(id,nombre,estado) values( '916', 'Hall beach', '2');
INSERT INTO ciudad(id,nombre,estado) values( '917', 'Halli', '1');
INSERT INTO ciudad(id,nombre,estado) values( '918', 'Halmstad', '2');
INSERT INTO ciudad(id,nombre,estado) values( '919', 'Hamar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '920', 'Hamburg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '921', 'Hamilton', '2');
INSERT INTO ciudad(id,nombre,estado) values( '922', 'Hampton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '923', 'Hana', '2');
INSERT INTO ciudad(id,nombre,estado) values( '924', 'Hanamaki', '2');
INSERT INTO ciudad(id,nombre,estado) values( '925', 'Hanau', '1');
INSERT INTO ciudad(id,nombre,estado) values( '926', 'Hangzhou', '2');
INSERT INTO ciudad(id,nombre,estado) values( '927', 'Hannover', '2');
INSERT INTO ciudad(id,nombre,estado) values( '928', 'Hanoi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '929', 'Hao island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '930', 'Harare', '2');
INSERT INTO ciudad(id,nombre,estado) values( '931', 'Harbin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '932', 'Hargeisa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '933', 'Harlingen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '934', 'Harrisburg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '935', 'Harrison', '2');
INSERT INTO ciudad(id,nombre,estado) values( '936', 'Hartford', '2');
INSERT INTO ciudad(id,nombre,estado) values( '937', 'Hassi-messaoud', '2');
INSERT INTO ciudad(id,nombre,estado) values( '938', 'Hastings', '2');
INSERT INTO ciudad(id,nombre,estado) values( '939', 'Hasvik', '2');
INSERT INTO ciudad(id,nombre,estado) values( '940', 'Hatfield', '2');
INSERT INTO ciudad(id,nombre,estado) values( '941', 'Haugesund', '1');
INSERT INTO ciudad(id,nombre,estado) values( '942', 'Havana', '2');
INSERT INTO ciudad(id,nombre,estado) values( '943', 'Havre', '1');
INSERT INTO ciudad(id,nombre,estado) values( '944', 'Hawarden', '2');
INSERT INTO ciudad(id,nombre,estado) values( '945', 'Hawthorne', '1');
INSERT INTO ciudad(id,nombre,estado) values( '946', 'Hay river', '1');
INSERT INTO ciudad(id,nombre,estado) values( '947', 'Hefei', '1');
INSERT INTO ciudad(id,nombre,estado) values( '948', 'Heho', '2');
INSERT INTO ciudad(id,nombre,estado) values( '949', 'Heidelberg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '950', 'Helena', '2');
INSERT INTO ciudad(id,nombre,estado) values( '951', 'Helsinki', '2');
INSERT INTO ciudad(id,nombre,estado) values( '952', 'Heraklion', '1');
INSERT INTO ciudad(id,nombre,estado) values( '953', 'Herat', '1');
INSERT INTO ciudad(id,nombre,estado) values( '954', 'Hermosillo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '955', 'Hewandorra', '2');
INSERT INTO ciudad(id,nombre,estado) values( '956', 'Hibbing', '1');
INSERT INTO ciudad(id,nombre,estado) values( '957', 'Hickory', '1');
INSERT INTO ciudad(id,nombre,estado) values( '958', 'Hierro', '2');
INSERT INTO ciudad(id,nombre,estado) values( '959', 'High level', '2');
INSERT INTO ciudad(id,nombre,estado) values( '960', 'Hilo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '961', 'Hiroshima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '962', 'Ho chi minh city', '2');
INSERT INTO ciudad(id,nombre,estado) values( '963', 'Hobart', '2');
INSERT INTO ciudad(id,nombre,estado) values( '964', 'Hobbs', '1');
INSERT INTO ciudad(id,nombre,estado) values( '965', 'Hoedspruit', '2');
INSERT INTO ciudad(id,nombre,estado) values( '966', 'Hof', '1');
INSERT INTO ciudad(id,nombre,estado) values( '967', 'Hofn', '2');
INSERT INTO ciudad(id,nombre,estado) values( '968', 'Hokitika', '2');
INSERT INTO ciudad(id,nombre,estado) values( '969', 'Holguin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '970', 'Hollywood', '1');
INSERT INTO ciudad(id,nombre,estado) values( '971', 'Holman island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '972', 'Homer', '1');
INSERT INTO ciudad(id,nombre,estado) values( '973', 'Homestead', '1');
INSERT INTO ciudad(id,nombre,estado) values( '974', 'Hong kong', '1');
INSERT INTO ciudad(id,nombre,estado) values( '975', 'Honington', '1');
INSERT INTO ciudad(id,nombre,estado) values( '976', 'Honolulu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '977', 'Hopkinsville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '978', 'Horta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '979', 'Hotan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '980', 'Houghton lake', '1');
INSERT INTO ciudad(id,nombre,estado) values( '981', 'Houlton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '982', 'Houston', '1');
INSERT INTO ciudad(id,nombre,estado) values( '983', 'Howard', '2');
INSERT INTO ciudad(id,nombre,estado) values( '984', 'Huahine island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '985', 'Hualien', '1');
INSERT INTO ciudad(id,nombre,estado) values( '986', 'Huambo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '987', 'Hudiksvall', '2');
INSERT INTO ciudad(id,nombre,estado) values( '988', 'Hudson bay', '2');
INSERT INTO ciudad(id,nombre,estado) values( '989', 'Hultsfred', '1');
INSERT INTO ciudad(id,nombre,estado) values( '990', 'Humberside', '2');
INSERT INTO ciudad(id,nombre,estado) values( '991', 'Hunter aaf', '2');
INSERT INTO ciudad(id,nombre,estado) values( '992', 'Hurghada', '2');
INSERT INTO ciudad(id,nombre,estado) values( '993', 'Huron', '1');
INSERT INTO ciudad(id,nombre,estado) values( '994', 'Husavik', '1');
INSERT INTO ciudad(id,nombre,estado) values( '995', 'Hwange national park', '2');
INSERT INTO ciudad(id,nombre,estado) values( '996', 'Hyderabad', '1');
INSERT INTO ciudad(id,nombre,estado) values( '997', 'Hyeres', '2');
INSERT INTO ciudad(id,nombre,estado) values( '998', 'Iasi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '999', 'Ibadan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1000', 'Ibague', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1001', 'Ibiza', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1002', 'Iguazu falls', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1003', 'Iki', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1004', 'Iles de la madeleine', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1005', 'Ilheus', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1006', 'Iliamna', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1007', 'Illizi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1008', 'Iloilo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1009', 'Ilorin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1010', 'Imperatriz', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1011', 'Imperial', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1012', 'Impfondo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1013', 'Imphal', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1014', 'In salah', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1015', 'Indian mountains', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1016', 'Indian springs', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1017', 'Indianapolis', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1018', 'Indore', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1019', 'Inhambane', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1020', 'Innsbruck', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1021', 'International falls', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1022', 'Inuvik', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1023', 'Invercargill', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1024', 'Inverness', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1025', 'Ioannina', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1026', 'Ipatinga', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1027', 'Ipiales', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1028', 'Ipoh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1029', 'Iqaluit', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1030', 'Iquique', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1031', 'Iquitos', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1032', 'Iringa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1033', 'Irkutsk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1034', 'Isafjordur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1035', 'Ishigaki', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1036', 'Ishurdi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1037', 'Isiro', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1038', 'Isla mujeres', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1039', 'Islamabad', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1040', 'Islay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1041', 'Isle of man', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1042', 'Islip', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1043', 'Istanbul', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1044', 'Ivalo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1045', 'Iwojima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1046', 'Izmir', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1047', 'Izumo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1048', 'Jabalpur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1049', 'Jackson', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1050', 'Jacksonville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1051', 'Jaffna', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1052', 'Jaipur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1053', 'Jaisalmer', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1054', 'Jakarta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1055', 'Jakobshavn', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1056', 'Jalalabad', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1057', 'Jambi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1058', 'Jammu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1059', 'Jamnagar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1060', 'Jamshedpur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1061', 'Jayapura', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1062', 'Jeddah', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1063', 'Jerez', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1064', 'Jersey', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1065', 'Jerusalem', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1066', 'Jessore', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1067', 'Jijel', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1068', 'Jimma', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1069', 'Jingdezhen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1070', 'Joao pessoa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1071', 'Jodhpur', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1072', 'Joenkoeping', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1073', 'Joensuu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1074', 'Johannesburg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1075', 'Johnston island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1076', 'Johor bahru', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1077', 'Joinville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1078', 'Jonesboro', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1079', 'Jorhat', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1080', 'Jos', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1081', 'Jose de san martin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1082', 'Juanjui', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1083', 'Juba', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1084', 'Juiz de fora', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1085', 'Jujuy', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1086', 'Juliaca', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1087', 'Juneau', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1088', 'Jwaneng', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1089', 'Jyvaskyla', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1090', 'Kabul', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1091', 'Kadena', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1092', 'Kaduna', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1093', 'Kaedi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1094', 'Kagoshima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1095', 'Kahului', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1096', 'Kailashahar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1097', 'Kaimana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1098', 'Kaitaia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1099', 'Kajaani', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1100', 'Kalamata', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1101', 'Kalemie', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1102', 'Kalgoorlie', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1103', 'Kalibo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1104', 'Kaliningrad', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1105', 'Kalkmar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1106', 'Kamarang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1107', 'Kamembe', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1108', 'Kamina base', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1109', 'Kamloops', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1110', 'Kamuela', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1111', 'Kananga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1112', 'Kanazawa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1113', 'Kandahar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1114', 'Kandla', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1115', 'Kaneohe bay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1116', 'Kangnung', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1117', 'Kankakee', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1118', 'Kano', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1119', 'Kanpur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1120', 'Kansas city', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1121', 'Kaohsiung', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1122', 'Kaolack', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1123', 'Kapuskasing', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1124', 'Karachi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1125', 'Kariba', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1126', 'Karlovy vary', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1127', 'Karlskoga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1128', 'Karonga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1129', 'Karpathos', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1130', 'Karratha', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1131', 'Karup', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1132', 'Kasane', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1133', 'Kashi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1134', 'Kasos', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1135', 'Kassala', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1136', 'Kassel', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1137', 'Kastoria', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1138', 'Kathmandu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1139', 'Katowice', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1140', 'Kauhava', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1141', 'Kaukura atoll', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1142', 'Kavala', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1143', 'Kayes', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1144', 'Kayseri', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1145', 'Kazan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1146', 'Kedougou', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1147', 'Keffallinia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1148', 'Keflavik', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1149', 'Kelowna', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1150', 'Kemi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1151', 'Kemorovo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1152', 'Kenai', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1153', 'Kendall-tamiami', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1154', 'Kendari', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1155', 'Kengtung', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1156', 'Kenora', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1157', 'Kentira', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1158', 'Kerikeri', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1159', 'Kerkyra/corfu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1160', 'Kerman', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1161', 'Kerry', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1162', 'Kerteh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1163', 'Keshod', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1164', 'Ketapang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1165', 'Ketchikan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1166', 'Key west', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1167', 'Khabarovsk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1168', 'Khajuraho', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1169', 'Khartoum', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1170', 'Khasab', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1171', 'Kichinau fir/acc/com', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1172', 'Kiel', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1173', 'Kiev', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1174', 'Kiffa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1175', 'Kigali', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1176', 'Kikwit', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1177', 'Kilimanjaro', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1178', 'Killeen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1179', 'Kimberley', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1180', 'Kimhae', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1181', 'Kindersley', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1182', 'Kindu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1183', 'King khalid mil.city', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1184', 'King salmon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1185', 'Kingston', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1186', 'Kingstown', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1187', 'Kingsville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1188', 'Kinshasa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1189', 'Kiritimati', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1190', 'Kirkenes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1191', 'Kirkwall', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1192', 'Kirovograd', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1193', 'Kirtland a.f.b.', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1194', 'Kiruna', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1195', 'Kisangani', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1196', 'Kish island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1197', 'Kismayu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1198', 'Kisumu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1199', 'Kitadaito', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1200', 'Kitakyushu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1201', 'Kitale', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1202', 'Kithira', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1203', 'Kittila', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1204', 'Klagenfurt', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1205', 'Kleinsee', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1206', 'Knobnoster', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1207', 'Knoxville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1208', 'Koblenz', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1209', 'Kochi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1210', 'Kodiak', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1211', 'Kolda', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1212', 'Kolhapur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1213', 'Kolwezi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1214', 'Kona', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1215', 'Kone', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1216', 'Konya', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1217', 'Kopasker', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1218', 'Korhogo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1219', 'Kortrijk-vevelgem', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1220', 'Kos', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1221', 'Kosice', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1222', 'Kosrae', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1223', 'Kota', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1224', 'Kota bahru', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1225', 'Kota kinabalu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1226', 'Kotzebue', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1227', 'Koumac', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1228', 'Kozani', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1229', 'Krakow', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1230', 'Kralendijk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1231', 'Kramfors', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1232', 'Krasnodar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1233', 'Krasnovodsk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1234', 'Kristiansand', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1235', 'Kristianstad', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1236', 'Kristiansund', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1237', 'Kruunupyy', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1238', 'Kuala lumpur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1239', 'Kuala terengganu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1240', 'Kuantan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1241', 'Kuching', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1242', 'Kufra', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1243', 'Kuito', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1244', 'Kulu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1245', 'Kulusuk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1246', 'Kumamoto', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1247', 'Kumejima', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1248', 'Kunduz', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1249', 'Kunming', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1250', 'Kunsan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1251', 'Kununurra', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1252', 'Kuopio', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1253', 'Kupang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1254', 'Kurgan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1255', 'Kustanay', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1256', 'Kuujjuararapik', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1257', 'Kuusamo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1258', 'Kuwait', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1259', 'Kwajalein', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1260', 'Kwangju', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1261', 'Kyaukpyu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1262', 'La ceiba', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1263', 'La coloma', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1264', 'La coruna', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1265', 'La fria', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1266', 'La grande riviere', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1267', 'La paz', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1268', 'La plata', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1269', 'La rioja', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1270', 'La roche-sur-yon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1271', 'La rochelle', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1272', 'La romana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1273', 'La ronge', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1274', 'La serena', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1275', 'Laage', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1276', 'Laarbruch', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1277', 'Labe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1278', 'Labuan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1279', 'Labuhan bajo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1280', 'Ladag', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1281', 'Ladysmith', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1282', 'Lafayette', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1283', 'Laghouat', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1284', 'Lago agrio', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1285', 'Lago argentino', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1286', 'Lagos', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1287', 'Lahad datu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1288', 'Lahania-kapalua', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1289', 'Lahore', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1290', 'Lajes (terceira island)', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1291', 'Lake charles', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1292', 'Lakehurst', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1293', 'Lalibella', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1294', 'Lambarene', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1295', 'Lambasa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1296', 'Lamezia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1297', 'Lampang', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1298', 'Lampedusa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1299', 'Lamu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1300', 'Lanai', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1301', 'Landskrona', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1302', 'Lannion', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1303', 'Lansing', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1304', 'Lanyu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1305', 'Lanzerote', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1306', 'Lanzhou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1307', 'Lappeenranta', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1308', 'Laredo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1309', 'Larissa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1310', 'Larnaca', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1311', 'Las tunas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1312', 'Las vegas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1313', 'Lasham', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1314', 'Lashio', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1315', 'Lastourville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1316', 'Latakia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1317', 'Latina', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1318', 'Launceston', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1319', 'Laval', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1320', 'Lazard cardenas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1321', 'Le castellet', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1322', 'Le havre', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1323', 'Le mans', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1324', 'Le puy', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1325', 'Le tourquet', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1326', 'Learmonth', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1327', 'Lecce', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1328', 'Leeds', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1329', 'Leeuwarden', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1330', 'Legazpi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1331', 'Leh', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1332', 'Leipzig', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1333', 'Lemoore', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1334', 'Lemwerder', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1335', 'Leros', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1336', 'Lethbridge', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1337', 'Lethem', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1338', 'Leticia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1339', 'Leuchars', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1340', 'Levaldigi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1341', 'Lhasa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1342', 'Liberia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1343', 'Libreville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1344', 'Lichinga', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1345', 'Lidkoping', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1346', 'Liege', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1347', 'Lifou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1348', 'Lihue', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1349', 'Lilabari', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1350', 'Lille', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1351', 'Lima', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1352', 'Limnos', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1353', 'Limoges', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1354', 'Limon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1355', 'Lincoln', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1356', 'Linkoeping', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1357', 'Lins', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1358', 'Linz', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1359', 'Lisala', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1360', 'Lisbon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1361', 'Lista', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1362', 'Little rock', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1363', 'Liverpool', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1364', 'Livingstone', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1365', 'Ljubliana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1366', 'Lloydminster', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1367', 'Lodwar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1368', 'Loei', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1369', 'Lome', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1370', 'Lompoc', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1371', 'London', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1372', 'Londonderry', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1373', 'Londrina', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1374', 'Long beach', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1375', 'Longview', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1376', 'Loreto', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1377', 'Lorient', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1378', 'Los angeles', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1379', 'Los mochis', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1380', 'Lossiemouth', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1381', 'Loudima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1382', 'Louis trichardt', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1383', 'Louisiana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1384', 'Louisville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1385', 'Loyangalani', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1386', 'Luanda', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1387', 'Luang prabang', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1388', 'Lubbock', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1389', 'Lubumashi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1390', 'Lucknow', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1391', 'Ludhiaha', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1392', 'Luebeck', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1393', 'Luena', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1394', 'Lufkin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1395', 'Lugano', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1396', 'Lulea', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1397', 'Lusaka', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1398', 'Luwuk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1399', 'Luxemburg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1400', 'Luxor', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1401', 'Lvov', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1402', 'Lycksele', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1403', 'Lydd', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1404', 'Lyneham', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1405', 'Lynn lake', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1406', 'Lyon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1407', 'Maastricht', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1408', 'Macapa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1409', 'Macas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1410', 'Macau', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1411', 'Maceio', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1412', 'Macenta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1413', 'Machala', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1414', 'Mackay', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1415', 'Mackminnville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1416', 'Macon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1417', 'Madang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1418', 'Madinah', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1419', 'Madison', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1420', 'Madras', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1421', 'Madrid', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1422', 'Madurai', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1423', 'Mafikeng', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1424', 'Mafraq', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1425', 'Magadan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1426', 'Magangue', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1427', 'Magdalena', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1428', 'Magnetiogorsk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1429', 'Mahajanga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1430', 'Mahe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1431', 'Maiduguri', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1432', 'Maimama', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1433', 'Maio', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1434', 'Majuro', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1435', 'Makabana', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1436', 'Makale', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1437', 'Makemo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1438', 'Makhachkala', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1439', 'Makokou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1440', 'Makoua', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1441', 'Makung', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1442', 'Makurdi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1443', 'Malabo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1444', 'Malacca', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1445', 'Malaga', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1446', 'Malakal', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1447', 'Malang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1448', 'Malanje', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1449', 'Malargue', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1450', 'Malatya', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1451', 'Male', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1452', 'Malindi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1453', 'Malmoe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1454', 'Malta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1455', 'Man', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1456', 'Manado', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1457', 'Managua', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1458', 'Manakara', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1459', 'Mananara', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1460', 'Mananjary', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1461', 'Manapouri', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1462', 'Manaus', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1463', 'Manchester', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1464', 'Mandalay', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1465', 'Mandera', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1466', 'Mangalore', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1467', 'Manihi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1468', 'Manila', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1469', 'Maniwaki', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1470', 'Manizales', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1471', 'Mannheim', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1472', 'Manokwari', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1473', 'Manston', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1474', 'Manta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1475', 'Manzanillo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1476', 'Manzini', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1477', 'Maputo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1478', 'Mar del plata', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1479', 'Maraba', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1480', 'Maracaibo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1481', 'Maradi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1482', 'Mare', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1483', 'Margate', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1484', 'Marham', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1485', 'Maribor', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1486', 'Mariehamn', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1487', 'Marietta', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1488', 'Marina di campo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1489', 'Maringa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1490', 'Maroantsetra', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1491', 'Maroochydore', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1492', 'Maroua', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1493', 'Marquette', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1494', 'Marrakech', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1495', 'Marsabit', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1496', 'Marseille', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1497', 'Marsh harbor', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1498', 'Marudi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1499', 'Mary esther', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1500', 'Marysville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1501', 'Masbate', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1502', 'Maseru', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1503', 'Masirah', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1504', 'Masjed soleiman', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1505', 'Massena', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1506', 'Masterton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1507', 'Masvingo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1508', 'Matadi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1509', 'Matagami', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1510', 'Mataiva', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1511', 'Matamoros', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1512', 'Mataram', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1513', 'Matsu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1514', 'Matsumoto', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1515', 'Matsuyama', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1516', 'Matthew town', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1517', 'Maturin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1518', 'Maumere', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1519', 'Maun', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1520', 'Maupiti', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1521', 'Mayaguana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1522', 'Mayaguez', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1523', 'Mayo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1524', 'Mazar-i-sharif', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1525', 'Mazatlan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1526', 'Mbandaka', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1527', 'Mbanza-congo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1528', 'Mbuji-mayi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1529', 'Mcalester', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1530', 'Mcallen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1531', 'Mcgrath', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1532', 'Meadow lake', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1533', 'Medan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1534', 'Medellin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1535', 'Medicine hat', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1536', 'Meknes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1537', 'Melbourne', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1538', 'Melilla', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1539', 'Melo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1540', 'Memanbetsu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1541', 'Memphis', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1542', 'Mende', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1543', 'Mendoza', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1544', 'Menongue', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1545', 'Menorca', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1546', 'Merauke', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1547', 'Merced', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1548', 'Merida', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1549', 'Meridian', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1550', 'Mersa-matruh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1551', 'Merzifon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1552', 'Messina', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1553', 'Metz', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1554', 'Mexicali', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1555', 'Mexico city', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1556', 'Mfuwe', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1557', 'Miami', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1558', 'Miandrivazo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1559', 'Midland', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1560', 'Midway', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1561', 'Miho', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1562', 'Mikkeli', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1563', 'Milan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1564', 'Milano', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1565', 'Mildenhall', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1566', 'Millington', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1567', 'Millinocket', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1568', 'Millville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1569', 'Milton', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1570', 'Milwaukee', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1571', 'Minami daito', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1572', 'Minatitlan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1573', 'Mineral wells', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1574', 'Mineralnye vody', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1575', 'Minna', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1576', 'Minneapolis', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1577', 'Minot', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1578', 'Minsk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1579', 'Minsk 2', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1580', 'Miramar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1581', 'Miri', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1582', 'Misawa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1583', 'Mitu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1584', 'Mitzic', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1585', 'Miyake jima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1586', 'Miyako', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1587', 'Miyazaki', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1588', 'Mmabatho', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1589', 'Moa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1590', 'Moanda', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1591', 'Mobile', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1592', 'Mocimboa da praia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1593', 'Modesto', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1594', 'Moenchengladbach', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1595', 'Moenjodaro', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1596', 'Mogadishu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1597', 'Mohanbari', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1598', 'Moheli', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1599', 'Molde', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1600', 'Molokai', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1601', 'Mombasa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1602', 'Monastir', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1603', 'Monbetsu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1604', 'Monclova', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1605', 'Moncton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1606', 'Mong hsat', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1607', 'Monroe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1608', 'Monrovia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1609', 'Mont joli', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1610', 'Montego bay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1611', 'Monteria', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1612', 'Monterrey', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1613', 'Montes claros', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1614', 'Montevideo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1615', 'Montgomery', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1616', 'Montichiari', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1617', 'Montlucon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1618', 'Montlucon-gueret', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1619', 'Montpelier', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1620', 'Montpellier', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1621', 'Montreal', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1622', 'Moorea', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1623', 'Moose jaw', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1624', 'Moosonee', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1625', 'Mopti', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1626', 'Mora', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1627', 'Morelia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1628', 'Morlaix', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1629', 'Morombe', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1630', 'Morondava', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1631', 'Moroni', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1632', 'Moscow', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1633', 'Moshi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1634', 'Mosjoen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1635', 'Mostar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1636', 'Moulins', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1637', 'Moundou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1638', 'Mount clemens', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1639', 'Mount cook', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1640', 'Mount hagen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1641', 'Mount isa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1642', 'Mount pleasant', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1643', 'Mountain home', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1644', 'Mountain view', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1645', 'Moyale lower', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1646', 'Mtwara', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1647', 'Muanda', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1648', 'Muenster/osnabrueck', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1649', 'Muir', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1650', 'Mulhouse', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1651', 'Multan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1652', 'Munich', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1653', 'Murcia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1654', 'Murmansk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1655', 'Muscat', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1656', 'Muskogee', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1657', 'Muskoka', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1658', 'Mustique', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1659', 'Mutare', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1660', 'Muzaffarabad', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1661', 'Mwanza', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1662', 'Myeik', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1663', 'Myitkyina', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1664', 'Mykonos', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1665', 'Myrtle beach', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1666', 'Mytilini', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1667', 'Mzuzu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1668', 'Nabire', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1669', 'Nacala', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1670', 'Nadzab', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1671', 'Nagasaki', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1672', 'Nagoya', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1673', 'Nagpur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1674', 'Naha', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1675', 'Nainital', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1676', 'Nairobi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1677', 'Nakashibetsu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1678', 'Nakhon phanom', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1679', 'Nakhon ratchasima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1680', 'Nakhon si thammarat', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1681', 'Nampula', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1682', 'Nanaimo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1683', 'Nanchang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1684', 'Nancy', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1685', 'Nandi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1686', 'Nanisivik', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1687', 'Nanjing', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1688', 'Nanki-shirahama', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1689', 'Nanning', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1690', 'Nantes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1691', 'Nantucket', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1692', 'Nanyuki', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1693', 'Naples', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1694', 'Napuka island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1695', 'Narathiwat', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1696', 'Narssarssuaq', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1697', 'Nashville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1698', 'Nasik road', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1699', 'Nassau', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1700', 'Natal', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1701', 'Natashquan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1702', 'Nausori', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1703', 'Navegantes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1704', 'Nawabshah', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1705', 'Ndele', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1706', 'Ndjamena', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1707', 'Ndola', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1708', 'Nea anghialos', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1709', 'Negage', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1710', 'Neiva', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1711', 'Nejran', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1712', 'Nelson', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1713', 'Nelspruit', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1714', 'Nema', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1715', 'Neuquen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1716', 'Nevers', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1717', 'New bern', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1718', 'New orleans', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1719', 'New plymouth', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1720', 'New york', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1721', 'Newark', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1722', 'Newburgh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1723', 'Newcastle', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1724', 'Newport news', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1725', 'Newquai', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1726', 'Ngaoundere', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1727', 'Ngiva', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1728', 'Nhatrang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1729', 'Niagara falls', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1730', 'Niamey', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1731', 'Niatougou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1732', 'Nice', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1733', 'Nimes', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1734', 'Ninbo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1735', 'Nioro', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1736', 'Niort', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1737', 'Nizhnevartovsk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1738', 'Nogales', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1739', 'Nome', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1740', 'Norderney', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1741', 'Norfolk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1742', 'Norfolk island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1743', 'Norman wells', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1744', 'Norrkoeping', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1745', 'North battleford', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1746', 'North bay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1747', 'North caicos', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1748', 'North eleuthera', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1749', 'Northolt', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1750', 'Northway', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1751', 'Norwich', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1752', 'Nosara beach', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1753', 'Nosy-be', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1754', 'Nouadhibou', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1755', 'Nouakschott', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1756', 'Noumea', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1757', 'Nuernberg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1758', 'Nueva gerona', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1759', 'Nuevo laredo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1760', 'Nuku hiva', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1761', 'Nukus', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1762', 'Nyala', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1763', 'Nyeri', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1764', 'Nzerekore', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1765', 'Oakland', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1766', 'Oamaru', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1767', 'Oaxaca', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1768', 'Oberpfaffenhofen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1769', 'Obihiro', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1770', 'Ocana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1771', 'Oceana', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1772', 'Ocho rios', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1773', 'Odense', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1774', 'Odessa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1775', 'Odiham', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1776', 'Ogden', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1777', 'Ogdensburg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1778', 'Ohrid', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1779', 'Oita', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1780', 'Okayama', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1781', 'Oki island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1782', 'Oklahoma city', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1783', 'Okondja', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1784', 'Olbia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1785', 'Old crow', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1786', 'Oliktok point', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1787', 'Omaha', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1788', 'Omboue hospial', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1789', 'Omsk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1790', 'Ontario', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1791', 'Opolu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1792', 'Oradea', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1793', 'Oran', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1794', 'Oranjestad', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1795', 'Orapa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1796', 'Orebro', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1797', 'Orenburg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1798', 'Orland', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1799', 'Orlando', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1800', 'Orleans', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1801', 'Ormara', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1802', 'Ornskoldsvik', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1803', 'Osaka', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1804', 'Osan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1805', 'Osh', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1806', 'Oshima', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1807', 'Osijek', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1808', 'Oskarshamn', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1809', 'Oslo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1810', 'Osorno', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1811', 'Ostend', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1812', 'Ostersund', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1813', 'Ostrava', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1814', 'Ottawa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1815', 'Otu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1816', 'Ouagadougou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1817', 'Ouargla', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1818', 'Ouarzazate', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1819', 'Oudtshoorn', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1820', 'Ouesso', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1821', 'Oujda', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1822', 'Oulu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1823', 'Ouvea', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1824', 'Ovda', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1825', 'Owando', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1826', 'Oxford', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1827', 'Oyem', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1828', 'Pachuca', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1829', 'Padang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1830', 'Paderborn', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1831', 'Padova', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1832', 'Pago pago', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1833', 'Pakse', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1834', 'Pala', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1835', 'Palacios', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1836', 'Palangkaraya', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1837', 'Palembang', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1838', 'Palermo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1839', 'Palm springs', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1840', 'Palma de mallorca', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1841', 'Palmar sur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1842', 'Palmdale', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1843', 'Palmer', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1844', 'Palmerston north', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1845', 'Palmyra', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1846', 'Palu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1847', 'Pamplona', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1848', 'Panama', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1849', 'Panama city', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1850', 'Pangkal pinang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1851', 'Pangkalan bun', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1852', 'Pangnirtung', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1853', 'Panjgur', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1854', 'Pantelleria', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1855', 'Paphos', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1856', 'Paraguana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1857', 'Parakou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1858', 'Paramaribo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1859', 'Parana', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1860', 'Paraparaumu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1861', 'Parchim', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1862', 'Pardubice', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1863', 'Paris', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1864', 'Parma', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1865', 'Paro', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1866', 'Pasighat', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1867', 'Pasni', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1868', 'Paso de los libres', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1869', 'Passo fundo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1870', 'Pasto', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1871', 'Pathankot', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1872', 'Patina', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1873', 'Patras', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1874', 'Patreksfjordur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1875', 'Pattani', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1876', 'Patuxent river', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1877', 'Pau', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1878', 'Paulo alfonso', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1879', 'Paya lebar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1880', 'Paysandu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1881', 'Peace river', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1882', 'Pekanbaru', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1883', 'Pelly bay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1884', 'Pelotas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1885', 'Pemba', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1886', 'Penang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1887', 'Pensacola', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1888', 'Penticton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1889', 'Penza', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1890', 'Pereira', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1891', 'Perigueux', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1892', 'Perm', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1893', 'Perpignan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1894', 'Perth', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1895', 'Peru', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1896', 'Perugia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1897', 'Pescara', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1898', 'Peshawar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1899', 'Petawawa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1900', 'Peterborough', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1901', 'Petrolina', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1902', 'Petropavlovsk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1903', 'Phalaborwa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1904', 'Philadelphia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1905', 'Philipsburg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1906', 'Phitsanulok', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1907', 'Phnom-penh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1908', 'Phoenix', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1909', 'Phrae', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1910', 'Phuket', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1911', 'Piacenza', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1912', 'Pickle lake', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1913', 'Pico', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1914', 'Piedras negras', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1915', 'Piestany', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1916', 'Pietermaritzburg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1917', 'Pietersburg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1918', 'Pilanesberg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1919', 'Pine bluff', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1920', 'Pingtung', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1921', 'Piracununga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1922', 'Pisa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1923', 'Pisco', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1924', 'Pittsburgh (pennsylva)', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1925', 'Piura', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1926', 'Plaisance', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1927', 'Plattsburgh', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1928', 'Plovdiv', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1929', 'Plymouth', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1930', 'Pocos de caldas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1931', 'Podgorica', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1932', 'Pohang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1933', 'Pohnpei', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1934', 'Point lay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1935', 'Point mugu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1936', 'Point salines', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1937', 'Pointe-a-pitre', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1938', 'Pointe-noire', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1939', 'Poitiers', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1940', 'Pokhara', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1941', 'Ponca city', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1942', 'Ponce', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1943', 'Pond inlet', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1944', 'Ponta delgada', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1945', 'Ponta pora', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1946', 'Pontianak', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1947', 'Pontoise', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1948', 'Popayan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1949', 'Poprad', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1950', 'Porbandar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1951', 'Pori', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1952', 'Porlamar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1953', 'Port angeles', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1954', 'Port antonio', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1955', 'Port blair', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1956', 'Port elizabeth', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1957', 'Port gentil', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1958', 'Port hardy', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1959', 'Port hartcourt', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1960', 'Port hedland', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1961', 'Port huron', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1962', 'Port menier', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1963', 'Port moller', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1964', 'Port moresby', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1965', 'Port said', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1966', 'Port sudan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1967', 'Port-au-prince', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1968', 'Port-of-spain', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1969', 'Port-vila', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1970', 'Portage-la-prairie', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1971', 'Portland', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1972', 'Porto', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1973', 'Porto alegre', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1974', 'Porto amboim', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1975', 'Porto nacional', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1976', 'Porto santo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1977', 'Porto velho', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1978', 'Portoroz', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1979', 'Portoviejo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1980', 'Posadas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1981', 'Poso', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1982', 'Potosi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1983', 'Poza rico', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1984', 'Poznan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1985', 'Prachuap khiri khan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1986', 'Prague', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1987', 'Praslin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1988', 'Prerov', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1989', 'Prescott', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1990', 'President prudente', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1991', 'Presque isle', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1992', 'Prestwick', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1993', 'Pretoria', '2');
INSERT INTO ciudad(id,nombre,estado) values( '1994', 'Preveza', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1995', 'Prince albert', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1996', 'Prince george', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1997', 'Prince pupert', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1998', 'Princeton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '1999', 'Principe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2000', 'Pristina', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2001', 'Prosserpine', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2002', 'Providence', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2003', 'Providencia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2004', 'Providenciales', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2005', 'Provideniya bay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2006', 'Pucallpa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2007', 'Puebla', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2008', 'Pueblo memorial', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2009', 'Puerto asis', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2010', 'Puerto ayacucho', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2011', 'Puerto cabello', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2012', 'Puerto cabezas', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2013', 'Puerto carreno', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2014', 'Puerto deseado', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2015', 'Puerto escondido', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2016', 'Puerto lempira', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2017', 'Puerto madryn', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2018', 'Puerto maldonado', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2019', 'Puerto montt', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2020', 'Puerto plata', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2021', 'Puerto princesa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2022', 'Puerto suarez', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2023', 'Puerto vallarta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2024', 'Puka puka', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2025', 'Pula', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2026', 'Pulau', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2027', 'Pune', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2028', 'Punta arenas', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2029', 'Punta cana', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2030', 'Punta del este', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2031', 'Punta penasco', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2032', 'Putao', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2033', 'Pyongyang', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2034', 'Qingdao', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2035', 'Quantico', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2036', 'Quebec', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2037', 'Queenstown', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2038', 'Queenstown international', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2039', 'Quelimane', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2040', 'Quepos', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2041', 'Queretaro', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2042', 'Quesnel', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2043', 'Quetta', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2044', 'Quibdo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2045', 'Quimper', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2046', 'Quito', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2047', 'Quujjuaq', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2048', 'Rabat', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2049', 'Rafha', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2050', 'Rahim yar khan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2051', 'Raiatea island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2052', 'Raipur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2053', 'Rajahmundry', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2054', 'Rajkot', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2055', 'Rajshahi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2056', 'Raleigh-durham', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2057', 'Ramsar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2058', 'Ramstein', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2059', 'Ranchi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2060', 'Rancho murieta', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2061', 'Rangiroa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2062', 'Rankin inlet', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2063', 'Rapid city', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2064', 'Ras al khaimah', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2065', 'Rasht', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2066', 'Rawala kot', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2067', 'Rayong', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2068', 'Reao', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2069', 'Recife', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2070', 'Red deer industrial', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2071', 'Red river', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2072', 'Redstone', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2073', 'Reggio calabria', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2074', 'Regina', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2075', 'Reims', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2076', 'Rengat', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2077', 'Rennes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2078', 'Reno', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2079', 'Repulse bay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2080', 'Resistencia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2081', 'Resolute', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2082', 'Reus', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2083', 'Reykjavik', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2084', 'Reynosa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2085', 'Rhodos', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2086', 'Ribeirao preto', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2087', 'Riberalta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2088', 'Richards bay', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2089', 'Richmond', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2090', 'Rijeka', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2091', 'Rimini', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2092', 'Rio branco', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2093', 'Rio cuarto', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2094', 'Rio de janeiro', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2095', 'Rio gallegos', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2096', 'Rio grande', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2097', 'Rio turbio', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2098', 'Riohacha', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2099', 'Rishiri island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2100', 'Rivera', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2101', 'Riverside', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2102', 'Riviere du loup', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2103', 'Riyadh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2104', 'Roadtown/beef island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2105', 'Roanne', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2106', 'Roatan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2107', 'Roberval', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2108', 'Robinson', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2109', 'Rochefort', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2110', 'Rochester', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2111', 'Rock sound', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2112', 'Rockhampton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2113', 'Rocky mountain house', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2114', 'Rodez', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2115', 'Rodriguez island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2116', 'Rome', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2117', 'Ronchi de legionari', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2118', 'Ronne', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2119', 'Ronneby', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2120', 'Roosevelt roads', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2121', 'Roros', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2122', 'Rosario', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2123', 'Rosh pina', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2124', 'Rostov', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2125', 'Roswell', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2126', 'Rota', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2127', 'Rotorua', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2128', 'Rotterdam', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2129', 'Rouen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2130', 'Rourkela', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2131', 'Rouyn', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2132', 'Rovaniemi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2133', 'Royan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2134', 'Rurrenabaque', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2135', 'Rurutu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2136', 'Ruteng', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2137', 'Rzeszow', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2138', 'Saarbruecken', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2139', 'Sabang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2140', 'Sachs harbour', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2141', 'Sacramento', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2142', 'Saidpur', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2143', 'Saidu sharif', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2144', 'Sainte marie', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2145', 'Saipan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2146', 'Sakon nakhon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2147', 'Salalah', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2148', 'Salamanca', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2149', 'Salinas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2150', 'Salisbury', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2151', 'Salt lake city', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2152', 'Salta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2153', 'Saltillo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2154', 'Salto', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2155', 'Salvador', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2156', 'Salzburg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2157', 'Samara', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2158', 'Samarinda', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2159', 'Samarkand', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2160', 'Sambava', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2161', 'Samedan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2162', 'Samos', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2163', 'Samsun', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2164', 'San andres island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2165', 'San andros', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2166', 'San angelo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2167', 'San antonio', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2168', 'San borja', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2169', 'San carlos de bariloch', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2170', 'San diego', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2171', 'San felipe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2172', 'San fernando de apure', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2173', 'San francisco', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2174', 'San joaquin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2175', 'San jose', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2176', 'San jose del cabo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2177', 'San jose del guaviare', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2178', 'San juan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2179', 'San julian', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2180', 'San luis', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2181', 'San luis potosi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2182', 'San martin des andes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2183', 'San pedro', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2184', 'San pedro sula', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2185', 'San rafael', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2186', 'San salvador', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2187', 'San sebastian', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2188', 'San tome', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2189', 'San vincente de caguan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2190', 'Sanandaj', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2191', 'Sandnessjoen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2192', 'Sandspit', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2193', 'Sandusky', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2194', 'Santa ana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2195', 'Santa barbara', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2196', 'Santa clara', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2197', 'Santa cruz', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2198', 'Santa cruz de la palma', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2199', 'Santa fe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2200', 'Santa maria (island)', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2201', 'Santa marta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2202', 'Santa rosa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2203', 'Santander', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2204', 'Santarem', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2205', 'Santiago', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2206', 'Santiago de cuba', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2207', 'Santiago del estero', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2208', 'Santo angelo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2209', 'Santo domingo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2210', 'Santorini', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2211', 'Santos', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2212', 'Sao jorge island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2213', 'Sao jose do rio preto', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2214', 'Sao jose dos campos', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2215', 'Sao luis', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2216', 'Sao nocolau island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2217', 'Sao paulo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2218', 'Sao tome', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2219', 'Sao vicente island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2220', 'Sapporo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2221', 'Sarajevo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2222', 'Saravena', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2223', 'Sarh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2224', 'Sarnia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2225', 'Saskatoon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2226', 'Satu mare', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2227', 'Sault sainte marie', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2228', 'Saurimo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2229', 'Savannah', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2230', 'Savannakhet', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2231', 'Savonlinna', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2232', 'Scarborough', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2233', 'Scatsta', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2234', 'Schefferville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2235', 'Seattle', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2236', 'Sebha', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2237', 'Selebi-phikwe', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2238', 'Selibabi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2239', 'Selma', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2240', 'Semarang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2241', 'Semiplatinsk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2242', 'Sendai', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2243', 'Seo de urgel', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2244', 'Seoul', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2245', 'Seoul east', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2246', 'Sept-iles', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2247', 'Setif', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2248', 'Sevilla', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2249', 'Sfax', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2250', 'Shanghai', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2251', 'Shannon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2252', 'Shantou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2253', 'Sharjah', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2254', 'Sharurah', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2255', 'Shemya', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2256', 'Shenzhen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2257', 'Sherbrooke', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2258', 'Shimojishima', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2259', 'Shiraz', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2260', 'Sholapur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2261', 'Shoreham by sea', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2262', 'Shreveport', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2263', 'Sibiu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2264', 'Sibu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2265', 'Sidi ifini', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2266', 'Siem-reap', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2267', 'Siena', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2268', 'Siglufjordur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2269', 'Sigonella', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2270', 'Silchar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2271', 'Simara', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2272', 'Simferopol', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2273', 'Singapore', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2274', 'Singkep', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2275', 'Sintang', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2276', 'Sion', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2277', 'Sioux city', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2278', 'Sioux lookout', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2279', 'Sishen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2280', 'Sitia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2281', 'Sitka', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2282', 'Sittwe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2283', 'Sivas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2284', 'Skagway', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2285', 'Skelleftea', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2286', 'Skiathos', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2287', 'Skien', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2288', 'Skiros', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2289', 'Skopje', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2290', 'Skovde', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2291', 'Skrydstrup', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2292', 'Skukuza', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2293', 'Slave lake', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2294', 'Sliac', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2295', 'Sligo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2296', 'Slupsk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2297', 'Smithers', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2298', 'Smithfield', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2299', 'Sochi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2300', 'Sodankyla', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2301', 'Soenderborg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2302', 'Soesterberg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2303', 'Sofia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2304', 'Sogndal', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2305', 'Sokcho', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2306', 'Sokoto', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2307', 'Solenzara', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2308', 'Solo city', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2309', 'Sondrestrom', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2310', 'Songkhla', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2311', 'Sorkjosen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2312', 'Sorong', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2313', 'Soroti', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2314', 'South caicos', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2315', 'Southampton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2316', 'Southdowns', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2317', 'Southend', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2318', 'Soyo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2319', 'Spangdahlem', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2320', 'Sparrevohn', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2321', 'Spence bay', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2322', 'Speyer', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2323', 'Split', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2324', 'Spokane', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2325', 'Spring point', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2326', 'Springbok', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2327', 'Srinagar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2328', 'St. anthony', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2329', 'St. catherine', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2330', 'St. criox island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2331', 'St. jean', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2332', 'St. john', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2333', 'St. johns', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2334', 'St. louis', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2335', 'St. martin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2336', 'St. paul island', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2337', 'St. petersburg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2338', 'St. thomas', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2339', 'St.-barthelemy', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2340', 'St.-brieuc armor', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2341', 'St.-denis', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2342', 'St.-etienne', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2343', 'St.-nazaire', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2344', 'St.-pierre', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2345', 'Stauning', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2346', 'Stavanger', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2347', 'Stavropol', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2348', 'Stella maris', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2349', 'Stephenville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2350', 'Stockholm', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2351', 'Stockton', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2352', 'Stord', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2353', 'Stornoway', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2354', 'Strassbourg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2355', 'Stratford', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2356', 'Stuttgart', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2357', 'Suceava', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2358', 'Sucre', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2359', 'Sudbury', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2360', 'Sui', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2361', 'Sukhumi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2362', 'Sukkur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2363', 'Sulayel', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2364', 'Sumbawa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2365', 'Sumburgh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2366', 'Summerside', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2367', 'Sumter', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2368', 'Sundsvall', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2369', 'Sunyani', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2370', 'Surabaya', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2371', 'Surat', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2372', 'Surgut', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2373', 'Svalbard', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2374', 'Sveg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2375', 'Sverdlovsk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2376', 'Swansea', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2377', 'Swift current', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2378', 'Sydney', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2379', 'Syktyvkar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2380', 'Sylhet osmani', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2381', 'Syracuse', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2382', 'Szczechin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2383', 'Tabatinga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2384', 'Tabiteuea north', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2385', 'Tabriz', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2386', 'Tabuk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2387', 'Tachilek', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2388', 'Tacloban', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2389', 'Tacna', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2390', 'Tacoma', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2391', 'Tacuarembo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2392', 'Taegu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2393', 'Tahoua', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2394', 'Taif', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2395', 'Tainan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2396', 'Taipei', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2397', 'Taiyuan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2398', 'Takamatsu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2399', 'Takapoto', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2400', 'Takaroa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2401', 'Takoradi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2402', 'Talara', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2403', 'Talhar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2404', 'Talkeetna', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2405', 'Tallahassee', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2406', 'Tallinn-ulemiste international', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2407', 'Tamale', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2408', 'Tamanrasset', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2409', 'Tambacounda', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2410', 'Tame', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2411', 'Tampa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2412', 'Tampere', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2413', 'Tampico', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2414', 'Tamuin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2415', 'Tamworth', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2416', 'Tan tan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2417', 'Tanana', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2418', 'Tandil', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2419', 'Tanegashima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2420', 'Tanga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2421', 'Tanger', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2422', 'Tanjung pandan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2423', 'Tanjung pinang', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2424', 'Tapachula', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2425', 'Taraken', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2426', 'Tarapoa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2427', 'Tarapoto', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2428', 'Tarawa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2429', 'Tarbes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2430', 'Tarija', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2431', 'Tashkent', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2432', 'Tatalina', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2433', 'Taupo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2434', 'Tauranga', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2435', 'Tawau', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2436', 'Tbilisi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2437', 'Tchibanga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2438', 'Tebessa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2439', 'Teesside', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2440', 'Tefe', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2441', 'Tegucigalpa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2442', 'Teheran', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2443', 'Tehuacan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2444', 'Tel-aviv', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2445', 'Tela', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2446', 'Temuco', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2447', 'Tenerife', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2448', 'Tepic', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2449', 'Teresina', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2450', 'Ternate', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2451', 'Terrace', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2452', 'Terre haute', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2453', 'Teslin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2454', 'Tete', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2455', 'Teterboro', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2456', 'Tetouan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2457', 'Texarkana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2458', 'Thaba nchu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2459', 'Thandwe', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2460', 'The valley', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2461', 'Thessaloniki', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2462', 'Thisted', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2463', 'Thohoyandou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2464', 'Thompson', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2465', 'Thule', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2466', 'Thumrait', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2467', 'Thunder bay', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2468', 'Tianjin', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2469', 'Tiaret', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2470', 'Tidjikja', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2471', 'Tijuana', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2472', 'Tikehau', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2473', 'Tiko', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2474', 'Tilrempt', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2475', 'Timaru', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2476', 'Timika', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2477', 'Timimoun', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2478', 'Timisoara', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2479', 'Timmins', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2480', 'Tin city', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2481', 'Tindouf', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2482', 'Tingo maria', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2483', 'Tirana', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2484', 'Tiree', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2485', 'Tirgu mures', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2486', 'Tiruchchirappalli', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2487', 'Tirupeti', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2488', 'Tivat', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2489', 'Tlaxcala', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2490', 'Tlemcen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2491', 'Toamasina', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2492', 'Tobolsk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2493', 'Tofino', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2494', 'Tokunoshima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2495', 'Tokushima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2496', 'Tokyo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2497', 'Tolagnaro', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2498', 'Toliara', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2499', 'Toluca', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2500', 'Tombouctou', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2501', 'Tongatapu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2502', 'Topeka', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2503', 'Torino', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2504', 'Toronto', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2505', 'Torp', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2506', 'Torreon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2507', 'Tortoli', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2508', 'Totegegie', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2509', 'Tottori', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2510', 'Touggourt', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2511', 'Touho', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2512', 'Toulouse', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2513', 'Tours', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2514', 'Toussous-le-noble', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2515', 'Townsville', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2516', 'Toyama', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2517', 'Tozeur', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2518', 'Trabzon', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2519', 'Trang', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2520', 'Trapani', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2521', 'Treasure cay', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2522', 'Trelew', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2523', 'Trenton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2524', 'Treviso', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2525', 'Trier', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2526', 'Trinciomalee', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2527', 'Trinidad', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2528', 'Tripoli', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2529', 'Trivandrum', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2530', 'Trollhattan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2531', 'Tromso', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2532', 'Trondheim', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2533', 'Troyes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2534', 'Trujillo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2535', 'Truth or consequences', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2536', 'Tselinograd', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2537', 'Tsushima', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2538', 'Tubuai', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2539', 'Tucson', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2540', 'Tucuman', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2541', 'Tucumcari', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2542', 'Tucupita', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2543', 'Tucurui', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2544', 'Tuktoyaktuk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2545', 'Tulcan', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2546', 'Tulcea', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2547', 'Tulsa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2548', 'Tulua', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2549', 'Tumaco', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2550', 'Tumbes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2551', 'Tunis', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2552', 'Turaif', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2553', 'Turany', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2554', 'Turbo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2555', 'Turku', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2556', 'Tustin', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2557', 'Tuxtla gutierrez', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2558', 'Tver', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2559', 'Twenty nine palms', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2560', 'Tyler', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2561', 'Tzaneen', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2562', 'Uberaba', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2563', 'Uberlandia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2564', 'Udaipur', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2565', 'Udon thani', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2566', 'Ufa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2567', 'Uige', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2568', 'Ujung pandang', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2569', 'Ulan bator', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2570', 'Ulan-ude', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2571', 'Ulsan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2572', 'Ulundi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2573', 'Umea', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2574', 'Umtata', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2575', 'Unalakleet', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2576', 'Unalaska', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2577', 'Upington', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2578', 'Uralsk', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2579', 'Uruapan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2580', 'Uruguaiana', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2581', 'Urumqi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2582', 'Ushuaia', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2583', 'Utti', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2584', 'Vaasa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2585', 'Vagar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2586', 'Val d or', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2587', 'Valdez', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2588', 'Valdivia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2589', 'Valdosta', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2590', 'Valence', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2591', 'Valencia', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2592', 'Valera', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2593', 'Valkenburg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2594', 'Valladolid', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2595', 'Valle de la pascua', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2596', 'Valledupar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2597', 'Valparaiso', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2598', 'Van', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2599', 'Vancouver', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2600', 'Vannes', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2601', 'Varadero', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2602', 'Varanasi', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2603', 'Varginha', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2604', 'Varkaus', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2605', 'Varna', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2606', 'Vasteras', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2607', 'Vavau', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2608', 'Vaxjo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2609', 'Venice', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2610', 'Vera cruz', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2611', 'Vermillion', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2612', 'Vero beach', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2613', 'Vestmannaeyjar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2614', 'Vicenza', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2615', 'Vichy', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2616', 'Victoria', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2617', 'Victoria falls', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2618', 'Victorville', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2619', 'Viedma', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2620', 'Vienna', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2621', 'Vientiane', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2622', 'Vigo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2623', 'Vijayawada', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2624', 'Vila real', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2625', 'Vilankulu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2626', 'Vilefrance', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2627', 'Vilhelmina', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2628', 'Vilhena', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2629', 'Villa dolores', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2630', 'Villa gesell', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2631', 'Villafranca', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2632', 'Villahermosa', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2633', 'Villavicencio', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2634', 'Visby', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2635', 'Vishakhapatnam', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2636', 'Vitebsk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2637', 'Vitoria', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2638', 'Vladivostok', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2639', 'Vohemar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2640', 'Volgograd', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2641', 'Voronezh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2642', 'Vryburg', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2643', 'Vryheid', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2644', 'Wabush', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2645', 'Waco', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2646', 'Waddington', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2647', 'Wagga wagga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2648', 'Waingapu', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2649', 'Wajir', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2650', 'Wakkanai', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2651', 'Wallis', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2652', 'Wallops island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2653', 'Wamena', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2654', 'Wanaka', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2655', 'Wang an', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2656', 'Wanganui', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2657', 'Warsaw', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2658', 'Washington', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2659', 'Waterford', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2660', 'Waterloo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2661', 'Watertown', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2662', 'Watson lake', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2663', 'Wau', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2664', 'Weipa', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2665', 'Wejh', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2666', 'Welkom', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2667', 'Wellington', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2668', 'Wendover', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2669', 'West chicago', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2670', 'West end', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2671', 'West hampton beach', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2672', 'West palm beach', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2673', 'West tinian', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2674', 'Westerland', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2675', 'Westport', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2676', 'Wewak', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2677', 'Whakatane', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2678', 'Whangarei', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2679', 'Whidbey island', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2680', 'White plains', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2681', 'White sands', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2682', 'Whitecourt', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2683', 'Whitehorse', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2684', 'Wiarton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2685', 'Wichita', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2686', 'Wichita falls', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2687', 'Wick', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2688', 'Wildwood', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2689', 'Wilhelmshaven', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2690', 'Willemstad', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2691', 'Williams lake', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2692', 'Williamsport', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2693', 'Williston', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2694', 'Willow grove', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2695', 'Wilmington', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2696', 'Windsor', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2697', 'Windsor locks', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2698', 'Wink', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2699', 'Winnipeg', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2700', 'Winston-salem', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2701', 'Woensdrecht', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2702', 'Woodbourne', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2703', 'Woomera', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2704', 'Wright', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2705', 'Wrightstown', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2706', 'Wrigley', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2707', 'Wroclaw', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2708', 'Wuhan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2709', 'Xangongo', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2710', 'Xi an', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2711', 'Xiamen', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2712', 'Xichang', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2713', 'Yakushima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2714', 'Yakutat', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2715', 'Yakutsk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2716', 'Yalinga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2717', 'Yamagata', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2718', 'Yamaguchi', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2719', 'Yamoussoukro', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2720', 'Yangon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2721', 'Yantai', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2722', 'Yaounde', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2723', 'Yap', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2724', 'Yazd', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2725', 'Yechon', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2726', 'Yellowknife', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2727', 'Yenbo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2728', 'Yeosu', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2729', 'Yeovilton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2730', 'Yerevan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2731', 'Yogyakarta', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2732', 'Yokota', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2733', 'Yola', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2734', 'Yonaguni jima', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2735', 'Yorkton', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2736', 'Yoron', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2737', 'Youngstown', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2738', 'Yuma', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2739', 'Yurimaguas', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2740', 'Yuzhno-sakhalinsk', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2741', 'Zacatecas', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2742', 'Zadar', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2743', 'Zagreb', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2744', 'Zahedan', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2745', 'Zakynthos', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2746', 'Zamboanga', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2747', 'Zamora', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2748', 'Zandery', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2749', 'Zanzibar', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2750', 'Zaragoza', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2751', 'Zaria', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2752', 'Zarzaitine', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2753', 'Zhengzhou', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2754', 'Zhob', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2755', 'Zielona gora', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2756', 'Ziguinchor', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2757', 'Zihuatanejo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2758', 'Zinder', '2');
INSERT INTO ciudad(id,nombre,estado) values( '2759', 'Zuni pueblo', '1');
INSERT INTO ciudad(id,nombre,estado) values( '2760', 'Zurich', '2');

