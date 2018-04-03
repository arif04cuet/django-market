-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 03, 2018 at 03:47 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 5.6.32-1+ubuntu16.04.1+deb.sury.org+2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Consumer');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(11, 1, 8),
(4, 1, 19),
(5, 1, 20),
(6, 1, 22),
(7, 1, 25),
(8, 1, 26),
(9, 1, 27),
(10, 1, 31),
(1, 1, 32),
(2, 1, 33),
(3, 1, 34);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add permission', 4, 'add_permission'),
(11, 'Can change permission', 4, 'change_permission'),
(12, 'Can delete permission', 4, 'delete_permission'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add profile', 7, 'add_profile'),
(20, 'Can change profile', 7, 'change_profile'),
(21, 'Can delete profile', 7, 'delete_profile'),
(22, 'Can add category', 8, 'add_category'),
(23, 'Can change category', 8, 'change_category'),
(24, 'Can delete category', 8, 'delete_category'),
(25, 'Can add product', 9, 'add_product'),
(26, 'Can change product', 9, 'change_product'),
(27, 'Can delete product', 9, 'delete_product'),
(28, 'Can add unit', 10, 'add_unit'),
(29, 'Can change unit', 10, 'change_unit'),
(30, 'Can delete unit', 10, 'delete_unit'),
(31, 'Can add entry', 11, 'add_entry'),
(32, 'Can change entry', 11, 'change_entry'),
(33, 'Can delete entry', 11, 'delete_entry'),
(34, 'Can add bazar', 12, 'add_bazar'),
(35, 'Can change bazar', 12, 'change_bazar'),
(36, 'Can delete bazar', 12, 'delete_bazar'),
(37, 'Can add upazila', 13, 'add_upazila'),
(38, 'Can change upazila', 13, 'change_upazila'),
(39, 'Can delete upazila', 13, 'delete_upazila'),
(40, 'Can add division', 14, 'add_division'),
(41, 'Can change division', 14, 'change_division'),
(42, 'Can delete division', 14, 'delete_division'),
(43, 'Can add district', 15, 'add_district'),
(44, 'Can change district', 15, 'change_district'),
(45, 'Can delete district', 15, 'delete_district');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$pemk3Mrlr96Q$oA97T4C/HXuEje2aIG/GySaeauPohtlBE/l6yp99fFg=', '2018-03-26 14:18:06.479165', 1, 'admin', '', '', 'arif@gmail.com', 1, 1, '2018-01-12 17:32:48.901459'),
(23, 'pbkdf2_sha256$36000$KKsGm8Yc2bQs$ztNjTK6uS9o49m0pWXx8jisBZAdk4m2mYWEFeAOOJgI=', '2018-03-25 13:58:41.304293', 0, '01717348147', '', '', '', 1, 1, '2018-02-08 14:23:18.233473'),
(24, 'pbkdf2_sha256$36000$zXD15QQzx5OE$0m13MW9nwH7yaXNKkuifAISZGqFOKxe9i1iJ0BPd5tU=', '2018-03-10 12:46:34.200312', 0, '01521520940', '', '', '', 1, 1, '2018-03-10 12:45:48.895770');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(16, 23, 1),
(17, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bazar_bazar`
--

CREATE TABLE `bazar_bazar` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `slug` varchar(50) NOT NULL,
  `location` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bazar_bazar`
--

INSERT INTO `bazar_bazar` (`id`, `created`, `modified`, `title`, `description`, `slug`, `location`) VALUES
(1, '2018-01-12 17:46:46.407603', '2018-01-12 17:46:46.407651', 'Mirpur 6', '', 'mirpur-6', '2137,1245'),
(2, '2018-01-13 07:49:57.995738', '2018-01-13 07:49:57.995792', 'Shopno', '', 'shopno', '124578,124578');

-- --------------------------------------------------------

--
-- Table structure for table `bazar_category`
--

CREATE TABLE `bazar_category` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `slug` varchar(50) NOT NULL,
  `unit_price` decimal(5,2) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bazar_category`
--

INSERT INTO `bazar_category` (`id`, `created`, `modified`, `title`, `description`, `slug`, `unit_price`, `parent_id`, `unit_id`) VALUES
(1, '2018-01-12 17:45:22.571861', '2018-01-12 17:45:22.571916', 'Rice', '', 'rice', '70.00', NULL, 1),
(2, '2018-01-13 07:49:14.556123', '2018-01-13 07:49:14.556184', 'Fish', '', 'fish', '50.00', NULL, 1),
(3, '2018-01-13 07:49:43.997977', '2018-01-13 07:49:43.998029', 'Potato', '', 'potato', '20.00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bazar_district`
--

CREATE TABLE `bazar_district` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `division_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bazar_district`
--

INSERT INTO `bazar_district` (`id`, `name`, `division_id`) VALUES
(1, 'Dhaka District', 1),
(2, 'Sylhet', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bazar_division`
--

CREATE TABLE `bazar_division` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bazar_division`
--

INSERT INTO `bazar_division` (`id`, `name`) VALUES
(1, 'Dhaka Division'),
(2, 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `bazar_entry`
--

CREATE TABLE `bazar_entry` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `added_at` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bazar_entry`
--

INSERT INTO `bazar_entry` (`id`, `created`, `modified`, `added_at`, `user_id`) VALUES
(9, '2018-02-10 14:23:46.567960', '2018-02-10 14:30:19.141116', '2018-02-10', 1),
(10, '2018-02-10 14:29:34.007980', '2018-02-10 14:29:34.008029', '2018-01-02', 1),
(11, '2018-02-10 14:30:48.330785', '2018-02-10 14:30:48.330834', '2018-02-10', 1),
(12, '2018-02-10 14:33:18.259150', '2018-02-10 14:33:48.795638', '2017-01-01', 1),
(13, '2018-02-10 14:37:02.927635', '2018-02-10 14:37:02.927683', '2018-02-10', 1),
(14, '2018-02-10 15:03:00.456773', '2018-02-10 15:03:00.456831', '2018-02-10', 23),
(15, '2018-02-12 15:44:05.964065', '2018-02-12 15:44:05.964114', '2018-01-02', 23),
(16, '2018-03-10 12:50:18.679507', '2018-03-10 12:50:41.389250', '2018-03-10', 24),
(17, '2018-03-26 07:30:35.435343', '2018-03-26 07:30:35.435400', '2018-03-22', 23),
(18, '2018-03-26 07:31:22.992420', '2018-03-26 07:31:22.992471', '2018-03-22', 23);

-- --------------------------------------------------------

--
-- Table structure for table `bazar_product`
--

CREATE TABLE `bazar_product` (
  `id` int(11) NOT NULL,
  `unit_price` decimal(5,2) NOT NULL,
  `amount` int(11) NOT NULL,
  `bazar_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `total` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bazar_product`
--

INSERT INTO `bazar_product` (`id`, `unit_price`, `amount`, `bazar_id`, `category_id`, `entry_id`, `total`) VALUES
(15, '10.00', 1, 1, 2, 9, '10.00'),
(16, '50.00', 1, 1, 2, 10, '50.00'),
(17, '54.00', 1, 1, 2, 9, '54.00'),
(18, '10.00', 10, 1, 3, 11, '100.00'),
(19, '10.00', 1, 1, 2, 12, '10.00'),
(20, '50.00', 10, 1, 1, 13, '500.00'),
(21, '10.00', 1, 1, 2, 14, '10.00'),
(22, '15.00', 10, 1, 2, 15, '150.00'),
(23, '70.00', 2, 1, 1, 16, '140.00'),
(24, '54.00', 10, 1, 2, 16, '540.00'),
(25, '23.00', 1, 2, 2, 17, '23.00'),
(26, '9.00', 1, 1, 2, 18, '9.00');

-- --------------------------------------------------------

--
-- Table structure for table `bazar_unit`
--

CREATE TABLE `bazar_unit` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bazar_unit`
--

INSERT INTO `bazar_unit` (`id`, `name`) VALUES
(1, 'KG');

-- --------------------------------------------------------

--
-- Table structure for table `bazar_upazila`
--

CREATE TABLE `bazar_upazila` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `district_id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-01-12 17:45:15.960830', '1', 'KG', 1, '[{"added": {}}]', 10, 1),
(2, '2018-01-12 17:45:22.588551', '1', 'Rice', 1, '[{"added": {}}]', 8, 1),
(3, '2018-01-12 17:46:46.421561', '1', 'Mirpur 6', 1, '[{"added": {}}]', 12, 1),
(4, '2018-01-12 17:46:48.627486', '1', 'Entry has been saved for 2018-01-12', 1, '[{"added": {}}, {"added": {"name": "product", "object": "Rice"}}]', 11, 1),
(5, '2018-01-12 17:47:55.395627', '2', 'KG', 1, '[{"added": {}}]', 10, 1),
(6, '2018-01-12 17:48:01.823237', '2', 'Fish', 1, '[{"added": {}}]', 8, 1),
(7, '2018-01-12 17:48:10.938884', '1', 'Entry has been saved for 2018-01-12', 2, '[{"added": {"name": "product", "object": "Fish"}}]', 11, 1),
(8, '2018-01-12 17:50:24.141779', '1', 'Entry has been saved for 2018-01-12', 3, '', 11, 1),
(9, '2018-01-12 17:51:21.570469', '2', 'KG', 3, '', 10, 1),
(10, '2018-01-12 17:57:33.686567', '1', 'Consumer', 1, '[{"added": {}}]', 2, 1),
(11, '2018-01-12 18:03:12.580966', '2', 'arif@gmail.com', 3, '', 3, 1),
(12, '2018-01-12 20:44:00.278830', '3', '01717348147', 2, '[{"changed": {"fields": ["is_staff"]}}]', 3, 1),
(13, '2018-01-13 07:49:14.588518', '2', 'Fish', 1, '[{"added": {}}]', 8, 1),
(14, '2018-01-13 07:49:44.013848', '3', 'Potato', 1, '[{"added": {}}]', 8, 1),
(15, '2018-01-13 07:49:58.012454', '2', 'Shopno', 1, '[{"added": {}}]', 12, 1),
(16, '2018-01-13 07:50:08.164199', '1', 'Entry has been saved for 2018-01-13', 1, '[{"added": {}}, {"added": {"object": "Rice", "name": "product"}}, {"added": {"object": "Fish", "name": "product"}}, {"added": {"object": "Potato", "name": "product"}}]', 11, 1),
(17, '2018-01-13 08:27:48.405161', '3', 'Entry has been saved for 2018-01-12', 1, '[{"added": {}}, {"added": {"object": "Rice", "name": "product"}}]', 11, 1),
(18, '2018-01-13 08:27:59.525908', '3', 'Entry has been saved for 2018-01-12', 2, '[{"changed": {"object": "Rice", "name": "product", "fields": ["amount"]}}]', 11, 1),
(19, '2018-01-13 08:45:00.719776', '3', 'Entry has been saved for 2018-01-12', 2, '[]', 11, 1),
(20, '2018-01-13 08:45:36.230243', '3', 'Entry has been saved for 2018-01-12', 2, '[]', 11, 1),
(21, '2018-01-13 08:52:14.079354', '3', 'Entry has been saved for 2018-01-12', 2, '[]', 11, 1),
(22, '2018-01-13 08:59:16.789434', '3', 'Entry has been saved for 2018-01-12', 2, '[]', 11, 1),
(23, '2018-01-13 08:59:53.792239', '3', 'Entry has been saved for 2018-01-12', 2, '[]', 11, 1),
(24, '2018-01-13 09:02:43.625480', '3', 'Entry has been saved for 2018-01-12', 2, '[{"changed": {"fields": ["total"], "object": "Rice", "name": "product"}}]', 11, 1),
(25, '2018-01-13 09:19:14.294432', '3', 'Entry has been saved for 2018-01-12', 2, '[]', 11, 1),
(26, '2018-01-13 09:29:07.546854', '3', 'Entry has been saved for 2018-01-12', 2, '[]', 11, 1),
(27, '2018-01-13 09:29:32.064923', '3', 'Entry has been saved for 2018-01-12', 2, '[]', 11, 1),
(28, '2018-01-13 09:48:48.424210', '3', 'Entry has been saved for 2018-01-12', 2, '[{"added": {"object": "Fish", "name": "product"}}]', 11, 1),
(29, '2018-01-13 10:02:21.418654', '1', 'Entry has been saved for 2018-01-13', 3, '', 11, 1),
(30, '2018-01-13 10:37:46.761472', '4', 'Entry has been saved for 2018-01-13', 1, '[{"added": {}}, {"added": {"object": "Potato", "name": "product"}}]', 11, 1),
(31, '2018-01-20 17:36:10.536537', '5', 'Entry has been saved for 2018-01-20', 1, '[{"added": {}}, {"added": {"name": "product", "object": "Fish"}}, {"added": {"name": "product", "object": "Potato"}}, {"added": {"name": "product", "object": "Rice"}}]', 11, 1),
(33, '2018-01-22 15:48:58.246687', '1', 'Consumer', 2, '[{"changed": {"fields": ["permissions"]}}]', 2, 1),
(36, '2018-01-27 15:05:45.270145', '3', '01717348147', 3, '', 3, 1),
(37, '2018-01-27 15:05:45.332827', '6', '12345678', 3, '', 3, 1),
(38, '2018-01-27 15:05:45.382991', '5', 'aaaaaa', 3, '', 3, 1),
(39, '2018-01-27 15:05:45.433036', '4', 'arif04cuet', 3, '', 3, 1),
(40, '2018-01-27 15:08:16.817467', '7', '01717348147', 3, '', 3, 1),
(41, '2018-01-27 15:09:08.553658', '8', '01717348147', 3, '', 3, 1),
(42, '2018-01-27 15:10:11.794890', '9', '01717348147', 3, '', 3, 1),
(43, '2018-02-07 14:31:46.743983', '10', '01717348147', 3, '', 3, 1),
(44, '2018-02-07 14:38:31.342286', '11', '01717348147', 3, '', 3, 1),
(45, '2018-02-07 14:53:50.067875', '12', '01717348147', 3, '', 3, 1),
(46, '2018-02-07 15:21:20.020023', '13', '01717348147', 3, '', 3, 1),
(47, '2018-02-07 15:23:41.844033', '15', '01717348147', 3, '', 3, 1),
(48, '2018-02-07 15:31:26.629296', '16', '01717348147', 3, '', 3, 1),
(49, '2018-02-07 15:31:26.686680', '17', '1717348147', 3, '', 3, 1),
(51, '2018-02-08 14:22:59.194248', '18', '01717348147', 3, '', 3, 1),
(52, '2018-02-10 04:55:22.591006', '6', 'Entry has been saved for 2018-02-10', 1, '[{"added": {}}, {"added": {"name": "product", "object": "Rice"}}]', 11, 23),
(53, '2018-02-10 14:14:25.942441', '6', 'Entry has been saved for 2018-02-10 00:00:00+00:00', 3, '', 11, 1),
(54, '2018-02-10 14:14:26.018364', '5', 'Entry has been saved for 2018-01-20 00:00:00+00:00', 3, '', 11, 1),
(55, '2018-02-10 14:14:26.068450', '4', 'Entry has been saved for 2018-01-13 00:00:00+00:00', 3, '', 11, 1),
(56, '2018-02-10 14:14:26.119533', '3', 'Entry has been saved for 2018-01-12 00:00:00+00:00', 3, '', 11, 1),
(57, '2018-02-10 14:15:13.701134', '7', 'Entry has been saved for 2018-01-02 20:14:28+06:00', 1, '[{"added": {}}, {"added": {"object": "Rice", "name": "product"}}, {"added": {"object": "Fish", "name": "product"}}]', 11, 1),
(58, '2018-02-10 14:15:37.567113', '8', 'Entry has been saved for 2018-02-10 20:15:13+06:00', 1, '[{"added": {}}, {"added": {"object": "Potato", "name": "product"}}, {"added": {"object": "Rice", "name": "product"}}]', 11, 1),
(59, '2018-02-10 14:23:17.890756', '8', 'Entry has been saved for 2018-02-10', 3, '', 11, 1),
(60, '2018-02-10 14:23:17.943769', '7', 'Entry has been saved for 2018-01-02', 3, '', 11, 1),
(61, '2018-02-10 14:23:46.581938', '9', 'Entry has been saved for 2018-02-10', 1, '[{"added": {}}, {"added": {"name": "product", "object": "Fish"}}]', 11, 1),
(62, '2018-02-10 14:29:34.170806', '10', 'Entry has been saved for 2018-01-02', 1, '[{"added": {}}, {"added": {"name": "product", "object": "Fish"}}]', 11, 1),
(63, '2018-02-10 14:30:19.157993', '9', 'Entry has been saved for 2018-02-10', 2, '[{"added": {"name": "product", "object": "Fish"}}]', 11, 1),
(64, '2018-02-10 14:30:48.357929', '11', 'Entry has been saved for 2018-02-10', 1, '[{"added": {}}, {"added": {"name": "product", "object": "Potato"}}]', 11, 1),
(65, '2018-02-10 14:33:18.355091', '12', 'Entry has been saved for 2017-12-01', 1, '[{"added": {}}, {"added": {"name": "product", "object": "Fish"}}]', 11, 1),
(66, '2018-02-10 14:33:48.803970', '12', 'Entry has been saved for 2017-01-01', 2, '[{"changed": {"fields": ["added_at"]}}]', 11, 1),
(67, '2018-02-10 14:37:02.941922', '13', 'Entry has been saved for 2018-02-10', 1, '[{"added": {}}, {"added": {"name": "product", "object": "Rice"}}]', 11, 1),
(68, '2018-02-10 15:03:00.545903', '14', 'Entry has been saved for 2018-02-10', 1, '[{"added": {}}, {"added": {"object": "Fish", "name": "product"}}]', 11, 23),
(69, '2018-02-12 15:44:05.998513', '15', 'Entry has been saved for 2018-01-02', 1, '[{"added": {}}, {"added": {"object": "Fish", "name": "product"}}]', 11, 23),
(70, '2018-02-25 15:49:18.093342', '1', 'Dhaka Division', 1, '[{"added": {}}]', 14, 1),
(71, '2018-02-25 15:49:38.876547', '1', 'Dhaka District', 1, '[{"added": {}}]', 15, 1),
(72, '2018-02-25 15:50:10.134821', '2', 'Sylhet', 1, '[{"added": {}}]', 14, 1),
(73, '2018-02-25 15:50:39.087607', '2', 'Sylhet', 1, '[{"added": {}}]', 15, 1),
(74, '2018-03-10 12:50:18.714168', '16', 'Entry has been saved for 2018-03-10', 1, '[{"added": {}}, {"added": {"object": "Rice", "name": "product"}}, {"added": {"object": "Fish", "name": "product"}}]', 11, 24),
(75, '2018-03-10 12:50:41.396628', '16', 'Entry has been saved for 2018-03-10', 2, '[]', 11, 24),
(76, '2018-03-26 07:30:35.452050', '17', 'Entry has been saved for 2018-03-26', 1, '[{"added": {}}, {"added": {"object": "Fish", "name": "product"}}]', 11, 23),
(77, '2018-03-26 07:31:23.086388', '18', 'Entry has been saved for 2018-03-26', 1, '[{"added": {}}, {"added": {"object": "Fish", "name": "product"}}]', 11, 23);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'profile'),
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(4, 'auth', 'permission'),
(3, 'auth', 'user'),
(12, 'bazar', 'bazar'),
(8, 'bazar', 'category'),
(15, 'bazar', 'district'),
(14, 'bazar', 'division'),
(11, 'bazar', 'entry'),
(9, 'bazar', 'product'),
(10, 'bazar', 'unit'),
(13, 'bazar', 'upazila'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-01-12 17:31:54.744380'),
(2, 'auth', '0001_initial', '2018-01-12 17:32:03.855382'),
(3, 'accounts', '0001_initial', '2018-01-12 17:32:05.080402'),
(4, 'admin', '0001_initial', '2018-01-12 17:32:07.135638'),
(5, 'admin', '0002_logentry_remove_auto_add', '2018-01-12 17:32:07.261793'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-01-12 17:32:08.444594'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-01-12 17:32:09.241910'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-01-12 17:32:10.114826'),
(9, 'auth', '0004_alter_user_username_opts', '2018-01-12 17:32:10.173717'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-01-12 17:32:10.777088'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-01-12 17:32:10.819094'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-01-12 17:32:10.873863'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-01-12 17:32:13.436229'),
(14, 'bazar', '0001_initial', '2018-01-12 17:32:20.879905'),
(15, 'sessions', '0001_initial', '2018-01-12 17:32:21.708863'),
(16, 'bazar', '0002_auto_20180112_2354', '2018-01-12 17:54:20.219064'),
(17, 'bazar', '0003_product_total', '2018-01-13 08:00:11.064394'),
(18, 'bazar', '0004_auto_20180113_1427', '2018-01-13 08:27:44.905948'),
(19, 'bazar', '0005_product_total', '2018-01-13 08:44:48.725710'),
(20, 'bazar', '0006_auto_20180210_2001', '2018-02-10 14:02:06.112958'),
(21, 'bazar', '0007_auto_20180210_2022', '2018-02-10 14:23:03.999065'),
(22, 'bazar', '0008_auto_20180225_2146', '2018-02-25 15:47:07.846041');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('03hbxtq765s5jgcvg7yjlv3rbe5922z2', 'Y2RlYmNiMTIxYWNjN2NlZjVlNDJlMDNiZTM0MGE0OTc2MzQ4MjlmNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MDdjODk1MDk1Yjg4MDFmY2Q3ZDc5OWUxMDZmOTY4NjZhMzljOGM5In0=', '2018-04-09 14:18:06.689184'),
('po2z4f86g4f0y7i8qvildrqqs3l33opt', 'MjE5MjdhZDNlOThmZGY3MTg4ZjQ5Y2M3NGRjYzBiNTgyZmU2MmY3ZTp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfaGFzaCI6ImUyMDI2OGMxZTdmZGE5Y2FkMmQxNzAwYjliNTMxOGM0ZTgwNjBjODciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', '2018-04-08 13:58:41.505435'),
('qmm3gwik6ip1mcatpf97u1ghjfpofiiu', 'NDVlNjUzYzViNzNjYmUzYTE5MzIzYWU0NjZmMWYzYTk3YzM5MmIxMTp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfaGFzaCI6IjJlNzczZGQzODhkZTBmOTkxMDUzYTlkZmIzOGUyNDI1ZjA4OTk3ZGYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', '2018-03-24 12:46:34.376995'),
('qy9pnny4qdvklbse4i23a571rk6khusd', 'NzVlM2M0ZTcyMmE0ODBiMTRkMzliMjlmMTE2MzY5ZTNjYzdlMmZiNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjcwN2M4OTUwOTViODgwMWZjZDdkNzk5ZTEwNmY5Njg2NmEzOWM4YzkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-02-03 14:39:43.499867'),
('sthctfwiy2qp7t80dqtx9m7nyg60dm6v', 'NTI0MDlkN2EzODA5NWQ2YzVlOTMyOWFlMmRiYjJiYWU0NzBlZWM5Mzp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzA3Yzg5NTA5NWI4ODAxZmNkN2Q3OTllMTA2Zjk2ODY2YTM5YzhjOSJ9', '2018-02-24 14:52:44.078527');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `location` varchar(42) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `name`, `location`, `user_id`) VALUES
(1, '', 'None', 1),
(17, '', 'None', 23),
(18, '', 'None', 24);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `bazar_bazar`
--
ALTER TABLE `bazar_bazar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bazar_bazar_slug_f91f3251` (`slug`);

--
-- Indexes for table `bazar_category`
--
ALTER TABLE `bazar_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bazar_category_parent_id_67c67730_fk_bazar_category_id` (`parent_id`),
  ADD KEY `bazar_category_slug_a8d210ab` (`slug`),
  ADD KEY `bazar_category_unit_id_6414a704_fk_bazar_unit_id` (`unit_id`);

--
-- Indexes for table `bazar_district`
--
ALTER TABLE `bazar_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bazar_district_division_id_4bef1338_fk_bazar_division_id` (`division_id`);

--
-- Indexes for table `bazar_division`
--
ALTER TABLE `bazar_division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bazar_entry`
--
ALTER TABLE `bazar_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bazar_entry_user_id_bbd647fe_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `bazar_product`
--
ALTER TABLE `bazar_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bazar_product_bazar_id_102aab26_fk_bazar_bazar_id` (`bazar_id`),
  ADD KEY `bazar_product_category_id_24c32729_fk_bazar_category_id` (`category_id`),
  ADD KEY `bazar_product_entry_id_3669bfb8_fk_bazar_entry_id` (`entry_id`);

--
-- Indexes for table `bazar_unit`
--
ALTER TABLE `bazar_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bazar_upazila`
--
ALTER TABLE `bazar_upazila`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bazar_upazila_district_id_c685c4d3_fk_bazar_district_id` (`district_id`),
  ADD KEY `bazar_upazila_division_id_40ebc93d_fk_bazar_division_id` (`division_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

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
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bazar_bazar`
--
ALTER TABLE `bazar_bazar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bazar_category`
--
ALTER TABLE `bazar_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bazar_district`
--
ALTER TABLE `bazar_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bazar_division`
--
ALTER TABLE `bazar_division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bazar_entry`
--
ALTER TABLE `bazar_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `bazar_product`
--
ALTER TABLE `bazar_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `bazar_unit`
--
ALTER TABLE `bazar_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bazar_upazila`
--
ALTER TABLE `bazar_upazila`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
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
-- Constraints for table `bazar_category`
--
ALTER TABLE `bazar_category`
  ADD CONSTRAINT `bazar_category_parent_id_67c67730_fk_bazar_category_id` FOREIGN KEY (`parent_id`) REFERENCES `bazar_category` (`id`),
  ADD CONSTRAINT `bazar_category_unit_id_6414a704_fk_bazar_unit_id` FOREIGN KEY (`unit_id`) REFERENCES `bazar_unit` (`id`);

--
-- Constraints for table `bazar_district`
--
ALTER TABLE `bazar_district`
  ADD CONSTRAINT `bazar_district_division_id_4bef1338_fk_bazar_division_id` FOREIGN KEY (`division_id`) REFERENCES `bazar_division` (`id`);

--
-- Constraints for table `bazar_entry`
--
ALTER TABLE `bazar_entry`
  ADD CONSTRAINT `bazar_entry_user_id_bbd647fe_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `bazar_product`
--
ALTER TABLE `bazar_product`
  ADD CONSTRAINT `bazar_product_bazar_id_102aab26_fk_bazar_bazar_id` FOREIGN KEY (`bazar_id`) REFERENCES `bazar_bazar` (`id`),
  ADD CONSTRAINT `bazar_product_category_id_24c32729_fk_bazar_category_id` FOREIGN KEY (`category_id`) REFERENCES `bazar_category` (`id`),
  ADD CONSTRAINT `bazar_product_entry_id_3669bfb8_fk_bazar_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `bazar_entry` (`id`);

--
-- Constraints for table `bazar_upazila`
--
ALTER TABLE `bazar_upazila`
  ADD CONSTRAINT `bazar_upazila_district_id_c685c4d3_fk_bazar_district_id` FOREIGN KEY (`district_id`) REFERENCES `bazar_district` (`id`),
  ADD CONSTRAINT `bazar_upazila_division_id_40ebc93d_fk_bazar_division_id` FOREIGN KEY (`division_id`) REFERENCES `bazar_division` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `user_profile_user_id_8fdce8e2_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
