-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2023 a las 09:42:57
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `votacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

CREATE TABLE `candidato` (
  `id_candidato` int(3) NOT NULL,
  `nombre_candidato` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`id_candidato`, `nombre_candidato`) VALUES
(1, 'Efrain Cromilakis'),
(2, 'Alejandro Espinoza'),
(3, 'Dominique Rojas'),
(4, 'Alonzo Rojas'),
(5, 'Isidora Quiroga'),
(6, 'Fernando Hidalgo'),
(7, 'Aristidez Concha');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

CREATE TABLE `comuna` (
  `idcomuna` int(11) NOT NULL,
  `name_comuna` varchar(100) NOT NULL,
  `id_region` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`idcomuna`, `name_comuna`, `id_region`, `status`) VALUES
(1, 'Alhue', 1, 0),
(2, 'Batuco', 1, 0),
(3, 'Buin', 1, 0),
(4, 'Cajon del maipo', 1, 0),
(5, 'Calera de tango', 1, 0),
(6, 'Cerrillos', 1, 0),
(7, 'Cerro navia', 1, 0),
(8, 'Champa', 1, 0),
(9, 'Chicureo', 1, 0),
(10, 'Colina', 1, 0),
(11, 'Conchali', 1, 0),
(12, 'Curacavi', 1, 0),
(13, 'El bosque', 1, 0),
(14, 'El monte', 1, 0),
(15, 'Estacion central', 1, 0),
(16, 'Hospital', 1, 0),
(17, 'Huechuraba', 1, 0),
(18, 'Independencia', 1, 0),
(19, 'Isla de maipo', 1, 0),
(20, 'La cisterna', 1, 0),
(21, 'La florida', 1, 0),
(22, 'La granja', 1, 0),
(23, 'La pintana', 1, 0),
(24, 'La reina', 1, 0),
(25, 'Lampa', 1, 0),
(26, 'Las condes', 1, 0),
(27, 'Linderos', 1, 0),
(28, 'Lo barnechea', 1, 0),
(29, 'Lo barnechea (el colorado)', 1, 0),
(30, 'Lo barnechea (farellones)', 1, 0),
(31, 'Lo barnechea (la dehesa)', 1, 0),
(32, 'Lo barnechea (la parva)', 1, 0),
(33, 'Lo barnechea (valle nevado)', 1, 0),
(34, 'Lo espejo', 1, 0),
(35, 'Lo prado', 1, 0),
(36, 'Lonquen', 1, 0),
(37, 'Macul', 1, 0),
(38, 'Maipo', 1, 0),
(39, 'Malloco', 1, 0),
(40, 'Maria pinto', 1, 0),
(41, 'Melipilla', 1, 0),
(42, 'Nos', 1, 0),
(43, 'Nuñoa', 1, 0),
(44, 'Padre hurtado', 1, 0),
(45, 'Paine', 1, 0),
(46, 'Pedro aguirre cerda', 1, 0),
(47, 'Peñaflor', 1, 0),
(48, 'Peñalolen', 1, 0),
(49, 'Pirque', 1, 0),
(50, 'Portezuelo', 1, 0),
(51, 'Providencia', 1, 0),
(52, 'Pudahuel', 1, 0),
(53, 'Puente alto', 1, 0),
(54, 'Quilicura', 1, 0),
(55, 'Quillon', 1, 0),
(56, 'Quinta normal', 1, 0),
(57, 'Recoleta', 1, 0),
(58, 'Renca', 1, 0),
(59, 'San bernardo', 1, 0),
(60, 'San joaquin', 1, 0),
(61, 'San jose de maipo', 1, 0),
(62, 'San miguel', 1, 0),
(63, 'San pedro', 1, 0),
(64, 'San ramon', 1, 0),
(65, 'Santa rosa de chena', 1, 0),
(66, 'Santiago centro', 1, 0),
(67, 'Talagante', 1, 0),
(68, 'Til-til', 1, 0),
(69, 'Valdivia de paine', 1, 0),
(70, 'Vitacura', 1, 0),
(71, 'Alto hospicio', 3, 0),
(72, 'Iquique', 3, 0),
(73, 'Pozo almonte', 3, 0),
(74, 'Antofagasta', 4, 0),
(75, 'Calama', 4, 0),
(76, 'Cerro moreno', 4, 0),
(77, 'Maria elena', 4, 0),
(78, 'Mejillones', 4, 0),
(79, 'Puerto coloso', 4, 0),
(80, 'San pedro de atacama', 4, 0),
(81, 'Tocopilla', 4, 0),
(82, 'Bahia inglesa', 5, 0),
(83, 'Caldera', 5, 0),
(84, 'Chañaral', 5, 0),
(85, 'Copiapo', 5, 0),
(86, 'Diego de almagro', 5, 0),
(87, 'El salvador', 5, 0),
(88, 'Freirina', 5, 0),
(89, 'Huasco', 5, 0),
(90, 'Inca del oro', 5, 0),
(91, 'Paipote', 5, 0),
(92, 'Tierra amarilla', 5, 0),
(93, 'Vallenar', 5, 0),
(94, 'Andacollo', 6, 0),
(95, 'Combarbala', 6, 0),
(96, 'Coquimbo', 6, 0),
(97, 'Guanaqueros', 6, 0),
(98, 'Illapel', 6, 0),
(99, 'La chimba', 6, 0),
(100, 'La serena', 6, 0),
(101, 'Las tacas', 6, 0),
(102, 'Los vilos', 6, 0),
(103, 'Monte patria', 6, 0),
(104, 'Ovalle', 6, 0),
(105, 'Paihuano', 6, 0),
(106, 'Puerto velero', 6, 0),
(107, 'Punitaqui', 6, 0),
(108, 'Salamanca', 6, 0),
(109, 'Sotaqui', 6, 0),
(110, 'Tongoy', 6, 0),
(111, 'Vicuña', 6, 0),
(112, 'Algarrobo', 7, 0),
(113, 'Artificio', 7, 0),
(114, 'Barrancas', 7, 0),
(115, 'Belloto', 7, 0),
(116, 'Cabildo', 7, 0),
(117, 'Cachagua', 7, 0),
(118, 'Calle larga', 7, 0),
(119, 'Cartagena', 7, 0),
(120, 'Casablanca', 7, 0),
(121, 'Catapilco', 7, 0),
(122, 'Catemu', 7, 0),
(123, 'Con-con', 7, 0),
(124, 'Curauma', 7, 0),
(125, 'El melon', 7, 0),
(126, 'El quisco', 7, 0),
(127, 'El tabo', 7, 0),
(128, 'Hijuelas', 7, 0),
(129, 'La calera', 7, 0),
(130, 'La cruz', 7, 0),
(131, 'La herradura', 7, 0),
(132, 'La herradura', 7, 0),
(133, 'La ligua', 7, 0),
(134, 'Las cruces', 7, 0),
(135, 'Limache', 7, 0),
(136, 'Llay-llay', 7, 0),
(137, 'Llo-lleo', 7, 0),
(138, 'Los andes', 7, 0),
(139, 'Maitencillo', 7, 0),
(140, 'Nogales', 7, 0),
(141, 'Olmue', 7, 0),
(142, 'Pan de azucar', 7, 0),
(143, 'Panquehue', 7, 0),
(144, 'Papudo', 7, 0),
(145, 'Pedegua', 7, 0),
(146, 'Petorca', 7, 0),
(147, 'Peñablanca', 7, 0),
(148, 'Puchuncavi', 7, 0),
(149, 'Putaendo', 7, 0),
(150, 'Quillota', 7, 0),
(151, 'Quilpue', 7, 0),
(152, 'Quinquimo', 7, 0),
(153, 'Quintay', 7, 0),
(154, 'Quintero', 7, 0),
(155, 'Reñaca', 7, 0),
(156, 'Rinconada', 7, 0),
(157, 'Rodelillo', 7, 0),
(158, 'San antonio', 7, 0),
(159, 'San esteban', 7, 0),
(160, 'San felipe', 7, 0),
(161, 'San pedro de limache', 7, 0),
(162, 'Santa maria', 7, 0),
(163, 'Santo domingo', 7, 0),
(164, 'Valparaiso', 7, 0),
(165, 'Ventanas', 7, 0),
(166, 'Villa alemana', 7, 0),
(167, 'Viña del mar', 7, 0),
(168, 'Zapallar', 7, 0),
(169, 'Chepica', 8, 0),
(170, 'Chimbarongo', 8, 0),
(171, 'Codegua', 8, 0),
(172, 'Coinco', 8, 0),
(173, 'Coltauco', 8, 0),
(174, 'Coya', 8, 0),
(175, 'Cunaco', 8, 0),
(176, 'Doñihue', 8, 0),
(177, 'Graneros', 8, 0),
(178, 'La estrella', 8, 0),
(179, 'Las cabras', 8, 0),
(180, 'Litueche', 8, 0),
(181, 'Lo miranda', 8, 0),
(182, 'Lolol', 8, 0),
(183, 'Machali', 8, 0),
(184, 'Malloa', 8, 0),
(185, 'Marchigue', 8, 0),
(186, 'Nancagua', 8, 0),
(187, 'Navidad', 8, 0),
(188, 'Olivar', 8, 0),
(189, 'Palmilla', 8, 0),
(190, 'Paredones', 8, 0),
(191, 'Pelequen', 8, 0),
(192, 'Peralillo', 8, 0),
(193, 'Peumo', 8, 0),
(194, 'Pichidegua', 8, 0),
(195, 'Pichilemu', 8, 0),
(196, 'Placilla', 8, 0),
(197, 'Pumanque', 8, 0),
(198, 'Quinta tilcoco', 8, 0),
(199, 'Rancagua', 8, 0),
(200, 'Rengo', 8, 0),
(201, 'Requegua', 8, 0),
(202, 'Requinoa', 8, 0),
(203, 'Rosario', 8, 0),
(204, 'San fernando', 8, 0),
(205, 'San francisco de  mostazal', 8, 0),
(206, 'San vicente de tagua tagua', 8, 0),
(207, 'Santa cruz', 8, 0),
(208, 'Tinguiririca', 8, 0),
(209, 'Cauquenes', 9, 0),
(210, 'Chanco', 9, 0),
(211, 'Colbun', 9, 0),
(212, 'Constitucion', 9, 0),
(213, 'Cumpeo', 9, 0),
(214, 'Curanipe', 9, 0),
(215, 'Curepto', 9, 0),
(216, 'Curico', 9, 0),
(217, 'Empedrado', 9, 0),
(218, 'Hualañe', 9, 0),
(219, 'Licanten', 9, 0),
(220, 'Linares', 9, 0),
(221, 'Longavi', 9, 0),
(222, 'Lontue', 9, 0),
(223, 'Los molinos', 9, 0),
(224, 'Los niches', 9, 0),
(225, 'Maule', 9, 0),
(226, 'Molina', 9, 0),
(227, 'Panimavida', 9, 0),
(228, 'Parral', 9, 0),
(229, 'Pelarco', 9, 0),
(230, 'Pelluhue', 9, 0),
(231, 'Pencahue', 9, 0),
(232, 'Rauco', 9, 0),
(233, 'Retiro', 9, 0),
(234, 'Rio claro(7reg)', 9, 0),
(235, 'Romeral', 9, 0),
(236, 'Sagrada familia', 9, 0),
(237, 'San clemente', 9, 0),
(238, 'San ignacio', 9, 0),
(239, 'San javier', 9, 0),
(240, 'San rafael', 9, 0),
(241, 'Talca', 9, 0),
(242, 'Teno', 9, 0),
(243, 'Vichuquen', 9, 0),
(244, 'Villa alegre', 9, 0),
(245, 'Villa prat', 9, 0),
(246, 'Yerbas buenas', 9, 0),
(247, 'Antuco', 10, 0),
(248, 'Arauco', 10, 0),
(249, 'Bulnes', 10, 0),
(250, 'Cabrero', 10, 0),
(251, 'Campanario', 10, 0),
(252, 'Carampangue', 10, 0),
(253, 'Cañete', 10, 0),
(254, 'Chiguayante', 10, 0),
(255, 'Chillan', 10, 0),
(256, 'Cholguan', 10, 0),
(257, 'Cobquecura', 10, 0),
(258, 'Coelemu', 10, 0),
(259, 'Coihueco', 10, 0),
(260, 'Concepcion', 10, 0),
(261, 'Contulmo', 10, 0),
(262, 'Coronel', 10, 0),
(263, 'Curanilahue', 10, 0),
(264, 'Dichato', 10, 0),
(265, 'El carmen', 10, 0),
(266, 'Florida', 10, 0),
(267, 'Hualpen', 10, 0),
(268, 'Hualpencillo', 10, 0),
(269, 'Hualqui', 10, 0),
(270, 'Huepil', 10, 0),
(271, 'Laja', 10, 0),
(272, 'Laraquete', 10, 0),
(273, 'Lebu', 10, 0),
(274, 'Lirquen', 10, 0),
(275, 'Los alamos', 10, 0),
(276, 'Los angeles', 10, 0),
(307, 'Ñipas', 10, 0),
(308, 'Lota', 10, 0),
(309, 'Lota alto', 10, 0),
(310, 'Lota bajo', 10, 0),
(311, 'Monte aguila', 10, 0),
(312, 'Mulchen', 10, 0),
(313, 'Nacimiento', 10, 0),
(314, 'Negrete', 10, 0),
(315, 'Ninhue', 10, 0),
(316, 'Pemuco', 10, 0),
(317, 'Penco', 10, 0),
(318, 'Pinto', 10, 0),
(319, 'Quilaco', 10, 0),
(320, 'Quilleco', 10, 0),
(321, 'Quirihue', 10, 0),
(322, 'San carlos', 10, 0),
(323, 'San fabian', 10, 0),
(324, 'San gregorio de ñiquen', 10, 0),
(325, 'San nicolas', 10, 0),
(326, 'San pedro de la paz', 10, 0),
(327, 'San rosendo', 10, 0),
(328, 'Santa barbara', 10, 0),
(329, 'Santa clara', 10, 0),
(330, 'Santa fe', 10, 0),
(331, 'Santa juana', 10, 0),
(332, 'Talcahuano', 10, 0),
(333, 'Tirua', 10, 0),
(334, 'Tome', 10, 0),
(335, 'Tucapel', 10, 0),
(336, 'Yumbel', 10, 0),
(337, 'Yungay', 10, 0),
(338, 'Achao', 13, 0),
(339, 'Alerce', 13, 0),
(340, 'Ancud', 13, 0),
(341, 'Calbuco', 13, 0),
(342, 'Castro', 13, 0),
(343, 'Chacao', 13, 0),
(344, 'Chamiza', 13, 0),
(345, 'Chonchi', 13, 0),
(346, 'Cochamo', 13, 0),
(347, 'Cucao', 13, 0),
(348, 'Curaco velez', 13, 0),
(349, 'Dalcahue', 13, 0),
(350, 'Ensenada', 13, 0),
(351, 'Entrelagos', 13, 0),
(352, 'Fresia', 13, 0),
(353, 'Frutillar', 13, 0),
(354, 'Huellelhue', 13, 0),
(355, 'Llanquihue', 13, 0),
(356, 'Llifen', 13, 0),
(357, 'Los muermos', 13, 0),
(358, 'Maullin', 13, 0),
(359, 'Nueva braunau', 13, 0),
(360, 'Osorno', 13, 0),
(361, 'Pargua', 13, 0),
(362, 'Pichirropulli', 13, 0),
(363, 'Pichoy', 13, 0),
(364, 'Puerto montt', 13, 0),
(365, 'Puerto octay', 13, 0),
(366, 'Puerto varas', 13, 0),
(367, 'Puqueldon', 13, 0),
(368, 'Purranque', 13, 0),
(369, 'Puyehue', 13, 0),
(370, 'Queilen', 13, 0),
(371, 'Quellon', 13, 0),
(372, 'Quemchi', 13, 0),
(373, 'Quinchao', 13, 0),
(374, 'Rio negro', 13, 0),
(375, 'San jose de la mariquina', 13, 0),
(376, 'San juan de la costa', 13, 0),
(377, 'San pablo', 13, 0),
(378, 'Coyhaique', 14, 0),
(379, 'Punta arenas', 15, 0),
(380, 'Antilhue', 12, 0),
(381, 'Cayumapu', 12, 0),
(382, 'Choshuenco', 12, 0),
(383, 'Ciruelos', 12, 0),
(384, 'Curiñanco', 12, 0),
(385, 'Futrono', 12, 0),
(386, 'La union', 12, 0),
(387, 'Lago ranco', 12, 0),
(388, 'Lanco', 12, 0),
(389, 'Los lagos', 12, 0),
(390, 'Mafil', 12, 0),
(391, 'Mariquina', 12, 0),
(392, 'Melefquen', 12, 0),
(393, 'Neltume', 12, 0),
(394, 'Niebla', 12, 0),
(395, 'Paillaco', 12, 0),
(396, 'Panguipulli', 12, 0),
(397, 'Pishuinco', 12, 0),
(398, 'Playa rosada', 12, 0),
(399, 'Rio bueno', 12, 0),
(400, 'Riñihue', 12, 0),
(401, 'Valdivia', 12, 0),
(402, 'Arica', 2, 0),
(403, 'Angol', 11, 0),
(404, 'Caburga', 11, 0),
(405, 'Cajon', 11, 0),
(406, 'Capitan pastene', 11, 0),
(407, 'Carahue', 11, 0),
(408, 'Cherquenco', 11, 0),
(409, 'Cholchol', 11, 0),
(410, 'Collipulli', 11, 0),
(411, 'Cunco', 11, 0),
(412, 'Curacautin', 11, 0),
(413, 'Curarrehue', 11, 0),
(414, 'Ercilla', 11, 0),
(415, 'Freire', 11, 0),
(416, 'Galvarino', 11, 0),
(417, 'Gorbea', 11, 0),
(418, 'Hualpin', 11, 0),
(419, 'Imperial', 11, 0),
(420, 'Labranza', 11, 0),
(421, 'Lastarria', 11, 0),
(422, 'Lautaro', 11, 0),
(423, 'Lican ray', 11, 0),
(424, 'Loncoche', 11, 0),
(425, 'Lonquimay', 11, 0),
(426, 'Los laureles', 11, 0),
(427, 'Los sauces', 11, 0),
(428, 'Lumaco', 11, 0),
(429, 'Malalhue', 11, 0),
(430, 'Melipeuco', 11, 0),
(431, 'Mininco', 11, 0),
(432, 'Padre las casas', 11, 0),
(433, 'Perquenco', 11, 0),
(434, 'Pillalelbun', 11, 0),
(435, 'Pitrufquen', 11, 0),
(436, 'Pucon', 11, 0),
(437, 'Puerto saavedra', 11, 0),
(438, 'Pullinque', 11, 0),
(439, 'Puren', 11, 0),
(440, 'Quepe', 11, 0),
(441, 'Renaico', 11, 0),
(442, 'Temuco', 11, 0),
(443, 'Teodoroschmidt', 11, 0),
(444, 'Tolten', 11, 0),
(445, 'Traiguen', 11, 0),
(446, 'Trovolhue', 11, 0),
(447, 'Victoria', 11, 0),
(448, 'Vilcun', 11, 0),
(449, 'Villarrica', 11, 0),
(450, 'Todas', 0, 0),
(451, 'Quirihue', 16, 0),
(452, 'Cobquecura', 16, 0),
(453, 'Coelemu', 16, 0),
(454, 'Ninhue', 16, 0),
(455, 'Portezuelo', 16, 0),
(456, 'Ránquil', 16, 0),
(457, 'Treguaco', 16, 0),
(458, 'San carlos', 16, 0),
(459, 'Coihueco', 16, 0),
(460, 'Ñiquén', 16, 0),
(461, 'San fabián', 16, 0),
(462, 'San nicolás', 16, 0),
(463, 'Chillán', 16, 0),
(464, 'Bulnes', 16, 0),
(465, 'Chillán viejo', 16, 0),
(466, 'El carmen', 16, 0),
(467, 'Pemuco', 16, 0),
(468, 'Pinto', 16, 0),
(469, 'Quillón', 16, 0),
(470, 'San ignacio', 16, 0),
(471, 'Yungay', 16, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios`
--

