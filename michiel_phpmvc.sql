-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 24 aug 2015 om 15:11
-- Serverversie: 5.1.73
-- PHP-versie: 5.4.41

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `michiel_phpmvc`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestellingen`
--

CREATE TABLE IF NOT EXISTS `bestellingen` (
  `Bestelnr` int(11) DEFAULT NULL,
  `Klantnr` int(11) DEFAULT NULL,
  `Besteldatum` datetime DEFAULT NULL,
  `Bestelwijze` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `Betaalwijze` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `Totaal betaald` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `bestellingen`
--

INSERT INTO `bestellingen` (`Bestelnr`, `Klantnr`, `Besteldatum`, `Bestelwijze`, `Betaalwijze`, `Totaal betaald`) VALUES
(370031345, 10056738, '1999-01-07 00:00:00', 'B', 'G', 2555.95),
(370032748, 10073382, '1999-01-13 00:00:00', 'B', 'R', 1196),
(370033390, 10089923, '1999-01-13 00:00:00', 'T', 'A', 100),
(370034728, 10016338, '1999-01-13 00:00:00', 'B', 'G', 546.95),
(370035774, 10028356, '1999-01-13 00:00:00', 'C', 'A', 0),
(370035798, 10043289, '1999-01-13 00:00:00', 'C', 'A', 0),
(370036026, 10098447, '1999-01-13 00:00:00', 'B', 'R', 24.5),
(370036784, 10030016, '1999-01-13 00:00:00', 'B', 'G', 464.9),
(370036845, 10018350, '1999-01-13 00:00:00', 'C', 'G', 0),
(370036846, 10095337, '1999-01-13 00:00:00', 'T', 'G', 150),
(370037003, 10034955, '1999-01-13 00:00:00', 'B', 'A', 189.9),
(370037644, 10089923, '1999-01-13 00:00:00', 'B', 'A', 150),
(370037944, 10010362, '1999-01-13 00:00:00', 'C', 'G', 27.45),
(370038931, 10014231, '1999-01-14 00:00:00', 'C', 'G', 0),
(370039003, 10073382, '1999-01-14 00:00:00', 'B', 'G', 0),
(370039034, 10015622, '1999-01-14 00:00:00', 'T', 'A', 79.9),
(370039047, 10016338, '1999-01-14 00:00:00', 'T', 'A', 750),
(370039053, 10014231, '1999-01-14 00:00:00', 'B', 'A', 75.95),
(370042027, 10020034, '1999-01-15 00:00:00', 'B', 'G', 315),
(370042167, 10056738, '1999-01-15 00:00:00', 'B', 'R', 69.95),
(370042343, 10030047, '1999-01-15 00:00:00', 'C', 'A', 350),
(370043219, 10048388, '1999-01-16 00:00:00', 'B', 'G', 0),
(370044387, 10027738, '1999-01-16 00:00:00', 'C', 'A', 0),
(370044431, 10031831, '1999-01-16 00:00:00', 'B', 'G', 0),
(370044521, 10089923, '1999-01-16 00:00:00', 'T', 'G', 0),
(370048559, 10020034, '1999-01-17 00:00:00', 'T', 'R', 389.95),
(370048560, 10014231, '1999-01-17 00:00:00', 'B', 'A', 100),
(370048575, 10095337, '1999-01-17 00:00:00', 'B', 'G', 29.9),
(370048583, 10015622, '1999-01-17 00:00:00', 'B', 'A', 1000),
(370048592, 10056738, '1999-01-17 00:00:00', 'T', 'R', 0),
(370048603, 10089923, '1999-01-17 00:00:00', 'C', 'G', 269.8),
(370048612, 10016338, '1999-01-17 00:00:00', 'B', 'A', 2000);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestelregels`
--

