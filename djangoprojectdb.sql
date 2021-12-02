-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2021 at 08:00 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangoprojectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `file_name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`file_name`, `price`, `name`, `level`) VALUES
('bee', 50, 'Bee', 1),
('Black Pig', 75, 'Black Pig', 1),
('black raven', 50, 'Black Raven', 2),
('blue cerberus', 500, 'Blue Cerberus', 7),
('Blue Crab', 50, 'Blue Crab', 1),
('Blue Dragon', 1000, 'Blue Dragon', 9),
('blue green hummingbird', 75, 'Blue Green Hummingbird', 2),
('Blue Koala', 200, 'Blue Koala', 4),
('blue Platypus', 207, 'Blue Platypus', 5),
('blue slime', 50, 'Blue Slime', 1),
('blue_sheep', 100, 'Blue Sheep', 2),
('brown cerberus', 500, 'Brown Cerberus', 7),
('brown Owl', 100, 'Brown Owl', 4),
('Brown Pig', 75, 'Brown Pig', 1),
('brown Platypus', 207, 'Brown Platypus', 5),
('Brown Rat', 50, 'Brown Rat', 1),
('brown Turtle', 200, 'Brown Turtle', 4),
('brown_cat', 100, 'Brown Cat', 1),
('calico_cat', 100, 'Calico Cat', 1),
('chicken_brown', 150, 'Brown Chicken', 2),
('chicken_fluffy', 150, 'Fluffy Chicken', 2),
('chicken_white', 150, 'White Chicken', 2),
('chocolate_cow', 100, 'Chocolate Cow', 2),
('cow', 100, 'Cow', 2),
('cowboy_hat_cat', 400, 'Cowboy Hat Cat', 5),
('doge', 69, 'Doge', 6),
('duck_natural', 150, 'Natural Duck', 2),
('duck_white', 150, 'White Duck', 2),
('duck_yellow', 150, 'Yellow Duck', 2),
('fire_gator', 1200, 'Fire Gator', 10),
('fox_rainbow', 600, 'Rainbow Fox', 4),
('goat', 100, 'Goat', 3),
('golden hummingbird', 700, 'Golden Hummingbird', 7),
('green Turtle', 200, 'Green Turtle', 4),
('Grey Koala', 200, 'Grey Koala', 4),
('Grey Rat', 50, 'Grey Rat', 1),
('grumpyMeme', 400, 'Grumpy Cat', 4),
('hippocampus_blue', 700, 'Blue Hippocampus', 7),
('hippocampus_brown', 700, 'Brown Hippocampus', 7),
('hippocampus_pink', 700, 'Pink Hippocampus', 7),
('horse_brown', 400, 'Brown Horse', 4),
('horse_fire', 700, 'Fire Horse', 7),
('horse_pink', 500, 'Pink Horse', 5),
('llama_brown', 200, 'Brown Llama', 3),
('llama_fortnite', 600, 'Fortnite Llama', 6),
('llama_white_gold', 1000, 'White Gold Llama', 7),
('logo', 1000, 'Logo', 10),
('memeAngryDuck', 420, 'Angry Duck', 4),
('memeCat1', 69, 'Act Nice Cat', 2),
('memeCat2', 420, 'Big Mouth Cat', 6),
('memeCat3', 69, 'Salad Cat', 6),
('memeDeer', 420, 'Deer', 4),
('memeDog1', 69, 'Last Chip Dog', 2),
('memeDog2', 420, 'Eyebrows Dog', 6),
('memeDog3', 69, 'No Ears Dog', 4),
('memeDog4', 420, 'Hello This is Dog', 2),
('memeFish', 69, 'Fish', 2),
('memeHamster', 420, 'Hamster', 2),
('memeSeal', 69, 'Seal', 6),
('narwhal_normal', 300, 'Normal Narwhal', 4),
('narwhal_starry', 700, 'Starry Narwhal', 6),
('narwhal_sunset', 700, 'Sunset Narwhal', 6),
('orange_cat', 100, 'Orange Cat', 1),
('otter', 200, 'Otter', 3),
('Pink Pig', 75, 'Pink Pig', 1),
('pink Platypus', 207, 'Pink Platypus', 5),
('pink slime', 50, 'Pink Slime', 1),
('pink_axolotl', 400, 'Pink Axolotl', 4),
('pink_sheep', 100, 'Pink Sheep', 2),
('Purple Dragon', 1000, 'Purple Dragon', 9),
('Purple Pufferfish', 250, 'Purple Pufferfish', 3),
('purple raven', 100, 'Purple Raven', 3),
('purple slime', 50, 'Purple Slime', 1),
('purple squid', 80, 'Purple Squid', 2),
('purple_axolotl', 400, 'Purple Axolotl', 4),
('Rainbow Crab', 600, 'Rainbow Crab', 3),
('Rainbow Koala', 600, 'Rainbow Koala', 5),
('rainbow Owl', 600, 'Rainbow Owl', 6),
('rainbow turtle', 600, 'Rainbow Turtle', 6),
('red cerberus', 500, 'Red Cerberus', 7),
('Red Crab', 50, 'Red Crab', 1),
('Red Dragon', 1000, 'Red Dragon', 9),
('Red Pufferfish', 250, 'Red Pufferfish', 3),
('red raven', 100, 'Red Raven', 3),
('red squid', 80, 'Red Squid', 2),
('silver hummingbird', 275, 'Silver Hummingbird', 4),
('snake', 150, 'Snake', 2),
('snake_brown', 150, 'Brown Snake', 2),
('snake_light_green', 150, 'Light Green Snake', 2),
('snowy owl', 100, 'Snowy Owl', 4),
('stickFigureCat', 999999, 'Stick Figure Cat', 11),
('White Rat', 50, 'White Rat', 1),
('white_sheep', 100, 'White Sheep', 2),
('wolf_dark', 250, 'Dark Wolf', 5),
('wolf_natural', 250, 'Natural Wolf', 5),
('wolf_white', 250, 'White Wolf', 5),
('Yellow Pufferfish', 250, 'Yellow Pufferfish', 3),
('yellow squid', 80, 'Yellow Squid', 2),
('yellow_axolotl', 400, 'Yellow Axolotl', 4);


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
  `id` bigint(20) NOT NULL,
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
(25, 'Can add animals', 7, 'add_animals'),
(26, 'Can change animals', 7, 'change_animals'),
(27, 'Can delete animals', 7, 'delete_animals'),
(28, 'Can view animals', 7, 'view_animals'),
(29, 'Can add muninn player', 8, 'add_muninnplayer'),
(30, 'Can change muninn player', 8, 'change_muninnplayer'),
(31, 'Can delete muninn player', 8, 'delete_muninnplayer'),
(32, 'Can view muninn player', 8, 'view_muninnplayer'),
(33, 'Can add task', 9, 'add_task'),
(34, 'Can change task', 9, 'change_task'),
(35, 'Can delete task', 9, 'delete_task'),
(36, 'Can view task', 9, 'view_task'),
(37, 'Can add muninn roost', 10, 'add_muninnroost'),
(38, 'Can change muninn roost', 10, 'change_muninnroost'),
(39, 'Can delete muninn roost', 10, 'delete_muninnroost'),
(40, 'Can view muninn roost', 10, 'view_muninnroost'),
(41, 'Can add muninn master habits', 11, 'add_muninnmasterhabits'),
(42, 'Can change muninn master habits', 11, 'change_muninnmasterhabits'),
(43, 'Can delete muninn master habits', 11, 'delete_muninnmasterhabits'),
(44, 'Can view muninn master habits', 11, 'view_muninnmasterhabits'),
(45, 'Can add muninn daily habits', 12, 'add_muninndailyhabits'),
(46, 'Can change muninn daily habits', 12, 'change_muninndailyhabits'),
(47, 'Can delete muninn daily habits', 12, 'delete_muninndailyhabits'),
(48, 'Can view muninn daily habits', 12, 'view_muninndailyhabits');

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

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$w8sg06wzA1yP8FpguZyOma$u1oRzi9BGnt0DN6ovSHy/PuWX2x5mVSL6lWTImUacSY=', '2021-11-16 06:29:16.251991', 0, 'user1', '', '', '', 0, 1, '2021-11-16 06:21:25.612541'),
(2, 'pbkdf2_sha256$260000$L6FI5BODrETKO4Ka4mcz9j$yZlcgDFVh5BL+kh2mFm2gixeUzjBoPCeAvtgnQrrJA8=', '2021-11-16 06:38:03.402602', 0, 'user2', '', '', '', 0, 1, '2021-11-16 06:21:36.437448'),
(3, 'pbkdf2_sha256$260000$MhHPz4mFDFuRupB6oPpLKT$CEqP9esbhN+oxCRCZz0bkeEEEmCxffMr46plzlEOT+Y=', '2021-11-16 06:39:17.541804', 0, 'user3', '', '', '', 0, 1, '2021-11-16 06:21:48.357443'),
(4, 'pbkdf2_sha256$260000$32pJuHeRhT1NC6e74jul3d$6drMyPQmSkGCTi2oayGJ+pOOeNLPmBYvL6eBXanDAN8=', '2021-11-16 06:58:12.444727', 0, 'user4', '', '', '', 0, 1, '2021-11-16 06:22:01.377795'),
(5, 'pbkdf2_sha256$260000$jLcNqZvHz4wYAICM0x3CIJ$NZWd+aJvgNBBZ392hAEcPTczuUDgoAEm+3UYsl1YIMs=', NULL, 0, 'user5', '', '', '', 0, 1, '2021-11-16 06:22:16.020602'),
(6, 'pbkdf2_sha256$260000$qBZRvRJJSb66PJszqRDrhI$rdZqrE0SCqXzy7YHKPHHYbG4XQzHiyuXRhdgLq3AsKo=', NULL, 0, 'user6', '', '', '', 0, 1, '2021-11-16 06:26:36.335053'),
(7, 'pbkdf2_sha256$260000$3cWTdKQeREbomZYeVmvdnT$9z/GaM+fspX5phzJ4M2ZfLcJ/nVE3Qi/uah4It7AWJw=', NULL, 0, 'user7', '', '', '', 0, 1, '2021-11-16 06:26:50.869254'),
(8, 'pbkdf2_sha256$260000$20b2IBSYEHSyLM3O9C4ULO$/UWpY2IQu7NiIa5RKxZvR2zHIpwE6wkQqJCAiOelquA=', NULL, 0, 'user8', '', '', '', 0, 1, '2021-11-16 06:27:05.940894'),
(9, 'pbkdf2_sha256$260000$ENAzdvv55BJw2vdhS5NI0e$4zK09cxx7uJ08B30OCTaL4wGdsG//iZQ4uvIMXdZ850=', NULL, 0, 'user9', '', '', '', 0, 1, '2021-11-16 06:27:16.514999'),
(10, 'pbkdf2_sha256$260000$D7kjyXG1OkyYwhP8E6TZUm$Y8uNOr6tIH+rmHAyWod3FRwrC/trScFZbneAquQyrWw=', NULL, 0, 'user10', '', '', '', 0, 1, '2021-11-16 06:27:29.592090');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
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
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'muninn', 'animals'),
(12, 'muninn', 'muninndailyhabits'),
(11, 'muninn', 'muninnmasterhabits'),
(8, 'muninn', 'muninnplayer'),
(10, 'muninn', 'muninnroost'),
(9, 'muninn', 'task'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-16 06:12:09.095330'),
(2, 'auth', '0001_initial', '2021-11-16 06:12:10.093719'),
(3, 'admin', '0001_initial', '2021-11-16 06:12:10.304816'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-16 06:12:10.314820'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-16 06:12:10.326365'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-16 06:12:10.413404'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-16 06:12:10.510639'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-16 06:12:10.548536'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-16 06:12:10.560969'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-16 06:12:10.680421'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-16 06:12:10.686405'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-16 06:12:10.696379'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-16 06:12:10.718373'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-16 06:12:10.739317'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-16 06:12:10.761258'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-16 06:12:10.771936'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-16 06:12:10.795004'),
(18, 'muninn', '0001_initial', '2021-11-16 06:12:11.616303'),
(19, 'sessions', '0001_initial', '2021-11-16 06:12:11.740312');

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
('bpgo3vwta31byr6tktlt4ue4c8gkmray', '.eJxVjMsOwiAURP-FtSG8EZfu_QZygXulaiAp7cr477ZJF7qbzDkzbxZhXWpcB85xKuzCDDv9dgnyE9sOygPavfPc2zJPie8KP-jgt17wdT3cv4MKo25rn7Ig7UNABIUlnKU1gUhlLUJQBig7r7MlJ7XYIgnlixZWekVWCyfZ5wvlBDcg:1mmsQ0:VpX3dHFHvOgnqOf2X7dsiUxLAPD08LuLYzPV7XoKbXs', '2021-11-30 06:58:12.454704');

-- --------------------------------------------------------

--
-- Table structure for table `muninn_daily_habits`
--

CREATE TABLE `muninn_daily_habits` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `title` varchar(200) NOT NULL,
  `master_habit` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muninn_daily_habits`
