-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 04:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthtourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_category`
--

CREATE TABLE `adminapp_category` (
  `id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminapp_category`
--

INSERT INTO `adminapp_category` (`id`, `category`, `status`) VALUES
(1, 'Ayurvedic tourism', 1),
(2, 'Pilgrim Package', 1),
(3, 'Tourism Package', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_district`
--

CREATE TABLE `adminapp_district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminapp_district`
--

INSERT INTO `adminapp_district` (`id`, `district_name`, `status`) VALUES
(1, 'Alapuzha', 1),
(2, 'Trivandrum ', 1),
(3, 'Ernakulam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_package`
--

CREATE TABLE `adminapp_package` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `no_packages` int(11) NOT NULL,
  `sold_package` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `itin` varchar(1000) NOT NULL,
  `category_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminapp_package`
--

INSERT INTO `adminapp_package` (`id`, `title`, `price`, `no_packages`, `sold_package`, `image`, `description`, `itin`, `category_id`, `district_id`, `place_id`) VALUES
(1, 'Kerala Ayurveda Package ', 22000, 10, 7, 'images/Nasyam_QhbAQn4.jpg', 'Ayurveda is a 5000-year-old Indian science of \'healthy life\' which focuses on reinforcing our body immune system as well as preventing\r\n diseases. Legend has it that Lord Brahma discovered this scientific research.Begin your day by ambling in the green lawns and having \r\na yoga session after that. The activities for the day would go as per the prescription of the medical professional. Today you may go \r\nfor Shirodhara in which some natural oils, medicated milk and so on are poured on the forehead in a special manner for about 45 \r\nminutes in a day as a cure for insomnia, mental stress and certain skin diseases. Or you can choose from a variety of massage\r\ntherapies offered.A chance to outsmart your health problem: Going on a guided tour to the medical natural herbs and also plants garden followed by a yoga session is probably the best start for a beautiful day.\r\nBesides the basic massage, going for Pizichil would be a great idea. In this warm natural oils are used all over the body.', 'Day 1 : You are welcomed and transferred to the Ayurveda beach resort. The treatment would start today with a basic body massage with herbal oils as well as an herbal powder to tone up the body and steam bath Day 2 : Ayurvedic Spa : After breakfast, spend the last day at Kovalam leisure basking in the goodness of day spa as well as Ayurvedic delectations provided to you. Day 3 : Kovalam Local Sightseeing : The Kovalam beach in Kerala offers the most excellent of centers to its visitors like sunbathing, swimming, Ayurvedic massage therapies as well as plenty of other options. Day 4 : Kovalam to Alleppey Houseboat : Your houseboat has actually a completely furnished one with all facilities. The fish preparations, in local flavor, on the houseboat are truly a gourmet\'s delight. \r\nDay 5 : Kochi - Periyar :  Take pleasure in an interesting watercraft trip from Kochi to Periyar. At the Periyar Lake, you may reach see many unique selections of animals as well as birds.\r\nDay 6 : Departure', 1, 2, 1),
(2, 'Body Purification Package', 8000, 100, 0, 'images/images.jpg', 'This Ayurveda package cleanses the body and mind. Among other things, the focus is on cleansing procedures (Panchakarma), oil applications (Snehana), herbal steam baths (Swendanam), pouring of warm oils onto the forehead (Shirodhara) and – as a climax – the royal oil bath treatment (Pizhichil). In their treatments, doctors and therapists draw on the effectiveness of traditional remedies – such as Ayurvedic oils, herbs and ghee.', 'Our packages are all-round carefree offers. They include all treatments and medications as part of the treatment plan, ayurvedic full board, yoga, meditation and accommodation.\r\nPARTICULARLY SUITABLE FOR : \r\nExhaustion\r\nMuscular tensions\r\nListlessness\r\nDigestive disorders\r\nLack of appetite\r\nGeneral weakness\r\nHeaviness of the body\r\n', 1, 2, 2),
(3, 'Kerala Pilgrim Package', 9999, 100, 2, 'images/eaf2f4a1ef757154084ab06431910a20.jpg', 'South Indian Pilgrim package : Cochin - Thekkady - Kodaikanal - Madurai - Kanyakumari - Trivandrum', 'Day 1 : Upon arrival at the Cochin Airport our representative will cordially welcome you and transfer you by road to the hotel. In the afternoon you will be taken for an exciting sightseeing tour of Cochin. Day 2 : After an early breakfast, check-out from the hotel and drive to Thekkady; on arrival check-in into the hotel. Evening you will be taken for a local sightseeing tour of Thekkady.\r\nDay 3 : After breakfast check-out from the hotel and drive to Kodaikanal; on arrival check-in into hotel. Evening is at your disposal to enjoy at leisure. Overnight at hotel. Day 4 : After breakfast check-out from the hotel and drive to the scenic hill station of Kodaikanal. Kodaikanal, at a distance of 120 km from Madurai, lies on the southern crust of the Palani Hills. Day 5 : After breakfast check-out from the hotel and drive to Madurai via Palani; on arrival check-in into hotel. Afternoon, proceed for a local sightseeing tour of Madurai. Day 6 : After breakfast check-out from the hotel and drive', 2, 3, 3),
(4, 'Magnificent Kerala Packages', 1000, 100, 0, 'images/67fc36494e4f2210c068002306f68685.jpg', ' Cochin - Guruvayoor - Cochin- Kumarakom - Alleppey - Kovalam - Trivandrum', 'Day 1 :  On your arrival at the Cochin Airport our representative will cordially receive you and drive you to Guruvayoor. Day 2 : The place is noted for the Guruvayurappan Temple, Anakotta - Guruvayur Devaswom elephant sanctuary Day 3 :After early breakfast check out from the hotel and drive to Cochin on arrival check into the hotel. Spend the afternoon with local sightseeing in and around Cochin Day 4 : After breakfast check out from the hotel and drive to Kumarakom  on arrival check into the hotel. Afternoon proceed for local sightseeing in and around Kumarakom. Day 5 :  Early morning around 6.00 AM proceed for bird sanctuary visit. After breakfast check out from the hotel and drive to Alleppey. Day 6 : After breakfast check out from the hotel and drive to Kovalam (180 km – 4 hours drive) on arrival check into the hotel. Evening enjoy at Kovalam Beach. Overnight stay in Kovalam. Day 7 : Proceed for the sightseeing tour of Trivandrum after breakfast. Day 8 :After breakfast check out f', 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_places`
--

CREATE TABLE `adminapp_places` (
  `id` int(11) NOT NULL,
  `place` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminapp_places`
--

INSERT INTO `adminapp_places` (`id`, `place`, `status`) VALUES
(1, 'Swan tours', 1),
(2, 'Somatheeram Ayurvedic Resort', 1),
(3, 'Kerala Holidays', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add district', 8, 'add_district'),
(30, 'Can change district', 8, 'change_district'),
(31, 'Can delete district', 8, 'delete_district'),
(32, 'Can view district', 8, 'view_district'),
(33, 'Can add places', 9, 'add_places'),
(34, 'Can change places', 9, 'change_places'),
(35, 'Can delete places', 9, 'delete_places'),
(36, 'Can view places', 9, 'view_places'),
(37, 'Can add package', 10, 'add_package'),
(38, 'Can change package', 10, 'change_package'),
(39, 'Can delete package', 10, 'delete_package'),
(40, 'Can view package', 10, 'view_package'),
(41, 'Can add login', 11, 'add_login'),
(42, 'Can change login', 11, 'change_login'),
(43, 'Can delete login', 11, 'delete_login'),
(44, 'Can view login', 11, 'view_login'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
(49, 'Can add order', 13, 'add_order'),
(50, 'Can change order', 13, 'change_order'),
(51, 'Can delete order', 13, 'delete_order'),
(52, 'Can view order', 13, 'view_order');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'adminapp', 'category'),
(8, 'adminapp', 'district'),
(10, 'adminapp', 'package'),
(9, 'adminapp', 'places'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(11, 'userapp', 'login'),
(13, 'userapp', 'order'),
(12, 'userapp', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-18 11:54:55.494899'),
(2, 'auth', '0001_initial', '2021-04-18 11:54:56.888655'),
(3, 'admin', '0001_initial', '2021-04-18 11:55:08.096871'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-18 11:55:09.893132'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-18 11:55:09.949173'),
(6, 'adminapp', '0001_initial', '2021-04-18 11:55:10.575203'),
(7, 'contenttypes', '0002_remove_content_type_name', '2021-04-18 11:55:12.838909'),
(8, 'auth', '0002_alter_permission_name_max_length', '2021-04-18 11:55:14.828111'),
(9, 'auth', '0003_alter_user_email_max_length', '2021-04-18 11:55:14.905202'),
(10, 'auth', '0004_alter_user_username_opts', '2021-04-18 11:55:14.935244'),
(11, 'auth', '0005_alter_user_last_login_null', '2021-04-18 11:55:15.747185'),
(12, 'auth', '0006_require_contenttypes_0002', '2021-04-18 11:55:15.769515'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2021-04-18 11:55:15.814372'),
(14, 'auth', '0008_alter_user_username_max_length', '2021-04-18 11:55:15.943171'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2021-04-18 11:55:16.038028'),
(16, 'auth', '0010_alter_group_name_max_length', '2021-04-18 11:55:16.121456'),
(17, 'auth', '0011_update_proxy_permissions', '2021-04-18 11:55:16.154615'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2021-04-18 11:55:16.232096'),
(19, 'sessions', '0001_initial', '2021-04-18 11:55:16.506619'),
(20, 'userapp', '0001_initial', '2021-04-18 11:55:17.400955');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7stt5pdn0m7x9osrmd8mnmq2p5snzz9q', 'eyJ1c2VyaWQiOjF9:1lY8tA:Ke_hQMjYr3_Df4Wl7DyryYHEYnXiUA4j6jElNq8e-Qk', '2021-05-02 14:59:08.768929'),
('9a4hmg5oqt5m07q4rqs1ser5tni9rxxd', 'eyJ1c2VyaWQiOjZ9:1laYgO:gYeBGtcJzUWNfjpMQA36Ikt4Ym8WaYLvPbo1DBhGews', '2021-05-09 06:55:56.933164'),
('9guaeuzxq0mxi47l78ve57czx2y4v5a7', 'eyJ1c2VyaWQiOjd9:1lYPJy:4ozzPzZX6k-5nCMg2URPsCp4sUtxf_--EaKlJJa7Kx8', '2021-05-03 08:31:54.215150'),
('f2jsraq2l63bxiiagpsypnlxxcpzh8c7', 'e30:1laaIX:jFev6oJwR_nuB-8sB1t0Mz0kLK94ZgcUJSDuSBN8I-8', '2021-05-09 08:39:25.600803'),
('jlmxj5suar6epeaygly6v5e50q0fzrr2', 'eyJ1c2VyaWQiOjN9:1lYOUh:jfrST9mlzvkkU-K5M_vZxu8x23G7EvFdL0T39GUmlb8', '2021-05-03 07:38:55.299805'),
('qdby757u4pv6qe9mhms72illqd5rni9b', 'e30:1laznN:A5hNkXKP0_fNT5ApZGhOpD_NGv1QvsqK5yZF2vu1mfo', '2021-05-10 11:52:57.965217'),
('rna5nwzld1i0h3anx69t2p8wxu9qblez', 'eyJ1c2VyaWQiOjF9:1lY7Z6:XSgwCqOSEyvbJGXshDl9GUO5ddnLNSyaOrCcN-CDXMA', '2021-05-02 13:34:20.531725'),
('tv9ht5s7t1ew3jg0wgwytidygt60gqs8', 'eyJ1c2VyaWQiOjF9:1laaUm:NyJhUFUfYJDW4u6c9EiwCCbuk3GfgULk33YsYTK4XDw', '2021-05-09 08:52:04.613041');

-- --------------------------------------------------------

--
-- Table structure for table `userapp_login`
--

CREATE TABLE `userapp_login` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(15) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userapp_login`
--

INSERT INTO `userapp_login` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 0),
(2, 'user', 'user', 2),
(3, 'akshai', 'akshai', 2),
(4, 'arun', 'arunrr', 2),
(5, 'switha', 'swi', 1),
(6, 'jithna', 'jithnas', 1),
(7, 'john', 'john', 2),
(9, 'siby', 'siby', 2),
(11, 'akshai', 'akshai', 1),
(12, 'akshai', 'akshai', 1),
(13, 'akshai', '', 1),
(14, 'user', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userapp_order`
--

CREATE TABLE `userapp_order` (
  `id` int(11) NOT NULL,
  `card_num` varchar(14) NOT NULL,
  `cvv` int(11) NOT NULL,
  `expiry` varchar(7) NOT NULL,
  `booking_date` varchar(14) NOT NULL,
  `slots` varchar(10) NOT NULL,
  `copies` int(11) NOT NULL,
  `amount` double NOT NULL,
  `order_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userapp_order`
--

INSERT INTO `userapp_order` (`id`, `card_num`, `cvv`, `expiry`, `booking_date`, `slots`, `copies`, `amount`, `order_date`, `status`, `package_id`, `user_id`) VALUES
(1, '45050200056550', 776, '2022-08', '2021-04-28', '20:34', 1, 88000, '2021-04-18', 2, 1, 2),
(2, '45050200056550', 776, '2022-08', '2021-04-28', '20:34', 1, 88000, '2021-04-18', 2, 1, 2),
(3, '23458765098712', 9, '2023-09', '2021-04-21', '21:40', 1, 66000, '2021-04-18', 2, 1, 2),
(4, '23458765098712', 9, '2023-09', '2021-04-21', '21:40', 1, 66000, '2021-04-18', 2, 1, 2),
(5, '356444411233', 857, '2025-09', '2021-04-30', '15:47', 5, 110000, '2021-04-19', 2, 1, 3),
(6, '3435433526726', 900, '2030-09', '2021-04-30', '', 2, 19998, '2021-04-25', 1, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `userapp_user`
--

CREATE TABLE `userapp_user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `loginid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userapp_user`
--

INSERT INTO `userapp_user` (`id`, `name`, `dob`, `email`, `mobile`, `loginid_id`) VALUES
(1, 'Akshai R', '1997-03-02', 'akshai97@gmail.com', '9400600303', 3),
(2, 'Arun', '1997-03-12', 'arun.s@gmail.com', '999373732', 4),
(3, 'Switha', '1999-05-17', 'swi123@gmail.com', '5732829221', 5),
(4, 'Jithna', '1971-10-30', 'jithnasunil@yahoo.com', '9946429310', 6),
(5, 'John', '1997-07-10', 'johnah@gmail.com', '836554747', 7),
(7, 'Siby', '1997-07-04', 'siby.mathew@gmail.com', '8289993628', 9),
(9, 'Akshai Ramesh', '2001-12-13', 'akshai97@gmail.com', '9400600303', 11),
(10, 'Akshai Ramesh', '2001-12-13', 'akshai97@gmail.com', '9400600303', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminapp_category`
--
ALTER TABLE `adminapp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_district`
--
ALTER TABLE `adminapp_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_package`
--
ALTER TABLE `adminapp_package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_package_category_id_215d7f78_fk_adminapp_category_id` (`category_id`),
  ADD KEY `adminapp_package_district_id_b6d77fc1_fk_adminapp_district_id` (`district_id`),
  ADD KEY `adminapp_package_place_id_8bbd3ae0_fk_adminapp_places_id` (`place_id`);

--
-- Indexes for table `adminapp_places`
--
ALTER TABLE `adminapp_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `userapp_login`
--
ALTER TABLE `userapp_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userapp_order`
--
ALTER TABLE `userapp_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userapp_order_package_id_d805461f_fk_adminapp_package_id` (`package_id`),
  ADD KEY `userapp_order_user_id_edbfca11_fk_userapp_login_id` (`user_id`);

--
-- Indexes for table `userapp_user`
--
ALTER TABLE `userapp_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userapp_user_loginid_id_9326688e_fk_userapp_login_id` (`loginid_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminapp_category`
--
ALTER TABLE `adminapp_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_district`
--
ALTER TABLE `adminapp_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_package`
--
ALTER TABLE `adminapp_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminapp_places`
--
ALTER TABLE `adminapp_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `userapp_login`
--
ALTER TABLE `userapp_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `userapp_order`
--
ALTER TABLE `userapp_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userapp_user`
--
ALTER TABLE `userapp_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminapp_package`
--
ALTER TABLE `adminapp_package`
  ADD CONSTRAINT `adminapp_package_category_id_215d7f78_fk_adminapp_category_id` FOREIGN KEY (`category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_package_district_id_b6d77fc1_fk_adminapp_district_id` FOREIGN KEY (`district_id`) REFERENCES `adminapp_district` (`id`),
  ADD CONSTRAINT `adminapp_package_place_id_8bbd3ae0_fk_adminapp_places_id` FOREIGN KEY (`place_id`) REFERENCES `adminapp_places` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `userapp_order`
--
ALTER TABLE `userapp_order`
  ADD CONSTRAINT `userapp_order_package_id_d805461f_fk_adminapp_package_id` FOREIGN KEY (`package_id`) REFERENCES `adminapp_package` (`id`),
  ADD CONSTRAINT `userapp_order_user_id_edbfca11_fk_userapp_login_id` FOREIGN KEY (`user_id`) REFERENCES `userapp_login` (`id`);

--
-- Constraints for table `userapp_user`
--
ALTER TABLE `userapp_user`
  ADD CONSTRAINT `userapp_user_loginid_id_9326688e_fk_userapp_login_id` FOREIGN KEY (`loginid_id`) REFERENCES `userapp_login` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
