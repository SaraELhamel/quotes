-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 15 juin 2020 à 16:54
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

--
-- Déchargement des données de la table `quotes`
--

INSERT INTO `quotes` (`id`, `citation`, `auteur`, `source`) VALUES
(2, 'Trust that when the answer is no there is a yes down the road', 'Ghandi', 'Quotling.com'),
(4, 'Life is tough my darling but so are you', 'Stephanie Benett Henry', 'livelifehappy.com'),
(5, 'Leave a little sparkle wherever you go', 'Samouel', 'Pintrest'),
(6, 'The sunrise of course doesnt care if we watch it or not it will keep on being beautiful even if we dont look at it ', 'Gene Amole', 'TheMindsetJournal');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