--

INSERT INTO `muninn_daily_habits` (`id`, `date`, `complete`, `title`, `master_habit`, `user_id`) VALUES
(5, '2021-11-16', 0, 'hbt 1', 5, 1),
(6, '2021-11-16', 1, 'hbt 2', 6, 1),
(7, '2021-11-16', 1, 'hbt 3', 7, 1),
(8, '2021-11-16', 1, 'hbt 4', 8, 1),
(9, '2021-11-16', 0, 'wash dishes', 9, 2),
(10, '2021-11-16', 0, 'take out trash', 10, 2),
(11, '2021-11-16', 1, 'brush teeth', 11, 2),
(12, '2021-11-16', 0, 'go for a walk', 12, 3),
(13, '2021-11-16', 1, 'clean cat litter', 13, 3),
(14, '2021-11-16', 1, 'write in journal', 14, 3),
(15, '2021-11-16', 1, 'take meds', 15, 3),
(16, '2021-11-16', 1, 'check mail', 16, 3),
(17, '2021-11-19', 0, '1', 17, 4),
(18, '2021-11-19', 0, '2', 18, 4),
(19, '2021-11-19', 0, '3', 19, 4),
(20, '2021-11-19', 0, '4', 20, 4),
(21, '2021-11-19', 0, '5', 21, 4),
(22, '2021-11-19', 0, '6', 22, 4);

