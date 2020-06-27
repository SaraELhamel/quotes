-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 27 juin 2020 à 14:18
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `citations`
--

-- --------------------------------------------------------

--
-- Structure de la table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `citation` text NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `quotes`
--

INSERT INTO `quotes` (`id`, `citation`, `auteur`, `source`) VALUES
(2, 'your faith has to be bigger than your fear ', 'sara', 'google'),
(3, 'some said yes and some said no but only God knows it all', 'mona', 'molina'),
(4, 'Life is tough my darling but so are you', 'Stephanie Benett Henry', 'livelifehappy.com'),
(5, 'Leave a little sparkle wherever you go', 'Samouel', 'Pintrest'),
(7, 'The sunrise of course doesnt care if we watch it or not it will keep on being beautiful even if we dont look at it ', 'Gene Amole', 'TheMindsetJournal'),
(12, 'jump to it', 'Nansi', 'google'),
(14, 'life is hard so are you dear', 'sara', 'google'),
(23, 'always be your self ', 'Marie', 'google');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
