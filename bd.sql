-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- ����: 127.0.0.1:3306
-- ����� ��������: ��� 05 2015 �., 02:16
-- ������ �������: 5.5.45
-- ������ PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- ���� ������: `bd1`
--

-- --------------------------------------------------------

--
-- ��������� ������� `couriers`
--

CREATE TABLE IF NOT EXISTS `couriers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courier` varchar(32) NOT NULL,
  `busy` int(1) DEFAULT NULL,
  `busytime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- ���� ������ ������� `couriers`
--

INSERT INTO `couriers` (`id`, `courier`, `busy`, `busytime`) VALUES
(1, '������', 1, '2015-10-21'),
(2, '�������', 1, '2015-09-22'),
(3, '�������', 1, '2015-10-01'),
(4, '�����', NULL, '0000-00-00');

-- --------------------------------------------------------

--
-- ��������� ������� `leftlist`
--

CREATE TABLE IF NOT EXISTS `leftlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(32) NOT NULL,
  `courier` varchar(32) NOT NULL,
  `start` varchar(32) NOT NULL,
  `toregion` varchar(32) NOT NULL,
  `back` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- ���� ������ ������� `leftlist`
--

INSERT INTO `leftlist` (`id`, `region`, `courier`, `start`, `toregion`, `back`) VALUES
(1, 'C����-���������', '1', '2015-10-17', '2015-10-19', '20151021'),
(2, '���', '2', '2015-9-29', '2015-10-2', '20151005'),
(3, 'C����-���������', '3', '2015-9-27', '2015-9-29', '20151001'),
(4, '��������', '2', '2015-9-10', '2015-9-12', '20150914'),
(5, '���', '1', '2015-9-4', '2015-9-7', '20150910'),
(6, 'C����-���������', '1', '2015-9-18', '2015-9-20', '20150922'),
(7, 'C����-���������', '2', '2015-9-18', '2015-9-20', '20150922');

-- --------------------------------------------------------

--
-- ��������� ������� `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(32) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- ���� ������ ������� `regions`
--

INSERT INTO `regions` (`id`, `region`, `time`) VALUES
(1, 'C����-���������', 2),
(2, '���', 3),
(3, '������ ��������', 1),
(4, '��������', 1),
(5, '��������', 2),
(6, '������������', 3),
(7, '������', 1),
(8, '�������', 3),
(9, '������', 1),
(10, '���������', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;