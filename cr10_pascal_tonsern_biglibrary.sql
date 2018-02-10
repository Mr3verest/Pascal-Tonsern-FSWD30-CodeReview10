-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Feb 2018 um 16:46
-- Server-Version: 10.1.30-MariaDB
-- PHP-Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr10_pascal_tonsern_biglibrary`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(55) DEFAULT NULL,
  `author_surname` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_surname`) VALUES
(1, 'Jeffrey', 'Brown'),
(2, 'Christian', 'Slade'),
(3, 'Kate', 'Glasheen'),
(4, 'Steeve', 'Moore'),
(5, 'John', 'Doe'),
(6, 'Barbara', 'Streisand'),
(7, 'Stephen', 'Hawking'),
(8, 'J.K.', 'Rowling'),
(9, 'David', 'Sedaris'),
(10, 'Kate', 'Atkinson');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `media`
--

CREATE TABLE `media` (
  `isbn` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `fk_author_id` int(11) DEFAULT NULL,
  `fk_publisher_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  `description` tinytext,
  `type` varchar(55) DEFAULT NULL,
  `publish_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `media`
--

INSERT INTO `media` (`isbn`, `title`, `fk_author_id`, `fk_publisher_id`, `image_url`, `fk_user_id`, `description`, `type`, `publish_date`) VALUES
(100463, 'Me Talk Pretty One Day', 9, 5, 'https://images-na.ssl-images-amazon.com/images/I/51g%2B2k%2B8VZL._SX331_BO1,204,203,200_.jpg', NULL, 'A recent transplant to Paris, humorist David Sedaris, bestselling author of \"Naked\", presents a collection of his strongest work yet...', 'Book', '2001-02-02'),
(101234, 'Harry Potter and the Sorcerer\'s Stone', 8, 5, ' https://images-na.ssl-images-amazon.com/images/I/51HSkTKlauL._SX346_BO1,204,203,200_.jpg', 5, 'Harry Potter has no idea how famous he is. That\'s because he\'s being raised by his ...', 'Book', '1999-09-08'),
(157895, 'Fifty Shades of Grey: Book One of the Fifty Shades Trilogy', 6, 5, 'https://images-na.ssl-images-amazon.com/images/I/51q6htNaVcL._SX323_BO1,204,203,200_.jpg', NULL, 'When literature student Anastasia Steele goes to interview young entrepreneur Christian Grey, she encounters a man who... ', 'Book', '2012-05-08'),
(184679, 'Life After Life', 10, 6, 'https://images-na.ssl-images-amazon.com/images/I/41QDxGRAPZL._SX303_BO1,204,203,200_.jpg', NULL, 'On a cold and snowy night in 1910, Ursula Todd is born, the third child of a wealthy English banker and his wife...', 'Book', '2003-04-13'),
(258763, 'The Girl Who Played with Fire ', 5, 2, 'https://images-na.ssl-images-amazon.com/images/I/618%2B2jEAmZL._SX322_BO1,204,203,200_.jpg', NULL, 'Part blistering espionage thriller, part riveting police procedural, and part piercing exposé on social injustice, The Girl Who Played with Fire is a masterful, endlessly satisfying novel... ', 'DVD', '2007-11-04'),
(345030, 'Love You Forever', 3, 2, 'https://images-na.ssl-images-amazon.com/images/I/612wpFrT0WL._SY484_BO1,204,203,200_.jpg', NULL, 'A young woman holds her newborn son\r\nAnd looks at him lovingly...', 'DVD', '1995-02-14'),
(486626, 'A Brief History of Time', 7, 5, 'https://images-na.ssl-images-amazon.com/images/I/617m43n-HWL._SX331_BO1,204,203,200_.jpg', 5, 'A landmark volume in science writing by one of the great minds of our time,...', 'Book', '1998-09-01'),
(574962, 'Unbroken: A World War II Story of Survival, Resilience, and Redemption', 6, 2, 'https://images-na.ssl-images-amazon.com/images/I/51II0f7dYEL._SX331_BO1,204,203,200_.jpg', NULL, 'In boyhood, Louis Zamperini was an incorrigible delinquent. As a teenager, he channeled his defiance into running, discovering a prodigious talent that had carried him to the Berlin Olympics. But when World War II began, the athlete became an airman, ', 'DVD', '2014-07-29'),
(584367, 'Catching Fire (The Hunger Games)', 2, 3, 'https://images-na.ssl-images-amazon.com/images/I/51IufOs4JTL._SX339_BO1,204,203,200_.jpg', NULL, 'Against all odds, Katniss Everdeen has won the annual Hunger Games with fellow district tribute Peeta Mellark. But it was a victory won by defiance of the Capitol and their harsh rules...', 'Book', '2001-09-01'),
(675233, 'StrengthsFinder 2.0', 3, 2, 'https://images-na.ssl-images-amazon.com/images/I/51SdxC2moVL._SX360_BO1,204,203,200_.jpg', NULL, 'Chances are, you don\'t. All too often, our natural talents go untapped. From the cradle to the cubicle, we devote more time to fixing our shortcomings than to developing our strengths...', 'CD', '2007-02-14'),
(746582, 'All the Light We Cannot See: A Novel', 1, 2, 'https://images-na.ssl-images-amazon.com/images/I/51tjJGTkUhL._SX326_BO1,204,203,200_.jpg', NULL, 'From the highly acclaimed, multiple award-winning Anthony Doerr, the stunningly beautiful instant New York Times bestseller about a blind French girl and a German boy whose paths collide in occupied France as both try to survive the devastation of World W', 'CD', '2002-02-22'),
(826262, 'Who Moved My Cheese?', 3, 2, 'https://images-na.ssl-images-amazon.com/images/I/51fFDEkUyEL._SX321_BO1,204,203,200_.jpg', NULL, 'Most people are fearful of change, both personal and professional, because they don\'t have any control over how or when it happens to them...', 'CD', '1998-02-08'),
(953718, 'The Hunger Games', 2, 3, 'https://images-na.ssl-images-amazon.com/images/I/41ir9m8QQnL._SX332_BO1,204,203,200_.jpg', NULL, 'In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts... ', 'Book', '2010-02-22');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher` varchar(55) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher`, `address`, `size`) VALUES
(2, 'CD-DVD Publishing England', 'Publisher Street 24, 2325 London, Great Britain', 'big'),
(3, 'Vienna Books', 'Keplerplatz 12, 1010 Vienna, Austria', 'medium'),
(5, 'Paperback', 'Didn\'t-look-up-street, Texas, USA', 'big'),
(6, 'Harper Collins', 'Somehwere in the, State, USA', 'big');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(5, 'pascal', 'tonsern', '123@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indizes für die Tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `fk_author_id` (`fk_author_id`),
  ADD KEY `fk_publisher_id` (`fk_publisher_id`),
  ADD KEY `fk_user_id` (`fk_user_id`);

--
-- Indizes für die Tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`author_id`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publisher` (`publisher_id`),
  ADD CONSTRAINT `media_ibfk_3` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
