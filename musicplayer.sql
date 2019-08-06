SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `musicplayer` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `musicplayer`;

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Born to Die', 1, 2, 'assets/images/artwork/borntodie.png'),
(2, 'Kamikaze', 5, 1, 'assets/images/artwork/Kamikaze.jpg'),
(3, 'Evolve', 3, 2, 'assets/images/artwork/Evolve.jpg'),
(4, 'My Dear Melancholy', 4, 3, 'assets/images/artwork/MyDearMelancholy.jpg'),
(5, 'Native', 2, 2, 'assets/images/artwork/Native.jpg');

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Lana Del Rey'),
(2, 'one republic'),
(3, 'Imagine Dragons'),
(4, 'The Weeknd'),
(5, 'Eminem');

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rap'),
(2, 'Pop'),
(3, 'R&B/Soul');

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Call Out My Name', 4, 4, 3, '3:48', 'assets/music/CallOutMyName.mp3', 1, 33),
(2, 'Believer', 3, 3, 2, '3:24', 'assets/music/Believer.mp3', 3, 30),
(3, 'Born to Die', 1, 1, 2, '4:46', 'assets/music/BorntoDie.mp3', 1, 81),
(4, 'Love Runs Out', 2, 5, 2, '4:04', 'assets/music/LoveRunsOut.mp3', 1, 34),
(5, 'The Ringer', 5, 2, 1, '5:37', 'assets/music/TheRinger.mp3', 1, 27),
(6, 'Dark Paradise', 1, 1, 2, '4:03', 'assets/music/DarkParadise.mp3', 2, 66),
(7, 'Carmen.mp3', 1, 1, 2, '4:08', 'assets/music/Carmen.mp3', 3, 44);

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `userName`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'majedBawarshi', 'Majed', 'Bawarshi', 'Majed@gmail.com', '3c1d3ca77a9407dd584ff951d38f05f4', '2018-12-18 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'majdbawarshi1', 'Majd', 'Majd', 'Majdbawarshi1@gmail.com', '14a81fa2f00f01fc3d2160857eced48d', '2018-12-19 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'majedBawarshi2', 'Majed', 'Bawarshi', 'Majedbawarshi@gmail.com', 'cdab45d0a5fdc08aa46bf2567f688f0d', '2018-12-20 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(4, 'hasan', 'Sidawi', 'Haji', 'Hasan@gmail.com', 'dcad772c312c884896f70b0fc6673640', '2018-12-20 00:00:00', 'assets/images/profile-pics/head_emerald.png');


ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
