-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-03-2024 a las 22:43:42
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `street` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intNum` int(11) NOT NULL,
  `extNum` int(11) NOT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipCode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `address`
--

INSERT INTO `address` (`id`, `street`, `intNum`, `extNum`, `city`, `region`, `zipCode`) VALUES
(1, '960-4794 Accumsan Rd.', 2300, 8204, 'Fayetteville', 'Arkansas', 72346),
(2, 'P.O. Box 286, 8952 Lorem Av.', 7030, 4370, 'West Jordan', 'Utah', 74129),
(3, '516-8480 Fames Ave', 607, 6897, 'Lincoln', 'NE', 60941),
(4, 'Ap #334-7925 Gravida. Street', 9193, 7689, 'Austin', 'Texas', 54933),
(5, '919-966 Iaculis St.', 5145, 7248, 'South Bend', 'IN', 93653),
(6, 'Ap #832-6920 Massa Avenue', 245, 9748, 'San Francisco', 'CA', 95717),
(7, '6857 Aliquam Road', 2083, 6022, 'Lowell', 'Massachusetts', 28959),
(8, 'P.O. Box 531, 4568 Consequat Rd.', 4850, 5010, 'Detroit', 'MI', 62421),
(9, '632-2428 Lectus Avenue', 4277, 9173, 'Cincinnati', 'Ohio', 85975),
(10, 'Ap #644-4284 Vitae, St.', 1198, 2665, 'Bangor', 'Maine', 66971),
(11, 'P.O. Box 790, 6255 Diam. Street', 7215, 3649, 'Naperville', 'IL', 55202),
(12, '121-8249 Ligula. Street', 6427, 4736, 'Fairbanks', 'Alaska', 99875),
(13, 'P.O. Box 604, 5210 Ultricies Road', 5559, 5598, 'Ketchikan', 'Alaska', 99971),
(14, 'P.O. Box 181, 172 In, Rd.', 2501, 3876, 'Ketchikan', 'Alaska', 99994),
(15, 'P.O. Box 628, 9187 Odio St.', 7804, 8406, 'Broken Arrow', 'Oklahoma', 37205),
(16, 'P.O. Box 418, 9837 Eleifend, Rd.', 3148, 470, 'Provo', 'UT', 43834),
(17, '9752 Donec Street', 9479, 2946, 'Augusta', 'Maine', 97736),
(18, 'Ap #428-7680 Sit Rd.', 8106, 9477, 'San Jose', 'CA', 95407),
(19, 'P.O. Box 681, 9948 Est St.', 2744, 8471, 'Casper', 'WY', 80271),
(20, 'P.O. Box 543, 217 Scelerisque St.', 2775, 8576, 'San Antonio', 'TX', 22276);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id`, `title`, `idUser`) VALUES
(1, 'holamundo', 1),
(2, 'perros', 3),
(7, 'Un dia hermoso', 3),
(8, 'Videojuegos', 1),
(9, 'Helados', 3),
(10, 'Futbol', 3),
(11, 'Mario', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `contentIndex` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `relative` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `content`
--

INSERT INTO `content` (`id`, `contentIndex`, `type`, `data`, `relative`) VALUES
(1, 1, 'video', 'z7xMIRzIDpU', 1),
(2, 2, 'img', 'img/back_image.jpg', 0),
(3, 1, 'video', 'uEKbrg6qUFw', 1),
(21, 1, 'img', 'img/park.jpg', 0),
(10, 1, 'video', 'cvcAjgMUPUA', 1),
(8, 1, 'txt', 'Iba caminando por la calle cuando me encontre a un viejo hombre que estaba sentado en una banca del parque...', 0),
(11, 1, 'img', 'img/museum.jpg', 0),
(12, 1, 'img', 'img/helados2.jpg', 0),
(20, 1, 'txt', 'Siempre me han gustado los helados, es una de mis comidas favoritas, y me encantan en un dÃ­a soleado', 0),
(17, 1, 'txt', 'cuando juego con mis barbies, me gusta bailar y cantar', 0),
(22, 1, 'video', 'XYPxnDrKaIM', 1),
(26, 1, 'txt', 'El mundo de mario, es un mundo imaginario, tu saltas y saltas y evitas que te toquen los enemigos', 0),
(25, 1, 'video', 'ILJmufDh-Mg', 1),
(27, 1, 'txt', 'La pelota ha existido desde tiempos ancestrales.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entry`
--

CREATE TABLE `entry` (
  `id` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateModified` datetime NOT NULL,
  `protected` tinyint(1) DEFAULT NULL,
  `idBlog` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entry`
--

INSERT INTO `entry` (`id`, `title`, `dateModified`, `protected`, `idBlog`) VALUES
(1, 'Colisiones in Games', '2017-02-02 10:57:35', 1, 1),
(2, 'Warren Buffett', '2016-12-04 07:35:35', 1, 1),
(19, 'caminando con mi perro', '2017-02-01 02:16:06', 0, 2),
(3, 'Biografia', '2017-01-02 17:00:00', 0, 1),
(7, 'Lo que me paso hoy', '2017-01-28 06:16:27', 0, 7),
(9, 'Rendering', '2017-01-30 06:29:38', 0, 8),
(10, 'Pacman', '2017-01-30 06:55:55', 0, 8),
(11, 'Hobbie', '2017-01-30 07:56:29', 0, 9),
(18, 'Desde niÃ±a ', '2017-02-01 02:14:55', 1, 2),
(16, 'MuÃ±ecas', '2017-01-30 07:50:00', 0, 9),
(20, 'Mejores Goles', '2017-02-01 02:19:46', 0, 10),
(24, 'El mundo de mario', '2017-02-02 07:51:42', 0, 11),
(23, 'Mini-Games', '2017-02-02 07:49:55', 0, 11),
(25, 'la pelota', '2017-02-02 11:05:45', 0, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entry_content`
--

CREATE TABLE `entry_content` (
  `id` int(11) NOT NULL,
  `idEntry` int(11) NOT NULL,
  `idContent` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entry_content`
--

INSERT INTO `entry_content` (`id`, `idEntry`, `idContent`) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 2, 3),
(19, 19, 21),
(7, 7, 8),
(9, 9, 10),
(10, 10, 11),
(11, 11, 12),
(16, 16, 17),
(18, 18, 20),
(20, 20, 22),
(24, 24, 26),
(23, 23, 25),
(25, 25, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permit`
--

CREATE TABLE `permit` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permit`
--

INSERT INTO `permit` (`id`, `type`) VALUES
(1, 'administrador'),
(2, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `email`, `password`, `telephone`, `logo`) VALUES
(1, 'Alejandro', 'Armenta', 'armenalaray@gmail.com', '1111', '(749) 573-7512', ''),
(2, 'Blogger', '', 'eget.metus.eu@Praesent.ca', '', '(900) 891-6442', 'img/logo_white.png'),
(3, 'Bertha', 'Ayala', 'baagayala@gmail.com', '1', '(311) 290-2781', ''),
(4, 'Indira', 'Oneal', 'indira@gmail.com', '2', '(757) 614-0906', ''),
(5, 'Zoe', 'Stephens', 'in.lobortis.tellus@sitametconsectetuer.org', 'YrX57HqE4XR', '(709) 605-5382', ''),
(6, 'Risa', 'Mccarthy', 'auctor.velit.eget@vitaeposuereat.net', 'HmN57WhH1RE', '(838) 760-5663', ''),
(7, 'Aaron', 'Lott', 'mus.Donec.dignissim@Inat.com', 'LjH55TmT7EO', '(268) 528-1615', ''),
(8, 'Natalie', 'Wall', 'ornare.In.faucibus@porttitorinterdumSed.net', 'SvR18JqV6YM', '(951) 247-7822', ''),
(9, 'Shad', 'Warren', 'felis.adipiscing@sed.org', 'YbR21FxE5HX', '(602) 989-0110', ''),
(10, 'Macy', 'Boone', 'dignissim@rhoncus.net', 'NyD91GzP2XI', '(280) 596-3846', ''),
(11, 'Francesca', 'Brooks', 'nisi@tortordictumeu.org', 'CsT17AvO7TT', '(665) 872-0338', ''),
(12, 'Jarrod', 'Buckley', 'Vivamus@odiosagittis.co.uk', 'FvZ77OhB8FL', '(268) 916-0520', ''),
(13, 'Amela', 'Thompson', 'Sed@euismodacfermentum.ca', 'KvN32AuO0BO', '(819) 931-3960', ''),
(14, 'Lucas', 'Chaney', 'Vestibulum.accumsan.neque@Suspendissesagittis.org', 'HhC48TxD6ZI', '(929) 908-6186', ''),
(15, 'Ria', 'Battle', 'commodo.hendrerit.Donec@vitaesemperegestas.co.uk', 'WoR55DqI2FM', '(895) 417-4053', ''),
(16, 'Lana', 'Bowen', 'sed.leo.Cras@eu.com', 'SsZ49YpD1LU', '(265) 285-8666', ''),
(17, 'Buffy', 'Delaney', 'amet.diam@per.ca', 'EoS07KxA4AC', '(456) 149-0021', ''),
(18, 'Evangeline', 'Zamora', 'habitant.morbi.tristique@liberolacusvarius.ca', 'DzV72IsS9AK', '(912) 950-7772', ''),
(19, 'Kirk', 'Solomon', 'amet@elitNulla.ca', 'GiE57IwX4YF', '(502) 801-0318', ''),
(20, 'Harlan', 'Browning', 'non.dui.nec@malesuada.net', 'ZlZ11HuS3JG', '(481) 485-8918', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idAddress` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_address`
--

INSERT INTO `user_address` (`id`, `idUser`, `idAddress`) VALUES
(1, 8, 3),
(2, 10, 11),
(3, 19, 16),
(4, 2, 18),
(5, 12, 7),
(6, 8, 13),
(7, 16, 2),
(8, 9, 4),
(9, 20, 9),
(10, 5, 2),
(11, 3, 6),
(12, 7, 12),
(13, 13, 10),
(14, 1, 14),
(15, 19, 16),
(16, 14, 6),
(17, 4, 15),
(18, 11, 5),
(19, 18, 8),
(20, 6, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_permit`
--

CREATE TABLE `user_permit` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idPermit` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_permit`
--

INSERT INTO `user_permit` (`id`, `idUser`, `idPermit`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entry`
--
ALTER TABLE `entry`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entry_content`
--
ALTER TABLE `entry_content`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permit`
--
ALTER TABLE `permit`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_permit`
--
ALTER TABLE `user_permit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `entry`
--
ALTER TABLE `entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `entry_content`
--
ALTER TABLE `entry_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `permit`
--
ALTER TABLE `permit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `user_permit`
--
ALTER TABLE `user_permit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
