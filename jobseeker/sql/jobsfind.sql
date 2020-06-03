-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 03, 2020 alle 15:31
-- Versione del server: 10.1.38-MariaDB
-- Versione PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobsfind`
--
CREATE DATABASE IF NOT EXISTS `jobsfind` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jobsfind`;

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Economia'),
(2, 'Costruzioni'),
(3, 'Fashion'),
(4, 'Cibo'),
(5, 'Medicina'),
(6, 'Vendita'),
(7, 'Tecnologie');

-- --------------------------------------------------------

--
-- Struttura della tabella `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `job_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `description`, `location`, `category_id`, `contact_email`, `job_type`) VALUES
(9, 'Contabile', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ', 'Savigliano', 1, 'dada@rhyta.com', 'Full Time'),
(10, 'Meccanico', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin magna augue, vestibulum non nulla vitae, convallis cursus magna. In ultricies luctus mauris in porttitor. Nulla facilisi. Morbi placerat euismod velit, ut vestibulum neque rutrum gravida. Sed dapibus leo sed nulla vulputate, ut cursus augue varius.', 'Fossano', 2, 'admin@meccanico.it', 'Full Time'),
(11, 'Parucchiere', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin magna augue, vestibulum non nulla vitae, convallis cursus magna. In ultricies luctus mauris in porttitor. Nulla facilisi. Morbi placerat euismod velit, ut vestibulum neque rutrum gravida. Sed dapibus leo sed nulla vulputate, ut cursus augue varius. ', 'Cuneo', 3, 'admin@parucchiere.it', 'Part Time'),
(12, 'Cuoco', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin magna augue, vestibulum non nulla vitae, convallis cursus magna. In ultricies luctus mauris in porttitor. Nulla facilisi. Morbi placerat euismod velit, ut vestibulum neque rutrum gravida. Sed dapibus leo sed nulla vulputate, ut cursus augue varius. ', 'Saluzzo', 4, 'admin@cuoco.it', 'Part Time'),
(13, 'Assistente', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin magna augue, vestibulum non nulla vitae, convallis cursus magna. In ultricies luctus mauris in porttitor. Nulla facilisi. Morbi placerat euismod velit, ut vestibulum neque rutrum gravida. Sed dapibus leo sed nulla vulputate, ut cursus augue varius. ', 'Savigliano', 5, 'admin@medicina.it', 'Full Time');

-- --------------------------------------------------------

--
-- Struttura della tabella `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `type`
--

INSERT INTO `type` (`id`, `user_type`) VALUES
(1, 'Azienda'),
(2, 'Impiegato');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_type`, `email`, `password`) VALUES
(4, 'Admin', 'Admin', 1, 'darius@iamdadazz.it', 'test1234'),
(5, 'Mario', 'Rossi', 2, 'mario.rossi@gmail.com', 'test1234'),
(6, 'Giuseppe', 'Verdi', 1, 'pizzeria@gmail.com', 'test1234');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
