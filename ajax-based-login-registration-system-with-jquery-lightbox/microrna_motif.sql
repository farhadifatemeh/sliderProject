-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2019 at 12:26 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `microrna_motif`
--

-- --------------------------------------------------------

--
-- Table structure for table `approve_pattern`
--

CREATE TABLE IF NOT EXISTS `approve_pattern` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pattern_sequence` varchar(50) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `score` int(11) NOT NULL,
  `isreverse` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `approve_pattern`
--

INSERT INTO `approve_pattern` (`id`, `pattern_sequence`, `userid`, `score`, `isreverse`) VALUES
(25, 'GC', 'mahdi@gmail.com', 1, ''),
(26, 'UG', 'mahdi@gmail.com', 120, ''),
(27, 'UCUC', 'mahdi@gmail.com', 0, ''),
(29, 'UCG', 'mahdi@gmail.com', 1, ''),
(30, 'UG', 'mahdi@gmail.com', 1, ''),
(33, 'UU', 'farhad2@yahoo.com', 199, ''),
(34, 'CC', 'farhad2@yahoo.com', 714, ''),
(35, 'CC', 'mahdi@gmail.com', 238, ''),
(37, 'AG', 'mahdi@gmail.com', 370, ''),
(40, 'CAGG', 'mahdi@gmail.com', 683, ''),
(42, 'CU', 'mahdi@gmail.com', 238, ''),
(43, 'CC', 'mahdi@gmail.com', 238, ''),
(45, 'UCCG', 'mahdi@gmail.com', 655, ''),
(47, 'GU', 'farhad2@yahoo.com', 620, ''),
(48, 'UG', 'farhad2@yahoo.com', 398, ''),
(49, 'GUU', 'farhad2@yahoo.com', 246, ''),
(50, 'CC', 'mahdi@gmail.com', 238, ''),
(51, 'UC', 'mahdi@gmail.com', 199, ''),
(52, 'CG', 'mahdi@gmail.com', 238, ''),
(56, 'GA', 'mahdi@gmail.com', 310, '');

-- --------------------------------------------------------

--
-- Table structure for table `mirna_motif`
--

CREATE TABLE IF NOT EXISTS `mirna_motif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Target` varchar(100) NOT NULL,
  `Gene_Symbol` varchar(100) NOT NULL,
  `Organism` varchar(100) NOT NULL,
  `miRNA_Name` varchar(100) NOT NULL,
  `Sequence` varchar(1000) NOT NULL,
  `Motif` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=302 ;

--
-- Dumping data for table `mirna_motif`
--

INSERT INTO `mirna_motif` (`id`, `Target`, `Gene_Symbol`, `Organism`, `miRNA_Name`, `Sequence`, `Motif`) VALUES
(1, 'NM_000024', 'ADRB2', 'Human', 'hsa-let-7a-5p', 'UUGAUAUGUUGGAUGAUGGAGU', 'GAUGGAG'),
(2, 'NM_000024', 'ADRB2', 'Human', 'hsa-let-7b-5p', 'UUGGUGUGUUGGAUGAUGGAGU', 'GAUGGAG'),
(3, 'NM_000024', 'ADRB2', 'Human', 'hsa-let-7e-5p', 'UUGAUAUGUUGGAGGAUGGAGU', 'GAUGGAG'),
(4, 'NM_000024', 'ADRB2', 'Human', 'hsa-let-7d-5p', 'UUGAUACGUUGGAUGAUGGAGA', 'GAUGGAG'),
(5, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-98', 'UUGUUAUGUUGAAUGAUGGAGU', 'GAUGGAG'),
(6, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-106b-5p', 'UAGACGUGACAGUCGUGAAAU', 'CGUGAAA'),
(7, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-17-5p', 'GAUGGACGUGACAUUCGUGAAAC', 'CGUGAAA'),
(8, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-107', 'ACUAUCGGGACAUGUUACGACGA', 'UACGACG'),
(9, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-98', 'UUGUUAUGUUGAAUGAUGGAGU', 'GAUGGAG'),
(10, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-532-3p', 'ACGUUCGGAACCCACACCCUCC', 'CACCCUC'),
(11, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-548z', 'ACGUUUUCAUUAACGCCAAAAAC', 'CCAAAAA'),
(12, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-514a-3p', 'AGAUGAGUGUCUUCACAGUUA', 'CACAGUU'),
(13, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-4719', 'GGACGUAUAAUAUCUAAACACU', 'UAAACAC'),
(14, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-501-3p', 'UCUUAGGAACGGGCCCACGUAA', 'CCACGUA'),
(15, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3911', 'ACGGAGGAGGUCCUAGGUGUGU', 'AGGUGUG'),
(16, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3916', 'GACUCUUGGUCGGUAAAGAAGGAGAA', 'AAGGAGA'),
(17, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3689c', 'UGGUGUUAUAGUGUGGAGGGUC', 'GGAGGGU'),
(18, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-4520b-5p', 'AACCUGUCUUUUGUGCGUCC', 'GUGCGUC'),
(19, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-510', 'CACUAACGGUGAGAGGACUCAU', 'GGACUCA'),
(20, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-718', 'GCUGCGGGCCGCCCCGCCUUC', 'CCGCCUU'),
(21, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-501-5p', 'AGAGUGGGUCCCUGUUUCCUAA', 'UUUCCUA'),
(22, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3689e', 'AGGGUCCUUGGUACUAUAGUGU', 'UAUAGUG'),
(23, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-224-3p', 'ACAUCAGUGAUCCCGUGGUAAAA', 'UGGUAAA'),
(24, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-603', 'CGUUUUCAUUAACGUCACACAC', 'UCACACA'),
(25, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-191-5p', 'GUCGACGAAAACCCUAAGGCAAC', 'AAGGCAA'),
(26, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-200b-3p', 'AGUAGUAAUGGUCCGUCAUAAU', 'GUCAUAA'),
(27, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-223-3p', 'ACCCCAUAAACUGUUUGACUGU', 'UUGACUG'),
(28, 'NM_194282', 'LIN54', 'Human', 'hsa-let-7g-3p', 'CGUUCCGUCACCGGACAUGUC', 'GACAUGU'),
(29, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-203', 'GAUCACCAGGAUUUGUAAAGUG', 'GUAAAGU'),
(30, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-140-5p', 'GAUGGUAUCCCAUUUUGGUGAC', 'UUGGUGA'),
(31, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-138-2-3p', 'UUGGGACCACAGCACUUUAUCG', 'CUUUAUC'),
(32, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-5004-3p', 'GACUCCGGGUCCUUUUAGGUUC', 'UUAGGUU\r\n'),
(33, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-5007-3p', 'UAAUCUCAAACCAAGUAUACUA', 'GUAUACU\r\n'),
(34, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-500a-3p', 'GUCUUAGGAACGGGUCCACGUA', 'UCCACGU'),
(35, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-5000-5p', 'UGAGUCCUUGUGAAGACUUGAC', 'GACUUGA'),
(36, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-500b', 'UGGGUCCAUCGUUCCUAA', 'GUUCCUA'),
(37, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-5007-5p', 'UUUGGUAUAGUCGGUCUGAGAU', 'UCUGAGA'),
(38, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-5006-3p', 'GACGGUCCUACCUUUCCCUUU', 'UUCCCUU'),
(39, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-5003-5p', 'AGAUGGGACGUUCCAACAACACU', 'ACAACAC'),
(40, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-548aj-5p', 'GUUUUUGACGUUAAUGAAAACGU', 'GAAAACG'),
(41, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-548ai', 'CCCUUUUUGACGUUAAUGGAAA', 'AAUGGAA'),
(42, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-548aa', 'ACCACGUUUUCAUUAACACCAAAAA', 'ACCAAAA'),
(43, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-548o-5p', 'CCGUUUUUGGCGUUAAUGAAAA', 'AAUGAAA'),
(44, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-5008-5p', 'GGUGACACGGGGUUCCCGGAGU', 'CCCGGAG'),
(45, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-5008-3p', 'CGCUCCGGGACCCUCGUGUCC', 'UCGUGUC'),
(46, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-5001-5p', 'UCGAGGCGGCGACUCAGGUCGGGA', 'GGUCGGG'),
(47, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-5002-5p', 'UGAUUCACGGAGUCUUUGGUUUAA', 'UGGUUUA'),
(48, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3154', 'AGACGAGGGUUGAGGGGAAGAC', 'GGGAAGA'),
(49, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3121-3p', 'ACAGGAAACGGAUGAGAUAAAU', 'AGAUAAA'),
(50, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3182', 'CUGAUGUGAUGUCUUCG', 'UGUCUUC'),
(51, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3179', 'UGCAAAUUUAAAGUGGGGAAGA', 'GGGGAAG'),
(52, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3122', 'UUCUGGCAGGAGAACAGGGUUG', 'CAGGGUU\r\n'),
(53, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3130-3p', 'AAUGGGUCAGAGGCCACGUCG', 'CCACGUC'),
(54, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3158-5p', 'CUUCCCGAAGGAGAGACGUCC', 'AGACGUC'),
(55, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3119', 'CGGUAGUUUCAAUUUUCGGU', 'UUUUCGG'),
(56, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3130-5p', 'CCGACGUGGCCUCUGACCCAU', 'UGACCCA'),
(57, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3140-5p', 'UUUCGAAAACCAUUAAGUCCA', 'UAAGUCC'),
(58, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3169', 'GAUACACGGUUCGUGUCAGGAU', 'GUCAGGA'),
(59, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3199', 'UUGAAAGAGGAUUCCGUCAGGGA', 'GUCAGGG'),
(60, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3127-3p', 'GGUCGUCCGGACGUCUUCCCCU', 'CUUCCCC'),
(61, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3180-5p', 'GCUGCACCCCGCCUCGCAGACCUUC', 'AGACCUU'),
(62, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-92a-2-5p', 'CAUUACGUUGUUUAGGGGUGGG', 'GGGGUGG'),
(63, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3120-3p', 'ACGGACAGAUGUGAACGACAC', 'AACGACA'),
(64, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-200c-3p', 'AGGUAGUAAUGGGCCGUCAUAAU', 'GUCAUAA'),
(65, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3129-3p', 'CGUCGUCACAUCUCUAAUCAAA', 'UAAUCAA'),
(66, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3124-3p', 'UGAAGUGCCCUCACUCCUUUCA', 'UCCUUUC'),
(67, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3159', 'CACCGGCUGUGAACAUUAGGAU', 'AUUAGGA'),
(68, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3155a', 'UCAAGGGUGACGUCUCGGACC', 'CUCGGAC'),
(69, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-33a-3p', 'CACUACGUGACACCUU', 'GACACCU'),
(70, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3155b', 'AGGGUGACGUCUCGGACC', 'CUCGGAC'),
(71, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3184-5p', 'UUUUCGAGCCAGACUCCGGGGAGU', 'CGGGGAG'),
(72, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3173-5p', 'UUUCCUCUUUUGUCCGUCCCGU', 'CGUCCCG'),
(73, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3163', 'CAGAAUGACGGGAGUAAAAUAU', 'UAAAAUA'),
(74, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3136-5p', 'UUACUGGGAUGGAUAAGUCAGUC', 'AGUCAGU'),
(75, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3149', 'UAUGUGUGUGUAUAGGUAUGUUU', 'GUAUGUU'),
(76, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3157-3p', 'UCGAAGUCGAUCUGAUCCCGUC', 'AUCCCGU'),
(77, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3123', 'CUAAUUUGUUAAGAGAC', 'UAAGAGA'),
(78, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-32-3p', 'UUUAUAGUGUGUGUGAUUUAAC', 'GAUUUAA'),
(79, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3182', 'CUGAUGUGAUGUCUUCG', 'UGUCUUC'),
(80, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3153', 'UUUACAGGGAUGAGCGAAAGGGG', 'GAAAGGG'),
(81, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-3143', 'GCUUUCUUCGCGAAAUGUUACAAUA', 'UUACAAU'),
(82, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-204-5p', 'UCCGUAUCCUACUGUUUCCCUU', 'UUUCCCU'),
(83, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-211-5p', 'UCCGCUUCCUACUGUUUCCCUU', 'UUUCCCU'),
(84, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-2115-3p', 'GAUCGGAGGUACUUAAGACUAC', 'AAGACUA'),
(85, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-205-3p', 'CUUGAAGUGAGGUGACUUUAG', 'GACUUUA'),
(86, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-211-3p', 'CGUGGGGAAACGACAGGGACG', 'CAGGGAC'),
(87, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-2117', 'GACAGGAACCGUUUCUCUUGU', 'UCUCUUG'),
(88, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-2113', 'CACUGUCUCGGUUCGUGUUUA', 'CGUGUUU'),
(89, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-204-3p', 'UGCAGGGAAACGGAAGGGUCG', 'AAGGGUC'),
(90, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-2116-5p', 'UCUGGAGGAUACGAUUCUUGG', 'AUUCUUG'),
(91, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-2110', 'GUGAGUCGCCGGCAAAGGGGUU', 'AAGGGGU'),
(92, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-2114-3p', 'UUCAGGGAACGAACUCCGAGC', 'CUCCGAG'),
(93, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-217', 'AGGUUAGUCAAGGACU', 'CAAGGAC'),
(94, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-219-5p', 'UCUUAACGCAAACCUGUUAGU', 'CUGUUAG'),
(95, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-216a', 'AGUGUCAACGGUCGACUCUAAU', 'ACUCUAA'),
(96, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-214-3p', 'UGACGGACAGACACGGACGACA', 'GGACGAC'),
(97, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-218-1-3p', 'GGUACCACGAACUGCCUUGGUA', 'CCUUGGU'),
(98, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-218-5p', 'UGUACCAAUCUAGUUCGUGUU', 'UUCGUGU'),
(99, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-218-2-3p', 'GCGCCACGAACUGUCUUGGUAC', 'CUUGGUA'),
(100, 'NM_000024', 'ADRB2', 'Human', 'hsa-let-7c', 'UUGGUAUGUUGGAUGAUGGAGU\r\n', 'GAUGGAG'),
(101, 'NM_000024', 'ADRB2', 'Human', 'hsa-let-7f-5p', 'UUGAUAUGUUAGAUGAUGGAGU', 'GAUGGAG'),
(102, 'NM_000024', 'ADRB2', 'Human', 'hsa-let-7i-5p', 'UUGUCGUGUUUGAUGAUGGAGU', 'GAUGGAG'),
(103, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-300', 'UCUCUCUCAGACGGGAACAUAU', 'GAACAUA'),
(104, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-222-3p', 'UGGGUCAUCGGUCUACAUCGA', 'UACAUCG'),
(105, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-299-3p', 'UUCGCCAAAUGGUAGGGUGUAU', 'GGGUGUA'),
(106, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-296-3p', 'CCUCUCGGAGGUGGGUUGGGAG', 'GUUGGGA'),
(107, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-4506', 'AACGGAGUCUGGUGGGUAAA', 'UGGGUAA'),
(108, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-4507', 'GGGUCGGGUCGGGUUGGGUC', 'GUUGGGU'),
(109, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-4502', 'GAAGUCGUGGUAGUAGUAGUCG', 'AGUAGUC'),
(110, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-423-3p', 'UGACUCCCCGGAGUCUGGCUCGA', 'UGGCUCG'),
(111, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-422a', 'CGGAAGACUGGGAUUCAGGUCA', 'UCAGGUC'),
(112, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-4500', 'UUCUUUGAUGAUGGAGU', 'GAUGGAG'),
(113, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-4504', 'GUACAAGUAGAGAUAACAGUGU', 'AACAGUG'),
(114, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-424-3p', 'UAUCGUCGCGGAGUGCAAAAC', 'UGCAAAA'),
(115, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-4508', 'GCGCGCGGGUCGGGGCG', 'UCGGGGC'),
(116, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-4509', 'UUUUGGAAGAUAUAGGAAAUCA', 'GGAAAUC'),
(117, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-424-3p', 'UAUCGUCGCGGAGUGCAAAAC', 'UGCAAAA'),
(118, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-450b-3p', 'AUACCUACGUUUUACUAGGGUU', 'CUAGGGU'),
(119, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-429', 'UGCCAAAAUGGUCUGUCAUAAU', 'GUCAUAA'),
(120, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-449a', 'UGGUCGAUUGUUAUGUGACGGU', 'GUGACGG'),
(121, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-4501', 'ACUAAGUAGGCUCCAGUGUAU', 'CAGUGUA'),
(122, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-485-5p', 'CUUAAGUAGUGCCGGUCGGAGA', 'GUCGGAG'),
(123, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-490-5p', 'UGGGUGGACCUCUAGGUACC', 'UAGGUAC'),
(124, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-486-3p', 'UAGGACAUGACUCGACGGGGC', 'GACGGGG'),
(125, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-484', 'UAGCCCUCCCCUGACUCGGACU', 'CUCGGAC'),
(126, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-488-5p', 'AACUCUCACGGUAAUAGACCC', 'AUAGACC'),
(127, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-487a', 'UUGACCUACAGGGACAUACUAA', 'CAUACUA'),
(128, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-483-5p', 'GAGGGAAGAAAGGAGGGCAGAA', 'GGGCAGA'),
(129, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-610', 'AGGGUCGUGUGUAAAUCGAGU', 'AAUCGAG'),
(130, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-602', 'CCCGGCGUCGACAGCGGGCACAG', 'GGGCACA'),
(131, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-600', 'CUCGUUCCGAGAACAGACAUUCA', 'GACAUUC'),
(132, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-609', 'UCUCUACUCUCUUUGUGGGA', 'UUGUGGG'),
(133, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-605', 'UCCUCUUCCGUGGUACCCUAAAU', 'CCCUAAA'),
(134, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-607', 'CAAUAUCUAGACCUAAACUUG', 'UAAACUU'),
(135, 'NM_000017', 'ACADS', 'Human', 'hsa-miR-608', 'UGCCUCGACAGGGUUGUGGUGGGGA', 'GGUGGGG'),
(136, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-604', 'CAGGACUUAAGGCGUCGGA', 'GCGUCGG'),
(137, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-601', 'GAGGAGGUUGUUAGGAUCUGGU', 'GAUCUGG'),
(138, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-616-3p', 'GACGAGUUUGGGAGGUUACUGA', 'GUUACUG'),
(139, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-620', 'UAAAGAUAUAGAUAGAGGUA', 'UAGAGGU'),
(140, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-613', 'CCGUUUCUUCCUUGUAAGGA', 'UGUAAGG'),
(141, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-615-5p', 'CUAGGCUCGUGGCCCCUGGGGG', 'CCUGGGG'),
(142, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-611', 'CAGUCUGGGGCUCCCCAGGAGCG', 'CAGGAGC'),
(143, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-612', 'UUCCUCGAGUCUUCGGGACGGGUCG', 'ACGGGUC'),
(144, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-614', 'GGUGGACCGUUCUUGUCCGCAAG', 'UCCGCAA'),
(145, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-630', 'UGGAAGGGACCAUGUCUUAUGA', 'UCUUAUG'),
(146, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-628-3p', 'AGCUGACGGUGAGAAUGAUCU', 'AAUGAUC'),
(147, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-625-3p', 'ACUCCCCCUUUCAAGAUAUCAG', 'GAUAUCA'),
(148, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-626', 'UUCUGUAAAAGUCUGUCGA', 'UCUGUCG'),
(149, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-624-3p', 'UCCAUUAUGGUUAUGGAACAC', 'UGGAACA'),
(150, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-622', 'CGAGGUUGGAGUCGUCUGACA', 'GUCUGAC'),
(151, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-629-3p', 'CGACCCGAAUGCAACCCUCUUG', 'CCCUCUU'),
(152, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-617', 'CGGUGGAAGUUUACCCUUCAGA', 'CCUUCAG'),
(153, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-623', 'UGGGUUGUCGGGGACGUUCCCUA', 'GUUCCCU'),
(154, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-627', 'AGGAGAAAAGAAUCUCUGAGUG', 'UCUGAGU'),
(155, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-618', 'UGAGUCUUCCUGUUCAUCUCAAA', 'AUCUCAA'),
(156, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-621', 'UCCAUUCGCGACAACGAUCGG', 'ACGAUCG'),
(157, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-619', 'UGACCCGUGUUUGUACAGGUCCAG', 'AGGUCCA'),
(158, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-633', 'AAAUAACACCAUCUAUGAUAAUC', 'UGAUAAU'),
(159, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-639', 'UGUCGCGAGCGUUGGCGUCGCUA', 'CGUCGCU'),
(160, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-632', 'AGGGUGUCCUUCGUCUGUG', 'CGUCUGU'),
(161, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-636', 'ACGCCCGCCCUGCUCGUUCGUGU', 'GUUCGUG'),
(162, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-641', 'CUCCACUGAGAUAGGAUACAGAAA', 'UACAGAA'),
(163, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-637', 'UGCGUCUCGGGCUUUCGGGGGUCA', 'GGGGGUC'),
(164, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-638', 'UCCGGCGGUGGGCGGGCGCUAGGGA', 'GCUAGGG'),
(165, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-635', 'CCUGUAACAAAGUCACGGGUUCA', 'CGGGUUC'),
(166, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-634', 'CAGGUUUCAACCCCACGACCAA', 'ACGACCA'),
(167, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-640', 'UCUCCGUCCAAGGACCUAGUA', 'ACCUAGU'),
(168, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-631', 'CGACUCCAGACCCGGUCCAGA', 'GGUCCAG'),
(169, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-648', 'UGGUCACGGGACGUGUGAA', 'CGUGUGA'),
(170, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-642a-5p', 'GUUCUGUGUAAACCUCUCCCUG', 'UCUCCCU'),
(171, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-647', 'CUUCCUUCACUCACGUCGGUG', 'CGUCGGU'),
(172, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-646', 'CGGAGUCUCCGUCGACGAA', 'UCGACGA'),
(173, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-644a', 'CGAGAUUCUUUCGGUGUGA', 'CGGUGUG'),
(174, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-645', 'AGUCGUCAUGGUCGGAUCU', 'UCGGAUC'),
(175, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-643', 'GAUGGACUCGAUCGUAUGUUCA', 'UAUGUUC'),
(176, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-649', 'CUGAGAACUUGUUGUGUCCAAA', 'UGUCCAA'),
(177, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-650', 'CAGGACUCUCGCGACGGAGGA', 'ACGGAGG'),
(178, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-664-5p', 'UAGGUUAGUAAAAGGGAUCGGUCA', 'AUCGGUC'),
(179, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-675-3p', 'ACUCGCCACUCCCGUAUGUC', 'CGUAUGU'),
(180, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-663b', 'GGAGUCCGUGCCGGCCCGGUGG', 'CCCGGUG'),
(181, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-665', 'UCCCCGGAGUCGGAGGACCA', 'GAGGACC'),
(182, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-651', 'GUUUUCAGUUCGAAUAGGAUUU', 'UAGGAUU'),
(183, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-769-3p', 'UUGGUUCUGGGGCCUCUAGGGUC', 'CUAGGGU'),
(184, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-708-3p', 'GAUCUUCGAGUGUCAGAUCAAC', 'AGAUCAA'),
(185, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-764', 'UCCUCCUGUUCACUCGUGGACG', 'CGUGGAC'),
(186, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-760', 'AGGGGUGUCUGGGUCUCGGC', 'GUCUCGG'),
(187, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-766-5p', 'UUCUGGUCGUGGUUAAGGAGGA', 'AAGGAGG'),
(188, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-762', 'CGAGCCGGGGCCGGGGUCGGGG', 'GGUCGGG'),
(189, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-760', 'AGGGGUGUCUGGGUCUCGGC', 'GUCUCGG'),
(190, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-744-3p', 'UCCAACUCCAAUCACCGUUGUC', 'CCGUUGU'),
(191, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-765', 'GUAGUGGAAGGAAGAGGAGGU', 'GAGGAGG'),
(192, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-761', 'ACACAGUCAAAGUGGGACGACG', 'GGACGAC'),
(193, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-770-5p', 'ACCGGGACUGUGCACCAUGACCU', 'CAUGACC'),
(194, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-889', 'UGUUACCAACAGGCUAUAAUU', 'CUAUAAU'),
(195, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-877-3p', 'GACCCUCCUCCCUCUUCUCCU', 'CUUCUCC'),
(196, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-892b', 'AGAUGGGUCUUUCCUCGGUCAC', 'UCGGUCA'),
(197, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-875-3p', 'GUGUUGGAGUCACAAAGGUCC', 'AAAGGUC'),
(198, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-885-3p', 'AUAGGUGAUGUGGGGCGACGGA', 'GCGACGG'),
(199, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-891b', 'AGUUACUGAGUCCAUUCAACGU', 'UUCAACG'),
(200, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-887', 'GGAGCCCUACCGCGGGCAAGUG', 'GGCAAGU'),
(201, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-890', 'GUUGACUACGGAAAGGUUCAU', 'AGGUUCA'),
(202, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-876-5p', 'ACCACUAAGUGUUUCUUUAGGU', 'CUUUAGG'),
(203, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-892a', 'GAUGCGUCUUUCCUGUGUCAC', 'UGUGUCA'),
(204, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-921', 'CUUAGGACCAAGACAGGGAGUGAUC', 'GAGUGAU'),
(205, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-935', 'CGCCAUCGCCUUCGCCAUUGACC', 'CAUUGAC'),
(206, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-934', 'GGUCACAGAGGUCAUCAUCUGU', 'UCAUCUG'),
(207, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-938', 'UGACCCAAGUGGAAAUUCCCGU', 'AUUCCCG'),
(208, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-922', 'CUGCAUCAGGAUAAGAGACGACG', 'AGACGAC'),
(209, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-924', 'CGUUCUGUAGUGUUCUGAGA', 'UUCUGAG'),
(210, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-936', 'GACGCUAAGGAGGGAGAUGACA', 'AGAUGAC'),
(211, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-939', 'GUGGGGGUCUCGGAGUCGAGGGGU', 'CGAGGGG'),
(212, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-920', 'AUGACGAAGGUGUCGAGGGG', 'UCGAGGG'),
(213, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-940', 'CCCCUCGCCCCCGGGACGGAA', 'GGACGGA'),
(214, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-937', 'CCGUCUCUCAGUCUCGCGCCUA', 'CGCGCCU'),
(215, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-933', 'CCCUCUCCAGAGGGACGCGUGU', 'ACGCGUG'),
(216, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-942', 'GUGUACCGGUUUUGUCUCUUCU', 'UCUCUUC'),
(217, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-944', 'GAGUAGGCUACAUGUUAUUAAA', 'UUAUUAA'),
(218, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-943', 'GACCUCCUGCCGUUGUCAGUC', 'UGUCAGU'),
(219, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-941', 'CGUGUACACGUGUGUCGGCCCAC', 'CGGCCCA'),
(220, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1180', 'UGUGUGGGUGCGCUCGGCCUUU', 'CGGCCUU'),
(221, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1178', 'GAUCCCUUCUUGUCACUCGUU', 'CACUCGU'),
(222, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1184', 'CCUUCGGUAGUUCAGCGACGUCC', 'CGACGUC'),
(223, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1183', 'ACGGGUGAGAGUGGUAGUGGAUGUCAC', 'GAUGUCA'),
(224, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1182', 'CAGUGUAGGGAGGGUUCUGGGAG', 'UCUGGGA'),
(225, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1179', 'GGUUGGUUACUUUCUUACGAA', 'CUUACGA'),
(226, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1181', 'GCCGAGCCCACCGCCGCUGCC', 'CCGCUGC'),
(227, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1205', 'GAGUUUCGUUUGGGACGUCU', 'GGACGUC'),
(228, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1202', 'GAGGGGGUGACGUCGACCGUG', 'CGACCGU'),
(229, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1200', 'CUCCGAGUCUUACCGAGUCCUC', 'GAGUCCU'),
(230, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1207-5p', 'GGGGAGGGUCGGAGGGACGGU', 'GGGACGG'),
(231, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1204', 'UAUUACCUCUGGUCCGGUGCU', 'CCGGUGC'),
(232, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1203', 'CUCGACGUAGGACCGAGGCCC', 'CGAGGCC'),
(233, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1208', 'AGGCGGACAGACUUGUCACU', 'UUGUCAC'),
(234, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1237', 'GACCCCCUGCCUCGUCUUCCU', 'GUCUUCC'),
(235, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1226-3p', 'GAUCCCUUGUGUCCCGACCACU', 'CGACCAC'),
(236, 'NM_000017', 'ACADS', 'Human', 'hsa-miR-1233', 'GACGCCCUCCUGUCCCGAGU', 'UCCCGAG'),
(237, 'NM_000017', 'ACADS', 'Human', 'hsa-miR-1225-3p', 'GACCCCCGCCGUGUCCCCGAGU', 'CCCCGAG'),
(238, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1238', 'CCCCGUCUGUCUGCUCCUUC', 'GCUCCUU'),
(239, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1234', 'CACCCCACCCACCAGUCCGGCU', 'GUCCGGC'),
(240, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1228-5p', 'GUGUGUGGACGGGGGCGGGUG', 'GGCGGGU'),
(241, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1229', 'GACACCCUCCCGUCACCACUCUC', 'CCACUCU'),
(242, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1231', 'CGUCGACAGGCGGGUCUGUG', 'GGUCUGU'),
(243, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1260b', 'UACCACCGUCACCACCCUA', 'CCACCCU'),
(244, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1255a', 'UUAGAUGAAAGAAACGAGUAGGA', 'GAGUAGG'),
(245, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1257', 'CCAGUCUUGGGUAGUAAGUGA', 'GUAAGUG'),
(246, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1244', 'UUGGUAGAGUAUGUUUGGUUGAUGAA', 'UUGAUGA'),
(247, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1246', 'GGACGAGGUUUUUAGGUAA', 'UUAGGUA'),
(248, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1245a', 'UACAUCCGGAAAUCUAGUGAA', 'CUAGUGA'),
(249, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1248', 'AAAUCGUGUCACGAAUAUGUUCUUCCA', 'UUCUUCC'),
(250, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1250', 'UUUCCGGUGUAGGUCGUGGCA', 'UCGUGGC'),
(251, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1247-3p', 'CGAGGUCAGAGCUGCAAGGGCCCC', 'AGGGCCC'),
(252, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1251', 'UCGCGGAAACCGUCGAUCUCA', 'CGAUCUC'),
(253, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1246', 'GGACGAGGUUUUUAGGUAA', 'UUAGGUA'),
(254, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1253', 'ACGUCCGACUAGAAGAAGAGA', 'AGAAGAG'),
(255, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1254', 'UGACGUCCGAGGUCGAAGGUCCGA', 'AGGUCCG'),
(256, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1249', 'ACUUCUUCCCCCCCUUCCCGCA', 'UUCCCGC'),
(257, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1243', 'GUGAGGAUAUUAACUAGGUCAA', 'UAGGUCA'),
(258, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1258', 'AAGGUGCUGGAUUAGGAUUGA', 'AGGAUUG'),
(259, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1299', 'AGGGAGUGUGUCUUAAGGUCUU', 'AAGGUCU'),
(260, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1287', 'CUGAGCUUGGUGACUAGGUCGU', 'UAGGUCG'),
(261, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1298', 'AUGUAGACCUGUCGGCUUACUU', 'GCUUACU'),
(262, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1285-3p', 'UCCAGAGUGAAACAACGGGUCU', 'ACGGGUC'),
(263, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1290', 'AGGGACUAGGUUUUUAGGU', 'UUUUAGG'),
(264, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1295a', 'AGUGGGUCUAGACGCCGGAUU', 'GCCGGAU'),
(265, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1291', 'UGACGACCAGAAGUCAGUCCCGGU', 'GUCCCGG'),
(266, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1271-3p', 'ACGGACCGUGUAUCGUCCGUGA', 'GUCCGUG'),
(267, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1302', 'AAAUCGUAUUCAUACAGGGUU', 'ACAGGGU'),
(268, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1289', 'UUUUACGUCUAAGGACCUGAGGU', 'CCUGAGG'),
(269, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1294', 'UCUGUUGUUACGGUUGGAGUGU', 'UGGAGUG'),
(270, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1304-5p', 'GUGUAGAGUGACAUCGGAGUUU', 'CGGAGUU'),
(271, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1324', 'CUUUCACGUAUCUUAAGACAGACC', 'GACAGAC'),
(272, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1301', 'CUUCAGUGAGGGUCCGUCGACGUU', 'UCGACGU'),
(273, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1306-3p', 'GUGGUGGUCUCGGUUGCA', 'CGGUUGC'),
(274, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1303', 'UCUCGUUCUGGGGCAGAGAUUU', 'AGAGAUU'),
(275, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1307-5p', 'UCGGCCAGCUCCAGGCCAGCU', 'GGCCAGC'),
(276, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1305', 'AGAGAGGGUAAUCUCAACUUUU', 'CAACUUU'),
(277, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1538', 'UCCUUGUCGUCGUCGGGCCCGGC', 'GGCCCGG'),
(278, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1909-5p', 'GUCCCGUCCGUGGCCGUGAGU', 'CCGUGAG'),
(279, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1911-3p', 'CCUCUGGUGUUACGGACCAC', 'CGGACCA'),
(280, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1915-3p', 'GGGCGGCGCAGCGGGACCCC', 'GGGACCC'),
(281, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1825', 'CCUCUCCUCCCGUGACCU', 'CGUGACC'),
(282, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1908', 'CUGGUUAGCGGCAGGGGCGGC', 'GGGGCGG'),
(283, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1914-3p', 'GGAGGGUCACGCCCUGGGGAGG', 'UGGGGAG'),
(284, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-1912', 'AAGUGUGACGUACGAGACCCAU', 'AGACCCA'),
(285, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-1913', 'ACCGUCGUCGCCUCCCCCGUCU', 'CCCCGUC'),
(286, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-1972', 'ACUCGGUGACACGGACCGGACU', 'ACCGGAC'),
(287, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-1976', 'UGUCGUUCCUCCCGUCCUCC', 'CGUCCUC'),
(288, 'NM_194282', 'LIN54', 'Human', 'hsa-miR-1973', 'AUACGAUGGAAACGUGCCA', 'ACGUGCC'),
(289, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-2861', 'GGCGGGUGGCGGUCCGGGG', 'GUCCGGG'),
(290, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-2276', 'GGAGCGGAGACUGUGAACGUCU', 'GAACGUC'),
(291, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-2682-5p', 'CUGCAGACUUGUCAGUGACGGAC', 'UGACGGA'),
(292, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-2277-5p', 'CUGACCGUCGCGAGUCGGGCGCGA', 'GGGCGCG'),
(293, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-2909', 'GGUUCUCUACAACCGGGAUUG', 'CGGGAUU'),
(294, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-2278', 'GGUCCGUUGUGUGUGACGAGAG', 'GACGAGA'),
(295, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-367', 'AGUGGUAACGAUUUCACGUUAA', 'CACGUUA'),
(296, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-363', 'AUGUCUACCUAUGGCACGUUAA', 'CACGUUA'),
(297, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-328', 'UGCCUUCCCGUCUCUCCCGGUC', 'UCCCGGU'),
(298, 'NM_000024', 'ADRB2', 'Human', 'hsa-miR-377-5p', 'CUUAAGUGGUUCCCGUUGGAGA', 'GUUGGAG'),
(299, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-326', 'GACCUCCUUCCCGGGUCUCC', 'GGGUCUC'),
(300, 'NM_000021', 'PSEN1', 'Human', 'hsa-miR-370', 'UGGUCCAAGGUGGGGUCGUCCG', 'GUCGUCC'),
(301, 'NM_000017', 'ACADS', 'Human', 'hsa-miR-346', 'UCUCCGUCCGUACGCCCGUCUGU', 'CCGUCUG');

-- --------------------------------------------------------

--
-- Table structure for table `neighborhood`
--

CREATE TABLE IF NOT EXISTS `neighborhood` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `acc` varchar(50) NOT NULL,
  `firstitem` varchar(1) NOT NULL,
  `lastitem` varchar(1) NOT NULL,
  `neighbor` int(11) NOT NULL,
  `value` double NOT NULL,
  `Avalue` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `neighborhood`
--

INSERT INTO `neighborhood` (`id`, `acc`, `firstitem`, `lastitem`, `neighbor`, `value`, `Avalue`) VALUES
(1, 'tempAvalue', 'A', 'A', 1, 0.048332, 0.196133),
(2, 'tempAvalue', 'A', 'C', 1, 0.070796, 0.287293),
(3, 'tempAvalue', 'A', 'G', 1, 0.081688, 0.331492),
(4, 'tempAvalue', 'A', 'U', 1, 0.045609, 0.185083),
(5, 'tempAvalue', 'C', 'G', 1, 0.087815, 0.333333),
(6, 'tempAvalue', 'C', 'C', 1, 0.058543, 0.222222),
(7, 'tempAvalue', 'C', 'G', 1, 0.087815, 0.333333),
(8, 'tempAvalue', 'C', 'U', 1, 0.062628, 0.237726),
(9, 'tempAvalue', 'G', 'A', 1, 0.108237, 0.300567),
(10, 'tempAvalue', 'G', 'C', 1, 0.02791, 0.077505),
(11, 'tempAvalue', 'G', 'G', 1, 0.112321, 0.311909),
(12, 'tempAvalue', 'G', 'U', 1, 0.111641, 0.310019),
(13, 'tempAvalue', 'U', 'A', 1, 0.053097, 0.184397),
(14, 'tempAvalue', 'U', 'C', 1, 0.102791, 0.356974),
(15, 'tempAvalue', 'U', 'G', 1, 0.074881, 0.260047),
(16, 'tempAvalue', 'U', 'U', 1, 0.057182, 0.198582),
(17, 'tempAvalue', 'A', 'A', 2, 0.059369, 0.228571),
(18, 'tempAvalue', 'A', 'C', 2, 0.043599, 0.167857),
(19, 'tempAvalue', 'A', 'G', 2, 0.104824, 0.403571),
(20, 'tempAvalue', 'A', 'U', 2, 0.051948, 0.2),
(21, 'tempAvalue', 'C', 'A', 2, 0.061224, 0.203077),
(22, 'tempAvalue', 'C', 'C', 2, 0.062152, 0.206154),
(23, 'tempAvalue', 'C', 'G', 2, 0.089981, 0.298462),
(24, 'tempAvalue', 'C', 'U', 2, 0.088126, 0.292308),
(25, 'tempAvalue', 'G', 'A', 2, 0.424861, 0.563346),
(26, 'tempAvalue', 'G', 'C', 2, 0.124304, 0.164822),
(27, 'tempAvalue', 'G', 'G', 2, 0.112245, 0.148831),
(28, 'tempAvalue', 'G', 'U', 2, 0.092764, 0.123001),
(29, 'tempAvalue', 'U', 'A', 2, 0.081633, 0.275),
(30, 'tempAvalue', 'U', 'C', 2, 0.06308, 0.2125),
(31, 'tempAvalue', 'U', 'G', 2, 0.088126, 0.296875),
(32, 'tempAvalue', 'U', 'U', 2, 0.064007, 0.215625),
(33, 'tempAvalue', 'A', 'A', 3, 0.069428, 0.253333),
(34, 'tempAvalue', 'A', 'C', 3, 0.045067, 0.164444),
(35, 'tempAvalue', 'A', 'G', 3, 0.088916, 0.324444),
(36, 'tempAvalue', 'A', 'U', 3, 0.070646, 0.257778),
(37, 'tempAvalue', 'C', 'A', 3, 0.064555, 0.204633),
(38, 'tempAvalue', 'C', 'C', 3, 0.071864, 0.227799),
(39, 'tempAvalue', 'C', 'G', 3, 0.107186, 0.339768),
(40, 'tempAvalue', 'C', 'U', 3, 0.071864, 0.227799),
(41, 'tempAvalue', 'G', 'A', 3, 0.088916, 0.232484),
(42, 'tempAvalue', 'G', 'C', 3, 0.105968, 0.27707),
(43, 'tempAvalue', 'G', 'G', 3, 0.10475, 0.273885),
(44, 'tempAvalue', 'G', 'U', 3, 0.082826, 0.216561),
(45, 'tempAvalue', 'U', 'A', 3, 0.077954, 0.245211),
(46, 'tempAvalue', 'U', 'C', 3, 0.069428, 0.218391),
(47, 'tempAvalue', 'U', 'G', 3, 0.101096, 0.318008),
(48, 'tempAvalue', 'U', 'U', 3, 0.069428, 0.218391),
(49, 'tempAvalue', 'A', 'A', 4, 0.07402, 0.286517),
(50, 'tempAvalue', 'A', 'C', 4, 0.065312, 0.252809),
(51, 'tempAvalue', 'A', 'G', 4, 0.055152, 0.213483),
(52, 'tempAvalue', 'A', 'U', 4, 0.063861, 0.247191),
(53, 'tempAvalue', 'C', 'A', 4, 0.053701, 0.188776),
(54, 'tempAvalue', 'C', 'C', 4, 0.063861, 0.22449),
(55, 'tempAvalue', 'C', 'G', 4, 0.095791, 0.336735),
(56, 'tempAvalue', 'C', 'U', 4, 0.071118, 0.25),
(57, 'tempAvalue', 'G', 'A', 4, 0.076923, 0.214575),
(58, 'tempAvalue', 'G', 'C', 4, 0.081277, 0.226721),
(59, 'tempAvalue', 'G', 'G', 4, 0.127721, 0.356275),
(60, 'tempAvalue', 'G', 'U', 4, 0.072569, 0.202429),
(61, 'tempAvalue', 'U', 'A', 4, 0.078374, 0.241071),
(62, 'tempAvalue', 'U', 'C', 4, 0.059507, 0.183036),
(63, 'tempAvalue', 'U', 'G', 4, 0.105951, 0.325893),
(64, 'tempAvalue', 'U', 'U', 4, 0.081277, 0.25),
(65, 'tempAvalue', 'A', 'A', 5, 0.063707, 0.270492),
(66, 'tempAvalue', 'A', 'C', 5, 0.055985, 0.237705),
(67, 'tempAvalue', 'A', 'G', 5, 0.059846, 0.254098),
(68, 'tempAvalue', 'A', 'U', 5, 0.055985, 0.237705),
(69, 'tempAvalue', 'C', 'A', 5, 0.057915, 0.220588),
(70, 'tempAvalue', 'C', 'C', 5, 0.054054, 0.205882),
(71, 'tempAvalue', 'C', 'G', 5, 0.073359, 0.279412),
(72, 'tempAvalue', 'C', 'U', 5, 0.07722, 0.294118),
(73, 'tempAvalue', 'G', 'A', 5, 0.096525, 0.284091),
(74, 'tempAvalue', 'G', 'C', 5, 0.073359, 0.215909),
(75, 'tempAvalue', 'G', 'G', 5, 0.100386, 0.295455),
(76, 'tempAvalue', 'G', 'U', 5, 0.069498, 0.204545),
(77, 'tempAvalue', 'U', 'A', 5, 0.063707, 0.230769),
(78, 'tempAvalue', 'U', 'C', 5, 0.061776, 0.223776),
(79, 'tempAvalue', 'U', 'G', 5, 0.081081, 0.293706),
(80, 'tempAvalue', 'U', 'U', 5, 0.069498, 0.251748),
(81, 'tempAvalue', 'A', 'A', 6, 0.076923, 0.313725),
(82, 'tempAvalue', 'A', 'C', 6, 0.072115, 0.294118),
(83, 'tempAvalue', 'A', 'G', 6, 0.057692, 0.235294),
(84, 'tempAvalue', 'A', 'U', 6, 0.038462, 0.156863),
(85, 'tempAvalue', 'C', 'A', 6, 0.072115, 0.192308),
(86, 'tempAvalue', 'C', 'C', 6, 0.120192, 0.320513),
(87, 'tempAvalue', 'C', 'G', 6, 0.072115, 0.192308),
(88, 'tempAvalue', 'C', 'U', 6, 0.110577, 0.294872),
(89, 'tempAvalue', 'G', 'A', 6, 0.091346, 0.204301),
(90, 'tempAvalue', 'G', 'C', 6, 0.081731, 0.182796),
(91, 'tempAvalue', 'G', 'G', 6, 0.197115, 0.44086),
(92, 'tempAvalue', 'G', 'U', 6, 0.076923, 0.172043),
(93, 'tempAvalue', 'U', 'A', 6, 0.129808, 0.341772),
(94, 'tempAvalue', 'U', 'C', 6, 0.076923, 0.202532),
(95, 'tempAvalue', 'U', 'G', 6, 0.096154, 0.253165),
(96, 'tempAvalue', 'U', 'U', 6, 0.076923, 0.202532);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE IF NOT EXISTS `tbl_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`id`, `email_id`, `password`, `update_date`) VALUES
(25, 'farhadi@gmail.com', '5553cfaf751a4b14960b7581a20bc142', '2019-08-21 21:58:48'),
(26, 'mahdi@gmail.com', '5553cfaf751a4b14960b7581a20bc142', '2019-08-24 20:46:52'),
(27, 'farhad2@yahoo.com', '5553cfaf751a4b14960b7581a20bc142', '2019-08-25 00:13:52');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
