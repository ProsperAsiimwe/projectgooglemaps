-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 30, 2017 at 11:03 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `8Tech_C.I_1`
--
CREATE DATABASE IF NOT EXISTS `8Tech_C.I_1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `8Tech_C.I_1`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE `tbl_info` (
  `user_id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`user_id`, `first_name`, `last_name`, `email`) VALUES
(1, 'Prosper', 'Asiimwe', 'prox6@live.com'),
(2, 'Kado', 'Arineitwe', 'prox0591@gmail.com'),
(3, 'Romelu', 'Lukaku', 'rokaku@hotmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `AnthonyWedsViola`
--
CREATE DATABASE IF NOT EXISTS `AnthonyWedsViola` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `AnthonyWedsViola`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_pass` varchar(200) NOT NULL,
  `user_duty` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `user_name`, `user_pass`, `user_duty`) VALUES
(1, 'prosper', '1234', 'member'),
(2, 'viola', '1234', 'bride');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inquiries`
--

CREATE TABLE `tbl_inquiries` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `inquiry` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inquiries`
--

INSERT INTO `tbl_inquiries` (`user_id`, `name`, `email`, `contact`, `inquiry`) VALUES
(2, 'Mr.Oleme David', 'olemadavid@gmail.com', '0772549612', 'I am a relative from Arua. I want to know how the transport shall be organised.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `name`, `email`, `contact`) VALUES
(4, 'Mr. Jeorge Olomide', 'jolo@gmail.com', '078693214');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_inquiries`
--
ALTER TABLE `tbl_inquiries`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_inquiries`
--
ALTER TABLE `tbl_inquiries`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `UCDA`
--
CREATE DATABASE IF NOT EXISTS `UCDA` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `UCDA`;
--
-- Database: `admindashboard`
--
CREATE DATABASE IF NOT EXISTS `admindashboard` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `admindashboard`;
--
-- Database: `arf`
--
CREATE DATABASE IF NOT EXISTS `arf` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `arf`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `query_id` int(32) DEFAULT NULL,
  `person_name` varchar(32) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `commented_by` varchar(100) NOT NULL,
  `time_stamp` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `description`, `query_id`, `person_name`, `email`, `commented_by`, `time_stamp`) VALUES
(4, 'jjj', 6, 'System Admin', '', '', '16-05-2017');

-- --------------------------------------------------------

--
-- Table structure for table `crop_varieties`
--

CREATE TABLE `crop_varieties` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `crop_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_varieties`
--

INSERT INTO `crop_varieties` (`id`, `name`, `crop_id`) VALUES
(1, 'small rice grains', 41),
(2, 'Yellow grains', 42);

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `period` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`id`, `name`, `period`) VALUES
(41, 'Rice', 7),
(42, 'GreenGram', 5);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `token` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`) VALUES
(1, 'Lira'),
(2, 'Soroti'),
(3, 'Gulu'),
(11, 'bukedea'),
(12, 'Lira');

-- --------------------------------------------------------

--
-- Table structure for table `english_queries`
--

CREATE TABLE `english_queries` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(800) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `problem_persistance` varchar(100) NOT NULL,
  `action_taken` varchar(1000) NOT NULL,
  `multimedia` varchar(200) DEFAULT NULL,
  `audio` varchar(500) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `geo_coodinates` varchar(32) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `farmer_id` int(32) DEFAULT NULL,
  `time_stamp` varchar(32) DEFAULT NULL,
  `non_english_id` int(11) DEFAULT NULL,
  `response_status` int(11) DEFAULT '0',
  `query_sender` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `english_queries`
--