CREATE TABLE IF NOT EXISTS `bestelregels` (
  `Bestelnr` int(11) DEFAULT NULL,
  `Produktnr` char(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Aantalbesteld` smallint(6) DEFAULT NULL,
  `Aantalgeleverd` smallint(6) DEFAULT NULL,
  `Gerekende prijs` double DEFAULT NULL,
  `Ritnr` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `bestelregels`
--

INSERT INTO `bestelregels` (`Bestelnr`, `Produktnr`, `Aantalbesteld`, `Aantalgeleverd`, `Gerekende prijs`, `Ritnr`) VALUES
(370031345, '128-45-301', 1, 1, 75, 170185),
(370031345, '128-45-302', 1, 1, 82.95, 170185),
(370031345, '632-01-047', 2, 2, 1199, 170185),
(370032748, '363-04-384', 4, 4, 299, 170215),
(370032748, '363-04-385', 2, 0, 299, 0),
(370033390, '714-68-638', 10, 5, 21.95, 170216),
(370034728, '315-21-032', 1, 1, 327, 170215),
(370034728, '329-45-629', 1, 1, 69.95, 170215),
(370034728, '329-45-715', 1, 0, 75, 0),
(370034728, '329-45-716', 2, 2, 75, 170386),
(370035774, '714-68-638', 5, 5, 22.5, 170217),
(370035798, '714-85-429', 2, 2, 39.9, 170218),
(370036026, '714-64-523', 3, 1, 24.5, 170218),
(370036784, '128-45-302', 2, 2, 82.95, 170216),
(370036784, '128-67-298', 1, 1, 299, 170216),
(370036845, '363-04-384', 1, 1, 315, 170216),
(370036846, '714-64-522', 3, 3, 29.95, 170216),
(370036846, '714-68-523', 1, 1, 24.5, 170216),
(370036846, '714-68-638', 3, 3, 22.5, 170216),
(370037003, '128-67-345', 1, 1, 189.9, 170218),
(370037644, '714-83-023', 10, 10, 17.5, 170223),
(370037644, '714-85-429', 3, 3, 39.9, 170223),
(370037944, '714-68-638', 1, 1, 27.45, 170227),
(370038931, '128-80-598', 3, 2, 25, 170227),
(370039003, '329-45-715', 1, 0, 74.9, 0),
(370039003, '714-64-522', 3, 0, 25, 0),
(370039034, '128-45-301', 1, 1, 79.9, 170227),
(370039047, '128-80-598', 2, 2, 29.9, 170227),
(370039047, '315-21-032', 1, 1, 315, 170227),
(370039047, '632-01-043', 1, 1, 795, 170227),
(370039047, '714-68-523', 3, 3, 19.95, 170227),
(370039053, '329-45-716', 1, 1, 75.95, 170227),
(370042027, '128-67-298', 1, 1, 315, 170228),
(370042167, '329-45-629', 1, 1, 69.95, 170289),
(370042343, '363-04-384', 3, 1, 299, 170289),
(370042343, '363-04-385', 1, 0, 315, 170289),
(370042343, '714-68-523', 3, 3, 19.95, 170289),
(370043219, '128-45-302', 1, 1, 82.95, 170290),
(370044387, '128-67-345', 1, 1, 189.9, 170290),
(370044431, '714-64-523', 3, 3, 24.5, 170289),
(370044431, '714-68-523', 6, 6, 19.95, 170289),
(370044521, '128-67-298', 1, 1, 299, 170291),
(370048559, '329-45-716', 1, 1, 74.95, 170387),
(370048559, '363-04-384', 1, 1, 315, 170387),
(370048560, '128-45-302', 2, 2, 82.95, 170450),
(370048575, '128-80-598', 1, 1, 29.9, 170449),
(370048583, '632-01-043', 2, 1, 745, 170449),
(370048583, '632-01-047', 2, 2, 1199, 170449),
(370048583, '714-64-522', 1, 1, 27.5, 170449),
(370048583, '714-68-523', 3, 3, 19.95, 170449),
(370048592, '714-64-522', 6, 0, 25, 0),
(370048603, '128-45-301', 1, 1, 79.9, 170514),
(370048603, '128-67-345', 1, 1, 189.9, 170514),
(370048612, '363-04-384', 12, 12, 275, 170449);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `betalingen`
--

CREATE TABLE IF NOT EXISTS `betalingen` (
  `Bestelnr` int(11) DEFAULT NULL,
  `Betaaldatum` datetime DEFAULT NULL,
  `Bedrag` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `betalingen`
--

INSERT INTO `betalingen` (`Bestelnr`, `Betaaldatum`, `Bedrag`) VALUES
(370031345, '1999-01-28 00:00:00', 2555.95),
(370032748, '1999-01-20 00:00:00', 1196),
(370033390, '1999-02-02 00:00:00', 100),
(370034728, '1999-02-10 00:00:00', 546.95),
(370036026, '1999-01-20 00:00:00', 24.5),
(370036784, '1999-03-27 00:00:00', 464.9),
(370036846, '1999-02-28 00:00:00', 150),
(370037003, '1999-01-22 00:00:00', 100),
(370037003, '1999-02-22 00:00:00', 89.9),
(370037644, '1999-02-03 00:00:00', 150),
(370037944, '1999-01-27 00:00:00', 27.45),
(370039034, '1999-01-21 00:00:00', 50),
(370039034, '1999-02-23 00:00:00', 29.9),
(370039047, '1999-01-27 00:00:00', 250),
(370039047, '1999-02-12 00:00:00', 250),
(370039047, '1999-02-21 00:00:00', 250),
(370039053, '1999-02-05 00:00:00', 75.95),
(370042027, '1999-01-22 00:00:00', 315),
(370042167, '1999-01-22 00:00:00', 69.95),
(370042343, '1999-01-22 00:00:00', 350),
(370048559, '1999-01-24 00:00:00', 389.95),
(370048560, '1999-02-23 00:00:00', 100),
(370048575, '1999-02-21 00:00:00', 29.9),
(370048583, '1999-01-18 00:00:00', 500),
(370048583, '1999-01-19 00:00:00', 500),
(370048603, '1999-01-30 00:00:00', 269.8),
(370048612, '1999-01-22 00:00:00', 1000),
(370048612, '1999-01-29 00:00:00', 1000);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorieen`
--

CREATE TABLE IF NOT EXISTS `categorieen` (
  `Catcode` smallint(6) DEFAULT NULL,
  `Catomschrijving` char(25) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `categorieen`
--

INSERT INTO `categorieen` (`Catcode`, `Catomschrijving`) VALUES
(1, 'Damesmode'),
(2, 'Herenmode'),
(3, 'Kindermode'),
(5, 'Fietsen'),
(6, 'Linnengoed');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `chauffeurs`
--

CREATE TABLE IF NOT EXISTS `chauffeurs` (
  `Chaufnr` smallint(6) DEFAULT NULL,
  `Voorletters` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `Voorvoegsel` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `Chaufnaam` char(25) COLLATE latin1_general_ci DEFAULT NULL,
  `Chaufadres` char(25) COLLATE latin1_general_ci DEFAULT NULL,
  `Chaufpostcode` char(7) COLLATE latin1_general_ci DEFAULT NULL,
  `Chaufplaats` char(25) COLLATE latin1_general_ci DEFAULT NULL,
  `Chauftelefoon` char(10) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `chauffeurs`
--

INSERT INTO `chauffeurs` (`Chaufnr`, `Voorletters`, `Voorvoegsel`, `Chaufnaam`, `Chaufadres`, `Chaufpostcode`, `Chaufplaats`, `Chauftelefoon`) VALUES
(12, 'A.', '', 'Saers', 'Meiendaal 167', '3001 BD', 'Rotterdam', '0103847614'),
(72, 'R.A.', '', 'Sturrus', 'Vlasstraat 36', '3295 TN', 's-Gravendeel', '0786734529'),
(123, 'P.', 'van', 'Loon', 'Brabantstraat 34', '3002 GH', 'Rotterdam', '0104758439'),
(145, 'G.', '', 'Goossens', 'Libanonweg 6', '3002 PD', 'Rotterdam', '0104738293'),
(325, 'K.W.', 'den', 'Otter', 'Krekelveen 233', '3205 RB', 'Spijkenisse', '0181632940'),
(464, 'P.C.', '', 'Oliver', 'Mantelschelp 2', '3225 BE', 'Hellevoetsluis', '0181324067'),
(486, 'G.', '', 'Vermeer', 'Dintelstraat 5', '2987 TA', 'Ridderkerk', '0180420439');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inkoopregels`
--

CREATE TABLE IF NOT EXISTS `inkoopregels` (
  `Ordernr` int(11) DEFAULT NULL,
  `Produktnr` char(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Orderaantal` smallint(6) DEFAULT NULL,
  `Afleverdatum` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `inkoopregels`
--

INSERT INTO `inkoopregels` (`Ordernr`, `Produktnr`, `Orderaantal`, `Afleverdatum`) VALUES
(1500012, '128-67-298', 100, '1999-02-16 00:00:00'),
(1500012, '128-67-345', 30, '1999-02-16 00:00:00'),
(1500012, '329-45-715', 10, '1999-02-16 00:00:00'),
(1500012, '329-45-716', 25, '1999-02-23 00:00:00'),
(1500067, '632-01-043', 10, '1999-01-30 00:00:00'),
(1500067, '632-01-047', 5, '1999-01-23 00:00:00'),
(1500067, '632-01-048', 2, '1999-01-23 00:00:00'),
(1500068, '714-64-522', 20, '1999-02-17 00:00:00'),
(1500068, '714-64-523', 75, '1999-01-26 00:00:00'),
(1500131, '714-82-004', 10, NULL),
(1500131, '714-83-023', 10, NULL),
(1500131, '714-85-429', 35, NULL),
(1500156, '632-01-043', 2, '1999-01-13 00:00:00'),
(1500217, '363-04-384', 10, '1999-02-12 00:00:00'),
(1500218, '714-68-638', 25, '1999-01-15 00:00:00'),
(1500305, '128-45-301', 10, '1999-02-20 00:00:00'),
(1500305, '128-45-302', 25, NULL),
(1500305, '128-80-597', 30, NULL),
(1500307, '714-68-523', 20, '1999-01-17 00:00:00'),
(1500315, '714-68-638', 10, NULL),
(1500315, '714-82-004', 10, NULL),
(1500315, '714-83-023', 20, NULL),
(1500315, '714-85-429', 50, NULL),
(1500318, '363-04-385', 35, NULL),
(1500512, '714-64-522', 25, '1999-02-25 00:00:00'),
(1500516, '128-67-298', 10, NULL),
(1500613, '329-45-715', 10, NULL),
(1500613, '329-45-716', 25, NULL),
(1500712, '714-64-523', 3, '1999-01-22 00:00:00'),
(1500713, '714-68-638', 10, NULL),
(1500713, '714-83-023', 25, NULL),
(1500832, '363-04-385', 5, '1999-03-23 00:00:00'),
(1500878, '128-45-302', 30, NULL),
(1501003, '714-68-523', 100, '1999-02-16 00:00:00'),
(1501003, '714-68-638', 100, '1999-02-16 00:00:00'),
(1501045, '632-01-043', 3, '1999-01-24 00:00:00'),
(1501178, '315-21-032', 5, NULL),
(1501178, '363-04-384', 10, NULL),
(1501178, '363-04-385', 25, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inkopen`
--

CREATE TABLE IF NOT EXISTS `inkopen` (
  `Ordernr` int(11) DEFAULT NULL,
  `Levnr` smallint(6) DEFAULT NULL,
  `Orderdatum` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `inkopen`
--

INSERT INTO `inkopen` (`Ordernr`, `Levnr`, `Orderdatum`) VALUES
(1500012, 36, '1999-01-06 00:00:00'),
(1500067, 12, '1999-01-06 00:00:00'),
(1500068, 16, '1999-01-07 00:00:00'),
(1500131, 13, '1999-01-07 00:00:00'),
(1500156, 67, '1999-01-07 00:00:00'),
(1500217, 3441, '1999-01-08 00:00:00'),
(1500218, 1884, '1999-01-08 00:00:00'),
(1500305, 5201, '1999-01-10 00:00:00'),
(1500307, 4930, '1999-01-10 00:00:00'),
(1500315, 13, '1999-01-10 00:00:00'),
(1500318, 23, '1999-01-10 00:00:00'),
(1500512, 13, '1999-01-13 00:00:00'),
(1500516, 36, '1999-01-13 00:00:00'),
(1500613, 5201, '1999-01-14 00:00:00'),
(1500712, 16, '1999-01-15 00:00:00'),
(1500713, 13, '1999-01-15 00:00:00'),
(1500832, 23, '1999-01-15 00:00:00'),
(1500878, 5201, '1999-01-16 00:00:00'),
(1501003, 4930, '1999-01-16 00:00:00'),
(1501045, 67, '1999-01-17 00:00:00'),
(1501178, 23, '1999-01-17 00:00:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klanten`
--

CREATE TABLE IF NOT EXISTS `klanten` (
  `Klantnr` int(11) DEFAULT NULL,
  `Voorletters` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `Voorvoegsel` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `Naam` char(25) COLLATE latin1_general_ci DEFAULT NULL,
  `Adres` char(25) COLLATE latin1_general_ci DEFAULT NULL,
  `Postcode` char(7) COLLATE latin1_general_ci DEFAULT NULL,
  `Plaats` char(25) COLLATE latin1_general_ci DEFAULT NULL,
  `Telefoon` char(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Kredietcode` char(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `klanten`
--

INSERT INTO `klanten` (`Klantnr`, `Voorletters`, `Voorvoegsel`, `Naam`, `Adres`, `Postcode`, `Plaats`, `Telefoon`, `Kredietcode`) VALUES
(10010362, 'J.', 'van', 'Vuuren', 'Bastion 5', '3221 LE', 'Hellevoetsluis', '0181317346', 'C'),
(10014231, 'A.', '', 'Baggerman', 'Nassaustraat 141', '2983 RD', 'Ridderkerk', '0180417567', 'E'),
(10015622, 'P.F.', '', 'Wubben', 'Evenaar 68', '3067 DA', 'Rotterdam', '0104205259', 'A'),
(10016338, 'A.', '', 'Baggerman', 'Maisdreef 8', '3204 GM', 'Spijkenisse', '0181638923', 'B'),
(10018350, 'K.', '', 'Pieterman', 'De wouden 93', '9405 HC', 'Assen', '0592358938', 'D'),
(10020034, 'F.', '', 'Taks', 'De koppele 777', '5632 LV', 'Eindhoven', '0402420368', 'B'),
(10027738, 'W.', '', 'Ruigrok', 'Pompstraat 47', '3082 RR', 'Rotterdam', '0104553694', 'D'),
(10028335, 'P.', '', 'Waardenburg', 'Koenraadlaan 50', '5651 EW', 'Eindhoven', '0402518367', 'A'),
(10028356, 'J.M.', '', 'Ramaker', 'Heideanjer 44', '7721 HE', 'Dalfsen', '0529438493', 'E'),
(10030016, 'W.A.J.', '', 'Jansen', 'Delkant 4', '5311 CJ', 'Gameren', '0418563829', 'B'),
(10030047, 'P.', 'van', 'Galen', 'Nassaulaan 4', '3116 EV', 'Schiedam', '0104265028', 'A'),
(10031831, 'R.', '', 'Brigman', 'Bolderwerk 5', '3134 MA', 'Vlaardingen', '0104354223', 'C'),
(10034955, 'J.', '', 'Pedersen', 'Drinkwaterweg 404', '3063 JC', 'Rotterdam', '0104182219', 'B'),
(10043289, 'A.', '', 'Slootweg', 'Platanendreef 6', '3137 CN', 'Vlaardingen', '0104730435', 'D'),
(10047731, 'D.', '', 'Brugman', 'Edisonstraat 34 a', '3112 LW', 'Schiedam', '0104704951', 'A'),
(10048388, 'J.', '', 'Jansen', 'Prinsenlaan 393', '3067 TX', 'Rotterdam', '0104804674', 'C'),
(10056738, 'K.C.', '', 'Diepenhorst', 'Gemeenlandsedijk 4', '3216 AG', 'Abbenbroek', '0181669241', 'A'),
(10073382, 'A.J.J.', '', 'Antes', 'Merelstraat 4', '4793 HA', 'Fijnaart', '0168462236', 'A'),
(10089923, 'H.T.', '', 'Jansen', 'Ankerstraat 16', '7071 WH', 'Ulft', '0315681206', 'C'),
(10093373, 'J.', '', 'Jansen', 'Buitenbrinkweg 54', '3853 LX', 'Ermelo', '0341553246', 'D'),
(10095337, 'W.', '', 'Stienstra', 'Juckemastraat 23', '8801 GL', 'Franeker', '0517395068', 'C'),
(10098447, 'S.', '', 'Jaggers', 'Schorpioenstraat 282', '3067 KW', 'Rotterdam', '0104565551', 'B');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `kredieten`
--

CREATE TABLE IF NOT EXISTS `kredieten` (
  `Kredietcode` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `Max krediet bedrag` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `kredieten`
--

INSERT INTO `kredieten` (`Kredietcode`, `Max krediet bedrag`) VALUES
('A', 0),
('B', 1000),
('C', 2500),
('D', 5000),
('E', 10000),
('F', 25000);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `leverbaar`
--

CREATE TABLE IF NOT EXISTS `leverbaar` (
  `Levnr` smallint(6) DEFAULT NULL,
  `Produktnr` char(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Inkoopprijs` double DEFAULT NULL,
  `Levertijd` smallint(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `leverbaar`
--

INSERT INTO `leverbaar` (`Levnr`, `Produktnr`, `Inkoopprijs`, `Levertijd`) VALUES
(12, '632-01-043', 425, 7),
(12, '632-01-047', 795, 14),
(12, '632-01-048', 795, 14),
(13, '714-64-522', 14, 14),
(13, '714-64-523', 13.25, 14),
(13, '714-68-638', 9.95, 5),
(13, '714-82-004', 16.95, 28),
(13, '714-83-023', 8.95, 28),
(13, '714-85-429', 22.5, 28),
(16, '714-64-522', 15.5, 14),
(16, '714-64-523', 12.95, 10),
(23, '315-21-032', 145, 14),
(23, '363-04-384', 159, 14),
(23, '363-04-385', 159, 75),
(36, '128-45-301', 34.95, 35),
(36, '128-45-302', 55.5, 35),
(36, '128-67-298', 159.9, 35),
(36, '128-67-345', 75, 35),
(36, '128-80-597', 12, 35),
(36, '128-80-598', 16.5, 35),
(36, '315-21-032', 132.5, 35),
(36, '329-45-629', 31.95, 35),
(36, '329-45-715', 32, 35),
(36, '329-45-716', 32, 35),
(67, '632-01-043', 460, 4),
(135, '632-01-043', 450, 7),
(135, '714-68-523', 12.95, 3),
(1884, '714-68-523', 14.5, 5),
(1884, '714-68-638', 10, 5),
(3441, '363-04-384', 162.5, 10),
(3441, '363-04-385', 162.5, 49),
(3775, '714-68-523', 13, 3),
(4930, '714-64-523', 13, 10),
(4930, '714-68-638', 9.5, 7),
(5201, '128-45-301', 37.5, 21),
(5201, '128-45-302', 57.95, 21),
(5201, '128-80-597', 12.25, 21),
(5201, '128-80-598', 17.95, 21),
(5201, '329-45-629', 34.5, 21),
(5201, '329-45-715', 32, 21),
(5201, '329-45-716', 32, 21);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `produkten`
--

CREATE TABLE IF NOT EXISTS `produkten` (
  `Produktnr` char(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Soortnr` smallint(6) DEFAULT NULL,
  `Paginanr` smallint(6) DEFAULT NULL,
  `Kleurcode` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `Voorraad` smallint(6) DEFAULT NULL,
  `Minimum voorraad` smallint(6) DEFAULT NULL,
  `gewicht` float DEFAULT NULL,
  `verkoopprijs` double DEFAULT NULL,
  `quantumprijs` double DEFAULT NULL,
  `quantumaantal` smallint(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `produkten`
--

INSERT INTO `produkten` (`Produktnr`, `Soortnr`, `Paginanr`, `Kleurcode`, `Voorraad`, `Minimum voorraad`, `gewicht`, `verkoopprijs`, `quantumprijs`, `quantumaantal`) VALUES
('128-45-301', 1002, 67, 'WI', 43, 5, 0.1, 79.9, 0, 0),
('128-45-302', 1002, 67, 'BL', 189, 5, 0.1, 82.95, 0, 0),
('128-67-298', 1001, 45, 'DB', 93, 15, 0.6, 299, 275, 2),
('128-67-345', 1001, 43, 'ZW', 126, 10, 0.5, 189.9, 169.9, 2),
('128-80-597', 1004, 89, 'BL', 8, 10, 0.1, 29.9, 25, 3),
('128-80-598', 1004, 89, 'GR', 174, 10, 0.1, 29.9, 25, 3),
('315-21-032', 2001, 145, 'GY', 24, 3, 1.3, 315, 0, 0),
('329-45-629', 2002, 156, 'WI', 145, 10, 0.1, 69.95, 0, 0),
('329-45-715', 2002, 156, 'BL', 0, 10, 0.1, 74.9, 0, 0),
('329-45-716', 2002, 156, 'PA', 78, 10, 0.1, 74.95, 0, 0),
('363-04-384', 3001, 188, 'BL', 76, 30, 0.4, 315, 299, 2),
('363-04-385', 3001, 188, 'ST', 0, 30, 0.4, 315, 299, 2),
('632-01-043', 5001, 204, 'GS', 12, 20, 18, 795, 745, 2),
('632-01-047', 5002, 205, 'GE', 34, 10, 15.3, 1256, 1199, 2),
('632-01-048', 5002, 205, 'GR', 21, 10, 15.3, 1256, 1199, 2),
('714-64-522', 6001, 256, 'WI', 0, 5, 0.4, 29.95, 25, 3),
('714-64-523', 6001, 256, 'BL', 7, 5, 0.4, 28.75, 24.5, 3),
('714-68-523', 6002, 258, 'WI', 45, 5, 0.1, 21, 19.95, 3),
('714-68-638', 6002, 259, 'ZW', 3, 5, 0.1, 24.95, 22.5, 3),
('714-82-004', 6003, 315, 'GR', 134, 25, 0.2, 35.5, 32.95, 5),
('714-83-023', 6003, 315, 'BL', 19, 30, 0.1, 19.95, 17.5, 5),
('714-85-429', 6003, 317, 'PA', 84, 15, 0.4, 45, 39.9, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `produktsoorten`
--

CREATE TABLE IF NOT EXISTS `produktsoorten` (
  `Soortnr` smallint(6) DEFAULT NULL,
  `Omschrijving` char(25) COLLATE latin1_general_ci DEFAULT NULL,
  `Catcode` smallint(6) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `produktsoorten`
--

INSERT INTO `produktsoorten` (`Soortnr`, `Omschrijving`, `Catcode`) VALUES
(1001, 'Japon met blazer', 1),
(1002, 'Blouse met V-hals', 1),
(1003, 'Plooirok', 1),
(1004, 'Nachthemd', 1),
(2001, 'Suede jack', 2),
(2002, 'Zwembroek', 2),
(3001, 'Trainingspak', 3),
(5001, 'Dames superfiets', 5),
(5002, 'Mountainbike', 5),
(5003, 'Beach crosser', 5),
(6001, 'Hoeslaken', 6),
(6002, 'Kussensloop', 6),
(6003, 'Handdoek', 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ritten`
--

CREATE TABLE IF NOT EXISTS `ritten` (
  `Ritnr` int(11) DEFAULT NULL,
  `Ritdatum` datetime DEFAULT NULL,
  `Chaufnr` smallint(6) DEFAULT NULL,
  `Kenteken` char(8) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `ritten`
--

INSERT INTO `ritten` (`Ritnr`, `Ritdatum`, `Chaufnr`, `Kenteken`) VALUES
(170185, '1999-01-17 00:00:00', 12, 'BR-01-HD'),
(170215, '1999-01-20 00:00:00', 12, 'BD-23-FG'),
(170216, '1999-01-20 00:00:00', 325, 'BR-01-HD'),
(170217, '1999-01-20 00:00:00', 464, 'BZ-35-BD'),
(170218, '1999-01-20 00:00:00', 12, 'BR-01-HD'),
(170223, '1999-01-21 00:00:00', 464, 'BZ-35-BD'),
(170227, '1999-01-21 00:00:00', 486, 'BZ-84-XF'),
(170228, '1999-01-21 00:00:00', 123, 'BZ-84-XF'),
(170289, '1999-01-22 00:00:00', 464, 'BR-01-HD'),
(170290, '1999-01-22 00:00:00', 12, 'BR-01-HD'),
(170291, '1999-01-23 00:00:00', 123, 'BZ-84-XF'),
(170386, '1999-01-24 00:00:00', 486, 'BZ-34-BD'),
(170387, '1999-01-24 00:00:00', 123, 'BR-01-HD'),
(170449, '1999-01-24 00:00:00', 325, 'BK-89-XF'),
(170450, '1999-01-24 00:00:00', 486, 'BZ-34-BD'),
(170514, '1999-01-27 00:00:00', 464, 'BZ-35-BD');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `toeleveranciers`
--

CREATE TABLE IF NOT EXISTS `toeleveranciers` (
  `Levnr` smallint(6) DEFAULT NULL,
  `Levnaam` char(25) COLLATE latin1_general_ci DEFAULT NULL,
  `Levadres` char(25) COLLATE latin1_general_ci DEFAULT NULL,
  `Levpostcode` char(7) COLLATE latin1_general_ci DEFAULT NULL,
  `Levplaats` char(25) COLLATE latin1_general_ci DEFAULT NULL,
  `Levtelefoon` char(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Levfax` char(10) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `toeleveranciers`
--

INSERT INTO `toeleveranciers` (`Levnr`, `Levnaam`, `Levadres`, `Levpostcode`, `Levplaats`, `Levtelefoon`, `Levfax`) VALUES
(12, 'Medina BV', 'Erfdijk 38', '3079 TR', 'Rotterdam', '0104845647', '0104845648'),
(13, 'De Gier', 'Lokkerlandsdijk 23', '3234 KN', 'Tinte', '0181414770', '0181414771'),
(16, 'Plomp Acc', 'Fuutstraat 28', '1121 BN', 'Landsmeer', '0204826776', NULL),
(23, 'Strijbosch', 'Houtvester 46', '3834 CX', 'Leusden', '0334958695', '0334958231'),
(36, 'Jos Francke', 'Mathernesserlaan 437', '3081 FV', 'Rotterdam', '0104326735', NULL),
(67, 'Van Waveren', 'Churchillstraat 40', '1411 XD', 'Naarden', '0356953068', '0356953068'),
(135, 'Gekroonden', 'Lange haven 72', '3111 CH', 'Schiedam', '0102732054', '0104261291'),
(1884, 'Wendel', 'Weteringlaan 149', '5032 XX', 'Tilburg', '0134631171', '0134687512'),
(3441, 'Van Aal / De Graaf', 'Duifstraat 12', '3136 XH', 'Vlaardingen', '0104356113', '0104746759'),
(3775, 'Paardekoper BV', 'Sluisjesdijk 103', '3087 AE', 'Rotterdam', '0104958234', '0104595824'),
(4930, 'Van Aalst', 'Coolhaven 128 a', '3024 AK', 'Rotterdam', '0104336716', '0104210917'),
(5201, 'Pieters', 'Gouwsingel 26', '1566 XB', 'Assendelft', '0756873653', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vrachtautos`
--

CREATE TABLE IF NOT EXISTS `vrachtautos` (
  `Kenteken` char(8) COLLATE latin1_general_ci DEFAULT NULL,
  `Bouwjaar` smallint(6) DEFAULT NULL,
  `Kmstand` int(11) DEFAULT NULL,
  `Datum apk` datetime DEFAULT NULL,
  `Volume` int(11) DEFAULT NULL,
  `Laadvermogen` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Gegevens worden uitgevoerd voor tabel `vrachtautos`
--

INSERT INTO `vrachtautos` (`Kenteken`, `Bouwjaar`, `Kmstand`, `Datum apk`, `Volume`, `Laadvermogen`) VALUES
('BD-23-FG', 1993, 124000, '1999-11-12 00:00:00', 10000, 8000),
('BD-37-KB', 1993, 135000, '1999-09-03 00:00:00', 12500, 10000),
('BK-89-XF', 1994, 93000, '1999-08-24 00:00:00', 12500, 15500),
('BR-01-FR', 1994, 73000, '1999-12-03 00:00:00', 7500, 12500),
('BR-01-HD', 1994, 89500, '1999-12-03 00:00:00', 7500, 12500),
('BZ-34-BD', 1995, 35000, '1999-09-23 00:00:00', 15000, 20000),
('BZ-35-BD', 1995, 42000, '1999-09-30 00:00:00', 15000, 20000),
('BZ-84-XF', 1996, 34000, '1999-08-06 00:00:00', 30000, 22500);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
