-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2021 at 10:53 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE `kategorija` (
  `IDKategorija` int(10) UNSIGNED NOT NULL,
  `Naziv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`IDKategorija`, `Naziv`) VALUES
(1, 'Električne Gitare'),
(2, 'Bass Gitare'),
(3, 'Akustične Gitare'),
(4, 'Klasične gitare'),
(5, 'Akustične Bass Gitare'),
(6, 'Udaraljke'),
(7, 'Pojačala za Električne Gitare'),
(8, 'Pojačala za Bass Gitare'),
(9, 'Žice'),
(10, 'Stalci za Gitare'),
(11, 'Klavijature'),
(12, 'Studio Oprema'),
(13, 'Kablovi'),
(14, 'Mikrofoni'),
(15, 'Efekti i Procesori'),
(16, 'Torbe i Koferi');

-- --------------------------------------------------------

--
-- Table structure for table `proizvod`
--

CREATE TABLE `proizvod` (
  `IDProizvod` int(10) UNSIGNED NOT NULL,
  `KategorijaID` int(10) UNSIGNED NOT NULL,
  `Naziv` varchar(50) NOT NULL,
  `Opis` varchar(200) NOT NULL,
  `SlikaID` varchar(50) NOT NULL,
  `Cijena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proizvod`
--

INSERT INTO `proizvod` (`IDProizvod`, `KategorijaID`, `Naziv`, `Opis`, `SlikaID`, `Cijena`) VALUES
(1, 1, 'Gibson - Les Paul - Sunburst', '57\' orginal', 'gitara_gibson_lp_1', 3000),
(2, 1, 'Gibson - Les Paul - Goldtop', '2011 reissue', 'gitara_gibson_lp_2', 2000),
(3, 1, 'Gibson - Les Paul - Traditional Chicago BLue', '2015 traditional, push pull knobs', 'gitara_gibson_lp_3', 2000),
(4, 1, 'Gibson - Les Paul - Costum shop - Black Beauty', '1969 classic reissue', 'gitara_gibson_lp_4', 7000),
(5, 1, 'Gibson - Flying V - Olympic White', 'Olympic White classic Flying V', 'gitara_gibson_V_1', 4000),
(6, 1, 'Gibson - Flying V - Black Sparkle', 'Black Sparkle Flying V with Gold Hardware', 'gitara_gibson_V_2', 5000),
(7, 1, 'Fender - Stratocaster - Polka Dot', 'Jeff Beck signature gutiar', 'gitara_fender_strat_1', 6000),
(8, 1, 'Fender - Stratocaster - Red', '1964 Reissue cherry red', 'gitara_fender_strat_2', 2000),
(9, 1, 'Fender - Jaguar - Orange', 'Dual humbucker special edition orange 1975 Jaguar reissue', 'gitara_fender_jaguar_1', 2500),
(10, 1, 'Fender - Jaguar - Silver Sparkle', '2020 Fender Jaguar American Made', 'gitara_fender_jaguar_2', 3000),
(11, 1, 'Epiphone - ES-335 - Blueberry Burst', '2018 model ', 'gitara_epiphone_ES_1', 700),
(12, 1, 'Epiphone - ES-335 - Black', '2018 model ', 'gitara_epiphone_ES_2', 500),
(13, 1, 'Epiphone - Les Paul - Sunburst', 'Les Paul 1959 sunburst reissue', 'gitara_epiphone_lp_1', 600),
(14, 1, 'Epiphone - Les Paul - Black', '2020 model', 'gitara_epiphone_lp_2', 1000),
(15, 1, 'Squier - Stratocaster - White', 'White Taiwan made model of the classic Stratocaster', 'gitara_squier_strat_1', 400),
(16, 1, 'Squier - Jaguar - Surf Green', 'New mexican made model in Surf Green', 'gitara_squier_jaguar_2', 500),
(17, 1, 'Gretsch - Jet - Black', 'Classic Jet black Japan made', 'gitara_gretsch_jet_1', 2000),
(18, 1, 'Gretsch - Jet - Red', 'Classic Jet red Japan made', 'gitara_gretsch_jet_2', 2000),
(19, 1, 'Rickenbacker - 360 - Black', 'Classic american made Rickebacker in traditional balck ', 'gitara_rickenbacker_360_1', 3500),
(20, 1, 'Rickenbacker - 360 - Fireglo', 'American made Rickebacker in fireglo finish', 'gitara_rickenbacker_360_2', 3500),
(21, 1, 'ESP - LTD - Black', 'Dual humbucker, black finish, thin neck profile', 'gitara_esp_ltd_1', 800),
(22, 1, 'ESP - LTD - Purple', 'Flamed purple top with matching headstock', 'gitara_esp_ltd_2', 1000),
(23, 1, 'DAngelico - Excell - Black', 'Hollow body excell model in black finish', 'gitara_dangelico_excell_1', 1200),
(24, 1, 'DAngelico - Excell - Natural', 'Hollow body excell model in natural finish', 'gitara_dangelico_excell_2', 1200),
(25, 1, 'Solar - A2.7LN', 'Neon green 7 string guitar', 'gitara_solar_a2_1', 600),
(26, 2, 'Fender - Jazz Bass - White', 'Classic fender jazz bass american made in white finish', 'bassgitare_fender_JB_1', 2000),
(27, 2, 'Fender - Jazz Bass - Black', 'Fender mexican made jazz bass in black finish', 'bassgitare_fender_JB_2', 2000),
(28, 2, 'Fender - Jazz Bass - Orange', 'Fender mexican made jazz bass in orange finish', 'bassgitare_fender_JB_3', 2000),
(29, 2, 'Fender - Jazz Bass - Purple Sparkle', 'Classic fender jazz bass american made in purple finish with golden hardware', 'bassgitare_fender_JB_4', 3000),
(30, 2, 'Fender - Mustang Bass - White', 'American made Mustang bass with white finish ', 'bassgitare_fender_stang_1', 1500),
(31, 2, 'Fender - Mustang Bass - Red', 'American made Mustang bass with red finish ', 'bassgitare_fender_stang_2', 1000),
(32, 2, 'Fender - Jaguar Bass - Blue', 'American made Jaguar bass with blue finish ', 'bassgitare_fender_jaguar_1', 1000),
(33, 2, 'Fender - Jaguar Bass - Tidepool', 'American made Jaguar bass with tidepool finish', 'bassgitare_fender_jaguar_2', 2000),
(34, 2, 'Fender - Precision Bass - Black', 'American made Precision Bass in black finish', 'bassgitare_fender_PB_1', 2000),
(35, 2, 'Fender - Precision Bass - Red', 'Japanese made Precision Bass in red finish', 'bassgitare_fender_PB_2', 700),
(36, 2, 'Fender - Precision Bass - Sunburst', 'American made Precision Bass in sunburst finish', 'bassgitare_fender_PB_3', 2000),
(37, 2, 'Fender - Precision Bass - White', 'Japanese made Precision Bass in white finish', 'bassgitare_fender_PB_4', 700),
(38, 2, 'Gibson - RD - Artist Bass - Natural', 'RD artist model in natural finish', 'bassgitare_gibson_RD_1', 2000),
(39, 2, 'Gibson - SG - Standard Bass - Black', 'Gibson SG bass in black finish', 'bassgitare_gibson_SG_1', 2000),
(40, 2, 'Gibson - ES-335  Bass - Black', 'Electric spanish hollowbody gibson bass in black finish', 'bassgitare_gibson_ES-335_1', 2000),
(41, 2, 'Gibson - Thunderbird Bass - Red', 'Thunderbird bass in red finish with matching headstock', 'bassgitare_gibson_thunderbird_1', 2000),
(42, 2, 'Gibson - RD - Artist Bass - Black', 'RD artist model in black finish', 'bassgitare_gibson_RD_2', 2000),
(43, 2, 'Gibson - SG - Standard Bass - Red', 'Gibson SG bass in red finish', 'bassgitare_gibson_SG_2', 1500),
(44, 2, 'Gibson - ES-335  Bass - Red', 'Electric spanish hollowbody gibson bass in red finish', 'bassgitare_gibson_ES-335_2', 3000),
(45, 2, 'Gibson - Thunderbird Bass - Sunburst', 'Gibson thunderbird vintage sunburst bass', 'bassgitare_gibson_thunderbird_2', 2000),
(46, 2, 'Rickenbacker - 4003 - Black', 'American made Rickebacker 4003 bass in black finish', 'bassgitare_rickenbacker_4003_1', 3500),
(47, 2, 'Rickenbacker - 4003 - Fireglo', 'American made Rickebacker 4003 bass in fireglo finish', 'bassgitare_rickenbacker_4003_2', 3500),
(48, 2, 'ESP - LTD Bass - Natural', 'ESP bass in natural finish, 2020 model', 'bassgitare_esp_ltd_1', 2000),
(49, 2, 'ESP - LTD Bass - Black', 'ESP bass in black finish, 2020 model', 'bassgitare_esp_ltd_2', 2000),
(50, 2, 'ESP - LTD Bass - Blue', 'ESP bass in blue finish, 2020 model', 'bassgitare_esp_ltd_3', 2000),
(51, 3, 'Martin - D28', 'Classic Martin D28 acoustic guitar', 'akusgitare_martin_1', 4000),
(52, 3, 'Martin - D35', 'David Gilmour signature model', 'akusgitare_martin_2', 5000),
(53, 3, 'Gibson - Hummingbird', 'Hummingbird sunburst top classic ', 'akusgitare_gibson_1', 3000),
(54, 3, 'Gibson - J45 - Natural', 'J45 in natural finish ', 'akusgitare_gibson_2', 1200),
(55, 3, 'Gibson - J45 - Sunburst', 'J45 in sunburst finish ', 'akusgitare_gibson_3', 1500),
(56, 3, 'Yamaha - LL56 Custom', 'Yamaha 6 string acoustic guitar with natural finish', 'akusgitare_yamaha_1', 7000),
(57, 3, 'Yamaha - LL36 ', 'Yamaha 6 string acoustic guitar with natural finish', 'akusgitare_yamaha_2', 5000),
(58, 3, 'Yamaha - F370DW', 'Yamaha 6 string acoustic guitar with natural finish', 'akusgitare_yamaha_3', 4000),
(59, 3, 'Yamaha - F370', 'Yamaha 6 string acoustic guitar with natural finish', 'akusgitare_yamaha_4', 2000),
(60, 3, 'Yamaha - FG820-12', 'Yamaha 12 string acoustic guitar with blue finish and dreadnaught body\r\n', 'akusgitare_yamaha_5', 2500),
(61, 3, 'Yamaha - FS820 - Blue', 'Yamaha 6 string acoustic guitar with blue finish', 'akusgitare_yamaha_6', 800),
(62, 3, 'Taylor - 524ce', '6 string Taylor acoustic guitar in natural finish', 'akusgitare_taylor_1', 900),
(63, 3, 'Taylor - Builder\'s Edition 614ce', '6 string Taylor acoustic guitar in natural finish', 'akusgitare_taylor_2', 500),
(64, 3, 'Taylor - 312ce-N', '6 string Taylor acoustic guitar in natural finish', 'akusgitare_taylor_3', 6000),
(65, 3, 'Taylor - 324ce', '6 string Taylor acoustic guitar in natural finish', 'akusgitare_taylor_4', 4000),
(66, 3, 'Taylor - 612ce', '6 string Taylor acoustic guitar in natural finish', 'akusgitare_taylor_5', 2000),
(67, 3, 'Taylor - 562ce', '6 string Taylor acoustic guitar in natural finish', 'akusgitare_taylor_6', 2300),
(68, 3, 'Taylor - 214ce-K DLX', '6 string Taylor acoustic guitar in natural finish', 'akusgitare_taylor_7', 1300),
(69, 3, 'Taylor - Academy 12e', '6 string Taylor acoustic guitar in natural finish', 'akusgitare_taylor_8', 1800),
(70, 3, 'Fender - Newporter Player', '6 string Fender acoustic guitar in red finish', 'akusgitare_fender_1', 400),
(71, 3, 'Fender - CD-60 Dread V3 DS', 'Fender 6 string dreadnaught type body in natural finish', 'akusgitare_fender_2', 600),
(72, 3, 'Fender - Redondo Player', 'Fender black finish 6 string acoustic guitar', 'akusgitare_fender_3', 800),
(73, 3, 'Fender - Sonoran Mini, Nat w/bag WN', 'Fender 6 string acoustic guitar in natural finish', 'akusgitare_fender_4', 400),
(74, 3, 'Fender - PM-3 Triple-0 All-Mahogany, Natural', 'Fender 6 string acoustic guitar in natural finish', 'akusgitare_fender_5', 670),
(75, 3, 'Fender - PM-2 Standard Parlor, Natural', '6 string Fender acoustic guitar in natural finish', 'akusgitare_fender_6', 779),
(76, 4, 'Ramirez - Anniversary', '130 year anniversary of Ramirez workshop model', 'klasgitare_ramirez_1', 26000),
(77, 4, 'Ramirez - Tradicional 1A', 'Classic model reissue', 'klasgitare_ramirez_2', 20000),
(78, 4, 'Ramirez - Antigua', 'Ramirez antigua model with A grade wood', 'klasgitare_ramirez_3', 13000),
(79, 4, 'Taylor - 814ce-N', 'Taylor classical guitar in natural finish', 'klasgitare_taylor_1', 2000),
(80, 4, 'Taylor - 714ce-N', 'Taylor concert grade classical guitar ', 'klasgitare_taylor_2', 5000),
(81, 4, 'Amalio Burguet - FDV', 'Spanish made classical guitar with premium wood', 'klasgitare_amalio_1', 4500),
(82, 4, 'Amalio Burguet - FNEGRA', 'Spanish made classical guitar with premium wood', 'klasgitare_amalio_2', 3400),
(83, 4, 'Cordoba - GK Pro Negra', 'Limited edition classical guitar from Cordoba', 'klasgitare_cordoba_1', 2300),
(84, 4, 'Cordoba - GK pro', 'Cordoba GK pro standard model', 'klasgitare_cordoba_2', 5000),
(85, 4, 'Raimundo Modell -126-S', 'Raimundo classical guitar with natural finish', 'klasgitare_raimundo_1', 200),
(86, 5, 'Fender - FA-450CE 3TSB A-Bass', 'Fender 4 string acoustic bass guitar ', 'akbass_fender_1', 2000),
(87, 5, 'Fender - Fender Kingman Bass V2 JTB', 'Fender 4 string acoustic bass guitar ', 'akbass_fender_2', 1800),
(88, 5, 'Fender - Fender CB-60SCE A-Bass Natural IL', 'Fender 4 string acoustic bass guitar ', 'akbass_fender_3', 1400),
(89, 5, 'Fender - Fender CB-60SCE A-Bass Black 2018', 'Fender 4 string acoustic bass guitar ', 'akbass_fender_4', 2600),
(90, 5, 'Warwick - RB Alien Standard 4 NT', 'Warwick 4 string acoustic bass guitar', 'akbass_warwick_1', 900),
(91, 5, 'Warwick - Alien Deluxe 4 Hybrid Thinline', 'Warwick 4 string acoustic bass guitar', 'akbass_warwick_2', 400),
(92, 5, 'Warwick - RockBass Alien Standard', 'Warwick 4 string acoustic bass guitar ', 'akbass_warwick_3', 566),
(93, 5, 'Dean Guitars - Acoustic/Electric Bass CAW SN', 'Dean 4 string acoustic bass guitar in natural finish', 'akbass_dean_1', 678),
(94, 5, 'Dean Guitars - EAB Acoustic Bass BK', 'Dean 4 string acoustic bass guitar in black finish', 'akbass_dean_2', 321),
(95, 5, 'Dean Guitars - EAB Acoustic Bass', 'Dean 4 string acoustic bass guitar in natural finish', 'akbass_dean_3', 557),
(96, 6, 'Millenium Focus Junior Drum Set Black', 'Small drum kit for kids in black finish', 'udar_bubnjevi_1', 997),
(97, 6, 'Millenium Set in Green sparkle', 'Small drum kit for kids in green sparkle finish', 'udar_bubnjevi_2', 800),
(98, 6, 'Millenium MX420 Studio Set BL', 'Studio drum kit in black finish', 'udar_bubnjevi_3', 600),
(99, 6, 'Millenium MX422 Standard Set RL', 'Studio drum kit in red finish', 'udar_bubnjevi_4', 700),
(100, 6, 'Gretsch Catalina 7-piece Bundle WG', 'Studio/concert drum kit', 'udar_bubnjevi_5', 1000),
(101, 6, 'Pearl Decade Maple 6pc Red Burst', 'Studio/concert drum kit in red finish', 'udar_bubnjevi_6', 3000),
(102, 6, 'Tama Superstar Hyper Maple Std. SAP', 'Studio/concert drum kit', 'udar_bubnjevi_7', 4000),
(103, 6, 'Ludwig Classic Maple Fab 22 Black Oy', 'Studio/concert drum kit in black finish', 'udar_bubnjevi_8', 5000),
(104, 6, 'Gretsch Drums USA Custom 2up2down Rosewood', 'Studio/concert drum kit', 'udar_bubnjevi_9', 6000),
(105, 6, 'Gretsch USA Custom White Marine Pearl', 'Studio/concert drum kit in white finish', 'udar_bubnjevi_10', 4500),
(106, 6, 'LP Galaxy Giovanni Conga Set', 'Two congas with stands in natural finish', 'udar_conga_1', 200),
(107, 6, 'LP LPA647-SW 11\"+12\" Conga Set I', 'Two congas with stands in natural finish', 'udar_conga_2', 500),
(108, 6, 'LP M201 Bongos Matador', 'LP bongos with wood finish', 'udar_bongos_1', 200),
(109, 6, 'Sonor CB 78 NHG Champion Bongos', 'Sonor premium wood bongos ', 'udar_bongos_2', 100),
(110, 6, 'Harmonic Art HD5 Integral D', 'Handpan in integral D ', 'udar_handpan_1', 1200),
(111, 6, 'RAV Vast RAV Pan D Celtic Minor', 'Handpan in integral D celtic minor', 'udar_handpan_2', 1500),
(112, 6, 'LP 511C Concert Chimes', 'Concert grade chimes ', 'udar_chimes_1', 50),
(113, 6, 'Schlagwerk TreeWorks Chimes TRE630', 'TreeWorks concert grade chimes', 'udar_chimes_2', 30),
(114, 6, 'Millenium G225 Guiro Hand', 'Standard hand guiro', 'udar_guiro_1', 20),
(115, 6, 'LP 243 Super Guiro', 'Standard self-standing guiro', 'udar_guiro_2', 70),
(116, 7, 'Fender Champion 40', 'Transistor Fender amp, 40w', 'gitpoj_fender_1', 400),
(117, 7, 'Fender Champion 100', 'Fransistor Fender amp, 100w', 'gitpoj_fender_2', 600),
(118, 7, 'Vox AC15 C1 ', 'Vox tube combo amp, 15w', 'gitpoj_vox_1', 800),
(119, 7, 'Fender 64 Custom Deluxe Reverb', 'Fender tube amp combo, 30w', 'gitpoj_fender_3', 1200),
(120, 7, 'Friedman BE-100 Deluxe Head', 'Friedman tube amp head, 100w', 'gitpoj_friedman_1', 2800),
(121, 7, 'Marshall 1959 HW', 'Marshall 1959 hand wiered JMP reissue, tube amp head, 100w', 'gitpoj_marshall_1', 2000),
(122, 7, 'Marshall 1962 Bluesbreaker', 'Marshall 1962 bluesbreaker reissue, tube amp combo, 30w', 'gitpoj_marshall_2', 1600),
(123, 7, 'Marshall 2525C Mini Jubilee Combo', 'Marshall mini silver jubilee tube amp combo, 20w', 'gitpoj_marshall_3', 800),
(124, 7, 'Fender 57 Custom Champ', 'Fender 1957 reissue tube amp combo, 5w', 'gitpoj_fender_4', 1200),
(125, 7, 'Orange Rockerverb 50 MKIII', 'Orange tube amp combo, 50w ', 'gitpoj_orange_1', 2500),
(126, 8, 'Fender Rumble 500', 'Fender combo bass transistor amp, 500w', 'basspoj_fender_1', 600),
(127, 8, 'Markbass CMD 121H LM3', 'Markbass combo transistor bass amp', 'basspoj_markbass_1', 300),
(128, 8, 'Fender Rumble 200', 'Fender combo transistor bass amp, 200w', 'basspoj_fender_2', 350),
(129, 8, 'Markbass Minimark 802', 'Markbass combo transistor bass amp', 'basspoj_markbass_2', 400),
(130, 8, 'Ampeg SVT CL', 'Ampeg SVT bass guitar tube amp head, 300w', 'basspoj_ampeg_1', 2500),
(131, 8, 'Fender Super Bassman', 'Fender super bassman bass guitar tube amp head, 800w', 'basspoj_fender_3', 800),
(132, 8, 'Orange AD200B Mk3', 'Orange bass guitar tube amp head', 'basspoj_orange_1', 500),
(133, 8, 'Ampeg V-4B Bass Head', 'Ampeg V-4B bass guitar tube amp head', 'basspoj_ampeg_2', 3000),
(134, 8, 'Orange AD200B Mk3 Black', 'Orange tube amp head for bass guitar', 'basspoj_orange_2', 1500),
(135, 8, 'Ampeg PF-50T Bass Head', 'Ampeg Portaflex bass guitar tube amp', 'basspoj_ampeg_3', 2000),
(136, 9, 'Elixir Nanoweb .09', 'Elixir nanoweb electric guitar strings, 0.09 gague', 'zice_elxir_1', 20),
(137, 9, 'Elixir Nanoweb .010', 'Elixir nanoweb electric guitar strings, 0.10 gague', 'zice_elxir_2', 20),
(138, 9, 'Elixir Nanoweb .011', 'Elixir nanoweb electric guitar strings, 0.11 gague', 'zice_elxir_3', 20),
(139, 9, 'Dunlop Heavy Core Heavy', 'Dunlop electric guitar strings, 0.09 gague', 'zice_dunlop_1', 15),
(140, 9, 'Dunlop Heavy Core Heavier', 'Dunlop electric guitar strings, 0.10 gague', 'zice_dunlop_2', 15),
(141, 9, 'Dunlop Heavy Core Heaviest', 'Dunlop electric guitar strings, 0.11 gague', 'zice_dunlop_3', 15),
(142, 9, 'Elixir Nanoweb Bass .040 - .100', 'Elixir nanoweb electric bass strings, .040 - .100 gague', 'zice_elixirB_1', 40),
(143, 9, 'Elixir Nanoweb Bass .040 - .125', 'Elixir nanoweb electric bass strings,  .040 - .125 gague', 'zice_elixirB_2', 40),
(144, 9, 'Elixir Nanoweb Bass .045 - .125', 'Elixir nanoweb electric bass strings, .045 - .125 gague', 'zice_elixirB_3', 40),
(145, 9, 'Earnie Ball Super Slinky Bass .040 - .100', 'Earnie Ball Super Slinky electric bass strings, .040 - .100 gague', 'zice_eballB_1', 35),
(146, 9, 'Earnie Ball Super Slinky Bass .040 - .125', 'Earnie Ball Super Slinky electric bass strings,  .040 - .125 gague', 'zice_eballB_2', 35),
(147, 9, 'Earnie Ball Super Slinky Bass .045 - .125', 'Earnie Ball Super Slinky electric bass strings, .045 - .125 gague', 'zice_eballB_3', 35),
(148, 9, 'Savarez 510ARJ Alliance Cantiga Set', 'Savarez calssical guitar nylon strings', 'zice_savarez_1', 10),
(149, 9, 'Savarez 510AJ Alliance Cantiga', 'Savarez calssical guitar nylon strings', 'zice_savarez_2', 10),
(150, 9, 'Savarez 510AR Alliance Cantiga Strings', 'Savarez calssical guitar nylon strings', 'zice_savarez_3', 10),
(151, 9, 'Elixir Acoustic Nanoweb .09', 'Elixir nanoweb acoustic guitar strings, 0.09 gague', 'zice_elixirA_1', 15),
(152, 9, 'Elixir Acoustic Nanoweb .010', 'Elixir nanoweb acoustic guitar strings, 0.10 gague', 'zice_elixirA_2', 15),
(153, 9, 'Elixir Acoustic Nanoweb .011', 'Elixir nanoweb acoustic guitar strings, 0.11 gague', 'zice_elixirA_3', 15),
(154, 9, 'Dunlop Bronze Acoustic Strings .010', 'Dunlop Bronze acoustic guitar strings, 0.10 gague', 'zice_dunlopA_1', 10),
(155, 9, 'Dunlop Bronze Acoustic Strings .011', 'Dunlop Bronze acoustic guitar strings, 0.11 gague', 'zice_dunlopA_2', 10),
(156, 10, 'Millenium GS-2001 E', 'Single guitar stand', 'stalgit_millenium_1', 30),
(157, 10, 'K&M 17525 Guardian 5 Translucent', 'Guitar rack for 5 guitars', 'stalgit_km_1', 22),
(158, 10, 'K&M 16250 Guitar Holder', 'Single guitar stand', 'stalgit_km_2', 40),
(159, 10, 'Rockstand RS 20863B Guitarstand', 'Single guitar stand', 'stalgit_rockstand_1', 50),
(160, 10, 'Rockstand RS20862 7 E-Guitar Stand', 'Guitar rack for 7 guitars', 'stalgit_rockstand_2', 60),
(161, 10, 'Millenium MS 2003', 'Single guitar stand', 'stalgit_millenium_2', 35),
(162, 10, 'K&M 26145', 'Single guitar stand', 'stalgit_km_3', 38),
(163, 10, 'K&M 21080', 'Single guitar stand', 'stalgit_km_4', 42),
(164, 10, 'K&M Heli 2 Cork Acoustic', 'Single guitar stand', 'stalgit_km_5', 65),
(165, 10, 'Gibson Mahogany Guitar Stand', 'Single guitar stand', 'stalgit_gibson_1', 120),
(166, 10, 'Fender Classic Case Stand 3 Tweed', 'Gutiar case in tweed, 3 guitars max', 'stalgit_fender_1', 150),
(167, 10, 'Fender Classic Case Stand 3 BLK', 'Gutiar case in tweed, 3 guitars max', 'stalgit_fender_2', 150),
(168, 10, 'Rockstand RS 20867 9 E-Guitar Stand', 'Guitar rack for 9 gutars', 'stalgit_rockstand_3', 22),
(169, 10, 'Rockstand RS 20851B Guitarstand', 'Single guitar stand', 'stalgit_rockstand_4', 35),
(170, 10, 'Taylor Guitar Stand Beechwood', 'Single guitar stand', 'stalgit_taylor_1', 40),
(171, 10, 'K&M 16295', 'Single guitar stand', 'stalgit_km_6', 35),
(172, 10, 'Ortega OWGS-1 Stand', 'Single guitar stand', 'stalgit_ortega_1', 20),
(173, 10, 'On-Stage GS7253B-B', 'Single guitar stand', 'stalgit_onstage_1', 40),
(174, 10, 'Millenium GS-M3', 'Single guitar stand', 'stalgit_millenium_3', 30),
(175, 10, 'Millenium GSP-1000', 'Single guitar stand', 'stalgit_millenium_4', 20),
(176, 11, 'Yamaha PSR-E373', 'Yamaha professional grand piano', 'klav_yamaha_1', 50),
(177, 11, 'Yamaha PSS-F30', 'Yamaha professional grand piano', 'klav_yamaha_2', 42),
(178, 11, 'Yamaha SU 7', 'Yamaha professional grand piano', 'klav_yamaha_3', 16000),
(179, 11, 'Yamaha C7X SH2 PE Silent Grand Piano', 'Yamaha professional grand piano', 'klav_yamaha_4', 38000),
(180, 11, 'Yamaha C6X SH PE Silent Grand Piano', 'Yamaha professional grand piano', 'klav_yamaha_5', 34000),
(181, 11, 'Yamaha C 7 X PE Grand Piano', 'Yamaha professional grand piano', 'klav_yamaha_6', 33000),
(182, 11, 'Korg PA-700', 'Standard home recording Keyboard ', 'klav_korg_1', 800),
(183, 11, 'Korg PA-1000', 'Standard home recording Keyboard ', 'klav_korg_2', 1250),
(184, 11, 'Korg PA-300', 'Standard home recording Keyboard ', 'klav_korg_3', 450),
(185, 11, 'Korg EK-50', 'Standard home recording Keyboard ', 'klav_korg_4', 230),
(186, 11, 'Casio CT-S300', 'Standard home recording Keyboard ', 'klav_casio_1', 130),
(187, 11, 'Casio LK-136', 'Standard home recording Keyboard ', 'klav_casio_2', 90),
(188, 11, 'Casio CT-S300 Set', 'Standard home recording Keyboard ', 'klav_casio_3', 140),
(189, 11, 'Casio SA 77', 'Standard home recording Keyboard ', 'klav_casio_4', 42),
(190, 11, 'Casio CT-S200 WE', 'Standard home recording Keyboard ', 'klav_casio_5', 97),
(191, 12, 'SSL SiX', 'Analog recording desk', 'studopr_1', 1000),
(192, 12, 'Audient ASP 8024-24 HE DLC', 'Analog recording desk', 'studopr_2', 33000),
(193, 12, 'AMS Neve 8424', 'Analog recording desk', 'studopr_3', 18000),
(194, 12, 'Trident Audio Series 68 Console 24', 'Analog recording desk', 'studopr_4', 13000),
(195, 12, 'Presonus StudioLive 64S', 'Analog recording desk', 'studopr_5', 2900),
(196, 12, 'Behringer X32 Producer', 'Analog recording mixeser', 'studopr_6', 900),
(197, 12, 'Behringer WING', 'Digital recording mixer', 'studopr_7', 2000),
(198, 12, 'Tascam Model 12', 'Digital recording mixer', 'studopr_8', 450),
(199, 12, 'Behringer X32 Compact', 'Digital recording mixer', 'studopr_9', 970),
(200, 12, 'Presonus StudioLive 32S', 'Digital recording mixer', 'studopr_10', 2200),
(201, 13, 'the sssnake IPP1030', 'Snake instrument cable, black ', 'kabl_snake_1', 3),
(202, 13, 'the sssnake IPP1060', 'Snake instrument cable, black ', 'kabl_snake_2', 4),
(203, 13, 'Rockboard Flat Patch Cable Gold 20 cm', 'Rockboard patch cable', 'kabl_rockboard_1', 4),
(204, 13, 'Rockboard Flat Looper/Switch Cable 40 cm', 'Rockboard looper/switch cable', 'kabl_rockboard_2', 7),
(205, 13, 'Rockboard Flat Looper/Switch Cable 60 cm', 'Rockboard looper/switch cable', 'kabl_rockboard_3', 8),
(206, 13, 'the sssnake SM10 BK', 'Snake instrument cable, black ', 'kabl_snake_3', 5),
(207, 13, 'the sssnake SM6BK', 'Snake instrument cable, black ', 'kabl_snake_4', 4),
(208, 13, 'pro snake Guitar Speaker Cable Jack 3,0', 'Snake speaker cable, black ', 'kabl_snake_5', 11),
(209, 13, 'the sssnake SK233-0,3 XLR Patch', 'Snake patch cable, black ', 'kabl_snake_6', 3),
(210, 13, 'pro snake TPM 0,5', 'Snake console cable, black ', 'kabl_snake_7', 3),
(211, 14, 'Shure SM58 LC', 'Classic shure dynamic microphone', 'mikr_shure_1', 80),
(212, 14, 'Shure SM 7 B', 'Classic shure dynamic microphone', 'mikr_shure_2', 280),
(213, 14, 'Shure SM 7 B Bundle', 'Classic shure dynamic microphone', 'mikr_shure_3', 320),
(214, 14, 'Shure KSM32SL', 'Classic shure dynamic microphone', 'mikr_shure_4', 420),
(215, 14, 'Shure KSM42 SG', 'Classic shure condenser microphone', 'mikr_shure_5', 480),
(216, 14, 'Shure Beta 27 B-Stock', 'Classic shure dynamic microphone', 'mikr_shure_6', 220),
(217, 14, 'Sennheiser E 945', 'Classic ssennheiser dynamic microphone', 'mikr_sennheiser_1', 140),
(218, 14, 'Sennheiser E845 S', 'Classic ssennheiser dynamic microphone', 'mikr_sennheiser_2', 72),
(219, 14, 'Sennheiser E835', 'Classic ssennheiser dynamic microphone', 'mikr_sennheiser_3', 62),
(220, 14, 'Rode NT1-A Complete Vocal Recording', 'Classic ssennheiser condenser microphone', 'mikr_sennheiser_4', 115),
(221, 15, 'Boss - Digital Dealy 7', 'Digital delay pedal from boss', 'efek_boss_1', 100),
(222, 15, 'Boss - Blues Driver', 'Overdrive pedal from Boss', 'efek_boss_2', 100),
(223, 15, 'MXR - Reverb', 'Digital rverb pedal from MEX', 'efek_mxr_1', 300),
(224, 15, 'MXR - Chorus', 'Analog Chorus pedal from MXR', 'efek_mxr_2', 170),
(225, 15, 'Dunlop - Cry Baby From Hell', 'Siganture Dimebag Darrel wah pedal from Dunlop', 'efek_dunlop_1', 250),
(226, 15, 'MXR - Super Badass Distorsion', 'MXR ultra distorsion pedal', 'efek_mxr_3', 150),
(227, 15, 'Dunlop - Cry Baby Wah', 'Standard dunlop wah pedal ', 'efek_dunlop_2', 100),
(228, 15, 'TC electronics - Thunderstorm Flanger', 'TC electronics flanger pedal', 'efek_tc_1', 30),
(229, 15, 'TC electronics - polytune', 'TC enectronics tuner ', 'efek_tc_2', 120),
(230, 15, 'Boss - Super Overdrive', 'Overdrive pedal from Boss ', 'efek_boss_3', 100),
(231, 15, 'MXR - Phase 90', 'Phaser pedal from MXR', 'efek_mxr_4', 100),
(232, 15, 'Chase Bliss - Brothers', 'Chase bliss gain station, two channels', 'efek_chase_1', 350),
(233, 15, 'Chase Bliss - Dark World', 'Chase bliss reverb pedal, two channels', 'efek_chase_2', 300),
(234, 15, 'Chase Bliss - Tonal Recall', 'Chase bliss delay pedal, two channels', 'efek_chase_3', 300),
(235, 15, 'Boss - Compressor Sustainter', 'Compressor and sustainer pedal from Boss', 'efek_boss_4', 110),
(236, 16, 'Thon Case Single Cut', 'Thon case for audio equimpent', 'torbe_thon_1', 150),
(237, 16, 'Thon Case T-Style', 'Thon case for audio equimpent in T style', 'torbe_thon_2', 140),
(238, 16, 'Thon Case Fender Precision', 'Rockcase for fender precision bass guitars', 'torbe_thon_3', 130),
(239, 16, 'Rockcase RC10805B Flightcase Bass', 'Rockcase for bass guitars', 'torbe_rockcase_1', 90),
(240, 16, 'Gator G-112A Amp Transporter', 'Gator combo amp case ', 'torbe_gator_1', 77),
(241, 16, 'Gator G-901 Amp-Head Transporter', 'Gator amp head case', 'torbe_gator_2', 80),
(242, 16, 'Thon Amp Case Orange Head', 'Orange 100w head case ', 'torbe_thon_4', 144),
(243, 16, 'Thon Case Fender Blues Junior', 'Thon Fender Blues junior case', 'torbe_thon_5', 150),
(244, 16, 'Thon Amp Case for Vox AC-15', 'Vox ac-15 plane case ', 'torbe_thon_6', 190),
(245, 16, 'Thon Amp Case Mesa Rectifier Head', 'Mesa boogie dual rectifier case', 'torbe_thon_7', 130);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`IDKategorija`);

--
-- Indexes for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD PRIMARY KEY (`IDProizvod`),
  ADD KEY `KategorijaID` (`KategorijaID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD CONSTRAINT `proizvod_ibfk_1` FOREIGN KEY (`KategorijaID`) REFERENCES `kategorija` (`IDKategorija`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
