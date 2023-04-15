-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 03:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be18_cr6_bigeventsnazilaazabdaftar`
--
CREATE DATABASE IF NOT EXISTS `be18_cr6_bigeventsnazilaazabdaftar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be18_cr6_bigeventsnazilaazabdaftar`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230414092024', '2023-04-14 11:20:52', 1239);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `description`, `image`, `capacity`, `email`, `phone`, `address`, `url`, `type`) VALUES
(1, '200 Years of J. & L. Lobmeyr', '2023-04-14 11:33:13', 'Crystal glass manufacturer J. & L. Lobmeyr was among the best-known participants in the 1873 Vienna World\'s Fair and celebrated great success there. Company founder Ludwig Lobmeyr received numerous awards for his designs and also sat on the judging panel ', 'https://events.wien.info/media/full/Lobmeyr_Gesch%C3%A4ft.jpg', 200, 'dcaplan0@walmart.com', '639-935-0315', 'Kärntner Straße 26,1010 Wien', 'http://google.es/ut.jpg?condimentum=aenean&id=fermentum&luctus=donec&nec=ut&molestie=mauris&sed=eget&justo=massa&pellentesque=tempor&viverra=convallis&pede=nulla&ac=neque&diam=libero&cras=convallis&pellentesque=eget&volutpat=eleifend&dui=luctus&maecenas=u', 'Design'),
(2, 'Alex Katz - Cool Painting', '2023-04-15 11:35:00', 'One year after the 95th birthday of Alex Katz, the ALBERTINA Museum presents a comprehensive tribute to this artist from the rich holdings of its collection.', 'https://events.wien.info/media/full/Alex_Katz.jpg', 150, 'awailes1@blogtalkradio.com', '594-467-3316', 'Albertinaplatz 1,1010 Wien', 'http://wsj.com/ipsum/aliquam/non/mauris/morbi/non.xml?morbi=ullamcorper&a=augue&ipsum=a&integer=suscipit&a=nulla&nibh=elit&in=ac&quis=nulla&justo=sed', 'Painting'),
(3, 'Ballet: Ein Deutsches Requiem', '2023-04-16 11:35:52', 'This ballet is not an ascent to Heaven, instead it uses a powerful movement vocabulary firmly rooted on the earth to demonstrate just how much human beings – even in the midst of life – are faced with the shadow of death. However, this dance piece also co', 'https://events.wien.info/media/full/40558_1.jpg', 100, 'travenscroft2@nytimes.com', '487-495-3948', 'Währinger Straße 78,1090 Wien', 'http://barnesandnoble.com/eget.jsp?ac=sodales&diam=sed&cras=tincidunt&pellentesque=eu&volutpat=felis&dui=fusce&maecenas=posuere&tristique=felis&est=sed&et=lacus&tempus=morbi&semper=sem&est=mauris&quam=laoreet&pharetra=ut&magna=rhoncus&ac=aliquet&consequat', 'Theater'),
(4, 'Der große Diktator', '2023-04-18 11:38:06', 'Die Männer, die heute die Menschlichkeit mit Füßen treten, werden nicht immer da sein. Ihre Grausamkeit stirbt mit ihnen und auch ihr Hass.\r\nDer jüdische Barbier.', 'https://events.wien.info/media/full/Kammerspiele_der_Josefstadt_kl_Zuschauerraum_c_AstridKnie_1.jpg', 100, 'rforrestor3@artisteer.com', '392-456-0746', 'Rotenturmstraße 20,1010 Wien', 'https://seesaa.net/eget/congue/eget/semper/rutrum/nulla/nunc.html?massa=turpis&tempor=donec&convallis=posuere&nulla=metus&neque=vitae&libero=ipsum&convallis=aliquam&eget=non&eleifend=mauris&luctus=morbi&ultricies=non&eu=lectus&nibh=aliquam&quisque=sit&id=', 'Theater'),
(5, 'Guided Tours', '2023-04-17 11:38:18', 'Meeting point for the guided tour: directly at the Visitor Centre, 5 minutes before the guided tour starts.\r\nGuided tours will take place on the indicated dates at 13.00, 14.00, 15.00 and 16.00.\r\nDuration: about 60 minutes', 'https://events.wien.info/media/full/Pferd_in_Box_c_Spanische_Hofreitschule_Michael_Rzepa.jpg', 50, 'drivilis4@go.com', '611-860-5011', 'Michaelerplatz 1,1010 Wien', 'http://google.co.uk/a/suscipit/nulla/elit/ac/nulla/sed.jsp?platea=erat&dictumst=nulla&aliquam=tempus&augue=vivamus&quam=in&sollicitudin=felis&vitae=eu&consectetuer=sapien&eget=cursus&rutrum=vestibulum&at=proin&lorem=eu&integer=mi&tincidunt=nulla&ante=ac&v', 'Classic'),
(8, 'Vienna State Ballet', '2023-05-15 10:00:00', 'The virtuoso Vienna State Ballet dances on two stages at once: At the Vienna State Opera and the Volksoper, it gets the audience dreaming and fantasizing, reveling and marveling, laughing and crying.', 'https://www.wien.info/resource/image/317566/3x2/894/595/c68cdec7661485af2f5ec18b3a70d8ab/1B4F0FAAC5CD953F918F56BAE2E9A3F1/wiener-staatsballett-volksoper-wien.webp', 1200, 'tickets@volksoper.at', '+43 1 514 44 2250 (Information)', 'Opernring 2, 1010 Vienna', 'http://www.wiener-staatsoper.at', 'Dance');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