INSERT INTO `english_queries` (`id`, `title`, `description`, `category_id`, `problem_persistance`, `action_taken`, `multimedia`, `audio`, `photo`, `language_id`, `geo_coodinates`, `district_id`, `farmer_id`, `time_stamp`, `non_english_id`, `response_status`, `query_sender`) VALUES
(1, 'Growth of disease resistant banana plants', 'The government has provided these plants which are resistant to the diseases but we having one challenge During the dry period they tend to loose a lot of water hence drying up compared to out previous plants which even go through the season without watering them.   ', 3, 'Two years', 'We have tried to submit our query to the regional agricultural officer ', NULL, '', 'DSC_0491.JPG', 1, '2.7753209,32.2529403', 2, 83, '10-05-2017', NULL, 1, 0),
(2, 'Banana plant stem disease', 'Here in Bugaba,We are facing the problem of banana disease which attacks the stems, so when the wind comes the plant falls down,and this has really costed us we are loosing a lot of money.', 3, '', 'we have desided to cut down these plants which are sick', NULL, '', '27.jpg', 1, '2.7753209,31.1673538', 2, 83, '10-05-2017', NULL, 0, 0),
(3, 'larvae Of the inserts ', 'larvae of inserts love the fresh leaves of the green gram leaves,so my question is should l spray them with pesticides or they will just go by themselves.But most of my fellow farmers are advising me to just leave them.', 4, 'its now seven months', 'no action taken yet', NULL, '', '920x920.jpg', 1, '2.852132,34.3621863', 2, 83, '10-05-2017', NULL, 0, 0),
(4, 'cabbage snails ', 'These snails are eating the top leaves of the cabbage ', 4, '', '', NULL, '', 'protect-your-garden-from-pests.jpg', 1, '3.4152388,32.957158', 2, 83, '10-05-2017', NULL, 0, 0),
(5, 'Green gram pods turning black', 'The pods are turning black and this leads to seeds rotting in the pods', 3, '', '', NULL, '', 'farm05+pix.jpg', 1, '3.4152388,32.1167039', 2, 83, '10-05-2017', NULL, 0, 0),
(6, 'Onion Under growth', 'I though the onions gardens do not have enough fertility but l added fertilizers but am still facing the same problem ', 3, '', 'i have added fertilizers in the gardens', NULL, '', 'Onion_Smut.jpg', 1, '3.601656,32.6253793', 2, 83, '10-05-2017', NULL, 0, 0),
(7, 'My tomatoes rotting ', 'l haven''t faced this kind of problem before but since the tomatoes started putting on flowers the rotting started since then.please l need some help!!! ', 3, 'five months', 'no action l have taken', NULL, '', 'Late-Blight-B-e1433576243697-637x320.jpg', 1, '3.601656,33.5152723', 2, 83, '10-05-2017', NULL, 0, 0),
(8, 'Low market for irish potatoes', 'We spend even two days without anyone buying.And its even very cheap a 100 kg bag is at 150,000/=', 5, '', '', NULL, '', 'Potatoes.jpg', 1, '2.248519,32.8563514', 2, 83, '10-05-2017', NULL, 0, 0),
(9, 'Bad Weather For Cocoa ', 'bad weather has reduced our production of cocoa in Elgon', 6, '', '', NULL, '', 'ghanastar_2016-05-30_04-04-55.jpg', 1, NULL, 0, 83, '11-05-2017', NULL, 0, 0),
(10, 'Thieves On The Gardens', 'we are facing the challenge of thieves who take our produce on the gardens', 4, '', '', NULL, '', '759778.png', 1, '2.954527,32.6034073', 0, 83, '11-05-2017', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `english_response`
--

CREATE TABLE `english_response` (
  `id` int(11) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `query_id` int(11) DEFAULT NULL,
  `translated_status` int(11) DEFAULT '0',
  `time_stamp` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `english_response`
--

INSERT INTO `english_response` (`id`, `description`, `query_id`, `translated_status`, `time_stamp`) VALUES
(1, 'We have checked with the people who supplied the plant, they were saying that you were given precautions to follow will playing, which one of them was to dig 2meters in the ground before planting so that is why ur facing that kind of problem.', 1, 0, '16-05-2017'),
(2, NULL, 0, 0, '16-05-2017');

-- --------------------------------------------------------

--
-- Table structure for table `experts`
--

CREATE TABLE `experts` (
  `id` int(11) NOT NULL,
  `expertise` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(800) NOT NULL,
  `answer` varchar(800) NOT NULL,
  `time_stamp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `time_stamp`) VALUES
(1, 'what is erignu?', 'ERIGNU is aproject which is under makerere university empowering farmer from northern Uganda', ''),
(2, 'What are some of the ways of developing agricultural sector in Uganda?', 'Through the farmers themselves agriculture can be boosted to higher levels as increasing the export rate of agricultural products ', '');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_groups`
--

CREATE TABLE `farmer_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `district_id` varchar(32) DEFAULT NULL,
  `chair_person` varchar(50) DEFAULT NULL,
  `contact` varchar(32) DEFAULT NULL,
  `time_stamp` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer_groups`
--

INSERT INTO `farmer_groups` (`id`, `name`, `district_id`, `chair_person`, `contact`, `time_stamp`) VALUES
(1, 'Soroti farmers Association', '2', 'Peter Akao', '0753423445', '10-05-2017');

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `id` int(11) NOT NULL,
  `martial_status` varchar(32) DEFAULT NULL,
  `gender` varchar(32) DEFAULT NULL,
  `age` int(32) DEFAULT NULL,
  `contact` varchar(32) DEFAULT NULL,
  `district_id` varchar(32) DEFAULT NULL,
  `town` varchar(32) DEFAULT NULL,
  `geo_location` varchar(50) DEFAULT NULL,
  `farmer_group_id` int(11) DEFAULT NULL,
  `user_id` int(32) DEFAULT NULL,
  `time_stamp` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`id`, `martial_status`, `gender`, `age`, `contact`, `district_id`, `town`, `geo_location`, `farmer_group_id`, `user_id`, `time_stamp`) VALUES
(1, NULL, 'male', 27, '0703626285', '2', 'soroti', NULL, 0, 83, '10-05-2017'),
(2, NULL, 'male', 23, '0757222322', '2', 'Soroti', NULL, 1, 90, '01-08-2017');

-- --------------------------------------------------------

--
-- Table structure for table `gardens`
--

CREATE TABLE `gardens` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `size` int(32) DEFAULT NULL,
  `garden_units` varchar(32) DEFAULT NULL,
  `ownership` varchar(32) DEFAULT NULL,
  `soil_analysis` varchar(200) DEFAULT NULL,
  `climate` varchar(150) DEFAULT NULL,
  `crop_id` int(11) DEFAULT NULL,
  `season_id` int(32) DEFAULT NULL,
  `planted_quatity` int(11) DEFAULT NULL,
  `unit` varchar(32) DEFAULT NULL,
  `planting_date` varchar(32) DEFAULT NULL,
  `land_id` int(11) DEFAULT NULL,
  `geo_coodinates` varchar(32) DEFAULT NULL,
  `time_stamp` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gardens`
--

INSERT INTO `gardens` (`id`, `name`, `size`, `garden_units`, `ownership`, `soil_analysis`, `climate`, `crop_id`, `season_id`, `planted_quatity`, `unit`, `planting_date`, `land_id`, `geo_coodinates`, `time_stamp`) VALUES
(1, 'Cassava Garden', 23, 'Acres', 'farmer', 'good soil analysis', 'Not bad', 41, 3, 23, 'Bags', '18/05/2017', 2, '0.34759639999999997,32.5825197', '16-05-2017'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '16-05-2017'),
(3, 'Rice Garden', 5, 'Acres', 'farmer', 'Good soil', 'Not bad', 41, 4, 23, 'Kgs', '08/08/2017', 6, '0.34759639999999997,32.5825197', '01-08-2017'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '01-08-2017');

-- --------------------------------------------------------

--
-- Table structure for table `how_it_works`
--

CREATE TABLE `how_it_works` (
  `id` int(11) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `time_stamp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `how_it_works`
--

INSERT INTO `how_it_works` (`id`, `description`, `time_stamp`) VALUES
(3, '<h3><strong>Query system</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Submting query process</p>\r\n</blockquote>\r\n\r\n<ol>\r\n	<li>Farmer registration via either the web system or the mobile application</li>\r\n	<li>To ask a farming question,farmers go to the post query link&nbsp; or button either using the mobile application;</li>\r\n	<li>Type the question title of the query, detailed description of the problem then also enter the how long has the problem persisted&nbsp; and the action the that your already taken that is if any(this is helpes the experts to easily determine the best solution);</li>\r\n	<li>The system will require you to select your location district in addition to that we also pick the geo-coodinates of the current location to determine where the query is coming from.</li>\r\n	<li>someone may want to description his problem through an audio then he/she should use the record buttons</li>\r\n	<li>Lastly attach the photo of the query by either selecting it from the gallery or use the camera to take the photo. Submit the query.</li>\r\n</ol>\r\n\r\n<blockquote>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Query Evaluation</p>\r\n</blockquote>\r\n\r\n<ol>\r\n	<li>The extension(Translator) officer gets notified of the new queries that is if the queries are not in English then translates them to English</li>\r\n	<li>Expert receives all the queries either from the extension officer or the farmer him/herself.</li>\r\n	<li>Here the expert responds to all the queries accordingly. And push all the responses back to the farmers as the solution to their problems.</li>\r\n	<li>In addition there are some farmers who have ever&nbsp; faced the same challenges so they can comment(give their view and solution).</li>\r\n</ol>\r\n\r\n<h3><strong>Garden mapping</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p>Garden mapping steps</p>\r\n</blockquote>\r\n\r\n<ol>\r\n	<li>A registered farmer uses the mobile application to map the a land</li>\r\n	<li>Now the farmer adds the land, its size and geo-ordinates are also picked</li>\r\n	<li>In this land the farmer has got the gardens.</li>\r\n	<li>One has to add the gardens,name of the garden,size,type of crop grown,season lastly the planting date</li>\r\n	<li>Planting dates help us to understand how much will be readly of that particular crop at some time in the future.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `input_products`
--

CREATE TABLE `input_products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(800) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `input_provider_id` int(11) DEFAULT NULL,
  `time_stamp` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `input_products`
--

INSERT INTO `input_products` (`id`, `name`, `description`, `category_id`, `price`, `product_image`, `input_provider_id`, `time_stamp`) VALUES
(2, 'Turf Builder', 'This is a very good Fertilizer. ', 7, 50000, '032247223058.jpg', 88, '01-08-2017'),
(3, 'Slasher ', 'Its Good,and Has no effect in the soil', 6, 20000, 'download.jpg', 88, '01-08-2017');

-- --------------------------------------------------------

--
-- Table structure for table `input_providers`
--

CREATE TABLE `input_providers` (
  `id` int(11) NOT NULL,
  `contact` varchar(32) DEFAULT NULL,
  `district_id` varchar(32) DEFAULT NULL,
  `town` varchar(32) DEFAULT NULL,
  `geo_location` varchar(32) DEFAULT NULL,
  `time_stamp` varchar(32) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `input_providers`
--

INSERT INTO `input_providers` (`id`, `contact`, `district_id`, `town`, `geo_location`, `time_stamp`, `user_id`) VALUES
(1, '', '2', 'Soroti', NULL, '16-05-2017', 86),
(2, '', '11', 'Bukedea', NULL, '16-05-2017', 87),
(3, '0706756665', '3', 'Gulu town', NULL, '16-05-2017', 88);

-- --------------------------------------------------------

--
-- Table structure for table `land`
--

CREATE TABLE `land` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `size` int(32) DEFAULT NULL,
  `units` varchar(32) DEFAULT NULL,
  `ownership` varchar(32) DEFAULT NULL,
  `owner_id` int(32) DEFAULT NULL,
  `geo_coodinates` varchar(32) DEFAULT NULL,
  `district_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land`
--

INSERT INTO `land` (`id`, `name`, `size`, `units`, `ownership`, `owner_id`, `geo_coodinates`, `district_id`) VALUES
(2, 'Zone I', 12, 'Acres', 'farmer', 83, '0.3425336,32.5628675', '2'),
(3, 'Zone II', 34, 'Acres', 'farmer', 83, '0.3425336,32.5628675', '11'),
(4, 'kjkjedf', 333, 'Acres', 'group', 1, '0.3425178,32.5628828', '1'),
(5, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(6, 'Zone IV Land', 7, 'Acres', 'farmer', 90, '0.34759639999999997,32.5825197', '2');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`) VALUES
(1, 'English'),
(2, 'Luo'),
(3, 'Luganda'),
(4, 'Luyoro kitara');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_phones`
--

CREATE TABLE `mobile_phones` (
  `id` int(11) NOT NULL,
  `firebase_id` varchar(400) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `non_english_queries`
--

CREATE TABLE `non_english_queries` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `problem_persistance` varchar(100) NOT NULL,
  `action_taken` varchar(1000) NOT NULL,
  `multimedia` varchar(200) DEFAULT NULL,
  `audio` varchar(200) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `geo_coodinates` varchar(32) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `farmer_id` int(11) DEFAULT NULL,
  `time_stamp` varchar(32) DEFAULT NULL,
  `translated_status` int(11) DEFAULT '0',
  `response_status` int(11) DEFAULT NULL,
  `query_sender` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `non_englsih_response`
--

CREATE TABLE `non_englsih_response` (
  `id` int(11) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `query_id` int(11) DEFAULT NULL,
  `multimedia` varchar(32) DEFAULT NULL,
  `time_stamp` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `open_market`
--

CREATE TABLE `open_market` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(800) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` varchar(150) DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `full_name` varchar(300) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `location` varchar(300) NOT NULL,
  `time_stamp` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `open_market`
--

INSERT INTO `open_market` (`id`, `name`, `description`, `category_id`, `price`, `product_image`, `full_name`, `contact`, `location`, `time_stamp`) VALUES
(1, 'Manual farm waterPump', 'stop worrying about the expenses on irrigation manual pump has brought the solution for you, this machine does not require fuel of electricity but human power which is not very expensive and other thing it can push water up to a distance of 1km. please buy one and start enjoying ', 5, '3,500,000', 'global-health-odyssey-388974-o.jpg', 'Tugume patrict', '0746285837', '3', '10-05-2017'),
(2, 'Good fertilizers', 'l have got all kinds fertilizers very good quality and an affordable price. please come and we talk business. ', 7, '40,000', 'fert.png', 'Akao saul', '0705932875', '11', '10-05-2017'),
(3, 'Weedcides', 'all kinds of Weedcide available in the shop ', 8, '24,000', 'fertilizer.png', 'Opio peter', '0737888674', '12', '10-05-2017'),
(5, 'Brand new tractors', 'Japan made tractors, with less fuel consumption', 5, '250000000', '2829642_1.jpg', 'Kibuka Amos', '0788459721', '', '11-05-2017'),
(6, 'ploughing machine', 'this machine does plowing and planting of both land seedlings', 5, '100000000', '31642_1.jpg', 'Jack Lawrence', '0755168142', '3', '11-05-2017');

-- --------------------------------------------------------

--
-- Table structure for table `output_products`
--

CREATE TABLE `output_products` (
  `id` int(11) NOT NULL,
  `crop_id` int(11) DEFAULT NULL,
  `buying_freq` varchar(32) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `units` varchar(32) DEFAULT NULL,
  `output_provider_id` int(11) DEFAULT NULL,
  `time_stamp` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `output_products`
--

INSERT INTO `output_products` (`id`, `crop_id`, `buying_freq`, `qty`, `units`, `output_provider_id`, `time_stamp`) VALUES
(1, 42, 'Monthly', 500, '50kg Bags', 40, '13/03/2017'),
(2, 41, 'Weekly', 200, 'Weekly', 40, '13/03/2017'),
(3, 42, 'Monthly', 500, '50kg Bags', 40, '13/03/2017');

-- --------------------------------------------------------

--
-- Table structure for table `output_providers`
--

CREATE TABLE `output_providers` (
  `id` int(11) NOT NULL,
  `contact` varchar(32) DEFAULT NULL,
  `district_id` varchar(32) DEFAULT NULL,
  `town` varchar(32) DEFAULT NULL,
  `geo_coodinates` varchar(32) DEFAULT NULL,
  `time_stamp` varchar(32) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`) VALUES
(5, 'machinery'),
(6, 'Pesticides'),
(7, 'Fertilizers'),
(8, 'Weedcide');

-- --------------------------------------------------------

--
-- Table structure for table `provider_product_cats`
--

CREATE TABLE `provider_product_cats` (
  `id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider_product_cats`
--

INSERT INTO `provider_product_cats` (`id`, `provider_id`, `category_id`) VALUES
(1, 86, 6),
(2, 86, 8),
(4, 87, 5),
(5, 87, 6),
(6, 88, 6);

-- --------------------------------------------------------

--
-- Table structure for table `query_category`
--

CREATE TABLE `query_category` (
  `id` int(11) NOT NULL,
  `category` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query_category`
--

INSERT INTO `query_category` (`id`, `category`) VALUES
(3, 'Diseases'),
(4, 'Pests'),
(5, 'Market'),
(6, 'Climate'),
(7, 'Soil');

-- --------------------------------------------------------

--
-- Table structure for table `query_sender`
--

CREATE TABLE `query_sender` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'expert'),
(3, 'translator'),
(4, 'farmer'),
(6, 'input provider'),
(7, 'output provider');

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` int(11) NOT NULL,
  `period` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `period`) VALUES
(3, 'Jan-June'),
(4, 'June-Aug');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `role_id` int(32) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `time_stamp` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `firstName`, `lastName`, `phone`, `email`, `username`, `password`, `role_id`, `photo`, `time_stamp`) VALUES
(1, 'System', 'Admin', '', '', 'admin', '123456', 1, 'avatar3.jpg', NULL),
(83, 'Tumusime ', 'Robert', '', '', 'bob', '123456', 4, 'IMAGE_168.jpg', '10-05-2017'),
(85, 'Namanya', 'Abert', '', '', 'abert', 'abert2.', 3, 'IMG_20170509_1847002.jpg', '16-05-2017'),
(87, 'Tugume', 'Patrick', '', '', 'patrick', '123456', 6, 'IMG_20170509_1847003.jpg', '16-05-2017'),
(88, 'Murunzi', 'Kenneth', '', '', 'ken', '123456', 6, 'kennthe.jpg', '16-05-2017'),
(89, 'Muhumuza', 'Bob', '', '', 'bob2', '123456', 2, 'bob.jpg', '16-05-2017'),
(90, 'Okello', 'Peter', '', '', 'Peter', '123456', 4, 'okello.jpg', '01-08-2017');

-- --------------------------------------------------------

--
-- Table structure for table `translators`
--

CREATE TABLE `translators` (
  `id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `translators`
--

INSERT INTO `translators` (`id`, `language_id`, `user_id`) VALUES
(1, 2, 85);

-- --------------------------------------------------------

--
-- Table structure for table `value_chain`
--

CREATE TABLE `value_chain` (
  `id` int(11) NOT NULL,
  `stage` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop_varieties`
--
ALTER TABLE `crop_varieties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `english_queries`
--
ALTER TABLE `english_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `english_response`
--
ALTER TABLE `english_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experts`
--
ALTER TABLE `experts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer_groups`
--
ALTER TABLE `farmer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gardens`
--
ALTER TABLE `gardens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_it_works`
--
ALTER TABLE `how_it_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `input_products`
--
ALTER TABLE `input_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `input_providers`
--
ALTER TABLE `input_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `land`
--
ALTER TABLE `land`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_phones`
--
ALTER TABLE `mobile_phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `non_english_queries`
--
ALTER TABLE `non_english_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `non_englsih_response`
--
ALTER TABLE `non_englsih_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `open_market`
--
ALTER TABLE `open_market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `output_products`
--
ALTER TABLE `output_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `output_providers`
--
ALTER TABLE `output_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_product_cats`
--
ALTER TABLE `provider_product_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query_category`
--
ALTER TABLE `query_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query_sender`
--
ALTER TABLE `query_sender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translators`
--
ALTER TABLE `translators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_chain`
--
ALTER TABLE `value_chain`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `crop_varieties`
--
ALTER TABLE `crop_varieties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `english_queries`
--
ALTER TABLE `english_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `english_response`
--
ALTER TABLE `english_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `experts`
--
ALTER TABLE `experts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `farmer_groups`
--
ALTER TABLE `farmer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gardens`
--
ALTER TABLE `gardens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `how_it_works`
--
ALTER TABLE `how_it_works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `input_products`
--
ALTER TABLE `input_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `input_providers`
--
ALTER TABLE `input_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `land`
--
ALTER TABLE `land`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mobile_phones`
--
ALTER TABLE `mobile_phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `non_english_queries`
--
ALTER TABLE `non_english_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `non_englsih_response`
--
ALTER TABLE `non_englsih_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `open_market`
--
ALTER TABLE `open_market`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `output_products`
--
ALTER TABLE `output_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `output_providers`
--
ALTER TABLE `output_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `provider_product_cats`
--
ALTER TABLE `provider_product_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `query_category`
--
ALTER TABLE `query_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `query_sender`
--
ALTER TABLE `query_sender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `translators`
--
ALTER TABLE `translators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `value_chain`
--
ALTER TABLE `value_chain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `mapping`
--
CREATE DATABASE IF NOT EXISTS `mapping` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mapping`;

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `lat` varchar(200) NOT NULL,
  `lng` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`) VALUES
(1, 'Gaaba Road - Bodaboda Stage', 'Kampala', '0.297874', '32.600341'),
(2, 'Kataba - Bodaboda stage', 'Kampala', '0.298196', '32.600706');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `munakampala`
--
CREATE DATABASE IF NOT EXISTS `munakampala` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `munakampala`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accidents`
--

CREATE TABLE `tbl_accidents` (
  `id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `lat` varchar(200) NOT NULL,
  `lng` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_accidents`
--

INSERT INTO `tbl_accidents` (`id`, `description`, `photo`, `lat`, `lng`) VALUES
(1, 'Tourists seriously injured in head on collision. 2 fatally injured and 1 dead.  ', 'pick of accident', '0.315768', '32.576085'),
(2, 'Child knocked by car. Hit and ran driver of toyota harrier UAZ 256L (Black)', 'pick of accident', '0.315514', '32.581674');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_drainageissues`
--

CREATE TABLE `tbl_drainageissues` (
  `id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `lat` varchar(200) NOT NULL,
  `lng` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_drainageissues`
--

INSERT INTO `tbl_drainageissues` (`id`, `description`, `photo`, `lat`, `lng`) VALUES
(1, 'Open manhole with sewage gushing out', 'pick of manhole', '0.25525', '32.5525265');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_electricalfaults`
--

CREATE TABLE `tbl_electricalfaults` (
  `id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `lat` varchar(200) NOT NULL,
  `lng` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_electricalfaults`
--

INSERT INTO `tbl_electricalfaults` (`id`, `description`, `photo`, `lat`, `lng`) VALUES
(1, 'Fallen electricity pole', 'pick of electric pole', '32.52652', '0.25255');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roaddamages`
--

CREATE TABLE `tbl_roaddamages` (
  `id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `lat` varchar(200) NOT NULL,
  `lng` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roaddamages`
--

INSERT INTO `tbl_roaddamages` (`id`, `description`, `photo`, `lat`, `lng`) VALUES
(1, 'Very big potholes', 'pick of potholes', '20.14525', '0.00585');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanitation`
--

CREATE TABLE `tbl_sanitation` (
  `id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `lat` varchar(200) NOT NULL,
  `lng` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sanitation`
--

INSERT INTO `tbl_sanitation` (`id`, `description`, `photo`, `lat`, `lng`) VALUES
(1, 'Full rubbish bin in the city center that has started smelling for the public', 'pick of dustbin', '0.23652', '-32.154525');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accidents`
--
ALTER TABLE `tbl_accidents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_drainageissues`
--
ALTER TABLE `tbl_drainageissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_electricalfaults`
--
ALTER TABLE `tbl_electricalfaults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roaddamages`
--
ALTER TABLE `tbl_roaddamages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sanitation`
--
ALTER TABLE `tbl_sanitation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accidents`
--
ALTER TABLE `tbl_accidents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_drainageissues`
--
ALTER TABLE `tbl_drainageissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_electricalfaults`
--
ALTER TABLE `tbl_electricalfaults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_roaddamages`
--
ALTER TABLE `tbl_roaddamages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_sanitation`
--
ALTER TABLE `tbl_sanitation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"projectgooglemaps","table":"tbl"},{"db":"munakampala","table":"tbl_accidents"},{"db":"mapping","table":"markers"},{"db":"AnthonyWedsViola","table":"tbl_inquiries"},{"db":"AnthonyWedsViola","table":"tbl_user"},{"db":"munakampala","table":"tbl_roaddamages"},{"db":"munakampala","table":"tbl_sanitation"},{"db":"munakampala","table":"tbl_electricalfaults"},{"db":"munakampala","table":"tbl_drainageissues"},{"db":"potato","table":"users"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'AnthonyWedsViola', 'tbl_admin', '[]', '2017-08-22 18:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-07-07 15:12:08', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `potato`
--
CREATE DATABASE IF NOT EXISTS `potato` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `potato`;

-- --------------------------------------------------------

--
-- Table structure for table `certification_requests`
--

CREATE TABLE `certification_requests` (
  `request_id` int(11) NOT NULL,
  `trained_status` int(11) DEFAULT NULL,
  `garden_id` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0' COMMENT '0 request not processed 1 request processed',
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certification_requests`
--

INSERT INTO `certification_requests` (`request_id`, `trained_status`, `garden_id`, `time_stamp`, `status`, `user_id`) VALUES
(5, 1, 7, '2017-08-01 11:12:10', 1, 3),
(6, 1, 10, '2017-08-02 08:00:10', 1, 4),
(8, 1, 12, '2017-08-09 09:15:44', 1, 6),
(14, 0, 9, '2017-08-21 03:24:14', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `approval` int(11) DEFAULT NULL,
  `order_order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `district_name`) VALUES
(1, 'Lira'),
(2, 'Arua');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_info`
--

CREATE TABLE `farmer_info` (
  `farmer_id` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gardens`
--

CREATE TABLE `gardens` (
  `garden_id` int(11) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `planting_date` date DEFAULT NULL,
  `gps` varchar(45) DEFAULT NULL,
  `purpose_id` int(11) NOT NULL,
  `certification_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 not certified 1 certified',
  `certification_date` date DEFAULT NULL,
  `ready_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 -not ready 1 ready ',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gardens`
--

INSERT INTO `gardens` (`garden_id`, `size`, `planting_date`, `gps`, `purpose_id`, `certification_status`, `certification_date`, `ready_status`, `user_id`) VALUES
(7, 37, '2017-07-20', '1.332,14.22', 1, 1, '2017-08-09', 1, 3),
(9, 69, '2017-07-20', '10.05,885.858', 4, 0, '2017-05-06', 1, 3),
(10, 45, '2017-08-10', '1.2,4.5', 1, 1, '2016-08-09', 0, 4),
(11, 4, '2017-08-12', '4.2,5.2', 1, 0, '2017-08-09', 1, 5),
(12, 60, '2017-08-25', '2.3,4.1', 4, 0, NULL, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `inspection_schedule`
--

CREATE TABLE `inspection_schedule` (
  `schedule_id` int(11) NOT NULL,
  `stage` int(11) DEFAULT NULL,
  `request_id` int(11) NOT NULL,
  `requirements_status` int(11) DEFAULT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `_who_inpected` int(11) DEFAULT NULL,
  `inspection_date` date NOT NULL,
  `inspection_status` int(11) DEFAULT '0' COMMENT '0 not inspected 1inspected'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inspection_schedule`
--

INSERT INTO `inspection_schedule` (`schedule_id`, `stage`, `request_id`, `requirements_status`, `comment`, `_who_inpected`, `inspection_date`, `inspection_status`) VALUES
(1, 1, 5, 1, 'Hello ', 3, '2017-08-01', 1),
(2, 2, 5, 1, 'The garden was well planed just as you see', 3, '2017-08-15', 1),
(3, 3, 5, 1, 'Yoo. The garden is ready to be certified. The observations indicate that every detail was considered.', 2, '2017-08-22', 1),
(4, 1, 9, 1, 'The garden has all the requirements met, ', 3, '2017-08-02', 1),
(5, 2, 9, 0, 'Requirements met now', 2, '2017-08-17', 1),
(6, 3, 9, 1, 'md', 3, '2017-08-23', 1),
(7, 1, 6, 1, 'The Garden is well spaced ', 2, '2017-08-11', 1),
(8, 2, 6, 1, 'dytfuyugiihj', 2, '2017-08-19', 1),
(9, 3, 6, 1, 'kmkmk dkkf', 2, '2017-08-26', 1),
(13, 1, 8, 1, 'jhghfdstfhgjhj', 2, '2017-08-18', 1),
(14, 2, 8, 0, NULL, NULL, '2017-08-26', 0),
(15, 3, 8, 0, NULL, NULL, '2017-09-24', 0),
(16, 1, 10, 0, NULL, NULL, '2017-08-09', 0),
(17, 2, 10, 0, NULL, NULL, '2017-08-25', 0),
(18, 3, 10, 0, NULL, NULL, '2017-09-07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `land_units`
--

CREATE TABLE `land_units` (
  `id` int(11) NOT NULL,
  `land_unit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land_units`
--

INSERT INTO `land_units` (`id`, `land_unit`) VALUES
(1, 'Acres');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `controller_name` varchar(100) NOT NULL,
  `menu_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `controller_name`, `menu_link`) VALUES
(1, 'User Management', '', '#'),
(2, 'Seeds', '', '#'),
(3, 'Gardens', 'garden', '#'),
(4, 'Extension Services', 'query', '#'),
(5, 'Menu Management', '', '#'),
(6, 'My Queries', '', '#'),
(7, 'Garden Certification', 'certificate', '#'),
(8, 'Ordering', '', '#'),
(9, 'Translation', '', '#'),
(10, 'Query Responding', '', '#'),
(11, 'Gardens Report', '', '#'),
(12, '', '', '#'),
(13, 'Orders', '', '#'),
(14, 'Gardens 2', '', '#');

-- --------------------------------------------------------

--
-- Table structure for table `menu_assignments`
--

CREATE TABLE `menu_assignments` (
  `assignmet_id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `user_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_assignments`
--

INSERT INTO `menu_assignments` (`assignmet_id`, `menu_id`, `user_group_id`) VALUES
(1, 1, 1),
(4, 2, 1),
(5, 3, 1),
(6, 4, 1),
(7, 5, 1),
(8, 6, 1),
(9, 7, 1),
(10, 8, 1),
(11, 9, 1),
(12, 6, 2),
(13, 10, 1),
(14, 10, 3),
(15, 11, 1),
(16, 3, 2),
(17, 8, 2),
(18, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `status` enum('pending','approved','serviced') DEFAULT NULL,
  `seed_type_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `qty`, `unit_id`, `order_date`, `status`, `seed_type_id`, `client_id`) VALUES
(1, '55', 1, '2017-08-11', 'approved', 4, 2),
(2, '45', 2, '2017-08-11', 'pending', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `planting_measurement`
--

CREATE TABLE `planting_measurement` (
  `id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `units_id` int(11) DEFAULT NULL,
  `land_size` int(11) DEFAULT NULL,
  `land_unit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `planting_measurement`
--

INSERT INTO `planting_measurement` (`id`, `qty`, `units_id`, `land_size`, `land_unit_id`) VALUES
(1, 2, 1, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `planting_recomendations`
--

CREATE TABLE `planting_recomendations` (
  `recomendation_id` int(11) NOT NULL,
  `seed_type_id` int(11) NOT NULL,
  `quantity_per_hectare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `planting_recomendations`
--

INSERT INTO `planting_recomendations` (`recomendation_id`, `seed_type_id`, `quantity_per_hectare`) VALUES
(1, 1, 20),
(3, 4, 45);

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `query_id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `query_detail` varchar(500) DEFAULT NULL,
  `gps` varchar(45) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `audio` varchar(150) DEFAULT NULL,
  `video` varchar(150) DEFAULT NULL,
  `query_categories_category_id` int(11) NOT NULL,
  `actions_taken` varchar(300) DEFAULT NULL,
  `period` varchar(50) DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `responce_status` enum('pending','responded_to') NOT NULL,
  `farmer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`query_id`, `title`, `query_detail`, `gps`, `photo`, `audio`, `video`, `query_categories_category_id`, `actions_taken`, `period`, `time_stamp`, `responce_status`, `farmer_id`) VALUES
(2, 'test2 changed ', 'i am just testing this functionality', '1.2,2.44', '', NULL, NULL, 2, 'none', '3 months', '2016-05-02 08:45:10', 'responded_to', 2),
(4, 'hello whey', 'This is just a sample query', '1.3,4.53', 'pest.jpg', NULL, NULL, 2, 'hello world', '3 weeks ', '2016-08-24 09:08:27', 'pending', 2),
(5, 'Test 7', 'This is just a test case don''t mind it ', '2.31,1.312', '', NULL, NULL, 3, 'Trying me out', '4 months', '2017-07-31 10:31:16', 'pending', 2),
(6, 'Final test', 'Yes this is just a final test ', '1.23,2.13', '', NULL, NULL, 4, 'believe it or not i tried my best to get this thing right but i was all in vain', '44 months', '2017-07-31 12:22:13', 'pending', 2),
(7, 'Pest Attack on the gardens', 'In kalamonja the pest are too much we can''t control anything in the garden. Mostly the evening that''s they attack so much', '12323.9,77437473', 'pest.jpg', NULL, NULL, 4, 'I have tried spraying with a pesticide but it is not working ', '15 days', '2017-08-04 05:45:51', 'responded_to', 2),
(8, 'ashdch', 'aSDJJ', 'SDHSDH', 'pest.jpg', NULL, '', 3, 'ASDFJSDJF', '343274', '2017-08-04 07:18:57', 'pending', 2),
(9, 'FJDJ', 'asasj', 'asdj', 'pest.jpg', NULL, '', 2, 'asjj', 'skjdj', '2017-08-04 07:21:12', 'responded_to', 4),
(11, 'Hello Test', 'just a test', '45.3,4.3', '', NULL, NULL, 3, 'yes y', 'y reject', '2017-08-18 13:29:03', 'pending', 2),
(12, 'hello world', 'Testing camera things ', '45.3,4.3', '1503321949727.jpg', '', NULL, 2, 'no action yet', 'thats it flocks ', '2017-08-21 13:26:49', 'pending', 3),
(13, 'vgghhh', 'ghhgfvbhhhgfcvvhg', '45.3,4.3', '1503323175122.jpg', '', NULL, 2, 'bjmjh', 'gnhf', '2017-08-21 13:46:23', 'pending', 2),
(14, 'cvbbh', 'bcdfij', '45.3,4.3', '1503323328236.jpg', '', NULL, 2, 'ghb', 'cfh', '2017-08-21 13:49:12', 'pending', 2),
(15, 'hgff', 'xcff', '45.3,4.3', '1503323440884.jpg', '', NULL, 2, 'ghhh', 'gyhhh', '2017-08-21 13:50:56', 'pending', 2),
(16, 'sinful', 'dizzying fund fix crying', '45.3,4.3', '1503323640149.jpg', '', NULL, 2, 'find find', 'govt Griff find', '2017-08-21 13:54:22', 'pending', 2),
(17, 'inbnbgg', 'hjnbbfvb', '45.3,4.3', '', '1503327131936.3gp', NULL, 2, 'vbnnvvf', 'hjncc', '2017-08-21 14:52:48', 'pending', 2),
(18, 'ghhgyuh', 'hjnbvhhb hmm hbghh', '45.3,4.3', '', '1503327246220.3gp', NULL, 2, 'fhbvggh', 'tyhbgrt', '2017-08-21 14:54:39', 'pending', 2),
(19, 'ghhhfgg', 'fhhbbcgb chhv', '45.3,4.3', '', '1503328323068.3gp', NULL, 2, 'fghjbb', 'ghhbbbb', '2017-08-21 15:12:11', 'pending', 2),
(20, 'fhhhb', 'hgvvv', '45.3,4.3', '', '1503328602294.3gp', NULL, 2, 'ghhb', 'ghhbb', '2017-08-21 15:17:08', 'pending', 3),
(21, 'chjjn', 'fhhh', '45.3,4.3', '', '1503328766243.3gp', NULL, 2, 'ghjj', 'ghhg', '2017-08-21 15:19:45', 'pending', 2),
(22, '', '', '45.3,4.3', '', '1503329075441.3gp', NULL, 2, '', '', '2017-08-21 15:24:44', 'pending', 2),
(23, '', '', '45.3,4.3', '', '1503329075441.3gp', NULL, 2, '', '', '2017-08-21 15:25:59', 'pending', 2);

-- --------------------------------------------------------

--
-- Table structure for table `query_categories`
--

CREATE TABLE `query_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query_categories`
--

INSERT INTO `query_categories` (`category_id`, `category_name`) VALUES
(2, 'Diseases'),
(3, 'Pests'),
(4, 'Insects'),
(5, 'Animals');

-- --------------------------------------------------------

--
-- Table structure for table `query_response`
--

CREATE TABLE `query_response` (
  `response_id` int(11) NOT NULL,
  `query_id` int(11) DEFAULT NULL,
  `response` varchar(500) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query_response`
--

INSERT INTO `query_response` (`response_id`, `query_id`, `response`, `reference`, `time_stamp`) VALUES
(1, 2, 'Test Responce2', '', '2017-08-01 07:03:16'),
(2, 2, 'test2 response', '', '2017-08-02 08:42:38'),
(3, 7, ' We have seen the problem but wait let''s consult more experts  in the field ', 'For Now u can be using the animal urine its will work for this time being', '2017-08-04 06:11:07'),
(4, 9, 'Yes Marvin, i have got your query but it does not seem to have any information. Please edit your post before today ends, other wise it will be flagged un applicable. ', '', '2017-08-04 08:40:37'),
(5, 6, 'Hello Abert, Thanks for posting queries on this platform.\r\nAs regards to your query not reply will be given since you are just testing.', '', '2017-08-04 08:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `seed`
--

CREATE TABLE `seed` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seed`
--

INSERT INTO `seed` (`type_id`, `type_name`) VALUES
(1, 'Roots'),
(4, 'Veins');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `sub_menu_id` int(11) NOT NULL,
  `sub_menu_name` varchar(50) DEFAULT NULL,
  `sub_menu_link` varchar(100) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`sub_menu_id`, `sub_menu_name`, `sub_menu_link`, `menu_id`) VALUES
(1, 'Register User', 'backend/usermgt/users_controller/register', 1),
(2, 'Add Seed Type', 'backend/garden/seed/addSeed', 2),
(3, 'Users', 'backend/usermgt/users_controller/user_groups', 1),
(4, 'Add Planting Recommendation', 'backend/garden/seed/addPlantingRecomendation', 2),
(5, 'View Planting Recommendations', 'backend/garden/seed/viewPlantingRecomendations', 2),
(6, 'View Seeds', 'backend/garden/seed/viewSeeds', 2),
(7, 'Add Garden', 'backend/garden/garden/addGarden', 3),
(8, 'View Gardens', 'backend/garden/garden/viewGardens', 3),
(9, 'Queries', 'backend/queries/query/viewQueries', 4),
(10, 'Add Query Category', 'backend/queries/query/addQueryCategory', 4),
(11, 'Add Menu', 'backend/developer/developer', 5),
(12, 'Assign User Menu', 'backend/usermgt/users_controller/assign_menus', 5),
(13, 'View Query Categories', 'backend/queries/query/viewQueryCategories', 4),
(14, 'Post Query', 'backend/queries/query/postQueryForm', 6),
(15, 'Non Responded Queries', 'backend/queries/query/nonRespondedQueries', 4),
(16, 'Send certification Request', 'backend/certification/certificate/certificateForm', 3),
(17, 'View certification Requests', 'backend/certification/certificate/viewCertificationRequests', 7),
(18, 'Certify Gardens', 'backend/certification/certificate/certifyGarden', 7),
(19, 'Place Order', 'backend/order/order/placeOrder', 8),
(20, 'View Translated Queries', 'backend/queries/query/viewQueries', 9),
(21, 'View Queries', 'backend/queries/query/viewQueries', 6),
(22, 'View My Queries', 'backend/queries/Query/viewMyQueries', 6),
(23, 'Add User Group', 'backend/usermgt/users_controller/add_group', 1),
(24, 'Non Responded Queries', 'backend/queries/query/nonRespondedQueries', 10),
(25, 'All Queries', 'backend/queries/query/viewQueries', 10),
(26, 'General Gardens', 'backend/garden/garden/viewGardens', 11),
(27, 'Certified Gardens', 'backend/garden/garden/certified_gardens', 7),
(28, 'Ready Gardens', 'backend/garden/garden/viewReadyGardens', 11),
(29, 'View Inspection Schedules', 'backend/certification/certificate/viewInspectionSchedulesForUncertifiedGardens', 7),
(30, 'Pending Orders', 'backend/order/order/viewPendingOrders', 13);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `unit_name`) VALUES
(1, 'Bag'),
(2, 'Kgs');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`group_id`, `group_name`) VALUES
(1, 'Admin'),
(2, 'Farmer'),
(3, 'Extension Worker');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `user_groups_group_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstName`, `lastName`, `email`, `contact`, `user_groups_group_id`, `username`, `password`, `user_image`) VALUES
(2, 'Namanya', 'Abert', 'abertnamanya@gmail.com', NULL, 1, 'abert', 'abert', ''),
(3, 'Stephen', 'Tonny', NULL, '0775643446', 2, 'steve', '123456', ''),
(4, 'henry', 'marvin', '', '', 2, 'farmer4', '123456', ''),
(5, 'mike', 'moses', NULL, NULL, 2, 'farmer2', '123456', ''),
(6, 'nasozi', 'rechel', NULL, NULL, 2, 'farmer3', '123456', ''),
(7, 'Igoma', 'Julius', NULL, '076765555', 3, 'igoma', '123456', ''),
(11, 'Moses', 'mike', '', '', 2, 'mike', '123456', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certification_requests`
--
ALTER TABLE `certification_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `fk_delivery_order1_idx` (`order_order_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `farmer_info`
--
ALTER TABLE `farmer_info`
  ADD PRIMARY KEY (`farmer_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `gardens`
--
ALTER TABLE `gardens`
  ADD PRIMARY KEY (`garden_id`),
  ADD KEY `fk_gardens_users1_idx` (`user_id`),
  ADD KEY `fk_gardens_seed1_idx` (`purpose_id`);

--
-- Indexes for table `inspection_schedule`
--
ALTER TABLE `inspection_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `_who_inpected` (`_who_inpected`);

--
-- Indexes for table `land_units`
--
ALTER TABLE `land_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu_assignments`
--
ALTER TABLE `menu_assignments`
  ADD PRIMARY KEY (`assignmet_id`),
  ADD KEY `user_group_id` (`user_group_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_order_seed1_idx` (`seed_type_id`),
  ADD KEY `fk_order_users1_idx` (`client_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `planting_measurement`
--
ALTER TABLE `planting_measurement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_id` (`units_id`);

--
-- Indexes for table `planting_recomendations`
--
ALTER TABLE `planting_recomendations`
  ADD PRIMARY KEY (`recomendation_id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`query_id`),
  ADD KEY `fk_queries_query_categories1_idx` (`query_categories_category_id`),
  ADD KEY `fk_queries_users1_idx` (`farmer_id`);

--
-- Indexes for table `query_categories`
--
ALTER TABLE `query_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `query_response`
--
ALTER TABLE `query_response`
  ADD PRIMARY KEY (`response_id`),
  ADD KEY `query_id` (`query_id`);

--
-- Indexes for table `seed`
--
ALTER TABLE `seed`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`sub_menu_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_users_user_groups_idx` (`user_groups_group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certification_requests`
--
ALTER TABLE `certification_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `farmer_info`
--
ALTER TABLE `farmer_info`
  MODIFY `farmer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gardens`
--
ALTER TABLE `gardens`
  MODIFY `garden_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `inspection_schedule`
--
ALTER TABLE `inspection_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `land_units`
--
ALTER TABLE `land_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `menu_assignments`
--
ALTER TABLE `menu_assignments`
  MODIFY `assignmet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `planting_measurement`
--
ALTER TABLE `planting_measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `planting_recomendations`
--
ALTER TABLE `planting_recomendations`
  MODIFY `recomendation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `query_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `query_categories`
--
ALTER TABLE `query_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `query_response`
--
ALTER TABLE `query_response`
  MODIFY `response_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `seed`
--
ALTER TABLE `seed`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `sub_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `certification_requests`
--
ALTER TABLE `certification_requests`
  ADD CONSTRAINT `certification_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `fk_delivery_order1` FOREIGN KEY (`order_order_id`) REFERENCES `orders` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `farmer_info`
--
ALTER TABLE `farmer_info`
  ADD CONSTRAINT `farmer_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `gardens`
--
ALTER TABLE `gardens`
  ADD CONSTRAINT `fk_gardens_seed1` FOREIGN KEY (`purpose_id`) REFERENCES `seed` (`type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gardens_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `inspection_schedule`
--
ALTER TABLE `inspection_schedule`
  ADD CONSTRAINT `inspection_schedule_ibfk_2` FOREIGN KEY (`_who_inpected`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `menu_assignments`
--
ALTER TABLE `menu_assignments`
  ADD CONSTRAINT `menu_assignments_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`),
  ADD CONSTRAINT `menu_assignments_ibfk_2` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`group_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_order_seed1` FOREIGN KEY (`seed_type_id`) REFERENCES `seed` (`type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_order_users1` FOREIGN KEY (`client_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`unit_id`);

--
-- Constraints for table `planting_measurement`
--
ALTER TABLE `planting_measurement`
  ADD CONSTRAINT `planting_measurement_ibfk_2` FOREIGN KEY (`units_id`) REFERENCES `units` (`unit_id`);

--
-- Constraints for table `queries`
--
ALTER TABLE `queries`
  ADD CONSTRAINT `fk_queries_query_categories1` FOREIGN KEY (`query_categories_category_id`) REFERENCES `query_categories` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_queries_users1` FOREIGN KEY (`farmer_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `query_response`
--
ALTER TABLE `query_response`
  ADD CONSTRAINT `query_response_ibfk_1` FOREIGN KEY (`query_id`) REFERENCES `queries` (`query_id`);

--
-- Constraints for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD CONSTRAINT `sub_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_user_groups` FOREIGN KEY (`user_groups_group_id`) REFERENCES `user_groups` (`group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `projectgooglemaps`
--
CREATE DATABASE IF NOT EXISTS `projectgooglemaps` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `projectgooglemaps`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl`
--

CREATE TABLE `tbl` (
  `id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `lat` varchar(200) NOT NULL,
  `lng` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl`
--

INSERT INTO `tbl` (`id`, `description`, `photo`, `lat`, `lng`) VALUES
(1, 'this is from the db', 'xxxx', '0.315768', '32.576085'),
(2, 'this is also from the db', 'cvbnm', '0.315514', '32.581674');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl`
--
ALTER TABLE `tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl`
--
ALTER TABLE `tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`` PROCEDURE `AddGeometryColumn` (`catalog` VARCHAR(64), `t_schema` VARCHAR(64), `t_name` VARCHAR(64), `geometry_column` VARCHAR(64), `t_srid` INT)  begin
  set @qwe= concat('ALTER TABLE ', t_schema, '.', t_name, ' ADD ', geometry_column,' GEOMETRY REF_SYSTEM_ID=', t_srid); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end$$

CREATE DEFINER=`` PROCEDURE `DropGeometryColumn` (`catalog` VARCHAR(64), `t_schema` VARCHAR(64), `t_name` VARCHAR(64), `geometry_column` VARCHAR(64))  begin
  set @qwe= concat('ALTER TABLE ', t_schema, '.', t_name, ' DROP ', geometry_column); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
