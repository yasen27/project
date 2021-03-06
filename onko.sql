-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Време на генериране: 
-- Версия на сървъра: 5.5.27
-- Версия на PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- БД: `oнко`
--

-- --------------------------------------------------------

--
-- Структура на таблица `grupi__mkb`
--

CREATE TABLE IF NOT EXISTS `grupi__mkb` (
  `id_gr` int(2) NOT NULL DEFAULT '0',
  `ime_gr` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`id_gr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Ссхема на данните от таблица `grupi__mkb`
--

INSERT INTO `grupi__mkb` (`id_gr`, `ime_gr`) VALUES
(1, 'устна кухина и фаринкс'),
(2, 'неуточнени локализации'),
(3, 'меланом и кожа'),
(4, 'кости и ставни хрущяли'),
(5, 'мъжки полови органи'),
(6, 'щитовидна жлеза'),
(7, 'лимфни възли'),
(8, 'око'),
(9, 'женски полови органи'),
(10, 'храносмилателна система'),
(11, 'черва и анални пътища'),
(12, 'жлъчка'),
(13, 'млечна влеза'),
(14, 'мозък и нервна система'),
(15, 'трахея,бронхи,тимус,сърцре и други');

-- --------------------------------------------------------

--
-- Структура на таблица `izsledvania`
--

CREATE TABLE IF NOT EXISTS `izsledvania` (
  `id_izsledvane` int(2) NOT NULL DEFAULT '0',
  `ime_izsledvane` varchar(66) DEFAULT NULL,
  PRIMARY KEY (`id_izsledvane`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Ссхема на данните от таблица `izsledvania`
--

INSERT INTO `izsledvania` (`id_izsledvane`, `ime_izsledvane`) VALUES
(1, 'Клиничен преглед'),
(2, 'ПКК'),
(3, 'Биохимия'),
(4, 'рентегонография на гръден кош(фас)'),
(5, 'КТ-глава на шия с контраст'),
(6, 'МРТ'),
(7, 'Рентген'),
(8, 'КТ'),
(9, 'ПЕТ-СТ'),
(10, 'Рентeгнография'),
(11, 'Ехограхия'),
(12, 'Рентегонография на гръден кош(2 поз.)'),
(13, 'КТ-глава и бял дроб'),
(14, 'Ехография корем'),
(15, 'Ту маркер'),
(16, 'Сцинография'),
(17, 'Хормони'),
(18, 'Езафогограстроскокпия'),
(19, 'Абдоминална ехография'),
(20, 'Колон-ентроскопия(ФКС)'),
(21, 'Сцитинография кости'),
(23, 'КТ - глава, гръден кош и корем'),
(24, 'МРТ гръден кош'),
(25, 'Бронхоскопия');

-- --------------------------------------------------------

--
-- Структура на таблица `kontrolni_izsledvania`
--

CREATE TABLE IF NOT EXISTS `kontrolni_izsledvania` (
  `id_grupa_izsl` int(3) DEFAULT NULL,
  `id_izsledv` int(2) DEFAULT NULL,
  `id_gr` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Ссхема на данните от таблица `kontrolni_izsledvania`
--

INSERT INTO `kontrolni_izsledvania` (`id_grupa_izsl`, `id_izsledv`, `id_gr`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 1, 2),
(8, 2, 2),
(9, 3, 2),
(10, 7, 2),
(11, 8, 2),
(12, 9, 2),
(13, 1, 3),
(14, 2, 3),
(15, 3, 3),
(16, 10, 3),
(17, 11, 3),
(18, 6, 3),
(19, 8, 3),
(20, 1, 4),
(21, 2, 4),
(22, 3, 4),
(23, 12, 4),
(24, 6, 4),
(25, 13, 4),
(26, 10, 5),
(27, 14, 5),
(28, 15, 5),
(29, 8, 5),
(30, 6, 5),
(31, 1, 6),
(32, 2, 6),
(33, 3, 6),
(34, 7, 6),
(35, 16, 6),
(36, 17, 6),
(37, 6, 6),
(38, 8, 6),
(39, 1, 7),
(40, 2, 7),
(41, 3, 7),
(42, 4, 7),
(43, 5, 7),
(44, 6, 7),
(45, 1, 8),
(46, 2, 8),
(47, 3, 8),
(48, 10, 8),
(49, 14, 8),
(50, 15, 8),
(51, 8, 8),
(52, 6, 8),
(53, 1, 9),
(54, 2, 9),
(55, 3, 9),
(56, 8, 9),
(57, 1, 10),
(58, 2, 10),
(59, 3, 10),
(60, 12, 10),
(61, 18, 10),
(62, 19, 10),
(63, 8, 10),
(64, 15, 10),
(57, 1, 11),
(58, 2, 11),
(59, 3, 11),
(60, 12, 11),
(61, 18, 11),
(62, 19, 11),
(63, 8, 11),
(64, 15, 11),
(73, 1, 12),
(74, 2, 12),
(75, 3, 12),
(76, 12, 12),
(77, 15, 12),
(78, 20, 12),
(79, 19, 12),
(80, 8, 12),
(81, 1, 13),
(82, 2, 13),
(83, 3, 13),
(84, 12, 13),
(85, 15, 13),
(86, 19, 13),
(87, 8, 13),
(88, 1, 14),
(89, 2, 14),
(90, 3, 14),
(91, 10, 14),
(92, 21, 14),
(93, 14, 14),
(94, 15, 14),
(95, 8, 14),
(96, 1, 15),
(97, 2, 15),
(98, 3, 15),
(99, 10, 15),
(100, 8, 15),
(101, 9, 15),
(102, 1, 16),
(103, 2, 16),
(104, 12, 16),
(105, 23, 16),
(106, 24, 16),
(107, 3, 16),
(108, 25, 16),
(109, 1, 5),
(110, 2, 5),
(111, 3, 5);

-- --------------------------------------------------------

--
-- Структура на таблица `kontr_izsl_period`
--

CREATE TABLE IF NOT EXISTS `kontr_izsl_period` (
  `id_` int(3) NOT NULL DEFAULT '0',
  `id_grupa_izsl` int(3) DEFAULT NULL,
  `id_period` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Ссхема на данните от таблица `kontr_izsl_period`
--

INSERT INTO `kontr_izsl_period` (`id_`, `id_grupa_izsl`, `id_period`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 2, 1),
(11, 2, 2),
(12, 2, 3),
(13, 2, 4),
(14, 2, 5),
(15, 2, 6),
(16, 2, 7),
(17, 2, 8),
(18, 2, 9),
(19, 3, 1),
(20, 3, 2),
(21, 3, 3),
(22, 3, 4),
(23, 3, 5),
(24, 3, 6),
(25, 3, 7),
(26, 3, 8),
(27, 3, 9),
(28, 4, 1),
(29, 4, 2),
(30, 4, 3),
(31, 4, 4),
(32, 4, 5),
(33, 4, 6),
(34, 4, 7),
(35, 4, 8),
(36, 4, 9),
(37, 5, 4),
(38, 5, 6),
(39, 5, 8),
(40, 5, 9),
(41, 6, 4),
(42, 6, 6),
(43, 6, 8),
(44, 6, 9),
(45, 7, 1),
(46, 7, 2),
(47, 7, 3),
(48, 7, 4),
(49, 7, 5),
(50, 7, 6),
(51, 7, 7),
(52, 7, 8),
(53, 7, 9),
(54, 8, 1),
(55, 8, 2),
(56, 8, 3),
(57, 8, 4),
(58, 8, 5),
(59, 8, 6),
(60, 8, 7),
(61, 8, 8),
(62, 8, 9),
(63, 9, 1),
(64, 9, 2),
(65, 9, 3),
(66, 9, 4),
(67, 9, 5),
(68, 9, 6),
(69, 9, 7),
(70, 9, 8),
(71, 9, 9),
(72, 10, 1),
(73, 10, 2),
(74, 10, 3),
(75, 10, 4),
(76, 10, 5),
(77, 10, 6),
(78, 10, 7),
(79, 10, 8),
(80, 10, 9),
(81, 11, 4),
(82, 11, 6),
(83, 11, 8),
(84, 11, 9),
(85, 12, 4),
(86, 12, 6),
(87, 12, 8),
(88, 12, 9),
(89, 13, 1),
(90, 13, 2),
(91, 13, 3),
(92, 13, 4),
(93, 13, 5),
(94, 13, 6),
(95, 13, 7),
(96, 13, 8),
(97, 13, 9),
(98, 14, 1),
(99, 14, 2),
(100, 14, 3),
(101, 14, 4),
(102, 14, 5),
(103, 14, 6),
(104, 14, 7),
(105, 14, 8),
(106, 14, 9),
(107, 15, 1),
(108, 15, 2),
(109, 15, 3),
(110, 15, 4),
(111, 15, 5),
(112, 15, 6),
(113, 15, 7),
(114, 15, 8),
(115, 15, 9),
(116, 16, 1),
(117, 16, 2),
(118, 16, 3),
(119, 16, 4),
(120, 16, 5),
(121, 16, 6),
(122, 16, 7),
(123, 16, 8),
(124, 16, 9),
(125, 17, 1),
(126, 17, 2),
(127, 17, 3),
(128, 17, 4),
(129, 17, 5),
(130, 17, 6),
(131, 17, 7),
(132, 17, 8),
(133, 17, 9),
(134, 18, 4),
(135, 18, 6),
(136, 18, 8),
(137, 18, 9),
(138, 19, 4),
(139, 19, 8),
(140, 19, 9),
(141, 20, 1),
(142, 20, 2),
(143, 20, 3),
(144, 20, 4),
(145, 20, 5),
(146, 20, 6),
(147, 20, 7),
(148, 20, 8),
(149, 20, 9),
(150, 21, 1),
(151, 21, 2),
(152, 21, 3),
(153, 21, 4),
(154, 21, 5),
(155, 21, 6),
(156, 21, 7),
(157, 21, 8),
(158, 21, 9),
(159, 22, 1),
(160, 22, 2),
(161, 22, 3),
(162, 22, 4),
(163, 22, 5),
(164, 22, 6),
(165, 22, 7),
(166, 22, 8),
(167, 22, 9),
(168, 23, 1),
(169, 23, 2),
(170, 23, 3),
(171, 23, 4),
(172, 23, 5),
(173, 23, 6),
(174, 23, 7),
(175, 23, 8),
(176, 23, 9),
(177, 24, 4),
(178, 24, 6),
(179, 24, 8),
(180, 24, 9),
(181, 25, 4),
(182, 25, 6),
(183, 25, 8),
(184, 26, 1),
(185, 26, 2),
(186, 26, 3),
(187, 26, 4),
(188, 26, 5),
(189, 26, 6),
(190, 26, 7),
(191, 26, 8),
(192, 26, 9),
(193, 27, 1),
(194, 27, 4),
(195, 27, 5),
(196, 27, 6),
(197, 27, 7),
(198, 27, 8),
(199, 27, 9),
(200, 28, 1),
(201, 28, 3),
(202, 28, 5),
(203, 28, 6),
(204, 28, 7),
(205, 28, 8),
(206, 28, 9),
(207, 29, 1),
(208, 29, 3),
(209, 29, 6),
(210, 29, 8),
(211, 29, 9),
(212, 30, 1),
(213, 30, 5),
(214, 30, 6),
(215, 30, 7),
(216, 30, 8),
(217, 30, 9),
(218, 109, 1),
(219, 109, 2),
(220, 109, 3),
(221, 109, 4),
(222, 109, 5),
(223, 109, 6),
(224, 109, 7),
(225, 109, 8),
(226, 109, 9),
(227, 110, 1),
(228, 110, 2),
(229, 110, 3),
(230, 110, 4),
(231, 110, 5),
(232, 110, 6),
(233, 110, 7),
(234, 110, 8),
(235, 110, 9),
(236, 111, 1),
(237, 111, 2),
(238, 111, 3),
(239, 111, 4),
(240, 111, 5),
(241, 111, 6),
(242, 111, 7),
(243, 111, 8),
(244, 111, 9),
(245, 31, 1),
(246, 31, 2),
(247, 31, 3),
(248, 31, 4),
(249, 31, 5),
(250, 31, 6),
(251, 31, 7),
(252, 31, 8),
(253, 31, 9),
(254, 32, 1),
(255, 32, 2),
(256, 32, 3),
(257, 32, 4),
(258, 32, 5),
(259, 32, 6),
(260, 32, 7),
(261, 32, 8),
(262, 32, 9),
(263, 33, 1),
(264, 33, 2),
(265, 33, 3),
(266, 33, 4),
(267, 33, 5),
(268, 33, 6),
(269, 33, 7),
(270, 33, 8),
(271, 33, 9),
(272, 34, 1),
(273, 34, 2),
(274, 34, 3),
(275, 34, 4),
(276, 34, 5),
(277, 34, 6),
(278, 34, 7),
(279, 34, 8),
(280, 34, 9),
(281, 35, 4),
(282, 35, 6),
(283, 35, 8),
(284, 35, 9),
(285, 36, 1),
(286, 36, 2),
(287, 36, 3),
(288, 36, 4),
(289, 36, 5),
(290, 36, 6),
(291, 36, 7),
(292, 36, 8),
(293, 36, 9),
(294, 37, 4),
(295, 37, 6),
(296, 37, 8),
(297, 37, 9),
(298, 38, 4),
(299, 38, 6),
(300, 38, 8),
(301, 38, 9),
(302, 39, 1),
(303, 39, 2),
(304, 39, 3),
(305, 39, 4),
(306, 39, 5),
(307, 39, 6),
(308, 39, 7),
(309, 39, 8),
(310, 39, 9),
(311, 40, 1),
(312, 40, 2),
(313, 40, 3),
(314, 40, 4),
(315, 40, 5),
(316, 40, 6),
(317, 40, 7),
(318, 40, 8),
(319, 40, 9),
(320, 41, 1),
(321, 41, 2),
(322, 41, 3),
(323, 41, 4),
(324, 41, 5),
(325, 41, 6),
(326, 41, 7),
(327, 41, 8),
(328, 41, 9),
(329, 42, 1),
(330, 42, 2),
(331, 42, 3),
(332, 42, 4),
(333, 42, 5),
(334, 42, 6),
(335, 42, 7),
(336, 42, 8),
(337, 42, 9),
(338, 43, 4),
(339, 43, 6),
(340, 43, 8),
(341, 43, 9),
(342, 44, 4),
(343, 44, 6),
(344, 44, 8),
(345, 44, 9),
(346, 45, 1),
(347, 45, 2),
(348, 45, 3),
(349, 45, 4),
(350, 45, 5),
(351, 45, 6),
(352, 45, 7),
(353, 45, 8),
(354, 45, 9),
(355, 46, 1),
(356, 46, 2),
(357, 46, 3),
(358, 46, 4),
(359, 46, 5),
(360, 46, 6),
(361, 46, 7),
(362, 46, 8),
(363, 46, 9),
(364, 47, 1),
(365, 47, 2),
(366, 47, 3),
(367, 47, 4),
(368, 47, 5),
(369, 47, 6),
(370, 47, 7),
(371, 47, 8),
(372, 47, 9),
(373, 48, 1),
(374, 48, 2),
(375, 48, 3),
(376, 48, 4),
(377, 48, 5),
(378, 48, 6),
(379, 48, 7),
(380, 48, 8),
(381, 48, 9),
(382, 49, 1),
(383, 49, 4),
(384, 49, 5),
(385, 49, 6),
(386, 49, 7),
(387, 49, 8),
(388, 49, 9),
(389, 50, 1),
(390, 50, 3),
(391, 50, 5),
(392, 50, 6),
(393, 50, 7),
(394, 50, 8),
(395, 50, 9),
(396, 51, 1),
(397, 51, 3),
(398, 51, 6),
(399, 52, 6),
(400, 53, 1),
(401, 53, 2),
(402, 53, 3),
(403, 53, 4),
(404, 53, 5),
(405, 53, 6),
(406, 53, 7),
(407, 53, 8),
(408, 53, 9),
(409, 54, 1),
(410, 54, 2),
(411, 54, 3),
(412, 54, 4),
(413, 54, 5),
(414, 54, 6),
(415, 54, 7),
(416, 54, 8),
(417, 54, 9),
(418, 55, 1),
(419, 55, 2),
(420, 55, 3),
(421, 55, 4),
(422, 55, 5),
(423, 55, 6),
(424, 55, 7),
(425, 55, 8),
(426, 55, 9),
(427, 56, 1),
(428, 56, 2),
(429, 56, 3),
(430, 56, 6),
(431, 56, 8),
(432, 56, 9),
(433, 57, 1),
(434, 57, 2),
(435, 57, 3),
(436, 57, 4),
(437, 57, 5),
(438, 57, 6),
(439, 57, 7),
(440, 57, 8),
(441, 57, 9),
(442, 58, 1),
(443, 58, 2),
(444, 58, 3),
(445, 58, 4),
(446, 58, 5),
(447, 58, 6),
(448, 58, 7),
(449, 58, 8),
(450, 58, 9),
(451, 59, 1),
(452, 59, 2),
(453, 59, 3),
(454, 59, 4),
(455, 59, 5),
(456, 59, 6),
(457, 59, 7),
(458, 59, 8),
(459, 59, 9),
(460, 60, 1),
(461, 60, 2),
(462, 60, 3),
(463, 60, 4),
(464, 60, 6),
(465, 60, 8),
(466, 60, 9),
(467, 61, 4),
(468, 61, 6),
(469, 61, 8),
(470, 62, 1),
(471, 62, 4),
(472, 62, 5),
(473, 62, 6),
(474, 62, 7),
(475, 62, 8),
(476, 62, 9),
(477, 63, 4),
(478, 63, 6),
(479, 63, 7),
(480, 63, 8),
(481, 63, 9),
(482, 64, 1),
(483, 64, 4),
(484, 64, 5),
(485, 64, 6),
(486, 64, 8),
(487, 64, 9),
(488, 65, 1),
(489, 65, 2),
(490, 65, 3),
(491, 65, 4),
(492, 65, 5),
(493, 65, 6),
(494, 65, 7),
(495, 65, 8),
(496, 65, 9),
(497, 66, 1),
(498, 66, 2),
(499, 66, 3),
(500, 66, 4),
(501, 66, 5),
(502, 66, 6),
(503, 66, 7),
(504, 66, 8),
(505, 66, 9),
(506, 67, 1),
(507, 67, 2),
(508, 67, 3),
(509, 67, 4),
(510, 67, 5),
(511, 67, 6),
(512, 67, 7),
(513, 67, 8),
(514, 67, 9),
(515, 68, 1),
(516, 68, 2),
(517, 68, 3),
(518, 68, 4),
(519, 68, 5),
(520, 68, 6),
(521, 68, 7),
(522, 68, 8),
(523, 68, 9),
(524, 69, 2),
(525, 69, 4),
(526, 69, 6),
(527, 69, 8),
(528, 69, 9),
(529, 70, 1),
(530, 70, 2),
(531, 70, 3),
(532, 70, 4),
(533, 70, 5),
(534, 70, 6),
(535, 70, 7),
(536, 70, 8),
(537, 70, 9),
(538, 71, 1),
(539, 71, 4),
(540, 71, 6),
(541, 71, 8),
(542, 71, 9),
(543, 72, 1),
(544, 72, 2),
(545, 72, 3),
(546, 72, 4),
(547, 72, 5),
(548, 72, 6),
(549, 72, 7),
(550, 72, 8),
(551, 72, 9),
(552, 73, 1),
(553, 73, 2),
(554, 73, 3),
(555, 73, 4),
(556, 73, 5),
(557, 73, 6),
(558, 73, 7),
(559, 73, 8),
(560, 73, 9),
(561, 74, 1),
(562, 74, 2),
(563, 74, 3),
(564, 74, 4),
(565, 74, 5),
(566, 74, 6),
(567, 74, 7),
(568, 74, 8),
(569, 74, 9),
(570, 75, 1),
(571, 75, 2),
(572, 75, 3),
(573, 75, 4),
(574, 75, 5),
(575, 75, 6),
(576, 75, 7),
(577, 75, 8),
(578, 75, 9),
(579, 76, 1),
(580, 76, 2),
(581, 76, 3),
(582, 76, 4),
(583, 76, 5),
(584, 76, 6),
(585, 76, 7),
(586, 76, 8),
(587, 76, 9),
(588, 77, 1),
(589, 77, 2),
(590, 77, 3),
(591, 77, 4),
(592, 77, 5),
(593, 77, 6),
(594, 77, 7),
(595, 77, 8),
(596, 77, 9),
(597, 78, 2),
(598, 78, 4),
(599, 78, 6),
(600, 78, 8),
(601, 78, 9),
(602, 79, 2),
(603, 79, 4),
(604, 79, 6),
(605, 79, 8),
(606, 79, 9),
(607, 80, 4),
(608, 80, 6),
(609, 80, 8),
(610, 80, 9),
(611, 81, 1),
(612, 81, 2),
(613, 81, 3),
(614, 81, 4),
(615, 81, 5),
(616, 81, 6),
(617, 81, 7),
(618, 81, 8),
(619, 81, 9),
(620, 82, 1),
(621, 82, 2),
(622, 82, 3),
(623, 82, 4),
(624, 82, 5),
(625, 82, 6),
(626, 82, 7),
(627, 82, 8),
(628, 82, 9),
(629, 83, 1),
(630, 83, 2),
(631, 83, 3),
(632, 83, 4),
(633, 83, 5),
(634, 83, 6),
(635, 83, 7),
(636, 83, 8),
(637, 83, 9),
(638, 84, 1),
(639, 84, 2),
(640, 84, 3),
(641, 84, 4),
(642, 84, 5),
(643, 84, 6),
(644, 84, 7),
(645, 84, 8),
(646, 84, 9),
(647, 85, 1),
(648, 85, 2),
(649, 85, 3),
(650, 85, 4),
(651, 85, 5),
(652, 85, 6),
(653, 85, 7),
(654, 85, 8),
(655, 85, 9),
(656, 86, 2),
(657, 86, 4),
(658, 86, 5),
(659, 86, 6),
(660, 86, 7),
(661, 86, 8),
(662, 86, 9),
(663, 87, 2),
(664, 87, 4),
(665, 87, 5),
(666, 87, 6),
(667, 87, 7),
(668, 87, 8),
(669, 87, 9),
(670, 88, 1),
(671, 88, 2),
(672, 88, 3),
(673, 88, 4),
(674, 88, 5),
(675, 88, 6),
(676, 88, 7),
(677, 88, 8),
(678, 88, 9),
(679, 89, 1),
(680, 89, 2),
(681, 89, 3),
(682, 89, 4),
(683, 89, 5),
(684, 89, 6),
(685, 89, 7),
(686, 89, 8),
(687, 89, 9),
(688, 90, 1),
(689, 90, 2),
(690, 90, 3),
(691, 90, 4),
(692, 90, 5),
(693, 90, 6),
(694, 90, 7),
(695, 90, 8),
(696, 90, 9),
(697, 91, 1),
(698, 91, 2),
(699, 91, 3),
(700, 91, 4),
(701, 91, 5),
(702, 91, 6),
(703, 91, 7),
(704, 91, 8),
(705, 91, 9),
(706, 92, 1),
(707, 92, 2),
(708, 92, 3),
(709, 92, 4),
(710, 92, 5),
(711, 92, 6),
(712, 92, 7),
(713, 92, 8),
(714, 92, 9),
(715, 93, 2),
(716, 93, 4),
(717, 93, 6),
(718, 93, 7),
(719, 93, 8),
(720, 93, 9),
(721, 94, 2),
(722, 94, 4),
(723, 94, 6),
(724, 94, 8),
(725, 94, 9),
(726, 95, 4),
(727, 95, 6),
(728, 95, 8),
(729, 95, 9),
(730, 96, 1),
(731, 96, 2),
(732, 96, 3),
(733, 96, 4),
(734, 96, 5),
(735, 96, 6),
(736, 96, 7),
(737, 96, 8),
(738, 96, 9),
(739, 97, 1),
(740, 97, 2),
(741, 97, 3),
(742, 97, 4),
(743, 97, 5),
(744, 97, 6),
(745, 97, 7),
(746, 97, 8),
(747, 97, 9),
(748, 98, 1),
(749, 98, 2),
(750, 98, 3),
(751, 98, 4),
(752, 98, 5),
(753, 98, 6),
(754, 98, 7),
(755, 98, 8),
(756, 98, 9),
(757, 99, 1),
(758, 99, 2),
(759, 99, 3),
(760, 99, 4),
(761, 99, 5),
(762, 99, 6),
(763, 99, 7),
(764, 99, 8),
(765, 99, 9),
(766, 100, 2),
(767, 100, 6),
(768, 100, 8),
(769, 100, 9),
(770, 101, 2),
(771, 101, 6),
(772, 101, 8),
(773, 101, 9),
(774, 102, 1),
(775, 102, 2),
(776, 102, 3),
(777, 102, 4),
(778, 102, 5),
(779, 102, 6),
(780, 102, 7),
(781, 102, 8),
(782, 102, 9),
(783, 103, 1),
(784, 103, 2),
(785, 103, 3),
(786, 103, 4),
(787, 103, 5),
(788, 103, 6),
(789, 103, 7),
(790, 103, 8),
(791, 103, 9),
(792, 104, 1),
(793, 104, 2),
(794, 104, 3),
(795, 104, 4),
(796, 104, 5),
(797, 104, 6),
(798, 104, 7),
(799, 104, 8),
(800, 104, 9),
(801, 105, 1),
(802, 105, 2),
(803, 105, 3),
(804, 105, 4),
(805, 105, 5),
(806, 105, 6),
(807, 105, 7),
(808, 105, 8),
(809, 105, 9),
(810, 106, 4),
(811, 106, 6),
(812, 106, 8),
(813, 106, 9),
(814, 107, 4),
(815, 107, 6),
(816, 107, 8),
(817, 107, 9),
(818, 108, 4),
(819, 108, 6),
(820, 108, 8),
(821, 108, 9);

-- --------------------------------------------------------

--
-- Структура на таблица `meseci`
--

CREATE TABLE IF NOT EXISTS `meseci` (
  `id_period` int(1) NOT NULL DEFAULT '0',
  `ime_period` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Ссхема на данните от таблица `meseci`
--

INSERT INTO `meseci` (`id_period`, `ime_period`) VALUES
(1, 3),
(2, 6),
(3, 9),
(4, 12),
(5, 18),
(6, 24),
(7, 30),
(8, 36),
(9, 48);

-- --------------------------------------------------------

--
-- Структура на таблица `mkb`
--

CREATE TABLE IF NOT EXISTS `mkb` (
  `id_mkb` int(2) DEFAULT NULL,
  `id_gr` int(2) DEFAULT NULL,
  `ime_mkb` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Ссхема на данните от таблица `mkb`
--

INSERT INTO `mkb` (`id_mkb`, `id_gr`, `ime_mkb`) VALUES
(1, 1, 'злокачествено новообразувание на устната'),
(2, 1, 'злокачествено новообразувание на основата на езика'),
(3, 1, 'злокачествено новообразувания на други и неуточнени части на езика'),
(4, 1, 'злокачествено новообразуване на венците'),
(5, 1, 'злокачествено новообразувание на пода на устната кухина'),
(6, 1, 'злокачествено новобразувание на небцето'),
(7, 1, 'злокачествено новообразувание на други и неуточнени части на устната кухина'),
(8, 1, 'злокачествено новообрззувание на околоушната слунчена жлеза'),
(9, 1, 'злокачествено новообразувание на други и неуточнени части на големите слюнчени жлези'),
(10, 1, 'злокачествено новобразувание на сливницата'),
(11, 1, 'злокачествено новообразувание на орофаринкса'),
(12, 1, 'злокачествено новообразувание на назофаринкса'),
(13, 1, 'злокачествено новообразувание на пирофирмения синус'),
(14, 1, 'злокачествено новообразувание на хипофаринкса'),
(15, 1, 'злокачествено новообразувание с други и неточно определени локализации на устната кухина и фаринкса'),
(16, 1, 'злокачествено новообразувание на носната кухина и средното ухо'),
(17, 1, 'злокачествено новообразувание на синусите'),
(18, 1, 'злокачествено новообразувание на ларинкса'),
(19, 2, 'злокачествено новообразувание с други и неточно оределени локализации'),
(20, 2, 'вторично и неточнено злокачествено новобразувание на лимфните възли'),
(21, 2, 'вторично злокачествено новообразувание на дихателната и храносмолателната система'),
(22, 2, 'вторично злокачествено новообразувание на с неуточнена локализация'),
(23, 3, 'злокачествен меланом на кожата'),
(24, 3, 'други злокачетвени новообразувания на кожата'),
(25, 4, 'злокачествено новообразувание на костите и ставние хрущяли на крайниците'),
(26, 4, 'злокачествено новообразувание на костите и ставние хрущяли с други и неуточнени локализации'),
(27, 4, 'злокачествено новообразувание на ретроперитонеума перитонеума'),
(28, 4, 'злокачествено новообразувание на съединителната и другите меки тъкани'),
(29, 5, 'злокачествено новобразувание на пениса'),
(30, 5, 'злокачествено новобразувание на простата'),
(31, 5, 'злокачествено новообразувание на тестиса'),
(32, 5, 'злокачествено новообразувание на други и неуточнени части на мъжките полови органи'),
(33, 5, 'злокачествено новообразувание на бъбрека,с изключение бъбречното легенче'),
(34, 5, 'злокачествено новообразъвание на бъбречното легенче'),
(35, 5, 'злокачествено новообразувание на уретера'),
(36, 5, 'злокачествено новообразувание на пикочния мехур'),
(37, 5, 'злокачествено новообразувание на други и неуточнени части на пикочните органи'),
(38, 6, 'злокачествено новобразувание на щитовидната жлеза'),
(39, 6, 'злокачествено новобразувание на надбъбречната жлеза'),
(40, 6, 'злокачестено новообразувание на други еднокринни жлези и сродни сруктури'),
(41, 7, 'болест на Hodgin(лимфогрануломоза)'),
(42, 7, 'фоликуларен(нодуларен) нехочинов лимфом'),
(43, 7, 'дифузен нехончинов лимфом'),
(44, 7, 'периодични и кожни Т-клетъчни лимфоми'),
(45, 7, 'други и неуточнени типове на нехончинов лимфом'),
(46, 7, 'злокачествени имунопролиферативни болести'),
(47, 7, 'множествен меланом и злокачествени плазмоклетъчни новообразувания'),
(48, 7, 'лимфоидна левкимия'),
(49, 7, 'мелоидна левкимия'),
(50, 7, 'моноцидна левкимия'),
(51, 7, 'други левкимии с уточнен клетъчен вид'),
(52, 7, 'левкимия с неуточнен клетъчен вид'),
(53, 7, 'други и неуточнени злокачествени новообразувания на лимфната,кръвотворната и сродните тъкани'),
(54, 8, 'злокачествено новообразувание на окото и неговите придатъци'),
(55, 9, 'злокачествено новообразувание на вулвата'),
(56, 9, 'злокачествено новообразувание на влагалището'),
(57, 9, 'злокачествено новообразувание на шийката на маткта'),
(58, 9, 'злокачествено новообразувание на тялото на матката'),
(59, 9, 'злокачествено новоообразувание на матката с неуточнена локализация'),
(60, 9, 'злокачествено новообразувание на яйчника'),
(61, 9, 'злокачествено новоообразувание на други и неуточнени части на женските полови органи'),
(62, 9, 'злокачествено новообразъвание на плацентата'),
(63, 10, 'злокачествено новообразувание на хранопровода'),
(64, 10, 'злокачествено новообразувание на стомаха'),
(65, 10, 'злокачесвено новообразъвание на дебелото черво'),
(66, 11, 'злокачествено новообразувание на дебелото черво'),
(67, 11, 'злокачествено новообразувание на ректосигмоидалната област'),
(68, 11, 'злкокачествено новообразувание на правото черво'),
(69, 11, 'злокачествено новообразувание на ануса и аналния канал'),
(70, 12, 'злокачествено новообразувание на черния дроб и инрехепталните жлъчни пътища'),
(71, 12, 'злокачествено новообразувание на жлъчния мехур'),
(72, 12, 'злокачествено новообразувание на други и неуточнени части на жлъчните пътища'),
(73, 12, 'злокачествено новообразувание на панкреаса'),
(74, 12, 'злокачествено новообразувание на храносмилателните органи с друга и неточно определена локализация'),
(75, 13, 'злокачествено новообразувание на млечната жлеза'),
(76, 14, 'злокачествено новообразувание на мозъчните обвики'),
(77, 14, 'злокачествено новообразувание на главния мозък'),
(78, 14, 'злокачествено новообразувание на гръбначния мозък,черепно-мозъчните нерви и други части на централната нервна система'),
(79, 15, 'злокачествено новообразувание на трахеята'),
(80, 15, 'злокачествено новообразувание на бронхите и белия дроб'),
(81, 15, 'злокачествено новообразувание на тимуса'),
(82, 15, 'злокачествено новообразувание на сърцето,медиастинума и плеврата'),
(83, 15, 'злокачествено новообразувание с други и неточно определени локализации на дихателните органи и гръдния кош');

-- --------------------------------------------------------

--
-- Структура на таблица `specialisti`
--

CREATE TABLE IF NOT EXISTS `specialisti` (
  `id_specialist` int(2) NOT NULL DEFAULT '0',
  `ime_specialist` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`id_specialist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Ссхема на данните от таблица `specialisti`
--

INSERT INTO `specialisti` (`id_specialist`, `ime_specialist`) VALUES
(1, 'Невролог'),
(2, 'Лицево-челюстен хирург'),
(3, 'Лъчетерапевт'),
(4, 'Медицински онколог'),
(5, 'РЕТ-СТ'),
(6, 'Пуломог'),
(7, 'Гастроентеролог'),
(8, 'Офтамолог'),
(9, 'VALS'),
(10, 'Ендикринолог'),
(11, 'Кардиолог'),
(12, 'Гръден хирург'),
(13, 'Диетолог'),
(14, 'МРТ'),
(15, 'Психолог'),
(16, 'Отоневролог'),
(17, 'УНГБ'),
(18, 'VATS'),
(19, 'ТАБ');

-- --------------------------------------------------------

--
-- Структура на таблица `spec_gr`
--

CREATE TABLE IF NOT EXISTS `spec_gr` (
  `id_` int(2) NOT NULL DEFAULT '0',
  `id_gr` int(2) DEFAULT NULL,
  `id_specialist` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `id_gr` (`id_gr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Ссхема на данните от таблица `spec_gr`
--

INSERT INTO `spec_gr` (`id_`, `id_gr`, `id_specialist`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 3),
(7, 2, 4),
(8, 2, 6),
(9, 2, 7),
(10, 3, 5),
(11, 3, 3),
(12, 3, 4),
(13, 3, 8),
(14, 4, 5),
(15, 4, 3),
(16, 4, 4),
(17, 4, 1),
(18, 4, 9),
(19, 5, 5),
(20, 5, 3),
(21, 5, 4),
(22, 6, 10),
(23, 6, 3),
(24, 6, 4),
(25, 7, 2),
(26, 7, 4),
(27, 7, 11),
(28, 7, 8),
(29, 8, 2),
(30, 8, 4),
(31, 8, 11),
(32, 8, 8),
(33, 9, 5),
(34, 10, 7),
(35, 10, 5),
(36, 10, 12),
(37, 10, 13),
(38, 10, 4),
(39, 11, 7),
(40, 11, 5),
(41, 11, 12),
(42, 11, 13),
(43, 11, 4),
(44, 12, 7),
(45, 12, 5),
(46, 12, 12),
(47, 12, 13),
(48, 12, 4),
(49, 13, 7),
(50, 13, 5),
(51, 13, 13),
(52, 13, 12),
(53, 13, 4),
(54, 14, 5),
(55, 14, 3),
(56, 14, 4),
(57, 14, 14),
(58, 14, 15),
(59, 15, 1),
(60, 15, 16),
(61, 15, 3),
(62, 15, 4),
(63, 16, 5),
(64, 16, 17),
(65, 16, 3),
(66, 16, 4),
(67, 16, 18),
(68, 16, 19);

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(2) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `user_password` varchar(10) NOT NULL,
  `user_lastname` varchar(50) NOT NULL,
  `user_fullname` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Ссхема на данните от таблица `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_lastname`, `user_fullname`) VALUES
(0, '', '', '', '');

-- --------------------------------------------------------

--
-- Структура на таблица `user_izsl`
--

CREATE TABLE IF NOT EXISTS `user_izsl` (
  `id_user_mkb` int(2) NOT NULL,
  `id_period` int(2) NOT NULL,
  `id_izsl` int(2) NOT NULL,
  `izlv_dada` date NOT NULL,
  PRIMARY KEY (`id_user_mkb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `user_mkb`
--

CREATE TABLE IF NOT EXISTS `user_mkb` (
  `id_user_mkb` int(2) NOT NULL,
  `usrer_id` int(2) NOT NULL,
  `id_mkb` int(2) NOT NULL,
  PRIMARY KEY (`id_user_mkb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
