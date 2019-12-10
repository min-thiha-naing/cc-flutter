-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2019 at 03:58 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hello_voga`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `assignment_id` int(10) UNSIGNED NOT NULL,
  `assignment_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`assignment_id`, `assignment_title`, `description`, `deadline`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'ui creation', 'blah blah blah', '2020-04-03', 1, '2019-12-05 06:59:03', '2019-12-05 06:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-10-23 22:05:28', '2019-10-23 22:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'app dev', 'blah blah', 'blah blah blah', '2019-12-05 07:11:37', '2019-12-05 07:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'is_state', 'checkbox', 'Is State', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(63, 8, 'division_id', 'hidden', 'Division Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(64, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(65, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(66, 8, 'district_belongsto_division_relationship', 'relationship', 'divisions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Division\",\"table\":\"divisions\",\"type\":\"belongsTo\",\"column\":\"division_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 6),
(67, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(68, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(69, 9, 'division_id', 'hidden', 'Division Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(70, 9, 'district_id', 'hidden', 'District Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(71, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(72, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(73, 9, 'township_belongsto_division_relationship', 'relationship', 'divisions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Division\",\"table\":\"divisions\",\"type\":\"belongsTo\",\"column\":\"division_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(74, 9, 'township_belongsto_district_relationship', 'relationship', 'districts', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\District\",\"table\":\"districts\",\"type\":\"belongsTo\",\"column\":\"district_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(75, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(77, 10, 'is_village', 'checkbox', 'Is Village', 0, 1, 1, 1, 1, 1, '{}', 3),
(78, 10, 'division_id', 'hidden', 'Division Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(79, 10, 'district_id', 'hidden', 'District Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(80, 10, 'township_id', 'hidden', 'Township Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(81, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(82, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(83, 10, 'town_belongsto_division_relationship', 'relationship', 'divisions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Division\",\"table\":\"divisions\",\"type\":\"belongsTo\",\"column\":\"division_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(84, 10, 'town_belongsto_district_relationship', 'relationship', 'districts', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\District\",\"table\":\"districts\",\"type\":\"belongsTo\",\"column\":\"district_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(85, 10, 'town_belongsto_township_relationship', 'relationship', 'townships', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Township\",\"table\":\"townships\",\"type\":\"belongsTo\",\"column\":\"township_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(86, 12, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(88, 12, 'division_id', 'hidden', 'Division Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(89, 12, 'district_id', 'hidden', 'District Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(90, 12, 'township_id', 'hidden', 'Township Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(91, 12, 'town_id', 'hidden', 'Town Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(92, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(93, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(94, 12, 'school_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Division\",\"table\":\"divisions\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(95, 12, 'school_belongsto_category_relationship_1', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\District\",\"table\":\"districts\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(96, 12, 'school_belongsto_township_relationship', 'relationship', 'townships', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Township\",\"table\":\"townships\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(97, 12, 'school_belongsto_town_relationship', 'relationship', 'towns', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Town\",\"table\":\"towns\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(98, 13, 'assignment_id', 'hidden', 'Assignment Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(99, 13, 'assignment_title', 'text', 'Assignment Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(100, 13, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(101, 13, 'deadline', 'date', 'Deadline', 0, 1, 1, 1, 1, 1, '{}', 4),
(102, 13, 'class_id', 'number', 'Class Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(103, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(104, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(105, 17, 'course_id', 'hidden', 'Course Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 17, 'course_name', 'text', 'Course Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(107, 17, 'course_title', 'text', 'Course Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(108, 17, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(109, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(110, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(111, 18, 'invitation_id', 'hidden', 'Invitation Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 18, 'user_id', 'number', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(113, 18, 'class_id', 'number', 'Class Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(114, 18, 'confirm_status', 'text', 'Confirm Status', 0, 1, 1, 1, 1, 1, '{}', 4),
(115, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(116, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(117, 19, 'user_id', 'hidden', 'User Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(118, 19, 'username', 'text', 'Username', 0, 1, 1, 1, 1, 1, '{}', 2),
(119, 19, 'password', 'text', 'Password', 0, 1, 1, 1, 1, 1, '{}', 3),
(120, 19, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(121, 19, 'fullname', 'text', 'Fullname', 0, 1, 1, 1, 1, 1, '{}', 5),
(122, 19, 'gender', 'text', 'Gender', 0, 1, 1, 1, 1, 1, '{}', 6),
(123, 19, 'date_of_birth', 'date', 'Date Of Birth', 0, 1, 1, 1, 1, 1, '{}', 7),
(124, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(125, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(126, 20, 'student_id', 'hidden', 'Student Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(127, 20, 'user_id', 'number', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(128, 20, 'class_id', 'number', 'Class Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(129, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(130, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(131, 21, 'teacher_id', 'hidden', 'Teacher Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(132, 21, 'user_id', 'number', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(133, 21, 'course_id', 'number', 'Course Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(134, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(135, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(136, 22, 'submission_id', 'hidden', 'Submission Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(137, 22, 'user_id', 'number', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(138, 22, 'asssignment_id', 'number', 'Asssignment Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(139, 22, 'class_id', 'number', 'Class Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(140, 22, 'score', 'number', 'Score', 0, 1, 1, 1, 1, 1, '{}', 5),
(141, 22, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 6),
(142, 22, 'remark', 'text', 'Remark', 0, 1, 1, 1, 1, 1, '{}', 7),
(143, 22, 'submitted_file', 'file', 'Submitted File', 0, 1, 1, 1, 1, 1, '{}', 8),
(144, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(145, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-10-23 22:05:27', '2019-10-23 22:05:27'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-10-23 22:05:27', '2019-10-23 22:05:27'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-10-23 22:05:27', '2019-10-23 22:05:27'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(7, 'divisions', 'divisions', 'Division', 'Divisions', 'voyager-medal-rank-star', 'App\\Division', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-23 22:21:47', '2019-10-23 22:24:28'),
(8, 'districts', 'districts', 'District', 'Districts', 'voyager-star-two', 'App\\District', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-23 22:26:35', '2019-10-23 22:26:35'),
(9, 'townships', 'townships', 'Township', 'Townships', 'voyager-star', 'App\\Township', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-23 22:35:13', '2019-10-23 22:37:30'),
(10, 'towns', 'towns', 'Town', 'Towns', 'voyager-star-half', 'App\\Town', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-23 23:32:11', '2019-10-23 23:54:27'),
(12, 'schools', 'schools', 'School', 'Schools', 'voyager-star-two', 'App\\School', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-13 03:45:55', '2019-11-13 03:48:27'),
(13, 'assignments', 'assignments', 'Assignment', 'Assignments', NULL, 'App\\Assignment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-05 06:58:16', '2019-12-05 06:58:16'),
(17, 'courses', 'courses', 'Course', 'Courses', NULL, 'App\\Course', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-05 07:11:11', '2019-12-05 07:11:11'),
(18, 'invitations', 'invitations', 'Invitation', 'Invitations', NULL, 'App\\Invitation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-05 07:12:15', '2019-12-05 07:12:15'),
(19, 'members', 'members', 'Member', 'Members', NULL, 'App\\Member', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-05 07:13:30', '2019-12-05 07:13:30'),
(20, 'students', 'students', 'Student', 'Students', NULL, 'App\\Student', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-05 07:15:00', '2019-12-05 07:15:00'),
(21, 'teachers', 'teachers', 'Teacher', 'Teachers', NULL, 'App\\Teacher', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-05 07:17:29', '2019-12-05 07:17:29'),
(22, 'submissions', 'submissions', 'Submission', 'Submissions', NULL, 'App\\Submission', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-05 07:25:06', '2019-12-05 07:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Yangon', 1, '2019-10-23 22:28:00', '2019-10-23 22:29:57'),
(2, 'TaungGyi', 2, '2019-10-23 22:29:47', '2019-10-23 22:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_state` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `is_state`, `created_at`, `updated_at`) VALUES
(1, 'Yangon Region', 0, '2019-10-23 22:22:53', '2019-10-23 22:22:53'),
(2, 'Shan State', 1, '2019-10-23 22:23:04', '2019-10-23 22:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invitations`
--

CREATE TABLE `invitations` (
  `invitation_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `confirm_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invitations`
--

INSERT INTO `invitations` (`invitation_id`, `user_id`, `class_id`, `confirm_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'yes', '2019-12-05 07:12:30', '2019-12-05 07:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`user_id`, `username`, `password`, `email`, `fullname`, `gender`, `date_of_birth`, `created_at`, `updated_at`) VALUES
(1, 'mg mg', '123456', 'mgmg@gmail.com', 'mg mg', 'male', '1998-03-09', '2019-12-05 07:14:09', '2019-12-05 07:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-10-23 22:05:28', '2019-10-23 22:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-10-23 22:05:28', '2019-10-23 22:05:28', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2019-10-23 22:05:28', '2019-10-24 00:00:17', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2019-10-23 22:05:28', '2019-10-24 00:00:17', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2019-10-23 22:05:28', '2019-10-24 00:00:17', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2019-10-23 22:05:28', '2019-10-24 00:00:01', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-10-23 22:05:28', '2019-10-23 23:59:53', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-10-23 22:05:28', '2019-10-23 23:59:53', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-10-23 22:05:28', '2019-10-23 23:59:53', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-10-23 22:05:28', '2019-10-23 23:59:53', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2019-10-23 22:05:28', '2019-10-24 00:00:01', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2019-10-23 22:05:28', '2019-10-24 00:00:17', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 9, '2019-10-23 22:05:28', '2019-10-24 00:00:17', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 10, '2019-10-23 22:05:28', '2019-10-24 00:00:17', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-10-23 22:05:28', '2019-10-23 23:59:53', 'voyager.hooks', NULL),
(15, 1, 'Divisions', '', '_self', 'voyager-medal-rank-star', '#000000', NULL, 2, '2019-10-23 22:21:47', '2019-10-24 00:00:07', 'voyager.divisions.index', 'null'),
(16, 1, 'Districts', '', '_self', 'voyager-star-two', NULL, NULL, 3, '2019-10-23 22:26:35', '2019-10-24 00:00:10', 'voyager.districts.index', NULL),
(17, 1, 'Townships', '', '_self', 'voyager-star', NULL, NULL, 4, '2019-10-23 22:35:13', '2019-10-24 00:00:14', 'voyager.townships.index', NULL),
(18, 1, 'Towns', '', '_self', 'voyager-star-half', NULL, NULL, 5, '2019-10-23 23:32:11', '2019-10-24 00:00:17', 'voyager.towns.index', NULL),
(19, 1, 'Schools', '', '_self', 'voyager-star-two', NULL, NULL, 14, '2019-11-13 03:45:55', '2019-11-13 03:45:55', 'voyager.schools.index', NULL),
(20, 1, 'Assignments', '', '_self', NULL, NULL, NULL, 15, '2019-12-05 06:58:16', '2019-12-05 06:58:16', 'voyager.assignments.index', NULL),
(21, 1, 'Courses', '', '_self', NULL, NULL, NULL, 16, '2019-12-05 07:11:11', '2019-12-05 07:11:11', 'voyager.courses.index', NULL),
(22, 1, 'Invitations', '', '_self', NULL, NULL, NULL, 17, '2019-12-05 07:12:16', '2019-12-05 07:12:16', 'voyager.invitations.index', NULL),
(23, 1, 'Members', '', '_self', NULL, NULL, NULL, 18, '2019-12-05 07:13:30', '2019-12-05 07:13:30', 'voyager.members.index', NULL),
(24, 1, 'Students', '', '_self', NULL, NULL, NULL, 19, '2019-12-05 07:15:00', '2019-12-05 07:15:00', 'voyager.students.index', NULL),
(25, 1, 'Teachers', '', '_self', NULL, NULL, NULL, 20, '2019-12-05 07:17:29', '2019-12-05 07:17:29', 'voyager.teachers.index', NULL),
(26, 1, 'Submissions', '', '_self', NULL, NULL, NULL, 21, '2019-12-05 07:25:06', '2019-12-05 07:25:06', 'voyager.submissions.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-10-23 22:05:28', '2019-10-23 22:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(2, 'browse_bread', NULL, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(3, 'browse_database', NULL, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(4, 'browse_media', NULL, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(5, 'browse_compass', NULL, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(6, 'browse_menus', 'menus', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(7, 'read_menus', 'menus', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(8, 'edit_menus', 'menus', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(9, 'add_menus', 'menus', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(10, 'delete_menus', 'menus', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(11, 'browse_roles', 'roles', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(12, 'read_roles', 'roles', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(13, 'edit_roles', 'roles', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(14, 'add_roles', 'roles', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(15, 'delete_roles', 'roles', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(16, 'browse_users', 'users', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(17, 'read_users', 'users', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(18, 'edit_users', 'users', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(19, 'add_users', 'users', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(20, 'delete_users', 'users', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(21, 'browse_settings', 'settings', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(22, 'read_settings', 'settings', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(23, 'edit_settings', 'settings', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(24, 'add_settings', 'settings', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(25, 'delete_settings', 'settings', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(26, 'browse_categories', 'categories', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(27, 'read_categories', 'categories', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(28, 'edit_categories', 'categories', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(29, 'add_categories', 'categories', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(30, 'delete_categories', 'categories', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(31, 'browse_posts', 'posts', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(32, 'read_posts', 'posts', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(33, 'edit_posts', 'posts', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(34, 'add_posts', 'posts', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(35, 'delete_posts', 'posts', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(36, 'browse_pages', 'pages', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(37, 'read_pages', 'pages', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(38, 'edit_pages', 'pages', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(39, 'add_pages', 'pages', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(40, 'delete_pages', 'pages', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(41, 'browse_hooks', NULL, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(42, 'browse_divisions', 'divisions', '2019-10-23 22:21:47', '2019-10-23 22:21:47'),
(43, 'read_divisions', 'divisions', '2019-10-23 22:21:47', '2019-10-23 22:21:47'),
(44, 'edit_divisions', 'divisions', '2019-10-23 22:21:47', '2019-10-23 22:21:47'),
(45, 'add_divisions', 'divisions', '2019-10-23 22:21:47', '2019-10-23 22:21:47'),
(46, 'delete_divisions', 'divisions', '2019-10-23 22:21:47', '2019-10-23 22:21:47'),
(47, 'browse_districts', 'districts', '2019-10-23 22:26:35', '2019-10-23 22:26:35'),
(48, 'read_districts', 'districts', '2019-10-23 22:26:35', '2019-10-23 22:26:35'),
(49, 'edit_districts', 'districts', '2019-10-23 22:26:35', '2019-10-23 22:26:35'),
(50, 'add_districts', 'districts', '2019-10-23 22:26:35', '2019-10-23 22:26:35'),
(51, 'delete_districts', 'districts', '2019-10-23 22:26:35', '2019-10-23 22:26:35'),
(52, 'browse_townships', 'townships', '2019-10-23 22:35:13', '2019-10-23 22:35:13'),
(53, 'read_townships', 'townships', '2019-10-23 22:35:13', '2019-10-23 22:35:13'),
(54, 'edit_townships', 'townships', '2019-10-23 22:35:13', '2019-10-23 22:35:13'),
(55, 'add_townships', 'townships', '2019-10-23 22:35:13', '2019-10-23 22:35:13'),
(56, 'delete_townships', 'townships', '2019-10-23 22:35:13', '2019-10-23 22:35:13'),
(57, 'browse_towns', 'towns', '2019-10-23 23:32:11', '2019-10-23 23:32:11'),
(58, 'read_towns', 'towns', '2019-10-23 23:32:11', '2019-10-23 23:32:11'),
(59, 'edit_towns', 'towns', '2019-10-23 23:32:11', '2019-10-23 23:32:11'),
(60, 'add_towns', 'towns', '2019-10-23 23:32:11', '2019-10-23 23:32:11'),
(61, 'delete_towns', 'towns', '2019-10-23 23:32:11', '2019-10-23 23:32:11'),
(62, 'browse_schools', 'schools', '2019-11-13 03:45:55', '2019-11-13 03:45:55'),
(63, 'read_schools', 'schools', '2019-11-13 03:45:55', '2019-11-13 03:45:55'),
(64, 'edit_schools', 'schools', '2019-11-13 03:45:55', '2019-11-13 03:45:55'),
(65, 'add_schools', 'schools', '2019-11-13 03:45:55', '2019-11-13 03:45:55'),
(66, 'delete_schools', 'schools', '2019-11-13 03:45:55', '2019-11-13 03:45:55'),
(67, 'browse_assignments', 'assignments', '2019-12-05 06:58:16', '2019-12-05 06:58:16'),
(68, 'read_assignments', 'assignments', '2019-12-05 06:58:16', '2019-12-05 06:58:16'),
(69, 'edit_assignments', 'assignments', '2019-12-05 06:58:16', '2019-12-05 06:58:16'),
(70, 'add_assignments', 'assignments', '2019-12-05 06:58:16', '2019-12-05 06:58:16'),
(71, 'delete_assignments', 'assignments', '2019-12-05 06:58:16', '2019-12-05 06:58:16'),
(72, 'browse_courses', 'courses', '2019-12-05 07:11:11', '2019-12-05 07:11:11'),
(73, 'read_courses', 'courses', '2019-12-05 07:11:11', '2019-12-05 07:11:11'),
(74, 'edit_courses', 'courses', '2019-12-05 07:11:11', '2019-12-05 07:11:11'),
(75, 'add_courses', 'courses', '2019-12-05 07:11:11', '2019-12-05 07:11:11'),
(76, 'delete_courses', 'courses', '2019-12-05 07:11:11', '2019-12-05 07:11:11'),
(77, 'browse_invitations', 'invitations', '2019-12-05 07:12:15', '2019-12-05 07:12:15'),
(78, 'read_invitations', 'invitations', '2019-12-05 07:12:15', '2019-12-05 07:12:15'),
(79, 'edit_invitations', 'invitations', '2019-12-05 07:12:15', '2019-12-05 07:12:15'),
(80, 'add_invitations', 'invitations', '2019-12-05 07:12:15', '2019-12-05 07:12:15'),
(81, 'delete_invitations', 'invitations', '2019-12-05 07:12:15', '2019-12-05 07:12:15'),
(82, 'browse_members', 'members', '2019-12-05 07:13:30', '2019-12-05 07:13:30'),
(83, 'read_members', 'members', '2019-12-05 07:13:30', '2019-12-05 07:13:30'),
(84, 'edit_members', 'members', '2019-12-05 07:13:30', '2019-12-05 07:13:30'),
(85, 'add_members', 'members', '2019-12-05 07:13:30', '2019-12-05 07:13:30'),
(86, 'delete_members', 'members', '2019-12-05 07:13:30', '2019-12-05 07:13:30'),
(87, 'browse_students', 'students', '2019-12-05 07:15:00', '2019-12-05 07:15:00'),
(88, 'read_students', 'students', '2019-12-05 07:15:00', '2019-12-05 07:15:00'),
(89, 'edit_students', 'students', '2019-12-05 07:15:00', '2019-12-05 07:15:00'),
(90, 'add_students', 'students', '2019-12-05 07:15:00', '2019-12-05 07:15:00'),
(91, 'delete_students', 'students', '2019-12-05 07:15:00', '2019-12-05 07:15:00'),
(92, 'browse_teachers', 'teachers', '2019-12-05 07:17:29', '2019-12-05 07:17:29'),
(93, 'read_teachers', 'teachers', '2019-12-05 07:17:29', '2019-12-05 07:17:29'),
(94, 'edit_teachers', 'teachers', '2019-12-05 07:17:29', '2019-12-05 07:17:29'),
(95, 'add_teachers', 'teachers', '2019-12-05 07:17:29', '2019-12-05 07:17:29'),
(96, 'delete_teachers', 'teachers', '2019-12-05 07:17:29', '2019-12-05 07:17:29'),
(97, 'browse_submissions', 'submissions', '2019-12-05 07:25:06', '2019-12-05 07:25:06'),
(98, 'read_submissions', 'submissions', '2019-12-05 07:25:06', '2019-12-05 07:25:06'),
(99, 'edit_submissions', 'submissions', '2019-12-05 07:25:06', '2019-12-05 07:25:06'),
(100, 'add_submissions', 'submissions', '2019-12-05 07:25:06', '2019-12-05 07:25:06'),
(101, 'delete_submissions', 'submissions', '2019-12-05 07:25:06', '2019-12-05 07:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-23 22:05:28', '2019-10-23 22:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(2, 'user', 'Normal User', '2019-10-23 22:05:28', '2019-10-23 22:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `township_id` int(11) DEFAULT NULL,
  `town_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `division_id`, `district_id`, `township_id`, `town_id`, `created_at`, `updated_at`) VALUES
(1, 'BEHS NO 1', NULL, NULL, NULL, NULL, '2019-11-13 03:48:56', '2019-11-13 03:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `submission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `assignment_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `submitted_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`submission_id`, `user_id`, `assignment_id`, `course_id`, `score`, `status`, `remark`, `submitted_file`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 90, 'blah', 'blah blah blah', '[{\"download_link\":\"submissions\\/December2019\\/oBtRZHAi2f5leTollHuw.txt\",\"original_name\":\"hello.txt\"}]', '2019-12-05 07:26:06', '2019-12-05 07:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-12-05 07:17:43', '2019-12-05 07:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_village` tinyint(4) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `township_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`id`, `name`, `is_village`, `division_id`, `district_id`, `township_id`, `created_at`, `updated_at`) VALUES
(1, '( ၁ ) ရက်ကွက်', 1, 1, 1, 1, '2019-10-23 23:33:00', '2019-10-23 23:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `townships`
--

CREATE TABLE `townships` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `townships`
--

INSERT INTO `townships` (`id`, `name`, `division_id`, `district_id`, `created_at`, `updated_at`) VALUES
(1, 'Kamaryut', 1, 1, '2019-10-23 22:35:00', '2019-10-23 22:38:28'),
(2, 'TaungGyi', 2, 2, '2019-10-23 23:04:57', '2019-10-23 23:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-10-23 22:05:28', '2019-10-23 22:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$BXYUNnqpa/TpHbeuLkQPQeziO5ne9OHjrN1cJXsqa7kw5gnfJMLvO', '3fSy9VD5ntJ0JjugMCdeebLJB6qRdrJuHnUOfOzrsj1SXdKBNRkG80vig080', NULL, '2019-10-23 22:05:28', '2019-10-23 22:05:28'),
(2, 1, 'littleboy', 'littleboy@gmail.com', 'users/October2019/1cdXABze4bw5R5YV1qS1.png', NULL, '$2y$10$wEHAsFubBdJRU2uloNFo8eOeDmFm9sMhZjlASijKSTdM/HF3TaSUG', NULL, '{\"locale\":\"en\"}', '2019-10-24 00:01:07', '2019-10-24 00:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`invitation_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`submission_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `townships`
--
ALTER TABLE `townships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `assignment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `invitation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `submission_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `townships`
--
ALTER TABLE `townships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
