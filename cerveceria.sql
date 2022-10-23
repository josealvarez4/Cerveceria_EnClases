-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-10-2022 a las 04:51:47
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cerveceria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `subtitulo` text COLLATE utf8_unicode_ci NOT NULL,
  `cuerpo` text COLLATE utf8_unicode_ci NOT NULL,
  `img_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, 'La tensión política en el Frente de Todos complica los cambios que quiere hacer Alberto Fernández en el Gabinete', 'El Presidente terminará de definir y anunciará este lunes los reemplazos en los ministerios de Mujeres, Diversidad y Género, Desarrollo Social y Trabajo. La coalición oficialista empieza a padecer una nueva crisis interna', 'Este lunes Alberto Fernández terminará de definir tres modificaciones en el Gabinete y anunciará los reemplazos en los ministerios de Mujeres, Diversidad y Género; Desarrollo Social y Trabajo. Ya dejaron sus lugares Elizabeth Gómez Alcorta, Juan Zabaleta y Claudio Moroni, respectivamente.\r\n\r\nEn contacto con su círculo chico de confianza, el Presidente estuvo durante todo el domingo analizando los cambios y el perfil político que le dará al Gabinete en el último trimestre del año, para intentar refrescar la estructura un gobierno nacional golpeado después de tantas crisis internas que derivaron en salidas de ministros.', NULL),
(2, 'Dos empresas que importaban neumáticos con apoyo judicial desistieron de esa vía tras el salvaje conflicto gremial', 'La Aduana logró que Guerrini Neumáticos y Larocca Neumáticos dejaran de lado sus medidas cautelares por una suma millonaria luego de que comenzara a normalizarse la producción local', 'Las empresas Guerrini Neumáticos S.A y La Rocca Neumaticos S.A., que habían obtenido diversas medidas cautelares para importar neumáticos, desistieron de este beneficio judicial tras la finalización del fuerte conflicto gremial que paralizó al sector durante casi cinco meses.\r\n\r\nAsí lo indicaron a Infobae fuentes siguen de cerca el expediente. Cabe recordar que ambas firmas habían iniciado ante el fuero en lo Contencioso Administrativo Federal de la Nación diversas causas con el fin de obtener medidas cautelares que les permitieran girar divisas para importar mercaderías, en el marco del Sistema de Monitoreo de Importaciones (SIMI).\r\n\r\nEn este contexto, la Dirección General de Aduanas (DGA) “logró el desistimiento de la acción y del derecho en 13 causas de la empresa Guerrini S.A. por un total de U$S 39.271.951,28 y respecto de La Rocca Neumáticos S.A., desistió en 7 causas por un total US$ 24.906.784,58, siendo un total aproximado de 65 millones de dólares”.', NULL),
(12, 'qwe', 'asd', 'zxc', 'psjqzzincybdwpayt8fd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'flavia', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'jose', 'd93591bdf7860e1e4ee2fca799911215');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
