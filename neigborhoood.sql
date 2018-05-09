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
-- БД: `neigborhoood`
--

-- --------------------------------------------------------

--
-- Структура на таблица `adress`
--

CREATE TABLE IF NOT EXISTS `adress` (
  `id_adress` int(11) NOT NULL AUTO_INCREMENT,
  `adress` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_adress`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Ссхема на данните от таблица `adress`
--

INSERT INTO `adress` (`id_adress`, `adress`) VALUES
(1, 'Lulin 2'),
(2, 'Mladost 1'),
(3, 'Obelya 2'),
(4, 'Nadejda 1');

-- --------------------------------------------------------

--
-- Структура на таблица `agency`
--

CREATE TABLE IF NOT EXISTS `agency` (
  `id_agency` int(11) NOT NULL,
  `name_agency` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `adress` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_agency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Ссхема на данните от таблица `agency`
--

INSERT INTO `agency` (`id_agency`, `name_agency`, `adress`) VALUES
(1, 'Adress', 'bulevard Maria Luiza 9'),
(2, 'Gradev', 'bulevard Slivnica 45'),
(3, 'Yavlena', 'ulica General Gurko 76A'),
(4, 'Valer', 'bulevard Vasil Levski 39');

-- --------------------------------------------------------

--
-- Структура на таблица `agency_property`
--

CREATE TABLE IF NOT EXISTS `agency_property` (
  `agency_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  KEY `agency_id` (`agency_id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Ссхема на данните от таблица `agency_property`
--

INSERT INTO `agency_property` (`agency_id`, `property_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 2),
(3, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Структура на таблица `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id_docoment` int(11) NOT NULL AUTO_INCREMENT,
  `document_number` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_docoment`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Ссхема на данните от таблица `documents`
--

INSERT INTO `documents` (`id_docoment`, `document_number`) VALUES
(1, '12356741'),
(2, '85304758'),
(3, '5963478520'),
(4, '28734964');

-- --------------------------------------------------------

--
-- Структура на таблица `landlords`
--

CREATE TABLE IF NOT EXISTS `landlords` (
  `id_lanlord` int(11) NOT NULL AUTO_INCREMENT,
  `name_lanlord` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_lanlord`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Ссхема на данните от таблица `landlords`
--

INSERT INTO `landlords` (`id_lanlord`, `name_lanlord`, `first_name`, `last_name`) VALUES
(1, 'yanchev', 'Yasen', 'Yanchev'),
(2, 'angelov', 'Ivan', 'Angelov'),
(4, 'petrov', 'Petar', 'Petrov'),
(5, 'ivanov', 'Stoyan', 'Ivanov');

-- --------------------------------------------------------

--
-- Структура на таблица `neigborhood`
--

CREATE TABLE IF NOT EXISTS `neigborhood` (
  `id_neghborhood` int(11) NOT NULL AUTO_INCREMENT,
  `name_neghborhood` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_neghborhood`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Ссхема на данните от таблица `neigborhood`
--

INSERT INTO `neigborhood` (`id_neghborhood`, `name_neghborhood`) VALUES
(1, 'Mladost'),
(2, 'Vinica'),
(3, 'Lulin'),
(4, 'Asparuhovo');

-- --------------------------------------------------------

--
-- Структура на таблица `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `id_property` int(11) NOT NULL AUTO_INCREMENT,
  `property` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ladlord_id` int(11) NOT NULL,
  `adress_id` int(11) NOT NULL,
  `neighborhood_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  PRIMARY KEY (`id_property`),
  KEY `neighborhood_id` (`neighborhood_id`),
  KEY `document_id` (`document_id`),
  KEY `adress_id` (`adress_id`),
  KEY `ladlord_id` (`ladlord_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Ссхема на данните от таблица `property`
--

INSERT INTO `property` (`id_property`, `property`, `ladlord_id`, `adress_id`, `neighborhood_id`, `document_id`) VALUES
(1, 'two room apartment', 1, 1, 1, 1),
(2, 'three room apartment', 2, 3, 1, 2);

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `agency_property`
--
ALTER TABLE `agency_property`
  ADD CONSTRAINT `agency_property_ibfk_1` FOREIGN KEY (`agency_id`) REFERENCES `agency` (`id_agency`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `agency_property_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`id_property`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения за таблица `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`neighborhood_id`) REFERENCES `neigborhood` (`id_neghborhood`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `property_ibfk_2` FOREIGN KEY (`adress_id`) REFERENCES `adress` (`id_adress`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `property_ibfk_3` FOREIGN KEY (`ladlord_id`) REFERENCES `landlords` (`id_lanlord`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `property_ibfk_4` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id_docoment`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
