-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 04:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'JAVA'),
(3, 'HTML'),
(4, 'CSS'),
(7, 'Education'),
(8, 'MIM2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'tamim', 'shahriar', 'tamim@gmail.com', 'This is a test message', 1, '2022-11-04 13:30:31'),
(3, 'Akash', 'Akash', 'Akash@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industr', 1, '2022-11-04 15:59:26'),
(4, 'delowar', 'jahan', 'jahan@gmail.com', 'this is a test messsage', 0, '2022-11-04 16:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Copyright with tamim 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us 2', '<p><strong>TAMIM EXPRESS Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(2, 'Policy 2.0', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(3, 'DMCA', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(5, 'About Us 0', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(6, 'About Us 0', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(22, 8, '1', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/3491fd1efe.jpg', 'Magna ex occaecat pa', 'Voluptate fugiat nob', '2022-10-27 13:48:53', 9),
(26, 8, '2', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/f19582a614.jpg', 'editor', 'Rerum iure aut qui a', '2022-10-31 09:23:21', 9),
(28, 8, 'TAMIM\'S WEBSITE', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/a01cd66f77.jpg', 'admin', 'HTML', '2022-11-06 12:09:07', 9),
(29, 1, 'Lorem Ipsum', '<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>', 'upload/511ee071d5.jpg', 'admin', 'Lorem Ipsum', '2022-11-06 12:10:25', 0),
(30, 4, 'Lorem 2', '<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>', 'upload/ef509d5ee1.jpg', 'editor', 'Lorem 2', '2022-11-06 12:11:18', 0),
(31, 3, 'Lorem 3', '<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>', 'upload/e4d8ab8557.jpg', 'editor', '223', '2022-11-06 13:39:55', 0),
(32, 3, 'Lorem 5 ', '<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>', 'upload/da83208e95.jpg', 'author', '155', '2022-11-06 13:51:28', 0),
(33, 8, 'Lorem 6.', '<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>\r\n<p><strong>Lorem Ipsum</strong> &auml;r en utfyllnadstext fr&aring;n tryck- och f&ouml;rlagsindustrin. Lorem ipsum har varit standard &auml;nda sedan 1500-talet, n&auml;r en ok&auml;nd boks&auml;ttare tog att antal bokst&auml;ver och blandade dem f&ouml;r att g&ouml;ra ett provexemplar av en bok. Lorem ipsum har inte bara &ouml;verlevt fem &aring;rhundraden, utan &auml;ven &ouml;verg&aring;ngen till elektronisk typografi utan st&ouml;rre f&ouml;r&auml;ndringar. Det blev allm&auml;nt k&auml;nt p&aring; 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker</p>', 'upload/0ce96d67ad.jpg', 'editor', '15478', '2022-11-06 14:23:02', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'New Ttitle 1', 'upload/slider/d0452d0784.jpg'),
(3, 'Ttitle 3', 'upload/slider/968a120f7c.jpg'),
(4, 'Ttitle 4', 'upload/slider/0cf329ef2a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gg`) VALUES
(1, 'https://www.facebook.com/tamim', 'https://www.twitter.com/', 'https://www.linkedin.com/', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'Tamim', 'admin', '202cb962ac59075b964b07152d234b70', 'mim@gmail.com', '<p>Hey I am Tamim</p>', 0),
(6, 'tamim', 'editor', '202cb962ac59075b964b07152d234b70', 'tamim@gmail.com', '<p>tamim shahriar</p>', 2),
(7, '', 'editor', '202cb962ac59075b964b07152d234b70', '', '', 2),
(8, '', 'author2', '202cb962ac59075b964b07152d234b70', '', '', 1),
(9, '', 'author', '202cb962ac59075b964b07152d234b70', '', '', 1),
(10, 'new', 'admin2', '202cb962ac59075b964b07152d234b70', 'new123@gmail.com', '', 0),
(12, '', 'tamim2', '202cb962ac59075b964b07152d234b70', 'Akash12@gmail.com', '', 1),
(13, '', 'tamim5', '202cb962ac59075b964b07152d234b70', 'Akash12555@gmail.com', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'TAMIM\'S WEBSITE', 'SOFTWARE DEVELOPER', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