CREATE TABLE `medios` (
  `id_medios` int(3) NOT NULL,
  `id_registros` int(3) NOT NULL,
  `nombre_medios` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `idregion` int(11) NOT NULL,
  `name_region` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `orden` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`idregion`, `name_region`, `status`, `orden`) VALUES
(1, 'Región Metropolitana', 0, 7),
(2, 'Arica y Parinacota', 0, 1),
(3, 'Tarapacá', 0, 2),
(4, 'Antofagasta', 0, 3),
(5, 'Atacama', 0, 4),
(6, 'Coquimbo', 0, 5),
(7, 'Valparaí­so', 0, 6),
(8, 'O\'Higgins', 0, 8),
(9, 'Maule', 0, 9),
(10, 'Biobío', 0, 11),
(11, 'Araucanía', 0, 12),
(12, 'Los Ríos', 0, 13),
(13, 'Los Lagos', 0, 14),
(14, 'Aysén', 0, 15),
(15, 'Magallanes y Antártica', 0, 16),
(16, 'Ñuble', 0, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id_registro` int(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `region` int(3) NOT NULL,
  `comuna` int(3) NOT NULL,
  `candidato` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`id_candidato`);

--
-- Indices de la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD PRIMARY KEY (`idcomuna`);

--
-- Indices de la tabla `medios`
--
ALTER TABLE `medios`
  ADD PRIMARY KEY (`id_medios`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`idregion`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id_registro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidato`
--
ALTER TABLE `candidato`
  MODIFY `id_candidato` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `comuna`
--
ALTER TABLE `comuna`
  MODIFY `idcomuna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT de la tabla `medios`
--
ALTER TABLE `medios`
  MODIFY `id_medios` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `idregion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id_registro` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