-- --------------------------------------------------------

--
-- Table structure for table `muninn_master_habits`
--

CREATE TABLE `muninn_master_habits` (
  `id` bigint(20) NOT NULL,
  `created` date NOT NULL,
  `title` varchar(200) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muninn_master_habits`
--

INSERT INTO `muninn_master_habits` (`id`, `created`, `title`, `active`, `user_id`) VALUES
(5, '2021-11-16', 'hbt 1', 1, 1),
(6, '2021-11-16', 'hbt 2', 1, 1),
(7, '2021-11-16', 'hbt 3', 1, 1),
(8, '2021-11-16', 'hbt 4', 1, 1),
(9, '2021-11-16', 'wash dishes', 1, 2),
(10, '2021-11-16', 'take out trash', 1, 2),
(11, '2021-11-16', 'brush teeth', 1, 2),
(12, '2021-11-16', 'go for a walk', 1, 3),
(13, '2021-11-16', 'clean cat litter', 1, 3),
(14, '2021-11-16', 'write in journal', 1, 3),
(15, '2021-11-16', 'take meds', 1, 3),
(16, '2021-11-16', 'check mail', 1, 3),
(17, '2021-11-19', '1', 1, 4),
(18, '2021-11-19', '2', 1, 4),
(19, '2021-11-19', '3', 1, 4),
(20, '2021-11-19', '4', 1, 4),
(21, '2021-11-19', '5', 1, 4),
(22, '2021-11-19', '6', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `muninn_player`
--

CREATE TABLE `muninn_player` (
  `id` bigint(20) NOT NULL,
  `total_points` int(11) NOT NULL,
  `daily_points` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `last_day_updates` date NOT NULL,
  `playerID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muninn_player`
--

INSERT INTO `muninn_player` (`id`, `total_points`, `daily_points`, `money`, `last_day_updates`, `playerID_id`) VALUES
(1, 0, 75, 0, '2021-11-19', 1),
(2, 0, 40, 0, '2021-11-16', 2),
(3, 0, 83, 250, '2021-11-16', 3),
(4, 800, 0, 1600, '2021-11-19', 4),
(5, 0, 0, 0, '2021-11-16', 5),
(6, 0, 0, 0, '2021-11-16', 6),
(7, 0, 0, 0, '2021-11-16', 7),
(8, 0, 0, 0, '2021-11-16', 8),
(9, 0, 0, 0, '2021-11-16', 9),
(10, 0, 0, 0, '2021-11-16', 10);

-- --------------------------------------------------------

--
-- Table structure for table `muninn_roost`
--

CREATE TABLE `muninn_roost` (
  `ID` int(11) NOT NULL,
  `animal_name` varchar(30) NOT NULL,
  `animal_type` varchar(30) NOT NULL,
  `muninn_player` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muninn_roost`
--

INSERT INTO `muninn_roost` (`ID`, `animal_name`, `animal_type`, `muninn_player`) VALUES
(1, 'Henry', 'blue cerberus', 3),
(2, 'Smudge', 'calico_cat', 3),
(3, 'Chaco', 'chocolate_cow', 3),
(4, 'Peep', 'brown_cat', 4),
(5, '', 'horse_pink', 4),
(6, 'SSSSS', 'snake_brown', 4),
(7, 'Beep', 'pink_axolotl', 4);

-- --------------------------------------------------------

--
-- Table structure for table `muninn_task`
--

CREATE TABLE `muninn_task` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `created` date NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muninn_task`
--

INSERT INTO `muninn_task` (`id`, `title`, `complete`, `created`, `user_id`) VALUES
(1, 'Do 481 Homework', 0, '2021-11-16', 2),
(2, 'Get groceries', 1, '2021-11-16', 2),
(3, 'do something cool today', 1, '2021-11-16', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`file_name`);

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
-- Indexes for table `muninn_daily_habits`
--
ALTER TABLE `muninn_daily_habits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `muninn_daily_habits_master_habit_2cec37b3_fk_muninn_ma` (`master_habit`),
  ADD KEY `muninn_daily_habits_user_id_68020bce_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `muninn_master_habits`
--
ALTER TABLE `muninn_master_habits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `muninn_master_habits_user_id_caff981e_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `muninn_player`
--
ALTER TABLE `muninn_player`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playerID_id` (`playerID_id`);

--
-- Indexes for table `muninn_roost`
--
ALTER TABLE `muninn_roost`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `muninn_roost_animal_type_25821c84_fk_animals_file_name` (`animal_type`),
  ADD KEY `muninn_roost_muninn_player_96b23034_fk_muninn_player_id` (`muninn_player`);

--
-- Indexes for table `muninn_task`
--
ALTER TABLE `muninn_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `muninn_task_user_id_6317bca4_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `muninn_daily_habits`
--
ALTER TABLE `muninn_daily_habits`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `muninn_master_habits`
--
ALTER TABLE `muninn_master_habits`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `muninn_player`
--
ALTER TABLE `muninn_player`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `muninn_roost`
--
ALTER TABLE `muninn_roost`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `muninn_task`
--
ALTER TABLE `muninn_task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `muninn_daily_habits`
--
ALTER TABLE `muninn_daily_habits`
  ADD CONSTRAINT `muninn_daily_habits_master_habit_2cec37b3_fk_muninn_ma` FOREIGN KEY (`master_habit`) REFERENCES `muninn_master_habits` (`id`),
  ADD CONSTRAINT `muninn_daily_habits_user_id_68020bce_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `muninn_master_habits`
--
ALTER TABLE `muninn_master_habits`
  ADD CONSTRAINT `muninn_master_habits_user_id_caff981e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `muninn_player`
--
ALTER TABLE `muninn_player`
  ADD CONSTRAINT `muninn_player_playerID_id_d58b3bc6_fk_auth_user_id` FOREIGN KEY (`playerID_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `muninn_roost`
--
ALTER TABLE `muninn_roost`
  ADD CONSTRAINT `muninn_roost_animal_type_25821c84_fk_animals_file_name` FOREIGN KEY (`animal_type`) REFERENCES `animals` (`file_name`),
  ADD CONSTRAINT `muninn_roost_muninn_player_96b23034_fk_muninn_player_id` FOREIGN KEY (`muninn_player`) REFERENCES `muninn_player` (`id`);

--
-- Constraints for table `muninn_task`
--
ALTER TABLE `muninn_task`
  ADD CONSTRAINT `muninn_task_user_id_6317bca4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
