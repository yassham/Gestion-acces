SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gestionacces`
--

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `idClasse` int(11) NOT NULL AUTO_INCREMENT,
  `nomClasse` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idClasse`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `classes`
--

INSERT INTO `classes` (`idClasse`, `nomClasse`) VALUES
(1, 'BTS SNIR2'),
(2, 'BTS SNIR'),
(3, 'BTS SNIR UFA'),
(4, 'BTS SNIR2 UFA'),
(5, 'BTS PHOTO'),
(6, 'BTS PHOTO2');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE IF NOT EXISTS `historique` (
  `idHistorique` int(11) NOT NULL AUTO_INCREMENT,
  `codeRFID` varchar(12) CHARACTER SET utf8 NOT NULL,
  `dateTentative` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `etat` int(1) NOT NULL,
  PRIMARY KEY (`idHistorique`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Contenu de la table `historique`
--

INSERT INTO `historique` (`idHistorique`, `codeRFID`, `dateTentative`, `etat`) VALUES
(1, '124561789153', '2016-04-01 06:23:00', 1),
(2, '124561789153', '2016-04-02 05:36:47', 0),
(3, '132152454544', '2016-04-11 22:00:00', 0),
(4, '132152454544', '2016-04-11 22:00:00', 0),
(5, '132152454544', '2016-04-11 22:00:00', 0),
(6, '0A008CD24713', '2016-04-11 22:00:00', 0),
(8, '0A008CD24713', '2016-04-11 22:00:00', 0),
(10, '0A008CD24713', '2016-04-11 22:00:00', 0),
(11, '0A008CD24713', '2016-04-26 08:38:09', 0),
(12, '0A008CD24713', '2016-05-10 08:54:11', 0),
(14, '0A008CD24713', '2016-05-10 08:54:21', 0),
(16, '0A008CD24713', '2016-05-10 08:54:45', 0),
(18, '0A008CD24713', '2016-05-12 10:30:28', 0),
(43, '123456789123', '2016-05-24 23:54:00', 1),
(44, '0A008CD24713', '2016-05-26 15:21:56', 1),
(45, '123456789123', '2016-05-29 19:10:40', 0),
(46, '123456789123', '2016-05-29 19:11:03', 1),
(92, '0A008CD24713', '2016-05-31 12:55:40', 0),
(95, '0A008CD24713', '2016-05-31 13:02:26', 0),
(96, '0A008CD24713', '2016-05-31 13:03:43', 0),
(97, '0A008CD24713', '2016-05-31 13:05:33', 0),
(98, '0A008CD24713', '2016-06-20 12:10:16', 0),
(99, '0A008CD24713', '2016-06-20 12:27:52', 0),
(100, '0A008CD24713', '2016-06-20 12:28:25', 0),
(101, '0A008CD24713', '2016-06-20 12:29:21', 1),
(102, '0A008CD24713', '2016-06-20 12:30:22', 1),
(103, '0A008CD24713', '2016-06-20 12:30:56', 0),
(104, '0A008CD24713', '2016-06-20 12:32:54', 0),
(105, '0A008CD24713', '2016-06-20 12:36:14', 0),
(106, '0A008CD24713', '2016-06-20 12:49:47', 0),
(107, '0A008CD24713', '2016-06-20 12:49:55', 0),
(108, '0A008CD24713', '2016-06-20 14:28:35', 0),
(109, '0A008CD24713', '2016-06-20 14:50:04', 0),
(116, '0A008CD24713', '2016-06-21 08:35:57', 0);

-- --------------------------------------------------------

--
-- Structure de la table `plageshoraires`
--

CREATE TABLE IF NOT EXISTS `plageshoraires` (
  `idPlageHoraire` int(11) NOT NULL AUTO_INCREMENT,
  `idClasse` int(11) NOT NULL,
  `idSalle` int(11) NOT NULL,
  `idStatut` int(11) NOT NULL,
  `debut` decimal(4,2) NOT NULL,
  `fin` decimal(4,2) NOT NULL,
  `jour` varchar(8) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idPlageHoraire`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `plageshoraires`
--

INSERT INTO `plageshoraires` (`idPlageHoraire`, `idClasse`, `idSalle`, `idStatut`, `debut`, `fin`, `jour`) VALUES
(1, 1, 1, 3, 8.00, 10.00, 'lundi'),
(3, 1, 1, 3, 8.00, 10.00, 'lundi'),
(4, 1, 1, 3, 8.00, 10.00, 'lundi'),
(5, 1, 1, 3, 8.00, 16.00, 'lundi'),
(6, 1, 1, 3, 13.00, 15.00, 'mardi'),
(9, 1, 1, 3, 1.00, 4.00, 'mercredi'),
(10, 1, 1, 3, 8.00, 3.00, 'mercredi'),
(11, 1, 1, 3, 9.00, 12.00, 'vendredi'),
(12, 1, 1, 3, 13.00, 17.00, 'vendredi'),
(13, 1, 1, 3, 10.00, 12.00, 'samedi'),
(14, 1, 1, 3, 11.00, 12.00, 'samedi'),
(16, 1, 1, 3, 8.00, 17.00, 'lundi'),
(17, 2, 2, 1, 0.00, 18.00, 'jeudi'),
(18, 7, 2, 3, 0.00, 23.00, 'jeudi');

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

CREATE TABLE IF NOT EXISTS `salles` (
  `idSalle` int(11) NOT NULL AUTO_INCREMENT,
  `nomSalle` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idSalle`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `salles`
--

INSERT INTO `salles` (`idSalle`, `nomSalle`) VALUES
(1, 'foyer'),
(2, 'salle de travaille');

-- --------------------------------------------------------

--
-- Structure de la table `statuts`
--

CREATE TABLE IF NOT EXISTS `statuts` (
  `idStatut` int(11) NOT NULL AUTO_INCREMENT,
  `nomStatut` varchar(255) NOT NULL,
  PRIMARY KEY (`idStatut`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `statuts`
--

INSERT INTO `statuts` (`idStatut`, `nomStatut`) VALUES
(1, 'administrateur'),
(2, 'personnel'),
(3, 'etudiant');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `idClasse` int(11) NOT NULL,
  `codeRFID` varchar(12) CHARACTER SET utf8 NOT NULL,
  `login` varchar(255) CHARACTER SET utf8 NOT NULL,
  `motPasse` varchar(255) CHARACTER SET utf8 NOT NULL,
  `idStatut` int(11) NOT NULL,
  PRIMARY KEY (`idUtilisateur`),
  UNIQUE KEY `codeRFID` (`codeRFID`),
  KEY `idClasse` (`idClasse`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`idUtilisateur`, `nom`, `prenom`, `idClasse`, `codeRFID`, `login`, `motPasse`, `idStatut`) VALUES
(1, 'admin', 'admin', 0, '', 'admin', 'admin', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
